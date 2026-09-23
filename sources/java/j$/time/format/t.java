package j$.time.format;

import com.google.android.gms.ads.RequestConfiguration;
import j$.util.Objects;
import j$.util.concurrent.ConcurrentHashMap;
import java.lang.ref.SoftReference;
import java.text.DateFormatSymbols;
import java.util.AbstractMap;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

/* loaded from: classes2.dex */
public final class t extends s {
    public static final ConcurrentHashMap i = new ConcurrentHashMap();
    public final g0 e;
    public final boolean f;
    public final Map g;
    public final Map h;

    public t(g0 g0Var, boolean z) {
        super(j$.time.temporal.s.e, "ZoneText(" + g0Var + ")");
        this.g = new HashMap();
        this.h = new HashMap();
        this.e = (g0) Objects.requireNonNull(g0Var, "textStyle");
        this.f = z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00fd  */
    @Override // j$.time.format.s, j$.time.format.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean d(j$.time.format.y r14, java.lang.StringBuilder r15) {
        /*
            Method dump skipped, instructions count: 258
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.time.format.t.d(j$.time.format.y, java.lang.StringBuilder):boolean");
    }

    @Override // j$.time.format.s
    public final m a(v vVar) {
        m mVar;
        m mVar2;
        if (this.e != g0.NARROW) {
            Locale locale = vVar.f21219a.b;
            boolean z = vVar.b;
            Set set = j$.time.zone.i.d;
            int size = set.size();
            Map map = z ? this.g : this.h;
            Map.Entry entry = (Map.Entry) map.get(locale);
            if (entry != null && ((Integer) entry.getKey()).intValue() == size && (mVar2 = (m) ((SoftReference) entry.getValue()).get()) != null) {
                return mVar2;
            }
            if (vVar.b) {
                mVar = new m(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, null, null);
            } else {
                mVar = new m(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, null, null);
            }
            for (String[] strArr : DateFormatSymbols.getInstance(locale).getZoneStrings()) {
                String str = strArr[0];
                if (set.contains(str)) {
                    mVar.a(str, str);
                    HashMap hashMap = (HashMap) h0.d;
                    String str2 = (String) hashMap.get(str);
                    if (str2 == null) {
                        HashMap hashMap2 = (HashMap) h0.g;
                        if (hashMap2.containsKey(str)) {
                            str = (String) hashMap2.get(str);
                            str2 = (String) hashMap.get(str);
                        }
                    }
                    if (str2 != null) {
                        Map map2 = (Map) ((HashMap) h0.f).get(str2);
                        if (map2 != null && map2.containsKey(locale.getCountry())) {
                            str = (String) map2.get(locale.getCountry());
                        } else {
                            str = (String) ((HashMap) h0.e).get(str2);
                        }
                    }
                    HashMap hashMap3 = (HashMap) h0.g;
                    if (hashMap3.containsKey(str)) {
                        str = (String) hashMap3.get(str);
                    }
                    for (int i2 = this.e == g0.FULL ? 1 : 2; i2 < strArr.length; i2 += 2) {
                        mVar.a(strArr[i2], str);
                    }
                }
            }
            map.put(locale, new AbstractMap.SimpleImmutableEntry(Integer.valueOf(size), new SoftReference(mVar)));
            return mVar;
        }
        return super.a(vVar);
    }
}
