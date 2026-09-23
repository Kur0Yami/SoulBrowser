package org.jsoup.parser;

import com.google.android.gms.ads.RequestConfiguration;
import org.jsoup.helper.Validate;
import org.jsoup.internal.StringUtil;

/* loaded from: classes4.dex */
public class TokenQueue implements AutoCloseable {
    public static final char[] f = {'*', '|', '_', '-'};

    /* renamed from: c, reason: collision with root package name */
    public final CharacterReader f22604c;

    public TokenQueue(String str) {
        this.f22604c = new CharacterReader(str);
    }

    public static void a(StringBuilder sb, char c2) {
        sb.append('\\');
        sb.append(Integer.toHexString(c2));
        sb.append(' ');
    }

    public static boolean b(char c2) {
        if (c2 != '-' && !StringUtil.isDigit(c2) && c2 != '_' && !StringUtil.isAsciiLetter(c2) && c2 < 128) {
            return false;
        }
        return true;
    }

    public static String escapeCssIdentifier(String str) {
        if (str.isEmpty()) {
            return str;
        }
        StringBuilder borrowBuilder = StringUtil.borrowBuilder();
        TokenQueue tokenQueue = new TokenQueue(str);
        CharacterReader characterReader = tokenQueue.f22604c;
        char current = characterReader.current();
        if (current == '-') {
            tokenQueue.advance();
            if (tokenQueue.isEmpty()) {
                borrowBuilder.append('\\');
                borrowBuilder.append('-');
            } else {
                borrowBuilder.append('-');
                if (StringUtil.isDigit(characterReader.current())) {
                    a(borrowBuilder, tokenQueue.consume());
                }
            }
        } else if (StringUtil.isDigit(current)) {
            a(borrowBuilder, tokenQueue.consume());
        }
        while (!tokenQueue.isEmpty()) {
            char consume = tokenQueue.consume();
            if (consume == 0) {
                borrowBuilder.append((char) 65533);
            } else if (consume > 31 && consume != 127) {
                if (b(consume)) {
                    borrowBuilder.append(consume);
                } else {
                    borrowBuilder.append('\\');
                    borrowBuilder.append(consume);
                }
            } else {
                a(borrowBuilder, consume);
            }
        }
        tokenQueue.close();
        return StringUtil.releaseBuilder(borrowBuilder);
    }

    public static String unescape(String str) {
        if (str.indexOf(92) == -1) {
            return str;
        }
        StringBuilder borrowBuilder = StringUtil.borrowBuilder();
        char c2 = 0;
        for (char c3 : str.toCharArray()) {
            if (c3 == '\\') {
                if (c2 == '\\') {
                    borrowBuilder.append(c3);
                    c2 = 0;
                }
            } else {
                borrowBuilder.append(c3);
            }
            c2 = c3;
        }
        return StringUtil.releaseBuilder(borrowBuilder);
    }

    public void advance() {
        if (!isEmpty()) {
            this.f22604c.advance();
        }
    }

    public String chompBalanced(char c2, char c3) {
        StringBuilder borrowBuilder = StringUtil.borrowBuilder();
        CharacterReader characterReader = this.f22604c;
        if (characterReader.i - characterReader.h < 1024) {
            characterReader.j = 0;
        }
        characterReader.a();
        characterReader.l = characterReader.h;
        char c4 = 0;
        boolean z = false;
        boolean z2 = false;
        int i = 0;
        boolean z3 = false;
        while (!isEmpty()) {
            char consume = consume();
            if (c4 == '\\') {
                if (consume == 'Q') {
                    z3 = true;
                } else if (consume == 'E') {
                    z3 = false;
                }
                borrowBuilder.append(consume);
            } else {
                if (consume == '\'' && consume != c2 && !z) {
                    z2 = !z2;
                } else if (consume == '\"' && consume != c2 && !z2) {
                    z = !z;
                }
                if (!z2 && !z && !z3) {
                    if (consume == c2) {
                        i++;
                        if (i > 1) {
                            borrowBuilder.append(consume);
                        }
                    } else if (consume == c3) {
                        i--;
                        if (i > 0) {
                            borrowBuilder.append(consume);
                        }
                    } else {
                        borrowBuilder.append(consume);
                    }
                } else {
                    borrowBuilder.append(consume);
                }
            }
            if (i <= 0) {
                break;
            }
            c4 = consume;
        }
        String releaseBuilder = StringUtil.releaseBuilder(borrowBuilder);
        if (i > 0) {
            characterReader.B();
            Validate.fail("Did not find balanced marker at '" + releaseBuilder + "'");
        }
        return releaseBuilder;
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        this.f22604c.close();
    }

    public char consume() {
        return this.f22604c.consume();
    }

    public String consumeCssIdentifier() {
        String str;
        String str2;
        char current;
        if (!isEmpty()) {
            CharacterReader characterReader = this.f22604c;
            characterReader.a();
            int i = characterReader.h;
            int i2 = characterReader.i;
            char[] cArr = characterReader.g;
            int i3 = i;
            while (i3 < i2 && b(cArr[i3])) {
                i3++;
            }
            characterReader.h = i3;
            if (i3 > i) {
                str = CharacterReader.b(characterReader.g, characterReader.f22585c, i, i3 - i);
            } else {
                str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
            char current2 = characterReader.current();
            if (current2 != '\\' && current2 != 0) {
                return str;
            }
            StringBuilder borrowBuilder = StringUtil.borrowBuilder();
            if (!str.isEmpty()) {
                borrowBuilder.append(str);
            }
            while (!isEmpty()) {
                char current3 = characterReader.current();
                if (b(current3)) {
                    borrowBuilder.append(consume());
                } else if (current3 == 0) {
                    advance();
                    borrowBuilder.append((char) 65533);
                } else {
                    if (current3 != '\\') {
                        break;
                    }
                    advance();
                    if (!isEmpty() && ((current = characterReader.current()) == '\n' || current == '\r' || current == '\f')) {
                        characterReader.G();
                        break;
                    }
                    if (isEmpty()) {
                        borrowBuilder.append((char) 65533);
                    } else {
                        char consume = consume();
                        if (!StringUtil.isHexDigit(consume)) {
                            borrowBuilder.append(consume);
                        } else {
                            characterReader.G();
                            characterReader.a();
                            int i4 = characterReader.h;
                            int i5 = characterReader.i;
                            char[] cArr2 = characterReader.g;
                            int i6 = i4;
                            while (i6 < i5 && i6 - i4 < 6 && StringUtil.isHexDigit(cArr2[i6])) {
                                i6++;
                            }
                            characterReader.h = i6;
                            if (i6 > i4) {
                                str2 = CharacterReader.b(characterReader.g, characterReader.f22585c, i4, i6 - i4);
                            } else {
                                str2 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                            }
                            try {
                                int parseInt = Integer.parseInt(str2, 16);
                                if (parseInt != 0 && Character.isValidCodePoint(parseInt) && !Character.isSurrogate((char) parseInt)) {
                                    borrowBuilder.appendCodePoint(parseInt);
                                } else {
                                    borrowBuilder.append((char) 65533);
                                }
                                if (!isEmpty()) {
                                    char current4 = characterReader.current();
                                    if (current4 == '\r') {
                                        advance();
                                        if (!isEmpty() && characterReader.current() == '\n') {
                                            advance();
                                        }
                                    } else if (current4 == ' ' || current4 == '\t' || current4 == '\n' || current4 == '\r' || current4 == '\f') {
                                        advance();
                                    }
                                }
                            } catch (NumberFormatException e) {
                                throw new IllegalArgumentException("Invalid escape sequence: ".concat(str2), e);
                            }
                        }
                    }
                }
            }
            return StringUtil.releaseBuilder(borrowBuilder);
        }
        throw new IllegalArgumentException("CSS identifier expected, but end of input found");
    }

    public String consumeElementSelector() {
        StringBuilder borrowBuilder = StringUtil.borrowBuilder();
        while (!isEmpty()) {
            CharacterReader characterReader = this.f22604c;
            char current = characterReader.current();
            if (current == '\\') {
                advance();
                if (isEmpty()) {
                    break;
                }
                borrowBuilder.append(consume());
            } else {
                if (!matchesWord() && !characterReader.u(f)) {
                    break;
                }
                borrowBuilder.append(current);
                advance();
            }
        }
        return StringUtil.releaseBuilder(borrowBuilder);
    }

    public String consumeTo(String str) {
        return this.f22604c.consumeTo(str);
    }

    public String consumeToAny(String... strArr) {
        StringBuilder borrowBuilder = StringUtil.borrowBuilder();
        loop0: while (!isEmpty()) {
            for (String str : strArr) {
                if (this.f22604c.z(str)) {
                    break loop0;
                }
            }
            borrowBuilder.append(consume());
        }
        return StringUtil.releaseBuilder(borrowBuilder);
    }

    public boolean consumeWhitespace() {
        boolean z = false;
        while (matchesWhitespace()) {
            advance();
            z = true;
        }
        return z;
    }

    public boolean isEmpty() {
        return this.f22604c.isEmpty();
    }

    public boolean matchChomp(String str) {
        return this.f22604c.n(str);
    }

    public boolean matches(String str) {
        return this.f22604c.z(str);
    }

    public boolean matchesAny(char... cArr) {
        return this.f22604c.u(cArr);
    }

    public boolean matchesWhitespace() {
        return StringUtil.isWhitespace(this.f22604c.current());
    }

    public boolean matchesWord() {
        return Character.isLetterOrDigit(this.f22604c.current());
    }

    public String remainder() {
        return this.f22604c.j();
    }

    public String toString() {
        return this.f22604c.toString();
    }

    public void consume(String str) {
        if (!this.f22604c.n(str)) {
            throw new IllegalStateException("Queue did not match expected sequence");
        }
    }

    public boolean matchChomp(char c2) {
        if (!this.f22604c.o(c2)) {
            return false;
        }
        consume();
        return true;
    }

    public boolean matches(char c2) {
        return this.f22604c.o(c2);
    }
}
