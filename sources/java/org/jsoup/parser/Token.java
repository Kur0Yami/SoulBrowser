package org.jsoup.parser;

import com.google.android.gms.ads.RequestConfiguration;
import org.jsoup.helper.Validate;
import org.jsoup.internal.Normalizer;
import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Attributes;
import org.jsoup.nodes.Range;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public abstract class Token {

    /* renamed from: a, reason: collision with root package name */
    public final TokenType f22600a;
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public int f22601c = -1;

    /* loaded from: classes4.dex */
    public static final class CData extends Character {
        @Override // org.jsoup.parser.Token.Character
        public final String toString() {
            return android.support.v4.media.a.p(new StringBuilder("<![CDATA["), this.d.e(), "]]>");
        }
    }

    /* loaded from: classes4.dex */
    public static final class Comment extends Token {
        public final TokenData d;

        /* JADX WARN: Type inference failed for: r0v1, types: [org.jsoup.parser.TokenData, java.lang.Object] */
        public Comment() {
            super(TokenType.Comment);
            this.d = new Object();
        }

        @Override // org.jsoup.parser.Token
        public final void f() {
            super.f();
            this.d.d();
        }

        public final void g(char c2) {
            this.d.a(c2);
        }

        public final String toString() {
            return android.support.v4.media.a.p(new StringBuilder("<!--"), this.d.e(), "-->");
        }
    }

    /* loaded from: classes4.dex */
    public static final class Doctype extends Token {
        public final TokenData d;
        public String e;
        public final TokenData f;
        public final TokenData g;
        public boolean h;

        /* JADX WARN: Type inference failed for: r0v1, types: [org.jsoup.parser.TokenData, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r0v3, types: [org.jsoup.parser.TokenData, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r0v4, types: [org.jsoup.parser.TokenData, java.lang.Object] */
        public Doctype() {
            super(TokenType.Doctype);
            this.d = new Object();
            this.e = null;
            this.f = new Object();
            this.g = new Object();
            this.h = false;
        }

        @Override // org.jsoup.parser.Token
        public final void f() {
            super.f();
            this.d.d();
            this.e = null;
            this.f.d();
            this.g.d();
            this.h = false;
        }

        public final String toString() {
            return android.support.v4.media.a.p(new StringBuilder("<!doctype "), this.d.e(), ">");
        }
    }

    /* loaded from: classes4.dex */
    public static final class EOF extends Token {
        public EOF() {
            super(TokenType.EOF);
        }

        public final String toString() {
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
    }

    /* loaded from: classes4.dex */
    public static final class EndTag extends Tag {
        public EndTag(TreeBuilder treeBuilder) {
            super(TokenType.EndTag, treeBuilder);
        }

        public final String toString() {
            return android.support.v4.media.a.p(new StringBuilder("</"), o(), ">");
        }
    }

    /* loaded from: classes4.dex */
    public static final class StartTag extends Tag {
        public StartTag(TreeBuilder treeBuilder) {
            super(TokenType.StartTag, treeBuilder);
        }

        @Override // org.jsoup.parser.Token.Tag, org.jsoup.parser.Token
        /* renamed from: n, reason: merged with bridge method [inline-methods] */
        public final Tag f() {
            super.f();
            this.g = null;
            return this;
        }

        public final String toString() {
            String str;
            if (this.f) {
                str = "/>";
            } else {
                str = ">";
            }
            Attributes attributes = this.g;
            if (attributes != null && attributes.size() > 0) {
                return "<" + o() + " " + this.g.toString() + str;
            }
            return android.support.v4.media.a.p(new StringBuilder("<"), o(), str);
        }
    }

    /* loaded from: classes4.dex */
    public static abstract class Tag extends Token {
        public final TokenData d;
        public String e;
        public boolean f;
        public Attributes g;
        public final TokenData h;
        public final TokenData i;
        public boolean j;
        public final TreeBuilder k;
        public final boolean l;
        public int m;
        public int n;
        public int o;
        public int p;

        /* JADX WARN: Type inference failed for: r0v0, types: [org.jsoup.parser.TokenData, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r0v1, types: [org.jsoup.parser.TokenData, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r2v1, types: [org.jsoup.parser.TokenData, java.lang.Object] */
        public Tag(TokenType tokenType, TreeBuilder treeBuilder) {
            super(tokenType);
            this.d = new Object();
            this.f = false;
            this.h = new Object();
            this.i = new Object();
            this.j = false;
            this.k = treeBuilder;
            this.l = treeBuilder.m;
        }

        public final void g(char c2, int i, int i2) {
            this.i.a(c2);
            j(i, i2);
        }

        public final void h(int[] iArr, int i, int i2) {
            for (int i3 : iArr) {
                TokenData tokenData = this.i;
                StringBuilder sb = tokenData.b;
                if (sb != null) {
                    sb.appendCodePoint(i3);
                } else if (tokenData.f22603a != null) {
                    StringBuilder borrowBuilder = StringUtil.borrowBuilder();
                    tokenData.b = borrowBuilder;
                    borrowBuilder.append(tokenData.f22603a);
                    tokenData.f22603a = null;
                    tokenData.b.appendCodePoint(i3);
                } else {
                    tokenData.f22603a = String.valueOf(java.lang.Character.toChars(i3));
                }
            }
            j(i, i2);
        }

        public final void i(String str) {
            String replace = str.replace((char) 0, (char) 65533);
            TokenData tokenData = this.d;
            tokenData.b(replace);
            String e = tokenData.e();
            ParseSettings parseSettings = ParseSettings.htmlDefault;
            this.e = Normalizer.normalize(e);
        }

        public final void j(int i, int i2) {
            if (this.l) {
                int i3 = this.o;
                if (i3 > -1) {
                    i = i3;
                }
                this.o = i;
                this.p = i2;
            }
        }

        public final void k(String str) {
            TokenData tokenData = this.d;
            tokenData.d();
            tokenData.f22603a = str;
            String e = tokenData.e();
            ParseSettings parseSettings = ParseSettings.htmlDefault;
            this.e = Normalizer.normalize(e);
        }

        public final void l() {
            String str;
            if (this.g == null) {
                this.g = new Attributes();
            }
            TokenData tokenData = this.h;
            boolean c2 = tokenData.c();
            boolean z = this.l;
            TokenData tokenData2 = this.i;
            if (c2 && this.g.size() < 512) {
                String trim = tokenData.e().trim();
                if (!trim.isEmpty()) {
                    if (tokenData2.c()) {
                        str = tokenData2.e();
                    } else if (this.j) {
                        str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                    } else {
                        str = null;
                    }
                    this.g.add(trim, str);
                    if (z && e()) {
                        TreeBuilder treeBuilder = ((StartTag) this).k;
                        CharacterReader characterReader = treeBuilder.b;
                        if (!treeBuilder.h.preserveAttributeCase()) {
                            trim = Normalizer.lowerCase(trim);
                        }
                        if (!this.g.sourceRange(trim).nameRange().isTracked()) {
                            if (!tokenData2.c()) {
                                int i = this.n;
                                this.p = i;
                                this.o = i;
                            }
                            int i2 = this.m;
                            Range.Position position = new Range.Position(i2, characterReader.l(i2), characterReader.d(this.m));
                            int i3 = this.n;
                            Range range = new Range(position, new Range.Position(i3, characterReader.l(i3), characterReader.d(this.n)));
                            int i4 = this.o;
                            Range.Position position2 = new Range.Position(i4, characterReader.l(i4), characterReader.d(this.o));
                            int i5 = this.p;
                            this.g.sourceRange(trim, new Range.AttributeRange(range, new Range(position2, new Range.Position(i5, characterReader.l(i5), characterReader.d(this.p)))));
                        }
                    }
                }
            }
            tokenData.d();
            tokenData2.d();
            this.j = false;
            if (z) {
                this.p = -1;
                this.o = -1;
                this.n = -1;
                this.m = -1;
            }
        }

        public final String m() {
            boolean z;
            String str = this.e;
            if (str != null && !str.isEmpty()) {
                z = false;
            } else {
                z = true;
            }
            Validate.isFalse(z);
            return this.e;
        }

        @Override // org.jsoup.parser.Token
        /* renamed from: n */
        public Tag f() {
            super.f();
            this.d.d();
            this.e = null;
            this.f = false;
            this.g = null;
            this.h.d();
            this.i.d();
            this.j = false;
            if (this.l) {
                this.p = -1;
                this.o = -1;
                this.n = -1;
                this.m = -1;
            }
            return this;
        }

        public final String o() {
            String e = this.d.e();
            if (e.isEmpty()) {
                return "[unset]";
            }
            return e;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes4.dex */
    public static final class TokenType {
        public static final TokenType Character;
        public static final TokenType Comment;
        public static final TokenType Doctype;
        public static final TokenType EOF;
        public static final TokenType EndTag;
        public static final TokenType StartTag;
        public static final TokenType XmlDecl;

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ TokenType[] f22602c;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, org.jsoup.parser.Token$TokenType] */
        /* JADX WARN: Type inference failed for: r11v1, types: [java.lang.Enum, org.jsoup.parser.Token$TokenType] */
        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, org.jsoup.parser.Token$TokenType] */
        /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Enum, org.jsoup.parser.Token$TokenType] */
        /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.Enum, org.jsoup.parser.Token$TokenType] */
        /* JADX WARN: Type inference failed for: r7v1, types: [java.lang.Enum, org.jsoup.parser.Token$TokenType] */
        /* JADX WARN: Type inference failed for: r9v1, types: [java.lang.Enum, org.jsoup.parser.Token$TokenType] */
        static {
            ?? r0 = new Enum("Doctype", 0);
            Doctype = r0;
            ?? r1 = new Enum("StartTag", 1);
            StartTag = r1;
            ?? r3 = new Enum("EndTag", 2);
            EndTag = r3;
            ?? r5 = new Enum("Comment", 3);
            Comment = r5;
            ?? r7 = new Enum("Character", 4);
            Character = r7;
            ?? r9 = new Enum("XmlDecl", 5);
            XmlDecl = r9;
            ?? r11 = new Enum("EOF", 6);
            EOF = r11;
            f22602c = new TokenType[]{r0, r1, r3, r5, r7, r9, r11};
        }

        public static TokenType valueOf(String str) {
            return (TokenType) Enum.valueOf(TokenType.class, str);
        }

        public static TokenType[] values() {
            return (TokenType[]) f22602c.clone();
        }
    }

    /* loaded from: classes4.dex */
    public static final class XmlDecl extends Tag {
        public boolean q;

        @Override // org.jsoup.parser.Token.Tag
        /* renamed from: n */
        public final /* bridge */ /* synthetic */ Tag f() {
            f();
            return this;
        }

        @Override // org.jsoup.parser.Token.Tag, org.jsoup.parser.Token
        /* renamed from: p, reason: merged with bridge method [inline-methods] */
        public final void f() {
            super.f();
            this.q = true;
        }

        public final String toString() {
            String str;
            String str2;
            boolean z = this.q;
            if (z) {
                str = "<!";
            } else {
                str = "<?";
            }
            if (z) {
                str2 = ">";
            } else {
                str2 = "?>";
            }
            Attributes attributes = this.g;
            if (attributes != null && attributes.size() > 0) {
                StringBuilder t = android.support.v4.media.a.t(str);
                t.append(o());
                t.append(" ");
                t.append(this.g.toString());
                t.append(str2);
                return t.toString();
            }
            return android.support.v4.media.a.p(android.support.v4.media.a.t(str), o(), str2);
        }
    }

    public Token(TokenType tokenType) {
        this.f22600a = tokenType;
    }

    public final boolean a() {
        if (this.f22600a == TokenType.Comment) {
            return true;
        }
        return false;
    }

    public final boolean b() {
        if (this.f22600a == TokenType.Doctype) {
            return true;
        }
        return false;
    }

    public final boolean c() {
        if (this.f22600a == TokenType.EOF) {
            return true;
        }
        return false;
    }

    public final boolean d() {
        if (this.f22600a == TokenType.EndTag) {
            return true;
        }
        return false;
    }

    public final boolean e() {
        if (this.f22600a == TokenType.StartTag) {
            return true;
        }
        return false;
    }

    public void f() {
        this.b = -1;
        this.f22601c = -1;
    }

    /* loaded from: classes4.dex */
    public static class Character extends Token {
        public final TokenData d;

        /* JADX WARN: Type inference failed for: r0v1, types: [org.jsoup.parser.TokenData, java.lang.Object] */
        public Character() {
            super(TokenType.Character);
            this.d = new Object();
        }

        @Override // org.jsoup.parser.Token
        public final void f() {
            super.f();
            this.d.d();
        }

        public String toString() {
            return this.d.e();
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [org.jsoup.parser.TokenData, java.lang.Object] */
        public Character(Character character) {
            super(TokenType.Character);
            ?? obj = new Object();
            this.d = obj;
            this.b = character.b;
            this.f22601c = character.f22601c;
            String e = character.d.e();
            obj.d();
            obj.f22603a = e;
        }
    }
}
