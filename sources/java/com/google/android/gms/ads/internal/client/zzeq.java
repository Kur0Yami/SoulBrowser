package com.google.android.gms.ads.internal.client;

import com.google.android.gms.ads.preload.PreloadCallback;
import com.google.android.gms.ads.preload.PreloadConfiguration;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzeq extends zzcd {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PreloadCallback f3020c;

    public zzeq(zzex zzexVar, PreloadCallback preloadCallback) {
        this.f3020c = preloadCallback;
    }

    @Override // com.google.android.gms.ads.internal.client.zzce
    public final void zze(zzft zzftVar) {
        PreloadConfiguration zzr = com.google.android.gms.ads.internal.util.client.zzf.zzr(zzftVar);
        if (zzr != null) {
            this.f3020c.onAdsAvailable(zzr);
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzce
    public final void zzf(zzft zzftVar) {
        PreloadConfiguration zzr = com.google.android.gms.ads.internal.util.client.zzf.zzr(zzftVar);
        if (zzr != null) {
            this.f3020c.onAdsExhausted(zzr);
        }
    }
}
