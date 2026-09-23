package j$.time.chrono;

import j$.time.LocalDateTime;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Locale;
import java.util.Map;

/* loaded from: classes2.dex */
public abstract class a implements m {

    /* renamed from: a, reason: collision with root package name */
    public static final ConcurrentHashMap f21146a = new ConcurrentHashMap();
    public static final ConcurrentHashMap b = new ConcurrentHashMap();

    public abstract /* synthetic */ b g();

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return f().compareTo(((m) obj).f());
    }

    static {
        new Locale("ja", "JP", "JP");
    }

    public static m h(m mVar, String str) {
        String j;
        m mVar2 = (m) f21146a.putIfAbsent(str, mVar);
        if (mVar2 == null && (j = mVar.j()) != null) {
            b.putIfAbsent(j, mVar);
        }
        return mVar2;
    }

    @Override // j$.time.chrono.m
    public b F(Map map, j$.time.format.e0 e0Var) {
        j$.time.temporal.a aVar = j$.time.temporal.a.EPOCH_DAY;
        if (map.containsKey(aVar)) {
            return e(((Long) map.remove(aVar)).longValue());
        }
        l(map, e0Var);
        b y = y(map, e0Var);
        if (y != null) {
            return y;
        }
        j$.time.temporal.a aVar2 = j$.time.temporal.a.YEAR;
        if (!map.containsKey(aVar2)) {
            return null;
        }
        j$.time.temporal.a aVar3 = j$.time.temporal.a.MONTH_OF_YEAR;
        if (map.containsKey(aVar3)) {
            if (map.containsKey(j$.time.temporal.a.DAY_OF_MONTH)) {
                return u(map, e0Var);
            }
            j$.time.temporal.a aVar4 = j$.time.temporal.a.ALIGNED_WEEK_OF_MONTH;
            if (map.containsKey(aVar4)) {
                j$.time.temporal.a aVar5 = j$.time.temporal.a.ALIGNED_DAY_OF_WEEK_IN_MONTH;
                if (map.containsKey(aVar5)) {
                    int a2 = n(aVar2).a(((Long) map.remove(aVar2)).longValue(), aVar2);
                    if (e0Var == j$.time.format.e0.LENIENT) {
                        long P = j$.com.android.tools.r8.a.P(((Long) map.remove(aVar3)).longValue(), 1L);
                        return D(a2, 1, 1).b(P, (j$.time.temporal.t) j$.time.temporal.b.MONTHS).b(j$.com.android.tools.r8.a.P(((Long) map.remove(aVar4)).longValue(), 1L), (j$.time.temporal.t) j$.time.temporal.b.WEEKS).b(j$.com.android.tools.r8.a.P(((Long) map.remove(aVar5)).longValue(), 1L), (j$.time.temporal.t) j$.time.temporal.b.DAYS);
                    }
                    int a3 = n(aVar3).a(((Long) map.remove(aVar3)).longValue(), aVar3);
                    int a4 = n(aVar4).a(((Long) map.remove(aVar4)).longValue(), aVar4);
                    b b2 = D(a2, a3, 1).b((n(aVar5).a(((Long) map.remove(aVar5)).longValue(), aVar5) - 1) + ((a4 - 1) * 7), (j$.time.temporal.t) j$.time.temporal.b.DAYS);
                    if (e0Var != j$.time.format.e0.STRICT || b2.g(aVar3) == a3) {
                        return b2;
                    }
                    throw new RuntimeException("Strict mode rejected resolved date as it is in a different month");
                }
                j$.time.temporal.a aVar6 = j$.time.temporal.a.DAY_OF_WEEK;
                if (map.containsKey(aVar6)) {
                    int a5 = n(aVar2).a(((Long) map.remove(aVar2)).longValue(), aVar2);
                    if (e0Var == j$.time.format.e0.LENIENT) {
                        return i(D(a5, 1, 1), j$.com.android.tools.r8.a.P(((Long) map.remove(aVar3)).longValue(), 1L), j$.com.android.tools.r8.a.P(((Long) map.remove(aVar4)).longValue(), 1L), j$.com.android.tools.r8.a.P(((Long) map.remove(aVar6)).longValue(), 1L));
                    }
                    int a6 = n(aVar3).a(((Long) map.remove(aVar3)).longValue(), aVar3);
                    b t = D(a5, a6, 1).b((n(aVar4).a(((Long) map.remove(aVar4)).longValue(), aVar4) - 1) * 7, (j$.time.temporal.t) j$.time.temporal.b.DAYS).t(new j$.time.temporal.p(j$.time.d.K(n(aVar6).a(((Long) map.remove(aVar6)).longValue(), aVar6)).getValue(), 0));
                    if (e0Var != j$.time.format.e0.STRICT || t.g(aVar3) == a6) {
                        return t;
                    }
                    throw new RuntimeException("Strict mode rejected resolved date as it is in a different month");
                }
            }
        }
        j$.time.temporal.a aVar7 = j$.time.temporal.a.DAY_OF_YEAR;
        if (map.containsKey(aVar7)) {
            int a7 = n(aVar2).a(((Long) map.remove(aVar2)).longValue(), aVar2);
            if (e0Var != j$.time.format.e0.LENIENT) {
                return k(a7, n(aVar7).a(((Long) map.remove(aVar7)).longValue(), aVar7));
            }
            return k(a7, 1).b(j$.com.android.tools.r8.a.P(((Long) map.remove(aVar7)).longValue(), 1L), (j$.time.temporal.t) j$.time.temporal.b.DAYS);
        }
        j$.time.temporal.a aVar8 = j$.time.temporal.a.ALIGNED_WEEK_OF_YEAR;
        if (!map.containsKey(aVar8)) {
            return null;
        }
        j$.time.temporal.a aVar9 = j$.time.temporal.a.ALIGNED_DAY_OF_WEEK_IN_YEAR;
        if (map.containsKey(aVar9)) {
            int a8 = n(aVar2).a(((Long) map.remove(aVar2)).longValue(), aVar2);
            if (e0Var == j$.time.format.e0.LENIENT) {
                return k(a8, 1).b(j$.com.android.tools.r8.a.P(((Long) map.remove(aVar8)).longValue(), 1L), (j$.time.temporal.t) j$.time.temporal.b.WEEKS).b(j$.com.android.tools.r8.a.P(((Long) map.remove(aVar9)).longValue(), 1L), (j$.time.temporal.t) j$.time.temporal.b.DAYS);
            }
            int a9 = n(aVar8).a(((Long) map.remove(aVar8)).longValue(), aVar8);
            b b3 = k(a8, 1).b((n(aVar9).a(((Long) map.remove(aVar9)).longValue(), aVar9) - 1) + ((a9 - 1) * 7), (j$.time.temporal.t) j$.time.temporal.b.DAYS);
            if (e0Var != j$.time.format.e0.STRICT || b3.g(aVar2) == a8) {
                return b3;
            }
            throw new RuntimeException("Strict mode rejected resolved date as it is in a different year");
        }
        j$.time.temporal.a aVar10 = j$.time.temporal.a.DAY_OF_WEEK;
        if (!map.containsKey(aVar10)) {
            return null;
        }
        int a10 = n(aVar2).a(((Long) map.remove(aVar2)).longValue(), aVar2);
        if (e0Var == j$.time.format.e0.LENIENT) {
            return i(k(a10, 1), 0L, j$.com.android.tools.r8.a.P(((Long) map.remove(aVar8)).longValue(), 1L), j$.com.android.tools.r8.a.P(((Long) map.remove(aVar10)).longValue(), 1L));
        }
        b t2 = k(a10, 1).b((n(aVar8).a(((Long) map.remove(aVar8)).longValue(), aVar8) - 1) * 7, (j$.time.temporal.t) j$.time.temporal.b.DAYS).t(new j$.time.temporal.p(j$.time.d.K(n(aVar10).a(((Long) map.remove(aVar10)).longValue(), aVar10)).getValue(), 0));
        if (e0Var != j$.time.format.e0.STRICT || t2.g(aVar2) == a10) {
            return t2;
        }
        throw new RuntimeException("Strict mode rejected resolved date as it is in a different year");
    }

    @Override // j$.time.chrono.m
    public e x(LocalDateTime localDateTime) {
        try {
            return w(localDateTime).A(j$.time.k.M(localDateTime));
        } catch (j$.time.b e) {
            throw new RuntimeException("Unable to obtain ChronoLocalDateTime from TemporalAccessor: " + LocalDateTime.class, e);
        }
    }

    public void l(Map map, j$.time.format.e0 e0Var) {
        j$.time.temporal.a aVar = j$.time.temporal.a.PROLEPTIC_MONTH;
        Long l = (Long) map.remove(aVar);
        if (l != null) {
            if (e0Var != j$.time.format.e0.LENIENT) {
                aVar.u(l.longValue());
            }
            b a2 = g().a(1L, (j$.time.temporal.r) j$.time.temporal.a.DAY_OF_MONTH).a(l.longValue(), (j$.time.temporal.r) aVar);
            d(map, j$.time.temporal.a.MONTH_OF_YEAR, a2.g(r0));
            d(map, j$.time.temporal.a.YEAR, a2.g(r0));
        }
    }

    public b y(Map map, j$.time.format.e0 e0Var) {
        int H;
        j$.time.temporal.a aVar = j$.time.temporal.a.YEAR_OF_ERA;
        Long l = (Long) map.remove(aVar);
        if (l != null) {
            Long l2 = (Long) map.remove(j$.time.temporal.a.ERA);
            if (e0Var != j$.time.format.e0.LENIENT) {
                H = n(aVar).a(l.longValue(), aVar);
            } else {
                H = j$.com.android.tools.r8.a.H(l.longValue());
            }
            if (l2 != null) {
                d(map, j$.time.temporal.a.YEAR, r(q(n(r2).a(l2.longValue(), r2)), H));
                return null;
            }
            j$.time.temporal.a aVar2 = j$.time.temporal.a.YEAR;
            if (map.containsKey(aVar2)) {
                d(map, aVar2, r(k(n(aVar2).a(((Long) map.get(aVar2)).longValue(), aVar2), 1).B(), H));
                return null;
            }
            if (e0Var == j$.time.format.e0.STRICT) {
                map.put(aVar, l);
                return null;
            }
            if (p().isEmpty()) {
                d(map, aVar2, H);
                return null;
            }
            d(map, aVar2, r((n) r9.get(r9.size() - 1), H));
            return null;
        }
        j$.time.temporal.a aVar3 = j$.time.temporal.a.ERA;
        if (!map.containsKey(aVar3)) {
            return null;
        }
        n(aVar3).b(((Long) map.get(aVar3)).longValue(), aVar3);
        return null;
    }

    public b u(Map map, j$.time.format.e0 e0Var) {
        j$.time.temporal.a aVar = j$.time.temporal.a.YEAR;
        int a2 = n(aVar).a(((Long) map.remove(aVar)).longValue(), aVar);
        if (e0Var == j$.time.format.e0.LENIENT) {
            long P = j$.com.android.tools.r8.a.P(((Long) map.remove(j$.time.temporal.a.MONTH_OF_YEAR)).longValue(), 1L);
            return D(a2, 1, 1).b(P, (j$.time.temporal.t) j$.time.temporal.b.MONTHS).b(j$.com.android.tools.r8.a.P(((Long) map.remove(j$.time.temporal.a.DAY_OF_MONTH)).longValue(), 1L), (j$.time.temporal.t) j$.time.temporal.b.DAYS);
        }
        j$.time.temporal.a aVar2 = j$.time.temporal.a.MONTH_OF_YEAR;
        int a3 = n(aVar2).a(((Long) map.remove(aVar2)).longValue(), aVar2);
        j$.time.temporal.a aVar3 = j$.time.temporal.a.DAY_OF_MONTH;
        int a4 = n(aVar3).a(((Long) map.remove(aVar3)).longValue(), aVar3);
        if (e0Var == j$.time.format.e0.SMART) {
            try {
                return D(a2, a3, a4);
            } catch (j$.time.b unused) {
                return D(a2, a3, 1).t(new j$.time.h(2));
            }
        }
        return D(a2, a3, a4);
    }

    public static b i(b bVar, long j, long j2, long j3) {
        long j4;
        b b2 = bVar.b(j, (j$.time.temporal.t) j$.time.temporal.b.MONTHS);
        j$.time.temporal.b bVar2 = j$.time.temporal.b.WEEKS;
        b b3 = b2.b(j2, (j$.time.temporal.t) bVar2);
        if (j3 > 7) {
            long j5 = j3 - 1;
            b3 = b3.b(j5 / 7, (j$.time.temporal.t) bVar2);
            j4 = j5 % 7;
        } else {
            if (j3 < 1) {
                b3 = b3.b(j$.com.android.tools.r8.a.P(j3, 7L) / 7, (j$.time.temporal.t) bVar2);
                j4 = (j3 + 6) % 7;
            }
            return b3.t(new j$.time.temporal.p(j$.time.d.K((int) j3).getValue(), 0));
        }
        j3 = j4 + 1;
        return b3.t(new j$.time.temporal.p(j$.time.d.K((int) j3).getValue(), 0));
    }

    public static void d(Map map, j$.time.temporal.a aVar, long j) {
        Long l = (Long) map.get(aVar);
        if (l != null && l.longValue() != j) {
            throw new RuntimeException("Conflict found: " + aVar + " " + l + " differs from " + aVar + " " + j);
        }
        map.put(aVar, Long.valueOf(j));
    }

    @Override // j$.time.chrono.m
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof a) && f().compareTo(((a) obj).f()) == 0;
    }

    @Override // j$.time.chrono.m
    public final int hashCode() {
        return getClass().hashCode() ^ f().hashCode();
    }

    @Override // j$.time.chrono.m
    public final String toString() {
        return f();
    }
}
