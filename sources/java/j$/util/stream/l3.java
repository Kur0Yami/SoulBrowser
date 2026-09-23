package j$.util.stream;

import j$.util.Spliterator;
import j$.util.function.LongConsumer$CC;
import java.util.function.LongConsumer;

/* loaded from: classes2.dex */
public final class l3 extends n3 implements m5 {
    public final long[] h;

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void n(Object obj) {
        l((Long) obj);
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return LongConsumer$CC.$default$andThen(this, longConsumer);
    }

    @Override // j$.util.stream.m5
    public final /* synthetic */ void l(Long l) {
        v3.H(this, l);
    }

    public l3(Spliterator spliterator, v3 v3Var, long[] jArr) {
        super(spliterator, v3Var, jArr.length);
        this.h = jArr;
    }

    public l3(l3 l3Var, Spliterator spliterator, long j, long j2) {
        super(l3Var, spliterator, j, j2, l3Var.h.length);
        this.h = l3Var.h;
    }

    @Override // j$.util.stream.n3
    public final n3 a(Spliterator spliterator, long j, long j2) {
        return new l3(this, spliterator, j, j2);
    }

    @Override // j$.util.stream.n3, j$.util.stream.n5, java.util.function.LongConsumer
    public final void accept(long j) {
        int i = this.f;
        if (i >= this.g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f));
        }
        long[] jArr = this.h;
        this.f = i + 1;
        jArr[i] = j;
    }
}
