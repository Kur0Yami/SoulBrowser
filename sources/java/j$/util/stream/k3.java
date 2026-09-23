package j$.util.stream;

import j$.util.Spliterator;
import j$.util.function.IntConsumer$CC;
import java.util.function.IntConsumer;

/* loaded from: classes2.dex */
public final class k3 extends n3 implements l5 {
    public final int[] h;

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void n(Object obj) {
        d((Integer) obj);
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return IntConsumer$CC.$default$andThen(this, intConsumer);
    }

    @Override // j$.util.stream.l5
    public final /* synthetic */ void d(Integer num) {
        v3.F(this, num);
    }

    public k3(Spliterator spliterator, v3 v3Var, int[] iArr) {
        super(spliterator, v3Var, iArr.length);
        this.h = iArr;
    }

    public k3(k3 k3Var, Spliterator spliterator, long j, long j2) {
        super(k3Var, spliterator, j, j2, k3Var.h.length);
        this.h = k3Var.h;
    }

    @Override // j$.util.stream.n3
    public final n3 a(Spliterator spliterator, long j, long j2) {
        return new k3(this, spliterator, j, j2);
    }

    @Override // j$.util.stream.n3, j$.util.stream.n5
    public final void accept(int i) {
        int i2 = this.f;
        if (i2 >= this.g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f));
        }
        int[] iArr = this.h;
        this.f = i2 + 1;
        iArr[i2] = i;
    }
}
