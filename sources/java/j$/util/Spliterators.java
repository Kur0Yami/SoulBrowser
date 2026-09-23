package j$.util;

import j$.util.Spliterator;
import java.util.Iterator;
import java.util.function.Consumer;
import kotlin.jvm.internal.LongCompanionObject;

/* loaded from: classes2.dex */
public final class Spliterators {

    /* renamed from: a, reason: collision with root package name */
    public static final j1 f21291a = new Object();
    public static final h1 b = new Object();

    /* renamed from: c, reason: collision with root package name */
    public static final i1 f21292c = new Object();
    public static final g1 d = new Object();

    public static Spliterator.OfInt spliterator(int[] iArr, int i, int i2, int i3) {
        a(((int[]) Objects.requireNonNull(iArr)).length, i, i2);
        return new k1(iArr, i, i2, i3);
    }

    public static Spliterator.OfLong spliterator(long[] jArr, int i, int i2, int i3) {
        a(((long[]) Objects.requireNonNull(jArr)).length, i, i2);
        return new m1(jArr, i, i2, i3);
    }

    public static Spliterator.OfDouble spliterator(double[] dArr, int i, int i2, int i3) {
        a(((double[]) Objects.requireNonNull(dArr)).length, i, i2);
        return new f1(dArr, i, i2, i3);
    }

    public static void a(int i, int i2, int i3) {
        if (i2 <= i3) {
            if (i2 < 0) {
                throw new ArrayIndexOutOfBoundsException(i2);
            }
            if (i3 > i) {
                throw new ArrayIndexOutOfBoundsException(i3);
            }
            return;
        }
        throw new ArrayIndexOutOfBoundsException("origin(" + i2 + ") > fence(" + i3 + ")");
    }

    public static <T> Spliterator<T> spliterator(java.util.Collection<? extends T> collection, int i) {
        return new l1((java.util.Collection) Objects.requireNonNull(collection), i);
    }

    public static <T> Spliterator<T> spliteratorUnknownSize(Iterator<? extends T> it, int i) {
        return new l1((Iterator) Objects.requireNonNull(it), i);
    }

    /* loaded from: classes2.dex */
    public static abstract class AbstractSpliterator<T> implements Spliterator<T> {

        /* renamed from: a, reason: collision with root package name */
        public long f21293a;
        public int b;

        @Override // j$.util.Spliterator
        public final int characteristics() {
            return 0;
        }

        @Override // j$.util.Spliterator
        public /* synthetic */ void forEachRemaining(Consumer consumer) {
            Spliterator.CC.$default$forEachRemaining(this, consumer);
        }

        @Override // j$.util.Spliterator
        public /* synthetic */ java.util.Comparator getComparator() {
            return Spliterator.CC.$default$getComparator(this);
        }

        @Override // j$.util.Spliterator
        public /* synthetic */ long getExactSizeIfKnown() {
            return Spliterator.CC.$default$getExactSizeIfKnown(this);
        }

        @Override // j$.util.Spliterator
        public /* synthetic */ boolean hasCharacteristics(int i) {
            return Spliterator.CC.$default$hasCharacteristics(this, i);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [java.util.function.Consumer, j$.util.d1, java.lang.Object] */
        @Override // j$.util.Spliterator
        public final Spliterator trySplit() {
            ?? obj = new Object();
            long j = this.f21293a;
            if (j <= 1 || !tryAdvance(obj)) {
                return null;
            }
            int i = this.b + 1024;
            if (i > j) {
                i = (int) j;
            }
            if (i > 33554432) {
                i = 33554432;
            }
            Object[] objArr = new Object[i];
            int i2 = 0;
            do {
                objArr[i2] = obj.f21330a;
                i2++;
                if (i2 >= i) {
                    break;
                }
            } while (tryAdvance(obj));
            this.b = i2;
            long j2 = this.f21293a;
            if (j2 != LongCompanionObject.MAX_VALUE) {
                this.f21293a = j2 - i2;
            }
            return new e1(objArr, 0, i2, 0);
        }

        @Override // j$.util.Spliterator
        public final long estimateSize() {
            return this.f21293a;
        }
    }
}
