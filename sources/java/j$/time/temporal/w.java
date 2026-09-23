package j$.time.temporal;

import j$.time.format.d0;
import j$.time.format.e0;
import java.util.Map;

/* loaded from: classes2.dex */
public final class w implements r {
    public static final v f = v.f(1, 7);
    public static final v g = v.g(0, 4, 6);
    public static final v h = v.g(0, 52, 54);
    public static final v i = v.g(1, 52, 53);

    /* renamed from: a, reason: collision with root package name */
    public final String f21260a;
    public final x b;

    /* renamed from: c, reason: collision with root package name */
    public final t f21261c;
    public final t d;
    public final v e;

    @Override // j$.time.temporal.r
    public final boolean isDateBased() {
        return true;
    }

    public final j$.time.chrono.b f(j$.time.chrono.m mVar, int i2, int i3, int i4) {
        j$.time.chrono.b D = mVar.D(i2, 1, 1);
        int m = m(1, b(D));
        int i5 = i4 - 1;
        return D.b(((Math.min(i3, a(m, D.H() + this.b.b) - 1) - 1) * 7) + i5 + (-m), (t) b.DAYS);
    }

    public w(String str, x xVar, t tVar, t tVar2, v vVar) {
        this.f21260a = str;
        this.b = xVar;
        this.f21261c = tVar;
        this.d = tVar2;
        this.e = vVar;
    }

    @Override // j$.time.temporal.r
    public final long i(n nVar) {
        int c2;
        b bVar = b.WEEKS;
        t tVar = this.d;
        if (tVar == bVar) {
            c2 = b(nVar);
        } else if (tVar != b.MONTHS) {
            if (tVar != b.YEARS) {
                if (tVar == x.h) {
                    c2 = e(nVar);
                } else if (tVar == b.FOREVER) {
                    c2 = c(nVar);
                } else {
                    throw new IllegalStateException("unreachable, rangeUnit: " + tVar + ", this: " + this);
                }
            } else {
                int b = b(nVar);
                int g2 = nVar.g(a.DAY_OF_YEAR);
                c2 = a(m(g2, b), g2);
            }
        } else {
            int b2 = b(nVar);
            int g3 = nVar.g(a.DAY_OF_MONTH);
            c2 = a(m(g3, b2), g3);
        }
        return c2;
    }

    public final int b(n nVar) {
        return s.e(nVar.g(a.DAY_OF_WEEK) - this.b.f21262a.getValue()) + 1;
    }

    public final int c(n nVar) {
        int b = b(nVar);
        int g2 = nVar.g(a.YEAR);
        a aVar = a.DAY_OF_YEAR;
        int g3 = nVar.g(aVar);
        int m = m(g3, b);
        int a2 = a(m, g3);
        return a2 == 0 ? g2 - 1 : a2 >= a(m, ((int) nVar.i(aVar).d) + this.b.b) ? g2 + 1 : g2;
    }

    public final int e(n nVar) {
        int a2;
        int b = b(nVar);
        a aVar = a.DAY_OF_YEAR;
        int g2 = nVar.g(aVar);
        int m = m(g2, b);
        int a3 = a(m, g2);
        if (a3 == 0) {
            return e(j$.com.android.tools.r8.a.G(nVar).w(nVar).u(g2, b.DAYS));
        }
        return (a3 <= 50 || a3 < (a2 = a(m, ((int) nVar.i(aVar).d) + this.b.b))) ? a3 : (a3 - a2) + 1;
    }

    public final int m(int i2, int i3) {
        int e = s.e(i2 - i3);
        return e + 1 > this.b.b ? 7 - e : -e;
    }

    public static int a(int i2, int i3) {
        return ((i3 - 1) + (i2 + 7)) / 7;
    }

    @Override // j$.time.temporal.r
    public final m l(m mVar, long j) {
        if (this.e.a(j, this) == mVar.g(this)) {
            return mVar;
        }
        if (this.d == b.FOREVER) {
            x xVar = this.b;
            return f(j$.com.android.tools.r8.a.G(mVar), (int) j, mVar.g(xVar.e), mVar.g(xVar.f21263c));
        }
        return mVar.b(r0 - r1, this.f21261c);
    }

    @Override // j$.time.temporal.r
    public final n h(Map map, d0 d0Var, e0 e0Var) {
        j$.time.chrono.b bVar;
        j$.time.chrono.b bVar2;
        a aVar;
        j$.time.chrono.b bVar3;
        long longValue = ((Long) map.get(this)).longValue();
        int H = j$.com.android.tools.r8.a.H(longValue);
        b bVar4 = b.WEEKS;
        v vVar = this.e;
        x xVar = this.b;
        t tVar = this.d;
        if (tVar == bVar4) {
            long e = s.e((vVar.a(longValue, this) - 1) + (xVar.f21262a.getValue() - 1)) + 1;
            map.remove(this);
            map.put(a.DAY_OF_WEEK, Long.valueOf(e));
            return null;
        }
        a aVar2 = a.DAY_OF_WEEK;
        if (!map.containsKey(aVar2)) {
            return null;
        }
        int e2 = s.e(aVar2.b.a(((Long) map.get(aVar2)).longValue(), aVar2) - xVar.f21262a.getValue()) + 1;
        j$.time.chrono.m G = j$.com.android.tools.r8.a.G(d0Var);
        a aVar3 = a.YEAR;
        if (!map.containsKey(aVar3)) {
            if ((tVar != x.h && tVar != b.FOREVER) || !map.containsKey(xVar.f) || !map.containsKey(xVar.e)) {
                return null;
            }
            w wVar = xVar.f;
            int a2 = wVar.e.a(((Long) map.get(wVar)).longValue(), xVar.f);
            if (e0Var == e0.LENIENT) {
                bVar = f(G, a2, 1, e2).b(j$.com.android.tools.r8.a.P(((Long) map.get(xVar.e)).longValue(), 1L), (t) bVar4);
            } else {
                w wVar2 = xVar.e;
                j$.time.chrono.b f2 = f(G, a2, wVar2.e.a(((Long) map.get(wVar2)).longValue(), xVar.e), e2);
                if (e0Var == e0.STRICT && c(f2) != a2) {
                    throw new RuntimeException("Strict mode rejected resolved date as it is in a different week-based-year");
                }
                bVar = f2;
            }
            map.remove(this);
            map.remove(xVar.f);
            map.remove(xVar.e);
            map.remove(aVar2);
            return bVar;
        }
        int a3 = aVar3.b.a(((Long) map.get(aVar3)).longValue(), aVar3);
        b bVar5 = b.MONTHS;
        if (tVar == bVar5) {
            a aVar4 = a.MONTH_OF_YEAR;
            if (map.containsKey(aVar4)) {
                long longValue2 = ((Long) map.get(aVar4)).longValue();
                long j = H;
                if (e0Var == e0.LENIENT) {
                    j$.time.chrono.b b = G.D(a3, 1, 1).b(j$.com.android.tools.r8.a.P(longValue2, 1L), (t) bVar5);
                    int b2 = b(b);
                    int g2 = b.g(a.DAY_OF_MONTH);
                    bVar3 = b.b(j$.com.android.tools.r8.a.I(j$.com.android.tools.r8.a.O(j$.com.android.tools.r8.a.P(j, a(m(g2, b2), g2)), 7), e2 - b(b)), (t) b.DAYS);
                    aVar = aVar4;
                } else {
                    aVar = aVar4;
                    j$.time.chrono.b D = G.D(a3, aVar.b.a(longValue2, aVar), 1);
                    long a4 = vVar.a(j, this);
                    int b3 = b(D);
                    int g3 = D.g(a.DAY_OF_MONTH);
                    j$.time.chrono.b b4 = D.b((((int) (a4 - a(m(g3, b3), g3))) * 7) + (e2 - b(D)), (t) b.DAYS);
                    if (e0Var == e0.STRICT && b4.y(aVar) != longValue2) {
                        throw new RuntimeException("Strict mode rejected resolved date as it is in a different month");
                    }
                    bVar3 = b4;
                }
                map.remove(this);
                map.remove(aVar3);
                map.remove(aVar);
                map.remove(aVar2);
                return bVar3;
            }
        }
        if (tVar != b.YEARS) {
            return null;
        }
        long j2 = H;
        j$.time.chrono.b D2 = G.D(a3, 1, 1);
        if (e0Var == e0.LENIENT) {
            int b5 = b(D2);
            int g4 = D2.g(a.DAY_OF_YEAR);
            bVar2 = D2.b(j$.com.android.tools.r8.a.I(j$.com.android.tools.r8.a.O(j$.com.android.tools.r8.a.P(j2, a(m(g4, b5), g4)), 7), e2 - b(D2)), (t) b.DAYS);
        } else {
            long a5 = vVar.a(j2, this);
            int b6 = b(D2);
            int g5 = D2.g(a.DAY_OF_YEAR);
            j$.time.chrono.b b7 = D2.b((((int) (a5 - a(m(g5, b6), g5))) * 7) + (e2 - b(D2)), (t) b.DAYS);
            if (e0Var == e0.STRICT && b7.y(aVar3) != a3) {
                throw new RuntimeException("Strict mode rejected resolved date as it is in a different year");
            }
            bVar2 = b7;
        }
        map.remove(this);
        map.remove(aVar3);
        map.remove(aVar2);
        return bVar2;
    }

    @Override // j$.time.temporal.r
    public final v range() {
        return this.e;
    }

    @Override // j$.time.temporal.r
    public final boolean d(n nVar) {
        if (!nVar.c(a.DAY_OF_WEEK)) {
            return false;
        }
        b bVar = b.WEEKS;
        t tVar = this.d;
        if (tVar == bVar) {
            return true;
        }
        if (tVar == b.MONTHS) {
            return nVar.c(a.DAY_OF_MONTH);
        }
        if (tVar == b.YEARS) {
            return nVar.c(a.DAY_OF_YEAR);
        }
        if (tVar == x.h) {
            return nVar.c(a.DAY_OF_YEAR);
        }
        if (tVar == b.FOREVER) {
            return nVar.c(a.YEAR);
        }
        return false;
    }

    @Override // j$.time.temporal.r
    public final v g(n nVar) {
        b bVar = b.WEEKS;
        t tVar = this.d;
        if (tVar == bVar) {
            return this.e;
        }
        if (tVar == b.MONTHS) {
            return j(nVar, a.DAY_OF_MONTH);
        }
        if (tVar == b.YEARS) {
            return j(nVar, a.DAY_OF_YEAR);
        }
        if (tVar == x.h) {
            return k(nVar);
        }
        if (tVar == b.FOREVER) {
            return a.YEAR.b;
        }
        throw new IllegalStateException("unreachable, rangeUnit: " + tVar + ", this: " + this);
    }

    public final v j(n nVar, a aVar) {
        int m = m(nVar.g(aVar), b(nVar));
        v i2 = nVar.i(aVar);
        return v.f(a(m, (int) i2.f21258a), a(m, (int) i2.d));
    }

    public final v k(n nVar) {
        a aVar = a.DAY_OF_YEAR;
        if (!nVar.c(aVar)) {
            return h;
        }
        int b = b(nVar);
        int g2 = nVar.g(aVar);
        int m = m(g2, b);
        int a2 = a(m, g2);
        if (a2 != 0) {
            if (a2 >= a(m, this.b.b + ((int) nVar.i(aVar).d))) {
                return k(j$.com.android.tools.r8.a.G(nVar).w(nVar).b((r0 - g2) + 8, (t) b.DAYS));
            }
            return v.f(1L, r1 - 1);
        }
        return k(j$.com.android.tools.r8.a.G(nVar).w(nVar).u(g2 + 7, b.DAYS));
    }

    public final String toString() {
        return this.f21260a + "[" + this.b.toString() + "]";
    }
}
