package org.apache.commons.text.lookup;

import j$.util.function.Predicate$CC;
import java.nio.file.Path;
import java.util.HashSet;
import java.util.function.Predicate;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;

/* loaded from: classes4.dex */
public final /* synthetic */ class c implements Predicate {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f22490a;
    public final /* synthetic */ Object b;

    public /* synthetic */ c(int i, Object obj) {
        this.f22490a = i;
        this.b = obj;
    }

    public /* synthetic */ Predicate and(Predicate predicate) {
        int i = this.f22490a;
        return Predicate$CC.$default$and(this, predicate);
    }

    public /* synthetic */ Predicate negate() {
        switch (this.f22490a) {
            case 0:
                return Predicate$CC.$default$negate(this);
            case 1:
                return Predicate$CC.$default$negate(this);
            default:
                return Predicate$CC.$default$negate(this);
        }
    }

    public /* synthetic */ Predicate or(Predicate predicate) {
        int i = this.f22490a;
        return Predicate$CC.$default$or(this, predicate);
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.f22490a) {
            case 0:
                return ((Path) this.b).startsWith((Path) obj);
            case 1:
                return ((Class) this.b).isInstance((Node) obj);
            default:
                return ((HashSet) this.b).add((Element) obj);
        }
    }
}
