package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzbog implements zzbnn {

    /* renamed from: a, reason: collision with root package name */
    public final zzbof f4801a;

    public zzbog(zzbof zzbofVar) {
        this.f4801a = zzbofVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbnn
    public final void a(Map map, Object obj) {
        String str = (String) map.get("action");
        boolean equals = "grant".equals(str);
        zzbof zzbofVar = this.f4801a;
        if (equals) {
            zzbzy zzbzyVar = null;
            try {
                int parseInt = Integer.parseInt((String) map.get("amount"));
                String str2 = (String) map.get("type");
                if (!TextUtils.isEmpty(str2)) {
                    zzbzyVar = new zzbzy(str2, parseInt);
                }
            } catch (NumberFormatException e) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Unable to parse reward amount.", e);
            }
            zzbofVar.U(zzbzyVar);
            return;
        }
        if ("video_start".equals(str)) {
            zzbofVar.zza();
        } else if ("video_complete".equals(str)) {
            zzbofVar.zzc();
        }
    }
}
