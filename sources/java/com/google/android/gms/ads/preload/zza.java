package com.google.android.gms.ads.preload;

import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.internal.client.zzcg;
import com.google.android.gms.ads.internal.client.zze;
import com.google.android.gms.ads.internal.client.zzea;

/* loaded from: classes.dex */
final class zza extends zzcg {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PreloadCallbackV2 f3313c;

    public zza(zzb zzbVar, PreloadCallbackV2 preloadCallbackV2) {
        this.f3313c = preloadCallbackV2;
    }

    @Override // com.google.android.gms.ads.internal.client.zzch
    public final void zze(String str, zzea zzeaVar) {
        this.f3313c.onAdPreloaded(str, ResponseInfo.zzb(zzeaVar));
    }

    @Override // com.google.android.gms.ads.internal.client.zzch
    public final void zzf(String str) {
        this.f3313c.onAdsExhausted(str);
    }

    @Override // com.google.android.gms.ads.internal.client.zzch
    public final void zzg(String str, zze zzeVar) {
        this.f3313c.onAdFailedToPreload(str, zzeVar.zzb());
    }
}
