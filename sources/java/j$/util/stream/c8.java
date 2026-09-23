package j$.util.stream;

import j$.util.Spliterator;

/* loaded from: classes2.dex */
public abstract class c8 {

    /* renamed from: a, reason: collision with root package name */
    public final long f21396a;
    public final long b;

    /* renamed from: c, reason: collision with root package name */
    public Spliterator f21397c;
    public long d;
    public long e;

    public abstract Spliterator a(Spliterator spliterator, long j, long j2, long j3, long j4);

    public c8(Spliterator spliterator, long j, long j2, long j3, long j4) {
        this.f21397c = spliterator;
        this.f21396a = j;
        this.b = j2;
        this.d = j3;
        this.e = j4;
    }

    /* renamed from: trySplit, reason: collision with other method in class */
    public final Spliterator m21trySplit() {
        long j = this.e;
        if (this.f21396a >= j || this.d >= j) {
            return null;
        }
        while (true) {
            Spliterator trySplit = this.f21397c.trySplit();
            if (trySplit == null) {
                return null;
            }
            long estimateSize = trySplit.estimateSize() + this.d;
            long min = Math.min(estimateSize, this.b);
            long j2 = this.f21396a;
            if (j2 >= min) {
                this.d = min;
            } else {
                long j3 = this.b;
                if (min >= j3) {
                    this.f21397c = trySplit;
                    this.e = min;
                } else {
                    long j4 = this.d;
                    if (j4 >= j2 && estimateSize <= j3) {
                        this.d = min;
                        return trySplit;
                    }
                    this.d = min;
                    return a(trySplit, j2, j3, j4, min);
                }
            }
        }
    }

    public final long estimateSize() {
        long j = this.e;
        long j2 = this.f21396a;
        if (j2 < j) {
            return j - Math.max(j2, this.d);
        }
        return 0L;
    }

    public final int characteristics() {
        return this.f21397c.characteristics();
    }

    /* renamed from: trySplit, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ Spliterator.OfPrimitive m20trySplit() {
        return (Spliterator.OfPrimitive) m21trySplit();
    }

    /* renamed from: trySplit, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ Spliterator.OfInt m18trySplit() {
        return (Spliterator.OfInt) m21trySplit();
    }

    /* renamed from: trySplit, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ Spliterator.OfLong m19trySplit() {
        return (Spliterator.OfLong) m21trySplit();
    }

    public /* bridge */ /* synthetic */ Spliterator.OfDouble trySplit() {
        return (Spliterator.OfDouble) m21trySplit();
    }
}
