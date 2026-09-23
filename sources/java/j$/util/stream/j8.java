package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.uuid.Uuid;

/* loaded from: classes2.dex */
public abstract class j8 {

    /* renamed from: a, reason: collision with root package name */
    public final Spliterator f21443a;
    public final boolean b;

    /* renamed from: c, reason: collision with root package name */
    public final int f21444c;
    public final long d;
    public final AtomicLong e;

    public abstract Spliterator b(Spliterator spliterator);

    public j8(Spliterator spliterator, long j, long j2) {
        this.f21443a = spliterator;
        this.b = j2 < 0;
        this.d = j2 >= 0 ? j2 : 0L;
        this.f21444c = Uuid.SIZE_BITS;
        this.e = new AtomicLong(j2 >= 0 ? j + j2 : j);
    }

    public j8(Spliterator spliterator, j8 j8Var) {
        this.f21443a = spliterator;
        this.b = j8Var.b;
        this.e = j8Var.e;
        this.d = j8Var.d;
        this.f21444c = j8Var.f21444c;
    }

    public final long a(long j) {
        long j2;
        boolean z;
        long min;
        do {
            j2 = this.e.get();
            z = this.b;
            if (j2 != 0) {
                min = Math.min(j2, j);
                if (min <= 0) {
                    break;
                }
            } else {
                if (z) {
                    return j;
                }
                return 0L;
            }
        } while (!this.e.compareAndSet(j2, j2 - min));
        if (z) {
            return Math.max(j - min, 0L);
        }
        long j3 = this.d;
        return j2 > j3 ? Math.max(min - (j2 - j3), 0L) : min;
    }

    public final i8 f() {
        if (this.e.get() > 0) {
            return i8.MAYBE_MORE;
        }
        return this.b ? i8.UNLIMITED : i8.NO_MORE;
    }

    /* renamed from: trySplit, reason: collision with other method in class */
    public final Spliterator m25trySplit() {
        Spliterator trySplit;
        if (this.e.get() == 0 || (trySplit = this.f21443a.trySplit()) == null) {
            return null;
        }
        return b(trySplit);
    }

    public final long estimateSize() {
        return this.f21443a.estimateSize();
    }

    public final int characteristics() {
        return this.f21443a.characteristics() & (-16465);
    }

    /* renamed from: trySplit, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ Spliterator.OfPrimitive m24trySplit() {
        return (Spliterator.OfPrimitive) m25trySplit();
    }

    /* renamed from: trySplit, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ Spliterator.OfInt m22trySplit() {
        return (Spliterator.OfInt) m25trySplit();
    }

    /* renamed from: trySplit, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ Spliterator.OfLong m23trySplit() {
        return (Spliterator.OfLong) m25trySplit();
    }

    public /* bridge */ /* synthetic */ Spliterator.OfDouble trySplit() {
        return (Spliterator.OfDouble) m25trySplit();
    }
}
