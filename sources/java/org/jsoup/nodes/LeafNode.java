package org.jsoup.nodes;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.List;
import org.jsoup.helper.Validate;

/* loaded from: classes4.dex */
public abstract class LeafNode extends Node {
    public Object h;

    public LeafNode() {
        this.h = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    }

    @Override // org.jsoup.nodes.Node
    public String absUrl(String str) {
        u();
        return super.absUrl(str);
    }

    @Override // org.jsoup.nodes.Node
    public String attr(String str) {
        if (this.h instanceof Attributes) {
            return super.attr(str);
        }
        return nodeName().equals(str) ? (String) this.h : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    }

    @Override // org.jsoup.nodes.Node
    public final Attributes attributes() {
        u();
        return (Attributes) this.h;
    }

    @Override // org.jsoup.nodes.Node
    public String baseUri() {
        Element element = this.f22576c;
        if (element != null) {
            return element.baseUri();
        }
        return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    }

    @Override // org.jsoup.nodes.Node
    public int childNodeSize() {
        return 0;
    }

    @Override // org.jsoup.nodes.Node
    public Node empty() {
        return this;
    }

    @Override // org.jsoup.nodes.Node
    public final Node g(Node node) {
        LeafNode leafNode = (LeafNode) super.g(node);
        Object obj = this.h;
        if (obj instanceof Attributes) {
            leafNode.h = ((Attributes) obj).clone();
        }
        return leafNode;
    }

    @Override // org.jsoup.nodes.Node
    public boolean hasAttr(String str) {
        u();
        return super.hasAttr(str);
    }

    @Override // org.jsoup.nodes.Node
    public final void i(String str) {
    }

    @Override // org.jsoup.nodes.Node
    public final List k() {
        return Node.g;
    }

    @Override // org.jsoup.nodes.Node
    public final boolean m() {
        return this.h instanceof Attributes;
    }

    @Override // org.jsoup.nodes.Node
    public String nodeValue() {
        return t();
    }

    @Override // org.jsoup.nodes.Node
    public Node removeAttr(String str) {
        u();
        return super.removeAttr(str);
    }

    public final String t() {
        return attr(nodeName());
    }

    public final void u() {
        Object obj = this.h;
        if (!(obj instanceof Attributes)) {
            Attributes attributes = new Attributes();
            this.h = attributes;
            attributes.put(nodeName(), (String) obj);
        }
    }

    @Override // org.jsoup.nodes.Node
    public Element parent() {
        return this.f22576c;
    }

    public LeafNode(String str) {
        Validate.notNull(str);
        this.h = str;
    }

    @Override // org.jsoup.nodes.Node
    public Node attr(String str, String str2) {
        if (!(this.h instanceof Attributes) && str.equals(nodeName())) {
            this.h = str2;
            return this;
        }
        u();
        super.attr(str, str2);
        return this;
    }
}
