package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;
import java.util.function.BinaryOperator;
import java.util.function.LongFunction;

/* loaded from: classes2.dex */
public class i2 extends d {
    public final v3 h;
    public final LongFunction i;
    public final BinaryOperator j;

    @Override // j$.util.stream.d, java.util.concurrent.CountedCompleter
    public final void onCompletion(CountedCompleter countedCompleter) {
        d dVar = this.d;
        if (dVar != null) {
            this.f = (c2) this.j.apply((c2) ((i2) dVar).f, (c2) ((i2) this.e).f);
        }
        super.onCompletion(countedCompleter);
    }

    public i2(v3 v3Var, Spliterator spliterator, LongFunction longFunction, BinaryOperator binaryOperator) {
        super(v3Var, spliterator);
        this.h = v3Var;
        this.i = longFunction;
        this.j = binaryOperator;
    }

    public i2(i2 i2Var, Spliterator spliterator) {
        super(i2Var, spliterator);
        this.h = i2Var.h;
        this.i = i2Var.i;
        this.j = i2Var.j;
    }

    @Override // j$.util.stream.d
    public d c(Spliterator spliterator) {
        return new i2(this, spliterator);
    }

    @Override // j$.util.stream.d
    /* renamed from: f, reason: merged with bridge method [inline-methods] */
    public final c2 a() {
        u1 u1Var = (u1) this.i.apply(this.h.h0(this.b));
        this.h.v0(this.b, u1Var);
        return u1Var.build();
    }
}
