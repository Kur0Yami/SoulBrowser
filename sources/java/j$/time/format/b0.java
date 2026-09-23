package j$.time.format;

import com.google.android.gms.ads.RequestConfiguration;
import j$.util.concurrent.ConcurrentHashMap;
import java.text.DateFormatSymbols;
import java.util.AbstractMap;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;

/* loaded from: classes2.dex */
public class b0 {

    /* renamed from: a, reason: collision with root package name */
    public static final ConcurrentHashMap f21189a = new ConcurrentHashMap(16, 0.75f, 2);
    public static final z b = new Object();

    /* renamed from: c, reason: collision with root package name */
    public static final b0 f21190c = new Object();

    public String c(j$.time.temporal.r rVar, long j, g0 g0Var, Locale locale) {
        Object a2 = a(rVar, locale);
        if (a2 instanceof a0) {
            return ((a0) a2).a(j, g0Var);
        }
        return null;
    }

    public String b(j$.time.chrono.m mVar, j$.time.temporal.r rVar, long j, g0 g0Var, Locale locale) {
        if (mVar == j$.time.chrono.t.f21173c || !(rVar instanceof j$.time.temporal.a)) {
            return c(rVar, j, g0Var, locale);
        }
        return null;
    }

    public Iterator e(j$.time.temporal.r rVar, g0 g0Var, Locale locale) {
        List list;
        Object a2 = a(rVar, locale);
        if (!(a2 instanceof a0) || (list = (List) ((HashMap) ((a0) a2).b).get(g0Var)) == null) {
            return null;
        }
        return list.iterator();
    }

    public Iterator d(j$.time.chrono.m mVar, j$.time.temporal.r rVar, g0 g0Var, Locale locale) {
        if (mVar == j$.time.chrono.t.f21173c || !(rVar instanceof j$.time.temporal.a)) {
            return e(rVar, g0Var, locale);
        }
        return null;
    }

    public static Object a(j$.time.temporal.r rVar, Locale locale) {
        Object obj;
        long j;
        String substring;
        AbstractMap.SimpleImmutableEntry simpleImmutableEntry = new AbstractMap.SimpleImmutableEntry(rVar, locale);
        ConcurrentHashMap concurrentHashMap = f21189a;
        V v = concurrentHashMap.get(simpleImmutableEntry);
        if (v != 0) {
            return v;
        }
        HashMap hashMap = new HashMap();
        if (rVar == j$.time.temporal.a.ERA) {
            DateFormatSymbols dateFormatSymbols = DateFormatSymbols.getInstance(locale);
            HashMap hashMap2 = new HashMap();
            HashMap hashMap3 = new HashMap();
            String[] eras = dateFormatSymbols.getEras();
            for (int i = 0; i < eras.length; i++) {
                if (!eras[i].isEmpty()) {
                    long j2 = i;
                    hashMap2.put(Long.valueOf(j2), eras[i]);
                    Long valueOf = Long.valueOf(j2);
                    String str = eras[i];
                    hashMap3.put(valueOf, str.substring(0, Character.charCount(str.codePointAt(0))));
                }
            }
            if (!hashMap2.isEmpty()) {
                hashMap.put(g0.FULL, hashMap2);
                hashMap.put(g0.SHORT, hashMap2);
                hashMap.put(g0.NARROW, hashMap3);
            }
            obj = new a0(hashMap);
        } else {
            long j3 = 1;
            if (rVar == j$.time.temporal.a.MONTH_OF_YEAR) {
                int length = DateFormatSymbols.getInstance(locale).getMonths().length;
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                LinkedHashMap linkedHashMap3 = new LinkedHashMap();
                for (long j4 = 1; j4 <= length; j4++) {
                    String w = j$.com.android.tools.r8.a.w(j4, "LLLL", locale);
                    linkedHashMap.put(Long.valueOf(j4), w);
                    linkedHashMap2.put(Long.valueOf(j4), w.substring(0, Character.charCount(w.codePointAt(0))));
                    linkedHashMap3.put(Long.valueOf(j4), j$.com.android.tools.r8.a.w(j4, "LLL", locale));
                }
                if (length > 0) {
                    hashMap.put(g0.FULL_STANDALONE, linkedHashMap);
                    hashMap.put(g0.NARROW_STANDALONE, linkedHashMap2);
                    hashMap.put(g0.SHORT_STANDALONE, linkedHashMap3);
                    hashMap.put(g0.FULL, linkedHashMap);
                    hashMap.put(g0.NARROW, linkedHashMap2);
                    hashMap.put(g0.SHORT, linkedHashMap3);
                }
                obj = new a0(hashMap);
            } else if (rVar == j$.time.temporal.a.DAY_OF_WEEK) {
                int length2 = DateFormatSymbols.getInstance(locale).getWeekdays().length;
                LinkedHashMap linkedHashMap4 = new LinkedHashMap();
                LinkedHashMap linkedHashMap5 = new LinkedHashMap();
                LinkedHashMap linkedHashMap6 = new LinkedHashMap();
                boolean z = locale == Locale.SIMPLIFIED_CHINESE || locale == Locale.TRADITIONAL_CHINESE;
                long j5 = 1;
                while (j5 <= length2) {
                    String v2 = j$.com.android.tools.r8.a.v(j5, "cccc", locale);
                    linkedHashMap4.put(Long.valueOf(j5), v2);
                    Long valueOf2 = Long.valueOf(j5);
                    if (!z) {
                        j = j3;
                        substring = v2.substring(0, Character.charCount(v2.codePointAt(0)));
                    } else {
                        j = j3;
                        substring = new StringBuilder().appendCodePoint(v2.codePointBefore(v2.length())).toString();
                    }
                    linkedHashMap5.put(valueOf2, substring);
                    linkedHashMap6.put(Long.valueOf(j5), j$.com.android.tools.r8.a.v(j5, "ccc", locale));
                    j5 += j;
                    j3 = j;
                }
                if (length2 > 0) {
                    hashMap.put(g0.FULL_STANDALONE, linkedHashMap4);
                    hashMap.put(g0.NARROW_STANDALONE, linkedHashMap5);
                    hashMap.put(g0.SHORT_STANDALONE, linkedHashMap6);
                    hashMap.put(g0.FULL, linkedHashMap4);
                    hashMap.put(g0.NARROW, linkedHashMap5);
                    hashMap.put(g0.SHORT, linkedHashMap6);
                }
                obj = new a0(hashMap);
            } else if (rVar == j$.time.temporal.a.AMPM_OF_DAY) {
                DateFormatSymbols dateFormatSymbols2 = DateFormatSymbols.getInstance(locale);
                HashMap hashMap4 = new HashMap();
                HashMap hashMap5 = new HashMap();
                String[] amPmStrings = dateFormatSymbols2.getAmPmStrings();
                for (int i2 = 0; i2 < amPmStrings.length; i2++) {
                    if (!amPmStrings[i2].isEmpty()) {
                        long j6 = i2;
                        hashMap4.put(Long.valueOf(j6), amPmStrings[i2]);
                        Long valueOf3 = Long.valueOf(j6);
                        String str2 = amPmStrings[i2];
                        hashMap5.put(valueOf3, str2.substring(0, Character.charCount(str2.codePointAt(0))));
                    }
                }
                if (!hashMap4.isEmpty()) {
                    hashMap.put(g0.FULL, hashMap4);
                    hashMap.put(g0.SHORT, hashMap4);
                    hashMap.put(g0.NARROW, hashMap5);
                }
                obj = new a0(hashMap);
            } else {
                obj = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
        }
        concurrentHashMap.putIfAbsent(simpleImmutableEntry, obj);
        return concurrentHashMap.get(simpleImmutableEntry);
    }
}
