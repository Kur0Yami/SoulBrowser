package com.google.android.gms.internal.ads;

import java.util.Map;

/* loaded from: classes.dex */
public final class zzbme implements zzbnn {

    /* renamed from: a, reason: collision with root package name */
    public final zzbmf f4767a;

    public zzbme(zzbmf zzbmfVar) {
        this.f4767a = zzbmfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbnn
    public final void a(Map map, Object obj) {
        String str = (String) map.get("name");
        if (str == null) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi("App event with no name parameter.");
        } else {
            this.f4767a.zzb(str, (String) map.get("info"));
        }
    }
}
