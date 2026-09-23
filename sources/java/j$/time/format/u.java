package j$.time.format;

import j$.util.Objects;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* loaded from: classes2.dex */
public final class u {
    public static final j$.time.h h = new j$.time.h(1);
    public static final Map i;

    /* renamed from: a, reason: collision with root package name */
    public u f21217a;
    public final u b;

    /* renamed from: c, reason: collision with root package name */
    public final List f21218c;
    public final boolean d;
    public int e;
    public char f;
    public int g;

    static {
        HashMap hashMap = new HashMap();
        i = hashMap;
        hashMap.put('G', j$.time.temporal.a.ERA);
        hashMap.put('y', j$.time.temporal.a.YEAR_OF_ERA);
        hashMap.put('u', j$.time.temporal.a.YEAR);
        j$.time.temporal.h hVar = j$.time.temporal.j.f21250a;
        hashMap.put('Q', hVar);
        hashMap.put('q', hVar);
        j$.time.temporal.a aVar = j$.time.temporal.a.MONTH_OF_YEAR;
        hashMap.put('M', aVar);
        hashMap.put('L', aVar);
        hashMap.put('D', j$.time.temporal.a.DAY_OF_YEAR);
        hashMap.put('d', j$.time.temporal.a.DAY_OF_MONTH);
        hashMap.put('F', j$.time.temporal.a.ALIGNED_DAY_OF_WEEK_IN_MONTH);
        j$.time.temporal.a aVar2 = j$.time.temporal.a.DAY_OF_WEEK;
        hashMap.put('E', aVar2);
        hashMap.put('c', aVar2);
        hashMap.put('e', aVar2);
        hashMap.put('a', j$.time.temporal.a.AMPM_OF_DAY);
        hashMap.put('H', j$.time.temporal.a.HOUR_OF_DAY);
        hashMap.put('k', j$.time.temporal.a.CLOCK_HOUR_OF_DAY);
        hashMap.put('K', j$.time.temporal.a.HOUR_OF_AMPM);
        hashMap.put('h', j$.time.temporal.a.CLOCK_HOUR_OF_AMPM);
        hashMap.put('m', j$.time.temporal.a.MINUTE_OF_HOUR);
        hashMap.put('s', j$.time.temporal.a.SECOND_OF_MINUTE);
        j$.time.temporal.a aVar3 = j$.time.temporal.a.NANO_OF_SECOND;
        hashMap.put('S', aVar3);
        hashMap.put('A', j$.time.temporal.a.MILLI_OF_DAY);
        hashMap.put('n', aVar3);
        hashMap.put('N', j$.time.temporal.a.NANO_OF_DAY);
        hashMap.put('g', j$.time.temporal.l.f21254a);
    }

    public u() {
        this.f21217a = this;
        this.f21218c = new ArrayList();
        this.g = -1;
        this.b = null;
        this.d = false;
    }

    public u(u uVar) {
        this.f21217a = this;
        this.f21218c = new ArrayList();
        this.g = -1;
        this.b = uVar;
        this.d = true;
    }

    public final void k(j$.time.temporal.r rVar) {
        Objects.requireNonNull(rVar, "field");
        j(new i(rVar, 1, 19, f0.NORMAL));
    }

    public final void l(j$.time.temporal.r rVar, int i2) {
        Objects.requireNonNull(rVar, "field");
        if (i2 < 1 || i2 > 19) {
            throw new IllegalArgumentException("The width must be from 1 to 19 inclusive but was " + i2);
        }
        j(new i(rVar, i2, i2, f0.NOT_NEGATIVE));
    }

    public final void m(j$.time.temporal.r rVar, int i2, int i3, f0 f0Var) {
        if (i2 == i3 && f0Var == f0.NOT_NEGATIVE) {
            l(rVar, i3);
            return;
        }
        Objects.requireNonNull(rVar, "field");
        Objects.requireNonNull(f0Var, "signStyle");
        if (i2 < 1 || i2 > 19) {
            throw new IllegalArgumentException("The minimum width must be from 1 to 19 inclusive but was " + i2);
        }
        if (i3 < 1 || i3 > 19) {
            throw new IllegalArgumentException("The maximum width must be from 1 to 19 inclusive but was " + i3);
        }
        if (i3 < i2) {
            throw new IllegalArgumentException("The maximum width must exceed or equal the minimum width but " + i3 + " < " + i2);
        }
        j(new i(rVar, i2, i3, f0Var));
    }

    public final void j(i iVar) {
        i e;
        u uVar = this.f21217a;
        int i2 = uVar.g;
        if (i2 >= 0) {
            i iVar2 = (i) ((ArrayList) uVar.f21218c).get(i2);
            int i3 = iVar.b;
            int i4 = iVar.f21203c;
            if (i3 == i4 && iVar.d == f0.NOT_NEGATIVE) {
                e = iVar2.f(i4);
                c(iVar.e());
                this.f21217a.g = i2;
            } else {
                e = iVar2.e();
                this.f21217a.g = c(iVar);
            }
            ((ArrayList) this.f21217a.f21218c).set(i2, e);
            return;
        }
        uVar.g = c(iVar);
    }

    public final void b(j$.time.temporal.a aVar, int i2, int i3, boolean z) {
        if (i2 == i3 && !z) {
            j(new f(aVar, i2, i3, z));
        } else {
            c(new f(aVar, i2, i3, z));
        }
    }

    public final void i(j$.time.temporal.r rVar, g0 g0Var) {
        Objects.requireNonNull(rVar, "field");
        Objects.requireNonNull(g0Var, "textStyle");
        c(new q(rVar, g0Var, b0.f21190c));
    }

    public final void h(j$.time.temporal.a aVar, Map map) {
        Objects.requireNonNull(aVar, "field");
        Objects.requireNonNull(map, "textLookup");
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        g0 g0Var = g0.FULL;
        c(new q(aVar, g0Var, new a(new a0(Collections.singletonMap(g0Var, linkedHashMap)))));
    }

    public final void g(String str, String str2) {
        c(new j(str, str2));
    }

    public final void f(g0 g0Var) {
        Objects.requireNonNull(g0Var, "style");
        if (g0Var != g0.FULL && g0Var != g0.SHORT) {
            throw new IllegalArgumentException("Style must be either full or short");
        }
        c(new h(0, g0Var));
    }

    public final void d(char c2) {
        c(new c(c2));
    }

    public final void e(String str) {
        Objects.requireNonNull(str, "literal");
        if (str.isEmpty()) {
            return;
        }
        if (str.length() == 1) {
            c(new c(str.charAt(0)));
        } else {
            c(new h(1, str));
        }
    }

    public final void a(DateTimeFormatter dateTimeFormatter) {
        Objects.requireNonNull(dateTimeFormatter, "formatter");
        d dVar = dateTimeFormatter.f21185a;
        if (dVar.b) {
            dVar = new d(dVar.f21193a, false);
        }
        c(dVar);
    }

    public final void o() {
        u uVar = this.f21217a;
        uVar.g = -1;
        this.f21217a = new u(uVar);
    }

    public final void n() {
        u uVar = this.f21217a;
        if (uVar.b == null) {
            throw new IllegalStateException("Cannot call optionalEnd() as there was no previous call to optionalStart()");
        }
        if (((ArrayList) uVar.f21218c).size() > 0) {
            u uVar2 = this.f21217a;
            d dVar = new d(uVar2.f21218c, uVar2.d);
            this.f21217a = this.f21217a.b;
            c(dVar);
            return;
        }
        this.f21217a = this.f21217a.b;
    }

    public final int c(e eVar) {
        Objects.requireNonNull(eVar, "pp");
        u uVar = this.f21217a;
        int i2 = uVar.e;
        if (i2 > 0) {
            if (eVar != null) {
                eVar = new k(eVar, i2, uVar.f);
            }
            uVar.e = 0;
            uVar.f = (char) 0;
        }
        ((ArrayList) uVar.f21218c).add(eVar);
        this.f21217a.g = -1;
        return ((ArrayList) r5.f21218c).size() - 1;
    }

    public final DateTimeFormatter p(e0 e0Var, j$.time.chrono.m mVar) {
        return q(Locale.getDefault(), e0Var, mVar);
    }

    public final DateTimeFormatter q(Locale locale, e0 e0Var, j$.time.chrono.m mVar) {
        Objects.requireNonNull(locale, "locale");
        while (this.f21217a.b != null) {
            n();
        }
        d dVar = new d(this.f21218c, false);
        c0 c0Var = c0.f21192a;
        return new DateTimeFormatter(dVar, locale, e0Var, mVar);
    }
}
