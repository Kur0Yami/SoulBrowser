package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.appopen.AppOpenAd;

/* loaded from: classes.dex */
public final class zzbdy extends zzbef {

    /* renamed from: c, reason: collision with root package name */
    public final AppOpenAd.AppOpenAdLoadCallback f4584c;
    public final String f;

    public zzbdy(AppOpenAd.AppOpenAdLoadCallback appOpenAdLoadCallback, String str) {
        this.f4584c = appOpenAdLoadCallback;
        this.f = str;
    }

    @Override // com.google.android.gms.internal.ads.zzbeg
    public final void r4(zzbed zzbedVar) {
        AppOpenAd.AppOpenAdLoadCallback appOpenAdLoadCallback = this.f4584c;
        if (appOpenAdLoadCallback != null) {
            appOpenAdLoadCallback.onAdLoaded(new zzbdz(zzbedVar, this.f));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbeg
    public final void zzc(int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzbeg
    public final void zzd(com.google.android.gms.ads.internal.client.zze zzeVar) {
        AppOpenAd.AppOpenAdLoadCallback appOpenAdLoadCallback = this.f4584c;
        if (appOpenAdLoadCallback != null) {
            appOpenAdLoadCallback.onAdFailedToLoad(zzeVar.zzb());
        }
    }
}
