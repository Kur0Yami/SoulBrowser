package org.jsoup.nodes;

import java.util.List;
import org.jsoup.helper.Validate;
import org.jsoup.helper.W3CDom;
import org.jsoup.parser.HtmlTreeBuilder;
import org.jsoup.parser.Parser;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class NodeUtils {
    public static Parser a(Node node) {
        Document ownerDocument = node.ownerDocument();
        if (ownerDocument != null) {
            return ownerDocument.parser();
        }
        return new Parser(new HtmlTreeBuilder());
    }

    public static List b(String str, Element element, Class cls) {
        Validate.notEmpty(str);
        Validate.notNull(element);
        Validate.notNull(cls);
        W3CDom namespaceAware = new W3CDom().namespaceAware(false);
        return namespaceAware.sourceNodes(namespaceAware.selectXpath(str, namespaceAware.contextNode(namespaceAware.fromJsoup(element))), cls);
    }
}
