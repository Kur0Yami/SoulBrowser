package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Predicate;
import java.util.function.Supplier;

/* loaded from: classes2.dex */
public final class b0 implements n8 {

    /* renamed from: a, reason: collision with root package name */
    public final int f21383a;
    public final Object b;

    /* renamed from: c, reason: collision with root package name */
    public final Predicate f21384c;
    public final Supplier d;

    public b0(boolean z, d7 d7Var, Object obj, Predicate predicate, Supplier supplier) {
        this.f21383a = (z ? 0 : c7.r) | c7.u;
        this.b = obj;
        this.f21384c = predicate;
        this.d = supplier;
    }

    @Override // j$.util.stream.n8
    public final int v() {
        return this.f21383a;
    }

    @Override // j$.util.stream.n8
    public final Object f(a aVar, Spliterator spliterator) {
        o8 o8Var = (o8) this.d.get();
        aVar.v0(spliterator, o8Var);
        Object obj = o8Var.get();
        return obj != null ? obj : this.b;
    }

    @Override // j$.util.stream.n8
    public final Object i(v3 v3Var, Spliterator spliterator) {
        a aVar = (a) v3Var;
        return new h0(this, c7.ORDERED.i(aVar.m), aVar, spliterator).invoke();
    }
}
