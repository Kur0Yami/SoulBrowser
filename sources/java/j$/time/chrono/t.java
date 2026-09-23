package j$.time.chrono;

import j$.time.Instant;
import j$.time.LocalDateTime;
import j$.time.ZoneId;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public final class t extends a implements Serializable {

    /* renamed from: c, reason: collision with root package name */
    public static final t f21173c = new t();
    private static final long serialVersionUID = -1440403870442975015L;

    @Override // j$.time.chrono.m
    public final n q(int i) {
        if (i == 0) {
            return u.BCE;
        }
        if (i == 1) {
            return u.CE;
        }
        throw new RuntimeException("Invalid era: " + i);
    }

    @Override // j$.time.chrono.m
    public final String f() {
        return "ISO";
    }

    @Override // j$.time.chrono.m
    public final String j() {
        return "iso8601";
    }

    @Override // j$.time.chrono.m
    public final b D(int i, int i2, int i3) {
        return j$.time.g.U(i, i2, i3);
    }

    @Override // j$.time.chrono.m
    public final b k(int i, int i2) {
        return j$.time.g.W(i, i2);
    }

    @Override // j$.time.chrono.m
    public final b e(long j) {
        return j$.time.g.V(j);
    }

    @Override // j$.time.chrono.m
    public final b w(j$.time.temporal.n nVar) {
        return j$.time.g.M(nVar);
    }

    private t() {
    }

    @Override // j$.time.chrono.a, j$.time.chrono.m
    public final e x(LocalDateTime localDateTime) {
        return LocalDateTime.L(localDateTime);
    }

    @Override // j$.time.chrono.m
    public final j G(Instant instant, ZoneId zoneId) {
        Objects.requireNonNull(instant, "instant");
        Objects.requireNonNull(zoneId, "zone");
        return j$.time.z.l(instant.getEpochSecond(), instant.getNano(), zoneId);
    }

    @Override // j$.time.chrono.a
    public final b g() {
        j$.time.a S = j$.com.android.tools.r8.a.S();
        Objects.requireNonNull(S, "clock");
        return j$.time.g.M(j$.time.g.T(S));
    }

    @Override // j$.time.chrono.m
    public final boolean J(long j) {
        if ((3 & j) == 0) {
            return j % 100 != 0 || j % 400 == 0;
        }
        return false;
    }

    @Override // j$.time.chrono.m
    public final int r(n nVar, int i) {
        if (nVar instanceof u) {
            return nVar == u.CE ? i : 1 - i;
        }
        throw new ClassCastException("Era must be IsoEra");
    }

    @Override // j$.time.chrono.m
    public final List p() {
        return j$.com.android.tools.r8.a.J(u.values());
    }

    @Override // j$.time.chrono.a, j$.time.chrono.m
    public final b F(Map map, j$.time.format.e0 e0Var) {
        return (j$.time.g) super.F(map, e0Var);
    }

    @Override // j$.time.chrono.a
    public final void l(Map map, j$.time.format.e0 e0Var) {
        j$.time.temporal.a aVar = j$.time.temporal.a.PROLEPTIC_MONTH;
        Long l = (Long) map.remove(aVar);
        if (l != null) {
            if (e0Var != j$.time.format.e0.LENIENT) {
                aVar.u(l.longValue());
            }
            a.d(map, j$.time.temporal.a.MONTH_OF_YEAR, ((int) j$.com.android.tools.r8.a.M(l.longValue(), r4)) + 1);
            a.d(map, j$.time.temporal.a.YEAR, j$.com.android.tools.r8.a.N(l.longValue(), 12));
        }
    }

    @Override // j$.time.chrono.a
    public final b y(Map map, j$.time.format.e0 e0Var) {
        j$.time.temporal.a aVar = j$.time.temporal.a.YEAR_OF_ERA;
        Long l = (Long) map.remove(aVar);
        if (l != null) {
            if (e0Var != j$.time.format.e0.LENIENT) {
                aVar.u(l.longValue());
            }
            Long l2 = (Long) map.remove(j$.time.temporal.a.ERA);
            if (l2 != null) {
                if (l2.longValue() == 1) {
                    a.d(map, j$.time.temporal.a.YEAR, l.longValue());
                    return null;
                }
                if (l2.longValue() == 0) {
                    a.d(map, j$.time.temporal.a.YEAR, j$.com.android.tools.r8.a.P(1L, l.longValue()));
                    return null;
                }
                throw new RuntimeException("Invalid value for era: " + l2);
            }
            j$.time.temporal.a aVar2 = j$.time.temporal.a.YEAR;
            Long l3 = (Long) map.get(aVar2);
            if (e0Var != j$.time.format.e0.STRICT) {
                a.d(map, aVar2, (l3 == null || l3.longValue() > 0) ? l.longValue() : j$.com.android.tools.r8.a.P(1L, l.longValue()));
                return null;
            }
            if (l3 != null) {
                long longValue = l3.longValue();
                long longValue2 = l.longValue();
                if (longValue <= 0) {
                    longValue2 = j$.com.android.tools.r8.a.P(1L, longValue2);
                }
                a.d(map, aVar2, longValue2);
                return null;
            }
            map.put(aVar, l);
            return null;
        }
        j$.time.temporal.a aVar3 = j$.time.temporal.a.ERA;
        if (!map.containsKey(aVar3)) {
            return null;
        }
        aVar3.u(((Long) map.get(aVar3)).longValue());
        return null;
    }

    @Override // j$.time.chrono.a
    public final b u(Map map, j$.time.format.e0 e0Var) {
        j$.time.temporal.a aVar = j$.time.temporal.a.YEAR;
        int a2 = aVar.b.a(((Long) map.remove(aVar)).longValue(), aVar);
        boolean z = true;
        if (e0Var == j$.time.format.e0.LENIENT) {
            return j$.time.g.U(a2, 1, 1).Z(j$.com.android.tools.r8.a.P(((Long) map.remove(j$.time.temporal.a.MONTH_OF_YEAR)).longValue(), 1L)).Y(j$.com.android.tools.r8.a.P(((Long) map.remove(j$.time.temporal.a.DAY_OF_MONTH)).longValue(), 1L));
        }
        j$.time.temporal.a aVar2 = j$.time.temporal.a.MONTH_OF_YEAR;
        int a3 = aVar2.b.a(((Long) map.remove(aVar2)).longValue(), aVar2);
        j$.time.temporal.a aVar3 = j$.time.temporal.a.DAY_OF_MONTH;
        int a4 = aVar3.b.a(((Long) map.remove(aVar3)).longValue(), aVar3);
        if (e0Var == j$.time.format.e0.SMART) {
            if (a3 == 4 || a3 == 6 || a3 == 9 || a3 == 11) {
                a4 = Math.min(a4, 30);
            } else if (a3 == 2) {
                j$.time.m mVar = j$.time.m.FEBRUARY;
                long j = a2;
                int i = j$.time.u.b;
                if ((3 & j) != 0 || (j % 100 == 0 && j % 400 != 0)) {
                    z = false;
                }
                a4 = Math.min(a4, mVar.L(z));
            }
        }
        return j$.time.g.U(a2, a3, a4);
    }

    @Override // j$.time.chrono.m
    public final j$.time.temporal.v n(j$.time.temporal.a aVar) {
        return aVar.b;
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    public Object writeReplace() {
        return new f0((byte) 1, this);
    }
}
