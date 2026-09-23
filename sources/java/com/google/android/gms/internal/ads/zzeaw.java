package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.appopen.AppOpenAd;
import j$.util.Objects;

/* loaded from: classes.dex */
final class zzeaw extends AppOpenAd.AppOpenAdLoadCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f6324a;
    public final /* synthetic */ zzebh b;

    public zzeaw(zzebh zzebhVar, String str) {
        this.f6324a = str;
        Objects.requireNonNull(zzebhVar);
        this.b = zzebhVar;
    }

    @Override // com.google.android.gms.ads.AdLoadCallback
    public final void onAdFailedToLoad(LoadAdError loadAdError) {
        this.b.e5(zzebh.h5(loadAdError));
    }

    @Override // com.google.android.gms.ads.AdLoadCallback
    public final /* bridge */ /* synthetic */ void onAdLoaded(AppOpenAd appOpenAd) {
        String str = this.f6324a;
        this.b.d5(appOpenAd, str);
    }
}
