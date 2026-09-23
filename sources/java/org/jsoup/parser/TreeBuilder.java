package org.jsoup.parser;

import java.io.Reader;
import java.util.ArrayList;
import java.util.List;
import org.jsoup.helper.Validate;
import org.jsoup.internal.SharedConstants;
import org.jsoup.nodes.Attributes;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;
import org.jsoup.nodes.Range;
import org.jsoup.parser.Token;
import org.jsoup.select.NodeVisitor;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public abstract class TreeBuilder {

    /* renamed from: a, reason: collision with root package name */
    public Parser f22608a;
    public CharacterReader b;

    /* renamed from: c, reason: collision with root package name */
    public Tokeniser f22609c;
    public Document d;
    public ArrayList e;
    public String f;
    public Token g;
    public ParseSettings h;
    public TagSet i;
    public NodeVisitor j;
    public Token.StartTag k;
    public final Token.EndTag l = new Token.EndTag(this);
    public boolean m;

    public abstract List a();

    public final Element b() {
        int size = this.e.size();
        if (size > 0) {
            return (Element) this.e.get(size - 1);
        }
        return this.d;
    }

    public final boolean c(String str) {
        Element b;
        if (this.e.size() != 0 && (b = b()) != null && b.normalName().equals(str) && b.tag().namespace().equals(Parser.NamespaceHtml)) {
            return true;
        }
        return false;
    }

    public abstract ParseSettings d();

    public String defaultNamespace() {
        return Parser.NamespaceHtml;
    }

    public TagSet e() {
        return TagSet.Html();
    }

    public void f(Reader reader, String str, Parser parser) {
        boolean z;
        Validate.notNullParam(reader, "input");
        Validate.notNullParam(str, "baseUri");
        Validate.notNull(parser);
        Document document = new Document(parser.defaultNamespace(), str);
        this.d = document;
        document.parser(parser);
        this.f22608a = parser;
        this.h = parser.settings();
        this.b = new CharacterReader(reader);
        this.m = parser.isTrackPosition();
        CharacterReader characterReader = this.b;
        if (!parser.isTrackErrors() && !this.m) {
            z = false;
        } else {
            z = true;
        }
        characterReader.trackNewlines(z);
        if (parser.isTrackErrors()) {
            parser.getErrors().clear();
        }
        this.f22609c = new Tokeniser(this);
        this.e = new ArrayList(32);
        this.i = parser.tagSet();
        Token.StartTag startTag = new Token.StartTag(this);
        this.k = startTag;
        this.g = startTag;
        this.f = str;
        j(this.d);
    }

    public void g(Element element) {
    }

    public abstract TreeBuilder h();

    public final void i(Node node) {
        s(node, false);
        NodeVisitor nodeVisitor = this.j;
        if (nodeVisitor != null) {
            nodeVisitor.mo3tail(node, this.e.size());
        }
    }

    public final void j(Node node) {
        s(node, true);
        NodeVisitor nodeVisitor = this.j;
        if (nodeVisitor != null) {
            nodeVisitor.mo2head(node, this.e.size());
        }
    }

    public final List k(Reader reader, Element element, String str, Parser parser) {
        f(reader, str, parser);
        g(element);
        do {
        } while (p());
        CharacterReader characterReader = this.b;
        if (characterReader != null) {
            characterReader.close();
            this.b = null;
            this.f22609c = null;
            this.e = null;
        }
        return a();
    }

    public Element l() {
        Element element = (Element) this.e.remove(this.e.size() - 1);
        i(element);
        return element;
    }

    public abstract boolean m(Token token);

    public final boolean n(String str) {
        Token token = this.g;
        Token.EndTag endTag = this.l;
        if (token == endTag) {
            Token.EndTag endTag2 = new Token.EndTag(this);
            endTag2.k(str);
            return m(endTag2);
        }
        endTag.f();
        endTag.k(str);
        return m(endTag);
    }

    public final void o(String str) {
        Token.StartTag startTag = this.k;
        if (this.g == startTag) {
            Token.StartTag startTag2 = new Token.StartTag(this);
            startTag2.k(str);
            m(startTag2);
        } else {
            startTag.f();
            startTag.k(str);
            m(startTag);
        }
    }

    public final boolean p() {
        if (this.g.f22600a == Token.TokenType.EOF) {
            ArrayList arrayList = this.e;
            if (arrayList == null) {
                return false;
            }
            if (arrayList.isEmpty()) {
                i(this.d);
                this.e = null;
                return true;
            }
            l();
            return true;
        }
        Tokeniser tokeniser = this.f22609c;
        Token.Character character = tokeniser.k;
        while (!tokeniser.e) {
            tokeniser.f22606c.d(tokeniser, tokeniser.f22605a);
        }
        boolean c2 = character.d.c();
        Token token = character;
        if (!c2) {
            tokeniser.e = false;
            token = tokeniser.d;
        }
        this.g = token;
        m(token);
        token.f();
        return true;
    }

    public final Tag q(String str, String str2, String str3, ParseSettings parseSettings) {
        return this.i.c(str, str2, str3, parseSettings.preserveTagCase());
    }

    public final Tag r(Token.StartTag startTag) {
        return this.i.c(startTag.d.e(), startTag.e, defaultNamespace(), this.h.preserveTagCase());
    }

    public final void s(Node node, boolean z) {
        String str;
        if (this.m) {
            Token token = this.g;
            int i = token.b;
            int i2 = token.f22601c;
            if (node instanceof Element) {
                Element element = (Element) node;
                if (token.c()) {
                    if (element.endSourceRange().isTracked()) {
                        return;
                    } else {
                        i = this.b.pos();
                    }
                } else if (!z) {
                }
                i2 = i;
            }
            Range range = new Range(new Range.Position(i, this.b.l(i), this.b.d(i)), new Range.Position(i2, this.b.l(i2), this.b.d(i2)));
            Attributes attributes = node.attributes();
            if (z) {
                str = SharedConstants.RangeKey;
            } else {
                str = SharedConstants.EndRangeKey;
            }
            attributes.userData(str, range);
        }
    }
}
