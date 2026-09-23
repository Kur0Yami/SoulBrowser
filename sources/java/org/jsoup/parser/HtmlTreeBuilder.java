package org.jsoup.parser;

import java.io.Reader;
import java.util.ArrayList;
import java.util.List;
import org.jsoup.helper.Validate;
import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Attributes;
import org.jsoup.nodes.CDataNode;
import org.jsoup.nodes.Comment;
import org.jsoup.nodes.DataNode;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.FormElement;
import org.jsoup.nodes.Node;
import org.jsoup.nodes.TextNode;
import org.jsoup.parser.Token;

/* loaded from: classes4.dex */
public class HtmlTreeBuilder extends TreeBuilder {
    public static final int MaxScopeSearchDepth = 100;
    public final String[] A = {null};
    public HtmlTreeBuilderState n;
    public HtmlTreeBuilderState o;
    public boolean p;
    public Element q;
    public FormElement r;
    public Element s;
    public ArrayList t;
    public ArrayList u;
    public ArrayList v;
    public Token.EndTag w;
    public boolean x;
    public boolean y;
    public boolean z;
    public static final String[] B = {"applet", "caption", "html", "marquee", "object", "table", "td", "template", "th"};
    public static final String[] C = {"annotation-xml", "mi", "mn", "mo", "ms", "mtext"};
    public static final String[] D = {"desc", "foreignObject", "title"};
    public static final String[] E = {"ol", "ul"};
    public static final String[] F = {"button"};
    public static final String[] G = {"html", "table"};
    public static final String[] H = {"optgroup", "option"};
    public static final String[] I = {"dd", "dt", "li", "optgroup", "option", "p", "rb", "rp", "rt", "rtc"};
    public static final String[] J = {"caption", "colgroup", "dd", "dt", "li", "optgroup", "option", "p", "rb", "rp", "rt", "rtc", "tbody", "td", "tfoot", "th", "thead", "tr"};
    public static final String[] K = {"address", "applet", "area", "article", "aside", "base", "basefont", "bgsound", "blockquote", "body", "br", "button", "caption", "center", "col", "colgroup", "dd", "details", "dir", "div", "dl", "dt", "embed", "fieldset", "figcaption", "figure", "footer", "form", "frame", "frameset", "h1", "h2", "h3", "h4", "h5", "h6", "head", "header", "hgroup", "hr", "html", "iframe", "img", "input", "keygen", "li", "link", "listing", "main", "marquee", "menu", "meta", "nav", "noembed", "noframes", "noscript", "object", "ol", "p", "param", "plaintext", "pre", "script", "search", "section", "select", "source", "style", "summary", "table", "tbody", "td", "template", "textarea", "tfoot", "th", "thead", "title", "tr", "track", "ul", "wbr", "xmp"};
    public static final String[] L = {"annotation-xml", "mi", "mn", "mo", "ms", "mtext"};
    public static final String[] M = {"mi", "mn", "mo", "ms", "mtext"};
    public static final String[] N = {"desc", "foreignObject", "title"};
    public static final String[] O = {"button", "fieldset", "input", "keygen", "object", "output", "select", "textarea"};

    public static boolean R(Element element) {
        String namespace = element.tag().namespace();
        String normalName = element.normalName();
        namespace.getClass();
        char c2 = 65535;
        switch (namespace.hashCode()) {
            case -2078206768:
                if (namespace.equals(Parser.NamespaceHtml)) {
                    c2 = 0;
                    break;
                }
                break;
            case -296110905:
                if (namespace.equals(Parser.NamespaceSvg)) {
                    c2 = 1;
                    break;
                }
                break;
            case 1725132794:
                if (namespace.equals(Parser.NamespaceMathml)) {
                    c2 = 2;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                return StringUtil.inSorted(normalName, K);
            case 1:
                return StringUtil.inSorted(normalName, N);
            case 2:
                return StringUtil.inSorted(normalName, L);
            default:
                return false;
        }
    }

    public static boolean T(ArrayList arrayList, Element element) {
        int i;
        int size = arrayList.size();
        int i2 = size - 1;
        if (i2 >= 256) {
            i = size - 257;
        } else {
            i = 0;
        }
        while (i2 >= i) {
            if (((Element) arrayList.get(i2)) == element) {
                return true;
            }
            i2--;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00b3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void A(org.jsoup.nodes.Element r9) {
        /*
            r8 = this;
            org.jsoup.nodes.FormElement r0 = r8.r
            if (r0 == 0) goto L23
            org.jsoup.parser.Tag r0 = r9.tag()
            java.lang.String r0 = r0.f22597c
            java.lang.String r1 = "http://www.w3.org/1999/xhtml"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L23
            java.lang.String r0 = r9.normalName()
            java.lang.String[] r1 = org.jsoup.parser.HtmlTreeBuilder.O
            boolean r0 = org.jsoup.internal.StringUtil.inSorted(r0, r1)
            if (r0 == 0) goto L23
            org.jsoup.nodes.FormElement r0 = r8.r
            r0.addElement(r9)
        L23:
            org.jsoup.parser.Parser r0 = r8.f22608a
            org.jsoup.parser.ParseErrorList r0 = r0.getErrors()
            boolean r0 = r0.a()
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L72
            java.lang.String r0 = "xmlns"
            boolean r3 = r9.hasAttr(r0)
            if (r3 == 0) goto L72
            java.lang.String r3 = r9.attr(r0)
            org.jsoup.parser.Tag r4 = r9.tag()
            java.lang.String r4 = r4.namespace()
            boolean r3 = r3.equals(r4)
            if (r3 != 0) goto L72
            java.lang.String r0 = r9.attr(r0)
            java.lang.String r3 = r9.tagName()
            r4 = 2
            java.lang.Object[] r4 = new java.lang.Object[r4]
            r4[r2] = r0
            r4[r1] = r3
            org.jsoup.parser.Parser r0 = r8.f22608a
            org.jsoup.parser.ParseErrorList r0 = r0.getErrors()
            boolean r3 = r0.a()
            if (r3 == 0) goto L72
            org.jsoup.parser.ParseError r3 = new org.jsoup.parser.ParseError
            org.jsoup.parser.CharacterReader r5 = r8.b
            java.lang.String r6 = "Invalid xmlns attribute [%s] on tag [%s]"
            r3.<init>(r5, r6, r4)
            r0.add(r3)
        L72:
            boolean r0 = r8.y
            if (r0 == 0) goto Lb7
            org.jsoup.nodes.Element r0 = r8.b()
            java.lang.String r0 = r0.normalName()
            java.lang.String[] r3 = org.jsoup.parser.HtmlTreeBuilderState.Constants.z
            boolean r0 = org.jsoup.internal.StringUtil.inSorted(r0, r3)
            if (r0 == 0) goto Lb7
            java.lang.String r0 = "table"
            org.jsoup.nodes.Element r0 = r8.E(r0)
            if (r0 == 0) goto La1
            org.jsoup.nodes.Element r3 = r0.parent()
            if (r3 == 0) goto L99
            org.jsoup.nodes.Element r2 = r0.parent()
            goto Laa
        L99:
            org.jsoup.nodes.Element r1 = r8.t(r0)
        L9d:
            r7 = r2
            r2 = r1
            r1 = r7
            goto Laa
        La1:
            java.util.ArrayList r1 = r8.e
            java.lang.Object r1 = r1.get(r2)
            org.jsoup.nodes.Element r1 = (org.jsoup.nodes.Element) r1
            goto L9d
        Laa:
            if (r1 == 0) goto Lb3
            org.jsoup.helper.Validate.notNull(r0)
            r0.before(r9)
            goto Lbe
        Lb3:
            r2.appendChild(r9)
            goto Lbe
        Lb7:
            org.jsoup.nodes.Element r0 = r8.b()
            r0.appendChild(r9)
        Lbe:
            java.util.ArrayList r0 = r8.e
            r0.add(r9)
            r8.j(r9)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jsoup.parser.HtmlTreeBuilder.A(org.jsoup.nodes.Element):void");
    }

    public final void B(HtmlTreeBuilderState htmlTreeBuilderState) {
        if (this.f22608a.getErrors().a()) {
            this.f22608a.getErrors().add(new ParseError(this.b, "Unexpected %s token [%s] when in state [%s]", this.g.getClass().getSimpleName(), this.g, htmlTreeBuilderState));
        }
    }

    public final void C(String str) {
        while (StringUtil.inSorted(b().normalName(), I)) {
            if (str == null || !c(str)) {
                l();
            } else {
                return;
            }
        }
    }

    public final void D(boolean z) {
        String[] strArr;
        if (z) {
            strArr = J;
        } else {
            strArr = I;
        }
        while (Parser.NamespaceHtml.equals(b().tag().namespace()) && StringUtil.inSorted(b().normalName(), strArr)) {
            l();
        }
    }

    public final Element E(String str) {
        int i;
        int size = this.e.size();
        int i2 = size - 1;
        if (i2 >= 256) {
            i = size - 257;
        } else {
            i = 0;
        }
        while (i2 >= i) {
            Element element = (Element) this.e.get(i2);
            if (element.elementIs(str, Parser.NamespaceHtml)) {
                return element;
            }
            i2--;
        }
        return null;
    }

    public final boolean F(String str) {
        String[] strArr = this.A;
        strArr[0] = str;
        return I(strArr, B, F);
    }

    public final boolean G(String str) {
        String[] strArr = this.A;
        strArr[0] = str;
        return I(strArr, B, null);
    }

    public final boolean H(String str) {
        for (int size = this.e.size() - 1; size >= 0; size--) {
            String normalName = ((Element) this.e.get(size)).normalName();
            if (normalName.equals(str)) {
                return true;
            }
            if (!StringUtil.inSorted(normalName, H)) {
                return false;
            }
        }
        return false;
    }

    public final boolean I(String[] strArr, String[] strArr2, String[] strArr3) {
        int i;
        int size = this.e.size();
        int i2 = size - 1;
        if (i2 > 100) {
            i = size - 101;
        } else {
            i = 0;
        }
        while (i2 >= i) {
            Element element = (Element) this.e.get(i2);
            String normalName = element.normalName();
            String namespace = element.tag().namespace();
            if (namespace.equals(Parser.NamespaceHtml)) {
                if (StringUtil.inSorted(normalName, strArr)) {
                    return true;
                }
                if (StringUtil.inSorted(normalName, strArr2)) {
                    break;
                }
                if (strArr3 != null && StringUtil.inSorted(normalName, strArr3)) {
                    break;
                }
                i2--;
            } else {
                if (strArr2 == B) {
                    if (namespace.equals(Parser.NamespaceMathml)) {
                        if (StringUtil.inSorted(normalName, C)) {
                            break;
                        }
                    }
                    if (namespace.equals(Parser.NamespaceSvg) && StringUtil.inSorted(normalName, D)) {
                        break;
                    }
                } else {
                    continue;
                }
                i2--;
            }
        }
        return false;
    }

    public final boolean J(String str) {
        String[] strArr = this.A;
        strArr[0] = str;
        return I(strArr, G, null);
    }

    public final void K(Token.Character character) {
        L(character, b());
    }

    public final void L(Token.Character character, Element element) {
        Node textNode;
        String e = character.d.e();
        if (character instanceof Token.CData) {
            textNode = new CDataNode(e);
        } else if (element.tag().is(Tag.Data)) {
            textNode = new DataNode(e);
        } else {
            textNode = new TextNode(e);
        }
        element.appendChild(textNode);
        j(textNode);
    }

    public final void M(Token.Comment comment) {
        Comment comment2 = new Comment(comment.d.e());
        b().appendChild(comment2);
        j(comment2);
    }

    public final Element N(Token.StartTag startTag) {
        Element z = z(startTag, Parser.NamespaceHtml, false);
        A(z);
        if (startTag.f) {
            Tag tag = z.tag();
            tag.h |= Tag.SeenSelfClose;
            if (tag.isKnownTag() && (tag.isEmpty() || tag.isSelfClosing())) {
                this.f22609c.o(TokeniserState.f22607c);
                Tokeniser tokeniser = this.f22609c;
                Token.EndTag endTag = this.w;
                endTag.f();
                endTag.k(z.tagName());
                tokeniser.h(endTag);
                return z;
            }
            Tokeniser tokeniser2 = this.f22609c;
            Object[] objArr = {tag.normalName()};
            ParseErrorList parseErrorList = tokeniser2.b;
            if (parseErrorList.a()) {
                parseErrorList.add(new ParseError(tokeniser2.f22605a, "Tag [%s] cannot be self-closing; not a void tag", objArr));
            }
        }
        return z;
    }

    public final Element O(Token.StartTag startTag) {
        Element z = z(startTag, Parser.NamespaceHtml, false);
        A(z);
        l();
        return z;
    }

    public final void P(Token.StartTag startTag, String str) {
        Element z = z(startTag, str, true);
        A(z);
        if (startTag.f) {
            z.tag().h |= Tag.SeenSelfClose;
            l();
        }
    }

    public final void Q(Token.StartTag startTag, boolean z, boolean z2) {
        FormElement formElement = (FormElement) z(startTag, Parser.NamespaceHtml, false);
        if (z2) {
            if (!S("template")) {
                this.r = formElement;
            }
        } else {
            this.r = formElement;
        }
        A(formElement);
        if (!z) {
            l();
        }
    }

    public final boolean S(String str) {
        if (E(str) != null) {
            return true;
        }
        return false;
    }

    public final boolean U(String[] strArr) {
        int i;
        int size = this.e.size();
        int i2 = size - 1;
        if (i2 > 100) {
            i = size - 101;
        } else {
            i = 0;
        }
        while (i2 >= i) {
            if (!StringUtil.inSorted(((Element) this.e.get(i2)).normalName(), strArr)) {
                return true;
            }
            i2--;
        }
        return false;
    }

    public final void V(String str) {
        for (int size = this.e.size() - 1; size >= 0 && !l().elementIs(str, Parser.NamespaceHtml); size--) {
        }
    }

    public final void W() {
        if (this.u.size() > 0) {
        }
    }

    public final void X(HtmlTreeBuilderState htmlTreeBuilderState) {
        this.u.add(htmlTreeBuilderState);
    }

    public final void Y() {
        Element element;
        if (this.e.size() <= 256) {
            boolean z = true;
            if (this.t.size() > 0) {
                element = (Element) android.support.v4.media.a.c(1, this.t);
            } else {
                element = null;
            }
            if (element != null && !T(this.e, element)) {
                int size = this.t.size();
                int i = size - 12;
                if (i < 0) {
                    i = 0;
                }
                int i2 = size - 1;
                int i3 = i2;
                while (i3 != i) {
                    i3--;
                    element = (Element) this.t.get(i3);
                    if (element == null || T(this.e, element)) {
                        z = false;
                        break;
                    }
                }
                while (true) {
                    if (!z) {
                        i3++;
                        element = (Element) this.t.get(i3);
                    }
                    Validate.notNull(element);
                    Element element2 = new Element(q(element.nodeName(), element.normalName(), Parser.NamespaceHtml, this.h), null, element.attributes().clone());
                    A(element2);
                    this.t.set(i3, element2);
                    if (i3 != i2) {
                        z = false;
                    } else {
                        return;
                    }
                }
            }
        }
    }

    public final void Z(Element element) {
        for (int size = this.t.size() - 1; size >= 0; size--) {
            if (((Element) this.t.get(size)) == element) {
                this.t.remove(size);
                return;
            }
        }
    }

    @Override // org.jsoup.parser.TreeBuilder
    public final List a() {
        Element element = this.s;
        if (element != null) {
            List<Node> siblingNodes = element.siblingNodes();
            if (!siblingNodes.isEmpty()) {
                this.s.insertChildren(-1, siblingNodes);
            }
            return this.s.childNodes();
        }
        return this.d.childNodes();
    }

    public final void a0(Element element) {
        for (int size = this.e.size() - 1; size >= 0; size--) {
            if (((Element) this.e.get(size)) == element) {
                this.e.remove(size);
                i(element);
                return;
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:21:0x0057. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:67:0x0115. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:80:0x014f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0154 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean b0() {
        /*
            Method dump skipped, instructions count: 486
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jsoup.parser.HtmlTreeBuilder.b0():boolean");
    }

    @Override // org.jsoup.parser.TreeBuilder
    public final ParseSettings d() {
        return ParseSettings.htmlDefault;
    }

    @Override // org.jsoup.parser.TreeBuilder
    public final void f(Reader reader, String str, Parser parser) {
        super.f(reader, str, parser);
        this.n = HtmlTreeBuilderState.f22586c;
        this.o = null;
        this.p = false;
        this.q = null;
        this.r = null;
        this.s = null;
        this.t = new ArrayList();
        this.u = new ArrayList();
        this.v = new ArrayList();
        this.w = new Token.EndTag(this);
        this.x = true;
        this.y = false;
        this.z = false;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x004f, code lost:
    
        if (r1.equals("script") == false) goto L9;
     */
    @Override // org.jsoup.parser.TreeBuilder
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void g(org.jsoup.nodes.Element r6) {
        /*
            r5 = this;
            org.jsoup.parser.HtmlTreeBuilderState$1 r0 = org.jsoup.parser.HtmlTreeBuilderState.f22586c
            r5.n = r0
            r0 = 1
            r5.z = r0
            if (r6 == 0) goto Lb9
            java.lang.String r1 = r6.normalName()
            org.jsoup.nodes.Element r2 = new org.jsoup.nodes.Element
            java.lang.String r3 = "http://www.w3.org/1999/xhtml"
            org.jsoup.parser.ParseSettings r4 = r5.h
            org.jsoup.parser.Tag r3 = r5.q(r1, r1, r3, r4)
            java.lang.String r4 = r5.f
            r2.<init>(r3, r4)
            r5.s = r2
            org.jsoup.nodes.Document r2 = r6.ownerDocument()
            if (r2 == 0) goto L31
            org.jsoup.nodes.Document r2 = r5.d
            org.jsoup.nodes.Document r3 = r6.ownerDocument()
            org.jsoup.nodes.Document$QuirksMode r3 = r3.quirksMode()
            r2.quirksMode(r3)
        L31:
            r1.getClass()
            int r2 = r1.hashCode()
            r3 = -1
            switch(r2) {
                case -1321546630: goto L52;
                case -907685685: goto L49;
                case 1973234167: goto L3e;
                default: goto L3c;
            }
        L3c:
            r0 = r3
            goto L5c
        L3e:
            java.lang.String r0 = "plaintext"
            boolean r0 = r1.equals(r0)
            if (r0 != 0) goto L47
            goto L3c
        L47:
            r0 = 2
            goto L5c
        L49:
            java.lang.String r2 = "script"
            boolean r1 = r1.equals(r2)
            if (r1 != 0) goto L5c
            goto L3c
        L52:
            java.lang.String r0 = "template"
            boolean r0 = r1.equals(r0)
            if (r0 != 0) goto L5b
            goto L3c
        L5b:
            r0 = 0
        L5c:
            switch(r0) {
                case 0: goto L89;
                case 1: goto L81;
                case 2: goto L79;
                default: goto L5f;
            }
        L5f:
            org.jsoup.nodes.Element r0 = r5.s
            org.jsoup.parser.Tag r0 = r0.tag()
            org.jsoup.parser.TokeniserState r0 = r0.b()
            if (r0 == 0) goto L71
            org.jsoup.parser.Tokeniser r1 = r5.f22609c
            r1.o(r0)
            goto L95
        L71:
            org.jsoup.parser.Tokeniser r0 = r5.f22609c
            org.jsoup.parser.TokeniserState$1 r1 = org.jsoup.parser.TokeniserState.f22607c
            r0.o(r1)
            goto L95
        L79:
            org.jsoup.parser.Tokeniser r0 = r5.f22609c
            org.jsoup.parser.TokeniserState$7 r1 = org.jsoup.parser.TokeniserState.k
            r0.o(r1)
            goto L95
        L81:
            org.jsoup.parser.Tokeniser r0 = r5.f22609c
            org.jsoup.parser.TokeniserState$6 r1 = org.jsoup.parser.TokeniserState.j
            r0.o(r1)
            goto L95
        L89:
            org.jsoup.parser.Tokeniser r0 = r5.f22609c
            org.jsoup.parser.TokeniserState$1 r1 = org.jsoup.parser.TokeniserState.f22607c
            r0.o(r1)
            org.jsoup.parser.HtmlTreeBuilderState$18 r0 = org.jsoup.parser.HtmlTreeBuilderState.v
            r5.X(r0)
        L95:
            org.jsoup.nodes.Document r0 = r5.d
            org.jsoup.nodes.Element r1 = r5.s
            r0.appendChild(r1)
            org.jsoup.nodes.Element r0 = r5.s
            java.util.ArrayList r1 = r5.e
            r1.add(r0)
            r5.j(r0)
            r5.b0()
        La9:
            if (r6 == 0) goto Lb9
            boolean r0 = r6 instanceof org.jsoup.nodes.FormElement
            if (r0 == 0) goto Lb4
            org.jsoup.nodes.FormElement r6 = (org.jsoup.nodes.FormElement) r6
            r5.r = r6
            return
        Lb4:
            org.jsoup.nodes.Element r6 = r6.parent()
            goto La9
        Lb9:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jsoup.parser.HtmlTreeBuilder.g(org.jsoup.nodes.Element):void");
    }

    @Override // org.jsoup.parser.TreeBuilder
    public final TreeBuilder h() {
        return new HtmlTreeBuilder();
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0058, code lost:
    
        if ("malignmark".equals(r3.e) == false) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0060, code lost:
    
        if (r8.f22600a == org.jsoup.parser.Token.TokenType.Character) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00b2, code lost:
    
        if (r2.equals("application/xhtml+xml") == false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00db, code lost:
    
        if (r8.f22600a != org.jsoup.parser.Token.TokenType.Character) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00cf, code lost:
    
        if (org.jsoup.internal.StringUtil.in(r0.tagName(), org.jsoup.parser.HtmlTreeBuilder.N) != false) goto L44;
     */
    @Override // org.jsoup.parser.TreeBuilder
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m(org.jsoup.parser.Token r8) {
        /*
            r7 = this;
            java.util.ArrayList r0 = r7.e
            boolean r0 = r0.isEmpty()
            r1 = 1
            if (r0 == 0) goto Lb
            goto Le2
        Lb:
            org.jsoup.nodes.Element r0 = r7.b()
            org.jsoup.parser.Tag r2 = r0.tag()
            java.lang.String r2 = r2.namespace()
            java.lang.String r3 = "http://www.w3.org/1999/xhtml"
            boolean r3 = r3.equals(r2)
            if (r3 == 0) goto L21
            goto Le2
        L21:
            org.jsoup.parser.Tag r3 = r0.tag()
            java.lang.String r3 = r3.namespace()
            java.lang.String r4 = "http://www.w3.org/1998/Math/MathML"
            boolean r3 = r4.equals(r3)
            if (r3 == 0) goto L64
            java.lang.String r3 = r0.normalName()
            java.lang.String[] r5 = org.jsoup.parser.HtmlTreeBuilder.M
            boolean r3 = org.jsoup.internal.StringUtil.inSorted(r3, r5)
            if (r3 == 0) goto L64
            boolean r3 = r8.e()
            if (r3 == 0) goto L5c
            r3 = r8
            org.jsoup.parser.Token$StartTag r3 = (org.jsoup.parser.Token.StartTag) r3
            java.lang.String r5 = r3.e
            java.lang.String r6 = "mglyph"
            boolean r5 = r6.equals(r5)
            if (r5 != 0) goto L5c
            java.lang.String r5 = "malignmark"
            java.lang.String r3 = r3.e
            boolean r3 = r5.equals(r3)
            if (r3 != 0) goto L5c
            goto Le2
        L5c:
            org.jsoup.parser.Token$TokenType r3 = r8.f22600a
            org.jsoup.parser.Token$TokenType r5 = org.jsoup.parser.Token.TokenType.Character
            if (r3 != r5) goto L64
            goto Le2
        L64:
            boolean r2 = r4.equals(r2)
            java.lang.String r3 = "annotation-xml"
            if (r2 == 0) goto L86
            boolean r2 = r0.nameIs(r3)
            if (r2 == 0) goto L86
            boolean r2 = r8.e()
            if (r2 == 0) goto L86
            r2 = r8
            org.jsoup.parser.Token$StartTag r2 = (org.jsoup.parser.Token.StartTag) r2
            java.lang.String r2 = r2.e
            java.lang.String r5 = "svg"
            boolean r2 = r5.equals(r2)
            if (r2 == 0) goto L86
            goto Le2
        L86:
            org.jsoup.parser.Tag r2 = r0.tag()
            java.lang.String r2 = r2.namespace()
            boolean r2 = r4.equals(r2)
            if (r2 == 0) goto Lb5
            boolean r2 = r0.nameIs(r3)
            if (r2 == 0) goto Lb5
            java.lang.String r2 = "encoding"
            java.lang.String r2 = r0.attr(r2)
            java.lang.String r2 = org.jsoup.internal.Normalizer.normalize(r2)
            java.lang.String r3 = "text/html"
            boolean r3 = r2.equals(r3)
            if (r3 != 0) goto Ld1
            java.lang.String r3 = "application/xhtml+xml"
            boolean r2 = r2.equals(r3)
            if (r2 == 0) goto Lb5
            goto Ld1
        Lb5:
            org.jsoup.parser.Tag r2 = r0.tag()
            java.lang.String r2 = r2.namespace()
            java.lang.String r3 = "http://www.w3.org/2000/svg"
            boolean r2 = r3.equals(r2)
            if (r2 == 0) goto Lde
            java.lang.String r0 = r0.tagName()
            java.lang.String[] r2 = org.jsoup.parser.HtmlTreeBuilder.N
            boolean r0 = org.jsoup.internal.StringUtil.in(r0, r2)
            if (r0 == 0) goto Lde
        Ld1:
            boolean r0 = r8.e()
            if (r0 != 0) goto Le2
            org.jsoup.parser.Token$TokenType r0 = r8.f22600a
            org.jsoup.parser.Token$TokenType r2 = org.jsoup.parser.Token.TokenType.Character
            if (r0 != r2) goto Lde
            goto Le2
        Lde:
            boolean r1 = r8.c()
        Le2:
            if (r1 == 0) goto Le7
            org.jsoup.parser.HtmlTreeBuilderState r0 = r7.n
            goto Le9
        Le7:
            org.jsoup.parser.HtmlTreeBuilderState$24 r0 = org.jsoup.parser.HtmlTreeBuilderState.B
        Le9:
            boolean r8 = r0.d(r8, r7)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jsoup.parser.HtmlTreeBuilder.m(org.jsoup.parser.Token):boolean");
    }

    public final Element t(Element element) {
        if (!T(this.e, element)) {
            return null;
        }
        for (int size = this.e.size() - 1; size > 0; size--) {
            if (((Element) this.e.get(size)) == element) {
                return (Element) this.e.get(size - 1);
            }
        }
        return null;
    }

    public String toString() {
        return "TreeBuilder{currentToken=" + this.g + ", state=" + this.n + ", currentElement=" + b() + '}';
    }

    public final void u(Element element) {
        int size = this.t.size();
        int i = size - 13;
        int i2 = 0;
        if (i < 0) {
            i = 0;
        }
        for (int i3 = size - 1; i3 >= i; i3--) {
            Element element2 = (Element) this.t.get(i3);
            if (element2 != null) {
                if (element.normalName().equals(element2.normalName()) && element.attributes().equals(element2.attributes())) {
                    i2++;
                }
                if (i2 == 3) {
                    this.t.remove(i3);
                    return;
                }
            } else {
                return;
            }
        }
    }

    public final void v() {
        Element element;
        while (!this.t.isEmpty()) {
            int size = this.t.size();
            if (size > 0) {
                element = (Element) this.t.remove(size - 1);
            } else {
                element = null;
            }
            if (element == null) {
                return;
            }
        }
    }

    public final void w(String... strArr) {
        for (int size = this.e.size() - 1; size >= 0; size--) {
            Element element = (Element) this.e.get(size);
            if (!Parser.NamespaceHtml.equals(element.tag().namespace()) || (!StringUtil.in(element.normalName(), strArr) && !element.nameIs("html"))) {
                l();
            } else {
                return;
            }
        }
    }

    public final void x() {
        w("table", "template");
    }

    public final void y() {
        w("tr", "template");
    }

    public final Element z(Token.StartTag startTag, String str, boolean z) {
        ParseSettings parseSettings;
        Attributes attributes = startTag.g;
        if (attributes != null && !attributes.isEmpty()) {
            if (!z && !this.h.b) {
                attributes.normalize();
            }
            if (attributes.deduplicate(this.h) > 0) {
                Object[] objArr = {startTag.e};
                ParseErrorList errors = this.f22608a.getErrors();
                if (errors.a()) {
                    errors.add(new ParseError(this.b, "Dropped duplicate attribute(s) in tag [%s]", objArr));
                }
            }
        }
        String e = startTag.d.e();
        String str2 = startTag.e;
        if (z) {
            parseSettings = ParseSettings.preserveCase;
        } else {
            parseSettings = this.h;
        }
        Tag q = q(e, str2, str, parseSettings);
        if (q.normalName().equals("form")) {
            return new FormElement(q, null, attributes);
        }
        return new Element(q, null, attributes);
    }
}
