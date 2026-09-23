package org.jsoup.helper;

import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.RequestConfiguration;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathExpressionException;
import javax.xml.xpath.XPathFactory;
import javax.xml.xpath.XPathFactoryConfigurationException;
import org.jsoup.internal.Normalizer;
import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Attribute;
import org.jsoup.nodes.Comment;
import org.jsoup.nodes.DataNode;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.TextNode;
import org.jsoup.parser.HtmlTreeBuilder;
import org.jsoup.select.NodeVisitor;
import org.jsoup.select.Selector;
import org.jsoup.select.d;
import org.w3c.dom.DOMException;
import org.w3c.dom.DOMImplementation;
import org.w3c.dom.Document;
import org.w3c.dom.DocumentType;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/* loaded from: classes4.dex */
public class W3CDom {
    public static final String SourceProperty = "jsoupSource";
    public static final String XPathFactoryProperty = "javax.xml.xpath.XPathFactory:jsoup";

    /* renamed from: a, reason: collision with root package name */
    public final DocumentBuilderFactory f22544a;
    public boolean b = true;

    /* loaded from: classes4.dex */
    public static class W3CBuilder implements NodeVisitor {

        /* renamed from: c, reason: collision with root package name */
        public final Document f22545c;
        public Node g;
        public final Element i;
        public boolean f = true;
        public Document.OutputSettings.Syntax h = Document.OutputSettings.Syntax.xml;

        public W3CBuilder(org.w3c.dom.Document document) {
            this.f22545c = document;
            this.g = document;
            this.i = (Element) document.getUserData("jsoupContextSource");
        }

        public final void a(Node node, org.jsoup.nodes.Node node2) {
            node.setUserData(W3CDom.SourceProperty, node2, null);
            this.g.appendChild(node);
        }

        public final void b(Element element, org.w3c.dom.Element element2, Attribute attribute, Document.OutputSettings.Syntax syntax) {
            int indexOf;
            String validKey = Attribute.getValidKey(attribute.getKey(), syntax);
            if (validKey != null) {
                String namespace = attribute.namespace();
                if (this.f && !namespace.isEmpty()) {
                    element2.setAttributeNS(namespace, validKey, attribute.getValue());
                } else {
                    element2.setAttribute(validKey, attribute.getValue());
                }
                if (this.f && namespace.isEmpty() && (indexOf = validKey.indexOf(58)) != -1) {
                    String substring = validKey.substring(0, indexOf);
                    if (!substring.equals("xmlns")) {
                        org.jsoup.nodes.Document ownerDocument = element.ownerDocument();
                        if (ownerDocument != null && (ownerDocument.parser().getTreeBuilder() instanceof HtmlTreeBuilder)) {
                            for (Element element3 = element; element3 != null; element3 = element3.parent()) {
                                String attr = element3.attr("xmlns:".concat(substring));
                                if (!attr.isEmpty()) {
                                    element2.setAttributeNS(attr, validKey, element.attr(validKey));
                                    return;
                                }
                            }
                        }
                        element2.setAttribute("xmlns:".concat(substring), AdError.UNDEFINED_DOMAIN);
                    }
                }
            }
        }

        @Override // org.jsoup.select.NodeVisitor
        /* renamed from: head */
        public void mo2head(org.jsoup.nodes.Node node, int i) {
            String str;
            boolean z = node instanceof Element;
            org.w3c.dom.Document document = this.f22545c;
            if (z) {
                Element element = (Element) node;
                if (this.f) {
                    str = element.tag().namespace();
                } else {
                    str = null;
                }
                String xmlSafeTagName = Normalizer.xmlSafeTagName(element.tagName());
                if (str == null) {
                    try {
                        if (xmlSafeTagName.contains(":")) {
                            str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                        }
                    } catch (DOMException unused) {
                        a(document.createTextNode("<" + xmlSafeTagName + ">"), element);
                        return;
                    }
                }
                org.w3c.dom.Element createElementNS = document.createElementNS(str, xmlSafeTagName);
                Iterator<Attribute> it = element.attributes().iterator();
                while (it.hasNext()) {
                    Attribute next = it.next();
                    try {
                        b(element, createElementNS, next, this.h);
                    } catch (DOMException unused2) {
                        Document.OutputSettings.Syntax syntax = this.h;
                        Document.OutputSettings.Syntax syntax2 = Document.OutputSettings.Syntax.xml;
                        if (syntax != syntax2) {
                            b(element, createElementNS, next, syntax2);
                        }
                    }
                }
                a(createElementNS, element);
                if (element == this.i) {
                    document.setUserData("jsoupContextNode", createElementNS, null);
                }
                this.g = createElementNS;
                return;
            }
            if (node instanceof TextNode) {
                TextNode textNode = (TextNode) node;
                a(document.createTextNode(textNode.getWholeText()), textNode);
            } else if (node instanceof Comment) {
                Comment comment = (Comment) node;
                a(document.createComment(comment.getData()), comment);
            } else if (node instanceof DataNode) {
                DataNode dataNode = (DataNode) node;
                a(document.createTextNode(dataNode.getWholeData()), dataNode);
            }
        }

        @Override // org.jsoup.select.NodeVisitor
        /* renamed from: tail */
        public void mo3tail(org.jsoup.nodes.Node node, int i) {
            if ((node instanceof Element) && (this.g.getParentNode() instanceof org.w3c.dom.Element)) {
                this.g = this.g.getParentNode();
            }
        }

        @Override // org.jsoup.select.NodeVisitor, org.jsoup.select.NodeFilter
        public final /* synthetic */ void traverse(org.jsoup.nodes.Node node) {
            d.b(this, node);
        }
    }

    public W3CDom() {
        DocumentBuilderFactory newInstance = DocumentBuilderFactory.newInstance();
        this.f22544a = newInstance;
        newInstance.setNamespaceAware(true);
    }

    public static HashMap<String, String> OutputHtml() {
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("method", "html");
        return hashMap;
    }

    public static HashMap<String, String> OutputXml() {
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("method", "xml");
        return hashMap;
    }

    public static String asString(org.w3c.dom.Document document, Map<String, String> map) {
        try {
            DOMSource dOMSource = new DOMSource(document);
            StringWriter stringWriter = new StringWriter();
            StreamResult streamResult = new StreamResult(stringWriter);
            Transformer newTransformer = TransformerFactory.newInstance().newTransformer();
            if (map != null) {
                Properties properties = new Properties();
                properties.putAll(map);
                newTransformer.setOutputProperties(properties);
            }
            if (document.getDoctype() != null) {
                DocumentType doctype = document.getDoctype();
                if (!StringUtil.isBlank(doctype.getPublicId())) {
                    newTransformer.setOutputProperty("doctype-public", doctype.getPublicId());
                }
                if (!StringUtil.isBlank(doctype.getSystemId())) {
                    newTransformer.setOutputProperty("doctype-system", doctype.getSystemId());
                } else if (doctype.getName().equalsIgnoreCase("html") && StringUtil.isBlank(doctype.getPublicId()) && StringUtil.isBlank(doctype.getSystemId())) {
                    newTransformer.setOutputProperty("doctype-system", "about:legacy-compat");
                }
            }
            newTransformer.transform(dOMSource, streamResult);
            return stringWriter.toString();
        } catch (TransformerException e) {
            throw new IllegalStateException(e);
        }
    }

    public static org.w3c.dom.Document convert(org.jsoup.nodes.Document document) {
        return new W3CDom().fromJsoup(document);
    }

    public Node contextNode(org.w3c.dom.Document document) {
        return (Node) document.getUserData("jsoupContextNode");
    }

    public org.w3c.dom.Document fromJsoup(org.jsoup.nodes.Document document) {
        return fromJsoup((Element) document);
    }

    public boolean namespaceAware() {
        return this.b;
    }

    public NodeList selectXpath(String str, org.w3c.dom.Document document) {
        return selectXpath(str, (Node) document);
    }

    public <T extends org.jsoup.nodes.Node> List<T> sourceNodes(NodeList nodeList, Class<T> cls) {
        Validate.notNull(nodeList);
        Validate.notNull(cls);
        ArrayList arrayList = new ArrayList(nodeList.getLength());
        for (int i = 0; i < nodeList.getLength(); i++) {
            Object userData = nodeList.item(i).getUserData(SourceProperty);
            if (cls.isInstance(userData)) {
                arrayList.add(cls.cast(userData));
            }
        }
        return arrayList;
    }

    public void convert(org.jsoup.nodes.Document document, org.w3c.dom.Document document2) {
        convert((Element) document, document2);
    }

    public org.w3c.dom.Document fromJsoup(Element element) {
        Validate.notNull(element);
        try {
            DocumentBuilder newDocumentBuilder = this.f22544a.newDocumentBuilder();
            DOMImplementation dOMImplementation = newDocumentBuilder.getDOMImplementation();
            org.w3c.dom.Document newDocument = newDocumentBuilder.newDocument();
            org.jsoup.nodes.Document ownerDocument = element.ownerDocument();
            org.jsoup.nodes.DocumentType documentType = ownerDocument != null ? ownerDocument.documentType() : null;
            if (documentType != null) {
                try {
                    newDocument.appendChild(dOMImplementation.createDocumentType(documentType.name(), documentType.publicId(), documentType.systemId()));
                } catch (DOMException unused) {
                }
            }
            newDocument.setXmlStandalone(true);
            newDocument.setUserData("jsoupContextSource", element instanceof org.jsoup.nodes.Document ? element.firstElementChild() : element, null);
            if (ownerDocument != null) {
                element = ownerDocument;
            }
            convert(element, newDocument);
            return newDocument;
        } catch (ParserConfigurationException e) {
            throw new IllegalStateException(e);
        }
    }

    public W3CDom namespaceAware(boolean z) {
        this.b = z;
        this.f22544a.setNamespaceAware(z);
        return this;
    }

    public NodeList selectXpath(String str, Node node) {
        XPathFactory newInstance;
        Validate.notEmptyParam(str, "xpath");
        Validate.notNullParam(node, "contextNode");
        try {
            if (System.getProperty(XPathFactoryProperty) != null) {
                newInstance = XPathFactory.newInstance("jsoup");
            } else {
                newInstance = XPathFactory.newInstance();
            }
            NodeList nodeList = (NodeList) newInstance.newXPath().compile(str).evaluate(node, XPathConstants.NODESET);
            Validate.notNull(nodeList);
            return nodeList;
        } catch (XPathExpressionException e) {
            e = e;
            throw new Selector.SelectorParseException(e, "Could not evaluate XPath query [%s]: %s", str, e.getMessage());
        } catch (XPathFactoryConfigurationException e2) {
            e = e2;
            throw new Selector.SelectorParseException(e, "Could not evaluate XPath query [%s]: %s", str, e.getMessage());
        }
    }

    public void convert(Element element, org.w3c.dom.Document document) {
        W3CBuilder w3CBuilder = new W3CBuilder(document);
        w3CBuilder.f = this.b;
        org.jsoup.nodes.Document ownerDocument = element.ownerDocument();
        if (ownerDocument != null) {
            if (!StringUtil.isBlank(ownerDocument.location())) {
                document.setDocumentURI(ownerDocument.location());
            }
            w3CBuilder.h = ownerDocument.outputSettings().syntax();
        }
        if (element instanceof org.jsoup.nodes.Document) {
            element = element.firstElementChild();
        }
        d.b(w3CBuilder, element);
    }

    public String asString(org.w3c.dom.Document document) {
        return asString(document, null);
    }
}
