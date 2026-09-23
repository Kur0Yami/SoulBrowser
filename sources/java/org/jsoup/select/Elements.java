package org.jsoup.select;

import com.google.android.gms.ads.RequestConfiguration;
import j$.util.Collection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashSet;
import java.util.List;
import org.jsoup.helper.Validate;
import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Comment;
import org.jsoup.nodes.DataNode;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.FormElement;
import org.jsoup.nodes.Node;
import org.jsoup.nodes.TextNode;

/* loaded from: classes4.dex */
public class Elements extends Nodes<Element> {
    public Elements() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final ArrayList a(Class cls) {
        ArrayList arrayList = new ArrayList();
        int size = size();
        int i = 0;
        while (i < size) {
            T t = get(i);
            i++;
            Element element = (Element) t;
            for (int i2 = 0; i2 < element.childNodeSize(); i2++) {
                Node childNode = element.childNode(i2);
                if (cls.isInstance(childNode)) {
                    arrayList.add((Node) cls.cast(childNode));
                }
            }
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Elements addClass(String str) {
        int size = size();
        int i = 0;
        while (i < size) {
            T t = get(i);
            i++;
            ((Element) t).addClass(str);
        }
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Elements append(String str) {
        int size = size();
        int i = 0;
        while (i < size) {
            T t = get(i);
            i++;
            ((Element) t).append(str);
        }
        return this;
    }

    @Override // org.jsoup.select.Nodes
    public ArrayList<Element> asList() {
        return new ArrayList<>(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public String attr(String str) {
        int size = size();
        int i = 0;
        while (i < size) {
            T t = get(i);
            i++;
            Element element = (Element) t;
            if (element.hasAttr(str)) {
                return element.attr(str);
            }
        }
        return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Elements c(String str, boolean z, boolean z2) {
        Evaluator evaluator;
        Elements elements = new Elements();
        if (str != null) {
            evaluator = Selector.evaluatorOf(str);
        } else {
            evaluator = null;
        }
        int size = size();
        int i = 0;
        while (i < size) {
            T t = get(i);
            i++;
            Element element = (Element) t;
            do {
                if (z) {
                    element = element.nextElementSibling();
                } else {
                    element = element.previousElementSibling();
                }
                if (element != null) {
                    if (evaluator == null || element.is(evaluator)) {
                        elements.add(element);
                    }
                }
            } while (z2);
        }
        return elements;
    }

    public List<Comment> comments() {
        return a(Comment.class);
    }

    public List<DataNode> dataNodes() {
        return a(DataNode.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public List<String> eachAttr(String str) {
        ArrayList arrayList = new ArrayList(size());
        int size = size();
        int i = 0;
        while (i < size) {
            T t = get(i);
            i++;
            Element element = (Element) t;
            if (element.hasAttr(str)) {
                arrayList.add(element.attr(str));
            }
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public List<String> eachText() {
        ArrayList arrayList = new ArrayList(size());
        int size = size();
        int i = 0;
        while (i < size) {
            T t = get(i);
            i++;
            Element element = (Element) t;
            if (element.hasText()) {
                arrayList.add(element.text());
            }
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Elements empty() {
        int size = size();
        int i = 0;
        while (i < size) {
            T t = get(i);
            i++;
            ((Element) t).empty();
        }
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Elements eq(int i) {
        if (size() > i) {
            return new Elements((Element) get(i));
        }
        return new Elements();
    }

    public Element expectFirst(String str) {
        return (Element) Validate.expectNotNull(Selector.selectFirst(str, this), "No elements matched the query '%s' in the elements.", str);
    }

    public Elements filter(NodeFilter nodeFilter) {
        NodeTraversor.filter(nodeFilter, this);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public List<FormElement> forms() {
        ArrayList arrayList = new ArrayList();
        int size = size();
        int i = 0;
        while (i < size) {
            T t = get(i);
            i++;
            Element element = (Element) t;
            if (element instanceof FormElement) {
                arrayList.add((FormElement) element);
            }
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean hasAttr(String str) {
        int size = size();
        int i = 0;
        while (i < size) {
            T t = get(i);
            i++;
            if (((Element) t).hasAttr(str)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean hasClass(String str) {
        int size = size();
        int i = 0;
        while (i < size) {
            T t = get(i);
            i++;
            if (((Element) t).hasClass(str)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean hasText() {
        int size = size();
        int i = 0;
        while (i < size) {
            T t = get(i);
            i++;
            if (((Element) t).hasText()) {
                return true;
            }
        }
        return false;
    }

    public String html() {
        return (String) Collection.EL.stream(this).map(new e(1)).collect(StringUtil.joining("\n"));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean is(String str) {
        Evaluator evaluatorOf = Selector.evaluatorOf(str);
        int size = size();
        int i = 0;
        while (i < size) {
            T t = get(i);
            i++;
            if (((Element) t).is(evaluatorOf)) {
                return true;
            }
        }
        return false;
    }

    public Elements next() {
        return c(null, true, false);
    }

    public Elements nextAll() {
        return c(null, true, true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Elements not(String str) {
        Elements select = Selector.select(str, this);
        Elements elements = new Elements();
        int size = size();
        int i = 0;
        while (i < size) {
            T t = get(i);
            i++;
            Element element = (Element) t;
            int size2 = select.size();
            int i2 = 0;
            while (true) {
                if (i2 < size2) {
                    Object obj = select.get(i2);
                    i2++;
                    if (element.equals((Element) obj)) {
                        break;
                    }
                } else {
                    elements.add(element);
                    break;
                }
            }
        }
        return elements;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Elements parents() {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        int size = size();
        int i = 0;
        while (i < size) {
            T t = get(i);
            i++;
            linkedHashSet.addAll(((Element) t).parents());
        }
        return new Elements(linkedHashSet);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Elements prepend(String str) {
        int size = size();
        int i = 0;
        while (i < size) {
            T t = get(i);
            i++;
            ((Element) t).prepend(str);
        }
        return this;
    }

    public Elements prev() {
        return c(null, false, false);
    }

    public Elements prevAll() {
        return c(null, false, true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Elements removeAttr(String str) {
        int size = size();
        int i = 0;
        while (i < size) {
            T t = get(i);
            i++;
            ((Element) t).removeAttr(str);
        }
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Elements removeClass(String str) {
        int size = size();
        int i = 0;
        while (i < size) {
            T t = get(i);
            i++;
            ((Element) t).removeClass(str);
        }
        return this;
    }

    public Elements select(String str) {
        return Selector.select(str, this);
    }

    public Element selectFirst(String str) {
        return Selector.selectFirst(str, this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Elements tagName(String str) {
        int size = size();
        int i = 0;
        while (i < size) {
            T t = get(i);
            i++;
            ((Element) t).tagName(str);
        }
        return this;
    }

    public String text() {
        return (String) Collection.EL.stream(this).map(new e(2)).collect(StringUtil.joining(" "));
    }

    public List<TextNode> textNodes() {
        return a(TextNode.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Elements toggleClass(String str) {
        int size = size();
        int i = 0;
        while (i < size) {
            T t = get(i);
            i++;
            ((Element) t).toggleClass(str);
        }
        return this;
    }

    public Elements traverse(NodeVisitor nodeVisitor) {
        NodeTraversor.traverse(nodeVisitor, this);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Elements unwrap() {
        int size = size();
        int i = 0;
        while (i < size) {
            T t = get(i);
            i++;
            ((Element) t).unwrap();
        }
        return this;
    }

    public String val() {
        if (size() > 0) {
            return first().val();
        }
        return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    }

    public Elements(int i) {
        super(i);
    }

    @Override // org.jsoup.select.Nodes
    /* renamed from: after, reason: merged with bridge method [inline-methods] */
    public Nodes<Element> after2(String str) {
        super.after2(str);
        return this;
    }

    @Override // org.jsoup.select.Nodes
    /* renamed from: before, reason: merged with bridge method [inline-methods] */
    public Nodes<Element> before2(String str) {
        super.before2(str);
        return this;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // org.jsoup.select.Nodes
    public Element deselect(int i) {
        return (Element) super.deselect(i);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // org.jsoup.select.Nodes
    public Element first() {
        return (Element) super.first();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // org.jsoup.select.Nodes
    public Element last() {
        return (Element) super.last();
    }

    public Elements next(String str) {
        return c(str, true, false);
    }

    public Elements nextAll(String str) {
        return c(str, true, true);
    }

    public Elements prev(String str) {
        return c(str, false, false);
    }

    public Elements prevAll(String str) {
        return c(str, false, true);
    }

    @Override // org.jsoup.select.Nodes
    /* renamed from: wrap, reason: merged with bridge method [inline-methods] */
    public Nodes<Element> wrap2(String str) {
        super.wrap2(str);
        return this;
    }

    public Elements(java.util.Collection<Element> collection) {
        super(collection);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.jsoup.select.Nodes, java.util.ArrayList
    public Elements clone() {
        Elements elements = new Elements(size());
        int size = size();
        int i = 0;
        while (i < size) {
            T t = get(i);
            i++;
            elements.add(((Element) t).mo1499clone());
        }
        return elements;
    }

    @Override // org.jsoup.select.Nodes
    public Element set(int i, Element element) {
        return (Element) super.set(i, (int) element);
    }

    public Elements(List<Element> list) {
        super((List) list);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Elements html(String str) {
        int size = size();
        int i = 0;
        while (i < size) {
            T t = get(i);
            i++;
            ((Element) t).html(str);
        }
        return this;
    }

    @Override // org.jsoup.select.Nodes
    /* renamed from: remove, reason: merged with bridge method [inline-methods] */
    public Nodes<Element> remove2() {
        super.remove2();
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Elements val(String str) {
        int size = size();
        int i = 0;
        while (i < size) {
            T t = get(i);
            i++;
            ((Element) t).val(str);
        }
        return this;
    }

    public Elements(Element... elementArr) {
        super(Arrays.asList(elementArr));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Elements attr(String str, String str2) {
        int size = size();
        int i = 0;
        while (i < size) {
            T t = get(i);
            i++;
            ((Element) t).attr(str, str2);
        }
        return this;
    }

    @Override // org.jsoup.select.Nodes, java.util.ArrayList, java.util.AbstractList, java.util.List
    public Element remove(int i) {
        return (Element) super.remove(i);
    }
}
