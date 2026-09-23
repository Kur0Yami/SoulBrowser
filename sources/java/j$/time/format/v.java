package j$.time.format;

import j$.time.ZoneId;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: classes2.dex */
public final class v {

    /* renamed from: a, reason: collision with root package name */
    public final DateTimeFormatter f21219a;
    public boolean b = true;

    /* renamed from: c, reason: collision with root package name */
    public boolean f21220c = true;
    public final ArrayList d;
    public ArrayList e;

    public v(DateTimeFormatter dateTimeFormatter) {
        ArrayList arrayList = new ArrayList();
        this.d = arrayList;
        this.e = null;
        this.f21219a = dateTimeFormatter;
        arrayList.add(new d0());
    }

    public final boolean a(char c2, char c3) {
        if (this.b) {
            return c2 == c3;
        }
        return b(c2, c3);
    }

    public final boolean g(CharSequence charSequence, int i, CharSequence charSequence2, int i2, int i3) {
        if (i + i3 <= charSequence.length() && i2 + i3 <= charSequence2.length()) {
            if (this.b) {
                for (int i4 = 0; i4 < i3; i4++) {
                    if (charSequence.charAt(i + i4) == charSequence2.charAt(i2 + i4)) {
                    }
                }
                return true;
            }
            for (int i5 = 0; i5 < i3; i5++) {
                char charAt = charSequence.charAt(i + i5);
                char charAt2 = charSequence2.charAt(i2 + i5);
                if (charAt == charAt2 || Character.toUpperCase(charAt) == Character.toUpperCase(charAt2) || Character.toLowerCase(charAt) == Character.toLowerCase(charAt2)) {
                }
            }
            return true;
        }
        return false;
    }

    public static boolean b(char c2, char c3) {
        return c2 == c3 || Character.toUpperCase(c2) == Character.toUpperCase(c3) || Character.toLowerCase(c2) == Character.toLowerCase(c3);
    }

    public final d0 c() {
        return (d0) this.d.get(r0.size() - 1);
    }

    public final Long d(j$.time.temporal.a aVar) {
        return (Long) ((HashMap) c().f21194a).get(aVar);
    }

    public final int f(j$.time.temporal.r rVar, long j, int i, int i2) {
        Objects.requireNonNull(rVar, "field");
        Long l = (Long) ((HashMap) c().f21194a).put(rVar, Long.valueOf(j));
        return (l == null || l.longValue() == j) ? i2 : ~i;
    }

    public final void e(ZoneId zoneId) {
        Objects.requireNonNull(zoneId, "zone");
        c().b = zoneId;
    }

    public final String toString() {
        return c().toString();
    }
}
