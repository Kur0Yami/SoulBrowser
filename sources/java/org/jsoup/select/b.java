package org.jsoup.select;

import j$.util.function.Predicate$CC;
import java.util.function.Predicate;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;

/* loaded from: classes4.dex */
public final /* synthetic */ class b implements Predicate {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f22649a;
    public final /* synthetic */ Evaluator b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Element f22650c;

    public /* synthetic */ b(Evaluator evaluator, Element element, int i) {
        this.f22649a = i;
        this.b = evaluator;
        this.f22650c = element;
    }

    public /* synthetic */ Predicate and(Predicate predicate) {
        int i = this.f22649a;
        return Predicate$CC.$default$and(this, predicate);
    }

    public /* synthetic */ Predicate negate() {
        switch (this.f22649a) {
            case 0:
                return Predicate$CC.$default$negate(this);
            default:
                return Predicate$CC.$default$negate(this);
        }
    }

    public /* synthetic */ Predicate or(Predicate predicate) {
        int i = this.f22649a;
        return Predicate$CC.$default$or(this, predicate);
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.f22649a) {
            case 0:
                return this.b.b(this.f22650c, (Node) obj);
            default:
                return this.b.matches(this.f22650c, (Element) obj);
        }
    }
}
