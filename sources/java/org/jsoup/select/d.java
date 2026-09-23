package org.jsoup.select;

import org.jsoup.nodes.Node;

/* loaded from: classes4.dex */
public abstract /* synthetic */ class d {
    public static void b(NodeVisitor nodeVisitor, Node node) {
        NodeTraversor.traverse(nodeVisitor, node);
    }

    public static void a(NodeVisitor nodeVisitor, Node node, int i) {
    }
}
