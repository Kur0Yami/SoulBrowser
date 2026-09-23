package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzcgj implements zzbnn {

    /* renamed from: a, reason: collision with root package name */
    public final zzcgi f5129a;

    public zzcgj(zzcgi zzcgiVar) {
        this.f5129a = zzcgiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbnn
    public final /* synthetic */ void a(Map map, Object obj) {
        String str = (String) map.get("action");
        if (str == null) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi("Action missing from video GMSG.");
            return;
        }
        if (str.equals("src")) {
            String str2 = (String) map.get("src");
            if (str2 == null) {
                int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzi("src missing from video GMSG.");
            } else {
                zzdqh zzdqhVar = (zzdqh) this.f5129a;
                Bundle bundle = new Bundle();
                bundle.putString("mediaUrl", str2);
                zzdqhVar.f6027a.a(bundle);
            }
        }
    }
}
