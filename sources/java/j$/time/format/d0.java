package j$.time.format;

import j$.time.Instant;
import j$.time.ZoneId;
import j$.time.ZoneOffset;
import j$.util.Objects;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes2.dex */
public final class d0 implements j$.time.temporal.n {
    public ZoneId b;

    /* renamed from: c, reason: collision with root package name */
    public j$.time.chrono.m f21195c;
    public boolean d;
    public e0 e;
    public j$.time.chrono.b f;
    public j$.time.k g;

    /* renamed from: a, reason: collision with root package name */
    public final Map f21194a = new HashMap();
    public j$.time.r h = j$.time.r.d;

    @Override // j$.time.temporal.n
    public final /* synthetic */ int g(j$.time.temporal.r rVar) {
        return j$.time.temporal.s.a(this, rVar);
    }

    @Override // j$.time.temporal.n
    public final /* synthetic */ j$.time.temporal.v i(j$.time.temporal.r rVar) {
        return j$.time.temporal.s.d(this, rVar);
    }

    @Override // j$.time.temporal.n
    public final boolean c(j$.time.temporal.r rVar) {
        if (((HashMap) this.f21194a).containsKey(rVar)) {
            return true;
        }
        j$.time.chrono.b bVar = this.f;
        if (bVar != null && bVar.c(rVar)) {
            return true;
        }
        j$.time.k kVar = this.g;
        if (kVar == null || !kVar.c(rVar)) {
            return (rVar == null || (rVar instanceof j$.time.temporal.a) || !rVar.d(this)) ? false : true;
        }
        return true;
    }

    @Override // j$.time.temporal.n
    public final long y(j$.time.temporal.r rVar) {
        Objects.requireNonNull(rVar, "field");
        Long l = (Long) ((HashMap) this.f21194a).get(rVar);
        if (l != null) {
            return l.longValue();
        }
        j$.time.chrono.b bVar = this.f;
        if (bVar != null && bVar.c(rVar)) {
            return this.f.y(rVar);
        }
        j$.time.k kVar = this.g;
        if (kVar != null && kVar.c(rVar)) {
            return this.g.y(rVar);
        }
        if (rVar instanceof j$.time.temporal.a) {
            throw new RuntimeException(j$.time.c.a("Unsupported field: ", rVar));
        }
        return rVar.i(this);
    }

    @Override // j$.time.temporal.n
    public final Object d(j$.time.h hVar) {
        if (hVar == j$.time.temporal.s.f21256a) {
            return this.b;
        }
        if (hVar == j$.time.temporal.s.b) {
            return this.f21195c;
        }
        if (hVar == j$.time.temporal.s.f) {
            j$.time.chrono.b bVar = this.f;
            if (bVar != null) {
                return j$.time.g.M(bVar);
            }
            return null;
        }
        if (hVar == j$.time.temporal.s.g) {
            return this.g;
        }
        if (hVar == j$.time.temporal.s.d) {
            Long l = (Long) ((HashMap) this.f21194a).get(j$.time.temporal.a.OFFSET_SECONDS);
            if (l != null) {
                return ZoneOffset.R(l.intValue());
            }
            ZoneId zoneId = this.b;
            return zoneId instanceof ZoneOffset ? zoneId : hVar.d(this);
        }
        if (hVar == j$.time.temporal.s.e) {
            return hVar.d(this);
        }
        if (hVar == j$.time.temporal.s.f21257c) {
            return null;
        }
        return hVar.d(this);
    }

    public final void q(j$.time.temporal.r rVar, j$.time.temporal.a aVar, Long l) {
        Long l2 = (Long) ((HashMap) this.f21194a).put(aVar, l);
        if (l2 == null || l2.longValue() == l.longValue()) {
            return;
        }
        throw new RuntimeException("Conflict found: " + aVar + " " + l2 + " differs from " + aVar + " " + l + " while resolving  " + rVar);
    }

    public final void f() {
        if (((HashMap) this.f21194a).containsKey(j$.time.temporal.a.INSTANT_SECONDS)) {
            ZoneId zoneId = this.b;
            if (zoneId != null) {
                j(zoneId);
                return;
            }
            Long l = (Long) ((HashMap) this.f21194a).get(j$.time.temporal.a.OFFSET_SECONDS);
            if (l != null) {
                j(ZoneOffset.R(l.intValue()));
            }
        }
    }

    public final void j(ZoneId zoneId) {
        Map map = this.f21194a;
        j$.time.temporal.a aVar = j$.time.temporal.a.INSTANT_SECONDS;
        p(this.f21195c.G(Instant.K(((Long) ((HashMap) map).remove(aVar)).longValue(), 0), zoneId).toLocalDate());
        q(aVar, j$.time.temporal.a.SECOND_OF_DAY, Long.valueOf(r5.toLocalTime().X()));
    }

    public final void p(j$.time.chrono.b bVar) {
        j$.time.chrono.b bVar2 = this.f;
        if (bVar2 != null) {
            if (bVar == null || bVar2.equals(bVar)) {
                return;
            }
            throw new RuntimeException("Conflict found: Fields resolved to two different dates: " + this.f + " " + bVar);
        }
        if (bVar != null) {
            if (!this.f21195c.equals(bVar.getChronology())) {
                throw new RuntimeException("ChronoLocalDate must use the effective parsed chronology: " + this.f21195c);
            }
            this.f = bVar;
        }
    }

    public final void l() {
        Map map = this.f21194a;
        j$.time.temporal.a aVar = j$.time.temporal.a.CLOCK_HOUR_OF_DAY;
        if (((HashMap) map).containsKey(aVar)) {
            long longValue = ((Long) ((HashMap) this.f21194a).remove(aVar)).longValue();
            e0 e0Var = this.e;
            if (e0Var == e0.STRICT || (e0Var == e0.SMART && longValue != 0)) {
                aVar.u(longValue);
            }
            j$.time.temporal.a aVar2 = j$.time.temporal.a.HOUR_OF_DAY;
            if (longValue == 24) {
                longValue = 0;
            }
            q(aVar, aVar2, Long.valueOf(longValue));
        }
        Map map2 = this.f21194a;
        j$.time.temporal.a aVar3 = j$.time.temporal.a.CLOCK_HOUR_OF_AMPM;
        if (((HashMap) map2).containsKey(aVar3)) {
            long longValue2 = ((Long) ((HashMap) this.f21194a).remove(aVar3)).longValue();
            e0 e0Var2 = this.e;
            if (e0Var2 == e0.STRICT || (e0Var2 == e0.SMART && longValue2 != 0)) {
                aVar3.u(longValue2);
            }
            q(aVar3, j$.time.temporal.a.HOUR_OF_AMPM, Long.valueOf(longValue2 != 12 ? longValue2 : 0L));
        }
        Map map3 = this.f21194a;
        j$.time.temporal.a aVar4 = j$.time.temporal.a.AMPM_OF_DAY;
        if (((HashMap) map3).containsKey(aVar4)) {
            Map map4 = this.f21194a;
            j$.time.temporal.a aVar5 = j$.time.temporal.a.HOUR_OF_AMPM;
            if (((HashMap) map4).containsKey(aVar5)) {
                long longValue3 = ((Long) ((HashMap) this.f21194a).remove(aVar4)).longValue();
                long longValue4 = ((Long) ((HashMap) this.f21194a).remove(aVar5)).longValue();
                if (this.e == e0.LENIENT) {
                    q(aVar4, j$.time.temporal.a.HOUR_OF_DAY, Long.valueOf(j$.com.android.tools.r8.a.I(j$.com.android.tools.r8.a.O(longValue3, 12), longValue4)));
                } else {
                    aVar4.u(longValue3);
                    aVar5.u(longValue3);
                    q(aVar4, j$.time.temporal.a.HOUR_OF_DAY, Long.valueOf((longValue3 * 12) + longValue4));
                }
            }
        }
        Map map5 = this.f21194a;
        j$.time.temporal.a aVar6 = j$.time.temporal.a.NANO_OF_DAY;
        if (((HashMap) map5).containsKey(aVar6)) {
            long longValue5 = ((Long) ((HashMap) this.f21194a).remove(aVar6)).longValue();
            if (this.e != e0.LENIENT) {
                aVar6.u(longValue5);
            }
            q(aVar6, j$.time.temporal.a.HOUR_OF_DAY, Long.valueOf(longValue5 / 3600000000000L));
            q(aVar6, j$.time.temporal.a.MINUTE_OF_HOUR, Long.valueOf((longValue5 / 60000000000L) % 60));
            q(aVar6, j$.time.temporal.a.SECOND_OF_MINUTE, Long.valueOf((longValue5 / 1000000000) % 60));
            q(aVar6, j$.time.temporal.a.NANO_OF_SECOND, Long.valueOf(longValue5 % 1000000000));
        }
        Map map6 = this.f21194a;
        j$.time.temporal.a aVar7 = j$.time.temporal.a.MICRO_OF_DAY;
        if (((HashMap) map6).containsKey(aVar7)) {
            long longValue6 = ((Long) ((HashMap) this.f21194a).remove(aVar7)).longValue();
            if (this.e != e0.LENIENT) {
                aVar7.u(longValue6);
            }
            q(aVar7, j$.time.temporal.a.SECOND_OF_DAY, Long.valueOf(longValue6 / 1000000));
            q(aVar7, j$.time.temporal.a.MICRO_OF_SECOND, Long.valueOf(longValue6 % 1000000));
        }
        Map map7 = this.f21194a;
        j$.time.temporal.a aVar8 = j$.time.temporal.a.MILLI_OF_DAY;
        if (((HashMap) map7).containsKey(aVar8)) {
            long longValue7 = ((Long) ((HashMap) this.f21194a).remove(aVar8)).longValue();
            if (this.e != e0.LENIENT) {
                aVar8.u(longValue7);
            }
            q(aVar8, j$.time.temporal.a.SECOND_OF_DAY, Long.valueOf(longValue7 / 1000));
            q(aVar8, j$.time.temporal.a.MILLI_OF_SECOND, Long.valueOf(longValue7 % 1000));
        }
        Map map8 = this.f21194a;
        j$.time.temporal.a aVar9 = j$.time.temporal.a.SECOND_OF_DAY;
        if (((HashMap) map8).containsKey(aVar9)) {
            long longValue8 = ((Long) ((HashMap) this.f21194a).remove(aVar9)).longValue();
            if (this.e != e0.LENIENT) {
                aVar9.u(longValue8);
            }
            q(aVar9, j$.time.temporal.a.HOUR_OF_DAY, Long.valueOf(longValue8 / 3600));
            q(aVar9, j$.time.temporal.a.MINUTE_OF_HOUR, Long.valueOf((longValue8 / 60) % 60));
            q(aVar9, j$.time.temporal.a.SECOND_OF_MINUTE, Long.valueOf(longValue8 % 60));
        }
        Map map9 = this.f21194a;
        j$.time.temporal.a aVar10 = j$.time.temporal.a.MINUTE_OF_DAY;
        if (((HashMap) map9).containsKey(aVar10)) {
            long longValue9 = ((Long) ((HashMap) this.f21194a).remove(aVar10)).longValue();
            if (this.e != e0.LENIENT) {
                aVar10.u(longValue9);
            }
            q(aVar10, j$.time.temporal.a.HOUR_OF_DAY, Long.valueOf(longValue9 / 60));
            q(aVar10, j$.time.temporal.a.MINUTE_OF_HOUR, Long.valueOf(longValue9 % 60));
        }
        Map map10 = this.f21194a;
        j$.time.temporal.a aVar11 = j$.time.temporal.a.NANO_OF_SECOND;
        if (((HashMap) map10).containsKey(aVar11)) {
            long longValue10 = ((Long) ((HashMap) this.f21194a).get(aVar11)).longValue();
            e0 e0Var3 = this.e;
            e0 e0Var4 = e0.LENIENT;
            if (e0Var3 != e0Var4) {
                aVar11.u(longValue10);
            }
            Map map11 = this.f21194a;
            j$.time.temporal.a aVar12 = j$.time.temporal.a.MICRO_OF_SECOND;
            if (((HashMap) map11).containsKey(aVar12)) {
                long longValue11 = ((Long) ((HashMap) this.f21194a).remove(aVar12)).longValue();
                if (this.e != e0Var4) {
                    aVar12.u(longValue11);
                }
                longValue10 = (longValue10 % 1000) + (longValue11 * 1000);
                q(aVar12, aVar11, Long.valueOf(longValue10));
            }
            Map map12 = this.f21194a;
            j$.time.temporal.a aVar13 = j$.time.temporal.a.MILLI_OF_SECOND;
            if (((HashMap) map12).containsKey(aVar13)) {
                long longValue12 = ((Long) ((HashMap) this.f21194a).remove(aVar13)).longValue();
                if (this.e != e0Var4) {
                    aVar13.u(longValue12);
                }
                q(aVar13, aVar11, Long.valueOf((longValue10 % 1000000) + (longValue12 * 1000000)));
            }
        }
        Map map13 = this.f21194a;
        j$.time.temporal.a aVar14 = j$.time.temporal.a.HOUR_OF_DAY;
        if (((HashMap) map13).containsKey(aVar14)) {
            Map map14 = this.f21194a;
            j$.time.temporal.a aVar15 = j$.time.temporal.a.MINUTE_OF_HOUR;
            if (((HashMap) map14).containsKey(aVar15)) {
                Map map15 = this.f21194a;
                j$.time.temporal.a aVar16 = j$.time.temporal.a.SECOND_OF_MINUTE;
                if (((HashMap) map15).containsKey(aVar16) && ((HashMap) this.f21194a).containsKey(aVar11)) {
                    k(((Long) ((HashMap) this.f21194a).remove(aVar14)).longValue(), ((Long) ((HashMap) this.f21194a).remove(aVar15)).longValue(), ((Long) ((HashMap) this.f21194a).remove(aVar16)).longValue(), ((Long) ((HashMap) this.f21194a).remove(aVar11)).longValue());
                }
            }
        }
    }

    public final void k(long j, long j2, long j3, long j4) {
        if (this.e == e0.LENIENT) {
            long I = j$.com.android.tools.r8.a.I(j$.com.android.tools.r8.a.I(j$.com.android.tools.r8.a.I(j$.com.android.tools.r8.a.O(j, 3600000000000L), j$.com.android.tools.r8.a.O(j2, 60000000000L)), j$.com.android.tools.r8.a.O(j3, 1000000000L)), j4);
            n(j$.time.k.P(j$.com.android.tools.r8.a.M(I, 86400000000000L)), j$.time.r.a(0, 0, (int) j$.com.android.tools.r8.a.N(I, 86400000000000L)));
            return;
        }
        j$.time.temporal.a aVar = j$.time.temporal.a.MINUTE_OF_HOUR;
        int a2 = aVar.b.a(j2, aVar);
        j$.time.temporal.a aVar2 = j$.time.temporal.a.NANO_OF_SECOND;
        int a3 = aVar2.b.a(j4, aVar2);
        if (this.e == e0.SMART && j == 24 && a2 == 0 && j3 == 0 && a3 == 0) {
            n(j$.time.k.g, j$.time.r.a(0, 0, 1));
            return;
        }
        j$.time.temporal.a aVar3 = j$.time.temporal.a.HOUR_OF_DAY;
        int a4 = aVar3.b.a(j, aVar3);
        j$.time.temporal.a aVar4 = j$.time.temporal.a.SECOND_OF_MINUTE;
        n(j$.time.k.O(a4, a2, aVar4.b.a(j3, aVar4), a3), j$.time.r.d);
    }

    public final void n(j$.time.k kVar, j$.time.r rVar) {
        j$.time.k kVar2 = this.g;
        if (kVar2 != null) {
            if (!kVar2.equals(kVar)) {
                throw new RuntimeException("Conflict found: Fields resolved to different times: " + this.g + " " + kVar);
            }
            j$.time.r rVar2 = this.h;
            rVar2.getClass();
            j$.time.r rVar3 = j$.time.r.d;
            if (rVar2 != rVar3 && rVar != rVar3 && !this.h.equals(rVar)) {
                throw new RuntimeException("Conflict found: Fields resolved to different excess periods: " + this.h + " " + rVar);
            }
            this.h = rVar;
            return;
        }
        this.g = kVar;
        this.h = rVar;
    }

    public final void e(j$.time.temporal.n nVar) {
        Iterator it = ((HashMap) this.f21194a).entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            j$.time.temporal.r rVar = (j$.time.temporal.r) entry.getKey();
            if (nVar.c(rVar)) {
                try {
                    long y = nVar.y(rVar);
                    long longValue = ((Long) entry.getValue()).longValue();
                    if (y != longValue) {
                        throw new RuntimeException("Conflict found: Field " + rVar + " " + y + " differs from " + rVar + " " + longValue + " derived from " + nVar);
                    }
                    it.remove();
                } catch (RuntimeException unused) {
                    continue;
                }
            }
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(64);
        sb.append(this.f21194a);
        sb.append(',');
        sb.append(this.f21195c);
        if (this.b != null) {
            sb.append(',');
            sb.append(this.b);
        }
        if (this.f != null || this.g != null) {
            sb.append(" resolved to ");
            j$.time.chrono.b bVar = this.f;
            if (bVar != null) {
                sb.append(bVar);
                if (this.g != null) {
                    sb.append('T');
                    sb.append(this.g);
                }
            } else {
                sb.append(this.g);
            }
        }
        return sb.toString();
    }
}
