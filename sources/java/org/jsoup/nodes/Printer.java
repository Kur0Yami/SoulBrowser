package org.jsoup.nodes;

import com.google.android.gms.ads.RequestConfiguration;
import java.nio.charset.Charset;
import org.jsoup.internal.QuietAppendable;
import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Entities;
import org.jsoup.parser.Tag;
import org.jsoup.select.NodeVisitor;
import org.jsoup.select.d;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class Printer implements NodeVisitor {

    /* renamed from: c, reason: collision with root package name */
    public final Node f22578c;
    public final QuietAppendable f;
    public final Document.OutputSettings g;

    /* loaded from: classes4.dex */
    public static class Outline extends Pretty {
        @Override // org.jsoup.nodes.Printer.Pretty
        public final boolean h(Node node) {
            return node != null;
        }

        @Override // org.jsoup.nodes.Printer.Pretty
        public final boolean i(Node node) {
            if (node != null && node != this.f22578c && !this.h && !Pretty.g(node)) {
                if (!(node instanceof TextNode) || node.previousSibling() != null || node.nextSibling() != null) {
                    return true;
                }
                return false;
            }
            return false;
        }
    }

    /* loaded from: classes4.dex */
    public static class Pretty extends Printer {
        public boolean h;

        public Pretty(Node node, QuietAppendable quietAppendable, Document.OutputSettings outputSettings) {
            super(node, quietAppendable, outputSettings);
            this.h = false;
            while (node != null) {
                int i = Tag.PreserveWhitespace;
                if ((node instanceof Element) && ((Element) node).h.is(i)) {
                    this.h = true;
                    return;
                }
                node = node.parentNode();
            }
        }

        public static boolean g(Node node) {
            if ((node instanceof TextNode) && ((TextNode) node).isBlank()) {
                return true;
            }
            return false;
        }

        @Override // org.jsoup.nodes.Printer
        public final void a(int i, Element element) {
            if (i(element)) {
                e(i);
            }
            super.a(i, element);
            if (element.h.is(Tag.PreserveWhitespace)) {
                this.h = true;
            }
        }

        @Override // org.jsoup.nodes.Printer
        public final void b(LeafNode leafNode, int i) {
            if (i(leafNode)) {
                e(i);
            }
            super.b(leafNode, i);
        }

        @Override // org.jsoup.nodes.Printer
        public final void c(int i, Element element) {
            Node firstChild = element.firstChild();
            while (g(firstChild)) {
                firstChild = firstChild.nextSibling();
            }
            if (i(firstChild)) {
                e(i);
            }
            element.x(this.f, this.g);
            if (this.h && element.h.is(Tag.PreserveWhitespace)) {
                for (Element parent = element.parent(); parent != null; parent = parent.parent()) {
                    if (parent.tag().preserveWhitespace()) {
                        return;
                    }
                }
                this.h = false;
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:30:0x0058, code lost:
        
            if (org.jsoup.internal.StringUtil.isWhitespace(r2.nodeValue().codePointAt(0)) != false) goto L30;
         */
        @Override // org.jsoup.nodes.Printer
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void d(org.jsoup.nodes.TextNode r5, int r6, int r7) {
            /*
                r4 = this;
                boolean r6 = r4.h
                r0 = 0
                if (r6 != 0) goto L74
                org.jsoup.nodes.Element r6 = r5.f22576c
                boolean r6 = r4.h(r6)
                r1 = 4
                if (r6 != 0) goto L10
            Le:
                r0 = r1
                goto L5d
            L10:
                org.jsoup.nodes.Node r6 = r5.previousSibling()
                org.jsoup.nodes.Node r2 = r5.nextSibling()
                boolean r3 = r6 instanceof org.jsoup.nodes.Element
                if (r3 == 0) goto L22
                boolean r3 = r4.h(r6)
                if (r3 == 0) goto L30
            L22:
                if (r6 == 0) goto L2e
                boolean r3 = r6 instanceof org.jsoup.nodes.TextNode
                if (r3 != 0) goto L30
                boolean r6 = r4.i(r6)
                if (r6 == 0) goto L30
            L2e:
                r1 = 12
            L30:
                if (r2 == 0) goto L5a
                boolean r6 = r2 instanceof org.jsoup.nodes.TextNode
                if (r6 != 0) goto L3d
                boolean r6 = r4.i(r2)
                if (r6 == 0) goto L3d
                goto L5a
            L3d:
                boolean r6 = g(r2)
                if (r6 == 0) goto L48
                org.jsoup.nodes.Node r2 = r2.nextSibling()
                goto L3d
            L48:
                boolean r6 = r2 instanceof org.jsoup.nodes.TextNode
                if (r6 == 0) goto Le
                java.lang.String r6 = r2.nodeValue()
                int r6 = r6.codePointAt(r0)
                boolean r6 = org.jsoup.internal.StringUtil.isWhitespace(r6)
                if (r6 == 0) goto Le
            L5a:
                r6 = r1 | 16
                r0 = r6
            L5d:
                boolean r6 = r5.isBlank()
                if (r6 != 0) goto L74
                org.jsoup.nodes.Element r6 = r5.f22576c
                boolean r6 = r4.h(r6)
                if (r6 == 0) goto L74
                boolean r6 = r4.i(r5)
                if (r6 == 0) goto L74
                r4.e(r7)
            L74:
                super.d(r5, r0, r7)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: org.jsoup.nodes.Printer.Pretty.d(org.jsoup.nodes.TextNode, int, int):void");
        }

        public boolean h(Node node) {
            if (node == null || !(node instanceof Element)) {
                return false;
            }
            Element element = (Element) node;
            if (!element.isBlock()) {
                if (!element.h.isKnownTag()) {
                    if (!(element.f22576c instanceof Document)) {
                        Element firstElementChild = element.firstElementChild();
                        for (int i = 0; i < 5 && firstElementChild != null; i++) {
                            if (!firstElementChild.isBlock() && firstElementChild.h.isKnownTag()) {
                                firstElementChild = firstElementChild.nextElementSibling();
                            } else {
                                return true;
                            }
                        }
                    } else {
                        return true;
                    }
                }
                return false;
            }
            return true;
        }

        public boolean i(Node node) {
            if (node != null && node != this.f22578c && !this.h && !g(node)) {
                if (!h(node)) {
                    Node previousSibling = node.previousSibling();
                    while (g(previousSibling)) {
                        previousSibling = previousSibling.previousSibling();
                    }
                    if (!h(previousSibling)) {
                        Element element = node.f22576c;
                        if (h(element) && !element.tag().is(Tag.InlineContainer)) {
                            Node firstChild = element.firstChild();
                            int i = 0;
                            while (true) {
                                if (i >= 5 || firstChild == null) {
                                    break;
                                }
                                if (!(firstChild instanceof TextNode)) {
                                    if (previousSibling != null) {
                                        if ((previousSibling instanceof TextNode) || (!h(previousSibling) && (previousSibling instanceof Element))) {
                                            break;
                                        }
                                        return true;
                                    }
                                    return true;
                                }
                                firstChild = firstChild.nextSibling();
                                i++;
                            }
                        }
                    } else {
                        return true;
                    }
                } else {
                    return true;
                }
            }
            return false;
        }
    }

    public Printer(Node node, QuietAppendable quietAppendable, Document.OutputSettings outputSettings) {
        this.f22578c = node;
        this.f = quietAppendable;
        this.g = outputSettings;
    }

    public static Printer f(Node node, QuietAppendable quietAppendable) {
        Document ownerDocument = node.ownerDocument();
        if (ownerDocument == null) {
            ownerDocument = new Document(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        }
        Document.OutputSettings outputSettings = ownerDocument.outputSettings();
        if (outputSettings.outline()) {
            return new Pretty(node, quietAppendable, outputSettings);
        }
        if (outputSettings.prettyPrint()) {
            return new Pretty(node, quietAppendable, outputSettings);
        }
        return new Printer(node, quietAppendable, outputSettings);
    }

    public void a(int i, Element element) {
        element.p(this.f, this.g);
    }

    public void b(LeafNode leafNode, int i) {
        leafNode.p(this.f, this.g);
    }

    public void c(int i, Element element) {
        element.x(this.f, this.g);
    }

    public void d(TextNode textNode, int i, int i2) {
        String t = textNode.t();
        char[] cArr = Entities.f22571a;
        Document.OutputSettings outputSettings = this.g;
        Entities.EscapeMode escapeMode = outputSettings.escapeMode();
        Charset charset = outputSettings.charset();
        Entities.c(t, this.f, escapeMode, charset, i | 1);
    }

    public final void e(int i) {
        QuietAppendable append = this.f.append('\n');
        Document.OutputSettings outputSettings = this.g;
        append.append(StringUtil.padding(outputSettings.indentAmount() * i, outputSettings.maxPaddingWidth()));
    }

    @Override // org.jsoup.select.NodeVisitor
    /* renamed from: head */
    public final void mo2head(Node node, int i) {
        if (node.getClass() == TextNode.class) {
            d((TextNode) node, 0, i);
        } else if (node instanceof Element) {
            a(i, (Element) node);
        } else {
            b((LeafNode) node, i);
        }
    }

    @Override // org.jsoup.select.NodeVisitor
    /* renamed from: tail */
    public final void mo3tail(Node node, int i) {
        if (node instanceof Element) {
            c(i, (Element) node);
        }
    }

    @Override // org.jsoup.select.NodeVisitor, org.jsoup.select.NodeFilter
    public final /* synthetic */ void traverse(Node node) {
        d.b(this, node);
    }
}
