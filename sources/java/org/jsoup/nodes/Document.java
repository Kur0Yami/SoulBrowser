package org.jsoup.nodes;

import com.google.android.gms.ads.RequestConfiguration;
import java.nio.charset.Charset;
import java.util.List;
import org.jsoup.Connection;
import org.jsoup.Jsoup;
import org.jsoup.helper.DataUtil;
import org.jsoup.helper.Validate;
import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Entities;
import org.jsoup.parser.ParseSettings;
import org.jsoup.parser.Parser;
import org.jsoup.parser.Tag;
import org.jsoup.select.Elements;
import org.jsoup.select.Evaluator;

/* loaded from: classes4.dex */
public class Document extends Element {
    public static final Evaluator.Tag t = new Evaluator.Tag("title");
    public Connection o;
    public OutputSettings p;
    public Parser q;
    public QuirksMode r;
    public final String s;

    /* loaded from: classes4.dex */
    public static class OutputSettings implements Cloneable {

        /* renamed from: c, reason: collision with root package name */
        public Entities.EscapeMode f22566c = Entities.EscapeMode.base;
        public Charset f = DataUtil.UTF_8;
        public boolean g = true;
        public boolean h = false;
        public int i = 1;
        public int j = 30;
        public Syntax k = Syntax.html;

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        /* loaded from: classes4.dex */
        public static final class Syntax {

            /* renamed from: c, reason: collision with root package name */
            public static final /* synthetic */ Syntax[] f22567c;
            public static final Syntax html;
            public static final Syntax xml;

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, org.jsoup.nodes.Document$OutputSettings$Syntax] */
            /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, org.jsoup.nodes.Document$OutputSettings$Syntax] */
            static {
                ?? r0 = new Enum("html", 0);
                html = r0;
                ?? r1 = new Enum("xml", 1);
                xml = r1;
                f22567c = new Syntax[]{r0, r1};
            }

            public static Syntax valueOf(String str) {
                return (Syntax) Enum.valueOf(Syntax.class, str);
            }

            public static Syntax[] values() {
                return (Syntax[]) f22567c.clone();
            }
        }

        public Charset charset() {
            return this.f;
        }

        public Entities.EscapeMode escapeMode() {
            return this.f22566c;
        }

        public int indentAmount() {
            return this.i;
        }

        public int maxPaddingWidth() {
            return this.j;
        }

        public boolean outline() {
            return this.h;
        }

        public boolean prettyPrint() {
            return this.g;
        }

        public Syntax syntax() {
            return this.k;
        }

        public OutputSettings charset(Charset charset) {
            this.f = charset;
            return this;
        }

        public OutputSettings clone() {
            try {
                OutputSettings outputSettings = (OutputSettings) super.clone();
                outputSettings.charset(this.f.name());
                outputSettings.f22566c = Entities.EscapeMode.valueOf(this.f22566c.name());
                return outputSettings;
            } catch (CloneNotSupportedException e) {
                throw new RuntimeException(e);
            }
        }

        public OutputSettings escapeMode(Entities.EscapeMode escapeMode) {
            this.f22566c = escapeMode;
            return this;
        }

        public OutputSettings indentAmount(int i) {
            Validate.isTrue(i >= 0);
            this.i = i;
            return this;
        }

        public OutputSettings maxPaddingWidth(int i) {
            Validate.isTrue(i >= -1);
            this.j = i;
            return this;
        }

        public OutputSettings outline(boolean z) {
            this.h = z;
            return this;
        }

        public OutputSettings prettyPrint(boolean z) {
            this.g = z;
            return this;
        }

        public OutputSettings syntax(Syntax syntax) {
            this.k = syntax;
            if (syntax == Syntax.xml) {
                escapeMode(Entities.EscapeMode.xhtml);
            }
            return this;
        }

        public OutputSettings charset(String str) {
            charset(Charset.forName(str));
            return this;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes4.dex */
    public static final class QuirksMode {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ QuirksMode[] f22568c;
        public static final QuirksMode limitedQuirks;
        public static final QuirksMode noQuirks;
        public static final QuirksMode quirks;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [org.jsoup.nodes.Document$QuirksMode, java.lang.Enum] */
        /* JADX WARN: Type inference failed for: r1v1, types: [org.jsoup.nodes.Document$QuirksMode, java.lang.Enum] */
        /* JADX WARN: Type inference failed for: r3v1, types: [org.jsoup.nodes.Document$QuirksMode, java.lang.Enum] */
        static {
            ?? r0 = new Enum("noQuirks", 0);
            noQuirks = r0;
            ?? r1 = new Enum("quirks", 1);
            quirks = r1;
            ?? r3 = new Enum("limitedQuirks", 2);
            limitedQuirks = r3;
            f22568c = new QuirksMode[]{r0, r1, r3};
        }

        public static QuirksMode valueOf(String str) {
            return (QuirksMode) Enum.valueOf(QuirksMode.class, str);
        }

        public static QuirksMode[] values() {
            return (QuirksMode[]) f22568c.clone();
        }
    }

    public Document(String str, String str2) {
        this(str, str2, Parser.htmlParser());
    }

    public static Document createShell(String str) {
        Validate.notNull(str);
        Document document = new Document(str);
        Element appendElement = document.appendElement("html");
        appendElement.appendElement("head");
        appendElement.appendElement("body");
        return document;
    }

    public Element body() {
        Element firstElementChild = firstElementChild();
        while (true) {
            if (firstElementChild != null) {
                if (firstElementChild.nameIs("html")) {
                    break;
                }
                firstElementChild = firstElementChild.nextElementSibling();
            } else {
                firstElementChild = appendElement("html");
                break;
            }
        }
        for (Element firstElementChild2 = firstElementChild.firstElementChild(); firstElementChild2 != null; firstElementChild2 = firstElementChild2.nextElementSibling()) {
            if (firstElementChild2.nameIs("body") || firstElementChild2.nameIs("frameset")) {
                return firstElementChild2;
            }
        }
        return firstElementChild.appendElement("body");
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x005e, code lost:
    
        if (r3.name().equals("xml") != false) goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void charset(java.nio.charset.Charset r3) {
        /*
            r2 = this;
            org.jsoup.nodes.Document$OutputSettings r0 = r2.p
            r0.charset(r3)
            org.jsoup.nodes.Document$OutputSettings r3 = r2.outputSettings()
            org.jsoup.nodes.Document$OutputSettings$Syntax r3 = r3.syntax()
            org.jsoup.nodes.Document$OutputSettings$Syntax r0 = org.jsoup.nodes.Document.OutputSettings.Syntax.html
            if (r3 != r0) goto L46
            java.lang.String r3 = "meta[charset]"
            org.jsoup.nodes.Element r3 = r2.selectFirst(r3)
            java.lang.String r0 = "charset"
            if (r3 == 0) goto L27
            java.nio.charset.Charset r1 = r2.charset()
            java.lang.String r1 = r1.displayName()
            r3.attr(r0, r1)
            goto L3c
        L27:
            org.jsoup.nodes.Element r3 = r2.head()
            java.lang.String r1 = "meta"
            org.jsoup.nodes.Element r3 = r3.appendElement(r1)
            java.nio.charset.Charset r1 = r2.charset()
            java.lang.String r1 = r1.displayName()
            r3.attr(r0, r1)
        L3c:
            java.lang.String r3 = "meta[name=charset]"
            org.jsoup.select.Elements r3 = r2.select(r3)
            r3.remove2()
            return
        L46:
            org.jsoup.nodes.Document$OutputSettings$Syntax r0 = org.jsoup.nodes.Document.OutputSettings.Syntax.xml
            if (r3 != r0) goto L7e
            org.jsoup.nodes.Node r3 = r2.firstChild()
            boolean r0 = r3 instanceof org.jsoup.nodes.XmlDeclaration
            java.lang.String r1 = "xml"
            if (r0 == 0) goto L61
            org.jsoup.nodes.XmlDeclaration r3 = (org.jsoup.nodes.XmlDeclaration) r3
            java.lang.String r0 = r3.name()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L61
            goto L6a
        L61:
            org.jsoup.nodes.XmlDeclaration r3 = new org.jsoup.nodes.XmlDeclaration
            r0 = 0
            r3.<init>(r1, r0)
            r2.prependChild(r3)
        L6a:
            java.lang.String r0 = "version"
            java.lang.String r1 = "1.0"
            r3.attr(r0, r1)
            java.nio.charset.Charset r0 = r2.charset()
            java.lang.String r0 = r0.displayName()
            java.lang.String r1 = "encoding"
            r3.attr(r1, r0)
        L7e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jsoup.nodes.Document.charset(java.nio.charset.Charset):void");
    }

    public Connection connection() {
        Connection connection = this.o;
        return connection == null ? Jsoup.newSession() : connection;
    }

    public Element createElement(String str) {
        String str2;
        Tag valueOf = this.q.tagSet().valueOf(str, this.q.defaultNamespace(), ParseSettings.preserveCase);
        Element element = this;
        while (true) {
            if (element != null) {
                Attributes attributes = element.j;
                if (attributes != null) {
                    String str3 = Element.n;
                    if (attributes.hasKey(str3)) {
                        str2 = element.j.get(str3);
                        break;
                    }
                }
                element = element.parent();
            } else {
                str2 = null;
                break;
            }
        }
        return new Element(valueOf, str2);
    }

    public DocumentType documentType() {
        Element.NodeList nodeList = this.i;
        int size = nodeList.size();
        int i = 0;
        while (i < size) {
            Node node = nodeList.get(i);
            i++;
            Node node2 = node;
            if (node2 instanceof DocumentType) {
                return (DocumentType) node2;
            }
            if (!(node2 instanceof LeafNode)) {
                return null;
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public FormElement expectForm(String str) {
        Elements select = select(str);
        int size = select.size();
        int i = 0;
        while (i < size) {
            T t2 = select.get(i);
            i++;
            Element element = (Element) t2;
            if (element instanceof FormElement) {
                return (FormElement) element;
            }
        }
        Validate.fail("No form elements matched the query '%s' in the document.", str);
        return null;
    }

    public List<FormElement> forms() {
        return select("form").forms();
    }

    public Element head() {
        Element firstElementChild = firstElementChild();
        while (true) {
            if (firstElementChild != null) {
                if (firstElementChild.nameIs("html")) {
                    break;
                }
                firstElementChild = firstElementChild.nextElementSibling();
            } else {
                firstElementChild = appendElement("html");
                break;
            }
        }
        for (Element firstElementChild2 = firstElementChild.firstElementChild(); firstElementChild2 != null; firstElementChild2 = firstElementChild2.nextElementSibling()) {
            if (firstElementChild2.nameIs("head")) {
                return firstElementChild2;
            }
        }
        return firstElementChild.prependElement("head");
    }

    public String location() {
        return this.s;
    }

    @Override // org.jsoup.nodes.Element, org.jsoup.nodes.Node
    public String nodeName() {
        return "#document";
    }

    @Override // org.jsoup.nodes.Node
    public String outerHtml() {
        return super.html();
    }

    public OutputSettings outputSettings() {
        return this.p;
    }

    public Parser parser() {
        return this.q;
    }

    public QuirksMode quirksMode() {
        return this.r;
    }

    @Override // org.jsoup.nodes.Element
    public Element text(String str) {
        body().text(str);
        return this;
    }

    public String title() {
        Element selectFirst = head().selectFirst(t);
        return selectFirst != null ? StringUtil.normaliseWhitespace(selectFirst.text()).trim() : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    }

    public Document(String str, String str2, Parser parser) {
        super(new Tag("#root", str), str2);
        this.p = new OutputSettings();
        this.r = QuirksMode.noQuirks;
        this.s = str2;
        this.q = parser;
    }

    public Document outputSettings(OutputSettings outputSettings) {
        Validate.notNull(outputSettings);
        this.p = outputSettings;
        return this;
    }

    public Document parser(Parser parser) {
        this.q = parser;
        return this;
    }

    public Document quirksMode(QuirksMode quirksMode) {
        this.r = quirksMode;
        return this;
    }

    public Document connection(Connection connection) {
        Validate.notNull(connection);
        this.o = connection;
        return this;
    }

    @Override // org.jsoup.nodes.Element, org.jsoup.nodes.Node
    public Document shallowClone() {
        Document document = new Document(tag().namespace(), baseUri(), this.q);
        Attributes attributes = this.j;
        if (attributes != null) {
            document.j = attributes.clone();
        }
        document.p = this.p.clone();
        return document;
    }

    public void title(String str) {
        Validate.notNull(str);
        Element selectFirst = head().selectFirst(t);
        if (selectFirst == null) {
            selectFirst = head().appendElement("title");
        }
        selectFirst.text(str);
    }

    @Override // org.jsoup.nodes.Element, org.jsoup.nodes.Node
    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public Document mo1499clone() {
        Document document = (Document) super.mo1499clone();
        Attributes attributes = this.j;
        if (attributes != null) {
            document.j = attributes.clone();
        }
        document.p = this.p.clone();
        return document;
    }

    public Document(String str) {
        this(Parser.NamespaceHtml, str);
    }

    public Charset charset() {
        return this.p.charset();
    }
}
