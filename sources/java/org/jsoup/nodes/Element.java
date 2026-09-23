package org.jsoup.nodes;

import com.google.android.datatransport.runtime.scheduling.jobscheduling.c;
import com.google.android.gms.ads.RequestConfiguration;
import j$.lang.Iterable;
import j$.util.Collection;
import j$.util.Spliterator;
import j$.util.Spliterators;
import j$.util.stream.Collectors;
import j$.util.stream.Stream;
import j$.util.stream.StreamSupport;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.Spliterator;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.Consumer;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
import kotlin.text.Typography;
import org.jsoup.helper.Validate;
import org.jsoup.internal.Normalizer;
import org.jsoup.internal.QuietAppendable;
import org.jsoup.internal.SharedConstants;
import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Document;
import org.jsoup.parser.ParseSettings;
import org.jsoup.parser.Parser;
import org.jsoup.parser.Tag;
import org.jsoup.parser.TokenQueue;
import org.jsoup.select.Collector;
import org.jsoup.select.Elements;
import org.jsoup.select.Evaluator;
import org.jsoup.select.NodeFilter;
import org.jsoup.select.NodeVisitor;
import org.jsoup.select.Nodes;
import org.jsoup.select.Selector;
import org.jsoup.select.d;

/* loaded from: classes4.dex */
public class Element extends Node implements Iterable<Element>, Iterable {
    public static final List k = Collections.EMPTY_LIST;
    public static final NodeList l = new NodeList(0);
    public static final Pattern m = Pattern.compile("\\s+");
    public static final String n = "/baseUri";
    public Tag h;
    public NodeList i;
    public Attributes j;

    /* loaded from: classes4.dex */
    public static final class NodeList extends ArrayList<Node> {

        /* renamed from: c, reason: collision with root package name */
        public boolean f22569c;

        public NodeList(int i) {
            super(i);
            this.f22569c = true;
        }

        public final int a() {
            return ((ArrayList) this).modCount;
        }
    }

    /* loaded from: classes4.dex */
    public static class TextAccumulator implements NodeVisitor {

        /* renamed from: c, reason: collision with root package name */
        public final StringBuilder f22570c;

        public TextAccumulator(StringBuilder sb) {
            this.f22570c = sb;
        }

        @Override // org.jsoup.select.NodeVisitor
        /* renamed from: head */
        public final void mo2head(Node node, int i) {
            boolean z = node instanceof TextNode;
            StringBuilder sb = this.f22570c;
            if (z) {
                Element.t(sb, (TextNode) node);
                return;
            }
            if (node instanceof Element) {
                Element element = (Element) node;
                if (sb.length() > 0) {
                    if ((element.isBlock() || element.nameIs("br")) && !TextNode.v(sb)) {
                        sb.append(' ');
                    }
                }
            }
        }

        @Override // org.jsoup.select.NodeVisitor
        /* renamed from: tail */
        public final void mo3tail(Node node, int i) {
            if (node instanceof Element) {
                Element element = (Element) node;
                Node nextSibling = node.nextSibling();
                if (!element.h.isInline()) {
                    if ((nextSibling instanceof TextNode) || ((nextSibling instanceof Element) && ((Element) nextSibling).h.isInline())) {
                        StringBuilder sb = this.f22570c;
                        if (!TextNode.v(sb)) {
                            sb.append(' ');
                        }
                    }
                }
            }
        }

        @Override // org.jsoup.select.NodeVisitor, org.jsoup.select.NodeFilter
        public final /* synthetic */ void traverse(Node node) {
            d.b(this, node);
        }
    }

    public Element(Tag tag, String str, Attributes attributes) {
        Validate.notNull(tag);
        this.i = l;
        this.j = attributes;
        this.h = tag;
        if (StringUtil.isBlank(str)) {
            return;
        }
        setBaseUri(str);
    }

    public static void t(StringBuilder sb, TextNode textNode) {
        String wholeText = textNode.getWholeText();
        Element element = textNode.f22576c;
        if (element != null) {
            int i = 0;
            while (!element.h.preserveWhitespace()) {
                element = element.parent();
                i++;
                if (i < 6 && element != null) {
                }
            }
            sb.append(wholeText);
        }
        if (!(textNode instanceof CDataNode)) {
            StringUtil.appendNormalisedWhitespace(sb, wholeText, TextNode.v(sb));
            return;
        }
        sb.append(wholeText);
    }

    public Element addClass(String str) {
        Validate.notNull(str);
        Set<String> classNames = classNames();
        classNames.add(str);
        classNames(classNames);
        return this;
    }

    public Element append(String str) {
        Validate.notNull(str);
        Node[] nodeArr = (Node[]) NodeUtils.a(this).parseFragmentInput(str, this, baseUri()).toArray(new Node[0]);
        List k2 = k();
        for (Node node : nodeArr) {
            r(node);
            ((ArrayList) k2).add(node);
            node.f = r4.size() - 1;
        }
        return this;
    }

    public Element appendChild(Node node) {
        Validate.notNull(node);
        r(node);
        k();
        this.i.add(node);
        node.f = this.i.size() - 1;
        return this;
    }

    public Element appendChildren(Collection<? extends Node> collection) {
        insertChildren(-1, collection);
        return this;
    }

    public Element appendElement(String str) {
        return appendElement(str, this.h.namespace());
    }

    public Element appendText(String str) {
        Validate.notNull(str);
        appendChild(new TextNode(str));
        return this;
    }

    public Element appendTo(Element element) {
        Validate.notNull(element);
        element.appendChild(this);
        return this;
    }

    public Attribute attribute(String str) {
        if (m()) {
            return attributes().attribute(str);
        }
        return null;
    }

    @Override // org.jsoup.nodes.Node
    public Attributes attributes() {
        if (this.j == null) {
            this.j = new Attributes();
        }
        return this.j;
    }

    @Override // org.jsoup.nodes.Node
    public String baseUri() {
        String str;
        Element element = this;
        while (true) {
            if (element != null) {
                Attributes attributes = element.j;
                if (attributes != null) {
                    String str2 = n;
                    if (attributes.hasKey(str2)) {
                        str = element.j.get(str2);
                        break;
                    }
                }
                element = element.parent();
            } else {
                str = null;
                break;
            }
        }
        if (str != null) {
            return str;
        }
        return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    }

    public Element child(int i) {
        boolean z;
        if (i >= 0) {
            z = true;
        } else {
            z = false;
        }
        Validate.isTrue(z, "Index must be >= 0");
        List u = u();
        if (u != null) {
            return (Element) u.get(i);
        }
        int size = this.i.size();
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            Node node = this.i.get(i3);
            if (node instanceof Element) {
                int i4 = i2 + 1;
                if (i2 == i) {
                    return (Element) node;
                }
                i2 = i4;
            }
        }
        throw new IndexOutOfBoundsException(android.support.v4.media.a.e(i, "No child at index: "));
    }

    @Override // org.jsoup.nodes.Node
    public int childNodeSize() {
        return this.i.size();
    }

    public Elements children() {
        return new Elements((List<Element>) v());
    }

    public int childrenSize() {
        if (childNodeSize() == 0) {
            return 0;
        }
        return v().size();
    }

    public String className() {
        return attr("class").trim();
    }

    public Set<String> classNames() {
        LinkedHashSet linkedHashSet = new LinkedHashSet(Arrays.asList(m.split(className())));
        linkedHashSet.remove(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        return linkedHashSet;
    }

    public Element closest(String str) {
        return closest(Selector.evaluatorOf(str));
    }

    public String cssSelector() {
        String releaseBuilder;
        Document ownerDocument = ownerDocument();
        String y = y(ownerDocument);
        if (!y.isEmpty()) {
            return y;
        }
        StringBuilder borrowBuilder = StringUtil.borrowBuilder();
        Element element = this;
        while (true) {
            if (element == null || (element instanceof Document)) {
                break;
            }
            String y2 = element.y(ownerDocument);
            if (!y2.isEmpty()) {
                borrowBuilder.insert(0, y2);
                break;
            }
            String replace = TokenQueue.escapeCssIdentifier(element.tagName()).replace("\\:", "|");
            StringBuilder borrowBuilder2 = StringUtil.borrowBuilder();
            borrowBuilder2.append(replace);
            String str = (String) Collection.EL.stream(element.classNames()).map(new org.apache.commons.lang3.reflect.a(5)).collect(StringUtil.joining("."));
            if (!str.isEmpty()) {
                borrowBuilder2.append('.');
                borrowBuilder2.append(str);
            }
            if (element.parent() != null && !(element.parent() instanceof Document)) {
                borrowBuilder2.insert(0, " > ");
                if (element.parent().select(borrowBuilder2.toString()).size() > 1) {
                    borrowBuilder2.append(String.format(":nth-child(%d)", Integer.valueOf(element.elementSiblingIndex() + 1)));
                }
                releaseBuilder = StringUtil.releaseBuilder(borrowBuilder2);
            } else {
                releaseBuilder = StringUtil.releaseBuilder(borrowBuilder2);
            }
            borrowBuilder.insert(0, releaseBuilder);
            element = element.parent();
        }
        return StringUtil.releaseBuilder(borrowBuilder);
    }

    public String data() {
        StringBuilder borrowBuilder = StringUtil.borrowBuilder();
        traverse((NodeVisitor) new c(10, borrowBuilder));
        return StringUtil.releaseBuilder(borrowBuilder);
    }

    public List<DataNode> dataNodes() {
        return w(DataNode.class);
    }

    public Map<String, String> dataset() {
        return attributes().dataset();
    }

    public boolean elementIs(String str, String str2) {
        if (this.h.normalName().equals(str) && this.h.namespace().equals(str2)) {
            return true;
        }
        return false;
    }

    public int elementSiblingIndex() {
        if (parent() == null) {
            return 0;
        }
        List v = parent().v();
        int size = v.size();
        for (int i = 0; i < size; i++) {
            if (v.get(i) == this) {
                return i;
            }
        }
        return 0;
    }

    public Range endSourceRange() {
        Object userData;
        Range range = Range.d;
        if (m() && (userData = attributes().userData(SharedConstants.EndRangeKey)) != null) {
            return (Range) userData;
        }
        return range;
    }

    public Element expectFirst(String str) {
        String str2;
        Element selectFirst = Selector.selectFirst(str, this);
        if (parent() != null) {
            str2 = "No elements matched the query '%s' on element '%s'.";
        } else {
            str2 = "No elements matched the query '%s' in the document.";
        }
        return (Element) Validate.expectNotNull(selectFirst, str2, str, tagName());
    }

    public <T extends Node> T expectFirstNode(String str, Class<T> cls) {
        String str2;
        Node selectFirstNode = selectFirstNode(str, cls);
        if (parent() != null) {
            str2 = "No nodes matched the query '%s' on element '%s'.";
        } else {
            str2 = "No nodes matched the query '%s' in the document.";
        }
        return (T) Validate.expectNotNull(selectFirstNode, str2, str, tagName());
    }

    public Element firstElementChild() {
        int size = this.i.size();
        for (int i = 0; i < size; i++) {
            Node node = this.i.get(i);
            if (node instanceof Element) {
                return (Element) node;
            }
        }
        return null;
    }

    public Element firstElementSibling() {
        if (parent() != null) {
            return parent().firstElementChild();
        }
        return this;
    }

    @Override // java.lang.Iterable, j$.lang.Iterable
    public void forEach(Consumer<? super Element> consumer) {
        stream().forEach(consumer);
    }

    @Override // org.jsoup.nodes.Node
    public /* bridge */ /* synthetic */ Node forEachNode(Consumer consumer) {
        return forEachNode((Consumer<? super Node>) consumer);
    }

    @Override // org.jsoup.nodes.Node
    public final Node g(Node node) {
        Element element = (Element) super.g(node);
        NodeList nodeList = new NodeList(this.i.size());
        element.i = nodeList;
        nodeList.addAll(this.i);
        Attributes attributes = this.j;
        if (attributes != null) {
            Attributes clone = attributes.clone();
            element.j = clone;
            clone.userData("jsoup.childEls", null);
        }
        return element;
    }

    public Elements getAllElements() {
        return Collector.collect(new Evaluator.AllElements(), this);
    }

    public Element getElementById(String str) {
        Validate.notEmpty(str);
        return Collector.findFirst(new Evaluator.Id(str), this);
    }

    public Elements getElementsByAttribute(String str) {
        Validate.notEmpty(str);
        return Collector.collect(new Evaluator.Attribute(str.trim()), this);
    }

    public Elements getElementsByAttributeStarting(String str) {
        Validate.notEmpty(str);
        return Collector.collect(new Evaluator.AttributeStarting(str.trim()), this);
    }

    public Elements getElementsByAttributeValue(String str, String str2) {
        return Collector.collect(new Evaluator.AttributeWithValue(str, str2), this);
    }

    public Elements getElementsByAttributeValueContaining(String str, String str2) {
        return Collector.collect(new Evaluator.AttributeWithValueContaining(str, str2), this);
    }

    public Elements getElementsByAttributeValueEnding(String str, String str2) {
        return Collector.collect(new Evaluator.AttributeWithValueEnding(str, str2), this);
    }

    public Elements getElementsByAttributeValueMatching(String str, Pattern pattern) {
        return Collector.collect(new Evaluator.AttributeWithValueMatching(str, pattern), this);
    }

    public Elements getElementsByAttributeValueNot(String str, String str2) {
        return Collector.collect(new Evaluator.AttributeWithValueNot(str, str2), this);
    }

    public Elements getElementsByAttributeValueStarting(String str, String str2) {
        return Collector.collect(new Evaluator.AttributeWithValueStarting(str, str2), this);
    }

    public Elements getElementsByClass(String str) {
        Validate.notEmpty(str);
        return Collector.collect(new Evaluator.Class(str), this);
    }

    public Elements getElementsByIndexEquals(int i) {
        return Collector.collect(new Evaluator.IndexEquals(i), this);
    }

    public Elements getElementsByIndexGreaterThan(int i) {
        return Collector.collect(new Evaluator.IndexGreaterThan(i), this);
    }

    public Elements getElementsByIndexLessThan(int i) {
        return Collector.collect(new Evaluator.IndexLessThan(i), this);
    }

    public Elements getElementsByTag(String str) {
        Validate.notEmpty(str);
        return Collector.collect(new Evaluator.Tag(Normalizer.normalize(str)), this);
    }

    public Elements getElementsContainingOwnText(String str) {
        return Collector.collect(new Evaluator.ContainsOwnText(str), this);
    }

    public Elements getElementsContainingText(String str) {
        return Collector.collect(new Evaluator.ContainsText(str), this);
    }

    public Elements getElementsMatchingOwnText(Pattern pattern) {
        return Collector.collect(new Evaluator.MatchesOwn(pattern), this);
    }

    public Elements getElementsMatchingText(Pattern pattern) {
        return Collector.collect(new Evaluator.Matches(pattern), this);
    }

    public boolean hasClass(String str) {
        String str2;
        Attributes attributes = this.j;
        if (attributes == null) {
            return false;
        }
        String ignoreCase = attributes.getIgnoreCase("class");
        int length = ignoreCase.length();
        int length2 = str.length();
        if (length != 0 && length >= length2) {
            if (length == length2) {
                return str.equalsIgnoreCase(ignoreCase);
            }
            int i = 0;
            boolean z = false;
            int i2 = 0;
            while (i < length) {
                if (Character.isWhitespace(ignoreCase.charAt(i))) {
                    if (z) {
                        if (i - i2 == length2) {
                            str2 = str;
                            if (ignoreCase.regionMatches(true, i2, str2, 0, length2)) {
                                return true;
                            }
                        } else {
                            str2 = str;
                        }
                        z = false;
                    } else {
                        str2 = str;
                    }
                } else {
                    str2 = str;
                    if (!z) {
                        i2 = i;
                        z = true;
                    }
                }
                i++;
                str = str2;
            }
            String str3 = str;
            if (z && length - i2 == length2) {
                return ignoreCase.regionMatches(true, i2, str3, 0, length2);
            }
        }
        return false;
    }

    public boolean hasText() {
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        filter((NodeFilter) new c(11, atomicBoolean));
        return atomicBoolean.get();
    }

    public String html() {
        StringBuilder borrowBuilder = StringUtil.borrowBuilder();
        html((Element) borrowBuilder);
        String releaseBuilder = StringUtil.releaseBuilder(borrowBuilder);
        Document ownerDocument = ownerDocument();
        if (ownerDocument == null) {
            ownerDocument = new Document(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        }
        return ownerDocument.outputSettings().prettyPrint() ? releaseBuilder.trim() : releaseBuilder;
    }

    @Override // org.jsoup.nodes.Node
    public final void i(String str) {
        attributes().put(n, str);
    }

    public String id() {
        Attributes attributes = this.j;
        return attributes != null ? attributes.getIgnoreCase("id") : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    }

    public Element insertChildren(int i, java.util.Collection<? extends Node> collection) {
        Validate.notNull(collection, "Children collection to be inserted must not be null.");
        int childNodeSize = childNodeSize();
        if (i < 0) {
            i += childNodeSize + 1;
        }
        Validate.isTrue(i >= 0 && i <= childNodeSize, "Insert position out of bounds.");
        a(i, (Node[]) collection.toArray(new Node[0]));
        return this;
    }

    public boolean is(String str) {
        return is(Selector.evaluatorOf(str));
    }

    public boolean isBlock() {
        return this.h.isBlock();
    }

    @Override // java.lang.Iterable
    public Iterator<Element> iterator() {
        return new NodeIterator(this, Element.class);
    }

    @Override // org.jsoup.nodes.Node
    public final List k() {
        if (this.i == l) {
            this.i = new NodeList(4);
        }
        return this.i;
    }

    public Element lastElementChild() {
        for (int size = this.i.size() - 1; size >= 0; size--) {
            Node node = this.i.get(size);
            if (node instanceof Element) {
                return (Element) node;
            }
        }
        return null;
    }

    public Element lastElementSibling() {
        if (parent() != null) {
            return parent().lastElementChild();
        }
        return this;
    }

    @Override // org.jsoup.nodes.Node
    public final boolean m() {
        if (this.j != null) {
            return true;
        }
        return false;
    }

    public Elements nextElementSiblings() {
        Elements elements = new Elements();
        if (this.f22576c == null) {
            return elements;
        }
        elements.add(this);
        return elements.nextAll();
    }

    @Override // org.jsoup.nodes.Node
    public String nodeName() {
        return this.h.getName();
    }

    @Override // org.jsoup.nodes.Node
    public String nodeValue() {
        return wholeOwnText();
    }

    @Override // org.jsoup.nodes.Node
    public String normalName() {
        return this.h.normalName();
    }

    public String ownText() {
        StringBuilder borrowBuilder = StringUtil.borrowBuilder();
        for (int i = 0; i < childNodeSize(); i++) {
            Node node = this.i.get(i);
            if (node instanceof TextNode) {
                t(borrowBuilder, (TextNode) node);
            } else if (node.nameIs("br") && !TextNode.v(borrowBuilder)) {
                borrowBuilder.append(" ");
            }
        }
        return StringUtil.releaseBuilder(borrowBuilder).trim();
    }

    @Override // org.jsoup.nodes.Node
    public void p(QuietAppendable quietAppendable, Document.OutputSettings outputSettings) {
        String tagName;
        boolean z;
        Document.OutputSettings.Syntax syntax = outputSettings.syntax();
        Document.OutputSettings.Syntax syntax2 = Document.OutputSettings.Syntax.xml;
        if (syntax == syntax2) {
            tagName = Normalizer.xmlSafeTagName(tagName());
        } else {
            tagName = tagName();
        }
        quietAppendable.append(Typography.less).append(tagName);
        Attributes attributes = this.j;
        if (attributes != null) {
            attributes.g(quietAppendable, outputSettings);
        }
        if (this.i.isEmpty()) {
            if (outputSettings.syntax() != syntax2 && this.h.namespace().equals(Parser.NamespaceHtml)) {
                z = false;
            } else {
                z = true;
            }
            if (z && (this.h.is(Tag.SeenSelfClose) || (this.h.isKnownTag() && (this.h.isEmpty() || this.h.isSelfClosing())))) {
                quietAppendable.append(" />");
                return;
            } else if (!z && this.h.isEmpty()) {
                quietAppendable.append(Typography.greater);
                return;
            } else {
                quietAppendable.append("></").append(tagName).append(Typography.greater);
                return;
            }
        }
        quietAppendable.append(Typography.greater);
    }

    public Elements parents() {
        Elements elements = new Elements();
        for (Element parent = parent(); parent != null && !parent.nameIs("#root"); parent = parent.parent()) {
            elements.add(parent);
        }
        return elements;
    }

    public Element prepend(String str) {
        Validate.notNull(str);
        a(0, (Node[]) NodeUtils.a(this).parseFragmentInput(str, this, baseUri()).toArray(new Node[0]));
        return this;
    }

    public Element prependChild(Node node) {
        Validate.notNull(node);
        a(0, node);
        return this;
    }

    public Element prependChildren(java.util.Collection<? extends Node> collection) {
        insertChildren(0, collection);
        return this;
    }

    public Element prependElement(String str) {
        return prependElement(str, this.h.namespace());
    }

    public Element prependText(String str) {
        Validate.notNull(str);
        prependChild(new TextNode(str));
        return this;
    }

    public Elements previousElementSiblings() {
        Elements elements = new Elements();
        if (this.f22576c == null) {
            return elements;
        }
        elements.add(this);
        return elements.prevAll();
    }

    public Element removeClass(String str) {
        Validate.notNull(str);
        Set<String> classNames = classNames();
        classNames.remove(str);
        classNames(classNames);
        return this;
    }

    public Elements select(String str) {
        return Selector.select(str, this);
    }

    public Element selectFirst(String str) {
        return Selector.selectFirst(str, this);
    }

    public <T extends Node> T selectFirstNode(String str, Class<T> cls) {
        return (T) selectFirstNode(Selector.evaluatorOf(str), cls);
    }

    public Nodes<Node> selectNodes(Evaluator evaluator) {
        return selectNodes(evaluator, Node.class);
    }

    public Stream<Element> selectStream(String str) {
        return Selector.selectStream(str, this);
    }

    public Elements selectXpath(String str) {
        return new Elements((List<Element>) NodeUtils.b(str, this, Element.class));
    }

    public Elements siblingElements() {
        if (this.f22576c == null) {
            return new Elements(0);
        }
        List<Element> v = parent().v();
        Elements elements = new Elements(v.size() - 1);
        for (Element element : v) {
            if (element != this) {
                elements.add(element);
            }
        }
        return elements;
    }

    @Override // java.lang.Iterable
    public /* synthetic */ Spliterator<Element> spliterator() {
        return Spliterator.Wrapper.convert(spliterator());
    }

    public Stream<Element> stream() {
        return StreamSupport.stream(Spliterators.spliteratorUnknownSize(new NodeIterator(this, Element.class), 273), false);
    }

    public Tag tag() {
        return this.h;
    }

    public String tagName() {
        return this.h.getName();
    }

    public String text() {
        StringBuilder borrowBuilder = StringUtil.borrowBuilder();
        d.b(new TextAccumulator(borrowBuilder), this);
        return StringUtil.releaseBuilder(borrowBuilder).trim();
    }

    public List<TextNode> textNodes() {
        return w(TextNode.class);
    }

    public Element toggleClass(String str) {
        Validate.notNull(str);
        Set<String> classNames = classNames();
        if (classNames.contains(str)) {
            classNames.remove(str);
        } else {
            classNames.add(str);
        }
        classNames(classNames);
        return this;
    }

    public final List u() {
        List list;
        Integer num;
        Attributes attributes = this.j;
        if (attributes != null && attributes.hasKey(SharedConstants.UserDataKey)) {
            Map r = this.j.r();
            WeakReference weakReference = (WeakReference) r.get("jsoup.childEls");
            if (weakReference != null && (list = (List) weakReference.get()) != null && (num = (Integer) r.get("jsoup.childElsMod")) != null && num.intValue() == this.i.a()) {
                return list;
            }
        }
        return null;
    }

    public final List v() {
        List u;
        if (childNodeSize() == 0) {
            return k;
        }
        synchronized (this.i) {
            try {
                u = u();
                if (u == null) {
                    u = w(Element.class);
                    Map r = attributes().r();
                    r.put("jsoup.childEls", new WeakReference(u));
                    r.put("jsoup.childElsMod", Integer.valueOf(this.i.a()));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return u;
    }

    public String val() {
        if (elementIs("textarea", Parser.NamespaceHtml)) {
            return text();
        }
        return attr("value");
    }

    public final List w(Class cls) {
        return (List) Collection.EL.stream(this.i).filter(new org.apache.commons.text.lookup.c(1, cls)).map(new org.apache.commons.lang3.stream.a(2, cls)).collect(Collectors.collectingAndThen(Collectors.toList(), new org.apache.commons.lang3.reflect.a(3)));
    }

    public String wholeOwnText() {
        return (String) Collection.EL.stream(this.i).map(new org.apache.commons.lang3.reflect.a(4)).collect(StringUtil.joining(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED));
    }

    public String wholeText() {
        return (String) nodeStream().map(new org.apache.commons.lang3.reflect.a(4)).collect(StringUtil.joining(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED));
    }

    public void x(QuietAppendable quietAppendable, Document.OutputSettings outputSettings) {
        String tagName;
        if (!this.i.isEmpty()) {
            QuietAppendable append = quietAppendable.append("</");
            if (outputSettings.syntax() == Document.OutputSettings.Syntax.xml) {
                tagName = Normalizer.xmlSafeTagName(tagName());
            } else {
                tagName = tagName();
            }
            append.append(tagName).append(Typography.greater);
        }
    }

    public final String y(Document document) {
        String id = id();
        if (!id.isEmpty()) {
            String str = "#" + TokenQueue.escapeCssIdentifier(id);
            if (document != null) {
                Elements select = document.select(str);
                if (select.size() != 1 || select.get(0) != this) {
                    return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                }
            }
            return str;
        }
        return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    }

    public Element appendElement(String str, String str2) {
        Parser a2 = NodeUtils.a(this);
        Element element = new Element(a2.tagSet().valueOf(str, str2, a2.settings()), baseUri());
        appendChild(element);
        return element;
    }

    @Override // org.jsoup.nodes.Node
    public Element attr(String str, String str2) {
        super.attr(str, str2);
        return this;
    }

    @Override // org.jsoup.nodes.Node
    public Element clearAttributes() {
        if (this.j != null) {
            super.clearAttributes();
            if (this.j.f22561c == 0) {
                this.j = null;
            }
        }
        return this;
    }

    public Element closest(Evaluator evaluator) {
        Validate.notNull(evaluator);
        Element root = root();
        Element element = this;
        while (!evaluator.matches(root, element)) {
            element = element.parent();
            if (element == null) {
                return null;
            }
        }
        return element;
    }

    @Override // org.jsoup.nodes.Node
    public Element empty() {
        int size = this.i.size();
        for (int i = 0; i < size; i++) {
            this.i.get(i).f22576c = null;
        }
        this.i.clear();
        return this;
    }

    @Override // org.jsoup.nodes.Node
    public Element filter(NodeFilter nodeFilter) {
        return (Element) super.filter(nodeFilter);
    }

    @Override // org.jsoup.nodes.Node
    public Element forEachNode(Consumer<? super Node> consumer) {
        return (Element) super.forEachNode(consumer);
    }

    public Elements getElementsByAttributeValueMatching(String str, String str2) {
        try {
            return getElementsByAttributeValueMatching(str, Pattern.compile(str2));
        } catch (PatternSyntaxException e) {
            throw new IllegalArgumentException(android.support.v4.media.a.C("Pattern syntax error: ", str2), e);
        }
    }

    public Elements getElementsMatchingOwnText(String str) {
        try {
            return getElementsMatchingOwnText(Pattern.compile(str));
        } catch (PatternSyntaxException e) {
            throw new IllegalArgumentException(android.support.v4.media.a.C("Pattern syntax error: ", str), e);
        }
    }

    public Elements getElementsMatchingText(String str) {
        try {
            return getElementsMatchingText(Pattern.compile(str));
        } catch (PatternSyntaxException e) {
            throw new IllegalArgumentException(android.support.v4.media.a.C("Pattern syntax error: ", str), e);
        }
    }

    public Element id(String str) {
        Validate.notNull(str);
        attr("id", str);
        return this;
    }

    public boolean is(Evaluator evaluator) {
        return evaluator.matches(root(), this);
    }

    @Override // org.jsoup.nodes.Node
    public final Element parent() {
        return this.f22576c;
    }

    public Element prependElement(String str, String str2) {
        Parser a2 = NodeUtils.a(this);
        Element element = new Element(a2.tagSet().valueOf(str, str2, a2.settings()), baseUri());
        prependChild(element);
        return element;
    }

    @Override // org.jsoup.nodes.Node
    public Element removeAttr(String str) {
        return (Element) super.removeAttr(str);
    }

    @Override // org.jsoup.nodes.Node
    public Element root() {
        return (Element) super.root();
    }

    public Elements select(Evaluator evaluator) {
        return Selector.select(evaluator, this);
    }

    public Element selectFirst(Evaluator evaluator) {
        return Collector.findFirst(evaluator, this);
    }

    public <T extends Node> T selectFirstNode(Evaluator evaluator, Class<T> cls) {
        return (T) Collector.findFirstNode(evaluator, this, cls);
    }

    public Nodes<Node> selectNodes(String str) {
        return selectNodes(str, Node.class);
    }

    public Stream<Element> selectStream(Evaluator evaluator) {
        return Selector.selectStream(evaluator, this);
    }

    public <T extends Node> List<T> selectXpath(String str, Class<T> cls) {
        return NodeUtils.b(str, this, cls);
    }

    @Override // org.jsoup.nodes.Node
    public Element shallowClone() {
        String baseUri = baseUri();
        if (baseUri.isEmpty()) {
            baseUri = null;
        }
        Tag tag = this.h;
        Attributes attributes = this.j;
        return new Element(tag, baseUri, attributes != null ? attributes.clone() : null);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.lang.Iterable, j$.lang.Iterable, j$.util.Collection
    public /* synthetic */ j$.util.Spliterator spliterator() {
        j$.util.Spliterator spliteratorUnknownSize;
        spliteratorUnknownSize = Spliterators.spliteratorUnknownSize(iterator(), 0);
        return spliteratorUnknownSize;
    }

    public Element tag(Tag tag) {
        Validate.notNull(tag);
        this.h = tag;
        return this;
    }

    public Element tagName(String str) {
        return tagName(str, this.h.namespace());
    }

    @Override // org.jsoup.nodes.Node
    public Element traverse(NodeVisitor nodeVisitor) {
        return (Element) super.traverse(nodeVisitor);
    }

    @Override // org.jsoup.nodes.Node
    public Element wrap(String str) {
        return (Element) super.wrap(str);
    }

    @Override // org.jsoup.nodes.Node
    public Element after(String str) {
        return (Element) super.after(str);
    }

    public Element attr(String str, boolean z) {
        attributes().put(str, z);
        return this;
    }

    @Override // org.jsoup.nodes.Node
    public Element before(String str) {
        return (Element) super.before(str);
    }

    @Override // org.jsoup.nodes.Node
    /* renamed from: clone */
    public Element mo1499clone() {
        return (Element) super.mo1499clone();
    }

    public <T extends Node> Nodes<T> selectNodes(Evaluator evaluator, Class<T> cls) {
        Validate.notNull(evaluator);
        return Collector.collectNodes(evaluator, this, cls);
    }

    public Element tagName(String str, String str2) {
        Validate.notEmptyParam(str, "tagName");
        Validate.notEmptyParam(str2, "namespace");
        Parser a2 = NodeUtils.a(this);
        this.h = a2.tagSet().valueOf(str, str2, a2.settings());
        return this;
    }

    @Override // org.jsoup.nodes.Node
    public Element after(Node node) {
        return (Element) super.after(node);
    }

    @Override // org.jsoup.nodes.Node
    public Element before(Node node) {
        return (Element) super.before(node);
    }

    public Element classNames(Set<String> set) {
        Validate.notNull(set);
        if (set.isEmpty()) {
            attributes().remove("class");
            return this;
        }
        attributes().put("class", StringUtil.join(set, " "));
        return this;
    }

    public Element text(String str) {
        Validate.notNull(str);
        empty();
        if (tag().is(Tag.Data)) {
            appendChild(new DataNode(str));
            return this;
        }
        appendChild(new TextNode(str));
        return this;
    }

    public Element val(String str) {
        if (elementIs("textarea", Parser.NamespaceHtml)) {
            text(str);
            return this;
        }
        attr("value", str);
        return this;
    }

    public Element insertChildren(int i, Node... nodeArr) {
        Validate.notNull(nodeArr, "Children collection to be inserted must not be null.");
        int childNodeSize = childNodeSize();
        if (i < 0) {
            i += childNodeSize + 1;
        }
        Validate.isTrue(i >= 0 && i <= childNodeSize, "Insert position out of bounds.");
        a(i, nodeArr);
        return this;
    }

    public <T extends Node> Nodes<T> selectNodes(String str, Class<T> cls) {
        Validate.notEmpty(str);
        return selectNodes(Selector.evaluatorOf(str), cls);
    }

    public Element(String str, String str2) {
        this(Tag.valueOf(str, str2, ParseSettings.preserveCase), (String) null);
    }

    @Override // org.jsoup.nodes.Node
    public <T extends Appendable> T html(T t) {
        Node firstChild = firstChild();
        if (firstChild != null) {
            Printer f = Printer.f(firstChild, QuietAppendable.wrap(t));
            while (firstChild != null) {
                d.b(f, firstChild);
                firstChild = firstChild.nextSibling();
            }
        }
        return t;
    }

    public Element(String str) {
        this(str, Parser.NamespaceHtml);
    }

    public Element(Tag tag, String str) {
        this(tag, str, null);
    }

    public Element html(String str) {
        empty();
        append(str);
        return this;
    }
}
