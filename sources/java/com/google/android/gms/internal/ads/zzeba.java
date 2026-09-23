package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAd;
import com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAdLoadCallback;
import j$.util.Objects;

/* loaded from: classes.dex */
final class zzeba extends RewardedInterstitialAdLoadCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f6329a;
    public final /* synthetic */ zzebh b;

    public zzeba(zzebh zzebhVar, String str) {
        this.f6329a = str;
        Objects.requireNonNull(zzebhVar);
        this.b = zzebhVar;
    }

    @Override // com.google.android.gms.ads.AdLoadCallback
    public final void onAdFailedToLoad(LoadAdError loadAdError) {
        this.b.e5(zzebh.h5(loadAdError));
    }

    @Override // com.google.android.gms.ads.AdLoadCallback
    public final /* bridge */ /* synthetic */ void onAdLoaded(RewardedInterstitialAd rewardedInterstitialAd) {
        String str = this.f6329a;
        this.b.d5(rewardedInterstitialAd, str);
    }
}
