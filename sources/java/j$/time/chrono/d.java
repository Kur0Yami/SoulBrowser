package j$.time.chrono;

import java.io.Serializable;

/* loaded from: classes2.dex */
public abstract class d implements b, j$.time.temporal.m, j$.time.temporal.o, Serializable {
    private static final long serialVersionUID = 6282433883239719096L;

    @Override // java.lang.Comparable
    /* renamed from: I */
    public final /* synthetic */ int compareTo(b bVar) {
        return j$.com.android.tools.r8.a.b(this, bVar);
    }

    public abstract b L(long j);

    public abstract b M(long j);

    public abstract b N(long j);

    @Override // j$.time.chrono.b, j$.time.temporal.n
    public /* synthetic */ boolean c(j$.time.temporal.r rVar) {
        return j$.com.android.tools.r8.a.k(this, rVar);
    }

    @Override // j$.time.temporal.n
    public final /* synthetic */ Object d(j$.time.h hVar) {
        return j$.com.android.tools.r8.a.m(this, hVar);
    }

    @Override // j$.time.temporal.n
    public final /* synthetic */ int g(j$.time.temporal.r rVar) {
        return j$.time.temporal.s.a(this, rVar);
    }

    @Override // j$.time.temporal.n
    public /* synthetic */ j$.time.temporal.v i(j$.time.temporal.r rVar) {
        return j$.time.temporal.s.d(this, rVar);
    }

    @Override // j$.time.temporal.o
    public final /* synthetic */ j$.time.temporal.m l(j$.time.temporal.m mVar) {
        return j$.com.android.tools.r8.a.a(this, mVar);
    }

    public static b K(m mVar, j$.time.temporal.m mVar2) {
        b bVar = (b) mVar2;
        if (mVar.equals(bVar.getChronology())) {
            return bVar;
        }
        throw new ClassCastException("Chronology mismatch, expected: " + mVar.f() + ", actual: " + bVar.getChronology().f());
    }

    @Override // j$.time.chrono.b
    public e A(j$.time.k kVar) {
        return new g(this, kVar);
    }

    @Override // j$.time.temporal.m
    public b b(long j, j$.time.temporal.t tVar) {
        boolean z = tVar instanceof j$.time.temporal.b;
        if (!z) {
            if (!z) {
                return K(getChronology(), tVar.d(this, j));
            }
            throw new RuntimeException("Unsupported unit: " + tVar);
        }
        switch (c.f21149a[((j$.time.temporal.b) tVar).ordinal()]) {
            case 1:
                return L(j);
            case 2:
                return L(j$.com.android.tools.r8.a.O(j, 7));
            case 3:
                return M(j);
            case 4:
                return N(j);
            case 5:
                return N(j$.com.android.tools.r8.a.O(j, 10));
            case 6:
                return N(j$.com.android.tools.r8.a.O(j, 100));
            case 7:
                return N(j$.com.android.tools.r8.a.O(j, 1000));
            case 8:
                j$.time.temporal.a aVar = j$.time.temporal.a.ERA;
                return a(j$.com.android.tools.r8.a.I(y(aVar), j), (j$.time.temporal.r) aVar);
            default:
                throw new RuntimeException("Unsupported unit: " + tVar);
        }
    }

    @Override // j$.time.chrono.b
    public n B() {
        return getChronology().q(j$.time.temporal.s.a(this, j$.time.temporal.a.ERA));
    }

    @Override // j$.time.chrono.b
    public boolean m() {
        return getChronology().J(y(j$.time.temporal.a.YEAR));
    }

    @Override // j$.time.chrono.b
    public int H() {
        return m() ? 366 : 365;
    }

    @Override // j$.time.chrono.b
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof b) && j$.com.android.tools.r8.a.b(this, (b) obj) == 0;
    }

    @Override // j$.time.chrono.b
    public int hashCode() {
        long z = z();
        return ((int) (z ^ (z >>> 32))) ^ getChronology().hashCode();
    }

    @Override // j$.time.temporal.m
    public b t(j$.time.temporal.o oVar) {
        return K(getChronology(), oVar.l(this));
    }

    @Override // j$.time.chrono.b
    public final String toString() {
        long y = y(j$.time.temporal.a.YEAR_OF_ERA);
        long y2 = y(j$.time.temporal.a.MONTH_OF_YEAR);
        long y3 = y(j$.time.temporal.a.DAY_OF_MONTH);
        StringBuilder sb = new StringBuilder(30);
        sb.append(getChronology().toString());
        sb.append(" ");
        sb.append(B());
        sb.append(" ");
        sb.append(y);
        sb.append(y2 < 10 ? "-0" : "-");
        sb.append(y2);
        sb.append(y3 < 10 ? "-0" : "-");
        sb.append(y3);
        return sb.toString();
    }

    @Override // j$.time.temporal.m
    public b a(long j, j$.time.temporal.r rVar) {
        if (rVar instanceof j$.time.temporal.a) {
            throw new RuntimeException(j$.time.c.a("Unsupported field: ", rVar));
        }
        return K(getChronology(), rVar.l(this, j));
    }

    @Override // j$.time.chrono.b
    public b E(j$.time.temporal.q qVar) {
        return K(getChronology(), qVar.d(this));
    }

    @Override // j$.time.temporal.m
    /* renamed from: o */
    public b u(long j, j$.time.temporal.t tVar) {
        return K(getChronology(), j$.time.temporal.s.b(this, j, tVar));
    }

    @Override // j$.time.chrono.b
    public long z() {
        return y(j$.time.temporal.a.EPOCH_DAY);
    }
}
