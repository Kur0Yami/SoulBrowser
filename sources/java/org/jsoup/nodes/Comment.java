package org.jsoup.nodes;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.List;
import org.jsoup.internal.QuietAppendable;
import org.jsoup.nodes.Document;
import org.jsoup.parser.Parser;

/* loaded from: classes4.dex */
public class Comment extends LeafNode {
    public Comment(String str) {
        super(str);
    }

    public XmlDeclaration asXmlDeclaration() {
        List<Node> parseFragmentInput = Parser.xmlParser().parseFragmentInput("<" + getData() + ">", (Element) null, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        if (parseFragmentInput.isEmpty() || !(parseFragmentInput.get(0) instanceof XmlDeclaration)) {
            return null;
        }
        return (XmlDeclaration) parseFragmentInput.get(0);
    }

    public String getData() {
        return t();
    }

    public boolean isXmlDeclaration() {
        String data = getData();
        if (data.length() > 1) {
            if (data.startsWith("!") || data.startsWith("?")) {
                return true;
            }
            return false;
        }
        return false;
    }

    @Override // org.jsoup.nodes.Node
    public String nodeName() {
        return "#comment";
    }

    @Override // org.jsoup.nodes.Node
    public final void p(QuietAppendable quietAppendable, Document.OutputSettings outputSettings) {
        quietAppendable.append("<!--").append(getData()).append("-->");
    }

    public Comment setData(String str) {
        attr(nodeName(), str);
        return this;
    }

    @Override // org.jsoup.nodes.Node
    /* renamed from: clone */
    public Comment mo1499clone() {
        return (Comment) super.mo1499clone();
    }
}
