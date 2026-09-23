package j$.util.stream;

import java.util.function.IntConsumer;

/* loaded from: classes2.dex */
public final class r0 extends w0 {
    public final /* synthetic */ int t;
    public final /* synthetic */ Object u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ r0(a aVar, int i, Object obj, int i2) {
        super(aVar, i);
        this.t = i2;
        this.u = obj;
    }

    @Override // j$.util.stream.a
    public final n5 H0(int i, n5 n5Var) {
        switch (this.t) {
            case 0:
                return new q0(this, n5Var, 1);
            case 1:
                return new q0(this, n5Var, 2);
            case 2:
                return new t0(this, n5Var);
            case 3:
                return new k(this, n5Var, 4);
            default:
                return new a5(this, n5Var);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r0(x0 x0Var, IntConsumer intConsumer) {
        super(x0Var, 0);
        this.t = 0;
        this.u = intConsumer;
    }
}
