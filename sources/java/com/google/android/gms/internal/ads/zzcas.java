package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.rewarded.RewardedAdLoadCallback;

/* loaded from: classes.dex */
public final class zzcas extends zzcal {

    /* renamed from: c, reason: collision with root package name */
    public final RewardedAdLoadCallback f4999c;
    public final zzcao f;

    public zzcas(RewardedAdLoadCallback rewardedAdLoadCallback, zzcao zzcaoVar) {
        this.f4999c = rewardedAdLoadCallback;
        this.f = zzcaoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcam
    public final void c(com.google.android.gms.ads.internal.client.zze zzeVar) {
        RewardedAdLoadCallback rewardedAdLoadCallback = this.f4999c;
        if (rewardedAdLoadCallback != null) {
            rewardedAdLoadCallback.onAdFailedToLoad(zzeVar.zzb());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcam
    public final void zze() {
        RewardedAdLoadCallback rewardedAdLoadCallback = this.f4999c;
        if (rewardedAdLoadCallback != null) {
            rewardedAdLoadCallback.onAdLoaded(this.f);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcam
    public final void zzf(int i) {
    }
}
