package com.google.android.gms.ads.internal.client;

import com.google.android.gms.ads.AdLoadCallback;

/* loaded from: classes.dex */
public final class zzh extends zzbm {

    /* renamed from: c, reason: collision with root package name */
    public final AdLoadCallback f3045c;
    public final Object f;

    public zzh(AdLoadCallback adLoadCallback, Object obj) {
        this.f3045c = adLoadCallback;
        this.f = obj;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbn
    public final void zzb() {
        Object obj;
        AdLoadCallback adLoadCallback = this.f3045c;
        if (adLoadCallback != null && (obj = this.f) != null) {
            adLoadCallback.onAdLoaded(obj);
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbn
    public final void zzc(zze zzeVar) {
        AdLoadCallback adLoadCallback = this.f3045c;
        if (adLoadCallback != null) {
            adLoadCallback.onAdFailedToLoad(zzeVar.zzb());
        }
    }
}
