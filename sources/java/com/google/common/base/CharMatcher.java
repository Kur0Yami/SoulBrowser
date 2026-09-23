package com.google.common.base;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.VisibleForTesting;
import java.util.Arrays;

@GwtCompatible
/* loaded from: classes3.dex */
public abstract class CharMatcher implements Predicate<Character> {

    /* renamed from: com.google.common.base.CharMatcher$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 extends NegatedFastMatcher {
        @Override // com.google.common.base.CharMatcher.Negated
        public final String toString() {
            return null;
        }
    }

    /* loaded from: classes3.dex */
    public static final class And extends CharMatcher {

        /* renamed from: c, reason: collision with root package name */
        public final CharMatcher f12152c;
        public final CharMatcher f;

        public And(CharMatcher charMatcher, CharMatcher charMatcher2) {
            this.f12152c = charMatcher;
            charMatcher2.getClass();
            this.f = charMatcher2;
        }

        @Override // com.google.common.base.CharMatcher, com.google.common.base.Predicate
        public final /* bridge */ /* synthetic */ boolean apply(Object obj) {
            return apply((Character) obj);
        }

        @Override // com.google.common.base.CharMatcher
        public final boolean m(char c2) {
            if (this.f12152c.m(c2) && this.f.m(c2)) {
                return true;
            }
            return false;
        }

        public final String toString() {
            return "CharMatcher.and(" + this.f12152c + ", " + this.f + ")";
        }
    }

    /* loaded from: classes3.dex */
    public static final class Any extends NamedFastMatcher {
        public static final CharMatcher f = new NamedFastMatcher("CharMatcher.any()");

        @Override // com.google.common.base.CharMatcher
        public final CharMatcher b(CharMatcher charMatcher) {
            charMatcher.getClass();
            return charMatcher;
        }

        @Override // com.google.common.base.CharMatcher
        public final int f(CharSequence charSequence) {
            return charSequence.length();
        }

        @Override // com.google.common.base.CharMatcher
        public final int h(int i, CharSequence charSequence) {
            int length = charSequence.length();
            Preconditions.i(i, length);
            if (i == length) {
                return -1;
            }
            return i;
        }

        @Override // com.google.common.base.CharMatcher
        public final int i(CharSequence charSequence) {
            if (charSequence.length() == 0) {
                return -1;
            }
            return 0;
        }

        @Override // com.google.common.base.CharMatcher
        public final boolean m(char c2) {
            return true;
        }

        @Override // com.google.common.base.CharMatcher
        public final boolean n(CharSequence charSequence) {
            charSequence.getClass();
            return true;
        }

        @Override // com.google.common.base.CharMatcher
        public final boolean o(CharSequence charSequence) {
            if (charSequence.length() == 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.common.base.CharMatcher.FastMatcher, com.google.common.base.CharMatcher
        public final CharMatcher p() {
            return None.f;
        }

        @Override // com.google.common.base.CharMatcher
        public final CharMatcher q(CharMatcher charMatcher) {
            charMatcher.getClass();
            return this;
        }
    }

    /* loaded from: classes3.dex */
    public static final class AnyOf extends CharMatcher {

        /* renamed from: c, reason: collision with root package name */
        public final char[] f12153c;

        public AnyOf(String str) {
            char[] charArray = str.toString().toCharArray();
            this.f12153c = charArray;
            Arrays.sort(charArray);
        }

        @Override // com.google.common.base.CharMatcher, com.google.common.base.Predicate
        public final /* bridge */ /* synthetic */ boolean apply(Object obj) {
            return apply((Character) obj);
        }

        @Override // com.google.common.base.CharMatcher
        public final boolean m(char c2) {
            if (Arrays.binarySearch(this.f12153c, c2) >= 0) {
                return true;
            }
            return false;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("CharMatcher.anyOf(\"");
            for (char c2 : this.f12153c) {
                sb.append(CharMatcher.a(c2));
            }
            sb.append("\")");
            return sb.toString();
        }
    }

    /* loaded from: classes3.dex */
    public static final class Ascii extends NamedFastMatcher {
        public static final CharMatcher f = new NamedFastMatcher("CharMatcher.ascii()");

        @Override // com.google.common.base.CharMatcher
        public final boolean m(char c2) {
            return c2 <= 127;
        }
    }

    @GwtIncompatible
    /* loaded from: classes3.dex */
    public static final class BitSetMatcher extends NamedFastMatcher {
        @Override // com.google.common.base.CharMatcher
        public final boolean m(char c2) {
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public static final class BreakingWhitespace extends CharMatcher {
        @Override // com.google.common.base.CharMatcher, com.google.common.base.Predicate
        public final /* bridge */ /* synthetic */ boolean apply(Object obj) {
            return apply((Character) obj);
        }

        @Override // com.google.common.base.CharMatcher
        public final boolean m(char c2) {
            if (c2 != ' ' && c2 != 133 && c2 != 5760) {
                if (c2 != 8199) {
                    if (c2 != 8287 && c2 != 12288 && c2 != 8232 && c2 != 8233) {
                        switch (c2) {
                            case '\t':
                            case '\n':
                            case 11:
                            case '\f':
                            case '\r':
                                break;
                            default:
                                if (c2 >= 8192 && c2 <= 8202) {
                                    return true;
                                }
                                break;
                        }
                    }
                }
                return false;
            }
            return true;
        }

        public final String toString() {
            return "CharMatcher.breakingWhitespace()";
        }
    }

    /* loaded from: classes3.dex */
    public static final class Digit extends RangesMatcher {
        static {
            char[] charArray = "0٠۰߀०০੦૦୦௦౦೦൦෦๐໐༠၀႐០᠐᥆᧐᪀᪐᭐᮰᱀᱐꘠꣐꤀꧐꧰꩐꯰０".toCharArray();
            char[] cArr = new char[37];
            for (int i = 0; i < 37; i++) {
                cArr[i] = (char) ("0٠۰߀०০੦૦୦௦౦೦൦෦๐໐༠၀႐០᠐᥆᧐᪀᪐᭐᮰᱀᱐꘠꣐꤀꧐꧰꩐꯰０".charAt(i) + '\t');
            }
            new RangesMatcher("CharMatcher.digit()", charArray, cArr);
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class FastMatcher extends CharMatcher {
        @Override // com.google.common.base.CharMatcher, com.google.common.base.Predicate
        public final /* bridge */ /* synthetic */ boolean apply(Object obj) {
            return apply((Character) obj);
        }

        @Override // com.google.common.base.CharMatcher
        public CharMatcher p() {
            return new Negated(this);
        }
    }

    /* loaded from: classes3.dex */
    public static final class ForPredicate extends CharMatcher {
        @Override // com.google.common.base.CharMatcher, com.google.common.base.Predicate
        public final /* bridge */ /* synthetic */ boolean apply(Object obj) {
            return apply((Character) obj);
        }

        @Override // com.google.common.base.CharMatcher
        public final boolean m(char c2) {
            throw null;
        }

        public final String toString() {
            return "CharMatcher.forPredicate(null)";
        }
    }

    /* loaded from: classes3.dex */
    public static final class InRange extends FastMatcher {

        /* renamed from: c, reason: collision with root package name */
        public final char f12154c;
        public final char f;

        public InRange(char c2, char c3) {
            boolean z;
            if (c3 >= c2) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.d(z);
            this.f12154c = c2;
            this.f = c3;
        }

        @Override // com.google.common.base.CharMatcher
        public final boolean m(char c2) {
            if (this.f12154c <= c2 && c2 <= this.f) {
                return true;
            }
            return false;
        }

        public final String toString() {
            return "CharMatcher.inRange('" + CharMatcher.a(this.f12154c) + "', '" + CharMatcher.a(this.f) + "')";
        }
    }

    /* loaded from: classes3.dex */
    public static final class Invisible extends RangesMatcher {
        static {
            new RangesMatcher("CharMatcher.invisible()", "\u0000\u007f\u00ad\u0600\u061c\u06dd\u070f\u0890\u08e2\u1680\u180e\u2000\u2028\u205f\u2066\u3000\ud800\ufeff\ufff9".toCharArray(), "  \u00ad\u0605\u061c\u06dd\u070f\u0891\u08e2\u1680\u180e\u200f \u2064\u206f\u3000\uf8ff\ufeff\ufffb".toCharArray());
        }
    }

    /* loaded from: classes3.dex */
    public static final class Is extends FastMatcher {

        /* renamed from: c, reason: collision with root package name */
        public final char f12155c;

        public Is(char c2) {
            this.f12155c = c2;
        }

        @Override // com.google.common.base.CharMatcher
        public final CharMatcher b(CharMatcher charMatcher) {
            if (charMatcher.m(this.f12155c)) {
                return this;
            }
            return None.f;
        }

        @Override // com.google.common.base.CharMatcher
        public final boolean m(char c2) {
            if (c2 == this.f12155c) {
                return true;
            }
            return false;
        }

        @Override // com.google.common.base.CharMatcher.FastMatcher, com.google.common.base.CharMatcher
        public final CharMatcher p() {
            return new IsNot(this.f12155c);
        }

        @Override // com.google.common.base.CharMatcher
        public final CharMatcher q(CharMatcher charMatcher) {
            if (charMatcher.m(this.f12155c)) {
                return charMatcher;
            }
            return new Or(this, charMatcher);
        }

        public final String toString() {
            return "CharMatcher.is('" + CharMatcher.a(this.f12155c) + "')";
        }
    }

    /* loaded from: classes3.dex */
    public static final class IsEither extends FastMatcher {

        /* renamed from: c, reason: collision with root package name */
        public final char f12156c;
        public final char f;

        public IsEither(char c2, char c3) {
            this.f12156c = c2;
            this.f = c3;
        }

        @Override // com.google.common.base.CharMatcher
        public final boolean m(char c2) {
            if (c2 != this.f12156c && c2 != this.f) {
                return false;
            }
            return true;
        }

        public final String toString() {
            return "CharMatcher.anyOf(\"" + CharMatcher.a(this.f12156c) + CharMatcher.a(this.f) + "\")";
        }
    }

    /* loaded from: classes3.dex */
    public static final class IsNot extends FastMatcher {

        /* renamed from: c, reason: collision with root package name */
        public final char f12157c;

        public IsNot(char c2) {
            this.f12157c = c2;
        }

        @Override // com.google.common.base.CharMatcher
        public final CharMatcher b(CharMatcher charMatcher) {
            if (charMatcher.m(this.f12157c)) {
                return new And(this, charMatcher);
            }
            return charMatcher;
        }

        @Override // com.google.common.base.CharMatcher
        public final boolean m(char c2) {
            if (c2 != this.f12157c) {
                return true;
            }
            return false;
        }

        @Override // com.google.common.base.CharMatcher.FastMatcher, com.google.common.base.CharMatcher
        public final CharMatcher p() {
            return new Is(this.f12157c);
        }

        @Override // com.google.common.base.CharMatcher
        public final CharMatcher q(CharMatcher charMatcher) {
            if (charMatcher.m(this.f12157c)) {
                return Any.f;
            }
            return this;
        }

        public final String toString() {
            return "CharMatcher.isNot('" + CharMatcher.a(this.f12157c) + "')";
        }
    }

    /* loaded from: classes3.dex */
    public static final class JavaDigit extends CharMatcher {
        @Override // com.google.common.base.CharMatcher, com.google.common.base.Predicate
        public final /* bridge */ /* synthetic */ boolean apply(Object obj) {
            return apply((Character) obj);
        }

        @Override // com.google.common.base.CharMatcher
        public final boolean m(char c2) {
            return Character.isDigit(c2);
        }

        public final String toString() {
            return "CharMatcher.javaDigit()";
        }
    }

    /* loaded from: classes3.dex */
    public static final class JavaIsoControl extends NamedFastMatcher {
        public static final CharMatcher f = new NamedFastMatcher("CharMatcher.javaIsoControl()");

        @Override // com.google.common.base.CharMatcher
        public final boolean m(char c2) {
            if (c2 > 31) {
                return c2 >= 127 && c2 <= 159;
            }
            return true;
        }
    }

    /* loaded from: classes3.dex */
    public static final class JavaLetter extends CharMatcher {
        @Override // com.google.common.base.CharMatcher, com.google.common.base.Predicate
        public final /* bridge */ /* synthetic */ boolean apply(Object obj) {
            return apply((Character) obj);
        }

        @Override // com.google.common.base.CharMatcher
        public final boolean m(char c2) {
            return Character.isLetter(c2);
        }

        public final String toString() {
            return "CharMatcher.javaLetter()";
        }
    }

    /* loaded from: classes3.dex */
    public static final class JavaLetterOrDigit extends CharMatcher {
        @Override // com.google.common.base.CharMatcher, com.google.common.base.Predicate
        public final /* bridge */ /* synthetic */ boolean apply(Object obj) {
            return apply((Character) obj);
        }

        @Override // com.google.common.base.CharMatcher
        public final boolean m(char c2) {
            return Character.isLetterOrDigit(c2);
        }

        public final String toString() {
            return "CharMatcher.javaLetterOrDigit()";
        }
    }

    /* loaded from: classes3.dex */
    public static final class JavaLowerCase extends CharMatcher {
        @Override // com.google.common.base.CharMatcher, com.google.common.base.Predicate
        public final /* bridge */ /* synthetic */ boolean apply(Object obj) {
            return apply((Character) obj);
        }

        @Override // com.google.common.base.CharMatcher
        public final boolean m(char c2) {
            return Character.isLowerCase(c2);
        }

        public final String toString() {
            return "CharMatcher.javaLowerCase()";
        }
    }

    /* loaded from: classes3.dex */
    public static final class JavaUpperCase extends CharMatcher {
        @Override // com.google.common.base.CharMatcher, com.google.common.base.Predicate
        public final /* bridge */ /* synthetic */ boolean apply(Object obj) {
            return apply((Character) obj);
        }

        @Override // com.google.common.base.CharMatcher
        public final boolean m(char c2) {
            return Character.isUpperCase(c2);
        }

        public final String toString() {
            return "CharMatcher.javaUpperCase()";
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class NamedFastMatcher extends FastMatcher {

        /* renamed from: c, reason: collision with root package name */
        public final String f12158c;

        public NamedFastMatcher(String str) {
            this.f12158c = str;
        }

        public final String toString() {
            return this.f12158c;
        }
    }

    /* loaded from: classes3.dex */
    public static class Negated extends CharMatcher {

        /* renamed from: c, reason: collision with root package name */
        public final CharMatcher f12159c;

        public Negated(CharMatcher charMatcher) {
            this.f12159c = charMatcher;
        }

        @Override // com.google.common.base.CharMatcher, com.google.common.base.Predicate
        public final /* bridge */ /* synthetic */ boolean apply(Object obj) {
            return apply((Character) obj);
        }

        @Override // com.google.common.base.CharMatcher
        public final int f(CharSequence charSequence) {
            return charSequence.length() - this.f12159c.f(charSequence);
        }

        @Override // com.google.common.base.CharMatcher
        public final boolean m(char c2) {
            return !this.f12159c.m(c2);
        }

        @Override // com.google.common.base.CharMatcher
        public final boolean n(CharSequence charSequence) {
            return this.f12159c.o(charSequence);
        }

        @Override // com.google.common.base.CharMatcher
        public final boolean o(CharSequence charSequence) {
            return this.f12159c.n(charSequence);
        }

        @Override // com.google.common.base.CharMatcher
        public final CharMatcher p() {
            return this.f12159c;
        }

        public String toString() {
            return this.f12159c + ".negate()";
        }
    }

    /* loaded from: classes3.dex */
    public static class NegatedFastMatcher extends Negated {
    }

    /* loaded from: classes3.dex */
    public static final class None extends NamedFastMatcher {
        public static final CharMatcher f = new NamedFastMatcher("CharMatcher.none()");

        @Override // com.google.common.base.CharMatcher
        public final CharMatcher b(CharMatcher charMatcher) {
            charMatcher.getClass();
            return this;
        }

        @Override // com.google.common.base.CharMatcher
        public final int f(CharSequence charSequence) {
            charSequence.getClass();
            return 0;
        }

        @Override // com.google.common.base.CharMatcher
        public final int h(int i, CharSequence charSequence) {
            Preconditions.i(i, charSequence.length());
            return -1;
        }

        @Override // com.google.common.base.CharMatcher
        public final int i(CharSequence charSequence) {
            charSequence.getClass();
            return -1;
        }

        @Override // com.google.common.base.CharMatcher
        public final boolean m(char c2) {
            return false;
        }

        @Override // com.google.common.base.CharMatcher
        public final boolean n(CharSequence charSequence) {
            if (charSequence.length() == 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.common.base.CharMatcher
        public final boolean o(CharSequence charSequence) {
            charSequence.getClass();
            return true;
        }

        @Override // com.google.common.base.CharMatcher.FastMatcher, com.google.common.base.CharMatcher
        public final CharMatcher p() {
            return Any.f;
        }

        @Override // com.google.common.base.CharMatcher
        public final CharMatcher q(CharMatcher charMatcher) {
            charMatcher.getClass();
            return charMatcher;
        }
    }

    /* loaded from: classes3.dex */
    public static final class Or extends CharMatcher {

        /* renamed from: c, reason: collision with root package name */
        public final CharMatcher f12160c;
        public final CharMatcher f;

        public Or(CharMatcher charMatcher, CharMatcher charMatcher2) {
            this.f12160c = charMatcher;
            charMatcher2.getClass();
            this.f = charMatcher2;
        }

        @Override // com.google.common.base.CharMatcher, com.google.common.base.Predicate
        public final /* bridge */ /* synthetic */ boolean apply(Object obj) {
            return apply((Character) obj);
        }

        @Override // com.google.common.base.CharMatcher
        public final boolean m(char c2) {
            if (!this.f12160c.m(c2) && !this.f.m(c2)) {
                return false;
            }
            return true;
        }

        public final String toString() {
            return "CharMatcher.or(" + this.f12160c + ", " + this.f + ")";
        }
    }

    /* loaded from: classes3.dex */
    public static class RangesMatcher extends CharMatcher {

        /* renamed from: c, reason: collision with root package name */
        public final String f12161c;
        public final char[] f;
        public final char[] g;

        public RangesMatcher(String str, char[] cArr, char[] cArr2) {
            boolean z;
            boolean z2;
            boolean z3;
            this.f12161c = str;
            this.f = cArr;
            this.g = cArr2;
            if (cArr.length == cArr2.length) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.d(z);
            int i = 0;
            while (i < cArr.length) {
                if (cArr[i] <= cArr2[i]) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                Preconditions.d(z2);
                int i2 = i + 1;
                if (i2 < cArr.length) {
                    if (cArr2[i] < cArr[i2]) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    Preconditions.d(z3);
                }
                i = i2;
            }
        }

        @Override // com.google.common.base.CharMatcher, com.google.common.base.Predicate
        public final /* bridge */ /* synthetic */ boolean apply(Object obj) {
            return apply((Character) obj);
        }

        @Override // com.google.common.base.CharMatcher
        public final boolean m(char c2) {
            int binarySearch = Arrays.binarySearch(this.f, c2);
            if (binarySearch >= 0) {
                return true;
            }
            int i = (~binarySearch) - 1;
            if (i >= 0 && c2 <= this.g[i]) {
                return true;
            }
            return false;
        }

        public final String toString() {
            return this.f12161c;
        }
    }

    /* loaded from: classes3.dex */
    public static final class SingleWidth extends RangesMatcher {
        static {
            new RangesMatcher("CharMatcher.singleWidth()", "\u0000־א׳\u0600ݐ\u0e00Ḁ℀ﭐﹰ｡".toCharArray(), "ӹ־ת״ۿݿ\u0e7f₯℺﷿\ufeffￜ".toCharArray());
        }
    }

    @VisibleForTesting
    /* loaded from: classes3.dex */
    public static final class Whitespace extends NamedFastMatcher {
        public static final int f = Integer.numberOfLeadingZeros(31);
        public static final CharMatcher g = new NamedFastMatcher("CharMatcher.whitespace()");

        @Override // com.google.common.base.CharMatcher
        public final boolean m(char c2) {
            if ("\u2002\u3000\r\u0085\u200a\u2005\u2000\u3000\u2029\u000b\u3000\u2008\u2003\u205f\u3000\u1680\t \u2006\u2001  \f\u2009\u3000\u2004\u3000\u3000\u2028\n \u3000".charAt((48906 * c2) >>> f) == c2) {
                return true;
            }
            return false;
        }
    }

    public static String a(char c2) {
        char[] cArr = new char[6];
        cArr[0] = '\\';
        cArr[1] = 'u';
        cArr[2] = 0;
        cArr[3] = 0;
        cArr[4] = 0;
        cArr[5] = 0;
        for (int i = 0; i < 4; i++) {
            cArr[5 - i] = "0123456789ABCDEF".charAt(c2 & 15);
            c2 = (char) (c2 >> 4);
        }
        return String.copyValueOf(cArr);
    }

    public static CharMatcher c(String str) {
        int length = str.length();
        if (length != 0) {
            if (length != 1) {
                if (length != 2) {
                    return new AnyOf(str);
                }
                return new IsEither(str.charAt(0), str.charAt(1));
            }
            return new Is(str.charAt(0));
        }
        return None.f;
    }

    public static CharMatcher e() {
        return Ascii.f;
    }

    public static CharMatcher g(char c2, char c3) {
        return new InRange(c2, c3);
    }

    public static CharMatcher j(char c2) {
        return new Is(c2);
    }

    public static CharMatcher k() {
        return new IsNot(' ');
    }

    public static CharMatcher l() {
        return JavaIsoControl.f;
    }

    public CharMatcher b(CharMatcher charMatcher) {
        return new And(this, charMatcher);
    }

    @Override // com.google.common.base.Predicate
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public final boolean apply(Character ch) {
        return m(ch.charValue());
    }

    public int f(CharSequence charSequence) {
        int i = 0;
        for (int i2 = 0; i2 < charSequence.length(); i2++) {
            if (m(charSequence.charAt(i2))) {
                i++;
            }
        }
        return i;
    }

    public int h(int i, CharSequence charSequence) {
        int length = charSequence.length();
        Preconditions.i(i, length);
        while (i < length) {
            if (m(charSequence.charAt(i))) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public int i(CharSequence charSequence) {
        return h(0, charSequence);
    }

    public abstract boolean m(char c2);

    public boolean n(CharSequence charSequence) {
        for (int length = charSequence.length() - 1; length >= 0; length--) {
            if (!m(charSequence.charAt(length))) {
                return false;
            }
        }
        return true;
    }

    public boolean o(CharSequence charSequence) {
        if (i(charSequence) == -1) {
            return true;
        }
        return false;
    }

    public CharMatcher p() {
        return new Negated(this);
    }

    public CharMatcher q(CharMatcher charMatcher) {
        return new Or(this, charMatcher);
    }
}
