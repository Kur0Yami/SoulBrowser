package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzbnt implements zzbnn {

    /* renamed from: a, reason: collision with root package name */
    public final Context f4787a;
    public final Map b;

    public zzbnt(Context context, Map map) {
        this.f4787a = context;
        this.b = map;
    }

    @Override // com.google.android.gms.internal.ads.zzbnn
    public final void a(Map map, Object obj) {
        zzcbw zzD = com.google.android.gms.ads.internal.zzt.zzD();
        Context context = this.f4787a;
        if (!zzD.a(context)) {
            return;
        }
        String str = (String) map.get("eventName");
        String str2 = (String) map.get("eventId");
        int hashCode = str.hashCode();
        if (hashCode != 94399) {
            Map map2 = this.b;
            if (hashCode != 94401) {
                if (hashCode == 94407 && str.equals("_ai")) {
                    zzcbw zzD2 = com.google.android.gms.ads.internal.zzt.zzD();
                    Map map3 = (Map) map2.get("_ai");
                    zzD2.getClass();
                    zzD2.h(context, "_ai", str2, zzcbw.f(map3));
                    return;
                }
            } else if (str.equals("_ac")) {
                zzcbw zzD3 = com.google.android.gms.ads.internal.zzt.zzD();
                Map map4 = (Map) map2.get("_ac");
                zzD3.getClass();
                zzD3.h(context, "_ac", str2, zzcbw.f(map4));
                return;
            }
        } else if (str.equals("_aa")) {
            com.google.android.gms.ads.internal.zzt.zzD().h(context, "_aa", str2, null);
            return;
        }
        int i = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzf("logScionEvent gmsg contained unsupported eventName");
    }
}
