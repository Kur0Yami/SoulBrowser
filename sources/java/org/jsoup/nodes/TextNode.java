package org.jsoup.nodes;

import org.jsoup.helper.Validate;
import org.jsoup.internal.QuietAppendable;
import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Document;

/* loaded from: classes4.dex */
public class TextNode extends LeafNode {
    public TextNode(String str) {
        super(str);
    }

    public static TextNode createFromEncoded(String str) {
        return new TextNode(Entities.unescape(str));
    }

    public static boolean v(StringBuilder sb) {
        if (sb.length() != 0 && sb.charAt(sb.length() - 1) == ' ') {
            return true;
        }
        return false;
    }

    public String getWholeText() {
        return t();
    }

    public boolean isBlank() {
        return StringUtil.isBlank(t());
    }

    @Override // org.jsoup.nodes.Node
    public String nodeName() {
        return "#text";
    }

    @Override // org.jsoup.nodes.Node
    public void p(QuietAppendable quietAppendable, Document.OutputSettings outputSettings) {
        String t = t();
        char[] cArr = Entities.f22571a;
        Entities.c(t, quietAppendable, outputSettings.escapeMode(), outputSettings.charset(), 1);
    }

    public TextNode splitText(int i) {
        boolean z;
        boolean z2;
        String t = t();
        if (i >= 0) {
            z = true;
        } else {
            z = false;
        }
        Validate.isTrue(z, "Split offset must be not be negative");
        if (i < t.length()) {
            z2 = true;
        } else {
            z2 = false;
        }
        Validate.isTrue(z2, "Split offset must not be greater than current text length");
        String substring = t.substring(0, i);
        String substring2 = t.substring(i);
        text(substring);
        TextNode textNode = new TextNode(substring2);
        Element element = this.f22576c;
        if (element != null) {
            element.a(siblingIndex() + 1, textNode);
        }
        return textNode;
    }

    public String text() {
        return StringUtil.normaliseWhitespace(getWholeText());
    }

    @Override // org.jsoup.nodes.Node
    public String toString() {
        return outerHtml();
    }

    public TextNode text(String str) {
        attr(nodeName(), str);
        return this;
    }

    @Override // org.jsoup.nodes.Node
    /* renamed from: clone */
    public TextNode mo1499clone() {
        return (TextNode) super.mo1499clone();
    }
}
