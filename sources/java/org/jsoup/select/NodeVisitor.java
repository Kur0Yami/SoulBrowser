package org.jsoup.select;

import org.jsoup.nodes.Node;

@FunctionalInterface
/* loaded from: classes4.dex */
public interface NodeVisitor {
    /* renamed from: head */
    void mo2head(Node node, int i);

    /* renamed from: tail */
    void mo3tail(Node node, int i);

    void traverse(Node node);
}
