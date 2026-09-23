package j$.time.format;

import com.google.android.gms.ads.RequestConfiguration;
import j$.time.ZoneId;
import j$.time.ZoneOffset;
import java.text.ParsePosition;
import java.util.AbstractMap;
import java.util.Map;
import java.util.Set;

/* loaded from: classes2.dex */
public class s implements e {

    /* renamed from: c, reason: collision with root package name */
    public static volatile Map.Entry f21215c;
    public static volatile Map.Entry d;

    /* renamed from: a, reason: collision with root package name */
    public final j$.time.h f21216a;
    public final String b;

    public m a(v vVar) {
        Set<String> set = j$.time.zone.i.d;
        int size = set.size();
        Map.Entry entry = vVar.b ? f21215c : d;
        if (entry == null || ((Integer) entry.getKey()).intValue() != size) {
            synchronized (this) {
                try {
                    entry = vVar.b ? f21215c : d;
                    if (entry == null || ((Integer) entry.getKey()).intValue() != size) {
                        Integer valueOf = Integer.valueOf(size);
                        m mVar = vVar.b ? new m(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, null, null) : new m(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, null, null);
                        for (String str : set) {
                            mVar.a(str, str);
                        }
                        entry = new AbstractMap.SimpleImmutableEntry(valueOf, mVar);
                        if (vVar.b) {
                            f21215c = entry;
                        } else {
                            d = entry;
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return (m) entry.getValue();
    }

    public s(j$.time.h hVar, String str) {
        this.f21216a = hVar;
        this.b = str;
    }

    @Override // j$.time.format.e
    public boolean d(y yVar, StringBuilder sb) {
        ZoneId zoneId = (ZoneId) yVar.b(this.f21216a);
        if (zoneId == null) {
            return false;
        }
        sb.append(zoneId.f());
        return true;
    }

    @Override // j$.time.format.e
    public final int g(v vVar, CharSequence charSequence, int i) {
        int i2;
        int length = charSequence.length();
        if (i > length) {
            throw new IndexOutOfBoundsException();
        }
        if (i == length) {
            return ~i;
        }
        char charAt = charSequence.charAt(i);
        if (charAt == '+' || charAt == '-') {
            return b(vVar, charSequence, i, i, j.e);
        }
        int i3 = i + 2;
        if (length >= i3) {
            char charAt2 = charSequence.charAt(i + 1);
            if (vVar.a(charAt, 'U') && vVar.a(charAt2, 'T')) {
                int i4 = i + 3;
                if (length >= i4 && vVar.a(charSequence.charAt(i3), 'C')) {
                    return b(vVar, charSequence, i, i4, j.f);
                }
                return b(vVar, charSequence, i, i3, j.f);
            }
            if (vVar.a(charAt, 'G') && length >= (i2 = i + 3) && vVar.a(charAt2, 'M') && vVar.a(charSequence.charAt(i3), 'T')) {
                int i5 = i + 4;
                if (length >= i5 && vVar.a(charSequence.charAt(i2), '0')) {
                    vVar.e(ZoneId.L("GMT0", true));
                    return i5;
                }
                return b(vVar, charSequence, i, i2, j.f);
            }
        }
        m a2 = a(vVar);
        ParsePosition parsePosition = new ParsePosition(i);
        String c2 = a2.c(charSequence, parsePosition);
        if (c2 == null) {
            if (!vVar.a(charAt, 'Z')) {
                return ~i;
            }
            vVar.e(ZoneOffset.UTC);
            return i + 1;
        }
        vVar.e(ZoneId.L(c2, true));
        return parsePosition.getIndex();
    }

    public static int b(v vVar, CharSequence charSequence, int i, int i2, j jVar) {
        String upperCase = charSequence.subSequence(i, i2).toString().toUpperCase();
        if (i2 >= charSequence.length()) {
            vVar.e(ZoneId.L(upperCase, true));
            return i2;
        }
        if (charSequence.charAt(i2) != '0' && !vVar.a(charSequence.charAt(i2), 'Z')) {
            v vVar2 = new v(vVar.f21219a);
            vVar2.b = vVar.b;
            vVar2.f21220c = vVar.f21220c;
            int g = jVar.g(vVar2, charSequence, i2);
            try {
                if (g < 0) {
                    if (jVar == j.e) {
                        return ~i;
                    }
                    vVar.e(ZoneId.L(upperCase, true));
                    return i2;
                }
                vVar.e(ZoneId.M(upperCase, ZoneOffset.R((int) vVar2.d(j$.time.temporal.a.OFFSET_SECONDS).longValue())));
                return g;
            } catch (j$.time.b unused) {
                return ~i;
            }
        }
        vVar.e(ZoneId.L(upperCase, true));
        return i2;
    }

    public final String toString() {
        return this.b;
    }
}
