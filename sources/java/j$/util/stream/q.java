package j$.util.stream;

/* loaded from: classes2.dex */
public final class q extends x {
    public final /* synthetic */ int t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ q(a aVar, int i, int i2) {
        super(aVar, i);
        this.t = i2;
    }

    @Override // j$.util.stream.a
    public final n5 H0(int i, n5 n5Var) {
        switch (this.t) {
            case 0:
                return new o(this, n5Var, 1);
            case 1:
                return n5Var;
            case 2:
                return new o(this, n5Var, 4);
            case 3:
                return new s0(1, n5Var);
            case 4:
                return new q0(this, n5Var, 4);
            case 5:
                return new i5(n5Var);
            default:
                return new z0(this, n5Var, 3);
        }
    }
}
