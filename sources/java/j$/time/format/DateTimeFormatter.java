package j$.time.format;

import j$.util.Objects;
import java.util.HashMap;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class DateTimeFormatter {
    public static final DateTimeFormatter f;
    public static final DateTimeFormatter g;

    /* renamed from: a, reason: collision with root package name */
    public final d f21185a;
    public final Locale b;

    /* renamed from: c, reason: collision with root package name */
    public final c0 f21186c;
    public final e0 d;
    public final j$.time.chrono.m e;

    /* JADX WARN: Failed to find 'out' block for switch in B:70:0x00e6. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:71:0x00e9. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:72:0x00ec. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:150:0x026f  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x027d  */
    /* JADX WARN: Removed duplicated region for block: B:285:0x048a  */
    /* JADX WARN: Removed duplicated region for block: B:291:0x04a3 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static j$.time.format.DateTimeFormatter ofPattern(java.lang.String r20, java.util.Locale r21) {
        /*
            Method dump skipped, instructions count: 1316
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.time.format.DateTimeFormatter.ofPattern(java.lang.String, java.util.Locale):j$.time.format.DateTimeFormatter");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v12, types: [j$.time.format.e, java.lang.Object] */
    static {
        u uVar = new u();
        j$.time.temporal.a aVar = j$.time.temporal.a.YEAR;
        f0 f0Var = f0.EXCEEDS_PAD;
        uVar.m(aVar, 4, 10, f0Var);
        uVar.d('-');
        j$.time.temporal.a aVar2 = j$.time.temporal.a.MONTH_OF_YEAR;
        uVar.l(aVar2, 2);
        uVar.d('-');
        j$.time.temporal.a aVar3 = j$.time.temporal.a.DAY_OF_MONTH;
        uVar.l(aVar3, 2);
        e0 e0Var = e0.STRICT;
        j$.time.chrono.t tVar = j$.time.chrono.t.f21173c;
        DateTimeFormatter p = uVar.p(e0Var, tVar);
        f = p;
        u uVar2 = new u();
        p pVar = p.INSENSITIVE;
        uVar2.c(pVar);
        uVar2.a(p);
        j jVar = j.e;
        uVar2.c(jVar);
        uVar2.p(e0Var, tVar);
        u uVar3 = new u();
        uVar3.c(pVar);
        uVar3.a(p);
        uVar3.o();
        uVar3.c(jVar);
        uVar3.p(e0Var, tVar);
        u uVar4 = new u();
        j$.time.temporal.a aVar4 = j$.time.temporal.a.HOUR_OF_DAY;
        uVar4.l(aVar4, 2);
        uVar4.d(':');
        j$.time.temporal.a aVar5 = j$.time.temporal.a.MINUTE_OF_HOUR;
        uVar4.l(aVar5, 2);
        uVar4.o();
        uVar4.d(':');
        j$.time.temporal.a aVar6 = j$.time.temporal.a.SECOND_OF_MINUTE;
        uVar4.l(aVar6, 2);
        uVar4.o();
        uVar4.b(j$.time.temporal.a.NANO_OF_SECOND, 0, 9, true);
        DateTimeFormatter p2 = uVar4.p(e0Var, null);
        u uVar5 = new u();
        uVar5.c(pVar);
        uVar5.a(p2);
        uVar5.c(jVar);
        uVar5.p(e0Var, null);
        u uVar6 = new u();
        uVar6.c(pVar);
        uVar6.a(p2);
        uVar6.o();
        uVar6.c(jVar);
        uVar6.p(e0Var, null);
        u uVar7 = new u();
        uVar7.c(pVar);
        uVar7.a(p);
        uVar7.d('T');
        uVar7.a(p2);
        DateTimeFormatter p3 = uVar7.p(e0Var, tVar);
        u uVar8 = new u();
        uVar8.c(pVar);
        uVar8.a(p3);
        p pVar2 = p.LENIENT;
        uVar8.c(pVar2);
        uVar8.c(jVar);
        p pVar3 = p.STRICT;
        uVar8.c(pVar3);
        DateTimeFormatter p4 = uVar8.p(e0Var, tVar);
        u uVar9 = new u();
        uVar9.a(p4);
        uVar9.o();
        uVar9.d('[');
        p pVar4 = p.SENSITIVE;
        uVar9.c(pVar4);
        j$.time.h hVar = u.h;
        uVar9.c(new s(hVar, "ZoneRegionId()"));
        uVar9.d(']');
        uVar9.p(e0Var, tVar);
        u uVar10 = new u();
        uVar10.a(p3);
        uVar10.o();
        uVar10.c(jVar);
        uVar10.o();
        uVar10.d('[');
        uVar10.c(pVar4);
        uVar10.c(new s(hVar, "ZoneRegionId()"));
        uVar10.d(']');
        uVar10.p(e0Var, tVar);
        u uVar11 = new u();
        uVar11.c(pVar);
        uVar11.m(aVar, 4, 10, f0Var);
        uVar11.d('-');
        uVar11.l(j$.time.temporal.a.DAY_OF_YEAR, 3);
        uVar11.o();
        uVar11.c(jVar);
        uVar11.p(e0Var, tVar);
        u uVar12 = new u();
        uVar12.c(pVar);
        uVar12.m(j$.time.temporal.j.f21251c, 4, 10, f0Var);
        uVar12.e("-W");
        uVar12.l(j$.time.temporal.j.b, 2);
        uVar12.d('-');
        j$.time.temporal.a aVar7 = j$.time.temporal.a.DAY_OF_WEEK;
        uVar12.l(aVar7, 1);
        uVar12.o();
        uVar12.c(jVar);
        uVar12.p(e0Var, tVar);
        u uVar13 = new u();
        uVar13.c(pVar);
        uVar13.c(new Object());
        g = uVar13.p(e0Var, null);
        u uVar14 = new u();
        uVar14.c(pVar);
        uVar14.l(aVar, 4);
        uVar14.l(aVar2, 2);
        uVar14.l(aVar3, 2);
        uVar14.o();
        uVar14.c(pVar2);
        uVar14.g("+HHMMss", "Z");
        uVar14.c(pVar3);
        uVar14.p(e0Var, tVar);
        HashMap hashMap = new HashMap();
        hashMap.put(1L, "Mon");
        hashMap.put(2L, "Tue");
        hashMap.put(3L, "Wed");
        hashMap.put(4L, "Thu");
        hashMap.put(5L, "Fri");
        hashMap.put(6L, "Sat");
        hashMap.put(7L, "Sun");
        HashMap hashMap2 = new HashMap();
        hashMap2.put(1L, "Jan");
        hashMap2.put(2L, "Feb");
        hashMap2.put(3L, "Mar");
        hashMap2.put(4L, "Apr");
        hashMap2.put(5L, "May");
        hashMap2.put(6L, "Jun");
        hashMap2.put(7L, "Jul");
        hashMap2.put(8L, "Aug");
        hashMap2.put(9L, "Sep");
        hashMap2.put(10L, "Oct");
        hashMap2.put(11L, "Nov");
        hashMap2.put(12L, "Dec");
        u uVar15 = new u();
        uVar15.c(pVar);
        uVar15.c(pVar2);
        uVar15.o();
        uVar15.h(aVar7, hashMap);
        uVar15.e(", ");
        uVar15.n();
        uVar15.m(aVar3, 1, 2, f0.NOT_NEGATIVE);
        uVar15.d(' ');
        uVar15.h(aVar2, hashMap2);
        uVar15.d(' ');
        uVar15.l(aVar, 4);
        uVar15.d(' ');
        uVar15.l(aVar4, 2);
        uVar15.d(':');
        uVar15.l(aVar5, 2);
        uVar15.o();
        uVar15.d(':');
        uVar15.l(aVar6, 2);
        uVar15.n();
        uVar15.d(' ');
        uVar15.g("+HHMM", "GMT");
        uVar15.p(e0.SMART, tVar);
    }

    public DateTimeFormatter(d dVar, Locale locale, e0 e0Var, j$.time.chrono.m mVar) {
        c0 c0Var = c0.f21192a;
        this.f21185a = (d) Objects.requireNonNull(dVar, "printerParser");
        this.b = (Locale) Objects.requireNonNull(locale, "locale");
        this.f21186c = (c0) Objects.requireNonNull(c0Var, "decimalStyle");
        this.d = (e0) Objects.requireNonNull(e0Var, "resolverStyle");
        this.e = mVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:104:0x032a, code lost:
    
        if (((java.util.HashMap) r9.f21194a).containsKey(j$.time.temporal.a.SECOND_OF_MINUTE) != false) goto L132;
     */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0382  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0394  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x03ba  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x0295  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x02bf  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x02c6  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x02e6  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x02f4  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0308  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final j$.time.format.d0 a(java.lang.CharSequence r27) {
        /*
            Method dump skipped, instructions count: 1102
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.time.format.DateTimeFormatter.a(java.lang.CharSequence):j$.time.format.d0");
    }

    public final String toString() {
        String dVar = this.f21185a.toString();
        return dVar.startsWith("[") ? dVar : dVar.substring(1, dVar.length() - 1);
    }
}
