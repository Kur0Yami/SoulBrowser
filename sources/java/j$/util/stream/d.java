package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;
import java.util.concurrent.ForkJoinPool;

/* loaded from: classes2.dex */
public abstract class d extends CountedCompleter {
    public static final int g = ForkJoinPool.getCommonPoolParallelism() << 2;

    /* renamed from: a, reason: collision with root package name */
    public final v3 f21398a;
    public Spliterator b;

    /* renamed from: c, reason: collision with root package name */
    public long f21399c;
    public d d;
    public d e;
    public Object f;

    public abstract Object a();

    public abstract d c(Spliterator spliterator);

    public d(v3 v3Var, Spliterator spliterator) {
        super(null);
        this.f21398a = v3Var;
        this.b = spliterator;
        this.f21399c = 0L;
    }

    public d(d dVar, Spliterator spliterator) {
        super(dVar);
        this.b = spliterator;
        this.f21398a = dVar.f21398a;
        this.f21399c = dVar.f21399c;
    }

    public static long e(long j) {
        long j2 = j / g;
        if (j2 > 0) {
            return j2;
        }
        return 1L;
    }

    @Override // java.util.concurrent.CountedCompleter, java.util.concurrent.ForkJoinTask
    public Object getRawResult() {
        return this.f;
    }

    @Override // java.util.concurrent.CountedCompleter, java.util.concurrent.ForkJoinTask
    public final void setRawResult(Object obj) {
        if (obj != null) {
            throw new IllegalStateException();
        }
    }

    public void d(Object obj) {
        this.f = obj;
    }

    public final boolean b() {
        return ((d) getCompleter()) == null;
    }

    @Override // java.util.concurrent.CountedCompleter
    public void compute() {
        Spliterator trySplit;
        Spliterator spliterator = this.b;
        long estimateSize = spliterator.estimateSize();
        long j = this.f21399c;
        if (j == 0) {
            j = e(estimateSize);
            this.f21399c = j;
        }
        boolean z = false;
        d dVar = this;
        while (estimateSize > j && (trySplit = spliterator.trySplit()) != null) {
            d c2 = dVar.c(trySplit);
            dVar.d = c2;
            d c3 = dVar.c(spliterator);
            dVar.e = c3;
            dVar.setPendingCount(1);
            if (z) {
                spliterator = trySplit;
                dVar = c2;
                c2 = c3;
            } else {
                dVar = c3;
            }
            z = !z;
            c2.fork();
            estimateSize = spliterator.estimateSize();
        }
        dVar.d(dVar.a());
        dVar.tryComplete();
    }

    @Override // java.util.concurrent.CountedCompleter
    public void onCompletion(CountedCompleter countedCompleter) {
        this.b = null;
        this.e = null;
        this.d = null;
    }
}
