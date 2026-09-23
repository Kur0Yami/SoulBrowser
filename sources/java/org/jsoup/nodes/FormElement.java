package org.jsoup.nodes;

import com.google.api.client.http.HttpMethods;
import java.util.ArrayList;
import java.util.List;
import org.jsoup.Connection;
import org.jsoup.Jsoup;
import org.jsoup.helper.HttpConnection;
import org.jsoup.helper.Validate;
import org.jsoup.internal.SharedConstants;
import org.jsoup.internal.StringUtil;
import org.jsoup.parser.Tag;
import org.jsoup.select.Elements;
import org.jsoup.select.Evaluator;
import org.jsoup.select.Selector;

/* loaded from: classes4.dex */
public class FormElement extends Element {
    public static final Evaluator p = Selector.evaluatorOf(StringUtil.join(SharedConstants.FormSubmitTags, ", "));
    public final Elements o;

    public FormElement(Tag tag, String str, Attributes attributes) {
        super(tag, str, attributes);
        this.o = new Elements();
    }

    public FormElement addElement(Element element) {
        this.o.add(element);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Elements elements() {
        Elements select = select(p);
        Elements elements = this.o;
        int size = elements.size();
        int i = 0;
        while (i < size) {
            T t = elements.get(i);
            i++;
            Element element = (Element) t;
            if (element.ownerDocument() != null && !select.contains(element)) {
                select.add(element);
            }
        }
        return select;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public List<Connection.KeyVal> formData() {
        Element selectFirst;
        String str;
        ArrayList arrayList = new ArrayList();
        Elements elements = elements();
        int size = elements.size();
        int i = 0;
        while (i < size) {
            T t = elements.get(i);
            i++;
            Element element = (Element) t;
            if (element.tag().isFormSubmittable() && !element.hasAttr("disabled")) {
                String attr = element.attr("name");
                if (attr.length() != 0) {
                    String attr2 = element.attr("type");
                    if (!attr2.equalsIgnoreCase("button") && !attr2.equalsIgnoreCase("image")) {
                        if (element.nameIs("select")) {
                            Elements select = element.select("option[selected]");
                            int size2 = select.size();
                            boolean z = false;
                            int i2 = 0;
                            while (i2 < size2) {
                                T t2 = select.get(i2);
                                i2++;
                                arrayList.add(HttpConnection.KeyVal.create(attr, ((Element) t2).val()));
                                z = true;
                            }
                            if (!z && (selectFirst = element.selectFirst("option")) != null) {
                                arrayList.add(HttpConnection.KeyVal.create(attr, selectFirst.val()));
                            }
                        } else if (!"checkbox".equalsIgnoreCase(attr2) && !"radio".equalsIgnoreCase(attr2)) {
                            arrayList.add(HttpConnection.KeyVal.create(attr, element.val()));
                        } else if (element.hasAttr("checked")) {
                            if (element.val().length() > 0) {
                                str = element.val();
                            } else {
                                str = "on";
                            }
                            arrayList.add(HttpConnection.KeyVal.create(attr, str));
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    @Override // org.jsoup.nodes.Node
    public final void q(Node node) {
        super.q(node);
        this.o.remove(node);
    }

    public Connection submit() {
        String baseUri;
        Connection.Method method;
        Connection newSession;
        if (hasAttr("action")) {
            baseUri = absUrl("action");
        } else {
            baseUri = baseUri();
        }
        Validate.notEmpty(baseUri, "Could not determine a form action URL for submit. Ensure you set a base URI when parsing.");
        if (attr("method").equalsIgnoreCase(HttpMethods.POST)) {
            method = Connection.Method.POST;
        } else {
            method = Connection.Method.GET;
        }
        Document ownerDocument = ownerDocument();
        if (ownerDocument != null) {
            newSession = ownerDocument.connection().newRequest();
        } else {
            newSession = Jsoup.newSession();
        }
        return newSession.url(baseUri).data(formData()).method(method);
    }

    @Override // org.jsoup.nodes.Element, org.jsoup.nodes.Node
    /* renamed from: clone */
    public FormElement mo1499clone() {
        return (FormElement) super.mo1499clone();
    }
}
