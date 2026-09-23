package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzbnv implements zzbnn {

    /* renamed from: a, reason: collision with root package name */
    public final zzdyh f4790a;

    public zzbnv(zzdyh zzdyhVar) {
        this.f4790a = zzdyhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbnn
    public final void a(Map map, Object obj) {
        if (map != null && map.containsKey("id") && !TextUtils.isEmpty((CharSequence) map.get("id")) && map.containsKey("event_type") && !TextUtils.isEmpty((CharSequence) map.get("event_type"))) {
            try {
                long parseLong = Long.parseLong((String) map.get("id"));
                int parseInt = Integer.parseInt((String) map.get("event_type"));
                this.f4790a.a(parseLong, com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis(), parseInt);
                return;
            } catch (NumberFormatException e) {
                com.google.android.gms.ads.internal.util.zze.zzb("Ignoring onDeviceStorageEvent GMSG: invalid number format for ID or eventType.", e);
                return;
            }
        }
        com.google.android.gms.ads.internal.util.zze.zza("Ignoring onDeviceStorageEvent GMSG: missing required parameters.");
    }
}
