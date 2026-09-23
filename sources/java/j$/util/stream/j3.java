package j$.util.stream;

import j$.util.Spliterator;
import j$.util.function.DoubleConsumer$CC;
import java.util.function.DoubleConsumer;

/* loaded from: classes2.dex */
public final class j3 extends n3 implements k5 {
    public final double[] h;

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void n(Object obj) {
        n((Double) obj);
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return DoubleConsumer$CC.$default$andThen(this, doubleConsumer);
    }

    @Override // j$.util.stream.k5
    public final /* synthetic */ void n(Double d) {
        v3.D(this, d);
    }

    public j3(Spliterator spliterator, v3 v3Var, double[] dArr) {
        super(spliterator, v3Var, dArr.length);
        this.h = dArr;
    }

    public j3(j3 j3Var, Spliterator spliterator, long j, long j2) {
        super(j3Var, spliterator, j, j2, j3Var.h.length);
        this.h = j3Var.h;
    }

    @Override // j$.util.stream.n3
    public final n3 a(Spliterator spliterator, long j, long j2) {
        return new j3(this, spliterator, j, j2);
    }

    @Override // j$.util.stream.n3, j$.util.stream.n5, java.util.function.DoubleConsumer
    public final void accept(double d) {
        int i = this.f;
        if (i >= this.g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f));
        }
        double[] dArr = this.h;
        this.f = i + 1;
        dArr[i] = d;
    }
}
