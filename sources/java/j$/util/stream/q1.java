package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.atomic.AtomicReference;
import java.util.function.Supplier;

/* loaded from: classes2.dex */
public final class q1 extends b {
    public final j$.util.concurrent.t j;

    public q1(j$.util.concurrent.t tVar, a aVar, Spliterator spliterator) {
        super(aVar, spliterator);
        this.j = tVar;
    }

    public q1(q1 q1Var, Spliterator spliterator) {
        super(q1Var, spliterator);
        this.j = q1Var.j;
    }

    @Override // j$.util.stream.d
    public final d c(Spliterator spliterator) {
        return new q1(this, spliterator);
    }

    @Override // j$.util.stream.d
    public final Object a() {
        v3 v3Var = this.f21398a;
        o1 o1Var = (o1) ((Supplier) this.j.f21319c).get();
        v3Var.v0(this.b, o1Var);
        boolean z = o1Var.b;
        if (z == ((p1) this.j.b).b) {
            Boolean valueOf = Boolean.valueOf(z);
            AtomicReference atomicReference = this.h;
            while (!atomicReference.compareAndSet(null, valueOf) && atomicReference.get() == null) {
            }
        }
        return null;
    }

    @Override // j$.util.stream.b
    public final Object h() {
        return Boolean.valueOf(!((p1) this.j.b).b);
    }
}
