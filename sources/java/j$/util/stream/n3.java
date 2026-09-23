package j$.util.stream;

import j$.util.Spliterator;
import j$.util.function.Consumer$CC;
import java.util.concurrent.CountedCompleter;
import java.util.function.Consumer;

/* loaded from: classes2.dex */
public abstract class n3 extends CountedCompleter implements n5 {

    /* renamed from: a, reason: collision with root package name */
    public final Spliterator f21459a;
    public final v3 b;

    /* renamed from: c, reason: collision with root package name */
    public final long f21460c;
    public final long d;
    public final long e;
    public int f;
    public int g;

    public abstract n3 a(Spliterator spliterator, long j, long j2);

    public /* synthetic */ void accept(double d) {
        v3.C();
        throw null;
    }

    public /* synthetic */ void accept(int i) {
        v3.J();
        throw null;
    }

    public /* synthetic */ void accept(long j) {
        v3.K();
        throw null;
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    @Override // j$.util.stream.n5
    public final /* synthetic */ boolean e() {
        return false;
    }

    @Override // j$.util.stream.n5
    public final /* synthetic */ void end() {
    }

    public n3(Spliterator spliterator, v3 v3Var, int i) {
        this.f21459a = spliterator;
        this.b = v3Var;
        this.f21460c = d.e(spliterator.estimateSize());
        this.d = 0L;
        this.e = i;
    }

    public n3(n3 n3Var, Spliterator spliterator, long j, long j2, int i) {
        super(n3Var);
        this.f21459a = spliterator;
        this.b = n3Var.b;
        this.f21460c = n3Var.f21460c;
        this.d = j;
        this.e = j2;
        if (j < 0 || j2 < 0 || (j + j2) - 1 >= i) {
            throw new IllegalArgumentException(String.format("offset and length interval [%d, %d + %d) is not within array size interval [0, %d)", Long.valueOf(j), Long.valueOf(j), Long.valueOf(j2), Integer.valueOf(i)));
        }
    }

    @Override // java.util.concurrent.CountedCompleter
    public final void compute() {
        Spliterator trySplit;
        Spliterator spliterator = this.f21459a;
        n3 n3Var = this;
        while (spliterator.estimateSize() > n3Var.f21460c && (trySplit = spliterator.trySplit()) != null) {
            n3Var.setPendingCount(1);
            long estimateSize = trySplit.estimateSize();
            n3 n3Var2 = n3Var;
            n3Var2.a(trySplit, n3Var.d, estimateSize).fork();
            n3Var = n3Var2.a(spliterator, n3Var2.d + estimateSize, n3Var2.e - estimateSize);
        }
        n3 n3Var3 = n3Var;
        n3Var3.b.v0(spliterator, n3Var3);
        n3Var3.propagateCompletion();
    }

    @Override // j$.util.stream.n5
    public final void c(long j) {
        long j2 = this.e;
        if (j > j2) {
            throw new IllegalStateException("size passed to Sink.begin exceeds array length");
        }
        int i = (int) this.d;
        this.f = i;
        this.g = i + ((int) j2);
    }
}
