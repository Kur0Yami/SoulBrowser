package j$.util.stream;

import java.util.function.Consumer;

/* loaded from: classes2.dex */
public final class p extends e5 {
    public final /* synthetic */ int t;
    public final /* synthetic */ Object u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ p(a aVar, int i, Object obj, int i2) {
        super(aVar, i);
        this.t = i2;
        this.u = obj;
    }

    @Override // j$.util.stream.a
    public final n5 H0(int i, n5 n5Var) {
        switch (this.t) {
            case 0:
                return new o(this, n5Var, 0);
            case 1:
                return new q0(this, n5Var, 0);
            case 2:
                return new z0(this, n5Var, 0);
            case 3:
                return new k(this, n5Var, 1);
            case 4:
                return new k(this, n5Var, 2);
            case 5:
                return new k(this, n5Var, 3);
            default:
                return new j(this, n5Var);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p(f5 f5Var, Consumer consumer) {
        super(f5Var, 0);
        this.t = 3;
        this.u = consumer;
    }
}
