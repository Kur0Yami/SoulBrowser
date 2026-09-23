package org.jsoup.nodes;

import com.google.android.gms.ads.RequestConfiguration;
import j$.util.DesugarCollections;
import j$.util.Spliterators;
import j$.util.stream.Stream;
import j$.util.stream.StreamSupport;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.function.Consumer;
import org.jsoup.helper.Validate;
import org.jsoup.internal.QuietAppendable;
import org.jsoup.internal.SharedConstants;
import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.parser.ParseSettings;
import org.jsoup.select.NodeFilter;
import org.jsoup.select.NodeVisitor;
import org.jsoup.select.d;

/* loaded from: classes4.dex */
public abstract class Node implements Cloneable {
    public static final List g = Collections.EMPTY_LIST;

    /* renamed from: c, reason: collision with root package name */
    public Element f22576c;
    public int f;

    public final void a(int i, Node... nodeArr) {
        Validate.notNull(nodeArr);
        if (nodeArr.length == 0) {
            return;
        }
        List k = k();
        Node parent = nodeArr[0].parent();
        if (parent != null && parent.childNodeSize() == nodeArr.length) {
            List k2 = parent.k();
            int length = nodeArr.length;
            while (true) {
                int i2 = length - 1;
                if (length > 0) {
                    if (nodeArr[i2] != k2.get(i2)) {
                        break;
                    } else {
                        length = i2;
                    }
                } else {
                    parent.empty();
                    k.addAll(i, Arrays.asList(nodeArr));
                    int length2 = nodeArr.length;
                    while (true) {
                        int i3 = length2 - 1;
                        if (length2 > 0) {
                            nodeArr[i3].f22576c = (Element) this;
                            length2 = i3;
                        } else {
                            ((Element) this).i.f22569c = false;
                            return;
                        }
                    }
                }
            }
        }
        Validate.noNullElements(nodeArr);
        for (Node node : nodeArr) {
            r(node);
        }
        k.addAll(i, Arrays.asList(nodeArr));
        ((Element) this).i.f22569c = false;
    }

    public String absUrl(String str) {
        Validate.notEmpty(str);
        if (m() && attributes().hasKeyIgnoreCase(str)) {
            return StringUtil.resolve(baseUri(), attributes().getIgnoreCase(str));
        }
        return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    }

    public Node after(String str) {
        c(siblingIndex() + 1, str);
        return this;
    }

    public String attr(String str) {
        Validate.notNull(str);
        if (m()) {
            String ignoreCase = attributes().getIgnoreCase(str);
            if (ignoreCase.length() > 0) {
                return ignoreCase;
            }
            if (str.startsWith("abs:")) {
                return absUrl(str.substring(4));
            }
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    }

    public abstract Attributes attributes();

    public int attributesSize() {
        if (m()) {
            return attributes().size();
        }
        return 0;
    }

    public abstract String baseUri();

    public Node before(String str) {
        c(siblingIndex(), str);
        return this;
    }

    public final void c(int i, String str) {
        Validate.notNull(str);
        Validate.notNull(this.f22576c);
        Element element = this.f22576c;
        if (element == null) {
            element = null;
        }
        this.f22576c.a(i, (Node[]) NodeUtils.a(this).parseFragmentInput(str, element, baseUri()).toArray(new Node[0]));
    }

    public Node childNode(int i) {
        return (Node) k().get(i);
    }

    public abstract int childNodeSize();

    public List<Node> childNodes() {
        if (childNodeSize() == 0) {
            return g;
        }
        List k = k();
        ArrayList arrayList = new ArrayList(k.size());
        arrayList.addAll(k);
        return DesugarCollections.unmodifiableList(arrayList);
    }

    public List<Node> childNodesCopy() {
        List k = k();
        ArrayList arrayList = new ArrayList(k.size());
        Iterator it = k.iterator();
        while (it.hasNext()) {
            arrayList.add(((Node) it.next()).mo1499clone());
        }
        return arrayList;
    }

    public Node clearAttributes() {
        if (m()) {
            Iterator<Attribute> it = attributes().iterator();
            while (it.hasNext()) {
                it.next();
                it.remove();
            }
        }
        return this;
    }

    public abstract Node empty();

    public boolean equals(Object obj) {
        return this == obj;
    }

    public Node filter(NodeFilter nodeFilter) {
        Validate.notNull(nodeFilter);
        nodeFilter.traverse(this);
        return this;
    }

    public Node firstChild() {
        if (childNodeSize() == 0) {
            return null;
        }
        return (Node) k().get(0);
    }

    public Node firstSibling() {
        Element element = this.f22576c;
        if (element != null) {
            return element.firstChild();
        }
        return this;
    }

    public Node forEachNode(Consumer<? super Node> consumer) {
        Validate.notNull(consumer);
        nodeStream().forEach(consumer);
        return this;
    }

    public Node g(Node node) {
        int siblingIndex;
        Document ownerDocument;
        try {
            Node node2 = (Node) super.clone();
            node2.f22576c = (Element) node;
            if (node == null) {
                siblingIndex = 0;
            } else {
                siblingIndex = siblingIndex();
            }
            node2.f = siblingIndex;
            if (node == null && !(this instanceof Document) && (ownerDocument = ownerDocument()) != null) {
                Document shallowClone = ownerDocument.shallowClone();
                node2.f22576c = shallowClone;
                ((ArrayList) shallowClone.k()).add(node2);
            }
            return node2;
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    public boolean hasAttr(String str) {
        Validate.notNull(str);
        if (!m()) {
            return false;
        }
        if (str.startsWith("abs:")) {
            String substring = str.substring(4);
            if (attributes().hasKeyIgnoreCase(substring) && !absUrl(substring).isEmpty()) {
                return true;
            }
        }
        return attributes().hasKeyIgnoreCase(str);
    }

    public boolean hasParent() {
        if (this.f22576c != null) {
            return true;
        }
        return false;
    }

    public boolean hasSameValue(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return outerHtml().equals(((Node) obj).outerHtml());
        }
        return false;
    }

    public int hashCode() {
        return super.hashCode();
    }

    public <T extends Appendable> T html(T t) {
        d.b(Printer.f(this, QuietAppendable.wrap(t)), this);
        return t;
    }

    public abstract void i(String str);

    public abstract List k();

    public Node lastChild() {
        int childNodeSize = childNodeSize();
        if (childNodeSize == 0) {
            return null;
        }
        return (Node) k().get(childNodeSize - 1);
    }

    public Node lastSibling() {
        Element element = this.f22576c;
        if (element != null) {
            return element.lastChild();
        }
        return this;
    }

    public abstract boolean m();

    public boolean nameIs(String str) {
        return normalName().equals(str);
    }

    public Element nextElementSibling() {
        Node node = this;
        do {
            node = node.nextSibling();
            if (node == null) {
                return null;
            }
        } while (!(node instanceof Element));
        return (Element) node;
    }

    public Node nextSibling() {
        Element element = this.f22576c;
        if (element == null) {
            return null;
        }
        List k = element.k();
        int siblingIndex = siblingIndex() + 1;
        ArrayList arrayList = (ArrayList) k;
        if (arrayList.size() <= siblingIndex) {
            return null;
        }
        return (Node) arrayList.get(siblingIndex);
    }

    public abstract String nodeName();

    public Stream<Node> nodeStream() {
        return StreamSupport.stream(Spliterators.spliteratorUnknownSize(new NodeIterator(this, Node.class), 273), false);
    }

    public String nodeValue() {
        return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    }

    public String normalName() {
        return nodeName();
    }

    public String outerHtml() {
        StringBuilder borrowBuilder = StringUtil.borrowBuilder();
        d.b(Printer.f(this, QuietAppendable.wrap(borrowBuilder)), this);
        return StringUtil.releaseBuilder(borrowBuilder);
    }

    public Document ownerDocument() {
        for (Node node = this; node != null; node = node.f22576c) {
            if (node instanceof Document) {
                return (Document) node;
            }
        }
        return null;
    }

    public abstract void p(QuietAppendable quietAppendable, Document.OutputSettings outputSettings);

    public Node parent() {
        return this.f22576c;
    }

    public Element parentElement() {
        return this.f22576c;
    }

    public boolean parentElementIs(String str, String str2) {
        Element element = this.f22576c;
        if (element != null && element.elementIs(str, str2)) {
            return true;
        }
        return false;
    }

    public boolean parentNameIs(String str) {
        Element element = this.f22576c;
        if (element != null && element.normalName().equals(str)) {
            return true;
        }
        return false;
    }

    public final Node parentNode() {
        return this.f22576c;
    }

    public Element previousElementSibling() {
        Node node = this;
        do {
            node = node.previousSibling();
            if (node == null) {
                return null;
            }
        } while (!(node instanceof Element));
        return (Element) node;
    }

    public Node previousSibling() {
        if (this.f22576c == null || siblingIndex() <= 0) {
            return null;
        }
        return (Node) ((ArrayList) this.f22576c.k()).get(this.f - 1);
    }

    public void q(Node node) {
        boolean z;
        if (node.f22576c == this) {
            z = true;
        } else {
            z = false;
        }
        Validate.isTrue(z);
        Element element = (Element) this;
        if (element.i.f22569c) {
            ((ArrayList) k()).remove(node.f);
        } else {
            ((ArrayList) k()).remove(node);
        }
        element.i.f22569c = false;
        node.f22576c = null;
    }

    public final void r(Node node) {
        node.getClass();
        Validate.notNull(this);
        Element element = node.f22576c;
        if (element != null) {
            element.q(node);
        }
        node.f22576c = (Element) this;
    }

    public void remove() {
        Element element = this.f22576c;
        if (element != null) {
            element.q(this);
        }
    }

    public Node removeAttr(String str) {
        Validate.notNull(str);
        if (m()) {
            attributes().removeIgnoreCase(str);
        }
        return this;
    }

    public void replaceWith(Node node) {
        Validate.notNull(node);
        if (this.f22576c == null) {
            this.f22576c = node.f22576c;
        }
        Validate.notNull(this.f22576c);
        this.f22576c.s(this, node);
    }

    public Node root() {
        Node node = this;
        while (true) {
            Element element = node.f22576c;
            if (element != null) {
                node = element;
            } else {
                return node;
            }
        }
    }

    public final void s(Node node, Node node2) {
        boolean z;
        if (node.f22576c == this) {
            z = true;
        } else {
            z = false;
        }
        Validate.isTrue(z);
        Validate.notNull(node2);
        if (node == node2) {
            return;
        }
        Element element = node2.f22576c;
        if (element != null) {
            element.q(node2);
        }
        int siblingIndex = node.siblingIndex();
        k().set(siblingIndex, node2);
        node2.f22576c = (Element) this;
        node2.f = siblingIndex;
        node.f22576c = null;
    }

    public void setBaseUri(String str) {
        Validate.notNull(str);
        i(str);
    }

    public Node shallowClone() {
        return g(null);
    }

    public int siblingIndex() {
        Element element = this.f22576c;
        if (element != null) {
            Element.NodeList nodeList = element.i;
            if (!nodeList.f22569c) {
                int size = nodeList.size();
                for (int i = 0; i < size; i++) {
                    element.i.get(i).f = i;
                }
                element.i.f22569c = true;
            }
        }
        return this.f;
    }

    public List<Node> siblingNodes() {
        Element element = this.f22576c;
        if (element == null) {
            return Collections.EMPTY_LIST;
        }
        ArrayList arrayList = (ArrayList) element.k();
        ArrayList arrayList2 = new ArrayList(arrayList.size() - 1);
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            Node node = (Node) obj;
            if (node != this) {
                arrayList2.add(node);
            }
        }
        return arrayList2;
    }

    public Range sourceRange() {
        Object userData;
        Range range = Range.d;
        if (m() && (userData = attributes().userData(SharedConstants.RangeKey)) != null) {
            return (Range) userData;
        }
        return range;
    }

    public String toString() {
        return outerHtml();
    }

    public Node traverse(NodeVisitor nodeVisitor) {
        Validate.notNull(nodeVisitor);
        nodeVisitor.traverse(this);
        return this;
    }

    public Node unwrap() {
        Validate.notNull(this.f22576c);
        Node firstChild = firstChild();
        this.f22576c.a(siblingIndex(), (Node[]) k().toArray(new Node[0]));
        remove();
        return firstChild;
    }

    public Node wrap(String str) {
        Validate.notEmpty(str);
        Element element = this.f22576c;
        if (element == null) {
            if (this instanceof Element) {
                element = (Element) this;
            } else {
                element = null;
            }
        }
        List<Node> parseFragmentInput = NodeUtils.a(this).parseFragmentInput(str, element, baseUri());
        Node node = parseFragmentInput.get(0);
        if (node instanceof Element) {
            Element element2 = (Element) node;
            Element element3 = element2;
            for (Element firstElementChild = element2.firstElementChild(); firstElementChild != null; firstElementChild = firstElementChild.firstElementChild()) {
                element3 = firstElementChild;
            }
            Element element4 = this.f22576c;
            if (element4 != null) {
                element4.s(this, element2);
            }
            List k = element3.k();
            Node node2 = new Node[]{this}[0];
            element3.r(node2);
            ArrayList arrayList = (ArrayList) k;
            arrayList.add(node2);
            node2.f = arrayList.size() - 1;
            if (parseFragmentInput.size() > 0) {
                for (int i = 0; i < parseFragmentInput.size(); i++) {
                    Node node3 = parseFragmentInput.get(i);
                    if (element2 != node3) {
                        Element element5 = node3.f22576c;
                        if (element5 != null) {
                            element5.q(node3);
                        }
                        element2.after(node3);
                    }
                }
            }
        }
        return this;
    }

    public Node after(Node node) {
        Validate.notNull(node);
        Validate.notNull(this.f22576c);
        if (node.f22576c == this.f22576c) {
            node.remove();
        }
        this.f22576c.a(siblingIndex() + 1, node);
        return this;
    }

    public Node before(Node node) {
        Validate.notNull(node);
        Validate.notNull(this.f22576c);
        if (node.f22576c == this.f22576c) {
            node.remove();
        }
        this.f22576c.a(siblingIndex(), node);
        return this;
    }

    @Override // 
    /* renamed from: clone */
    public Node mo1499clone() {
        Node g2 = g(null);
        LinkedList linkedList = new LinkedList();
        linkedList.add(g2);
        while (!linkedList.isEmpty()) {
            Node node = (Node) linkedList.remove();
            int childNodeSize = node.childNodeSize();
            for (int i = 0; i < childNodeSize; i++) {
                List k = node.k();
                Node g3 = ((Node) k.get(i)).g(node);
                k.set(i, g3);
                linkedList.add(g3);
            }
        }
        return g2;
    }

    public <T extends Node> Stream<T> nodeStream(Class<T> cls) {
        return StreamSupport.stream(Spliterators.spliteratorUnknownSize(new NodeIterator(this, cls), 273), false);
    }

    public Node attr(String str, String str2) {
        Document ownerDocument = ownerDocument();
        attributes().p((ownerDocument != null ? ownerDocument.parser().settings() : ParseSettings.htmlDefault).normalizeAttribute(str), str2);
        return this;
    }
}
