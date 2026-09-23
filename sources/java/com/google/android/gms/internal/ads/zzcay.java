package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAdLoadCallback;

/* loaded from: classes.dex */
public final class zzcay extends zzcal {

    /* renamed from: c, reason: collision with root package name */
    public final RewardedInterstitialAdLoadCallback f5004c;
    public final zzcaz f;

    public zzcay(RewardedInterstitialAdLoadCallback rewardedInterstitialAdLoadCallback, zzcaz zzcazVar) {
        this.f5004c = rewardedInterstitialAdLoadCallback;
        this.f = zzcazVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcam
    public final void c(com.google.android.gms.ads.internal.client.zze zzeVar) {
        RewardedInterstitialAdLoadCallback rewardedInterstitialAdLoadCallback = this.f5004c;
        if (rewardedInterstitialAdLoadCallback != null) {
            rewardedInterstitialAdLoadCallback.onAdFailedToLoad(zzeVar.zzb());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcam
    public final void zze() {
        zzcaz zzcazVar;
        RewardedInterstitialAdLoadCallback rewardedInterstitialAdLoadCallback = this.f5004c;
        if (rewardedInterstitialAdLoadCallback != null && (zzcazVar = this.f) != null) {
            rewardedInterstitialAdLoadCallback.onAdLoaded(zzcazVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcam
    public final void zzf(int i) {
    }
}
