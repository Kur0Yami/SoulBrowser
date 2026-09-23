package org.jsoup.parser;

import com.google.android.gms.ads.RequestConfiguration;
import java.io.Reader;
import java.io.StringReader;
import java.util.List;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.text.Typography;
import org.jsoup.helper.Validate;
import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;

/* loaded from: classes4.dex */
public class Parser implements Cloneable {
    public static final String NamespaceHtml = "http://www.w3.org/1999/xhtml";
    public static final String NamespaceMathml = "http://www.w3.org/1998/Math/MathML";
    public static final String NamespaceSvg = "http://www.w3.org/2000/svg";
    public static final String NamespaceXml = "http://www.w3.org/XML/1998/namespace";

    /* renamed from: c, reason: collision with root package name */
    public final TreeBuilder f22594c;
    public ParseErrorList f;
    public ParseSettings g;
    public boolean h;
    public TagSet i;
    public final ReentrantLock j;

    public Parser(TreeBuilder treeBuilder) {
        this.h = false;
        this.j = new ReentrantLock();
        this.f22594c = treeBuilder;
        this.g = treeBuilder.d();
        this.f = ParseErrorList.noTracking();
    }

    public static Parser htmlParser() {
        return new Parser(new HtmlTreeBuilder());
    }

    public static Document parse(String str, String str2) {
        HtmlTreeBuilder htmlTreeBuilder = new HtmlTreeBuilder();
        htmlTreeBuilder.f(new StringReader(str), str2, new Parser(htmlTreeBuilder));
        do {
        } while (htmlTreeBuilder.p());
        CharacterReader characterReader = htmlTreeBuilder.b;
        if (characterReader != null) {
            characterReader.close();
            htmlTreeBuilder.b = null;
            htmlTreeBuilder.f22609c = null;
            htmlTreeBuilder.e = null;
        }
        return htmlTreeBuilder.d;
    }

    public static Document parseBodyFragment(String str, String str2) {
        Document createShell = Document.createShell(str2);
        Element body = createShell.body();
        body.appendChildren(parseFragment(str, body, str2));
        return createShell;
    }

    public static List<Node> parseFragment(String str, Element element, String str2) {
        HtmlTreeBuilder htmlTreeBuilder = new HtmlTreeBuilder();
        return htmlTreeBuilder.k(new StringReader(str), element, str2, new Parser(htmlTreeBuilder));
    }

    public static List<Node> parseXmlFragment(String str, String str2) {
        XmlTreeBuilder xmlTreeBuilder = new XmlTreeBuilder();
        return xmlTreeBuilder.k(new StringReader(str), null, str2, new Parser(xmlTreeBuilder));
    }

    public static String unescapeEntities(String str, boolean z) {
        Validate.notNull(str);
        if (str.indexOf(38) < 0) {
            return str;
        }
        Parser htmlParser = htmlParser();
        htmlParser.f22594c.f(new StringReader(str), RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, htmlParser);
        Tokeniser tokeniser = new Tokeniser(htmlParser.f22594c);
        StringBuilder borrowBuilder = StringUtil.borrowBuilder();
        while (true) {
            CharacterReader characterReader = tokeniser.f22605a;
            if (!characterReader.isEmpty()) {
                borrowBuilder.append(characterReader.consumeTo(Typography.amp));
                if (characterReader.o(Typography.amp)) {
                    characterReader.consume();
                    int[] c2 = tokeniser.c(null, z);
                    if (c2 != null && c2.length != 0) {
                        borrowBuilder.appendCodePoint(c2[0]);
                        if (c2.length == 2) {
                            borrowBuilder.appendCodePoint(c2[1]);
                        }
                    } else {
                        borrowBuilder.append(Typography.amp);
                    }
                }
            } else {
                return StringUtil.releaseBuilder(borrowBuilder);
            }
        }
    }

    public static Parser xmlParser() {
        return new Parser(new XmlTreeBuilder());
    }

    public String defaultNamespace() {
        return getTreeBuilder().defaultNamespace();
    }

    public ParseErrorList getErrors() {
        return this.f;
    }

    public TreeBuilder getTreeBuilder() {
        return this.f22594c;
    }

    public boolean isTrackErrors() {
        if (this.f.f > 0) {
            return true;
        }
        return false;
    }

    public boolean isTrackPosition() {
        return this.h;
    }

    public Parser newInstance() {
        return new Parser(this);
    }

    public List<Node> parseFragmentInput(String str, Element element, String str2) {
        return parseFragmentInput(new StringReader(str), element, str2);
    }

    public Document parseInput(String str, String str2) {
        return parseInput(new StringReader(str), str2);
    }

    public Parser setTrackErrors(int i) {
        ParseErrorList noTracking;
        if (i > 0) {
            noTracking = ParseErrorList.tracking(i);
        } else {
            noTracking = ParseErrorList.noTracking();
        }
        this.f = noTracking;
        return this;
    }

    public Parser setTrackPosition(boolean z) {
        this.h = z;
        return this;
    }

    public Parser settings(ParseSettings parseSettings) {
        this.g = parseSettings;
        return this;
    }

    public Parser tagSet(TagSet tagSet) {
        Validate.notNull(tagSet);
        this.i = new TagSet(tagSet);
        return this;
    }

    public Parser clone() {
        return new Parser(this);
    }

    public List<Node> parseFragmentInput(Reader reader, Element element, String str) {
        ReentrantLock reentrantLock = this.j;
        try {
            reentrantLock.lock();
            return this.f22594c.k(reader, element, str, this);
        } finally {
            reentrantLock.unlock();
        }
    }

    public Document parseInput(Reader reader, String str) {
        ReentrantLock reentrantLock = this.j;
        try {
            reentrantLock.lock();
            TreeBuilder treeBuilder = this.f22594c;
            treeBuilder.f(reader, str, this);
            do {
            } while (treeBuilder.p());
            CharacterReader characterReader = treeBuilder.b;
            if (characterReader != null) {
                characterReader.close();
                treeBuilder.b = null;
                treeBuilder.f22609c = null;
                treeBuilder.e = null;
            }
            return treeBuilder.d;
        } finally {
            reentrantLock.unlock();
        }
    }

    public ParseSettings settings() {
        return this.g;
    }

    public static List<Node> parseFragment(String str, Element element, String str2, ParseErrorList parseErrorList) {
        HtmlTreeBuilder htmlTreeBuilder = new HtmlTreeBuilder();
        Parser parser = new Parser(htmlTreeBuilder);
        parser.f = parseErrorList;
        return htmlTreeBuilder.k(new StringReader(str), element, str2, parser);
    }

    public TagSet tagSet() {
        if (this.i == null) {
            this.i = this.f22594c.e();
        }
        return this.i;
    }

    public Parser(Parser parser) {
        this.h = false;
        this.j = new ReentrantLock();
        this.f22594c = parser.f22594c.h();
        ParseErrorList parseErrorList = parser.f;
        this.f = new ParseErrorList(parseErrorList.f22592c, parseErrorList.f);
        ParseSettings parseSettings = parser.g;
        this.g = new ParseSettings(parseSettings.f22593a, parseSettings.b);
        this.h = parser.h;
    }
}
