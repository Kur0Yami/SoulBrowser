package org.jsoup.select;

import org.jsoup.helper.Validate;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;
import org.jsoup.select.NodeFilter;

/* loaded from: classes4.dex */
public class NodeTraversor {
    public static NodeFilter.FilterResult filter(NodeFilter nodeFilter, Node node) {
        Node node2 = node;
        int i = 0;
        while (node2 != null) {
            NodeFilter.FilterResult head = nodeFilter.head(node2, i);
            if (head == NodeFilter.FilterResult.STOP) {
                return head;
            }
            if (head == NodeFilter.FilterResult.CONTINUE && node2.childNodeSize() > 0) {
                node2 = node2.childNode(0);
                i++;
            } else {
                while (node2.nextSibling() == null && i > 0) {
                    NodeFilter.FilterResult filterResult = NodeFilter.FilterResult.CONTINUE;
                    if ((head == filterResult || head == NodeFilter.FilterResult.SKIP_CHILDREN) && (head = nodeFilter.tail(node2, i)) == NodeFilter.FilterResult.STOP) {
                        return head;
                    }
                    Node parentNode = node2.parentNode();
                    i--;
                    if (head == NodeFilter.FilterResult.REMOVE) {
                        node2.remove();
                    }
                    head = filterResult;
                    node2 = parentNode;
                }
                if ((head == NodeFilter.FilterResult.CONTINUE || head == NodeFilter.FilterResult.SKIP_CHILDREN) && (head = nodeFilter.tail(node2, i)) == NodeFilter.FilterResult.STOP) {
                    return head;
                }
                if (node2 == node) {
                    return head;
                }
                Node nextSibling = node2.nextSibling();
                if (head == NodeFilter.FilterResult.REMOVE) {
                    node2.remove();
                }
                node2 = nextSibling;
            }
        }
        return NodeFilter.FilterResult.CONTINUE;
    }

    public static void traverse(NodeVisitor nodeVisitor, Node node) {
        Validate.notNull(nodeVisitor);
        Validate.notNull(node);
        Node node2 = node;
        int i = 0;
        while (node2 != null) {
            Node parentNode = node2.parentNode();
            int childNodeSize = parentNode != null ? parentNode.childNodeSize() : 0;
            Node nextSibling = node2.nextSibling();
            nodeVisitor.mo2head(node2, i);
            if (parentNode != null && !node2.hasParent()) {
                if (childNodeSize == parentNode.childNodeSize()) {
                    node2 = parentNode.childNode(node2.siblingIndex());
                } else if (nextSibling == null) {
                    do {
                        i--;
                        nodeVisitor.mo3tail(parentNode, i);
                        if (parentNode == node) {
                            break;
                        }
                        if (parentNode.nextSibling() != null) {
                            node2 = parentNode.nextSibling();
                            break;
                        }
                        parentNode = parentNode.parentNode();
                    } while (parentNode != null);
                    node2 = parentNode;
                    if (node2 == node || node2 == null) {
                        return;
                    }
                } else {
                    node2 = nextSibling;
                }
            } else if (node2.childNodeSize() > 0) {
                node2 = node2.childNode(0);
                i++;
            } else {
                while (node2.nextSibling() == null && i > 0) {
                    nodeVisitor.mo3tail(node2, i);
                    node2 = node2.parentNode();
                    i--;
                }
                nodeVisitor.mo3tail(node2, i);
                if (node2 == node) {
                    return;
                } else {
                    node2 = node2.nextSibling();
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void filter(NodeFilter nodeFilter, Elements elements) {
        Validate.notNull(nodeFilter);
        Validate.notNull(elements);
        int size = elements.size();
        int i = 0;
        while (i < size) {
            T t = elements.get(i);
            i++;
            if (filter(nodeFilter, (Element) t) == NodeFilter.FilterResult.STOP) {
                return;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void traverse(NodeVisitor nodeVisitor, Elements elements) {
        Validate.notNull(nodeVisitor);
        Validate.notNull(elements);
        int size = elements.size();
        int i = 0;
        while (i < size) {
            T t = elements.get(i);
            i++;
            traverse(nodeVisitor, (Element) t);
        }
    }
}
