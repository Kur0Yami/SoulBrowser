package org.jsoup.safety;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.Iterator;
import org.jsoup.helper.Validate;
import org.jsoup.internal.SharedConstants;
import org.jsoup.nodes.Attribute;
import org.jsoup.nodes.Attributes;
import org.jsoup.nodes.DataNode;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;
import org.jsoup.nodes.TextNode;
import org.jsoup.parser.ParseErrorList;
import org.jsoup.parser.Parser;
import org.jsoup.select.NodeVisitor;
import org.jsoup.select.d;

/* loaded from: classes4.dex */
public class Cleaner {

    /* renamed from: a, reason: collision with root package name */
    public final Safelist f22614a;

    /* loaded from: classes4.dex */
    public final class CleaningVisitor implements NodeVisitor {

        /* renamed from: c, reason: collision with root package name */
        public int f22615c = 0;
        public final Element f;
        public Element g;

        public CleaningVisitor(Element element, Element element2) {
            this.f = element;
            this.g = element2;
        }

        @Override // org.jsoup.select.NodeVisitor
        /* renamed from: head */
        public final void mo2head(Node node, int i) {
            boolean z = node instanceof Element;
            Cleaner cleaner = Cleaner.this;
            if (z) {
                Element element = (Element) node;
                if (cleaner.f22614a.isSafeTag(element.normalName())) {
                    Safelist safelist = cleaner.f22614a;
                    Element shallowClone = element.shallowClone();
                    String tagName = element.tagName();
                    Attributes attributes = shallowClone.attributes();
                    shallowClone.clearAttributes();
                    Iterator<Attribute> it = element.attributes().iterator();
                    int i2 = 0;
                    while (it.hasNext()) {
                        Attribute next = it.next();
                        if (safelist.isSafeAttribute(tagName, element, next)) {
                            attributes.put(next);
                        } else {
                            i2++;
                        }
                    }
                    Attributes enforcedAttributes = safelist.getEnforcedAttributes(tagName);
                    if (element.nameIs("a") && enforcedAttributes.get("rel").equals("nofollow")) {
                        String absUrl = element.absUrl("href");
                        String baseUri = element.baseUri();
                        if (!absUrl.isEmpty() && !baseUri.isEmpty() && absUrl.startsWith(baseUri)) {
                            enforcedAttributes.remove("rel");
                        }
                    }
                    attributes.addAll(enforcedAttributes);
                    shallowClone.attributes().addAll(attributes);
                    this.g.appendChild(shallowClone);
                    this.f22615c += i2;
                    this.g = shallowClone;
                    return;
                }
                if (node != this.f) {
                    this.f22615c++;
                    return;
                }
                return;
            }
            if (node instanceof TextNode) {
                this.g.appendChild(new TextNode(((TextNode) node).getWholeText()));
            } else if ((node instanceof DataNode) && cleaner.f22614a.isSafeTag(node.parent().normalName())) {
                this.g.appendChild(new DataNode(((DataNode) node).getWholeData()));
            } else {
                this.f22615c++;
            }
        }

        @Override // org.jsoup.select.NodeVisitor
        /* renamed from: tail */
        public final void mo3tail(Node node, int i) {
            if ((node instanceof Element) && Cleaner.this.f22614a.isSafeTag(node.normalName())) {
                this.g = this.g.parent();
            }
        }

        @Override // org.jsoup.select.NodeVisitor, org.jsoup.select.NodeFilter
        public final /* synthetic */ void traverse(Node node) {
            d.b(this, node);
        }
    }

    /* loaded from: classes4.dex */
    public static class ElementMeta {
    }

    public Cleaner(Safelist safelist) {
        Validate.notNull(safelist);
        this.f22614a = safelist;
    }

    public Document clean(Document document) {
        Validate.notNull(document);
        Document createShell = Document.createShell(document.baseUri());
        Element body = document.body();
        d.b(new CleaningVisitor(body, createShell.body()), body);
        createShell.outputSettings(document.outputSettings().clone());
        return createShell;
    }

    public boolean isValid(Document document) {
        Validate.notNull(document);
        Document createShell = Document.createShell(document.baseUri());
        Element body = document.body();
        CleaningVisitor cleaningVisitor = new CleaningVisitor(body, createShell.body());
        d.b(cleaningVisitor, body);
        if (cleaningVisitor.f22615c == 0 && document.head().childNodes().isEmpty()) {
            return true;
        }
        return false;
    }

    public boolean isValidBodyHtml(String str) {
        String str2;
        if (this.f22614a.preserveRelativeLinks()) {
            str2 = SharedConstants.DummyUri;
        } else {
            str2 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        Document createShell = Document.createShell(str2);
        Document createShell2 = Document.createShell(str2);
        ParseErrorList tracking = ParseErrorList.tracking(1);
        createShell2.body().insertChildren(0, Parser.parseFragment(str, createShell2.body(), str2, tracking));
        Element body = createShell2.body();
        CleaningVisitor cleaningVisitor = new CleaningVisitor(body, createShell.body());
        d.b(cleaningVisitor, body);
        if (cleaningVisitor.f22615c == 0 && tracking.isEmpty()) {
            return true;
        }
        return false;
    }
}
