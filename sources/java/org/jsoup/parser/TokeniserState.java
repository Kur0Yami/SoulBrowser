package org.jsoup.parser;

import com.google.android.gms.ads.RequestConfiguration;
import kotlin.text.Typography;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.DocumentType;
import org.jsoup.parser.Token;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes4.dex */
public abstract class TokeniserState {
    public static final AnonymousClass23 A;
    public static final AnonymousClass24 B;
    public static final AnonymousClass25 C;
    public static final AnonymousClass26 D;
    public static final AnonymousClass27 E;
    public static final AnonymousClass28 F;
    public static final AnonymousClass29 G;
    public static final AnonymousClass30 H;
    public static final AnonymousClass31 I;
    public static final AnonymousClass32 J;
    public static final AnonymousClass33 K;
    public static final AnonymousClass34 L;
    public static final AnonymousClass35 M;
    public static final AnonymousClass36 N;
    public static final AnonymousClass37 O;
    public static final AnonymousClass38 P;
    public static final AnonymousClass39 Q;
    public static final AnonymousClass40 R;
    public static final AnonymousClass41 S;
    public static final AnonymousClass42 T;
    public static final AnonymousClass43 U;
    public static final AnonymousClass44 V;
    public static final AnonymousClass45 W;
    public static final AnonymousClass46 X;
    public static final AnonymousClass47 Y;
    public static final AnonymousClass48 Z;
    public static final AnonymousClass49 a0;
    public static final AnonymousClass50 b0;

    /* renamed from: c, reason: collision with root package name */
    public static final AnonymousClass1 f22607c;
    public static final AnonymousClass51 c0;
    public static final AnonymousClass52 d0;
    public static final AnonymousClass53 e0;
    public static final AnonymousClass2 f;
    public static final AnonymousClass54 f0;
    public static final AnonymousClass3 g;
    public static final AnonymousClass55 g0;
    public static final AnonymousClass4 h;
    public static final AnonymousClass56 h0;
    public static final AnonymousClass5 i;
    public static final AnonymousClass57 i0;
    public static final AnonymousClass6 j;
    public static final AnonymousClass58 j0;
    public static final AnonymousClass7 k;
    public static final AnonymousClass59 k0;
    public static final AnonymousClass8 l;
    public static final AnonymousClass60 l0;
    public static final AnonymousClass9 m;
    public static final AnonymousClass61 m0;
    public static final AnonymousClass10 n;
    public static final AnonymousClass62 n0;
    public static final AnonymousClass11 o;
    public static final AnonymousClass63 o0;
    public static final AnonymousClass12 p;
    public static final AnonymousClass64 p0;
    public static final AnonymousClass13 q;
    public static final AnonymousClass65 q0;
    public static final AnonymousClass14 r;
    public static final AnonymousClass66 r0;
    public static final AnonymousClass15 s;
    public static final AnonymousClass67 s0;
    public static final AnonymousClass16 t;
    public static final AnonymousClass68 t0;
    public static final AnonymousClass17 u;
    public static final char[] u0;
    public static final AnonymousClass18 v;
    public static final char[] v0;
    public static final AnonymousClass19 w;
    public static final String w0;
    public static final AnonymousClass20 x;
    public static final /* synthetic */ TokeniserState[] x0;
    public static final AnonymousClass21 y;
    public static final AnonymousClass22 z;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [org.jsoup.parser.TokeniserState$1] */
    /* JADX WARN: Type inference failed for: r10v0, types: [org.jsoup.parser.TokeniserState$11] */
    /* JADX WARN: Type inference failed for: r11v0, types: [org.jsoup.parser.TokeniserState$12] */
    /* JADX WARN: Type inference failed for: r12v0, types: [org.jsoup.parser.TokeniserState$13] */
    /* JADX WARN: Type inference failed for: r13v0, types: [org.jsoup.parser.TokeniserState$14] */
    /* JADX WARN: Type inference failed for: r14v0, types: [org.jsoup.parser.TokeniserState$15] */
    /* JADX WARN: Type inference failed for: r15v0, types: [org.jsoup.parser.TokeniserState$16] */
    /* JADX WARN: Type inference failed for: r16v0, types: [org.jsoup.parser.TokeniserState$17] */
    /* JADX WARN: Type inference failed for: r17v0, types: [org.jsoup.parser.TokeniserState$18] */
    /* JADX WARN: Type inference failed for: r18v0, types: [org.jsoup.parser.TokeniserState$19] */
    /* JADX WARN: Type inference failed for: r19v0, types: [org.jsoup.parser.TokeniserState$20] */
    /* JADX WARN: Type inference failed for: r1v0, types: [org.jsoup.parser.TokeniserState$2] */
    /* JADX WARN: Type inference failed for: r20v0, types: [org.jsoup.parser.TokeniserState$21] */
    /* JADX WARN: Type inference failed for: r21v0, types: [org.jsoup.parser.TokeniserState$22] */
    /* JADX WARN: Type inference failed for: r22v0, types: [org.jsoup.parser.TokeniserState$23] */
    /* JADX WARN: Type inference failed for: r23v0, types: [org.jsoup.parser.TokeniserState$24] */
    /* JADX WARN: Type inference failed for: r24v0, types: [org.jsoup.parser.TokeniserState$25] */
    /* JADX WARN: Type inference failed for: r25v0, types: [org.jsoup.parser.TokeniserState$26] */
    /* JADX WARN: Type inference failed for: r26v0, types: [org.jsoup.parser.TokeniserState$27] */
    /* JADX WARN: Type inference failed for: r27v0, types: [org.jsoup.parser.TokeniserState$28] */
    /* JADX WARN: Type inference failed for: r28v0, types: [org.jsoup.parser.TokeniserState$29] */
    /* JADX WARN: Type inference failed for: r29v0, types: [org.jsoup.parser.TokeniserState$30] */
    /* JADX WARN: Type inference failed for: r2v0, types: [org.jsoup.parser.TokeniserState$3] */
    /* JADX WARN: Type inference failed for: r30v0, types: [org.jsoup.parser.TokeniserState$31] */
    /* JADX WARN: Type inference failed for: r31v0, types: [org.jsoup.parser.TokeniserState$32] */
    /* JADX WARN: Type inference failed for: r32v0, types: [org.jsoup.parser.TokeniserState$33] */
    /* JADX WARN: Type inference failed for: r33v0, types: [org.jsoup.parser.TokeniserState$34] */
    /* JADX WARN: Type inference failed for: r34v0, types: [org.jsoup.parser.TokeniserState$35] */
    /* JADX WARN: Type inference failed for: r35v0, types: [org.jsoup.parser.TokeniserState$36] */
    /* JADX WARN: Type inference failed for: r36v0, types: [org.jsoup.parser.TokeniserState$37] */
    /* JADX WARN: Type inference failed for: r37v0, types: [org.jsoup.parser.TokeniserState$38] */
    /* JADX WARN: Type inference failed for: r38v0, types: [org.jsoup.parser.TokeniserState$39] */
    /* JADX WARN: Type inference failed for: r39v0, types: [org.jsoup.parser.TokeniserState$40] */
    /* JADX WARN: Type inference failed for: r3v0, types: [org.jsoup.parser.TokeniserState$4] */
    /* JADX WARN: Type inference failed for: r40v0, types: [org.jsoup.parser.TokeniserState$41] */
    /* JADX WARN: Type inference failed for: r41v0, types: [org.jsoup.parser.TokeniserState$42] */
    /* JADX WARN: Type inference failed for: r42v0, types: [org.jsoup.parser.TokeniserState$43] */
    /* JADX WARN: Type inference failed for: r43v0, types: [org.jsoup.parser.TokeniserState$44] */
    /* JADX WARN: Type inference failed for: r44v0, types: [org.jsoup.parser.TokeniserState$45] */
    /* JADX WARN: Type inference failed for: r45v0, types: [org.jsoup.parser.TokeniserState$46] */
    /* JADX WARN: Type inference failed for: r46v0, types: [org.jsoup.parser.TokeniserState$47] */
    /* JADX WARN: Type inference failed for: r47v0, types: [org.jsoup.parser.TokeniserState$48] */
    /* JADX WARN: Type inference failed for: r48v0, types: [org.jsoup.parser.TokeniserState$49] */
    /* JADX WARN: Type inference failed for: r49v0, types: [org.jsoup.parser.TokeniserState$50] */
    /* JADX WARN: Type inference failed for: r4v0, types: [org.jsoup.parser.TokeniserState$5] */
    /* JADX WARN: Type inference failed for: r50v0, types: [org.jsoup.parser.TokeniserState$51] */
    /* JADX WARN: Type inference failed for: r51v0, types: [org.jsoup.parser.TokeniserState$52] */
    /* JADX WARN: Type inference failed for: r52v0, types: [org.jsoup.parser.TokeniserState$53] */
    /* JADX WARN: Type inference failed for: r53v0, types: [org.jsoup.parser.TokeniserState$54] */
    /* JADX WARN: Type inference failed for: r54v0, types: [org.jsoup.parser.TokeniserState$55] */
    /* JADX WARN: Type inference failed for: r55v0, types: [org.jsoup.parser.TokeniserState$56] */
    /* JADX WARN: Type inference failed for: r56v0, types: [org.jsoup.parser.TokeniserState$57] */
    /* JADX WARN: Type inference failed for: r57v0, types: [org.jsoup.parser.TokeniserState$58] */
    /* JADX WARN: Type inference failed for: r58v0, types: [org.jsoup.parser.TokeniserState$59] */
    /* JADX WARN: Type inference failed for: r59v0, types: [org.jsoup.parser.TokeniserState$60] */
    /* JADX WARN: Type inference failed for: r5v0, types: [org.jsoup.parser.TokeniserState$6] */
    /* JADX WARN: Type inference failed for: r60v0, types: [org.jsoup.parser.TokeniserState$61] */
    /* JADX WARN: Type inference failed for: r61v0, types: [org.jsoup.parser.TokeniserState$62] */
    /* JADX WARN: Type inference failed for: r62v0, types: [org.jsoup.parser.TokeniserState$63] */
    /* JADX WARN: Type inference failed for: r63v0, types: [org.jsoup.parser.TokeniserState$64] */
    /* JADX WARN: Type inference failed for: r64v0, types: [org.jsoup.parser.TokeniserState$65] */
    /* JADX WARN: Type inference failed for: r65v0, types: [org.jsoup.parser.TokeniserState$66] */
    /* JADX WARN: Type inference failed for: r66v0, types: [org.jsoup.parser.TokeniserState$67] */
    /* JADX WARN: Type inference failed for: r67v0, types: [org.jsoup.parser.TokeniserState$68] */
    /* JADX WARN: Type inference failed for: r6v0, types: [org.jsoup.parser.TokeniserState$7] */
    /* JADX WARN: Type inference failed for: r7v0, types: [org.jsoup.parser.TokeniserState$8] */
    /* JADX WARN: Type inference failed for: r8v0, types: [org.jsoup.parser.TokeniserState$9] */
    /* JADX WARN: Type inference failed for: r9v0, types: [org.jsoup.parser.TokeniserState$10] */
    static {
        ?? r02 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.1
            @Override // org.jsoup.parser.TokeniserState
            public final void d(Tokeniser tokeniser, CharacterReader characterReader) {
                String str;
                char current = characterReader.current();
                if (current != 0) {
                    if (current != '&') {
                        if (current != '<') {
                            if (current != 65535) {
                                characterReader.a();
                                int i2 = characterReader.h;
                                int i3 = characterReader.i;
                                char[] cArr = characterReader.g;
                                int i4 = i2;
                                while (i4 < i3) {
                                    char c2 = cArr[i4];
                                    if (c2 == '&' || c2 == '<' || c2 == 0) {
                                        break;
                                    } else {
                                        i4++;
                                    }
                                }
                                characterReader.h = i4;
                                if (i4 > i2) {
                                    str = CharacterReader.b(characterReader.g, characterReader.f22585c, i2, i4 - i2);
                                } else {
                                    str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                                }
                                tokeniser.g(str);
                                return;
                            }
                            tokeniser.h(new Token.EOF());
                            return;
                        }
                        tokeniser.a(TokeniserState.l);
                        return;
                    }
                    tokeniser.a(TokeniserState.f);
                    return;
                }
                tokeniser.m(this);
                tokeniser.f(characterReader.consume());
            }
        };
        f22607c = r02;
        ?? r1 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.2
            @Override // org.jsoup.parser.TokeniserState
            public final void d(Tokeniser tokeniser, CharacterReader characterReader) {
                int[] c2 = tokeniser.c(null, false);
                if (c2 == null) {
                    tokeniser.f(Typography.amp);
                } else {
                    tokeniser.g(new String(c2, 0, c2.length));
                }
                tokeniser.o(TokeniserState.f22607c);
            }
        };
        f = r1;
        ?? r2 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.3
            @Override // org.jsoup.parser.TokeniserState
            public final void d(Tokeniser tokeniser, CharacterReader characterReader) {
                String str;
                char current = characterReader.current();
                if (current != 0) {
                    if (current != '&') {
                        if (current != '<') {
                            if (current != 65535) {
                                characterReader.a();
                                int i2 = characterReader.h;
                                int i3 = characterReader.i;
                                char[] cArr = characterReader.g;
                                int i4 = i2;
                                while (i4 < i3) {
                                    char c2 = cArr[i4];
                                    if (c2 == '&' || c2 == '<' || c2 == 0) {
                                        break;
                                    } else {
                                        i4++;
                                    }
                                }
                                characterReader.h = i4;
                                if (i4 > i2) {
                                    str = CharacterReader.b(characterReader.g, characterReader.f22585c, i2, i4 - i2);
                                } else {
                                    str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                                }
                                tokeniser.g(str);
                                return;
                            }
                            tokeniser.h(new Token.EOF());
                            return;
                        }
                        tokeniser.a(TokeniserState.o);
                        return;
                    }
                    tokeniser.a(TokeniserState.h);
                    return;
                }
                tokeniser.m(this);
                characterReader.advance();
                tokeniser.f((char) 65533);
            }
        };
        g = r2;
        ?? r3 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.4
            @Override // org.jsoup.parser.TokeniserState
            public final void d(Tokeniser tokeniser, CharacterReader characterReader) {
                int[] c2 = tokeniser.c(null, false);
                if (c2 == null) {
                    tokeniser.f(Typography.amp);
                } else {
                    tokeniser.g(new String(c2, 0, c2.length));
                }
                tokeniser.o(TokeniserState.g);
            }
        };
        h = r3;
        ?? r4 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.5
            @Override // org.jsoup.parser.TokeniserState
            public final void d(Tokeniser tokeniser, CharacterReader characterReader) {
                TokeniserState.a(tokeniser, characterReader, this, TokeniserState.r);
            }
        };
        i = r4;
        ?? r5 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.6
            @Override // org.jsoup.parser.TokeniserState
            public final void d(Tokeniser tokeniser, CharacterReader characterReader) {
                TokeniserState.a(tokeniser, characterReader, this, TokeniserState.u);
            }
        };
        j = r5;
        ?? r6 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.7
            @Override // org.jsoup.parser.TokeniserState
            public final void d(Tokeniser tokeniser, CharacterReader characterReader) {
                char current = characterReader.current();
                if (current != 0) {
                    if (current != 65535) {
                        tokeniser.g(characterReader.consumeTo((char) 0));
                        return;
                    } else {
                        tokeniser.h(new Token.EOF());
                        return;
                    }
                }
                tokeniser.m(this);
                characterReader.advance();
                tokeniser.f((char) 65533);
            }
        };
        k = r6;
        ?? r7 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.8
            @Override // org.jsoup.parser.TokeniserState
            public final void d(Tokeniser tokeniser, CharacterReader characterReader) {
                char current = characterReader.current();
                if (current != '!') {
                    if (current != '/') {
                        if (current != '?') {
                            if (characterReader.v()) {
                                tokeniser.d(true);
                                tokeniser.o(TokeniserState.n);
                                return;
                            } else {
                                tokeniser.m(this);
                                tokeniser.f(Typography.less);
                                tokeniser.o(TokeniserState.f22607c);
                                return;
                            }
                        }
                        if (tokeniser.g == Document.OutputSettings.Syntax.xml) {
                            tokeniser.a(TokeniserState.W);
                            return;
                        } else {
                            tokeniser.m.f();
                            tokeniser.o(TokeniserState.U);
                            return;
                        }
                    }
                    tokeniser.a(TokeniserState.m);
                    return;
                }
                tokeniser.a(TokeniserState.V);
            }
        };
        l = r7;
        ?? r8 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.9
            @Override // org.jsoup.parser.TokeniserState
            public final void d(Tokeniser tokeniser, CharacterReader characterReader) {
                boolean isEmpty = characterReader.isEmpty();
                AnonymousClass1 anonymousClass1 = TokeniserState.f22607c;
                if (isEmpty) {
                    tokeniser.l(this);
                    tokeniser.g("</");
                    tokeniser.o(anonymousClass1);
                } else if (characterReader.v()) {
                    tokeniser.d(false);
                    tokeniser.o(TokeniserState.n);
                } else {
                    if (characterReader.o(Typography.greater)) {
                        tokeniser.m(this);
                        tokeniser.a(anonymousClass1);
                        return;
                    }
                    tokeniser.m(this);
                    Token.Comment comment = tokeniser.m;
                    comment.f();
                    comment.g('/');
                    tokeniser.o(TokeniserState.U);
                }
            }
        };
        m = r8;
        ?? r9 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.10
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v0, types: [org.jsoup.parser.CharacterReader$CharPredicate, java.lang.Object] */
            @Override // org.jsoup.parser.TokeniserState
            public final void d(Tokeniser tokeniser, CharacterReader characterReader) {
                tokeniser.j.i(characterReader.f(new Object()));
                char consume = characterReader.consume();
                if (consume != 0) {
                    if (consume != ' ') {
                        if (consume != '/') {
                            AnonymousClass1 anonymousClass1 = TokeniserState.f22607c;
                            if (consume != '>') {
                                if (consume != 65535) {
                                    if (consume != '\t' && consume != '\n' && consume != '\f' && consume != '\r') {
                                        Token.Tag tag = tokeniser.j;
                                        tag.getClass();
                                        tag.i(String.valueOf(consume));
                                        return;
                                    }
                                } else {
                                    tokeniser.l(this);
                                    tokeniser.o(anonymousClass1);
                                    return;
                                }
                            } else {
                                tokeniser.k();
                                tokeniser.o(anonymousClass1);
                                return;
                            }
                        } else {
                            tokeniser.o(TokeniserState.T);
                            return;
                        }
                    }
                    tokeniser.o(TokeniserState.L);
                    return;
                }
                tokeniser.j.i(TokeniserState.w0);
            }
        };
        n = r9;
        ?? r10 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.11
            /* JADX WARN: Code restructure failed: missing block: B:24:0x004a, code lost:
            
                if (r1 >= r8.h) goto L33;
             */
            /* JADX WARN: Removed duplicated region for block: B:21:0x0077  */
            @Override // org.jsoup.parser.TokeniserState
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void d(org.jsoup.parser.Tokeniser r7, org.jsoup.parser.CharacterReader r8) {
                /*
                    r6 = this;
                    r0 = 47
                    boolean r0 = r8.o(r0)
                    if (r0 == 0) goto L11
                    r7.e()
                    org.jsoup.parser.TokeniserState$12 r8 = org.jsoup.parser.TokeniserState.p
                    r7.a(r8)
                    return
                L11:
                    boolean r0 = r8.m
                    if (r0 == 0) goto L8b
                    boolean r0 = r8.v()
                    if (r0 == 0) goto L8b
                    java.lang.String r0 = r7.o
                    if (r0 == 0) goto L8b
                    java.lang.String r0 = r7.p
                    if (r0 != 0) goto L35
                    java.lang.StringBuilder r0 = new java.lang.StringBuilder
                    java.lang.String r1 = "</"
                    r0.<init>(r1)
                    java.lang.String r1 = r7.o
                    r0.append(r1)
                    java.lang.String r0 = r0.toString()
                    r7.p = r0
                L35:
                    java.lang.String r0 = r7.p
                    java.lang.String r1 = r8.p
                    boolean r1 = r0.equals(r1)
                    r2 = 0
                    r3 = 1
                    r4 = -1
                    if (r1 == 0) goto L4d
                    int r1 = r8.q
                    if (r1 != r4) goto L48
                    r3 = r2
                    goto L75
                L48:
                    int r5 = r8.h
                    if (r1 < r5) goto L4d
                    goto L75
                L4d:
                    r8.p = r0
                    java.util.Locale r1 = java.util.Locale.ENGLISH
                    java.lang.String r5 = r0.toLowerCase(r1)
                    int r5 = r8.A(r5)
                    if (r5 <= r4) goto L61
                    int r0 = r8.h
                    int r0 = r0 + r5
                    r8.q = r0
                    goto L75
                L61:
                    java.lang.String r0 = r0.toUpperCase(r1)
                    int r0 = r8.A(r0)
                    if (r0 <= r4) goto L6c
                    goto L6d
                L6c:
                    r3 = r2
                L6d:
                    if (r3 == 0) goto L73
                    int r1 = r8.h
                    int r4 = r1 + r0
                L73:
                    r8.q = r4
                L75:
                    if (r3 != 0) goto L8b
                    org.jsoup.parser.Token$Tag r8 = r7.d(r2)
                    java.lang.String r0 = r7.o
                    r8.k(r0)
                    r7.j = r8
                    r7.k()
                    org.jsoup.parser.TokeniserState$8 r8 = org.jsoup.parser.TokeniserState.l
                    r7.o(r8)
                    return
                L8b:
                    r8 = 60
                    r7.f(r8)
                    org.jsoup.parser.TokeniserState$3 r8 = org.jsoup.parser.TokeniserState.g
                    r7.o(r8)
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: org.jsoup.parser.TokeniserState.AnonymousClass11.d(org.jsoup.parser.Tokeniser, org.jsoup.parser.CharacterReader):void");
            }
        };
        o = r10;
        ?? r11 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.12
            @Override // org.jsoup.parser.TokeniserState
            public final void d(Tokeniser tokeniser, CharacterReader characterReader) {
                if (characterReader.v()) {
                    tokeniser.d(false);
                    Token.Tag tag = tokeniser.j;
                    char current = characterReader.current();
                    tag.getClass();
                    tag.i(String.valueOf(current));
                    tokeniser.f.a(characterReader.current());
                    tokeniser.a(TokeniserState.q);
                    return;
                }
                tokeniser.g("</");
                tokeniser.o(TokeniserState.g);
            }
        };
        p = r11;
        ?? r12 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.13
            public static void e(Tokeniser tokeniser, CharacterReader characterReader) {
                tokeniser.g("</");
                tokeniser.g(tokeniser.f.e());
                characterReader.G();
                tokeniser.o(TokeniserState.g);
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v5, types: [org.jsoup.parser.CharacterReader$CharPredicate, java.lang.Object] */
            @Override // org.jsoup.parser.TokeniserState
            public final void d(Tokeniser tokeniser, CharacterReader characterReader) {
                if (characterReader.v()) {
                    String f2 = characterReader.f(new Object());
                    tokeniser.j.i(f2);
                    tokeniser.f.b(f2);
                    return;
                }
                char consume = characterReader.consume();
                if (consume != '\t' && consume != '\n' && consume != '\f' && consume != '\r' && consume != ' ') {
                    if (consume != '/') {
                        if (consume != '>') {
                            e(tokeniser, characterReader);
                            return;
                        } else if (tokeniser.n()) {
                            tokeniser.k();
                            tokeniser.o(TokeniserState.f22607c);
                            return;
                        } else {
                            e(tokeniser, characterReader);
                            return;
                        }
                    }
                    if (tokeniser.n()) {
                        tokeniser.o(TokeniserState.T);
                        return;
                    } else {
                        e(tokeniser, characterReader);
                        return;
                    }
                }
                if (tokeniser.n()) {
                    tokeniser.o(TokeniserState.L);
                } else {
                    e(tokeniser, characterReader);
                }
            }
        };
        q = r12;
        ?? r13 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.14
            @Override // org.jsoup.parser.TokeniserState
            public final void d(Tokeniser tokeniser, CharacterReader characterReader) {
                if (characterReader.o('/')) {
                    tokeniser.e();
                    tokeniser.a(TokeniserState.s);
                } else {
                    tokeniser.f(Typography.less);
                    tokeniser.o(TokeniserState.i);
                }
            }
        };
        r = r13;
        ?? r14 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.15
            @Override // org.jsoup.parser.TokeniserState
            public final void d(Tokeniser tokeniser, CharacterReader characterReader) {
                if (characterReader.v()) {
                    tokeniser.d(false);
                    tokeniser.o(TokeniserState.t);
                } else {
                    tokeniser.g("</");
                    tokeniser.o(TokeniserState.i);
                }
            }
        };
        s = r14;
        ?? r15 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.16
            @Override // org.jsoup.parser.TokeniserState
            public final void d(Tokeniser tokeniser, CharacterReader characterReader) {
                TokeniserState.b(tokeniser, characterReader, TokeniserState.i);
            }
        };
        t = r15;
        ?? r16 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.17
            @Override // org.jsoup.parser.TokeniserState
            public final void d(Tokeniser tokeniser, CharacterReader characterReader) {
                char consume = characterReader.consume();
                if (consume != '!') {
                    if (consume != '/') {
                        if (consume != 65535) {
                            tokeniser.f(Typography.less);
                            characterReader.G();
                            tokeniser.o(TokeniserState.j);
                            return;
                        } else {
                            tokeniser.f(Typography.less);
                            tokeniser.l(this);
                            tokeniser.o(TokeniserState.f22607c);
                            return;
                        }
                    }
                    tokeniser.e();
                    tokeniser.o(TokeniserState.v);
                    return;
                }
                tokeniser.g("<!");
                tokeniser.o(TokeniserState.x);
            }
        };
        u = r16;
        ?? r17 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.18
            @Override // org.jsoup.parser.TokeniserState
            public final void d(Tokeniser tokeniser, CharacterReader characterReader) {
                if (characterReader.v()) {
                    tokeniser.d(false);
                    tokeniser.o(TokeniserState.w);
                } else {
                    tokeniser.g("</");
                    tokeniser.o(TokeniserState.j);
                }
            }
        };
        v = r17;
        ?? r18 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.19
            @Override // org.jsoup.parser.TokeniserState
            public final void d(Tokeniser tokeniser, CharacterReader characterReader) {
                TokeniserState.b(tokeniser, characterReader, TokeniserState.j);
            }
        };
        w = r18;
        ?? r19 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.20
            @Override // org.jsoup.parser.TokeniserState
            public final void d(Tokeniser tokeniser, CharacterReader characterReader) {
                if (characterReader.o('-')) {
                    tokeniser.f('-');
                    tokeniser.a(TokeniserState.y);
                } else {
                    tokeniser.o(TokeniserState.j);
                }
            }
        };
        x = r19;
        ?? r20 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.21
            @Override // org.jsoup.parser.TokeniserState
            public final void d(Tokeniser tokeniser, CharacterReader characterReader) {
                if (characterReader.o('-')) {
                    tokeniser.f('-');
                    tokeniser.a(TokeniserState.B);
                } else {
                    tokeniser.o(TokeniserState.j);
                }
            }
        };
        y = r20;
        ?? r21 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.22
            @Override // org.jsoup.parser.TokeniserState
            public final void d(Tokeniser tokeniser, CharacterReader characterReader) {
                if (characterReader.isEmpty()) {
                    tokeniser.l(this);
                    tokeniser.o(TokeniserState.f22607c);
                    return;
                }
                char current = characterReader.current();
                if (current != 0) {
                    if (current != '-') {
                        if (current != '<') {
                            tokeniser.g(characterReader.consumeToAny('-', Typography.less, 0));
                            return;
                        } else {
                            tokeniser.a(TokeniserState.C);
                            return;
                        }
                    }
                    tokeniser.f('-');
                    tokeniser.a(TokeniserState.A);
                    return;
                }
                tokeniser.m(this);
                characterReader.advance();
                tokeniser.f((char) 65533);
            }
        };
        z = r21;
        ?? r22 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.23
            @Override // org.jsoup.parser.TokeniserState
            public final void d(Tokeniser tokeniser, CharacterReader characterReader) {
                if (characterReader.isEmpty()) {
                    tokeniser.l(this);
                    tokeniser.o(TokeniserState.f22607c);
                    return;
                }
                char consume = characterReader.consume();
                AnonymousClass22 anonymousClass22 = TokeniserState.z;
                if (consume != 0) {
                    if (consume != '-') {
                        if (consume != '<') {
                            tokeniser.f(consume);
                            tokeniser.o(anonymousClass22);
                            return;
                        } else {
                            tokeniser.o(TokeniserState.C);
                            return;
                        }
                    }
                    tokeniser.f(consume);
                    tokeniser.o(TokeniserState.B);
                    return;
                }
                tokeniser.m(this);
                tokeniser.f((char) 65533);
                tokeniser.o(anonymousClass22);
            }
        };
        A = r22;
        ?? r23 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.24
            @Override // org.jsoup.parser.TokeniserState
            public final void d(Tokeniser tokeniser, CharacterReader characterReader) {
                if (characterReader.isEmpty()) {
                    tokeniser.l(this);
                    tokeniser.o(TokeniserState.f22607c);
                    return;
                }
                char consume = characterReader.consume();
                AnonymousClass22 anonymousClass22 = TokeniserState.z;
                if (consume != 0) {
                    if (consume != '-') {
                        if (consume != '<') {
                            if (consume != '>') {
                                tokeniser.f(consume);
                                tokeniser.o(anonymousClass22);
                                return;
                            } else {
                                tokeniser.f(consume);
                                tokeniser.o(TokeniserState.j);
                                return;
                            }
                        }
                        tokeniser.o(TokeniserState.C);
                        return;
                    }
                    tokeniser.f(consume);
                    return;
                }
                tokeniser.m(this);
                tokeniser.f((char) 65533);
                tokeniser.o(anonymousClass22);
            }
        };
        B = r23;
        ?? r24 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.25
            @Override // org.jsoup.parser.TokeniserState
            public final void d(Tokeniser tokeniser, CharacterReader characterReader) {
                if (characterReader.v()) {
                    tokeniser.e();
                    tokeniser.f.a(characterReader.current());
                    tokeniser.f(Typography.less);
                    tokeniser.f(characterReader.current());
                    tokeniser.a(TokeniserState.F);
                    return;
                }
                if (characterReader.o('/')) {
                    tokeniser.e();
                    tokeniser.a(TokeniserState.D);
                } else {
                    tokeniser.f(Typography.less);
                    tokeniser.o(TokeniserState.z);
                }
            }
        };
        C = r24;
        ?? r25 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.26
            @Override // org.jsoup.parser.TokeniserState
            public final void d(Tokeniser tokeniser, CharacterReader characterReader) {
                if (characterReader.v()) {
                    tokeniser.d(false);
                    Token.Tag tag = tokeniser.j;
                    char current = characterReader.current();
                    tag.getClass();
                    tag.i(String.valueOf(current));
                    tokeniser.f.a(characterReader.current());
                    tokeniser.a(TokeniserState.E);
                    return;
                }
                tokeniser.g("</");
                tokeniser.o(TokeniserState.z);
            }
        };
        D = r25;
        ?? r26 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.27
            @Override // org.jsoup.parser.TokeniserState
            public final void d(Tokeniser tokeniser, CharacterReader characterReader) {
                TokeniserState.b(tokeniser, characterReader, TokeniserState.z);
            }
        };
        E = r26;
        ?? r27 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.28
            @Override // org.jsoup.parser.TokeniserState
            public final void d(Tokeniser tokeniser, CharacterReader characterReader) {
                TokeniserState.c(tokeniser, characterReader, TokeniserState.G, TokeniserState.z);
            }
        };
        F = r27;
        ?? r28 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.29
            @Override // org.jsoup.parser.TokeniserState
            public final void d(Tokeniser tokeniser, CharacterReader characterReader) {
                char current = characterReader.current();
                if (current != 0) {
                    if (current != '-') {
                        if (current != '<') {
                            if (current != 65535) {
                                tokeniser.g(characterReader.consumeToAny('-', Typography.less, 0));
                                return;
                            } else {
                                tokeniser.l(this);
                                tokeniser.o(TokeniserState.f22607c);
                                return;
                            }
                        }
                        tokeniser.f(current);
                        tokeniser.a(TokeniserState.J);
                        return;
                    }
                    tokeniser.f(current);
                    tokeniser.a(TokeniserState.H);
                    return;
                }
                tokeniser.m(this);
                characterReader.advance();
                tokeniser.f((char) 65533);
            }
        };
        G = r28;
        ?? r29 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.30
            @Override // org.jsoup.parser.TokeniserState
            public final void d(Tokeniser tokeniser, CharacterReader characterReader) {
                char consume = characterReader.consume();
                AnonymousClass29 anonymousClass29 = TokeniserState.G;
                if (consume != 0) {
                    if (consume != '-') {
                        if (consume != '<') {
                            if (consume != 65535) {
                                tokeniser.f(consume);
                                tokeniser.o(anonymousClass29);
                                return;
                            } else {
                                tokeniser.l(this);
                                tokeniser.o(TokeniserState.f22607c);
                                return;
                            }
                        }
                        tokeniser.f(consume);
                        tokeniser.o(TokeniserState.J);
                        return;
                    }
                    tokeniser.f(consume);
                    tokeniser.o(TokeniserState.I);
                    return;
                }
                tokeniser.m(this);
                tokeniser.f((char) 65533);
                tokeniser.o(anonymousClass29);
            }
        };
        H = r29;
        ?? r30 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.31
            @Override // org.jsoup.parser.TokeniserState
            public final void d(Tokeniser tokeniser, CharacterReader characterReader) {
                char consume = characterReader.consume();
                AnonymousClass29 anonymousClass29 = TokeniserState.G;
                if (consume != 0) {
                    if (consume != '-') {
                        if (consume != '<') {
                            if (consume != '>') {
                                if (consume != 65535) {
                                    tokeniser.f(consume);
                                    tokeniser.o(anonymousClass29);
                                    return;
                                } else {
                                    tokeniser.l(this);
                                    tokeniser.o(TokeniserState.f22607c);
                                    return;
                                }
                            }
                            tokeniser.f(consume);
                            tokeniser.o(TokeniserState.j);
                            return;
                        }
                        tokeniser.f(consume);
                        tokeniser.o(TokeniserState.J);
                        return;
                    }
                    tokeniser.f(consume);
                    return;
                }
                tokeniser.m(this);
                tokeniser.f((char) 65533);
                tokeniser.o(anonymousClass29);
            }
        };
        I = r30;
        ?? r31 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.32
            @Override // org.jsoup.parser.TokeniserState
            public final void d(Tokeniser tokeniser, CharacterReader characterReader) {
                if (characterReader.o('/')) {
                    tokeniser.f('/');
                    tokeniser.e();
                    tokeniser.a(TokeniserState.K);
                    return;
                }
                tokeniser.o(TokeniserState.G);
            }
        };
        J = r31;
        ?? r32 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.33
            @Override // org.jsoup.parser.TokeniserState
            public final void d(Tokeniser tokeniser, CharacterReader characterReader) {
                TokeniserState.c(tokeniser, characterReader, TokeniserState.z, TokeniserState.G);
            }
        };
        K = r32;
        ?? r33 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.34
            @Override // org.jsoup.parser.TokeniserState
            public final void d(Tokeniser tokeniser, CharacterReader characterReader) {
                char consume = characterReader.consume();
                AnonymousClass35 anonymousClass35 = TokeniserState.M;
                if (consume != 0) {
                    if (consume != ' ') {
                        if (consume != '\"' && consume != '\'') {
                            if (consume != '/') {
                                AnonymousClass1 anonymousClass1 = TokeniserState.f22607c;
                                if (consume != 65535) {
                                    if (consume != '\t' && consume != '\n' && consume != '\f' && consume != '\r') {
                                        switch (consume) {
                                            case '>':
                                                tokeniser.k();
                                                tokeniser.o(anonymousClass1);
                                                return;
                                            case '?':
                                                if (tokeniser.j instanceof Token.XmlDecl) {
                                                    return;
                                                }
                                                break;
                                        }
                                        tokeniser.j.l();
                                        characterReader.G();
                                        tokeniser.o(anonymousClass35);
                                        return;
                                    }
                                    return;
                                }
                                tokeniser.l(this);
                                tokeniser.o(anonymousClass1);
                                return;
                            }
                            tokeniser.o(TokeniserState.T);
                            return;
                        }
                        tokeniser.m(this);
                        tokeniser.j.l();
                        Token.Tag tag = tokeniser.j;
                        int pos = characterReader.pos() - 1;
                        int pos2 = characterReader.pos();
                        tag.h.a(consume);
                        if (tag.l) {
                            int i2 = tag.m;
                            if (i2 > -1) {
                                pos = i2;
                            }
                            tag.m = pos;
                            tag.n = pos2;
                        }
                        tokeniser.o(anonymousClass35);
                        return;
                    }
                    return;
                }
                characterReader.G();
                tokeniser.m(this);
                tokeniser.j.l();
                tokeniser.o(anonymousClass35);
            }
        };
        L = r33;
        ?? r34 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.35
            @Override // org.jsoup.parser.TokeniserState
            public final void d(Tokeniser tokeniser, CharacterReader characterReader) {
                int pos = characterReader.pos();
                String i2 = characterReader.i(TokeniserState.u0);
                Token.Tag tag = tokeniser.j;
                int pos2 = characterReader.pos();
                tag.getClass();
                tag.h.b(i2.replace((char) 0, (char) 65533));
                if (tag.l) {
                    int i3 = tag.m;
                    if (i3 > -1) {
                        pos = i3;
                    }
                    tag.m = pos;
                    tag.n = pos2;
                }
                int pos3 = characterReader.pos();
                char consume = characterReader.consume();
                AnonymousClass36 anonymousClass36 = TokeniserState.N;
                if (consume != '\t' && consume != '\n' && consume != '\f' && consume != '\r' && consume != ' ') {
                    if (consume != '\"' && consume != '\'') {
                        if (consume != '/') {
                            AnonymousClass1 anonymousClass1 = TokeniserState.f22607c;
                            if (consume != 65535) {
                                switch (consume) {
                                    case '=':
                                        tokeniser.o(TokeniserState.O);
                                        return;
                                    case '>':
                                        tokeniser.k();
                                        tokeniser.o(anonymousClass1);
                                        return;
                                    case '?':
                                        if (tokeniser.g == Document.OutputSettings.Syntax.xml && (tokeniser.j instanceof Token.XmlDecl)) {
                                            tokeniser.o(anonymousClass36);
                                            return;
                                        }
                                        break;
                                }
                                Token.Tag tag2 = tokeniser.j;
                                int pos4 = characterReader.pos();
                                tag2.h.a(consume);
                                if (tag2.l) {
                                    int i4 = tag2.m;
                                    if (i4 > -1) {
                                        pos3 = i4;
                                    }
                                    tag2.m = pos3;
                                    tag2.n = pos4;
                                    return;
                                }
                                return;
                            }
                            tokeniser.l(this);
                            tokeniser.o(anonymousClass1);
                            return;
                        }
                        tokeniser.o(TokeniserState.T);
                        return;
                    }
                    tokeniser.m(this);
                    Token.Tag tag3 = tokeniser.j;
                    int pos5 = characterReader.pos();
                    tag3.h.a(consume);
                    if (tag3.l) {
                        int i5 = tag3.m;
                        if (i5 > -1) {
                            pos3 = i5;
                        }
                        tag3.m = pos3;
                        tag3.n = pos5;
                        return;
                    }
                    return;
                }
                tokeniser.o(anonymousClass36);
            }
        };
        M = r34;
        ?? r35 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.36
            @Override // org.jsoup.parser.TokeniserState
            public final void d(Tokeniser tokeniser, CharacterReader characterReader) {
                char consume = characterReader.consume();
                AnonymousClass35 anonymousClass35 = TokeniserState.M;
                if (consume != 0) {
                    if (consume != ' ') {
                        if (consume != '\"' && consume != '\'') {
                            if (consume != '/') {
                                AnonymousClass1 anonymousClass1 = TokeniserState.f22607c;
                                if (consume != 65535) {
                                    if (consume != '\t' && consume != '\n' && consume != '\f' && consume != '\r') {
                                        switch (consume) {
                                            case '<':
                                                break;
                                            case '=':
                                                tokeniser.o(TokeniserState.O);
                                                return;
                                            case '>':
                                                tokeniser.k();
                                                tokeniser.o(anonymousClass1);
                                                return;
                                            default:
                                                tokeniser.j.l();
                                                characterReader.G();
                                                tokeniser.o(anonymousClass35);
                                                return;
                                        }
                                    } else {
                                        return;
                                    }
                                } else {
                                    tokeniser.l(this);
                                    tokeniser.o(anonymousClass1);
                                    return;
                                }
                            } else {
                                tokeniser.o(TokeniserState.T);
                                return;
                            }
                        }
                        tokeniser.m(this);
                        tokeniser.j.l();
                        Token.Tag tag = tokeniser.j;
                        int pos = characterReader.pos() - 1;
                        int pos2 = characterReader.pos();
                        tag.h.a(consume);
                        if (tag.l) {
                            int i2 = tag.m;
                            if (i2 > -1) {
                                pos = i2;
                            }
                            tag.m = pos;
                            tag.n = pos2;
                        }
                        tokeniser.o(anonymousClass35);
                        return;
                    }
                    return;
                }
                tokeniser.m(this);
                Token.Tag tag2 = tokeniser.j;
                int pos3 = characterReader.pos() - 1;
                int pos4 = characterReader.pos();
                tag2.h.a((char) 65533);
                if (tag2.l) {
                    int i3 = tag2.m;
                    if (i3 > -1) {
                        pos3 = i3;
                    }
                    tag2.m = pos3;
                    tag2.n = pos4;
                }
                tokeniser.o(anonymousClass35);
            }
        };
        N = r35;
        ?? r36 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.37
            @Override // org.jsoup.parser.TokeniserState
            public final void d(Tokeniser tokeniser, CharacterReader characterReader) {
                char consume = characterReader.consume();
                AnonymousClass40 anonymousClass40 = TokeniserState.R;
                if (consume != 0) {
                    if (consume != ' ') {
                        if (consume != '\"') {
                            if (consume != '`') {
                                AnonymousClass1 anonymousClass1 = TokeniserState.f22607c;
                                if (consume != 65535) {
                                    if (consume != '\t' && consume != '\n' && consume != '\f' && consume != '\r') {
                                        if (consume != '&') {
                                            if (consume != '\'') {
                                                switch (consume) {
                                                    case '<':
                                                    case '=':
                                                        break;
                                                    case '>':
                                                        tokeniser.m(this);
                                                        tokeniser.k();
                                                        tokeniser.o(anonymousClass1);
                                                        return;
                                                    default:
                                                        characterReader.G();
                                                        tokeniser.o(anonymousClass40);
                                                        return;
                                                }
                                            } else {
                                                tokeniser.o(TokeniserState.Q);
                                                return;
                                            }
                                        } else {
                                            characterReader.G();
                                            tokeniser.o(anonymousClass40);
                                            return;
                                        }
                                    } else {
                                        return;
                                    }
                                } else {
                                    tokeniser.l(this);
                                    tokeniser.k();
                                    tokeniser.o(anonymousClass1);
                                    return;
                                }
                            }
                            tokeniser.m(this);
                            tokeniser.j.g(consume, characterReader.pos() - 1, characterReader.pos());
                            tokeniser.o(anonymousClass40);
                            return;
                        }
                        tokeniser.o(TokeniserState.P);
                        return;
                    }
                    return;
                }
                tokeniser.m(this);
                tokeniser.j.g((char) 65533, characterReader.pos() - 1, characterReader.pos());
                tokeniser.o(anonymousClass40);
            }
        };
        O = r36;
        ?? r37 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.38
            @Override // org.jsoup.parser.TokeniserState
            public final void d(Tokeniser tokeniser, CharacterReader characterReader) {
                int pos = characterReader.pos();
                String f2 = characterReader.f(new c(false));
                if (f2.length() > 0) {
                    Token.Tag tag = tokeniser.j;
                    int pos2 = characterReader.pos();
                    tag.i.b(f2);
                    tag.j(pos, pos2);
                } else {
                    tokeniser.j.j = true;
                }
                int pos3 = characterReader.pos();
                char consume = characterReader.consume();
                if (consume != 0) {
                    if (consume != '\"') {
                        if (consume != '&') {
                            if (consume != 65535) {
                                tokeniser.j.g(consume, pos3, characterReader.pos());
                                return;
                            } else {
                                tokeniser.l(this);
                                tokeniser.o(TokeniserState.f22607c);
                                return;
                            }
                        }
                        int[] c2 = tokeniser.c(Character.valueOf(Typography.quote), true);
                        if (c2 != null) {
                            tokeniser.j.h(c2, pos3, characterReader.pos());
                            return;
                        } else {
                            tokeniser.j.g(Typography.amp, pos3, characterReader.pos());
                            return;
                        }
                    }
                    tokeniser.o(TokeniserState.S);
                    return;
                }
                tokeniser.m(this);
                tokeniser.j.g((char) 65533, pos3, characterReader.pos());
            }
        };
        P = r37;
        ?? r38 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.39
            @Override // org.jsoup.parser.TokeniserState
            public final void d(Tokeniser tokeniser, CharacterReader characterReader) {
                int pos = characterReader.pos();
                String f2 = characterReader.f(new c(true));
                if (f2.length() > 0) {
                    Token.Tag tag = tokeniser.j;
                    int pos2 = characterReader.pos();
                    tag.i.b(f2);
                    tag.j(pos, pos2);
                } else {
                    tokeniser.j.j = true;
                }
                int pos3 = characterReader.pos();
                char consume = characterReader.consume();
                if (consume != 0) {
                    if (consume != 65535) {
                        if (consume != '&') {
                            if (consume != '\'') {
                                tokeniser.j.g(consume, pos3, characterReader.pos());
                                return;
                            } else {
                                tokeniser.o(TokeniserState.S);
                                return;
                            }
                        }
                        int[] c2 = tokeniser.c('\'', true);
                        if (c2 != null) {
                            tokeniser.j.h(c2, pos3, characterReader.pos());
                            return;
                        } else {
                            tokeniser.j.g(Typography.amp, pos3, characterReader.pos());
                            return;
                        }
                    }
                    tokeniser.l(this);
                    tokeniser.o(TokeniserState.f22607c);
                    return;
                }
                tokeniser.m(this);
                tokeniser.j.g((char) 65533, pos3, characterReader.pos());
            }
        };
        Q = r38;
        ?? r39 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.40
            @Override // org.jsoup.parser.TokeniserState
            public final void d(Tokeniser tokeniser, CharacterReader characterReader) {
                int pos = characterReader.pos();
                String i2 = characterReader.i(TokeniserState.v0);
                if (i2.length() > 0) {
                    Token.Tag tag = tokeniser.j;
                    int pos2 = characterReader.pos();
                    tag.i.b(i2);
                    tag.j(pos, pos2);
                }
                int pos3 = characterReader.pos();
                char consume = characterReader.consume();
                if (consume != 0) {
                    if (consume != ' ') {
                        if (consume != '\"' && consume != '`') {
                            AnonymousClass1 anonymousClass1 = TokeniserState.f22607c;
                            if (consume != 65535) {
                                if (consume != '\t' && consume != '\n' && consume != '\f' && consume != '\r') {
                                    if (consume != '&') {
                                        if (consume != '\'') {
                                            switch (consume) {
                                                case '<':
                                                case '=':
                                                    break;
                                                case '>':
                                                    tokeniser.k();
                                                    tokeniser.o(anonymousClass1);
                                                    return;
                                                default:
                                                    tokeniser.j.g(consume, pos3, characterReader.pos());
                                                    return;
                                            }
                                        }
                                    } else {
                                        int[] c2 = tokeniser.c(Character.valueOf(Typography.greater), true);
                                        if (c2 != null) {
                                            tokeniser.j.h(c2, pos3, characterReader.pos());
                                            return;
                                        } else {
                                            tokeniser.j.g(Typography.amp, pos3, characterReader.pos());
                                            return;
                                        }
                                    }
                                }
                            } else {
                                tokeniser.l(this);
                                tokeniser.o(anonymousClass1);
                                return;
                            }
                        }
                        tokeniser.m(this);
                        tokeniser.j.g(consume, pos3, characterReader.pos());
                        return;
                    }
                    tokeniser.o(TokeniserState.L);
                    return;
                }
                tokeniser.m(this);
                tokeniser.j.g((char) 65533, pos3, characterReader.pos());
            }
        };
        R = r39;
        ?? r40 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.41
            @Override // org.jsoup.parser.TokeniserState
            public final void d(Tokeniser tokeniser, CharacterReader characterReader) {
                char consume = characterReader.consume();
                AnonymousClass34 anonymousClass34 = TokeniserState.L;
                if (consume != '\t' && consume != '\n' && consume != '\f' && consume != '\r' && consume != ' ') {
                    if (consume != '/') {
                        AnonymousClass1 anonymousClass1 = TokeniserState.f22607c;
                        if (consume != 65535) {
                            if (consume != '>') {
                                if (consume == '?' && (tokeniser.j instanceof Token.XmlDecl)) {
                                    return;
                                }
                                characterReader.G();
                                tokeniser.m(this);
                                tokeniser.o(anonymousClass34);
                                return;
                            }
                            tokeniser.k();
                            tokeniser.o(anonymousClass1);
                            return;
                        }
                        tokeniser.l(this);
                        tokeniser.o(anonymousClass1);
                        return;
                    }
                    tokeniser.o(TokeniserState.T);
                    return;
                }
                tokeniser.o(anonymousClass34);
            }
        };
        S = r40;
        ?? r41 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.42
            @Override // org.jsoup.parser.TokeniserState
            public final void d(Tokeniser tokeniser, CharacterReader characterReader) {
                char consume = characterReader.consume();
                AnonymousClass1 anonymousClass1 = TokeniserState.f22607c;
                if (consume != '>') {
                    if (consume != 65535) {
                        characterReader.G();
                        tokeniser.m(this);
                        tokeniser.o(TokeniserState.L);
                        return;
                    } else {
                        tokeniser.l(this);
                        tokeniser.o(anonymousClass1);
                        return;
                    }
                }
                tokeniser.j.f = true;
                tokeniser.k();
                tokeniser.o(anonymousClass1);
            }
        };
        T = r41;
        ?? r42 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.43
            @Override // org.jsoup.parser.TokeniserState
            public final void d(Tokeniser tokeniser, CharacterReader characterReader) {
                Token.Comment comment = tokeniser.m;
                comment.d.b(characterReader.consumeTo(Typography.greater));
                char current = characterReader.current();
                if (current != '>' && current != 65535) {
                    return;
                }
                characterReader.consume();
                tokeniser.i();
                tokeniser.o(TokeniserState.f22607c);
            }
        };
        U = r42;
        ?? r43 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.44
            @Override // org.jsoup.parser.TokeniserState
            public final void d(Tokeniser tokeniser, CharacterReader characterReader) {
                if (characterReader.m("--")) {
                    tokeniser.m.f();
                    tokeniser.o(TokeniserState.X);
                    return;
                }
                if (characterReader.n("DOCTYPE")) {
                    tokeniser.o(TokeniserState.d0);
                    return;
                }
                if (characterReader.m("[CDATA[")) {
                    tokeniser.e();
                    tokeniser.o(TokeniserState.t0);
                    return;
                }
                if (tokeniser.g == Document.OutputSettings.Syntax.xml && characterReader.v()) {
                    Token.XmlDecl xmlDecl = tokeniser.n;
                    xmlDecl.f();
                    xmlDecl.q = true;
                    tokeniser.j = xmlDecl;
                    tokeniser.o(TokeniserState.n);
                    return;
                }
                tokeniser.m(this);
                tokeniser.m.f();
                tokeniser.o(TokeniserState.U);
            }
        };
        V = r43;
        ?? r44 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.45
            @Override // org.jsoup.parser.TokeniserState
            public final void d(Tokeniser tokeniser, CharacterReader characterReader) {
                if (characterReader.v()) {
                    Token.XmlDecl xmlDecl = tokeniser.n;
                    xmlDecl.f();
                    xmlDecl.q = false;
                    tokeniser.j = xmlDecl;
                    tokeniser.o(TokeniserState.n);
                    return;
                }
                tokeniser.m(this);
                Token.Comment comment = tokeniser.m;
                comment.f();
                comment.g('?');
                tokeniser.o(TokeniserState.U);
            }
        };
        W = r44;
        ?? r45 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.46
            @Override // org.jsoup.parser.TokeniserState
            public final void d(Tokeniser tokeniser, CharacterReader characterReader) {
                char consume = characterReader.consume();
                AnonymousClass48 anonymousClass48 = TokeniserState.Z;
                if (consume != 0) {
                    if (consume != '-') {
                        AnonymousClass1 anonymousClass1 = TokeniserState.f22607c;
                        if (consume != '>') {
                            if (consume != 65535) {
                                characterReader.G();
                                tokeniser.o(anonymousClass48);
                                return;
                            } else {
                                tokeniser.l(this);
                                tokeniser.i();
                                tokeniser.o(anonymousClass1);
                                return;
                            }
                        }
                        tokeniser.m(this);
                        tokeniser.i();
                        tokeniser.o(anonymousClass1);
                        return;
                    }
                    tokeniser.o(TokeniserState.Y);
                    return;
                }
                tokeniser.m(this);
                tokeniser.m.g((char) 65533);
                tokeniser.o(anonymousClass48);
            }
        };
        X = r45;
        ?? r46 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.47
            @Override // org.jsoup.parser.TokeniserState
            public final void d(Tokeniser tokeniser, CharacterReader characterReader) {
                char consume = characterReader.consume();
                AnonymousClass48 anonymousClass48 = TokeniserState.Z;
                if (consume != 0) {
                    if (consume != '-') {
                        AnonymousClass1 anonymousClass1 = TokeniserState.f22607c;
                        if (consume != '>') {
                            if (consume != 65535) {
                                tokeniser.m.g(consume);
                                tokeniser.o(anonymousClass48);
                                return;
                            } else {
                                tokeniser.l(this);
                                tokeniser.i();
                                tokeniser.o(anonymousClass1);
                                return;
                            }
                        }
                        tokeniser.m(this);
                        tokeniser.i();
                        tokeniser.o(anonymousClass1);
                        return;
                    }
                    tokeniser.o(TokeniserState.b0);
                    return;
                }
                tokeniser.m(this);
                tokeniser.m.g((char) 65533);
                tokeniser.o(anonymousClass48);
            }
        };
        Y = r46;
        ?? r47 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.48
            @Override // org.jsoup.parser.TokeniserState
            public final void d(Tokeniser tokeniser, CharacterReader characterReader) {
                char current = characterReader.current();
                if (current != 0) {
                    if (current != '-') {
                        if (current != 65535) {
                            Token.Comment comment = tokeniser.m;
                            comment.d.b(characterReader.consumeToAny('-', 0));
                            return;
                        } else {
                            tokeniser.l(this);
                            tokeniser.i();
                            tokeniser.o(TokeniserState.f22607c);
                            return;
                        }
                    }
                    tokeniser.a(TokeniserState.a0);
                    return;
                }
                tokeniser.m(this);
                characterReader.advance();
                tokeniser.m.g((char) 65533);
            }
        };
        Z = r47;
        ?? r48 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.49
            @Override // org.jsoup.parser.TokeniserState
            public final void d(Tokeniser tokeniser, CharacterReader characterReader) {
                char consume = characterReader.consume();
                AnonymousClass48 anonymousClass48 = TokeniserState.Z;
                if (consume != 0) {
                    if (consume != '-') {
                        if (consume != 65535) {
                            Token.Comment comment = tokeniser.m;
                            comment.d.a('-');
                            comment.g(consume);
                            tokeniser.o(anonymousClass48);
                            return;
                        }
                        tokeniser.l(this);
                        tokeniser.i();
                        tokeniser.o(TokeniserState.f22607c);
                        return;
                    }
                    tokeniser.o(TokeniserState.b0);
                    return;
                }
                tokeniser.m(this);
                Token.Comment comment2 = tokeniser.m;
                comment2.d.a('-');
                comment2.g((char) 65533);
                tokeniser.o(anonymousClass48);
            }
        };
        a0 = r48;
        ?? r49 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.50
            @Override // org.jsoup.parser.TokeniserState
            public final void d(Tokeniser tokeniser, CharacterReader characterReader) {
                char consume = characterReader.consume();
                AnonymousClass48 anonymousClass48 = TokeniserState.Z;
                if (consume != 0) {
                    if (consume != '!') {
                        if (consume != '-') {
                            AnonymousClass1 anonymousClass1 = TokeniserState.f22607c;
                            if (consume != '>') {
                                if (consume != 65535) {
                                    Token.Comment comment = tokeniser.m;
                                    comment.d.b("--");
                                    comment.g(consume);
                                    tokeniser.o(anonymousClass48);
                                    return;
                                }
                                tokeniser.l(this);
                                tokeniser.i();
                                tokeniser.o(anonymousClass1);
                                return;
                            }
                            tokeniser.i();
                            tokeniser.o(anonymousClass1);
                            return;
                        }
                        tokeniser.m.g('-');
                        return;
                    }
                    tokeniser.o(TokeniserState.c0);
                    return;
                }
                tokeniser.m(this);
                Token.Comment comment2 = tokeniser.m;
                comment2.d.b("--");
                comment2.g((char) 65533);
                tokeniser.o(anonymousClass48);
            }
        };
        b0 = r49;
        ?? r50 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.51
            @Override // org.jsoup.parser.TokeniserState
            public final void d(Tokeniser tokeniser, CharacterReader characterReader) {
                char consume = characterReader.consume();
                AnonymousClass48 anonymousClass48 = TokeniserState.Z;
                if (consume != 0) {
                    if (consume != '-') {
                        AnonymousClass1 anonymousClass1 = TokeniserState.f22607c;
                        if (consume != '>') {
                            if (consume != 65535) {
                                Token.Comment comment = tokeniser.m;
                                comment.d.b("--!");
                                comment.g(consume);
                                tokeniser.o(anonymousClass48);
                                return;
                            }
                            tokeniser.l(this);
                            tokeniser.i();
                            tokeniser.o(anonymousClass1);
                            return;
                        }
                        tokeniser.i();
                        tokeniser.o(anonymousClass1);
                        return;
                    }
                    tokeniser.m.d.b("--!");
                    tokeniser.o(TokeniserState.a0);
                    return;
                }
                tokeniser.m(this);
                Token.Comment comment2 = tokeniser.m;
                comment2.d.b("--!");
                comment2.g((char) 65533);
                tokeniser.o(anonymousClass48);
            }
        };
        c0 = r50;
        ?? r51 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.52
            @Override // org.jsoup.parser.TokeniserState
            public final void d(Tokeniser tokeniser, CharacterReader characterReader) {
                char consume = characterReader.consume();
                AnonymousClass53 anonymousClass53 = TokeniserState.e0;
                if (consume != '\t' && consume != '\n' && consume != '\f' && consume != '\r' && consume != ' ') {
                    if (consume != '>') {
                        if (consume != 65535) {
                            tokeniser.m(this);
                            tokeniser.o(anonymousClass53);
                            return;
                        }
                        tokeniser.l(this);
                    }
                    tokeniser.m(this);
                    Token.Doctype doctype = tokeniser.l;
                    doctype.f();
                    doctype.h = true;
                    tokeniser.j();
                    tokeniser.o(TokeniserState.f22607c);
                    return;
                }
                tokeniser.o(anonymousClass53);
            }
        };
        d0 = r51;
        ?? r52 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.53
            @Override // org.jsoup.parser.TokeniserState
            public final void d(Tokeniser tokeniser, CharacterReader characterReader) {
                boolean v2 = characterReader.v();
                AnonymousClass54 anonymousClass54 = TokeniserState.f0;
                if (v2) {
                    tokeniser.l.f();
                    tokeniser.o(anonymousClass54);
                    return;
                }
                char consume = characterReader.consume();
                if (consume != 0) {
                    if (consume != ' ') {
                        if (consume != 65535) {
                            if (consume != '\t' && consume != '\n' && consume != '\f' && consume != '\r') {
                                tokeniser.l.f();
                                tokeniser.l.d.a(consume);
                                tokeniser.o(anonymousClass54);
                                return;
                            }
                            return;
                        }
                        tokeniser.l(this);
                        Token.Doctype doctype = tokeniser.l;
                        doctype.f();
                        doctype.h = true;
                        tokeniser.j();
                        tokeniser.o(TokeniserState.f22607c);
                        return;
                    }
                    return;
                }
                tokeniser.m(this);
                Token.Doctype doctype2 = tokeniser.l;
                doctype2.f();
                doctype2.d.a((char) 65533);
                tokeniser.o(anonymousClass54);
            }
        };
        e0 = r52;
        ?? r53 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.54
            @Override // org.jsoup.parser.TokeniserState
            public final void d(Tokeniser tokeniser, CharacterReader characterReader) {
                if (characterReader.v()) {
                    tokeniser.l.d.b(characterReader.e());
                    return;
                }
                char consume = characterReader.consume();
                if (consume != 0) {
                    if (consume != ' ') {
                        AnonymousClass1 anonymousClass1 = TokeniserState.f22607c;
                        if (consume != '>') {
                            if (consume != 65535) {
                                if (consume != '\t' && consume != '\n' && consume != '\f' && consume != '\r') {
                                    tokeniser.l.d.a(consume);
                                    return;
                                }
                            } else {
                                tokeniser.l(this);
                                tokeniser.l.h = true;
                                tokeniser.j();
                                tokeniser.o(anonymousClass1);
                                return;
                            }
                        } else {
                            tokeniser.j();
                            tokeniser.o(anonymousClass1);
                            return;
                        }
                    }
                    tokeniser.o(TokeniserState.g0);
                    return;
                }
                tokeniser.m(this);
                tokeniser.l.d.a((char) 65533);
            }
        };
        f0 = r53;
        ?? r54 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.55
            @Override // org.jsoup.parser.TokeniserState
            public final void d(Tokeniser tokeniser, CharacterReader characterReader) {
                boolean isEmpty = characterReader.isEmpty();
                AnonymousClass1 anonymousClass1 = TokeniserState.f22607c;
                if (isEmpty) {
                    tokeniser.l(this);
                    tokeniser.l.h = true;
                    tokeniser.j();
                    tokeniser.o(anonymousClass1);
                    return;
                }
                if (characterReader.u('\t', '\n', '\r', '\f', ' ')) {
                    characterReader.advance();
                    return;
                }
                if (characterReader.o(Typography.greater)) {
                    tokeniser.j();
                    tokeniser.a(anonymousClass1);
                    return;
                }
                if (characterReader.n(DocumentType.PUBLIC_KEY)) {
                    tokeniser.l.e = DocumentType.PUBLIC_KEY;
                    tokeniser.o(TokeniserState.h0);
                } else if (characterReader.n(DocumentType.SYSTEM_KEY)) {
                    tokeniser.l.e = DocumentType.SYSTEM_KEY;
                    tokeniser.o(TokeniserState.n0);
                } else {
                    tokeniser.m(this);
                    tokeniser.l.h = true;
                    tokeniser.a(TokeniserState.s0);
                }
            }
        };
        g0 = r54;
        ?? r55 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.56
            @Override // org.jsoup.parser.TokeniserState
            public final void d(Tokeniser tokeniser, CharacterReader characterReader) {
                char consume = characterReader.consume();
                if (consume != '\t' && consume != '\n' && consume != '\f' && consume != '\r' && consume != ' ') {
                    if (consume != '\"') {
                        if (consume != '\'') {
                            AnonymousClass1 anonymousClass1 = TokeniserState.f22607c;
                            if (consume != '>') {
                                if (consume != 65535) {
                                    tokeniser.m(this);
                                    tokeniser.l.h = true;
                                    tokeniser.o(TokeniserState.s0);
                                    return;
                                } else {
                                    tokeniser.l(this);
                                    tokeniser.l.h = true;
                                    tokeniser.j();
                                    tokeniser.o(anonymousClass1);
                                    return;
                                }
                            }
                            tokeniser.m(this);
                            tokeniser.l.h = true;
                            tokeniser.j();
                            tokeniser.o(anonymousClass1);
                            return;
                        }
                        tokeniser.m(this);
                        tokeniser.o(TokeniserState.k0);
                        return;
                    }
                    tokeniser.m(this);
                    tokeniser.o(TokeniserState.j0);
                    return;
                }
                tokeniser.o(TokeniserState.i0);
            }
        };
        h0 = r55;
        ?? r56 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.57
            @Override // org.jsoup.parser.TokeniserState
            public final void d(Tokeniser tokeniser, CharacterReader characterReader) {
                char consume = characterReader.consume();
                if (consume != '\t' && consume != '\n' && consume != '\f' && consume != '\r' && consume != ' ') {
                    if (consume != '\"') {
                        if (consume != '\'') {
                            AnonymousClass1 anonymousClass1 = TokeniserState.f22607c;
                            if (consume != '>') {
                                if (consume != 65535) {
                                    tokeniser.m(this);
                                    tokeniser.l.h = true;
                                    tokeniser.o(TokeniserState.s0);
                                    return;
                                } else {
                                    tokeniser.l(this);
                                    tokeniser.l.h = true;
                                    tokeniser.j();
                                    tokeniser.o(anonymousClass1);
                                    return;
                                }
                            }
                            tokeniser.m(this);
                            tokeniser.l.h = true;
                            tokeniser.j();
                            tokeniser.o(anonymousClass1);
                            return;
                        }
                        tokeniser.o(TokeniserState.k0);
                        return;
                    }
                    tokeniser.o(TokeniserState.j0);
                }
            }
        };
        i0 = r56;
        ?? r57 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.58
            @Override // org.jsoup.parser.TokeniserState
            public final void d(Tokeniser tokeniser, CharacterReader characterReader) {
                char consume = characterReader.consume();
                if (consume != 0) {
                    if (consume != '\"') {
                        AnonymousClass1 anonymousClass1 = TokeniserState.f22607c;
                        if (consume != '>') {
                            if (consume != 65535) {
                                tokeniser.l.f.a(consume);
                                return;
                            }
                            tokeniser.l(this);
                            tokeniser.l.h = true;
                            tokeniser.j();
                            tokeniser.o(anonymousClass1);
                            return;
                        }
                        tokeniser.m(this);
                        tokeniser.l.h = true;
                        tokeniser.j();
                        tokeniser.o(anonymousClass1);
                        return;
                    }
                    tokeniser.o(TokeniserState.l0);
                    return;
                }
                tokeniser.m(this);
                tokeniser.l.f.a((char) 65533);
            }
        };
        j0 = r57;
        ?? r58 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.59
            @Override // org.jsoup.parser.TokeniserState
            public final void d(Tokeniser tokeniser, CharacterReader characterReader) {
                char consume = characterReader.consume();
                if (consume != 0) {
                    if (consume != '\'') {
                        AnonymousClass1 anonymousClass1 = TokeniserState.f22607c;
                        if (consume != '>') {
                            if (consume != 65535) {
                                tokeniser.l.f.a(consume);
                                return;
                            }
                            tokeniser.l(this);
                            tokeniser.l.h = true;
                            tokeniser.j();
                            tokeniser.o(anonymousClass1);
                            return;
                        }
                        tokeniser.m(this);
                        tokeniser.l.h = true;
                        tokeniser.j();
                        tokeniser.o(anonymousClass1);
                        return;
                    }
                    tokeniser.o(TokeniserState.l0);
                    return;
                }
                tokeniser.m(this);
                tokeniser.l.f.a((char) 65533);
            }
        };
        k0 = r58;
        ?? r59 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.60
            @Override // org.jsoup.parser.TokeniserState
            public final void d(Tokeniser tokeniser, CharacterReader characterReader) {
                char consume = characterReader.consume();
                if (consume != '\t' && consume != '\n' && consume != '\f' && consume != '\r' && consume != ' ') {
                    if (consume != '\"') {
                        if (consume != '\'') {
                            AnonymousClass1 anonymousClass1 = TokeniserState.f22607c;
                            if (consume != '>') {
                                if (consume != 65535) {
                                    tokeniser.m(this);
                                    tokeniser.l.h = true;
                                    tokeniser.o(TokeniserState.s0);
                                    return;
                                } else {
                                    tokeniser.l(this);
                                    tokeniser.l.h = true;
                                    tokeniser.j();
                                    tokeniser.o(anonymousClass1);
                                    return;
                                }
                            }
                            tokeniser.j();
                            tokeniser.o(anonymousClass1);
                            return;
                        }
                        tokeniser.m(this);
                        tokeniser.o(TokeniserState.q0);
                        return;
                    }
                    tokeniser.m(this);
                    tokeniser.o(TokeniserState.p0);
                    return;
                }
                tokeniser.o(TokeniserState.m0);
            }
        };
        l0 = r59;
        ?? r60 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.61
            @Override // org.jsoup.parser.TokeniserState
            public final void d(Tokeniser tokeniser, CharacterReader characterReader) {
                char consume = characterReader.consume();
                if (consume != '\t' && consume != '\n' && consume != '\f' && consume != '\r' && consume != ' ') {
                    if (consume != '\"') {
                        if (consume != '\'') {
                            AnonymousClass1 anonymousClass1 = TokeniserState.f22607c;
                            if (consume != '>') {
                                if (consume != 65535) {
                                    tokeniser.m(this);
                                    tokeniser.l.h = true;
                                    tokeniser.o(TokeniserState.s0);
                                    return;
                                } else {
                                    tokeniser.l(this);
                                    tokeniser.l.h = true;
                                    tokeniser.j();
                                    tokeniser.o(anonymousClass1);
                                    return;
                                }
                            }
                            tokeniser.j();
                            tokeniser.o(anonymousClass1);
                            return;
                        }
                        tokeniser.m(this);
                        tokeniser.o(TokeniserState.q0);
                        return;
                    }
                    tokeniser.m(this);
                    tokeniser.o(TokeniserState.p0);
                }
            }
        };
        m0 = r60;
        ?? r61 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.62
            @Override // org.jsoup.parser.TokeniserState
            public final void d(Tokeniser tokeniser, CharacterReader characterReader) {
                char consume = characterReader.consume();
                if (consume != '\t' && consume != '\n' && consume != '\f' && consume != '\r' && consume != ' ') {
                    if (consume != '\"') {
                        if (consume != '\'') {
                            AnonymousClass1 anonymousClass1 = TokeniserState.f22607c;
                            if (consume != '>') {
                                if (consume != 65535) {
                                    tokeniser.m(this);
                                    tokeniser.l.h = true;
                                    tokeniser.j();
                                    return;
                                } else {
                                    tokeniser.l(this);
                                    tokeniser.l.h = true;
                                    tokeniser.j();
                                    tokeniser.o(anonymousClass1);
                                    return;
                                }
                            }
                            tokeniser.m(this);
                            tokeniser.l.h = true;
                            tokeniser.j();
                            tokeniser.o(anonymousClass1);
                            return;
                        }
                        tokeniser.m(this);
                        tokeniser.o(TokeniserState.q0);
                        return;
                    }
                    tokeniser.m(this);
                    tokeniser.o(TokeniserState.p0);
                    return;
                }
                tokeniser.o(TokeniserState.o0);
            }
        };
        n0 = r61;
        ?? r62 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.63
            @Override // org.jsoup.parser.TokeniserState
            public final void d(Tokeniser tokeniser, CharacterReader characterReader) {
                char consume = characterReader.consume();
                if (consume != '\t' && consume != '\n' && consume != '\f' && consume != '\r' && consume != ' ') {
                    if (consume != '\"') {
                        if (consume != '\'') {
                            AnonymousClass1 anonymousClass1 = TokeniserState.f22607c;
                            if (consume != '>') {
                                if (consume != 65535) {
                                    tokeniser.m(this);
                                    tokeniser.l.h = true;
                                    tokeniser.o(TokeniserState.s0);
                                    return;
                                } else {
                                    tokeniser.l(this);
                                    tokeniser.l.h = true;
                                    tokeniser.j();
                                    tokeniser.o(anonymousClass1);
                                    return;
                                }
                            }
                            tokeniser.m(this);
                            tokeniser.l.h = true;
                            tokeniser.j();
                            tokeniser.o(anonymousClass1);
                            return;
                        }
                        tokeniser.o(TokeniserState.q0);
                        return;
                    }
                    tokeniser.o(TokeniserState.p0);
                }
            }
        };
        o0 = r62;
        ?? r63 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.64
            @Override // org.jsoup.parser.TokeniserState
            public final void d(Tokeniser tokeniser, CharacterReader characterReader) {
                char consume = characterReader.consume();
                if (consume != 0) {
                    if (consume != '\"') {
                        AnonymousClass1 anonymousClass1 = TokeniserState.f22607c;
                        if (consume != '>') {
                            if (consume != 65535) {
                                tokeniser.l.g.a(consume);
                                return;
                            }
                            tokeniser.l(this);
                            tokeniser.l.h = true;
                            tokeniser.j();
                            tokeniser.o(anonymousClass1);
                            return;
                        }
                        tokeniser.m(this);
                        tokeniser.l.h = true;
                        tokeniser.j();
                        tokeniser.o(anonymousClass1);
                        return;
                    }
                    tokeniser.o(TokeniserState.r0);
                    return;
                }
                tokeniser.m(this);
                tokeniser.l.g.a((char) 65533);
            }
        };
        p0 = r63;
        ?? r64 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.65
            @Override // org.jsoup.parser.TokeniserState
            public final void d(Tokeniser tokeniser, CharacterReader characterReader) {
                char consume = characterReader.consume();
                if (consume != 0) {
                    if (consume != '\'') {
                        AnonymousClass1 anonymousClass1 = TokeniserState.f22607c;
                        if (consume != '>') {
                            if (consume != 65535) {
                                tokeniser.l.g.a(consume);
                                return;
                            }
                            tokeniser.l(this);
                            tokeniser.l.h = true;
                            tokeniser.j();
                            tokeniser.o(anonymousClass1);
                            return;
                        }
                        tokeniser.m(this);
                        tokeniser.l.h = true;
                        tokeniser.j();
                        tokeniser.o(anonymousClass1);
                        return;
                    }
                    tokeniser.o(TokeniserState.r0);
                    return;
                }
                tokeniser.m(this);
                tokeniser.l.g.a((char) 65533);
            }
        };
        q0 = r64;
        ?? r65 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.66
            @Override // org.jsoup.parser.TokeniserState
            public final void d(Tokeniser tokeniser, CharacterReader characterReader) {
                char consume = characterReader.consume();
                if (consume != '\t' && consume != '\n' && consume != '\f' && consume != '\r' && consume != ' ') {
                    AnonymousClass1 anonymousClass1 = TokeniserState.f22607c;
                    if (consume != '>') {
                        if (consume != 65535) {
                            tokeniser.m(this);
                            tokeniser.o(TokeniserState.s0);
                            return;
                        } else {
                            tokeniser.l(this);
                            tokeniser.l.h = true;
                            tokeniser.j();
                            tokeniser.o(anonymousClass1);
                            return;
                        }
                    }
                    tokeniser.j();
                    tokeniser.o(anonymousClass1);
                }
            }
        };
        r0 = r65;
        ?? r66 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.67
            @Override // org.jsoup.parser.TokeniserState
            public final void d(Tokeniser tokeniser, CharacterReader characterReader) {
                char consume = characterReader.consume();
                AnonymousClass1 anonymousClass1 = TokeniserState.f22607c;
                if (consume != '>') {
                    if (consume != 65535) {
                        return;
                    }
                    tokeniser.j();
                    tokeniser.o(anonymousClass1);
                    return;
                }
                tokeniser.j();
                tokeniser.o(anonymousClass1);
            }
        };
        s0 = r66;
        ?? r67 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.68
            @Override // org.jsoup.parser.TokeniserState
            public final void d(Tokeniser tokeniser, CharacterReader characterReader) {
                tokeniser.f.b(characterReader.consumeTo("]]>"));
                if (!characterReader.m("]]>") && !characterReader.isEmpty()) {
                    return;
                }
                String e = tokeniser.f.e();
                Token.Character character = new Token.Character();
                TokenData tokenData = character.d;
                tokenData.d();
                tokenData.f22603a = e;
                tokeniser.h(character);
                tokeniser.o(TokeniserState.f22607c);
            }
        };
        t0 = r67;
        x0 = new TokeniserState[]{r02, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25, r26, r27, r28, r29, r30, r31, r32, r33, r34, r35, r36, r37, r38, r39, r40, r41, r42, r43, r44, r45, r46, r47, r48, r49, r50, r51, r52, r53, r54, r55, r56, r57, r58, r59, r60, r61, r62, r63, r64, r65, r66, r67};
        u0 = new char[]{'\t', '\n', '\f', '\r', ' ', Typography.quote, '\'', '/', Typography.less, '=', Typography.greater, '?'};
        v0 = new char[]{0, '\t', '\n', '\f', '\r', ' ', Typography.quote, Typography.amp, '\'', Typography.less, '=', Typography.greater, '`'};
        w0 = String.valueOf((char) 65533);
    }

    public static void a(Tokeniser tokeniser, CharacterReader characterReader, TokeniserState tokeniserState, TokeniserState tokeniserState2) {
        String str;
        char current = characterReader.current();
        if (current != 0) {
            if (current != '<') {
                if (current != 65535) {
                    characterReader.a();
                    int i2 = characterReader.h;
                    int i3 = characterReader.i;
                    char[] cArr = characterReader.g;
                    int i4 = i2;
                    while (i4 < i3) {
                        char c2 = cArr[i4];
                        if (c2 == '<' || c2 == 0) {
                            break;
                        } else {
                            i4++;
                        }
                    }
                    characterReader.h = i4;
                    if (i4 > i2) {
                        str = CharacterReader.b(characterReader.g, characterReader.f22585c, i2, i4 - i2);
                    } else {
                        str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                    }
                    tokeniser.g(str);
                    return;
                }
                tokeniser.h(new Token.EOF());
                return;
            }
            tokeniser.a(tokeniserState2);
            return;
        }
        tokeniser.m(tokeniserState);
        characterReader.advance();
        tokeniser.f((char) 65533);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v1, types: [org.jsoup.parser.CharacterReader$CharPredicate, java.lang.Object] */
    public static void b(Tokeniser tokeniser, CharacterReader characterReader, TokeniserState tokeniserState) {
        if (characterReader.v()) {
            String f2 = characterReader.f(new Object());
            tokeniser.j.i(f2);
            tokeniser.f.b(f2);
            return;
        }
        boolean n2 = tokeniser.n();
        TokenData tokenData = tokeniser.f;
        if (n2 && !characterReader.isEmpty()) {
            char consume = characterReader.consume();
            if (consume != '\t' && consume != '\n' && consume != '\f' && consume != '\r' && consume != ' ') {
                if (consume != '/') {
                    if (consume != '>') {
                        tokenData.a(consume);
                    } else {
                        tokeniser.k();
                        tokeniser.o(f22607c);
                        return;
                    }
                } else {
                    tokeniser.o(T);
                    return;
                }
            } else {
                tokeniser.o(L);
                return;
            }
        }
        tokeniser.g("</");
        tokeniser.g(tokenData.e());
        tokeniser.o(tokeniserState);
    }

    public static void c(Tokeniser tokeniser, CharacterReader characterReader, TokeniserState tokeniserState, TokeniserState tokeniserState2) {
        if (characterReader.v()) {
            String e = characterReader.e();
            tokeniser.f.b(e);
            tokeniser.g(e);
            return;
        }
        char consume = characterReader.consume();
        if (consume != '\t' && consume != '\n' && consume != '\f' && consume != '\r' && consume != ' ' && consume != '/' && consume != '>') {
            characterReader.G();
            tokeniser.o(tokeniserState2);
        } else {
            if (tokeniser.f.e().equals("script")) {
                tokeniser.o(tokeniserState);
            } else {
                tokeniser.o(tokeniserState2);
            }
            tokeniser.f(consume);
        }
    }

    public static TokeniserState valueOf(String str) {
        return (TokeniserState) Enum.valueOf(TokeniserState.class, str);
    }

    public static TokeniserState[] values() {
        return (TokeniserState[]) x0.clone();
    }

    public abstract void d(Tokeniser tokeniser, CharacterReader characterReader);
}
