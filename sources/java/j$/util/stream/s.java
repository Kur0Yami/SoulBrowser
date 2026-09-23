package j$.util.stream;

/* loaded from: classes2.dex */
public final class s extends f1 {
    public final /* synthetic */ int t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ s(a aVar, int i, int i2) {
        super(aVar, i);
        this.t = i2;
    }

    @Override // j$.util.stream.a
    public final n5 H0(int i, n5 n5Var) {
        switch (this.t) {
            case 0:
                return new o(this, n5Var, 3);
            case 1:
                return new s0(0, n5Var);
            case 2:
                return new q0(this, n5Var, 3);
            case 3:
                return new z0(this, n5Var, 1);
            case 4:
                return n5Var;
            default:
                return new z0(this, n5Var, 4);
        }
    }
}
