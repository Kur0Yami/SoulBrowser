package com.google.android.gms.internal.ads;

import android.util.Log;
import j$.util.DesugarTimeZone;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzash {
    public static zzaqt a(zzarg zzargVar) {
        long j;
        long j2;
        boolean z;
        long j3;
        long j4;
        long j5;
        long j6;
        long j7;
        long j8;
        long j9;
        long currentTimeMillis = System.currentTimeMillis();
        Map map = zzargVar.f4365c;
        if (map != null) {
            String str = (String) map.get("Date");
            if (str != null) {
                j = b(str);
            } else {
                j = 0;
            }
            String str2 = (String) map.get("Cache-Control");
            int i = 0;
            if (str2 != null) {
                String[] split2 = str2.split(",", 0);
                z = false;
                j3 = 0;
                j4 = 0;
                while (i < split2.length) {
                    String trim = split2[i].trim();
                    if (!trim.equals("no-cache") && !trim.equals("no-store")) {
                        if (trim.startsWith("max-age=")) {
                            try {
                                j4 = Long.parseLong(trim.substring(8));
                            } catch (Exception unused) {
                            }
                        } else if (trim.startsWith("stale-while-revalidate=")) {
                            j3 = Long.parseLong(trim.substring(23));
                        } else if (trim.equals("must-revalidate") || trim.equals("proxy-revalidate")) {
                            z = true;
                        }
                        i++;
                    } else {
                        return null;
                    }
                }
                j2 = 0;
                i = 1;
            } else {
                j2 = 0;
                z = false;
                j3 = 0;
                j4 = 0;
            }
            String str3 = (String) map.get("Expires");
            if (str3 != null) {
                j5 = b(str3);
            } else {
                j5 = j2;
            }
            String str4 = (String) map.get("Last-Modified");
            if (str4 != null) {
                j6 = currentTimeMillis;
                j7 = b(str4);
            } else {
                j6 = currentTimeMillis;
                j7 = j2;
            }
            String str5 = (String) map.get("ETag");
            if (i != 0) {
                long j10 = (j4 * 1000) + j6;
                if (z) {
                    j9 = j10;
                } else {
                    Long.signum(j3);
                    j9 = (j3 * 1000) + j10;
                }
                j8 = j10;
            } else {
                if (j > j2 && j5 >= j) {
                    j8 = (j5 - j) + j6;
                } else {
                    j8 = j2;
                }
                j9 = j8;
            }
            zzaqt zzaqtVar = new zzaqt();
            zzaqtVar.f4353a = zzargVar.b;
            zzaqtVar.b = str5;
            zzaqtVar.f = j8;
            zzaqtVar.e = j9;
            zzaqtVar.f4354c = j;
            zzaqtVar.d = j7;
            zzaqtVar.g = map;
            zzaqtVar.h = zzargVar.d;
            return zzaqtVar;
        }
        return null;
    }

    public static long b(String str) {
        try {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss zzz", Locale.US);
            simpleDateFormat.setTimeZone(DesugarTimeZone.getTimeZone("GMT"));
            return simpleDateFormat.parse(str).getTime();
        } catch (ParseException e) {
            if (!"0".equals(str) && !"-1".equals(str)) {
                Log.e("Volley", zzarw.d("Unable to parse dateStr: %s, falling back to 0", str), e);
                return 0L;
            }
            zzarw.a("Unable to parse dateStr: %s, falling back to 0", str);
            return 0L;
        }
    }
}
