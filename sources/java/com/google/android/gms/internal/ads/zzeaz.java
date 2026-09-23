package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.rewarded.RewardedAd;
import com.google.android.gms.ads.rewarded.RewardedAdLoadCallback;
import j$.util.Objects;

/* loaded from: classes.dex */
final class zzeaz extends RewardedAdLoadCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f6327a;
    public final /* synthetic */ zzebh b;

    public zzeaz(zzebh zzebhVar, String str) {
        this.f6327a = str;
        Objects.requireNonNull(zzebhVar);
        this.b = zzebhVar;
    }

    @Override // com.google.android.gms.ads.AdLoadCallback
    public final void onAdFailedToLoad(LoadAdError loadAdError) {
        this.b.e5(zzebh.h5(loadAdError));
    }

    @Override // com.google.android.gms.ads.AdLoadCallback
    public final /* bridge */ /* synthetic */ void onAdLoaded(RewardedAd rewardedAd) {
        String str = this.f6327a;
        this.b.d5(rewardedAd, str);
    }
}
