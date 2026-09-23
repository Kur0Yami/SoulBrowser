package org.jsoup.parser;

import java.util.ArrayList;
import java.util.Iterator;
import org.jsoup.helper.Validate;
import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Attribute;
import org.jsoup.nodes.Attributes;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.DocumentType;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Range;
import org.jsoup.parser.Token;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes4.dex */
public abstract class HtmlTreeBuilderState {
    public static final AnonymousClass23 A;
    public static final AnonymousClass24 B;
    public static final String C;
    public static final /* synthetic */ HtmlTreeBuilderState[] D;

    /* renamed from: c, reason: collision with root package name */
    public static final AnonymousClass1 f22586c;
    public static final AnonymousClass2 f;
    public static final AnonymousClass3 g;
    public static final AnonymousClass4 h;
    public static final AnonymousClass5 i;
    public static final AnonymousClass6 j;
    public static final AnonymousClass7 k;
    public static final AnonymousClass8 l;
    public static final AnonymousClass9 m;
    public static final AnonymousClass10 n;
    public static final AnonymousClass11 o;
    public static final AnonymousClass12 p;
    public static final AnonymousClass13 q;
    public static final AnonymousClass14 r;
    public static final AnonymousClass15 s;
    public static final AnonymousClass16 t;
    public static final AnonymousClass17 u;
    public static final AnonymousClass18 v;
    public static final AnonymousClass19 w;
    public static final AnonymousClass20 x;
    public static final AnonymousClass21 y;
    public static final AnonymousClass22 z;

    /* renamed from: org.jsoup.parser.HtmlTreeBuilderState$16, reason: invalid class name */
    /* loaded from: classes4.dex */
    public enum AnonymousClass16 extends HtmlTreeBuilderState {
        public AnonymousClass16() {
            super("InSelect", 15);
        }

        @Override // org.jsoup.parser.HtmlTreeBuilderState
        public final boolean d(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            int i = AnonymousClass25.f22587a[token.f22600a.ordinal()];
            AnonymousClass4 anonymousClass4 = HtmlTreeBuilderState.h;
            switch (i) {
                case 1:
                    htmlTreeBuilder.M((Token.Comment) token);
                    return true;
                case 2:
                    htmlTreeBuilder.B(this);
                    return false;
                case 3:
                    Token.StartTag startTag = (Token.StartTag) token;
                    String m = startTag.m();
                    if (m.equals("html")) {
                        return HtmlTreeBuilderState.k.d(startTag, htmlTreeBuilder);
                    }
                    if (m.equals("option")) {
                        if (htmlTreeBuilder.c("option")) {
                            htmlTreeBuilder.n("option");
                        }
                        htmlTreeBuilder.N(startTag);
                    } else if (m.equals("optgroup")) {
                        if (htmlTreeBuilder.c("option")) {
                            htmlTreeBuilder.n("option");
                        }
                        if (htmlTreeBuilder.c("optgroup")) {
                            htmlTreeBuilder.n("optgroup");
                        }
                        htmlTreeBuilder.N(startTag);
                    } else {
                        if (m.equals("select")) {
                            htmlTreeBuilder.B(this);
                            return htmlTreeBuilder.n("select");
                        }
                        if (StringUtil.inSorted(m, Constants.E)) {
                            htmlTreeBuilder.B(this);
                            if (!htmlTreeBuilder.H("select")) {
                                return false;
                            }
                            do {
                                htmlTreeBuilder.V("select");
                                htmlTreeBuilder.b0();
                            } while (htmlTreeBuilder.H("select"));
                            return htmlTreeBuilder.m(startTag);
                        }
                        if (!m.equals("script") && !m.equals("template")) {
                            htmlTreeBuilder.B(this);
                            return false;
                        }
                        return anonymousClass4.d(token, htmlTreeBuilder);
                    }
                    return true;
                case 4:
                    String m2 = ((Token.EndTag) token).m();
                    m2.getClass();
                    char c2 = 65535;
                    switch (m2.hashCode()) {
                        case -1321546630:
                            if (m2.equals("template")) {
                                c2 = 0;
                                break;
                            }
                            break;
                        case -1010136971:
                            if (m2.equals("option")) {
                                c2 = 1;
                                break;
                            }
                            break;
                        case -906021636:
                            if (m2.equals("select")) {
                                c2 = 2;
                                break;
                            }
                            break;
                        case -80773204:
                            if (m2.equals("optgroup")) {
                                c2 = 3;
                                break;
                            }
                            break;
                    }
                    switch (c2) {
                        case 0:
                            return anonymousClass4.d(token, htmlTreeBuilder);
                        case 1:
                            if (htmlTreeBuilder.c("option")) {
                                htmlTreeBuilder.l();
                            } else {
                                htmlTreeBuilder.B(this);
                            }
                            return true;
                        case 2:
                            if (!htmlTreeBuilder.H(m2)) {
                                htmlTreeBuilder.B(this);
                                return false;
                            }
                            htmlTreeBuilder.V(m2);
                            htmlTreeBuilder.b0();
                            return true;
                        case 3:
                            if (htmlTreeBuilder.c("option") && htmlTreeBuilder.t(htmlTreeBuilder.b()) != null && htmlTreeBuilder.t(htmlTreeBuilder.b()).nameIs("optgroup")) {
                                htmlTreeBuilder.n("option");
                            }
                            if (htmlTreeBuilder.c("optgroup")) {
                                htmlTreeBuilder.l();
                            } else {
                                htmlTreeBuilder.B(this);
                            }
                            return true;
                        default:
                            htmlTreeBuilder.B(this);
                            return false;
                    }
                case 5:
                    Token.Character character = (Token.Character) token;
                    if (character.d.e().equals(HtmlTreeBuilderState.C)) {
                        htmlTreeBuilder.B(this);
                        return false;
                    }
                    htmlTreeBuilder.K(character);
                    return true;
                case 6:
                    if (!htmlTreeBuilder.c("html")) {
                        htmlTreeBuilder.B(this);
                    }
                    return true;
                default:
                    htmlTreeBuilder.B(this);
                    return false;
            }
        }
    }

    /* renamed from: org.jsoup.parser.HtmlTreeBuilderState$18, reason: invalid class name */
    /* loaded from: classes4.dex */
    public enum AnonymousClass18 extends HtmlTreeBuilderState {
        public AnonymousClass18() {
            super("InTemplate", 17);
        }

        @Override // org.jsoup.parser.HtmlTreeBuilderState
        public final boolean d(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            int i = AnonymousClass25.f22587a[token.f22600a.ordinal()];
            AnonymousClass7 anonymousClass7 = HtmlTreeBuilderState.k;
            AnonymousClass4 anonymousClass4 = HtmlTreeBuilderState.h;
            switch (i) {
                case 1:
                case 2:
                case 5:
                    anonymousClass7.d(token, htmlTreeBuilder);
                    return true;
                case 3:
                    String m = ((Token.StartTag) token).m();
                    if (StringUtil.inSorted(m, Constants.J)) {
                        anonymousClass4.d(token, htmlTreeBuilder);
                        return true;
                    }
                    if (StringUtil.inSorted(m, Constants.K)) {
                        htmlTreeBuilder.W();
                        AnonymousClass9 anonymousClass9 = HtmlTreeBuilderState.m;
                        htmlTreeBuilder.X(anonymousClass9);
                        htmlTreeBuilder.n = anonymousClass9;
                        return htmlTreeBuilder.m(token);
                    }
                    if (m.equals("col")) {
                        htmlTreeBuilder.W();
                        AnonymousClass12 anonymousClass12 = HtmlTreeBuilderState.p;
                        htmlTreeBuilder.X(anonymousClass12);
                        htmlTreeBuilder.n = anonymousClass12;
                        return htmlTreeBuilder.m(token);
                    }
                    if (m.equals("tr")) {
                        htmlTreeBuilder.W();
                        AnonymousClass13 anonymousClass13 = HtmlTreeBuilderState.q;
                        htmlTreeBuilder.X(anonymousClass13);
                        htmlTreeBuilder.n = anonymousClass13;
                        return htmlTreeBuilder.m(token);
                    }
                    if (!m.equals("td") && !m.equals("th")) {
                        htmlTreeBuilder.W();
                        htmlTreeBuilder.X(anonymousClass7);
                        htmlTreeBuilder.n = anonymousClass7;
                        return htmlTreeBuilder.m(token);
                    }
                    htmlTreeBuilder.W();
                    AnonymousClass14 anonymousClass14 = HtmlTreeBuilderState.r;
                    htmlTreeBuilder.X(anonymousClass14);
                    htmlTreeBuilder.n = anonymousClass14;
                    return htmlTreeBuilder.m(token);
                case 4:
                    if (((Token.EndTag) token).m().equals("template")) {
                        anonymousClass4.d(token, htmlTreeBuilder);
                        return true;
                    }
                    htmlTreeBuilder.B(this);
                    return false;
                case 6:
                    if (htmlTreeBuilder.S("template")) {
                        htmlTreeBuilder.B(this);
                        htmlTreeBuilder.V("template");
                        htmlTreeBuilder.v();
                        htmlTreeBuilder.W();
                        htmlTreeBuilder.b0();
                        if (htmlTreeBuilder.n != HtmlTreeBuilderState.v && htmlTreeBuilder.u.size() < 12) {
                            return htmlTreeBuilder.m(token);
                        }
                    }
                    return true;
                default:
                    Validate.wtf("Unexpected state: " + token.f22600a);
                    return true;
            }
        }
    }

    /* renamed from: org.jsoup.parser.HtmlTreeBuilderState$25, reason: invalid class name */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class AnonymousClass25 {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f22587a;

        static {
            int[] iArr = new int[Token.TokenType.values().length];
            f22587a = iArr;
            try {
                iArr[Token.TokenType.Comment.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f22587a[Token.TokenType.Doctype.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f22587a[Token.TokenType.StartTag.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f22587a[Token.TokenType.EndTag.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f22587a[Token.TokenType.Character.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f22587a[Token.TokenType.EOF.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* renamed from: org.jsoup.parser.HtmlTreeBuilderState$4, reason: invalid class name */
    /* loaded from: classes4.dex */
    public enum AnonymousClass4 extends HtmlTreeBuilderState {
        public AnonymousClass4() {
            super("InHead", 3);
        }

        @Override // org.jsoup.parser.HtmlTreeBuilderState
        public final boolean d(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (HtmlTreeBuilderState.a(token)) {
                htmlTreeBuilder.K((Token.Character) token);
                return true;
            }
            int i = AnonymousClass25.f22587a[token.f22600a.ordinal()];
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i != 4) {
                            htmlTreeBuilder.n("head");
                            return htmlTreeBuilder.m(token);
                        }
                        String m = ((Token.EndTag) token).m();
                        if (m.equals("head")) {
                            htmlTreeBuilder.l();
                            htmlTreeBuilder.n = HtmlTreeBuilderState.j;
                            return true;
                        }
                        if (StringUtil.inSorted(m, Constants.f22589c)) {
                            htmlTreeBuilder.n("head");
                            return htmlTreeBuilder.m(token);
                        }
                        if (m.equals("template")) {
                            if (!htmlTreeBuilder.S(m)) {
                                htmlTreeBuilder.B(this);
                                return true;
                            }
                            htmlTreeBuilder.D(true);
                            if (!htmlTreeBuilder.c(m)) {
                                htmlTreeBuilder.B(this);
                            }
                            htmlTreeBuilder.V(m);
                            htmlTreeBuilder.v();
                            htmlTreeBuilder.W();
                            htmlTreeBuilder.b0();
                            return true;
                        }
                        htmlTreeBuilder.B(this);
                        return false;
                    }
                    Token.StartTag startTag = (Token.StartTag) token;
                    String m2 = startTag.m();
                    if (m2.equals("html")) {
                        return HtmlTreeBuilderState.k.d(token, htmlTreeBuilder);
                    }
                    if (StringUtil.inSorted(m2, Constants.f22588a)) {
                        Element O = htmlTreeBuilder.O(startTag);
                        if (m2.equals("base") && O.hasAttr("href") && !htmlTreeBuilder.p) {
                            String absUrl = O.absUrl("href");
                            if (absUrl.length() != 0) {
                                htmlTreeBuilder.f = absUrl;
                                htmlTreeBuilder.p = true;
                                htmlTreeBuilder.d.setBaseUri(absUrl);
                            }
                        }
                        return true;
                    }
                    if (m2.equals("meta")) {
                        htmlTreeBuilder.O(startTag);
                        return true;
                    }
                    if (m2.equals("title")) {
                        HtmlTreeBuilderState.b(startTag, htmlTreeBuilder, htmlTreeBuilder.r(startTag).b());
                        return true;
                    }
                    if (StringUtil.inSorted(m2, Constants.b)) {
                        HtmlTreeBuilderState.b(startTag, htmlTreeBuilder, htmlTreeBuilder.r(startTag).b());
                        return true;
                    }
                    if (m2.equals("noscript")) {
                        htmlTreeBuilder.N(startTag);
                        htmlTreeBuilder.n = HtmlTreeBuilderState.i;
                        return true;
                    }
                    if (m2.equals("script")) {
                        htmlTreeBuilder.f22609c.o(TokeniserState.j);
                        htmlTreeBuilder.o = htmlTreeBuilder.n;
                        htmlTreeBuilder.n = HtmlTreeBuilderState.l;
                        htmlTreeBuilder.N(startTag);
                        return true;
                    }
                    if (m2.equals("head")) {
                        htmlTreeBuilder.B(this);
                        return false;
                    }
                    if (m2.equals("template")) {
                        htmlTreeBuilder.N(startTag);
                        htmlTreeBuilder.t.add(null);
                        htmlTreeBuilder.x = false;
                        AnonymousClass18 anonymousClass18 = HtmlTreeBuilderState.v;
                        htmlTreeBuilder.n = anonymousClass18;
                        htmlTreeBuilder.X(anonymousClass18);
                        return true;
                    }
                    htmlTreeBuilder.n("head");
                    return htmlTreeBuilder.m(token);
                }
                htmlTreeBuilder.B(this);
                return false;
            }
            htmlTreeBuilder.M((Token.Comment) token);
            return true;
        }
    }

    /* renamed from: org.jsoup.parser.HtmlTreeBuilderState$7, reason: invalid class name */
    /* loaded from: classes4.dex */
    public enum AnonymousClass7 extends HtmlTreeBuilderState {
        public AnonymousClass7() {
            super("InBody", 6);
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code restructure failed: missing block: B:100:0x035b, code lost:
        
            r31.t.add(r6, r1);
         */
        /* JADX WARN: Code restructure failed: missing block: B:109:0x0361, code lost:
        
            r31.t.add(r1);
         */
        /* JADX WARN: Code restructure failed: missing block: B:111:0x02a4, code lost:
        
            if (org.jsoup.parser.HtmlTreeBuilder.T(r31.t, r12) != false) goto L830;
         */
        /* JADX WARN: Code restructure failed: missing block: B:114:0x02b0, code lost:
        
            if (org.jsoup.parser.HtmlTreeBuilder.T(r31.e, r12) != false) goto L182;
         */
        /* JADX WARN: Code restructure failed: missing block: B:115:0x02b9, code lost:
        
            r16 = r1;
            r15 = new org.jsoup.nodes.Element(r31.q(r12.nodeName(), r12.normalName(), org.jsoup.parser.Parser.NamespaceHtml, org.jsoup.parser.ParseSettings.preserveCase), r31.f);
            r1 = r31.t;
            r10 = r1.lastIndexOf(r12);
         */
        /* JADX WARN: Code restructure failed: missing block: B:116:0x02d7, code lost:
        
            if (r10 == (-1)) goto L185;
         */
        /* JADX WARN: Code restructure failed: missing block: B:117:0x02d9, code lost:
        
            r17 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:118:0x02de, code lost:
        
            org.jsoup.helper.Validate.isTrue(r17);
            r1.set(r10, r15);
            r1 = r31.e;
            r10 = r1.lastIndexOf(r12);
         */
        /* JADX WARN: Code restructure failed: missing block: B:119:0x02ea, code lost:
        
            if (r10 == (-1)) goto L189;
         */
        /* JADX WARN: Code restructure failed: missing block: B:120:0x02ec, code lost:
        
            r12 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:121:0x02f1, code lost:
        
            org.jsoup.helper.Validate.isTrue(r12);
            r1.set(r10, r15);
         */
        /* JADX WARN: Code restructure failed: missing block: B:122:0x02f7, code lost:
        
            if (r13 != r7) goto L201;
         */
        /* JADX WARN: Code restructure failed: missing block: B:123:0x02f9, code lost:
        
            r1 = 0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:125:0x0301, code lost:
        
            if (r1 >= r31.t.size()) goto L840;
         */
        /* JADX WARN: Code restructure failed: missing block: B:127:0x0309, code lost:
        
            if (r15 != r31.t.get(r1)) goto L198;
         */
        /* JADX WARN: Code restructure failed: missing block: B:128:0x030c, code lost:
        
            r1 = r1 + 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:130:0x0310, code lost:
        
            r6 = r1 + 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:132:0x030f, code lost:
        
            r1 = -1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:133:0x0313, code lost:
        
            r15.appendChild(r13);
            r12 = r15;
            r13 = r12;
            r1 = r16;
         */
        /* JADX WARN: Code restructure failed: missing block: B:136:0x02ef, code lost:
        
            r12 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:137:0x02dc, code lost:
        
            r17 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:139:0x02b2, code lost:
        
            r31.B(r29);
            r31.Z(r12);
         */
        /* JADX WARN: Code restructure failed: missing block: B:141:0x02a6, code lost:
        
            r31.a0(r12);
         */
        /* JADX WARN: Code restructure failed: missing block: B:145:0x0285, code lost:
        
            r16 = r1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:146:0x031e, code lost:
        
            r31.B(r29);
         */
        /* JADX WARN: Code restructure failed: missing block: B:148:0x0279, code lost:
        
            r12 = r31.t(r12);
         */
        /* JADX WARN: Code restructure failed: missing block: B:150:0x0265, code lost:
        
            r6 = -1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:152:0x0249, code lost:
        
            r31.B(r29);
         */
        /* JADX WARN: Code restructure failed: missing block: B:154:0x024e, code lost:
        
            return true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:157:0x0235, code lost:
        
            if (r31.b() == r5) goto L842;
         */
        /* JADX WARN: Code restructure failed: missing block: B:158:0x0237, code lost:
        
            r31.l();
         */
        /* JADX WARN: Code restructure failed: missing block: B:160:0x023b, code lost:
        
            r31.l();
            r31.Z(r5);
         */
        /* JADX WARN: Code restructure failed: missing block: B:163:0x022e, code lost:
        
            r7 = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:62:0x0217, code lost:
        
            if (r6 != (-1)) goto L137;
         */
        /* JADX WARN: Code restructure failed: missing block: B:63:0x0219, code lost:
        
            r6 = r6 + 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:64:0x021f, code lost:
        
            if (r6 >= r4.size()) goto L825;
         */
        /* JADX WARN: Code restructure failed: missing block: B:65:0x0221, code lost:
        
            r7 = (org.jsoup.nodes.Element) r4.get(r6);
         */
        /* JADX WARN: Code restructure failed: missing block: B:66:0x022b, code lost:
        
            if (org.jsoup.parser.HtmlTreeBuilder.R(r7) == false) goto L826;
         */
        /* JADX WARN: Code restructure failed: missing block: B:68:0x022f, code lost:
        
            if (r7 != null) goto L148;
         */
        /* JADX WARN: Code restructure failed: missing block: B:69:0x0243, code lost:
        
            r4 = r31.t(r5);
         */
        /* JADX WARN: Code restructure failed: missing block: B:70:0x0247, code lost:
        
            if (r4 != null) goto L152;
         */
        /* JADX WARN: Code restructure failed: missing block: B:71:0x024f, code lost:
        
            r6 = 0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:73:0x0257, code lost:
        
            if (r6 >= r31.t.size()) goto L827;
         */
        /* JADX WARN: Code restructure failed: missing block: B:75:0x025f, code lost:
        
            if (r5 != r31.t.get(r6)) goto L158;
         */
        /* JADX WARN: Code restructure failed: missing block: B:76:0x0262, code lost:
        
            r6 = r6 + 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:78:0x0266, code lost:
        
            r12 = r7;
            r13 = r12;
            r11 = 0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:79:0x026a, code lost:
        
            r11 = r11 + 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:80:0x0272, code lost:
        
            if (org.jsoup.parser.HtmlTreeBuilder.T(r31.e, r12) != false) goto L164;
         */
        /* JADX WARN: Code restructure failed: missing block: B:81:0x0274, code lost:
        
            r12 = r12.parent();
         */
        /* JADX WARN: Code restructure failed: missing block: B:82:0x027d, code lost:
        
            if (r12 == null) goto L833;
         */
        /* JADX WARN: Code restructure failed: missing block: B:84:0x0283, code lost:
        
            if (r12.nameIs("body") == false) goto L169;
         */
        /* JADX WARN: Code restructure failed: missing block: B:85:0x0289, code lost:
        
            if (r12 != r5) goto L171;
         */
        /* JADX WARN: Code restructure failed: missing block: B:87:0x0290, code lost:
        
            if (r11 <= 3) goto L176;
         */
        /* JADX WARN: Code restructure failed: missing block: B:89:0x0298, code lost:
        
            if (org.jsoup.parser.HtmlTreeBuilder.T(r31.t, r12) == false) goto L176;
         */
        /* JADX WARN: Code restructure failed: missing block: B:91:0x029a, code lost:
        
            r31.Z(r12);
         */
        /* JADX WARN: Code restructure failed: missing block: B:92:0x028b, code lost:
        
            r16 = r1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:93:0x0321, code lost:
        
            r4.appendChild(r13);
            r1 = new org.jsoup.nodes.Element(r5.tag(), r31.f);
            r1.attributes().addAll(r5.attributes());
            r4 = r7.childNodes().iterator();
         */
        /* JADX WARN: Code restructure failed: missing block: B:95:0x0346, code lost:
        
            if (r4.hasNext() == false) goto L839;
         */
        /* JADX WARN: Code restructure failed: missing block: B:96:0x0348, code lost:
        
            r1.appendChild(r4.next());
         */
        /* JADX WARN: Code restructure failed: missing block: B:98:0x0352, code lost:
        
            r7.appendChild(r1);
            r31.Z(r5);
            r31.u(r1);
         */
        /* JADX WARN: Removed duplicated region for block: B:169:0x01e3 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:54:0x01e8  */
        /* JADX WARN: Removed duplicated region for block: B:552:0x0b4a  */
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean d(org.jsoup.parser.Token r30, org.jsoup.parser.HtmlTreeBuilder r31) {
            /*
                Method dump skipped, instructions count: 3678
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.jsoup.parser.HtmlTreeBuilderState.AnonymousClass7.d(org.jsoup.parser.Token, org.jsoup.parser.HtmlTreeBuilder):boolean");
        }

        public final boolean e(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            token.getClass();
            String str = ((Token.EndTag) token).e;
            ArrayList arrayList = htmlTreeBuilder.e;
            if (htmlTreeBuilder.E(str) == null) {
                htmlTreeBuilder.B(this);
                return false;
            }
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                Element element = (Element) arrayList.get(size);
                if (element.nameIs(str)) {
                    htmlTreeBuilder.C(str);
                    if (!htmlTreeBuilder.c(str)) {
                        htmlTreeBuilder.B(this);
                    }
                    htmlTreeBuilder.V(str);
                    return true;
                }
                if (HtmlTreeBuilder.R(element)) {
                    htmlTreeBuilder.B(this);
                    return false;
                }
            }
            return true;
        }
    }

    /* renamed from: org.jsoup.parser.HtmlTreeBuilderState$9, reason: invalid class name */
    /* loaded from: classes4.dex */
    public enum AnonymousClass9 extends HtmlTreeBuilderState {
        public AnonymousClass9() {
            super("InTable", 8);
        }

        @Override // org.jsoup.parser.HtmlTreeBuilderState
        public final boolean d(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (token.f22600a == Token.TokenType.Character && StringUtil.inSorted(htmlTreeBuilder.b().normalName(), Constants.z)) {
                htmlTreeBuilder.v.clear();
                htmlTreeBuilder.o = htmlTreeBuilder.n;
                htmlTreeBuilder.n = HtmlTreeBuilderState.n;
                return htmlTreeBuilder.m(token);
            }
            if (token.a()) {
                htmlTreeBuilder.M((Token.Comment) token);
                return true;
            }
            if (token.b()) {
                htmlTreeBuilder.B(this);
                return false;
            }
            boolean e = token.e();
            AnonymousClass4 anonymousClass4 = HtmlTreeBuilderState.h;
            if (e) {
                Token.StartTag startTag = (Token.StartTag) token;
                String m = startTag.m();
                if (m.equals("caption")) {
                    htmlTreeBuilder.x();
                    htmlTreeBuilder.t.add(null);
                    htmlTreeBuilder.N(startTag);
                    htmlTreeBuilder.n = HtmlTreeBuilderState.o;
                    return true;
                }
                if (m.equals("colgroup")) {
                    htmlTreeBuilder.x();
                    htmlTreeBuilder.N(startTag);
                    htmlTreeBuilder.n = HtmlTreeBuilderState.p;
                    return true;
                }
                if (m.equals("col")) {
                    htmlTreeBuilder.x();
                    htmlTreeBuilder.o("colgroup");
                    return htmlTreeBuilder.m(token);
                }
                if (StringUtil.inSorted(m, Constants.r)) {
                    htmlTreeBuilder.x();
                    htmlTreeBuilder.N(startTag);
                    htmlTreeBuilder.n = HtmlTreeBuilderState.q;
                    return true;
                }
                if (StringUtil.inSorted(m, Constants.s)) {
                    htmlTreeBuilder.x();
                    htmlTreeBuilder.o("tbody");
                    return htmlTreeBuilder.m(token);
                }
                if (m.equals("table")) {
                    htmlTreeBuilder.B(this);
                    if (htmlTreeBuilder.J(m)) {
                        htmlTreeBuilder.V(m);
                        if (!htmlTreeBuilder.b0()) {
                            htmlTreeBuilder.N(startTag);
                            return true;
                        }
                        return htmlTreeBuilder.m(token);
                    }
                } else {
                    if (StringUtil.inSorted(m, Constants.t)) {
                        return anonymousClass4.d(token, htmlTreeBuilder);
                    }
                    if (m.equals("input")) {
                        Attributes attributes = startTag.g;
                        if (attributes != null && attributes.get("type").equalsIgnoreCase("hidden")) {
                            htmlTreeBuilder.O(startTag);
                            return true;
                        }
                        e(token, htmlTreeBuilder);
                        return true;
                    }
                    if (m.equals("form")) {
                        htmlTreeBuilder.B(this);
                        if (htmlTreeBuilder.r == null && !htmlTreeBuilder.S("template")) {
                            htmlTreeBuilder.Q(startTag, false, false);
                            return true;
                        }
                    } else {
                        e(token, htmlTreeBuilder);
                        return true;
                    }
                }
                return false;
            }
            if (token.d()) {
                String m2 = ((Token.EndTag) token).m();
                if (m2.equals("table")) {
                    if (!htmlTreeBuilder.J(m2)) {
                        htmlTreeBuilder.B(this);
                        return false;
                    }
                    htmlTreeBuilder.V("table");
                    htmlTreeBuilder.b0();
                    return true;
                }
                if (StringUtil.inSorted(m2, Constants.y)) {
                    htmlTreeBuilder.B(this);
                    return false;
                }
                if (m2.equals("template")) {
                    anonymousClass4.d(token, htmlTreeBuilder);
                    return true;
                }
                e(token, htmlTreeBuilder);
                return true;
            }
            if (token.c()) {
                if (htmlTreeBuilder.c("html")) {
                    htmlTreeBuilder.B(this);
                }
                return true;
            }
            e(token, htmlTreeBuilder);
            return true;
        }

        public final void e(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            htmlTreeBuilder.B(this);
            htmlTreeBuilder.y = true;
            HtmlTreeBuilderState.k.d(token, htmlTreeBuilder);
            htmlTreeBuilder.y = false;
        }
    }

    /* loaded from: classes4.dex */
    public static final class Constants {

        /* renamed from: a, reason: collision with root package name */
        public static final String[] f22588a = {"base", "basefont", "bgsound", "command", "link"};
        public static final String[] b = {"noframes", "style"};

        /* renamed from: c, reason: collision with root package name */
        public static final String[] f22589c = {"body", "br", "html"};
        public static final String[] d = {"body", "br", "html"};
        public static final String[] e = {"body", "br", "head", "html"};
        public static final String[] f = {"basefont", "bgsound", "link", "meta", "noframes", "style"};
        public static final String[] g = {"base", "basefont", "bgsound", "command", "link", "meta", "noframes", "script", "style", "template", "title"};
        public static final String[] h = {"address", "article", "aside", "blockquote", "center", "details", "dir", "div", "dl", "fieldset", "figcaption", "figure", "footer", "header", "hgroup", "menu", "nav", "ol", "p", "section", "summary", "ul"};
        public static final String[] i = {"h1", "h2", "h3", "h4", "h5", "h6"};
        public static final String[] j = {"address", "div", "p"};
        public static final String[] k = {"dd", "dt"};
        public static final String[] l = {"applet", "marquee", "object"};
        public static final String[] m = {"param", "source", "track"};
        public static final String[] n = {"caption", "col", "colgroup", "frame", "head", "tbody", "td", "tfoot", "th", "thead", "tr"};
        public static final String[] o = {"address", "article", "aside", "blockquote", "button", "center", "details", "dir", "div", "dl", "fieldset", "figcaption", "figure", "footer", "header", "hgroup", "listing", "menu", "nav", "ol", "pre", "section", "summary", "ul"};
        public static final String[] p = {"body", "dd", "dt", "html", "li", "optgroup", "option", "p", "rb", "rp", "rt", "rtc", "tbody", "td", "tfoot", "th", "thead", "tr"};
        public static final String[] q = {"a", "b", "big", "code", "em", "font", "i", "nobr", "s", "small", "strike", "strong", "tt", "u"};
        public static final String[] r = {"tbody", "tfoot", "thead"};
        public static final String[] s = {"td", "th", "tr"};
        public static final String[] t = {"script", "style", "template"};
        public static final String[] u = {"td", "th"};
        public static final String[] v = {"body", "caption", "col", "colgroup", "html"};
        public static final String[] w = {"table", "tbody", "tfoot", "thead", "tr"};
        public static final String[] x = {"caption", "col", "colgroup", "tbody", "td", "tfoot", "th", "thead", "tr"};
        public static final String[] y = {"body", "caption", "col", "colgroup", "html", "tbody", "td", "tfoot", "th", "thead", "tr"};
        public static final String[] z = {"table", "tbody", "tfoot", "thead", "tr"};
        public static final String[] A = {"caption", "col", "colgroup", "tbody", "tfoot", "thead"};
        public static final String[] B = {"body", "caption", "col", "colgroup", "html", "td", "th", "tr"};
        public static final String[] C = {"caption", "col", "colgroup", "tbody", "tfoot", "thead", "tr"};
        public static final String[] D = {"body", "caption", "col", "colgroup", "html", "td", "th"};
        public static final String[] E = {"input", "keygen", "textarea"};
        public static final String[] F = {"caption", "table", "tbody", "td", "tfoot", "th", "thead", "tr"};
        public static final String[] G = {"tbody", "tfoot", "thead"};
        public static final String[] H = {"head", "noscript"};
        public static final String[] I = {"body", "col", "colgroup", "html", "tbody", "td", "tfoot", "th", "thead", "tr"};
        public static final String[] J = {"base", "basefont", "bgsound", "link", "meta", "noframes", "script", "style", "template", "title"};
        public static final String[] K = {"caption", "colgroup", "tbody", "tfoot", "thead"};
        public static final String[] L = {"b", "big", "blockquote", "body", "br", "center", "code", "dd", "div", "dl", "dt", "em", "embed", "h1", "h2", "h3", "h4", "h5", "h6", "head", "hr", "i", "img", "li", "listing", "menu", "meta", "nobr", "ol", "p", "pre", "ruby", "s", "small", "span", "strike", "strong", "sub", "sup", "table", "tt", "u", "ul", "var"};
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [org.jsoup.parser.HtmlTreeBuilderState$1] */
    /* JADX WARN: Type inference failed for: r10v0, types: [org.jsoup.parser.HtmlTreeBuilderState$11] */
    /* JADX WARN: Type inference failed for: r11v0, types: [org.jsoup.parser.HtmlTreeBuilderState$12] */
    /* JADX WARN: Type inference failed for: r12v0, types: [org.jsoup.parser.HtmlTreeBuilderState$13] */
    /* JADX WARN: Type inference failed for: r13v0, types: [org.jsoup.parser.HtmlTreeBuilderState$14] */
    /* JADX WARN: Type inference failed for: r14v0, types: [org.jsoup.parser.HtmlTreeBuilderState$15] */
    /* JADX WARN: Type inference failed for: r16v0, types: [org.jsoup.parser.HtmlTreeBuilderState$17] */
    /* JADX WARN: Type inference failed for: r18v0, types: [org.jsoup.parser.HtmlTreeBuilderState$19] */
    /* JADX WARN: Type inference failed for: r19v0, types: [org.jsoup.parser.HtmlTreeBuilderState$20] */
    /* JADX WARN: Type inference failed for: r1v0, types: [org.jsoup.parser.HtmlTreeBuilderState$2] */
    /* JADX WARN: Type inference failed for: r20v0, types: [org.jsoup.parser.HtmlTreeBuilderState$21] */
    /* JADX WARN: Type inference failed for: r21v0, types: [org.jsoup.parser.HtmlTreeBuilderState$22] */
    /* JADX WARN: Type inference failed for: r22v0, types: [org.jsoup.parser.HtmlTreeBuilderState$23] */
    /* JADX WARN: Type inference failed for: r23v0, types: [org.jsoup.parser.HtmlTreeBuilderState$24] */
    /* JADX WARN: Type inference failed for: r2v0, types: [org.jsoup.parser.HtmlTreeBuilderState$3] */
    /* JADX WARN: Type inference failed for: r4v0, types: [org.jsoup.parser.HtmlTreeBuilderState$5] */
    /* JADX WARN: Type inference failed for: r5v0, types: [org.jsoup.parser.HtmlTreeBuilderState$6] */
    /* JADX WARN: Type inference failed for: r7v0, types: [org.jsoup.parser.HtmlTreeBuilderState$8] */
    /* JADX WARN: Type inference failed for: r9v0, types: [org.jsoup.parser.HtmlTreeBuilderState$10] */
    static {
        ?? r0 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.1
            @Override // org.jsoup.parser.HtmlTreeBuilderState
            public final boolean d(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                if (HtmlTreeBuilderState.a(token)) {
                    return true;
                }
                if (token.a()) {
                    htmlTreeBuilder.M((Token.Comment) token);
                    return true;
                }
                boolean b = token.b();
                AnonymousClass2 anonymousClass2 = HtmlTreeBuilderState.f;
                if (b) {
                    Token.Doctype doctype = (Token.Doctype) token;
                    DocumentType documentType = new DocumentType(htmlTreeBuilder.h.normalizeTag(doctype.d.e()), doctype.f.e(), doctype.g.e());
                    documentType.setPubSysKey(doctype.e);
                    htmlTreeBuilder.d.appendChild(documentType);
                    htmlTreeBuilder.j(documentType);
                    if (doctype.h || !documentType.name().equals("html") || documentType.publicId().equalsIgnoreCase("HTML")) {
                        htmlTreeBuilder.d.quirksMode(Document.QuirksMode.quirks);
                    }
                    htmlTreeBuilder.n = anonymousClass2;
                    return true;
                }
                htmlTreeBuilder.d.quirksMode(Document.QuirksMode.quirks);
                htmlTreeBuilder.n = anonymousClass2;
                return htmlTreeBuilder.m(token);
            }
        };
        f22586c = r0;
        ?? r1 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.2
            @Override // org.jsoup.parser.HtmlTreeBuilderState
            public final boolean d(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                if (token.b()) {
                    htmlTreeBuilder.B(this);
                    return false;
                }
                if (token.a()) {
                    htmlTreeBuilder.M((Token.Comment) token);
                    return true;
                }
                if (HtmlTreeBuilderState.a(token)) {
                    htmlTreeBuilder.K((Token.Character) token);
                    return true;
                }
                boolean e = token.e();
                AnonymousClass3 anonymousClass3 = HtmlTreeBuilderState.g;
                if (e) {
                    Token.StartTag startTag = (Token.StartTag) token;
                    if (startTag.m().equals("html")) {
                        htmlTreeBuilder.N(startTag);
                        htmlTreeBuilder.n = anonymousClass3;
                        return true;
                    }
                }
                if (token.d() && StringUtil.inSorted(((Token.EndTag) token).m(), Constants.e)) {
                    htmlTreeBuilder.o("html");
                    htmlTreeBuilder.n = anonymousClass3;
                    return htmlTreeBuilder.m(token);
                }
                if (token.d()) {
                    htmlTreeBuilder.B(this);
                    return false;
                }
                htmlTreeBuilder.o("html");
                htmlTreeBuilder.n = anonymousClass3;
                return htmlTreeBuilder.m(token);
            }
        };
        f = r1;
        ?? r2 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.3
            @Override // org.jsoup.parser.HtmlTreeBuilderState
            public final boolean d(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                if (HtmlTreeBuilderState.a(token)) {
                    htmlTreeBuilder.K((Token.Character) token);
                    return true;
                }
                if (token.a()) {
                    htmlTreeBuilder.M((Token.Comment) token);
                    return true;
                }
                if (token.b()) {
                    htmlTreeBuilder.B(this);
                    return false;
                }
                if (token.e() && ((Token.StartTag) token).m().equals("html")) {
                    return HtmlTreeBuilderState.k.d(token, htmlTreeBuilder);
                }
                if (token.e()) {
                    Token.StartTag startTag = (Token.StartTag) token;
                    if (startTag.m().equals("head")) {
                        htmlTreeBuilder.q = htmlTreeBuilder.N(startTag);
                        htmlTreeBuilder.n = HtmlTreeBuilderState.h;
                        return true;
                    }
                }
                if (token.d() && StringUtil.inSorted(((Token.EndTag) token).m(), Constants.e)) {
                    htmlTreeBuilder.o("head");
                    return htmlTreeBuilder.m(token);
                }
                if (token.d()) {
                    htmlTreeBuilder.B(this);
                    return false;
                }
                htmlTreeBuilder.o("head");
                return htmlTreeBuilder.m(token);
            }
        };
        g = r2;
        AnonymousClass4 anonymousClass4 = new AnonymousClass4();
        h = anonymousClass4;
        ?? r4 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.5
            @Override // org.jsoup.parser.HtmlTreeBuilderState
            public final boolean d(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                if (token.b()) {
                    htmlTreeBuilder.B(this);
                    return true;
                }
                if (token.e() && ((Token.StartTag) token).m().equals("html")) {
                    return HtmlTreeBuilderState.k.d(token, htmlTreeBuilder);
                }
                boolean d = token.d();
                AnonymousClass4 anonymousClass42 = HtmlTreeBuilderState.h;
                if (d && ((Token.EndTag) token).m().equals("noscript")) {
                    htmlTreeBuilder.l();
                    htmlTreeBuilder.n = anonymousClass42;
                    return true;
                }
                if (!HtmlTreeBuilderState.a(token) && !token.a() && (!token.e() || !StringUtil.inSorted(((Token.StartTag) token).m(), Constants.f))) {
                    if (token.d() && ((Token.EndTag) token).m().equals("br")) {
                        htmlTreeBuilder.B(this);
                        Token.Character character = new Token.Character();
                        String obj = token.toString();
                        TokenData tokenData = character.d;
                        tokenData.d();
                        tokenData.f22603a = obj;
                        htmlTreeBuilder.K(character);
                        return true;
                    }
                    if ((token.e() && StringUtil.inSorted(((Token.StartTag) token).m(), Constants.H)) || token.d()) {
                        htmlTreeBuilder.B(this);
                        return false;
                    }
                    htmlTreeBuilder.B(this);
                    Token.Character character2 = new Token.Character();
                    String obj2 = token.toString();
                    TokenData tokenData2 = character2.d;
                    tokenData2.d();
                    tokenData2.f22603a = obj2;
                    htmlTreeBuilder.K(character2);
                    return true;
                }
                return anonymousClass42.d(token, htmlTreeBuilder);
            }
        };
        i = r4;
        ?? r5 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.6
            @Override // org.jsoup.parser.HtmlTreeBuilderState
            public final boolean d(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                if (HtmlTreeBuilderState.a(token)) {
                    htmlTreeBuilder.K((Token.Character) token);
                } else if (token.a()) {
                    htmlTreeBuilder.M((Token.Comment) token);
                } else if (token.b()) {
                    htmlTreeBuilder.B(this);
                } else {
                    boolean e = token.e();
                    AnonymousClass4 anonymousClass42 = HtmlTreeBuilderState.h;
                    if (e) {
                        Token.StartTag startTag = (Token.StartTag) token;
                        String m2 = startTag.m();
                        boolean equals = m2.equals("html");
                        AnonymousClass7 anonymousClass7 = HtmlTreeBuilderState.k;
                        if (equals) {
                            return anonymousClass7.d(token, htmlTreeBuilder);
                        }
                        if (m2.equals("body")) {
                            htmlTreeBuilder.N(startTag);
                            htmlTreeBuilder.x = false;
                            htmlTreeBuilder.n = anonymousClass7;
                        } else if (m2.equals("frameset")) {
                            htmlTreeBuilder.N(startTag);
                            htmlTreeBuilder.n = HtmlTreeBuilderState.x;
                        } else if (StringUtil.inSorted(m2, Constants.g)) {
                            htmlTreeBuilder.B(this);
                            Element element = htmlTreeBuilder.q;
                            htmlTreeBuilder.e.add(element);
                            htmlTreeBuilder.j(element);
                            anonymousClass42.d(token, htmlTreeBuilder);
                            htmlTreeBuilder.a0(element);
                        } else {
                            if (m2.equals("head")) {
                                htmlTreeBuilder.B(this);
                                return false;
                            }
                            htmlTreeBuilder.o("body");
                            htmlTreeBuilder.x = true;
                            htmlTreeBuilder.m(token);
                        }
                    } else if (token.d()) {
                        String m3 = ((Token.EndTag) token).m();
                        if (StringUtil.inSorted(m3, Constants.d)) {
                            htmlTreeBuilder.o("body");
                            htmlTreeBuilder.x = true;
                            htmlTreeBuilder.m(token);
                        } else if (m3.equals("template")) {
                            anonymousClass42.d(token, htmlTreeBuilder);
                        } else {
                            htmlTreeBuilder.B(this);
                            return false;
                        }
                    } else {
                        htmlTreeBuilder.o("body");
                        htmlTreeBuilder.x = true;
                        htmlTreeBuilder.m(token);
                    }
                }
                return true;
            }
        };
        j = r5;
        AnonymousClass7 anonymousClass7 = new AnonymousClass7();
        k = anonymousClass7;
        ?? r7 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.8
            @Override // org.jsoup.parser.HtmlTreeBuilderState
            public final boolean d(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                if (token.f22600a == Token.TokenType.Character) {
                    htmlTreeBuilder.K((Token.Character) token);
                    return true;
                }
                if (token.c()) {
                    htmlTreeBuilder.B(this);
                    htmlTreeBuilder.l();
                    HtmlTreeBuilderState htmlTreeBuilderState = htmlTreeBuilder.o;
                    htmlTreeBuilder.n = htmlTreeBuilderState;
                    if (htmlTreeBuilderState == HtmlTreeBuilderState.l) {
                        htmlTreeBuilder.n = HtmlTreeBuilderState.k;
                    }
                    return htmlTreeBuilder.m(token);
                }
                if (token.d()) {
                    htmlTreeBuilder.l();
                    htmlTreeBuilder.n = htmlTreeBuilder.o;
                    return true;
                }
                return true;
            }
        };
        l = r7;
        AnonymousClass9 anonymousClass9 = new AnonymousClass9();
        m = anonymousClass9;
        ?? r9 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.10
            @Override // org.jsoup.parser.HtmlTreeBuilderState
            public final boolean d(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                if (token.f22600a == Token.TokenType.Character) {
                    Token.Character character = (Token.Character) token;
                    if (character.d.e().equals(HtmlTreeBuilderState.C)) {
                        htmlTreeBuilder.B(this);
                        return false;
                    }
                    htmlTreeBuilder.v.add(new Token.Character(character));
                    return true;
                }
                if (htmlTreeBuilder.v.size() > 0) {
                    Token token2 = htmlTreeBuilder.g;
                    ArrayList arrayList = htmlTreeBuilder.v;
                    int size = arrayList.size();
                    int i2 = 0;
                    while (i2 < size) {
                        Object obj = arrayList.get(i2);
                        i2++;
                        Token.Character character2 = (Token.Character) obj;
                        htmlTreeBuilder.g = character2;
                        if (!HtmlTreeBuilderState.a(character2)) {
                            htmlTreeBuilder.B(this);
                            boolean inSorted = StringUtil.inSorted(htmlTreeBuilder.b().normalName(), Constants.z);
                            AnonymousClass7 anonymousClass72 = HtmlTreeBuilderState.k;
                            if (inSorted) {
                                htmlTreeBuilder.y = true;
                                anonymousClass72.d(character2, htmlTreeBuilder);
                                htmlTreeBuilder.y = false;
                            } else {
                                anonymousClass72.d(character2, htmlTreeBuilder);
                            }
                        } else {
                            htmlTreeBuilder.K(character2);
                        }
                    }
                    htmlTreeBuilder.g = token2;
                    htmlTreeBuilder.v.clear();
                }
                htmlTreeBuilder.n = htmlTreeBuilder.o;
                return htmlTreeBuilder.m(token);
            }
        };
        n = r9;
        ?? r10 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.11
            @Override // org.jsoup.parser.HtmlTreeBuilderState
            public final boolean d(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                boolean d = token.d();
                AnonymousClass9 anonymousClass92 = HtmlTreeBuilderState.m;
                if (d && ((Token.EndTag) token).m().equals("caption")) {
                    if (!htmlTreeBuilder.J("caption")) {
                        htmlTreeBuilder.B(this);
                        return false;
                    }
                    htmlTreeBuilder.D(false);
                    if (!htmlTreeBuilder.c("caption")) {
                        htmlTreeBuilder.B(this);
                    }
                    htmlTreeBuilder.V("caption");
                    htmlTreeBuilder.v();
                    htmlTreeBuilder.n = anonymousClass92;
                    return true;
                }
                if ((token.e() && StringUtil.inSorted(((Token.StartTag) token).m(), Constants.x)) || (token.d() && ((Token.EndTag) token).m().equals("table"))) {
                    if (!htmlTreeBuilder.J("caption")) {
                        htmlTreeBuilder.B(this);
                        return false;
                    }
                    htmlTreeBuilder.D(false);
                    if (!htmlTreeBuilder.c("caption")) {
                        htmlTreeBuilder.B(this);
                    }
                    htmlTreeBuilder.V("caption");
                    htmlTreeBuilder.v();
                    htmlTreeBuilder.n = anonymousClass92;
                    anonymousClass92.d(token, htmlTreeBuilder);
                    return true;
                }
                if (token.d() && StringUtil.inSorted(((Token.EndTag) token).m(), Constants.I)) {
                    htmlTreeBuilder.B(this);
                    return false;
                }
                return HtmlTreeBuilderState.k.d(token, htmlTreeBuilder);
            }
        };
        o = r10;
        ?? r11 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.12
            /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
            /* JADX WARN: Code restructure failed: missing block: B:50:0x0088, code lost:
            
                if (r3.equals("html") == false) goto L39;
             */
            @Override // org.jsoup.parser.HtmlTreeBuilderState
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final boolean d(org.jsoup.parser.Token r11, org.jsoup.parser.HtmlTreeBuilder r12) {
                /*
                    r10 = this;
                    boolean r0 = org.jsoup.parser.HtmlTreeBuilderState.a(r11)
                    r1 = 1
                    if (r0 == 0) goto Ld
                    org.jsoup.parser.Token$Character r11 = (org.jsoup.parser.Token.Character) r11
                    r12.K(r11)
                    return r1
                Ld:
                    int[] r0 = org.jsoup.parser.HtmlTreeBuilderState.AnonymousClass25.f22587a
                    org.jsoup.parser.Token$TokenType r2 = r11.f22600a
                    int r2 = r2.ordinal()
                    r0 = r0[r2]
                    if (r0 == r1) goto Lb9
                    r2 = 2
                    if (r0 == r2) goto Lb5
                    r3 = 3
                    r4 = 0
                    java.lang.String r5 = "template"
                    java.lang.String r6 = "html"
                    org.jsoup.parser.HtmlTreeBuilderState$4 r7 = org.jsoup.parser.HtmlTreeBuilderState.h
                    if (r0 == r3) goto L70
                    r2 = 4
                    if (r0 == r2) goto L3d
                    r2 = 6
                    if (r0 == r2) goto L31
                    boolean r11 = r10.e(r11, r12)
                    return r11
                L31:
                    boolean r0 = r12.c(r6)
                    if (r0 == 0) goto L38
                    return r1
                L38:
                    boolean r11 = r10.e(r11, r12)
                    return r11
                L3d:
                    r0 = r11
                    org.jsoup.parser.Token$EndTag r0 = (org.jsoup.parser.Token.EndTag) r0
                    java.lang.String r0 = r0.m()
                    r0.getClass()
                    boolean r2 = r0.equals(r5)
                    if (r2 != 0) goto L6c
                    java.lang.String r2 = "colgroup"
                    boolean r2 = r0.equals(r2)
                    if (r2 != 0) goto L5a
                    boolean r11 = r10.e(r11, r12)
                    return r11
                L5a:
                    boolean r11 = r12.c(r0)
                    if (r11 != 0) goto L64
                    r12.B(r10)
                    return r4
                L64:
                    r12.l()
                    org.jsoup.parser.HtmlTreeBuilderState$9 r11 = org.jsoup.parser.HtmlTreeBuilderState.m
                    r12.n = r11
                    return r1
                L6c:
                    r7.d(r11, r12)
                    return r1
                L70:
                    r0 = r11
                    org.jsoup.parser.Token$StartTag r0 = (org.jsoup.parser.Token.StartTag) r0
                    java.lang.String r3 = r0.m()
                    r3.getClass()
                    int r8 = r3.hashCode()
                    r9 = -1
                    switch(r8) {
                        case -1321546630: goto L96;
                        case 98688: goto L8b;
                        case 3213227: goto L84;
                        default: goto L82;
                    }
                L82:
                    r2 = r9
                    goto L9e
                L84:
                    boolean r3 = r3.equals(r6)
                    if (r3 != 0) goto L9e
                    goto L82
                L8b:
                    java.lang.String r2 = "col"
                    boolean r2 = r3.equals(r2)
                    if (r2 != 0) goto L94
                    goto L82
                L94:
                    r2 = r1
                    goto L9e
                L96:
                    boolean r2 = r3.equals(r5)
                    if (r2 != 0) goto L9d
                    goto L82
                L9d:
                    r2 = r4
                L9e:
                    switch(r2) {
                        case 0: goto Lb1;
                        case 1: goto Lad;
                        case 2: goto La6;
                        default: goto La1;
                    }
                La1:
                    boolean r11 = r10.e(r11, r12)
                    return r11
                La6:
                    org.jsoup.parser.HtmlTreeBuilderState$7 r0 = org.jsoup.parser.HtmlTreeBuilderState.k
                    boolean r11 = r0.d(r11, r12)
                    return r11
                Lad:
                    r12.O(r0)
                    return r1
                Lb1:
                    r7.d(r11, r12)
                    return r1
                Lb5:
                    r12.B(r10)
                    return r1
                Lb9:
                    org.jsoup.parser.Token$Comment r11 = (org.jsoup.parser.Token.Comment) r11
                    r12.M(r11)
                    return r1
                */
                throw new UnsupportedOperationException("Method not decompiled: org.jsoup.parser.HtmlTreeBuilderState.AnonymousClass12.d(org.jsoup.parser.Token, org.jsoup.parser.HtmlTreeBuilder):boolean");
            }

            public final boolean e(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                if (!htmlTreeBuilder.c("colgroup")) {
                    htmlTreeBuilder.B(this);
                    return false;
                }
                htmlTreeBuilder.l();
                htmlTreeBuilder.n = HtmlTreeBuilderState.m;
                htmlTreeBuilder.m(token);
                return true;
            }
        };
        p = r11;
        ?? r12 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.13
            @Override // org.jsoup.parser.HtmlTreeBuilderState
            public final boolean d(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                int i2 = AnonymousClass25.f22587a[token.f22600a.ordinal()];
                AnonymousClass9 anonymousClass92 = HtmlTreeBuilderState.m;
                if (i2 != 3) {
                    if (i2 != 4) {
                        return anonymousClass92.d(token, htmlTreeBuilder);
                    }
                    String m2 = ((Token.EndTag) token).m();
                    if (StringUtil.inSorted(m2, Constants.G)) {
                        if (!htmlTreeBuilder.J(m2)) {
                            htmlTreeBuilder.B(this);
                            return false;
                        }
                        htmlTreeBuilder.w("tbody", "tfoot", "thead", "template");
                        htmlTreeBuilder.l();
                        htmlTreeBuilder.n = anonymousClass92;
                        return true;
                    }
                    if (m2.equals("table")) {
                        return e(token, htmlTreeBuilder);
                    }
                    if (StringUtil.inSorted(m2, Constants.B)) {
                        htmlTreeBuilder.B(this);
                        return false;
                    }
                    return anonymousClass92.d(token, htmlTreeBuilder);
                }
                Token.StartTag startTag = (Token.StartTag) token;
                String m3 = startTag.m();
                if (m3.equals("tr")) {
                    htmlTreeBuilder.w("tbody", "tfoot", "thead", "template");
                    htmlTreeBuilder.N(startTag);
                    htmlTreeBuilder.n = HtmlTreeBuilderState.r;
                    return true;
                }
                if (StringUtil.inSorted(m3, Constants.u)) {
                    htmlTreeBuilder.B(this);
                    htmlTreeBuilder.o("tr");
                    return htmlTreeBuilder.m(startTag);
                }
                if (StringUtil.inSorted(m3, Constants.A)) {
                    return e(token, htmlTreeBuilder);
                }
                return anonymousClass92.d(token, htmlTreeBuilder);
            }

            public final boolean e(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                if (!htmlTreeBuilder.J("tbody") && !htmlTreeBuilder.J("thead") && !htmlTreeBuilder.G("tfoot")) {
                    htmlTreeBuilder.B(this);
                    return false;
                }
                htmlTreeBuilder.w("tbody", "tfoot", "thead", "template");
                htmlTreeBuilder.n(htmlTreeBuilder.b().normalName());
                return htmlTreeBuilder.m(token);
            }
        };
        q = r12;
        ?? r13 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.14
            @Override // org.jsoup.parser.HtmlTreeBuilderState
            public final boolean d(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                boolean e = token.e();
                AnonymousClass9 anonymousClass92 = HtmlTreeBuilderState.m;
                AnonymousClass13 anonymousClass13 = HtmlTreeBuilderState.q;
                if (e) {
                    Token.StartTag startTag = (Token.StartTag) token;
                    String m2 = startTag.m();
                    if (StringUtil.inSorted(m2, Constants.u)) {
                        htmlTreeBuilder.y();
                        htmlTreeBuilder.N(startTag);
                        htmlTreeBuilder.n = HtmlTreeBuilderState.s;
                        htmlTreeBuilder.t.add(null);
                        return true;
                    }
                    if (StringUtil.inSorted(m2, Constants.C)) {
                        if (!htmlTreeBuilder.J("tr")) {
                            htmlTreeBuilder.B(this);
                            return false;
                        }
                        htmlTreeBuilder.y();
                        htmlTreeBuilder.l();
                        htmlTreeBuilder.n = anonymousClass13;
                        return htmlTreeBuilder.m(token);
                    }
                    return anonymousClass92.d(token, htmlTreeBuilder);
                }
                if (token.d()) {
                    String m3 = ((Token.EndTag) token).m();
                    if (m3.equals("tr")) {
                        if (!htmlTreeBuilder.J(m3)) {
                            htmlTreeBuilder.B(this);
                            return false;
                        }
                        htmlTreeBuilder.y();
                        htmlTreeBuilder.l();
                        htmlTreeBuilder.n = anonymousClass13;
                        return true;
                    }
                    if (m3.equals("table")) {
                        if (!htmlTreeBuilder.J("tr")) {
                            htmlTreeBuilder.B(this);
                            return false;
                        }
                        htmlTreeBuilder.y();
                        htmlTreeBuilder.l();
                        htmlTreeBuilder.n = anonymousClass13;
                        return htmlTreeBuilder.m(token);
                    }
                    if (StringUtil.inSorted(m3, Constants.r)) {
                        if (!htmlTreeBuilder.J(m3)) {
                            htmlTreeBuilder.B(this);
                            return false;
                        }
                        if (!htmlTreeBuilder.J("tr")) {
                            return false;
                        }
                        htmlTreeBuilder.y();
                        htmlTreeBuilder.l();
                        htmlTreeBuilder.n = anonymousClass13;
                        return htmlTreeBuilder.m(token);
                    }
                    if (StringUtil.inSorted(m3, Constants.D)) {
                        htmlTreeBuilder.B(this);
                        return false;
                    }
                    return anonymousClass92.d(token, htmlTreeBuilder);
                }
                return anonymousClass92.d(token, htmlTreeBuilder);
            }
        };
        r = r13;
        ?? r14 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.15
            @Override // org.jsoup.parser.HtmlTreeBuilderState
            public final boolean d(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                boolean d = token.d();
                AnonymousClass7 anonymousClass72 = HtmlTreeBuilderState.k;
                if (d) {
                    String m2 = ((Token.EndTag) token).m();
                    if (StringUtil.inSorted(m2, Constants.u)) {
                        boolean J = htmlTreeBuilder.J(m2);
                        AnonymousClass14 anonymousClass14 = HtmlTreeBuilderState.r;
                        if (!J) {
                            htmlTreeBuilder.B(this);
                            htmlTreeBuilder.n = anonymousClass14;
                            return false;
                        }
                        htmlTreeBuilder.D(false);
                        if (!htmlTreeBuilder.c(m2)) {
                            htmlTreeBuilder.B(this);
                        }
                        htmlTreeBuilder.V(m2);
                        htmlTreeBuilder.v();
                        htmlTreeBuilder.n = anonymousClass14;
                        return true;
                    }
                    if (StringUtil.inSorted(m2, Constants.v)) {
                        htmlTreeBuilder.B(this);
                        return false;
                    }
                    if (StringUtil.inSorted(m2, Constants.w)) {
                        if (!htmlTreeBuilder.J(m2)) {
                            htmlTreeBuilder.B(this);
                            return false;
                        }
                        if (htmlTreeBuilder.J("td")) {
                            htmlTreeBuilder.n("td");
                        } else {
                            htmlTreeBuilder.n("th");
                        }
                        return htmlTreeBuilder.m(token);
                    }
                    return anonymousClass72.d(token, htmlTreeBuilder);
                }
                if (token.e() && StringUtil.inSorted(((Token.StartTag) token).m(), Constants.x)) {
                    if (!htmlTreeBuilder.J("td") && !htmlTreeBuilder.J("th")) {
                        htmlTreeBuilder.B(this);
                        return false;
                    }
                    if (htmlTreeBuilder.J("td")) {
                        htmlTreeBuilder.n("td");
                    } else {
                        htmlTreeBuilder.n("th");
                    }
                    return htmlTreeBuilder.m(token);
                }
                return anonymousClass72.d(token, htmlTreeBuilder);
            }
        };
        s = r14;
        AnonymousClass16 anonymousClass16 = new AnonymousClass16();
        t = anonymousClass16;
        ?? r16 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.17
            @Override // org.jsoup.parser.HtmlTreeBuilderState
            public final boolean d(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                boolean e = token.e();
                String[] strArr = Constants.F;
                if (e && StringUtil.inSorted(((Token.StartTag) token).m(), strArr)) {
                    htmlTreeBuilder.B(this);
                    htmlTreeBuilder.V("select");
                    htmlTreeBuilder.b0();
                    return htmlTreeBuilder.m(token);
                }
                if (token.d()) {
                    Token.EndTag endTag = (Token.EndTag) token;
                    if (StringUtil.inSorted(endTag.m(), strArr)) {
                        htmlTreeBuilder.B(this);
                        if (htmlTreeBuilder.J(endTag.m())) {
                            htmlTreeBuilder.V("select");
                            htmlTreeBuilder.b0();
                            return htmlTreeBuilder.m(token);
                        }
                        return false;
                    }
                }
                return HtmlTreeBuilderState.t.d(token, htmlTreeBuilder);
            }
        };
        u = r16;
        AnonymousClass18 anonymousClass18 = new AnonymousClass18();
        v = anonymousClass18;
        ?? r18 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.19
            @Override // org.jsoup.parser.HtmlTreeBuilderState
            public final boolean d(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                Element E = htmlTreeBuilder.E("html");
                boolean a2 = HtmlTreeBuilderState.a(token);
                AnonymousClass7 anonymousClass72 = HtmlTreeBuilderState.k;
                if (a2) {
                    if (E != null) {
                        htmlTreeBuilder.L((Token.Character) token, E);
                        return true;
                    }
                    anonymousClass72.d(token, htmlTreeBuilder);
                    return true;
                }
                if (token.a()) {
                    htmlTreeBuilder.M((Token.Comment) token);
                    return true;
                }
                if (token.b()) {
                    htmlTreeBuilder.B(this);
                    return false;
                }
                if (token.e() && ((Token.StartTag) token).m().equals("html")) {
                    return anonymousClass72.d(token, htmlTreeBuilder);
                }
                if (token.d() && ((Token.EndTag) token).m().equals("html")) {
                    if (htmlTreeBuilder.z) {
                        htmlTreeBuilder.B(this);
                        return false;
                    }
                    if (E != null) {
                        htmlTreeBuilder.s(E, false);
                    }
                    htmlTreeBuilder.n = HtmlTreeBuilderState.z;
                    return true;
                }
                if (token.c()) {
                    return true;
                }
                htmlTreeBuilder.B(this);
                if (!htmlTreeBuilder.S("body")) {
                    htmlTreeBuilder.e.add(htmlTreeBuilder.d.body());
                }
                htmlTreeBuilder.n = anonymousClass72;
                return htmlTreeBuilder.m(token);
            }
        };
        w = r18;
        ?? r19 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.20
            @Override // org.jsoup.parser.HtmlTreeBuilderState
            public final boolean d(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                if (HtmlTreeBuilderState.a(token)) {
                    htmlTreeBuilder.K((Token.Character) token);
                    return true;
                }
                if (token.a()) {
                    htmlTreeBuilder.M((Token.Comment) token);
                    return true;
                }
                if (token.b()) {
                    htmlTreeBuilder.B(this);
                    return false;
                }
                if (token.e()) {
                    Token.StartTag startTag = (Token.StartTag) token;
                    String m2 = startTag.m();
                    m2.getClass();
                    char c2 = 65535;
                    switch (m2.hashCode()) {
                        case -1644953643:
                            if (m2.equals("frameset")) {
                                c2 = 0;
                                break;
                            }
                            break;
                        case 3213227:
                            if (m2.equals("html")) {
                                c2 = 1;
                                break;
                            }
                            break;
                        case 97692013:
                            if (m2.equals("frame")) {
                                c2 = 2;
                                break;
                            }
                            break;
                        case 1192721831:
                            if (m2.equals("noframes")) {
                                c2 = 3;
                                break;
                            }
                            break;
                    }
                    switch (c2) {
                        case 0:
                            htmlTreeBuilder.N(startTag);
                            return true;
                        case 1:
                            return HtmlTreeBuilderState.k.d(startTag, htmlTreeBuilder);
                        case 2:
                            htmlTreeBuilder.O(startTag);
                            return true;
                        case 3:
                            return HtmlTreeBuilderState.h.d(startTag, htmlTreeBuilder);
                        default:
                            htmlTreeBuilder.B(this);
                            return false;
                    }
                }
                if (token.d() && ((Token.EndTag) token).m().equals("frameset")) {
                    if (htmlTreeBuilder.c("html")) {
                        htmlTreeBuilder.B(this);
                        return false;
                    }
                    htmlTreeBuilder.l();
                    if (!htmlTreeBuilder.z && !htmlTreeBuilder.c("frameset")) {
                        htmlTreeBuilder.n = HtmlTreeBuilderState.y;
                        return true;
                    }
                } else if (token.c()) {
                    if (!htmlTreeBuilder.c("html")) {
                        htmlTreeBuilder.B(this);
                    }
                } else {
                    htmlTreeBuilder.B(this);
                    return false;
                }
                return true;
            }
        };
        x = r19;
        ?? r20 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.21
            @Override // org.jsoup.parser.HtmlTreeBuilderState
            public final boolean d(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                if (HtmlTreeBuilderState.a(token)) {
                    htmlTreeBuilder.K((Token.Character) token);
                    return true;
                }
                if (token.a()) {
                    htmlTreeBuilder.M((Token.Comment) token);
                    return true;
                }
                if (token.b()) {
                    htmlTreeBuilder.B(this);
                    return false;
                }
                if (token.e() && ((Token.StartTag) token).m().equals("html")) {
                    return HtmlTreeBuilderState.k.d(token, htmlTreeBuilder);
                }
                if (token.d() && ((Token.EndTag) token).m().equals("html")) {
                    htmlTreeBuilder.n = HtmlTreeBuilderState.A;
                    return true;
                }
                if (token.e() && ((Token.StartTag) token).m().equals("noframes")) {
                    return HtmlTreeBuilderState.h.d(token, htmlTreeBuilder);
                }
                if (token.c()) {
                    return true;
                }
                htmlTreeBuilder.B(this);
                return false;
            }
        };
        y = r20;
        ?? r21 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.22
            @Override // org.jsoup.parser.HtmlTreeBuilderState
            public final boolean d(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                if (token.a()) {
                    htmlTreeBuilder.M((Token.Comment) token);
                    return true;
                }
                boolean b = token.b();
                AnonymousClass7 anonymousClass72 = HtmlTreeBuilderState.k;
                if (!b && (!token.e() || !((Token.StartTag) token).m().equals("html"))) {
                    if (HtmlTreeBuilderState.a(token)) {
                        htmlTreeBuilder.L((Token.Character) token, htmlTreeBuilder.d);
                        return true;
                    }
                    if (token.c()) {
                        return true;
                    }
                    htmlTreeBuilder.B(this);
                    if (!htmlTreeBuilder.S("body")) {
                        htmlTreeBuilder.e.add(htmlTreeBuilder.d.body());
                    }
                    htmlTreeBuilder.n = anonymousClass72;
                    return htmlTreeBuilder.m(token);
                }
                return anonymousClass72.d(token, htmlTreeBuilder);
            }
        };
        z = r21;
        ?? r22 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.23
            @Override // org.jsoup.parser.HtmlTreeBuilderState
            public final boolean d(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                if (token.a()) {
                    htmlTreeBuilder.M((Token.Comment) token);
                    return true;
                }
                if (!token.b() && !HtmlTreeBuilderState.a(token) && (!token.e() || !((Token.StartTag) token).m().equals("html"))) {
                    if (token.c()) {
                        return true;
                    }
                    if (token.e() && ((Token.StartTag) token).m().equals("noframes")) {
                        return HtmlTreeBuilderState.h.d(token, htmlTreeBuilder);
                    }
                    htmlTreeBuilder.B(this);
                    return false;
                }
                return HtmlTreeBuilderState.k.d(token, htmlTreeBuilder);
            }
        };
        A = r22;
        ?? r23 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.24
            /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
            @Override // org.jsoup.parser.HtmlTreeBuilderState
            public final boolean d(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                Attributes attributes;
                Attributes attributes2;
                Attributes attributes3;
                Element b;
                switch (AnonymousClass25.f22587a[token.f22600a.ordinal()]) {
                    case 1:
                        htmlTreeBuilder.M((Token.Comment) token);
                        return true;
                    case 2:
                        htmlTreeBuilder.B(this);
                        return true;
                    case 3:
                        Token.StartTag startTag = (Token.StartTag) token;
                        if (StringUtil.in(startTag.e, Constants.L)) {
                            return htmlTreeBuilder.n.d(token, htmlTreeBuilder);
                        }
                        if (startTag.e.equals("font") && (((attributes = startTag.g) != null && attributes.hasKeyIgnoreCase("color")) || (((attributes2 = startTag.g) != null && attributes2.hasKeyIgnoreCase("face")) || ((attributes3 = startTag.g) != null && attributes3.hasKeyIgnoreCase("size"))))) {
                            return htmlTreeBuilder.n.d(token, htmlTreeBuilder);
                        }
                        String namespace = htmlTreeBuilder.b().tag().namespace();
                        htmlTreeBuilder.P(startTag, namespace);
                        TokeniserState b2 = htmlTreeBuilder.q(startTag.d.e(), startTag.e, namespace, htmlTreeBuilder.h).b();
                        if (b2 != null) {
                            if (startTag.e.equals("script")) {
                                htmlTreeBuilder.f22609c.o(TokeniserState.j);
                                return true;
                            }
                            htmlTreeBuilder.f22609c.o(b2);
                        }
                        return true;
                    case 4:
                        Token.EndTag endTag = (Token.EndTag) token;
                        if (!endTag.e.equals("br") && !endTag.e.equals("p")) {
                            if (endTag.e.equals("script") && htmlTreeBuilder.e.size() != 0 && (b = htmlTreeBuilder.b()) != null && b.normalName().equals("script") && b.tag().namespace().equals(Parser.NamespaceSvg)) {
                                htmlTreeBuilder.l();
                                return true;
                            }
                            ArrayList arrayList = htmlTreeBuilder.e;
                            if (arrayList.isEmpty()) {
                                Validate.wtf("Stack unexpectedly empty");
                            }
                            int size = arrayList.size() - 1;
                            Element element = (Element) arrayList.get(size);
                            if (!element.nameIs(endTag.e)) {
                                htmlTreeBuilder.B(this);
                            }
                            do {
                                if (size != 0) {
                                    if (element.nameIs(endTag.e)) {
                                        String normalName = element.normalName();
                                        for (int size2 = htmlTreeBuilder.e.size() - 1; size2 >= 0 && !htmlTreeBuilder.l().nameIs(normalName); size2--) {
                                        }
                                    } else {
                                        size--;
                                        element = (Element) arrayList.get(size);
                                    }
                                }
                                return true;
                            } while (!element.tag().namespace().equals(Parser.NamespaceHtml));
                            return htmlTreeBuilder.n.d(token, htmlTreeBuilder);
                        }
                        return htmlTreeBuilder.n.d(token, htmlTreeBuilder);
                    case 5:
                        Token.Character character = (Token.Character) token;
                        if (character.d.e().equals(HtmlTreeBuilderState.C)) {
                            htmlTreeBuilder.B(this);
                            return true;
                        }
                        if (HtmlTreeBuilderState.a(character)) {
                            htmlTreeBuilder.K(character);
                            return true;
                        }
                        htmlTreeBuilder.K(character);
                        htmlTreeBuilder.x = false;
                        return true;
                    case 6:
                        return true;
                    default:
                        Validate.wtf("Unexpected state: " + token.f22600a);
                        return true;
                }
            }
        };
        B = r23;
        D = new HtmlTreeBuilderState[]{r0, r1, r2, anonymousClass4, r4, r5, anonymousClass7, r7, anonymousClass9, r9, r10, r11, r12, r13, r14, anonymousClass16, r16, anonymousClass18, r18, r19, r20, r21, r22, r23};
        C = String.valueOf((char) 0);
    }

    public static boolean a(Token token) {
        if (token.f22600a == Token.TokenType.Character) {
            return StringUtil.isBlank(((Token.Character) token).d.e());
        }
        return false;
    }

    public static void b(Token.StartTag startTag, HtmlTreeBuilder htmlTreeBuilder, TokeniserState tokeniserState) {
        if (tokeniserState != null) {
            htmlTreeBuilder.f22609c.o(tokeniserState);
        }
        htmlTreeBuilder.o = htmlTreeBuilder.n;
        htmlTreeBuilder.n = l;
        htmlTreeBuilder.N(startTag);
    }

    public static void c(Token.StartTag startTag, Element element) {
        Attributes attributes = startTag.g;
        if (attributes != null) {
            Iterator<Attribute> it = attributes.iterator();
            while (it.hasNext()) {
                Attribute next = it.next();
                Attributes attributes2 = element.attributes();
                if (!attributes2.hasKey(next.getKey())) {
                    Range.AttributeRange sourceRange = next.sourceRange();
                    attributes2.put(next);
                    if (startTag.l) {
                        attributes2.sourceRange(next.getKey(), sourceRange);
                    }
                }
            }
        }
    }

    public static HtmlTreeBuilderState valueOf(String str) {
        return (HtmlTreeBuilderState) Enum.valueOf(HtmlTreeBuilderState.class, str);
    }

    public static HtmlTreeBuilderState[] values() {
        return (HtmlTreeBuilderState[]) D.clone();
    }

    public abstract boolean d(Token token, HtmlTreeBuilder htmlTreeBuilder);
}
