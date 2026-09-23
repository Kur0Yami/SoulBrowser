package j$.util.stream;

import j$.util.Spliterator;

/* loaded from: classes2.dex */
public final class m3 extends n3 {
    public final Object[] h;

    public m3(Spliterator spliterator, v3 v3Var, Object[] objArr) {
        super(spliterator, v3Var, objArr.length);
        this.h = objArr;
    }

    public m3(m3 m3Var, Spliterator spliterator, long j, long j2) {
        super(m3Var, spliterator, j, j2, m3Var.h.length);
        this.h = m3Var.h;
    }

    @Override // j$.util.stream.n3
    public final n3 a(Spliterator spliterator, long j, long j2) {
        return new m3(this, spliterator, j, j2);
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void n(Object obj) {
        int i = this.f;
        if (i >= this.g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f));
        }
        Object[] objArr = this.h;
        this.f = i + 1;
        objArr[i] = obj;
    }
}
