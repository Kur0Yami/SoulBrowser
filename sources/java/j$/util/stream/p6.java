package j$.util.stream;

import j$.util.DesugarArrays;
import j$.util.Objects;
import j$.util.Spliterator;
import java.util.Comparator;
import java.util.function.Consumer;

/* loaded from: classes2.dex */
public final class p6 implements Spliterator {

    /* renamed from: a, reason: collision with root package name */
    public int f21477a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public int f21478c;
    public final int d;
    public Object[] e;
    public final /* synthetic */ y6 f;

    @Override // j$.util.Spliterator
    public final int characteristics() {
        return 16464;
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ Comparator getComparator() {
        return Spliterator.CC.$default$getComparator(this);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        return Spliterator.CC.$default$getExactSizeIfKnown(this);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        return Spliterator.CC.$default$hasCharacteristics(this, i);
    }

    public p6(y6 y6Var, int i, int i2, int i3, int i4) {
        this.f = y6Var;
        this.f21477a = i;
        this.b = i2;
        this.f21478c = i3;
        this.d = i4;
        Object[][] objArr = y6Var.f;
        this.e = objArr == null ? y6Var.e : objArr[i];
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        int i = this.f21477a;
        int i2 = this.d;
        int i3 = this.b;
        if (i == i3) {
            return i2 - this.f21478c;
        }
        long[] jArr = this.f.d;
        return ((jArr[i3] + i2) - jArr[i]) - this.f21478c;
    }

    @Override // j$.util.Spliterator
    public final boolean tryAdvance(Consumer consumer) {
        Objects.requireNonNull(consumer);
        int i = this.f21477a;
        int i2 = this.b;
        if (i >= i2 && (i != i2 || this.f21478c >= this.d)) {
            return false;
        }
        Object[] objArr = this.e;
        int i3 = this.f21478c;
        this.f21478c = i3 + 1;
        consumer.accept(objArr[i3]);
        if (this.f21478c == this.e.length) {
            this.f21478c = 0;
            int i4 = this.f21477a + 1;
            this.f21477a = i4;
            Object[][] objArr2 = this.f.f;
            if (objArr2 != null && i4 <= i2) {
                this.e = objArr2[i4];
            }
        }
        return true;
    }

    @Override // j$.util.Spliterator
    public final void forEachRemaining(Consumer consumer) {
        y6 y6Var;
        Objects.requireNonNull(consumer);
        int i = this.f21477a;
        int i2 = this.d;
        int i3 = this.b;
        if (i < i3 || (i == i3 && this.f21478c < i2)) {
            int i4 = this.f21478c;
            while (true) {
                y6Var = this.f;
                if (i >= i3) {
                    break;
                }
                Object[] objArr = y6Var.f[i];
                while (i4 < objArr.length) {
                    consumer.accept(objArr[i4]);
                    i4++;
                }
                i++;
                i4 = 0;
            }
            Object[] objArr2 = this.f21477a == i3 ? this.e : y6Var.f[i3];
            while (i4 < i2) {
                consumer.accept(objArr2[i4]);
                i4++;
            }
            this.f21477a = i3;
            this.f21478c = i2;
        }
    }

    @Override // j$.util.Spliterator
    public final Spliterator trySplit() {
        int i = this.f21477a;
        int i2 = this.b;
        if (i < i2) {
            int i3 = i2 - 1;
            int i4 = this.f21478c;
            y6 y6Var = this.f;
            p6 p6Var = new p6(y6Var, i, i3, i4, y6Var.f[i3].length);
            this.f21477a = i2;
            this.f21478c = 0;
            this.e = y6Var.f[i2];
            return p6Var;
        }
        if (i != i2) {
            return null;
        }
        int i5 = this.f21478c;
        int i6 = (this.d - i5) / 2;
        if (i6 == 0) {
            return null;
        }
        j$.util.e1 a2 = DesugarArrays.a(this.e, i5, i5 + i6);
        this.f21478c += i6;
        return a2;
    }
}
