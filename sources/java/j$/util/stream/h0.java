package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public final class h0 extends b {
    public final b0 j;
    public final boolean k;

    public h0(b0 b0Var, boolean z, a aVar, Spliterator spliterator) {
        super(aVar, spliterator);
        this.k = z;
        this.j = b0Var;
    }

    public h0(h0 h0Var, Spliterator spliterator) {
        super(h0Var, spliterator);
        this.k = h0Var.k;
        this.j = h0Var.j;
    }

    @Override // j$.util.stream.d
    public final d c(Spliterator spliterator) {
        return new h0(this, spliterator);
    }

    @Override // j$.util.stream.b
    public final Object h() {
        return this.j.b;
    }

    @Override // j$.util.stream.d
    public final Object a() {
        v3 v3Var = this.f21398a;
        o8 o8Var = (o8) this.j.d.get();
        v3Var.v0(this.b, o8Var);
        Object obj = o8Var.get();
        if (this.k) {
            if (obj != null) {
                d dVar = this;
                while (dVar != null) {
                    d dVar2 = (d) dVar.getCompleter();
                    if (dVar2 != null && dVar2.d != dVar) {
                        g();
                        return obj;
                    }
                    dVar = dVar2;
                }
                AtomicReference atomicReference = this.h;
                while (!atomicReference.compareAndSet(null, obj) && atomicReference.get() == null) {
                }
                return obj;
            }
        } else if (obj != null) {
            AtomicReference atomicReference2 = this.h;
            while (!atomicReference2.compareAndSet(null, obj) && atomicReference2.get() == null) {
            }
        }
        return null;
    }

    @Override // j$.util.stream.d, java.util.concurrent.CountedCompleter
    public final void onCompletion(CountedCompleter countedCompleter) {
        if (this.k) {
            h0 h0Var = (h0) this.d;
            h0 h0Var2 = null;
            while (true) {
                if (h0Var != h0Var2) {
                    Object i = h0Var.i();
                    if (i == null || !this.j.f21384c.test(i)) {
                        h0Var2 = h0Var;
                        h0Var = (h0) this.e;
                    } else {
                        d(i);
                        d dVar = this;
                        while (true) {
                            if (dVar == null) {
                                AtomicReference atomicReference = this.h;
                                while (!atomicReference.compareAndSet(null, i) && atomicReference.get() == null) {
                                }
                            } else {
                                d dVar2 = (d) dVar.getCompleter();
                                if (dVar2 != null && dVar2.d != dVar) {
                                    g();
                                    break;
                                }
                                dVar = dVar2;
                            }
                        }
                    }
                } else {
                    break;
                }
            }
        }
        super.onCompletion(countedCompleter);
    }
}
