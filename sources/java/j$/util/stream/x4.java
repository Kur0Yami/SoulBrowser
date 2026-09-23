package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;

/* loaded from: classes2.dex */
public final class x4 extends d {
    public final v3 h;

    @Override // j$.util.stream.d, java.util.concurrent.CountedCompleter
    public final void onCompletion(CountedCompleter countedCompleter) {
        d dVar = this.d;
        if (dVar != null) {
            q4 q4Var = (q4) ((x4) dVar).f;
            q4Var.j((q4) ((x4) this.e).f);
            this.f = q4Var;
        }
        super.onCompletion(countedCompleter);
    }

    public x4(v3 v3Var, v3 v3Var2, Spliterator spliterator) {
        super(v3Var2, spliterator);
        this.h = v3Var;
    }

    public x4(x4 x4Var, Spliterator spliterator) {
        super(x4Var, spliterator);
        this.h = x4Var.h;
    }

    @Override // j$.util.stream.d
    public final d c(Spliterator spliterator) {
        return new x4(this, spliterator);
    }

    @Override // j$.util.stream.d
    public final Object a() {
        v3 v3Var = this.f21398a;
        q4 u0 = this.h.u0();
        v3Var.v0(this.b, u0);
        return u0;
    }
}
