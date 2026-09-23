package j$.util.stream;

import java.util.function.DoubleConsumer;

/* loaded from: classes2.dex */
public final class u extends x {
    public final /* synthetic */ int t;
    public final /* synthetic */ Object u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ u(a aVar, int i, Object obj, int i2) {
        super(aVar, i);
        this.t = i2;
        this.u = obj;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u(y yVar, DoubleConsumer doubleConsumer) {
        super(yVar, 0);
        this.t = 1;
        this.u = doubleConsumer;
    }

    @Override // j$.util.stream.a
    public final n5 H0(int i, n5 n5Var) {
        switch (this.t) {
            case 0:
                return new t(this, n5Var);
            case 1:
                return new o(this, n5Var, 5);
            case 2:
                return new k(this, n5Var, 6);
            default:
                return new b5(this, n5Var);
        }
    }
}
