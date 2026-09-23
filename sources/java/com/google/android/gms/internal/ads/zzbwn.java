package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.nativead.NativeAd;

/* loaded from: classes.dex */
public final class zzbwn extends zzbll {

    /* renamed from: c, reason: collision with root package name */
    public final NativeAd.OnNativeAdLoadedListener f4953c;

    public zzbwn(NativeAd.OnNativeAdLoadedListener onNativeAdLoadedListener) {
        this.f4953c = onNativeAdLoadedListener;
    }

    @Override // com.google.android.gms.internal.ads.zzblm
    public final void S0(zzbls zzblsVar) {
        this.f4953c.onNativeAdLoaded(new zzbwi(zzblsVar));
    }
}
