package j$.time.format;

import j$.time.LocalDateTime;
import j$.time.ZoneOffset;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class g implements e {
    @Override // j$.time.format.e
    public final boolean d(y yVar, StringBuilder sb) {
        Long a2 = yVar.a(j$.time.temporal.a.INSTANT_SECONDS);
        j$.time.temporal.n nVar = yVar.f21223a;
        j$.time.temporal.a aVar = j$.time.temporal.a.NANO_OF_SECOND;
        Long valueOf = nVar.c(aVar) ? Long.valueOf(nVar.y(aVar)) : null;
        int i = 0;
        if (a2 == null) {
            return false;
        }
        long longValue = a2.longValue();
        int a3 = aVar.b.a(valueOf != null ? valueOf.longValue() : 0L, aVar);
        if (longValue >= -62167219200L) {
            long j = longValue - 253402300800L;
            long N = j$.com.android.tools.r8.a.N(j, 315569520000L) + 1;
            LocalDateTime O = LocalDateTime.O(j$.com.android.tools.r8.a.M(j, 315569520000L) - 62167219200L, 0, ZoneOffset.UTC);
            if (N > 0) {
                sb.append('+');
                sb.append(N);
            }
            sb.append(O);
            if (O.b.f21231c == 0) {
                sb.append(":00");
            }
        } else {
            long j2 = longValue + 62167219200L;
            long j3 = j2 / 315569520000L;
            long j4 = j2 % 315569520000L;
            LocalDateTime O2 = LocalDateTime.O(j4 - 62167219200L, 0, ZoneOffset.UTC);
            int length = sb.length();
            sb.append(O2);
            if (O2.b.f21231c == 0) {
                sb.append(":00");
            }
            if (j3 < 0) {
                if (O2.f21140a.f21225a == -10000) {
                    sb.replace(length, length + 2, Long.toString(j3 - 1));
                } else if (j4 == 0) {
                    sb.insert(length, j3);
                } else {
                    sb.insert(length + 1, Math.abs(j3));
                }
            }
        }
        if (a3 > 0) {
            sb.append('.');
            int i2 = 100000000;
            while (true) {
                if (a3 <= 0 && i % 3 == 0 && i >= -2) {
                    break;
                }
                int i3 = a3 / i2;
                sb.append((char) (i3 + 48));
                a3 -= i3 * i2;
                i2 /= 10;
                i++;
            }
        }
        sb.append('Z');
        return true;
    }

    @Override // j$.time.format.e
    public final int g(v vVar, CharSequence charSequence, int i) {
        u uVar = new u();
        uVar.a(DateTimeFormatter.f);
        uVar.d('T');
        j$.time.temporal.a aVar = j$.time.temporal.a.HOUR_OF_DAY;
        uVar.l(aVar, 2);
        uVar.d(':');
        j$.time.temporal.a aVar2 = j$.time.temporal.a.MINUTE_OF_HOUR;
        uVar.l(aVar2, 2);
        uVar.d(':');
        j$.time.temporal.a aVar3 = j$.time.temporal.a.SECOND_OF_MINUTE;
        uVar.l(aVar3, 2);
        j$.time.temporal.a aVar4 = j$.time.temporal.a.NANO_OF_SECOND;
        int i2 = 1;
        uVar.b(aVar4, 0, 9, true);
        uVar.d('Z');
        d dVar = uVar.q(Locale.getDefault(), e0.SMART, null).f21185a;
        if (dVar.b) {
            dVar = new d(dVar.f21193a, false);
        }
        v vVar2 = new v(vVar.f21219a);
        vVar2.b = vVar.b;
        vVar2.f21220c = vVar.f21220c;
        int g = dVar.g(vVar2, charSequence, i);
        if (g < 0) {
            return g;
        }
        long longValue = vVar2.d(j$.time.temporal.a.YEAR).longValue();
        int intValue = vVar2.d(j$.time.temporal.a.MONTH_OF_YEAR).intValue();
        int intValue2 = vVar2.d(j$.time.temporal.a.DAY_OF_MONTH).intValue();
        int intValue3 = vVar2.d(aVar).intValue();
        int intValue4 = vVar2.d(aVar2).intValue();
        Long d = vVar2.d(aVar3);
        Long d2 = vVar2.d(aVar4);
        int intValue5 = d != null ? d.intValue() : 0;
        int intValue6 = d2 != null ? d2.intValue() : 0;
        if (intValue3 == 24 && intValue4 == 0 && intValue5 == 0 && intValue6 == 0) {
            intValue3 = 0;
        } else if (intValue3 == 23 && intValue4 == 59 && intValue5 == 60) {
            vVar.c().d = true;
            i2 = 0;
            intValue5 = 59;
        } else {
            i2 = 0;
        }
        int i3 = ((int) longValue) % 10000;
        try {
            LocalDateTime localDateTime = LocalDateTime.f21139c;
            j$.time.g U = j$.time.g.U(i3, intValue, intValue2);
            j$.time.k O = j$.time.k.O(intValue3, intValue4, intValue5, 0);
            return vVar.f(aVar4, intValue6, i, vVar.f(j$.time.temporal.a.INSTANT_SECONDS, j$.com.android.tools.r8.a.q(new LocalDateTime(U, O).T(U.Y(i2), O), ZoneOffset.UTC) + j$.com.android.tools.r8.a.O(longValue / 10000, 315569520000L), i, g));
        } catch (RuntimeException unused) {
            return ~i;
        }
    }

    public final String toString() {
        return "Instant()";
    }
}
