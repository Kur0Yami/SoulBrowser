package org.jsoup.select;

import j$.util.Map;
import j$.util.function.Function$CC;
import java.util.ArrayList;
import java.util.IdentityHashMap;
import java.util.function.Function;
import org.jsoup.internal.Functions;
import org.jsoup.internal.SoftPool;
import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.LeafNode;
import org.jsoup.nodes.Node;
import org.jsoup.nodes.NodeIterator;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public abstract class StructuralEvaluator extends Evaluator {

    /* renamed from: a, reason: collision with root package name */
    public final Evaluator f22647a;
    public boolean b;

    /* renamed from: c, reason: collision with root package name */
    public final androidx.emoji2.text.flatbuffer.b f22648c = new androidx.emoji2.text.flatbuffer.b(new g(3), 5);

    /* loaded from: classes4.dex */
    public static class Ancestor extends StructuralEvaluator {
        @Override // org.jsoup.select.Evaluator
        public final int a() {
            return this.f22647a.a() * 8;
        }

        @Override // org.jsoup.select.StructuralEvaluator
        public final boolean e(Element element, Node node) {
            if (element == node) {
                return false;
            }
            do {
                node = node.parent();
                if (node == null) {
                    break;
                }
                if (f(element, node)) {
                    return true;
                }
            } while (node != element);
            return false;
        }

        public final String toString() {
            return String.format("%s ", this.f22647a);
        }
    }

    /* loaded from: classes4.dex */
    public static class Has extends StructuralEvaluator {
        public static final SoftPool e = new SoftPool(new g(0));
        public final boolean d;

        public Has(Evaluator evaluator) {
            super(evaluator);
            boolean z = false;
            if (evaluator instanceof CombiningEvaluator) {
                ArrayList arrayList = ((CombiningEvaluator) evaluator).f22619a;
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    Evaluator evaluator2 = (Evaluator) obj;
                    if ((evaluator2 instanceof PreviousSibling) || (evaluator2 instanceof ImmediatePreviousSibling)) {
                        z = true;
                        break;
                    }
                }
            }
            this.d = z;
        }

        @Override // org.jsoup.select.Evaluator
        public final int a() {
            return this.f22647a.a() * 10;
        }

        @Override // org.jsoup.select.StructuralEvaluator
        public final boolean e(Element element, Node node) {
            return false;
        }

        @Override // org.jsoup.select.StructuralEvaluator, org.jsoup.select.Evaluator
        public final boolean matches(Element element, Element element2) {
            boolean z = this.d;
            Evaluator evaluator = this.f22647a;
            if (z) {
                for (Element firstElementSibling = element2.firstElementSibling(); firstElementSibling != null; firstElementSibling = firstElementSibling.nextElementSibling()) {
                    if (firstElementSibling != element2 && evaluator.matches(element2, firstElementSibling)) {
                        return true;
                    }
                }
            }
            SoftPool softPool = e;
            NodeIterator nodeIterator = (NodeIterator) softPool.borrow();
            nodeIterator.restart(element2);
            while (nodeIterator.hasNext()) {
                try {
                    Node next = nodeIterator.next();
                    if (next != element2 && evaluator.b(element2, next)) {
                        return true;
                    }
                } finally {
                    softPool.release(nodeIterator);
                }
            }
            softPool.release(nodeIterator);
            return false;
        }

        public final String toString() {
            return String.format(":has(%s)", this.f22647a);
        }
    }

    /* loaded from: classes4.dex */
    public static class ImmediateParentRun extends StructuralEvaluator {
        public final ArrayList d;
        public int e;

        public ImmediateParentRun(Evaluator evaluator) {
            super(evaluator);
            ArrayList arrayList = new ArrayList();
            this.d = arrayList;
            this.e = 2;
            arrayList.add(evaluator);
            this.e = evaluator.a() + this.e;
        }

        @Override // org.jsoup.select.Evaluator
        public final int a() {
            return this.e;
        }

        @Override // org.jsoup.select.StructuralEvaluator, org.jsoup.select.Evaluator
        public final void c() {
            ArrayList arrayList = this.d;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                ((Evaluator) obj).c();
            }
            super.c();
        }

        @Override // org.jsoup.select.StructuralEvaluator
        public final boolean e(Element element, Node node) {
            if (node == element) {
                return false;
            }
            ArrayList arrayList = this.d;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                if (node == null || !((Evaluator) arrayList.get(size)).b(element, node)) {
                    return false;
                }
                node = node.parent();
            }
            return true;
        }

        public final String toString() {
            return StringUtil.join(this.d, " > ");
        }
    }

    /* loaded from: classes4.dex */
    public static class ImmediatePreviousSibling extends StructuralEvaluator {
        @Override // org.jsoup.select.Evaluator
        public final int a() {
            return this.f22647a.a() + 2;
        }

        @Override // org.jsoup.select.StructuralEvaluator
        public final boolean e(Element element, Node node) {
            Node previousElementSibling;
            if (element == node) {
                return false;
            }
            if (this.b) {
                previousElementSibling = node.previousSibling();
            } else {
                previousElementSibling = node.previousElementSibling();
            }
            if (previousElementSibling == null || !f(element, previousElementSibling)) {
                return false;
            }
            return true;
        }

        public final String toString() {
            return String.format("%s + ", this.f22647a);
        }
    }

    /* loaded from: classes4.dex */
    public static class Is extends StructuralEvaluator {
        @Override // org.jsoup.select.Evaluator
        public final int a() {
            return this.f22647a.a() + 2;
        }

        @Override // org.jsoup.select.StructuralEvaluator
        public final boolean e(Element element, Node node) {
            return this.f22647a.b(element, node);
        }

        public final String toString() {
            return String.format(":is(%s)", this.f22647a);
        }
    }

    /* loaded from: classes4.dex */
    public static class Not extends StructuralEvaluator {
        @Override // org.jsoup.select.Evaluator
        public final int a() {
            return this.f22647a.a() + 2;
        }

        @Override // org.jsoup.select.StructuralEvaluator
        public final boolean e(Element element, Node node) {
            return !f(element, node);
        }

        public final String toString() {
            return String.format(":not(%s)", this.f22647a);
        }
    }

    /* loaded from: classes4.dex */
    public static class PreviousSibling extends StructuralEvaluator {
        @Override // org.jsoup.select.Evaluator
        public final int a() {
            return this.f22647a.a() * 3;
        }

        @Override // org.jsoup.select.StructuralEvaluator
        public final boolean e(Element element, Node node) {
            if (element == node) {
                return false;
            }
            for (Node firstSibling = node.firstSibling(); firstSibling != null && firstSibling != node; firstSibling = firstSibling.nextSibling()) {
                if (f(element, firstSibling)) {
                    return true;
                }
            }
            return false;
        }

        public final String toString() {
            return String.format("%s ~ ", this.f22647a);
        }
    }

    /* loaded from: classes4.dex */
    public static class Root extends Evaluator {
        @Override // org.jsoup.select.Evaluator
        public final int a() {
            return 1;
        }

        @Override // org.jsoup.select.Evaluator
        public final boolean matches(Element element, Element element2) {
            return element == element2;
        }

        public final String toString() {
            return ">";
        }
    }

    public StructuralEvaluator(Evaluator evaluator) {
        this.f22647a = evaluator;
        this.b = evaluator.d();
    }

    @Override // org.jsoup.select.Evaluator
    public void c() {
        ((IdentityHashMap) this.f22648c.get()).clear();
        this.f22647a.c();
    }

    @Override // org.jsoup.select.Evaluator
    public final boolean d() {
        return this.b;
    }

    public abstract boolean e(Element element, Node node);

    public final boolean f(final Element element, Node node) {
        return ((Boolean) Map.EL.computeIfAbsent((java.util.Map) Map.EL.computeIfAbsent((java.util.Map) this.f22648c.get(), element, Functions.identityMapFunction()), node, new Function() { // from class: org.jsoup.select.f
            @Override // java.util.function.Function
            /* renamed from: andThen */
            public /* synthetic */ Function mo17andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Boolean.valueOf(StructuralEvaluator.this.f22647a.b(element, (Node) obj));
            }

            @Override // java.util.function.Function
            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        })).booleanValue();
    }

    @Override // org.jsoup.select.Evaluator
    public boolean matches(Element element, Element element2) {
        return e(element, element2);
    }

    @Override // org.jsoup.select.Evaluator
    public final boolean matches(Element element, LeafNode leafNode) {
        return e(element, leafNode);
    }
}
