package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.IntFunction;
import java.util.function.Predicate;

/* loaded from: classes2.dex */
public final class q8 extends d5 implements f9 {
    public final /* synthetic */ int t;
    public final /* synthetic */ Predicate u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ q8(f5 f5Var, int i, Predicate predicate, int i2) {
        super(f5Var, i);
        this.t = i2;
        this.u = predicate;
    }

    @Override // j$.util.stream.a
    public final Spliterator F0(a aVar, Spliterator spliterator) {
        switch (this.t) {
            case 0:
                if (c7.ORDERED.i(aVar.m)) {
                    return E0(aVar, spliterator, new y0(11)).spliterator();
                }
                return new s9(aVar.x0(spliterator), this.u, 1);
            default:
                if (c7.ORDERED.i(aVar.m)) {
                    return E0(aVar, spliterator, new y0(11)).spliterator();
                }
                return new s9(aVar.x0(spliterator), this.u, 0);
        }
    }

    @Override // j$.util.stream.a
    public final c2 E0(v3 v3Var, Spliterator spliterator, IntFunction intFunction) {
        switch (this.t) {
            case 0:
                return (c2) new i9(this, v3Var, spliterator, intFunction).invoke();
            default:
                return (c2) new h9(this, v3Var, spliterator, intFunction).invoke();
        }
    }

    @Override // j$.util.stream.a
    public final n5 H0(int i, n5 n5Var) {
        switch (this.t) {
            case 0:
                return new j(this, n5Var);
            default:
                return new r8(this, n5Var, false);
        }
    }

    @Override // j$.util.stream.f9
    public g9 h(u1 u1Var, boolean z) {
        return new r8(this, u1Var, z);
    }
}
