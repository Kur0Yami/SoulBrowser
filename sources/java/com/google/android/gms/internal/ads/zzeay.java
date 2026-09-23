package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.interstitial.InterstitialAd;
import com.google.android.gms.ads.interstitial.InterstitialAdLoadCallback;
import j$.util.Objects;

/* loaded from: classes.dex */
final class zzeay extends InterstitialAdLoadCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f6326a;
    public final /* synthetic */ zzebh b;

    public zzeay(zzebh zzebhVar, String str) {
        this.f6326a = str;
        Objects.requireNonNull(zzebhVar);
        this.b = zzebhVar;
    }

    @Override // com.google.android.gms.ads.AdLoadCallback
    public final void onAdFailedToLoad(LoadAdError loadAdError) {
        this.b.e5(zzebh.h5(loadAdError));
    }

    @Override // com.google.android.gms.ads.AdLoadCallback
    public final /* bridge */ /* synthetic */ void onAdLoaded(InterstitialAd interstitialAd) {
        String str = this.f6326a;
        this.b.d5(interstitialAd, str);
    }
}
