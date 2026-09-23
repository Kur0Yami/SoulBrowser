package org.jsoup.nodes;

import org.jsoup.internal.QuietAppendable;
import org.jsoup.nodes.Document;

/* loaded from: classes4.dex */
public class DataNode extends LeafNode {
    public DataNode(String str) {
        super(str);
    }

    public String getWholeData() {
        return t();
    }

    @Override // org.jsoup.nodes.Node
    public String nodeName() {
        return "#data";
    }

    @Override // org.jsoup.nodes.Node
    public final void p(QuietAppendable quietAppendable, Document.OutputSettings outputSettings) {
        String wholeData = getWholeData();
        if (outputSettings.syntax() == Document.OutputSettings.Syntax.xml && !wholeData.contains("<![CDATA[")) {
            if (parentNameIs("script")) {
                quietAppendable.append("//<![CDATA[\n").append(wholeData).append("\n//]]>");
                return;
            } else if (parentNameIs("style")) {
                quietAppendable.append("/*<![CDATA[*/\n").append(wholeData).append("\n/*]]>*/");
                return;
            } else {
                quietAppendable.append("<![CDATA[").append(wholeData).append("]]>");
                return;
            }
        }
        quietAppendable.append(wholeData);
    }

    public DataNode setWholeData(String str) {
        attr(nodeName(), str);
        return this;
    }

    @Override // org.jsoup.nodes.Node
    /* renamed from: clone */
    public DataNode mo1499clone() {
        return (DataNode) super.mo1499clone();
    }
}
