package j$.util.function;

import java.util.function.Predicate;

/* loaded from: classes2.dex */
public final /* synthetic */ class f implements Predicate {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f21345a;
    public final /* synthetic */ Predicate b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Predicate f21346c;

    public /* synthetic */ f(Predicate predicate, Predicate predicate2, int i) {
        this.f21345a = i;
        this.b = predicate;
        this.f21346c = predicate2;
    }

    public final /* synthetic */ Predicate and(Predicate predicate) {
        switch (this.f21345a) {
            case 0:
                return Predicate$CC.$default$and(this, predicate);
            default:
                return Predicate$CC.$default$and(this, predicate);
        }
    }

    public final /* synthetic */ Predicate negate() {
        switch (this.f21345a) {
            case 0:
                return Predicate$CC.$default$negate(this);
            default:
                return Predicate$CC.$default$negate(this);
        }
    }

    public final /* synthetic */ Predicate or(Predicate predicate) {
        switch (this.f21345a) {
            case 0:
                return Predicate$CC.$default$or(this, predicate);
            default:
                return Predicate$CC.$default$or(this, predicate);
        }
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.f21345a) {
            case 0:
                return this.b.test(obj) && this.f21346c.test(obj);
            default:
                return this.b.test(obj) || this.f21346c.test(obj);
        }
    }
}
