package j$.time.chrono;

import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;

/* loaded from: classes2.dex */
public final class d0 extends d {
    private static final long serialVersionUID = 1300372329181994526L;

    /* renamed from: a, reason: collision with root package name */
    public final transient j$.time.g f21151a;

    @Override // j$.time.chrono.d, j$.time.chrono.b
    public final e A(j$.time.k kVar) {
        return new g(this, kVar);
    }

    public d0(j$.time.g gVar) {
        Objects.requireNonNull(gVar, "isoDate");
        this.f21151a = gVar;
    }

    @Override // j$.time.chrono.b
    public final m getChronology() {
        return b0.f21148c;
    }

    @Override // j$.time.chrono.d, j$.time.chrono.b
    public final int hashCode() {
        b0.f21148c.getClass();
        return this.f21151a.hashCode() ^ (-1990173233);
    }

    @Override // j$.time.chrono.d, j$.time.chrono.b
    public final n B() {
        return O() >= 1 ? e0.ROC : e0.BEFORE_ROC;
    }

    @Override // j$.time.chrono.d, j$.time.temporal.n
    public final j$.time.temporal.v i(j$.time.temporal.r rVar) {
        long j;
        if (!(rVar instanceof j$.time.temporal.a)) {
            return rVar.g(this);
        }
        if (j$.com.android.tools.r8.a.k(this, rVar)) {
            j$.time.temporal.a aVar = (j$.time.temporal.a) rVar;
            int i = c0.f21150a[aVar.ordinal()];
            if (i == 1 || i == 2 || i == 3) {
                return this.f21151a.i(rVar);
            }
            if (i != 4) {
                return b0.f21148c.n(aVar);
            }
            j$.time.temporal.v vVar = j$.time.temporal.a.YEAR.b;
            if (O() <= 0) {
                j = (-vVar.f21258a) + 1912;
            } else {
                j = vVar.d - 1911;
            }
            return j$.time.temporal.v.f(1L, j);
        }
        throw new RuntimeException(j$.time.c.a("Unsupported field: ", rVar));
    }

    @Override // j$.time.temporal.n
    public final long y(j$.time.temporal.r rVar) {
        if (rVar instanceof j$.time.temporal.a) {
            int i = c0.f21150a[((j$.time.temporal.a) rVar).ordinal()];
            if (i == 4) {
                int O = O();
                if (O < 1) {
                    O = 1 - O;
                }
                return O;
            }
            if (i == 5) {
                return ((O() * 12) + this.f21151a.b) - 1;
            }
            if (i == 6) {
                return O();
            }
            if (i != 7) {
                return this.f21151a.y(rVar);
            }
            return O() < 1 ? 0 : 1;
        }
        return rVar.i(this);
    }

    public final int O() {
        return this.f21151a.f21225a - 1911;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0022, code lost:
    
        if (r2 != 7) goto L20;
     */
    @Override // j$.time.chrono.d, j$.time.temporal.m
    /* renamed from: P, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final j$.time.chrono.d0 a(long r8, j$.time.temporal.r r10) {
        /*
            r7 = this;
            boolean r0 = r10 instanceof j$.time.temporal.a
            if (r0 == 0) goto L9f
            r0 = r10
            j$.time.temporal.a r0 = (j$.time.temporal.a) r0
            long r1 = r7.y(r0)
            int r1 = (r1 > r8 ? 1 : (r1 == r8 ? 0 : -1))
            if (r1 != 0) goto L10
            return r7
        L10:
            int[] r1 = j$.time.chrono.c0.f21150a
            int r2 = r0.ordinal()
            r2 = r1[r2]
            r3 = 7
            r4 = 6
            r5 = 4
            if (r2 == r5) goto L49
            r6 = 5
            if (r2 == r6) goto L25
            if (r2 == r4) goto L49
            if (r2 == r3) goto L49
            goto L5f
        L25:
            j$.time.chrono.b0 r10 = j$.time.chrono.b0.f21148c
            j$.time.temporal.v r10 = r10.n(r0)
            r10.b(r8, r0)
            int r10 = r7.O()
            long r0 = (long) r10
            r2 = 12
            long r0 = r0 * r2
            j$.time.g r10 = r7.f21151a
            short r2 = r10.b
            long r2 = (long) r2
            long r0 = r0 + r2
            r2 = 1
            long r0 = r0 - r2
            long r8 = r8 - r0
            j$.time.g r8 = r10.Z(r8)
            j$.time.chrono.d0 r8 = r7.Q(r8)
            return r8
        L49:
            j$.time.chrono.b0 r2 = j$.time.chrono.b0.f21148c
            j$.time.temporal.v r2 = r2.n(r0)
            int r2 = r2.a(r8, r0)
            int r0 = r0.ordinal()
            r0 = r1[r0]
            if (r0 == r5) goto L88
            if (r0 == r4) goto L7b
            if (r0 == r3) goto L6a
        L5f:
            j$.time.g r0 = r7.f21151a
            j$.time.g r8 = r0.a(r8, r10)
            j$.time.chrono.d0 r8 = r7.Q(r8)
            return r8
        L6a:
            j$.time.g r8 = r7.f21151a
            int r9 = r7.O()
            int r9 = 1912 - r9
            j$.time.g r8 = r8.f0(r9)
            j$.time.chrono.d0 r8 = r7.Q(r8)
            return r8
        L7b:
            j$.time.g r8 = r7.f21151a
            int r2 = r2 + 1911
            j$.time.g r8 = r8.f0(r2)
            j$.time.chrono.d0 r8 = r7.Q(r8)
            return r8
        L88:
            j$.time.g r8 = r7.f21151a
            int r9 = r7.O()
            r10 = 1
            if (r9 < r10) goto L94
            int r2 = r2 + 1911
            goto L96
        L94:
            int r2 = 1912 - r2
        L96:
            j$.time.g r8 = r8.f0(r2)
            j$.time.chrono.d0 r8 = r7.Q(r8)
            return r8
        L9f:
            j$.time.chrono.b r8 = super.a(r8, r10)
            j$.time.chrono.d0 r8 = (j$.time.chrono.d0) r8
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.time.chrono.d0.a(long, j$.time.temporal.r):j$.time.chrono.d0");
    }

    @Override // j$.time.chrono.d, j$.time.temporal.m
    /* renamed from: h */
    public final j$.time.temporal.m t(j$.time.g gVar) {
        return (d0) super.t(gVar);
    }

    @Override // j$.time.chrono.d, j$.time.chrono.b
    public final b t(j$.time.temporal.o oVar) {
        return (d0) super.t(oVar);
    }

    @Override // j$.time.chrono.d, j$.time.chrono.b
    public final b E(j$.time.temporal.q qVar) {
        return (d0) super.E(qVar);
    }

    @Override // j$.time.chrono.d
    public final b N(long j) {
        return Q(this.f21151a.b0(j));
    }

    @Override // j$.time.chrono.d
    public final b M(long j) {
        return Q(this.f21151a.Z(j));
    }

    @Override // j$.time.chrono.d
    public final b L(long j) {
        return Q(this.f21151a.Y(j));
    }

    @Override // j$.time.chrono.d, j$.time.chrono.b, j$.time.temporal.m
    public final b b(long j, j$.time.temporal.t tVar) {
        return (d0) super.b(j, tVar);
    }

    @Override // j$.time.chrono.d, j$.time.temporal.m
    public final j$.time.temporal.m b(long j, j$.time.temporal.t tVar) {
        return (d0) super.b(j, tVar);
    }

    @Override // j$.time.chrono.d, j$.time.chrono.b
    /* renamed from: o */
    public final b u(long j, j$.time.temporal.t tVar) {
        return (d0) super.u(j, tVar);
    }

    @Override // j$.time.chrono.d, j$.time.temporal.m
    public final j$.time.temporal.m u(long j, j$.time.temporal.b bVar) {
        return (d0) super.u(j, bVar);
    }

    public final d0 Q(j$.time.g gVar) {
        return gVar.equals(this.f21151a) ? this : new d0(gVar);
    }

    @Override // j$.time.chrono.d, j$.time.chrono.b
    public final long z() {
        return this.f21151a.z();
    }

    @Override // j$.time.chrono.d, j$.time.chrono.b
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof d0) {
            return this.f21151a.equals(((d0) obj).f21151a);
        }
        return false;
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new f0((byte) 7, this);
    }
}
