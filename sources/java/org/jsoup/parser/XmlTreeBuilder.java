package org.jsoup.parser;

import com.google.android.gms.ads.RequestConfiguration;
import java.io.Reader;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.jsoup.helper.Validate;
import org.jsoup.internal.SharedConstants;
import org.jsoup.nodes.Attribute;
import org.jsoup.nodes.Attributes;
import org.jsoup.nodes.CDataNode;
import org.jsoup.nodes.Comment;
import org.jsoup.nodes.DataNode;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.DocumentType;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Entities;
import org.jsoup.nodes.Node;
import org.jsoup.nodes.TextNode;
import org.jsoup.nodes.XmlDeclaration;
import org.jsoup.parser.Token;
import org.jsoup.select.Elements;

/* loaded from: classes4.dex */
public class XmlTreeBuilder extends TreeBuilder {
    public final ArrayDeque n = new ArrayDeque();

    /* renamed from: org.jsoup.parser.XmlTreeBuilder$1, reason: invalid class name */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f22610a;

        static {
            int[] iArr = new int[Token.TokenType.values().length];
            f22610a = iArr;
            try {
                iArr[Token.TokenType.StartTag.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f22610a[Token.TokenType.EndTag.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f22610a[Token.TokenType.Comment.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f22610a[Token.TokenType.Character.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f22610a[Token.TokenType.Doctype.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f22610a[Token.TokenType.XmlDecl.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f22610a[Token.TokenType.EOF.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public static void t(Attributes attributes, HashMap hashMap) {
        Iterator<Attribute> it = attributes.iterator();
        while (it.hasNext()) {
            Attribute next = it.next();
            String key = next.getKey();
            String value = next.getValue();
            if (key.equals("xmlns")) {
                hashMap.put(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, value);
            } else if (key.startsWith("xmlns:")) {
                hashMap.put(key.substring(6), value);
            }
        }
    }

    @Override // org.jsoup.parser.TreeBuilder
    public final List a() {
        return this.d.childNodes();
    }

    @Override // org.jsoup.parser.TreeBuilder
    public final ParseSettings d() {
        return ParseSettings.preserveCase;
    }

    @Override // org.jsoup.parser.TreeBuilder
    public String defaultNamespace() {
        return Parser.NamespaceXml;
    }

    @Override // org.jsoup.parser.TreeBuilder
    public final TagSet e() {
        return new TagSet();
    }

    @Override // org.jsoup.parser.TreeBuilder
    public final void f(Reader reader, String str, Parser parser) {
        super.f(reader, str, parser);
        this.d.outputSettings().syntax(Document.OutputSettings.Syntax.xml).escapeMode(Entities.EscapeMode.xhtml).prettyPrint(false);
        ArrayDeque arrayDeque = this.n;
        arrayDeque.clear();
        HashMap hashMap = new HashMap();
        hashMap.put("xml", Parser.NamespaceXml);
        hashMap.put(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, Parser.NamespaceXml);
        arrayDeque.push(hashMap);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.jsoup.parser.TreeBuilder
    public final void g(Element element) {
        if (element != null) {
            TokeniserState b = element.tag().b();
            if (b != null) {
                this.f22609c.o(b);
            }
            Elements parents = element.parents();
            parents.add(0, element);
            for (int size = parents.size() - 1; size >= 0; size--) {
                Element element2 = (Element) parents.get(size);
                ArrayDeque arrayDeque = this.n;
                HashMap hashMap = new HashMap((Map) arrayDeque.peek());
                arrayDeque.push(hashMap);
                if (element2.attributesSize() > 0) {
                    t(element2.attributes(), hashMap);
                }
            }
        }
    }

    @Override // org.jsoup.parser.TreeBuilder
    public final TreeBuilder h() {
        return new XmlTreeBuilder();
    }

    @Override // org.jsoup.parser.TreeBuilder
    public final Element l() {
        this.n.pop();
        return super.l();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // org.jsoup.parser.TreeBuilder
    public final boolean m(Token token) {
        String str;
        Node textNode;
        this.g = token;
        Element element = null;
        switch (AnonymousClass1.f22610a[token.f22600a.ordinal()]) {
            case 1:
                Token.StartTag startTag = (Token.StartTag) token;
                ArrayDeque arrayDeque = this.n;
                HashMap hashMap = new HashMap((Map) arrayDeque.peek());
                arrayDeque.push(hashMap);
                Attributes attributes = startTag.g;
                if (attributes != null) {
                    if (!this.h.b) {
                        attributes.normalize();
                    }
                    attributes.deduplicate(this.h);
                    t(attributes, hashMap);
                    HashMap hashMap2 = new HashMap();
                    Iterator<Attribute> it = attributes.iterator();
                    while (it.hasNext()) {
                        String prefix = it.next().prefix();
                        if (!prefix.isEmpty() && !prefix.equals("xmlns") && (str = (String) hashMap.get(prefix)) != null) {
                            hashMap2.put(SharedConstants.XmlnsAttr.concat(prefix), str);
                        }
                    }
                    for (Map.Entry entry : hashMap2.entrySet()) {
                        attributes.userData((String) entry.getKey(), entry.getValue());
                    }
                }
                String e = startTag.d.e();
                String str2 = (String) hashMap.get(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                int indexOf = e.indexOf(58);
                if (indexOf > 0) {
                    String substring = e.substring(0, indexOf);
                    if (hashMap.containsKey(substring)) {
                        str2 = (String) hashMap.get(substring);
                    }
                }
                Tag q = q(e, startTag.e, str2, this.h);
                Element element2 = new Element(q, null, attributes);
                b().appendChild(element2);
                this.e.add(element2);
                j(element2);
                if (startTag.f) {
                    q.h |= Tag.SeenSelfClose;
                    l();
                    return true;
                }
                if (q.isEmpty()) {
                    l();
                    return true;
                }
                TokeniserState b = q.b();
                if (b != null) {
                    this.f22609c.o(b);
                }
                return true;
            case 2:
                Object normalizeTag = this.h.normalizeTag(((Token.EndTag) token).d.e());
                int size = this.e.size();
                int i = size - 1 >= 256 ? size - 257 : 0;
                int size2 = this.e.size() - 1;
                while (true) {
                    if (size2 >= i) {
                        Element element3 = (Element) this.e.get(size2);
                        if (element3.nodeName().equals(normalizeTag)) {
                            element = element3;
                        } else {
                            size2--;
                        }
                    }
                }
                if (element != null) {
                    for (int size3 = this.e.size() - 1; size3 >= 0 && l() != element; size3--) {
                    }
                }
                return true;
            case 3:
                Node comment = new Comment(((Token.Comment) token).d.e());
                b().appendChild(comment);
                j(comment);
                return true;
            case 4:
                Token.Character character = (Token.Character) token;
                String e2 = character.d.e();
                if (character instanceof Token.CData) {
                    textNode = new CDataNode(e2);
                } else if (b().tag().is(Tag.Data)) {
                    textNode = new DataNode(e2);
                } else {
                    textNode = new TextNode(e2);
                }
                b().appendChild(textNode);
                j(textNode);
                return true;
            case 5:
                Token.Doctype doctype = (Token.Doctype) token;
                DocumentType documentType = new DocumentType(this.h.normalizeTag(doctype.d.e()), doctype.f.e(), doctype.g.e());
                documentType.setPubSysKey(doctype.e);
                b().appendChild(documentType);
                j(documentType);
                return true;
            case 6:
                Token.XmlDecl xmlDecl = (Token.XmlDecl) token;
                Node xmlDeclaration = new XmlDeclaration(xmlDecl.d.e(), xmlDecl.q);
                if (xmlDecl.g != null) {
                    xmlDeclaration.attributes().addAll(xmlDecl.g);
                }
                b().appendChild(xmlDeclaration);
                j(xmlDeclaration);
                return true;
            case 7:
                return true;
            default:
                Validate.fail("Unexpected token type: " + token.f22600a);
                return true;
        }
    }
}
