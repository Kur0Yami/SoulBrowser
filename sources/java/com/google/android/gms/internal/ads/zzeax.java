package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.BaseAdView;
import com.google.android.gms.ads.LoadAdError;
import j$.util.Objects;

/* loaded from: classes.dex */
final class zzeax extends AdListener {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f6325c;
    public final /* synthetic */ BaseAdView f;
    public final /* synthetic */ zzebh g;

    public zzeax(zzebh zzebhVar, String str, BaseAdView baseAdView) {
        this.f6325c = str;
        this.f = baseAdView;
        Objects.requireNonNull(zzebhVar);
        this.g = zzebhVar;
    }

    @Override // com.google.android.gms.ads.AdListener
    public final void onAdFailedToLoad(LoadAdError loadAdError) {
        this.g.e5(zzebh.h5(loadAdError));
    }

    @Override // com.google.android.gms.ads.AdListener
    public final void onAdLoaded() {
        String str = this.f6325c;
        this.g.d5(this.f, str);
    }
}
