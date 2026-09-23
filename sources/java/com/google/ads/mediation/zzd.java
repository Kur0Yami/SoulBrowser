package com.google.ads.mediation;

import androidx.annotation.VisibleForTesting;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;

@VisibleForTesting
/* loaded from: classes.dex */
final class zzd extends FullScreenContentCallback {

    /* renamed from: a, reason: collision with root package name */
    public final AbstractAdViewAdapter f2750a;
    public final MediationInterstitialListener b;

    public zzd(AbstractAdViewAdapter abstractAdViewAdapter, MediationInterstitialListener mediationInterstitialListener) {
        this.f2750a = abstractAdViewAdapter;
        this.b = mediationInterstitialListener;
    }

    @Override // com.google.android.gms.ads.FullScreenContentCallback
    public final void onAdDismissedFullScreenContent() {
        this.b.onAdClosed(this.f2750a);
    }

    @Override // com.google.android.gms.ads.FullScreenContentCallback
    public final void onAdShowedFullScreenContent() {
        this.b.onAdOpened(this.f2750a);
    }
}
