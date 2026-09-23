package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;

/* loaded from: classes2.dex */
public final class p0 extends CountedCompleter {

    /* renamed from: a, reason: collision with root package name */
    public Spliterator f21471a;
    public final n5 b;

    /* renamed from: c, reason: collision with root package name */
    public final v3 f21472c;
    public long d;

    public p0(v3 v3Var, Spliterator spliterator, n5 n5Var) {
        super(null);
        this.b = n5Var;
        this.f21472c = v3Var;
        this.f21471a = spliterator;
        this.d = 0L;
    }

    public p0(p0 p0Var, Spliterator spliterator) {
        super(p0Var);
        this.f21471a = spliterator;
        this.b = p0Var.b;
        this.d = p0Var.d;
        this.f21472c = p0Var.f21472c;
    }

    @Override // java.util.concurrent.CountedCompleter
    public final void compute() {
        Spliterator trySplit;
        Spliterator spliterator = this.f21471a;
        long estimateSize = spliterator.estimateSize();
        long j = this.d;
        if (j == 0) {
            j = d.e(estimateSize);
            this.d = j;
        }
        boolean i = c7.SHORT_CIRCUIT.i(((a) this.f21472c).m);
        n5 n5Var = this.b;
        boolean z = false;
        p0 p0Var = this;
        while (true) {
            if (i && n5Var.e()) {
                break;
            }
            if (estimateSize <= j || (trySplit = spliterator.trySplit()) == null) {
                break;
            }
            p0 p0Var2 = new p0(p0Var, trySplit);
            p0Var.addToPendingCount(1);
            if (z) {
                spliterator = trySplit;
            } else {
                p0 p0Var3 = p0Var;
                p0Var = p0Var2;
                p0Var2 = p0Var3;
            }
            z = !z;
            p0Var.fork();
            p0Var = p0Var2;
            estimateSize = spliterator.estimateSize();
        }
        p0Var.f21472c.c0(spliterator, n5Var);
        p0Var.f21471a = null;
        p0Var.propagateCompletion();
    }
}
