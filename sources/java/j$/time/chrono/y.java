package j$.time.chrono;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;

/* loaded from: classes2.dex */
public final class y extends d {
    public static final j$.time.g d = j$.time.g.U(1873, 1, 1);
    private static final long serialVersionUID = -305327627230580483L;

    /* renamed from: a, reason: collision with root package name */
    public final transient j$.time.g f21178a;
    public final transient z b;

    /* renamed from: c, reason: collision with root package name */
    public final transient int f21179c;

    @Override // j$.time.chrono.d, j$.time.chrono.b
    public final e A(j$.time.k kVar) {
        return new g(this, kVar);
    }

    public y(j$.time.g gVar) {
        if (gVar.Q(d)) {
            throw new RuntimeException("JapaneseDate before Meiji 6 is not supported");
        }
        z e = z.e(gVar);
        this.b = e;
        this.f21179c = (gVar.f21225a - e.b.f21225a) + 1;
        this.f21178a = gVar;
    }

    public y(z zVar, int i, j$.time.g gVar) {
        if (gVar.Q(d)) {
            throw new RuntimeException("JapaneseDate before Meiji 6 is not supported");
        }
        this.b = zVar;
        this.f21179c = i;
        this.f21178a = gVar;
    }

    @Override // j$.time.chrono.b
    public final m getChronology() {
        return w.f21176c;
    }

    @Override // j$.time.chrono.d, j$.time.chrono.b
    public final int hashCode() {
        w.f21176c.getClass();
        return this.f21178a.hashCode() ^ (-688086063);
    }

    @Override // j$.time.chrono.d, j$.time.chrono.b
    public final n B() {
        return this.b;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Override // j$.time.chrono.d, j$.time.chrono.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int H() {
        /*
            r4 = this;
            j$.time.chrono.z r0 = r4.b
            j$.time.chrono.z r0 = r0.f()
            r1 = 1
            if (r0 == 0) goto L19
            j$.time.g r0 = r0.b
            int r2 = r0.f21225a
            j$.time.g r3 = r4.f21178a
            int r3 = r3.f21225a
            if (r2 != r3) goto L19
            int r0 = r0.P()
            int r0 = r0 - r1
            goto L1f
        L19:
            j$.time.g r0 = r4.f21178a
            int r0 = r0.H()
        L1f:
            int r2 = r4.f21179c
            if (r2 != r1) goto L2d
            j$.time.chrono.z r2 = r4.b
            j$.time.g r2 = r2.b
            int r2 = r2.P()
            int r2 = r2 - r1
            int r0 = r0 - r2
        L2d:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.time.chrono.y.H():int");
    }

    @Override // j$.time.chrono.d, j$.time.chrono.b, j$.time.temporal.n
    public final boolean c(j$.time.temporal.r rVar) {
        if (rVar == j$.time.temporal.a.ALIGNED_DAY_OF_WEEK_IN_MONTH || rVar == j$.time.temporal.a.ALIGNED_DAY_OF_WEEK_IN_YEAR || rVar == j$.time.temporal.a.ALIGNED_WEEK_OF_MONTH || rVar == j$.time.temporal.a.ALIGNED_WEEK_OF_YEAR) {
            return false;
        }
        if (rVar instanceof j$.time.temporal.a) {
            return ((j$.time.temporal.a) rVar).isDateBased();
        }
        return rVar != null && rVar.d(this);
    }

    @Override // j$.time.chrono.d, j$.time.temporal.n
    public final j$.time.temporal.v i(j$.time.temporal.r rVar) {
        if (rVar instanceof j$.time.temporal.a) {
            if (c(rVar)) {
                j$.time.temporal.a aVar = (j$.time.temporal.a) rVar;
                int i = x.f21177a[aVar.ordinal()];
                if (i == 1) {
                    return j$.time.temporal.v.f(1L, this.f21178a.R());
                }
                if (i == 2) {
                    return j$.time.temporal.v.f(1L, H());
                }
                if (i == 3) {
                    z zVar = this.b;
                    int i2 = zVar.b.f21225a;
                    if (zVar.f() != null) {
                        return j$.time.temporal.v.f(1L, (r6.b.f21225a - i2) + 1);
                    }
                    return j$.time.temporal.v.f(1L, 999999999 - i2);
                }
                return w.f21176c.n(aVar);
            }
            throw new RuntimeException(j$.time.c.a("Unsupported field: ", rVar));
        }
        return rVar.g(this);
    }

    @Override // j$.time.temporal.n
    public final long y(j$.time.temporal.r rVar) {
        if (rVar instanceof j$.time.temporal.a) {
            switch (x.f21177a[((j$.time.temporal.a) rVar).ordinal()]) {
                case 2:
                    if (this.f21179c == 1) {
                        return (this.f21178a.P() - this.b.b.P()) + 1;
                    }
                    return this.f21178a.P();
                case 3:
                    return this.f21179c;
                case 4:
                case 5:
                case 6:
                case 7:
                    throw new RuntimeException(j$.time.c.a("Unsupported field: ", rVar));
                case 8:
                    return this.b.f21180a;
                default:
                    return this.f21178a.y(rVar);
            }
        }
        return rVar.i(this);
    }

    @Override // j$.time.chrono.d, j$.time.temporal.m
    /* renamed from: P, reason: merged with bridge method [inline-methods] */
    public final y a(long j, j$.time.temporal.r rVar) {
        if (rVar instanceof j$.time.temporal.a) {
            j$.time.temporal.a aVar = (j$.time.temporal.a) rVar;
            if (y(aVar) == j) {
                return this;
            }
            int[] iArr = x.f21177a;
            int i = iArr[aVar.ordinal()];
            if (i == 3 || i == 8 || i == 9) {
                w wVar = w.f21176c;
                int a2 = wVar.n(aVar).a(j, aVar);
                int i2 = iArr[aVar.ordinal()];
                if (i2 == 3) {
                    return Q(this.f21178a.f0(wVar.r(this.b, a2)));
                }
                if (i2 == 8) {
                    return Q(this.f21178a.f0(wVar.r(z.j(a2), this.f21179c)));
                }
                if (i2 == 9) {
                    return Q(this.f21178a.f0(a2));
                }
            }
            return Q(this.f21178a.a(j, rVar));
        }
        return (y) super.a(j, rVar);
    }

    public final y R(j$.time.h hVar) {
        return (y) super.t(hVar);
    }

    @Override // j$.time.chrono.d, j$.time.temporal.m
    /* renamed from: h */
    public final j$.time.temporal.m t(j$.time.g gVar) {
        return (y) super.t(gVar);
    }

    @Override // j$.time.chrono.d, j$.time.chrono.b
    public final b t(j$.time.temporal.o oVar) {
        return (y) super.t(oVar);
    }

    @Override // j$.time.chrono.d, j$.time.chrono.b
    public final b E(j$.time.temporal.q qVar) {
        return (y) super.E(qVar);
    }

    @Override // j$.time.chrono.d
    public final b N(long j) {
        return Q(this.f21178a.b0(j));
    }

    @Override // j$.time.chrono.d
    public final b M(long j) {
        return Q(this.f21178a.Z(j));
    }

    @Override // j$.time.chrono.d
    public final b L(long j) {
        return Q(this.f21178a.Y(j));
    }

    public final y O(long j, j$.time.temporal.b bVar) {
        return (y) super.b(j, (j$.time.temporal.t) bVar);
    }

    @Override // j$.time.chrono.d, j$.time.chrono.b, j$.time.temporal.m
    public final b b(long j, j$.time.temporal.t tVar) {
        return (y) super.b(j, tVar);
    }

    @Override // j$.time.chrono.d, j$.time.temporal.m
    public final j$.time.temporal.m b(long j, j$.time.temporal.t tVar) {
        return (y) super.b(j, tVar);
    }

    @Override // j$.time.chrono.d, j$.time.chrono.b
    /* renamed from: o */
    public final b u(long j, j$.time.temporal.t tVar) {
        return (y) super.u(j, tVar);
    }

    @Override // j$.time.chrono.d, j$.time.temporal.m
    public final j$.time.temporal.m u(long j, j$.time.temporal.b bVar) {
        return (y) super.u(j, bVar);
    }

    public final y Q(j$.time.g gVar) {
        return gVar.equals(this.f21178a) ? this : new y(gVar);
    }

    @Override // j$.time.chrono.d, j$.time.chrono.b
    public final long z() {
        return this.f21178a.z();
    }

    @Override // j$.time.chrono.d, j$.time.chrono.b
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof y) {
            return this.f21178a.equals(((y) obj).f21178a);
        }
        return false;
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new f0((byte) 4, this);
    }
}
