package org.jsoup.nodes;

import java.util.Iterator;
import java.util.NoSuchElementException;
import org.jsoup.helper.Validate;
import org.jsoup.nodes.Node;

/* loaded from: classes4.dex */
public class NodeIterator<T extends Node> implements Iterator<T> {

    /* renamed from: c, reason: collision with root package name */
    public Node f22577c;
    public Node f;
    public Node g;
    public Node h;
    public Node i;
    public final Class j;

    public NodeIterator(Node node, Class<T> cls) {
        Validate.notNull(node);
        Validate.notNull(cls);
        this.j = cls;
        restart(node);
    }

    public static NodeIterator<Node> from(Node node) {
        return new NodeIterator<>(node, Node.class);
    }

    public final void a() {
        Node node;
        if (this.f != null) {
            return;
        }
        if (this.i != null && !this.g.hasParent()) {
            this.g = this.h;
        }
        Node node2 = this.g;
        loop0: while (true) {
            node = null;
            if (node2.childNodeSize() > 0) {
                node2 = node2.childNode(0);
            } else if (this.f22577c.equals(node2)) {
                node2 = null;
            } else {
                if (node2.nextSibling() != null) {
                    node2 = node2.nextSibling();
                }
                do {
                    node2 = node2.parent();
                    if (node2 == null || this.f22577c.equals(node2)) {
                        break loop0;
                    }
                } while (node2.nextSibling() == null);
                node2 = node2.nextSibling();
            }
            if (node2 == null) {
                break;
            } else if (this.j.isInstance(node2)) {
                node = node2;
                break;
            }
        }
        this.f = node;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        a();
        if (this.f != null) {
            return true;
        }
        return false;
    }

    @Override // java.util.Iterator
    public void remove() {
        this.g.remove();
    }

    public void restart(Node node) {
        if (this.j.isInstance(node)) {
            this.f = node;
        }
        this.g = node;
        this.h = node;
        this.f22577c = node;
        this.i = node.parent();
    }

    @Override // java.util.Iterator
    public T next() {
        a();
        T t = (T) this.f;
        if (t != null) {
            this.h = this.g;
            this.g = t;
            this.i = t.parent();
            this.f = null;
            return t;
        }
        throw new NoSuchElementException();
    }
}
