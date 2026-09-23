package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.IntFunction;

/* loaded from: classes2.dex */
public final class r5 extends v0 {
    public final /* synthetic */ long t;
    public final /* synthetic */ long u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r5(x0 x0Var, int i, long j, long j2) {
        super(x0Var, i);
        this.t = j;
        this.u = j2;
    }

    /* JADX WARN: Type inference failed for: r6v0, types: [j$.util.stream.j8, j$.util.Spliterator] */
    @Override // j$.util.stream.a
    public final Spliterator F0(a aVar, Spliterator spliterator) {
        long h0 = aVar.h0(spliterator);
        if (h0 > 0 && spliterator.hasCharacteristics(16384)) {
            Spliterator.OfInt ofInt = (Spliterator.OfInt) aVar.x0(spliterator);
            long j = this.t;
            return new a8(ofInt, j, y5.c(j, this.u));
        }
        if (!c7.ORDERED.i(aVar.m)) {
            Spliterator.OfInt ofInt2 = (Spliterator.OfInt) aVar.x0(spliterator);
            long j2 = this.t;
            long j3 = this.u;
            if (j2 <= h0) {
                long j4 = h0 - j2;
                if (j3 >= 0) {
                    j4 = Math.min(j3, j4);
                }
                j3 = j4;
                j2 = 0;
            }
            return new j8(ofInt2, j2, j3);
        }
        return ((c2) new x5(this, aVar, spliterator, new y0(20), this.t, this.u).invoke()).spliterator();
    }

    /* JADX WARN: Type inference failed for: r6v0, types: [j$.util.stream.j8, j$.util.Spliterator] */
    @Override // j$.util.stream.a
    public final c2 E0(v3 v3Var, Spliterator spliterator, IntFunction intFunction) {
        long j;
        long j2;
        long h0 = v3Var.h0(spliterator);
        if (h0 > 0 && spliterator.hasCharacteristics(16384)) {
            a aVar = (a) v3Var;
            while (aVar.l > 0) {
                aVar = aVar.i;
            }
            return v3.Z(v3Var, y5.b(aVar.C0(), spliterator, this.t, this.u), true);
        }
        if (!c7.ORDERED.i(((a) v3Var).m)) {
            Spliterator.OfInt ofInt = (Spliterator.OfInt) v3Var.x0(spliterator);
            long j3 = this.t;
            long j4 = this.u;
            if (j3 <= h0) {
                long j5 = h0 - j3;
                j = j4 >= 0 ? Math.min(j4, j5) : j5;
                j2 = 0;
            } else {
                j = j4;
                j2 = j3;
            }
            return v3.Z(this, new j8(ofInt, j2, j), true);
        }
        return (c2) new x5(this, v3Var, spliterator, intFunction, this.t, this.u).invoke();
    }

    @Override // j$.util.stream.a
    public final n5 H0(int i, n5 n5Var) {
        return new q5(this, n5Var);
    }
}
