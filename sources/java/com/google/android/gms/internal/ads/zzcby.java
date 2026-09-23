package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzcby {
    public static String a(String str, Context context, boolean z, Map map) {
        String d;
        if ((!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.V0)).booleanValue() || z) && com.google.android.gms.ads.internal.zzt.zzD().a(context) && !TextUtils.isEmpty(str) && (d = com.google.android.gms.ads.internal.zzt.zzD().d(context)) != null) {
            String str2 = (String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.O0);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.N0)).booleanValue() && str.contains(str2)) {
                if (com.google.android.gms.ads.internal.zzt.zzc().zzi(str)) {
                    zzcbw zzD = com.google.android.gms.ads.internal.zzt.zzD();
                    Map map2 = (Map) map.get("_ac");
                    zzD.getClass();
                    zzD.h(context, "_ac", d, zzcbw.f(map2));
                    return c(context, str).replace(str2, d);
                }
                if (com.google.android.gms.ads.internal.zzt.zzc().zzj(str)) {
                    zzcbw zzD2 = com.google.android.gms.ads.internal.zzt.zzD();
                    Map map3 = (Map) map.get("_ai");
                    zzD2.getClass();
                    zzD2.h(context, "_ai", d, zzcbw.f(map3));
                    return c(context, str).replace(str2, d);
                }
                return str;
            }
            if (!str.contains("fbs_aeid")) {
                if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.M0)).booleanValue()) {
                    if (com.google.android.gms.ads.internal.zzt.zzc().zzi(str)) {
                        zzcbw zzD3 = com.google.android.gms.ads.internal.zzt.zzD();
                        Map map4 = (Map) map.get("_ac");
                        zzD3.getClass();
                        zzD3.h(context, "_ac", d, zzcbw.f(map4));
                        return b(c(context, str), "fbs_aeid", d).toString();
                    }
                    if (com.google.android.gms.ads.internal.zzt.zzc().zzj(str)) {
                        zzcbw zzD4 = com.google.android.gms.ads.internal.zzt.zzD();
                        Map map5 = (Map) map.get("_ai");
                        zzD4.getClass();
                        zzD4.h(context, "_ai", d, zzcbw.f(map5));
                        return b(c(context, str), "fbs_aeid", d).toString();
                    }
                    return str;
                }
                return str;
            }
            return str;
        }
        return str;
    }

    public static Uri b(String str, String str2, String str3) {
        int indexOf = str.indexOf("&adurl");
        if (indexOf == -1) {
            indexOf = str.indexOf("?adurl");
        }
        if (indexOf != -1) {
            int i = indexOf + 1;
            StringBuilder sb = new StringBuilder(str.substring(0, i));
            android.support.v4.media.a.z(sb, str2, "=", str3, "&");
            sb.append(str.substring(i));
            return Uri.parse(sb.toString());
        }
        return Uri.parse(str).buildUpon().appendQueryParameter(str2, str3).build();
    }

    public static String c(Context context, String str) {
        String b = com.google.android.gms.ads.internal.zzt.zzD().b(context);
        String c2 = com.google.android.gms.ads.internal.zzt.zzD().c(context);
        if (!str.contains("gmp_app_id") && !TextUtils.isEmpty(b)) {
            str = b(str, "gmp_app_id", b).toString();
        }
        if (!str.contains("fbs_aiid") && !TextUtils.isEmpty(c2)) {
            return b(str, "fbs_aiid", c2).toString();
        }
        return str;
    }
}
