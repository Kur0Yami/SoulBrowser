package j$.util.stream;

import java.util.function.LongConsumer;

/* loaded from: classes2.dex */
public final class c1 extends f1 {
    public final /* synthetic */ int t;
    public final /* synthetic */ Object u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ c1(a aVar, int i, Object obj, int i2) {
        super(aVar, i);
        this.t = i2;
        this.u = obj;
    }

    @Override // j$.util.stream.a
    public final n5 H0(int i, n5 n5Var) {
        switch (this.t) {
            case 0:
                return new b1(this, n5Var);
            case 1:
                return new z0(this, n5Var, 5);
            case 2:
                return new y4(this, n5Var);
            default:
                return new k(this, n5Var, 5);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c1(g1 g1Var, LongConsumer longConsumer) {
        super(g1Var, 0);
        this.t = 1;
        this.u = longConsumer;
    }
}
