package j$.time.temporal;

import j$.time.format.d0;
import j$.time.format.e0;
import java.util.Map;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public abstract class h implements r {
    public static final h DAY_OF_QUARTER;
    public static final h QUARTER_OF_YEAR;
    public static final h WEEK_BASED_YEAR;
    public static final h WEEK_OF_WEEK_BASED_YEAR;

    /* renamed from: a, reason: collision with root package name */
    public static final int[] f21248a;
    public static final /* synthetic */ h[] b;

    public /* synthetic */ n h(Map map, d0 d0Var, e0 e0Var) {
        return null;
    }

    @Override // j$.time.temporal.r
    public final boolean isDateBased() {
        return true;
    }

    public static h valueOf(String str) {
        return (h) Enum.valueOf(h.class, str);
    }

    public static h[] values() {
        return (h[]) b.clone();
    }

    static {
        h hVar = new h() { // from class: j$.time.temporal.d
            @Override // j$.time.temporal.r
            public final v range() {
                return v.g(1L, 90L, 92L);
            }

            @Override // j$.time.temporal.r
            public final boolean d(n nVar) {
                if (!nVar.c(a.DAY_OF_YEAR) || !nVar.c(a.MONTH_OF_YEAR) || !nVar.c(a.YEAR)) {
                    return false;
                }
                h hVar2 = j.f21250a;
                return j$.com.android.tools.r8.a.G(nVar).equals(j$.time.chrono.t.f21173c);
            }

            @Override // j$.time.temporal.r
            public final v g(n nVar) {
                if (!d(nVar)) {
                    throw new RuntimeException("Unsupported field: DayOfQuarter");
                }
                long y = nVar.y(h.QUARTER_OF_YEAR);
                if (y == 1) {
                    return j$.time.chrono.t.f21173c.J(nVar.y(a.YEAR)) ? v.f(1L, 91L) : v.f(1L, 90L);
                }
                if (y == 2) {
                    return v.f(1L, 91L);
                }
                if (y == 3 || y == 4) {
                    return v.f(1L, 92L);
                }
                return range();
            }

            @Override // j$.time.temporal.r
            public final long i(n nVar) {
                if (!d(nVar)) {
                    throw new RuntimeException("Unsupported field: DayOfQuarter");
                }
                return nVar.g(a.DAY_OF_YEAR) - h.f21248a[((nVar.g(a.MONTH_OF_YEAR) - 1) / 3) + (j$.time.chrono.t.f21173c.J(nVar.y(a.YEAR)) ? 4 : 0)];
            }

            @Override // j$.time.temporal.r
            public final m l(m mVar, long j) {
                long i = i(mVar);
                range().b(j, this);
                a aVar = a.DAY_OF_YEAR;
                return mVar.a((j - i) + mVar.y(aVar), aVar);
            }

            @Override // j$.time.temporal.h, j$.time.temporal.r
            public final n h(Map map, d0 d0Var, e0 e0Var) {
                j$.time.g gVar;
                long j;
                a aVar = a.YEAR;
                Long l = (Long) map.get(aVar);
                r rVar = h.QUARTER_OF_YEAR;
                Long l2 = (Long) map.get(rVar);
                if (l == null || l2 == null) {
                    return null;
                }
                int a2 = aVar.b.a(l.longValue(), aVar);
                long longValue = ((Long) map.get(h.DAY_OF_QUARTER)).longValue();
                h hVar2 = j.f21250a;
                if (j$.com.android.tools.r8.a.G(d0Var).equals(j$.time.chrono.t.f21173c)) {
                    if (e0Var == e0.LENIENT) {
                        gVar = j$.time.g.U(a2, 1, 1).Z(j$.com.android.tools.r8.a.O(j$.com.android.tools.r8.a.P(l2.longValue(), 1L), 3));
                        j = j$.com.android.tools.r8.a.P(longValue, 1L);
                    } else {
                        j$.time.g U = j$.time.g.U(a2, ((rVar.range().a(l2.longValue(), rVar) - 1) * 3) + 1, 1);
                        if (longValue < 1 || longValue > 90) {
                            if (e0Var == e0.STRICT) {
                                g(U).b(longValue, this);
                            } else {
                                range().b(longValue, this);
                            }
                        }
                        gVar = U;
                        j = longValue - 1;
                    }
                    map.remove(this);
                    map.remove(aVar);
                    map.remove(rVar);
                    return gVar.Y(j);
                }
                throw new RuntimeException("Resolve requires IsoChronology");
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "DayOfQuarter";
            }
        };
        DAY_OF_QUARTER = hVar;
        h hVar2 = new h() { // from class: j$.time.temporal.e
            @Override // j$.time.temporal.r
            public final v range() {
                return v.f(1L, 4L);
            }

            @Override // j$.time.temporal.r
            public final boolean d(n nVar) {
                if (!nVar.c(a.MONTH_OF_YEAR)) {
                    return false;
                }
                h hVar3 = j.f21250a;
                return j$.com.android.tools.r8.a.G(nVar).equals(j$.time.chrono.t.f21173c);
            }

            @Override // j$.time.temporal.r
            public final long i(n nVar) {
                if (!d(nVar)) {
                    throw new RuntimeException("Unsupported field: QuarterOfYear");
                }
                return (nVar.y(a.MONTH_OF_YEAR) + 2) / 3;
            }

            @Override // j$.time.temporal.r
            public final v g(n nVar) {
                if (!d(nVar)) {
                    throw new RuntimeException("Unsupported field: QuarterOfYear");
                }
                return range();
            }

            @Override // j$.time.temporal.r
            public final m l(m mVar, long j) {
                long i = i(mVar);
                range().b(j, this);
                a aVar = a.MONTH_OF_YEAR;
                return mVar.a(((j - i) * 3) + mVar.y(aVar), aVar);
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "QuarterOfYear";
            }
        };
        QUARTER_OF_YEAR = hVar2;
        h hVar3 = new h() { // from class: j$.time.temporal.f
            @Override // j$.time.temporal.r
            public final v range() {
                return v.g(1L, 52L, 53L);
            }

            @Override // j$.time.temporal.r
            public final boolean d(n nVar) {
                if (!nVar.c(a.EPOCH_DAY)) {
                    return false;
                }
                h hVar4 = j.f21250a;
                return j$.com.android.tools.r8.a.G(nVar).equals(j$.time.chrono.t.f21173c);
            }

            @Override // j$.time.temporal.r
            public final v g(n nVar) {
                if (!d(nVar)) {
                    throw new RuntimeException("Unsupported field: WeekOfWeekBasedYear");
                }
                return h.L(j$.time.g.M(nVar));
            }

            @Override // j$.time.temporal.r
            public final long i(n nVar) {
                if (!d(nVar)) {
                    throw new RuntimeException("Unsupported field: WeekOfWeekBasedYear");
                }
                return h.u(j$.time.g.M(nVar));
            }

            @Override // j$.time.temporal.r
            public final m l(m mVar, long j) {
                range().b(j, this);
                return mVar.b(j$.com.android.tools.r8.a.P(j, i(mVar)), b.WEEKS);
            }

            @Override // j$.time.temporal.h, j$.time.temporal.r
            public final n h(Map map, d0 d0Var, e0 e0Var) {
                j$.time.g a2;
                long j;
                long j2;
                r rVar = h.WEEK_BASED_YEAR;
                Long l = (Long) map.get(rVar);
                a aVar = a.DAY_OF_WEEK;
                Long l2 = (Long) map.get(aVar);
                if (l == null || l2 == null) {
                    return null;
                }
                int a3 = rVar.range().a(l.longValue(), rVar);
                long longValue = ((Long) map.get(h.WEEK_OF_WEEK_BASED_YEAR)).longValue();
                h hVar4 = j.f21250a;
                if (j$.com.android.tools.r8.a.G(d0Var).equals(j$.time.chrono.t.f21173c)) {
                    j$.time.g U = j$.time.g.U(a3, 1, 4);
                    if (e0Var == e0.LENIENT) {
                        long longValue2 = l2.longValue();
                        if (longValue2 > 7) {
                            long j3 = longValue2 - 1;
                            j = 1;
                            U = U.a0(j3 / 7);
                            j2 = j3 % 7;
                        } else {
                            j = 1;
                            if (longValue2 < 1) {
                                U = U.a0(j$.com.android.tools.r8.a.P(longValue2, 7L) / 7);
                                j2 = (longValue2 + 6) % 7;
                            }
                            a2 = U.a0(j$.com.android.tools.r8.a.P(longValue, j)).a(longValue2, aVar);
                        }
                        longValue2 = j2 + j;
                        a2 = U.a0(j$.com.android.tools.r8.a.P(longValue, j)).a(longValue2, aVar);
                    } else {
                        int a4 = aVar.b.a(l2.longValue(), aVar);
                        if (longValue < 1 || longValue > 52) {
                            if (e0Var == e0.STRICT) {
                                h.L(U).b(longValue, this);
                            } else {
                                range().b(longValue, this);
                            }
                        }
                        a2 = U.a0(longValue - 1).a(a4, aVar);
                    }
                    map.remove(this);
                    map.remove(rVar);
                    map.remove(aVar);
                    return a2;
                }
                throw new RuntimeException("Resolve requires IsoChronology");
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "WeekOfWeekBasedYear";
            }
        };
        WEEK_OF_WEEK_BASED_YEAR = hVar3;
        h hVar4 = new h() { // from class: j$.time.temporal.g
            @Override // j$.time.temporal.r
            public final v range() {
                return a.YEAR.b;
            }

            @Override // j$.time.temporal.r
            public final boolean d(n nVar) {
                if (!nVar.c(a.EPOCH_DAY)) {
                    return false;
                }
                h hVar5 = j.f21250a;
                return j$.com.android.tools.r8.a.G(nVar).equals(j$.time.chrono.t.f21173c);
            }

            @Override // j$.time.temporal.r
            public final long i(n nVar) {
                if (!d(nVar)) {
                    throw new RuntimeException("Unsupported field: WeekBasedYear");
                }
                return h.y(j$.time.g.M(nVar));
            }

            @Override // j$.time.temporal.r
            public final v g(n nVar) {
                if (!d(nVar)) {
                    throw new RuntimeException("Unsupported field: WeekBasedYear");
                }
                return range();
            }

            @Override // j$.time.temporal.r
            public final m l(m mVar, long j) {
                if (!d(mVar)) {
                    throw new RuntimeException("Unsupported field: WeekBasedYear");
                }
                int a2 = a.YEAR.b.a(j, h.WEEK_BASED_YEAR);
                j$.time.g M = j$.time.g.M(mVar);
                int g = M.g(a.DAY_OF_WEEK);
                int u = h.u(M);
                if (u == 53 && h.K(a2) == 52) {
                    u = 52;
                }
                return mVar.t(j$.time.g.U(a2, 1, 4).Y(((u - 1) * 7) + (g - r6.g(r0))));
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "WeekBasedYear";
            }
        };
        WEEK_BASED_YEAR = hVar4;
        b = new h[]{hVar, hVar2, hVar3, hVar4};
        f21248a = new int[]{0, 90, 181, 273, 0, 91, 182, 274};
    }

    public static v L(j$.time.g gVar) {
        return v.f(1L, K(y(gVar)));
    }

    public static int K(int i) {
        j$.time.g U = j$.time.g.U(i, 1, 1);
        if (U.O() != j$.time.d.THURSDAY) {
            return (U.O() == j$.time.d.WEDNESDAY && U.m()) ? 53 : 52;
        }
        return 53;
    }

    public static int u(j$.time.g gVar) {
        int ordinal = gVar.O().ordinal();
        int P = gVar.P() - 1;
        int i = (3 - ordinal) + P;
        int i2 = i - ((i / 7) * 7);
        int i3 = i2 - 3;
        if (i3 < -3) {
            i3 = i2 + 4;
        }
        if (P >= i3) {
            int i4 = ((P - i3) / 7) + 1;
            if (i4 != 53 || i3 == -3 || (i3 == -2 && gVar.m())) {
                return i4;
            }
            return 1;
        }
        if (gVar.P() != 180) {
            gVar = j$.time.g.W(gVar.f21225a, 180);
        }
        return (int) L(gVar.b0(-1L)).d;
    }

    public static int y(j$.time.g gVar) {
        int i = gVar.f21225a;
        int P = gVar.P();
        if (P <= 3) {
            return P - gVar.O().ordinal() < -2 ? i - 1 : i;
        }
        if (P >= 363) {
            return ((P - 363) - (gVar.m() ? 1 : 0)) - gVar.O().ordinal() >= 0 ? i + 1 : i;
        }
        return i;
    }
}
