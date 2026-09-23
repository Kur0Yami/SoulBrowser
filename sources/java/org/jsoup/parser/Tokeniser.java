package org.jsoup.parser;

import java.util.Arrays;
import kotlin.text.Typography;
import org.jsoup.helper.Validate;
import org.jsoup.nodes.Document;
import org.jsoup.parser.Token;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class Tokeniser {
    public static final char[] u;
    public static final int[] v;

    /* renamed from: a, reason: collision with root package name */
    public final CharacterReader f22605a;
    public final ParseErrorList b;
    public final Document.OutputSettings.Syntax g;
    public final Token.StartTag h;
    public final Token.EndTag i;
    public Token.Tag j;
    public final Token.XmlDecl n;
    public String o;
    public String p;
    public int q;

    /* renamed from: c, reason: collision with root package name */
    public TokeniserState f22606c = TokeniserState.f22607c;
    public Token d = null;
    public boolean e = false;
    public final TokenData f = new Object();
    public final Token.Character k = new Token.Character();
    public final Token.Doctype l = new Token.Doctype();
    public final Token.Comment m = new Token.Comment();
    public int r = 0;
    public final int[] s = new int[1];
    public final int[] t = new int[2];

    static {
        char[] cArr = {'\t', '\n', '\r', '\f', ' ', Typography.less, Typography.amp};
        u = cArr;
        v = new int[]{8364, 129, 8218, 402, 8222, 8230, 8224, 8225, 710, 8240, 352, 8249, 338, 141, 381, 143, 144, 8216, 8217, 8220, 8221, 8226, 8211, 8212, 732, 8482, 353, 8250, 339, 157, 382, 376};
        Arrays.sort(cArr);
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [org.jsoup.parser.TokenData, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v12, types: [org.jsoup.parser.Token$XmlDecl, org.jsoup.parser.Token$Tag] */
    public Tokeniser(TreeBuilder treeBuilder) {
        Document.OutputSettings.Syntax syntax;
        if (treeBuilder instanceof XmlTreeBuilder) {
            syntax = Document.OutputSettings.Syntax.xml;
        } else {
            syntax = Document.OutputSettings.Syntax.html;
        }
        this.g = syntax;
        Token.StartTag startTag = new Token.StartTag(treeBuilder);
        this.h = startTag;
        this.j = startTag;
        this.i = new Token.EndTag(treeBuilder);
        ?? tag = new Token.Tag(Token.TokenType.XmlDecl, treeBuilder);
        tag.q = true;
        this.n = tag;
        this.f22605a = treeBuilder.b;
        this.b = treeBuilder.f22608a.getErrors();
    }

    public final void a(TokeniserState tokeniserState) {
        o(tokeniserState);
        this.f22605a.advance();
    }

    public final void b(String str, Object... objArr) {
        ParseErrorList parseErrorList = this.b;
        if (parseErrorList.a()) {
            parseErrorList.add(new ParseError(this.f22605a, String.format("Invalid character reference: ".concat(str), objArr)));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x01ab, code lost:
    
        if (r0.u('=', '-', '_') == false) goto L103;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int[] c(java.lang.Character r14, boolean r15) {
        /*
            Method dump skipped, instructions count: 485
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jsoup.parser.Tokeniser.c(java.lang.Character, boolean):int[]");
    }

    public final Token.Tag d(boolean z) {
        Token.Tag tag;
        if (z) {
            tag = this.h;
            tag.f();
        } else {
            tag = this.i;
            tag.f();
        }
        this.j = tag;
        return tag;
    }

    public final void e() {
        this.f.d();
    }

    public final void f(char c2) {
        Token.Character character = this.k;
        character.d.a(c2);
        character.b = this.r;
        character.f22601c = this.f22605a.pos();
    }

    public final void g(String str) {
        Token.Character character = this.k;
        character.d.b(str);
        character.b = this.r;
        character.f22601c = this.f22605a.pos();
    }

    public final void h(Token token) {
        Validate.isFalse(this.e);
        this.d = token;
        this.e = true;
        token.b = this.q;
        CharacterReader characterReader = this.f22605a;
        token.f22601c = characterReader.pos();
        this.r = characterReader.pos();
        Token.TokenType tokenType = token.f22600a;
        if (tokenType == Token.TokenType.StartTag) {
            this.o = ((Token.StartTag) token).d.e();
            this.p = null;
        } else if (tokenType == Token.TokenType.EndTag) {
            Token.EndTag endTag = (Token.EndTag) token;
            if (endTag.g != null) {
                Object[] objArr = {endTag.m()};
                ParseErrorList parseErrorList = this.b;
                if (parseErrorList.a()) {
                    parseErrorList.add(new ParseError(characterReader, "Attributes incorrectly present on end tag [/%s]", objArr));
                }
            }
        }
    }

    public final void i() {
        h(this.m);
    }

    public final void j() {
        h(this.l);
    }

    public final void k() {
        Token.Tag tag = this.j;
        if (tag.h.c()) {
            tag.l();
        }
        h(this.j);
    }

    public final void l(TokeniserState tokeniserState) {
        ParseErrorList parseErrorList = this.b;
        if (parseErrorList.a()) {
            parseErrorList.add(new ParseError(this.f22605a, "Unexpectedly reached end of file (EOF) in input state [%s]", tokeniserState));
        }
    }

    public final void m(TokeniserState tokeniserState) {
        ParseErrorList parseErrorList = this.b;
        if (parseErrorList.a()) {
            CharacterReader characterReader = this.f22605a;
            parseErrorList.add(new ParseError(characterReader, "Unexpected character '%s' in input state [%s]", Character.valueOf(characterReader.current()), tokeniserState));
        }
    }

    public final boolean n() {
        if (this.o != null && this.j.d.e().equalsIgnoreCase(this.o)) {
            return true;
        }
        return false;
    }

    public final void o(TokeniserState tokeniserState) {
        if (tokeniserState == TokeniserState.l) {
            this.q = this.f22605a.pos();
        }
        this.f22606c = tokeniserState;
    }
}
