package j$.util.stream;

import java.util.function.IntFunction;

/* loaded from: classes2.dex */
public abstract class m2 extends e2 implements b2 {
    @Override // j$.util.stream.c2
    public final /* synthetic */ Object[] m(IntFunction intFunction) {
        return v3.L(this, intFunction);
    }

    @Override // j$.util.stream.b2
    public final void g(Object obj) {
        ((b2) this.f21407a).g(obj);
        ((b2) this.b).g(obj);
    }

    @Override // j$.util.stream.b2
    public final void f(int i, Object obj) {
        c2 c2Var = this.f21407a;
        ((b2) c2Var).f(i, obj);
        ((b2) this.b).f(i + ((int) ((b2) c2Var).count()), obj);
    }

    @Override // j$.util.stream.b2
    public final Object b() {
        long j = this.f21408c;
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        Object newArray = newArray((int) j);
        f(0, newArray);
        return newArray;
    }

    public final String toString() {
        long j = this.f21408c;
        return j < 32 ? String.format("%s[%s.%s]", getClass().getName(), this.f21407a, this.b) : String.format("%s[size=%d]", getClass().getName(), Long.valueOf(j));
    }
}
