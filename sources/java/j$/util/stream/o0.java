package j$.util.stream;

import j$.util.Spliterator;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountedCompleter;

/* loaded from: classes2.dex */
public final class o0 extends CountedCompleter {

    /* renamed from: a, reason: collision with root package name */
    public final v3 f21464a;
    public Spliterator b;

    /* renamed from: c, reason: collision with root package name */
    public final long f21465c;
    public final ConcurrentHashMap d;
    public final n0 e;
    public final o0 f;
    public c2 g;

    public o0(v3 v3Var, Spliterator spliterator, n0 n0Var) {
        super(null);
        this.f21464a = v3Var;
        this.b = spliterator;
        this.f21465c = d.e(spliterator.estimateSize());
        this.d = new ConcurrentHashMap(Math.max(16, d.g << 1));
        this.e = n0Var;
        this.f = null;
    }

    public o0(o0 o0Var, Spliterator spliterator, o0 o0Var2) {
        super(o0Var);
        this.f21464a = o0Var.f21464a;
        this.b = spliterator;
        this.f21465c = o0Var.f21465c;
        this.d = o0Var.d;
        this.e = o0Var.e;
        this.f = o0Var2;
    }

    @Override // java.util.concurrent.CountedCompleter
    public final void compute() {
        Spliterator trySplit;
        Spliterator spliterator = this.b;
        long j = this.f21465c;
        boolean z = false;
        o0 o0Var = this;
        while (spliterator.estimateSize() > j && (trySplit = spliterator.trySplit()) != null) {
            o0 o0Var2 = new o0(o0Var, trySplit, o0Var.f);
            o0 o0Var3 = new o0(o0Var, spliterator, o0Var2);
            o0Var.addToPendingCount(1);
            o0Var3.addToPendingCount(1);
            o0Var.d.put(o0Var2, o0Var3);
            if (o0Var.f != null) {
                o0Var2.addToPendingCount(1);
                if (o0Var.d.replace(o0Var.f, o0Var, o0Var2)) {
                    o0Var.addToPendingCount(-1);
                } else {
                    o0Var2.addToPendingCount(-1);
                }
            }
            if (z) {
                spliterator = trySplit;
                o0Var = o0Var2;
                o0Var2 = o0Var3;
            } else {
                o0Var = o0Var3;
            }
            z = !z;
            o0Var2.fork();
        }
        if (o0Var.getPendingCount() > 0) {
            m mVar = new m(17);
            v3 v3Var = o0Var.f21464a;
            u1 s0 = v3Var.s0(v3Var.h0(spliterator), mVar);
            o0Var.f21464a.v0(spliterator, s0);
            o0Var.g = s0.build();
            o0Var.b = null;
        }
        o0Var.tryComplete();
    }

    @Override // java.util.concurrent.CountedCompleter
    public final void onCompletion(CountedCompleter countedCompleter) {
        c2 c2Var = this.g;
        if (c2Var != null) {
            c2Var.forEach(this.e);
            this.g = null;
        } else {
            Spliterator spliterator = this.b;
            if (spliterator != null) {
                this.f21464a.v0(spliterator, this.e);
                this.b = null;
            }
        }
        o0 o0Var = (o0) this.d.remove(this);
        if (o0Var != null) {
            o0Var.tryComplete();
        }
    }
}
