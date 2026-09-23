package org.jsoup.nodes;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.Iterator;
import kotlin.text.Typography;
import org.jsoup.internal.QuietAppendable;
import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Document;

/* loaded from: classes4.dex */
public class XmlDeclaration extends LeafNode {
    public final boolean i;

    public XmlDeclaration(String str, boolean z) {
        super(str);
        this.i = z;
    }

    public String getWholeDeclaration() {
        StringBuilder borrowBuilder = StringUtil.borrowBuilder();
        v(QuietAppendable.wrap(borrowBuilder), new Document.OutputSettings());
        return StringUtil.releaseBuilder(borrowBuilder).trim();
    }

    public String name() {
        return t();
    }

    @Override // org.jsoup.nodes.Node
    public String nodeName() {
        return "#declaration";
    }

    @Override // org.jsoup.nodes.Node
    public final void p(QuietAppendable quietAppendable, Document.OutputSettings outputSettings) {
        String str;
        QuietAppendable append = quietAppendable.append("<");
        String str2 = "?";
        boolean z = this.i;
        if (!z) {
            str = "?";
        } else {
            str = "!";
        }
        append.append(str).append(t());
        v(quietAppendable, outputSettings);
        if (z) {
            str2 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        quietAppendable.append(str2).append(">");
    }

    @Override // org.jsoup.nodes.Node
    public String toString() {
        return outerHtml();
    }

    public final void v(QuietAppendable quietAppendable, Document.OutputSettings outputSettings) {
        Iterator<Attribute> it = attributes().iterator();
        while (it.hasNext()) {
            Attribute next = it.next();
            String key = next.getKey();
            String value = next.getValue();
            if (!key.equals(nodeName())) {
                quietAppendable.append(' ');
                quietAppendable.append(key);
                if (!value.isEmpty()) {
                    quietAppendable.append("=\"");
                    char[] cArr = Entities.f22571a;
                    Entities.c(value, quietAppendable, outputSettings.escapeMode(), outputSettings.charset(), 2);
                    quietAppendable.append(Typography.quote);
                }
            }
        }
    }

    @Override // org.jsoup.nodes.Node
    /* renamed from: clone */
    public XmlDeclaration mo1499clone() {
        return (XmlDeclaration) super.mo1499clone();
    }
}
