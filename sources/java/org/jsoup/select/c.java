package org.jsoup.select;

import org.jsoup.nodes.Node;
import org.jsoup.select.NodeFilter;

/* loaded from: classes4.dex */
public abstract /* synthetic */ class c {
    public static NodeFilter.FilterResult a(NodeFilter nodeFilter, Node node, int i) {
        return NodeFilter.FilterResult.CONTINUE;
    }

    public static void b(NodeFilter nodeFilter, Node node) {
        NodeTraversor.filter(nodeFilter, node);
    }
}
