package com.google.ads.mediation;

import androidx.annotation.VisibleForTesting;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.admanager.AppEventListener;
import com.google.android.gms.ads.mediation.MediationBannerListener;

@VisibleForTesting
/* loaded from: classes.dex */
final class zzb extends AdListener implements AppEventListener, com.google.android.gms.ads.internal.client.zza {

    /* renamed from: c, reason: collision with root package name */
    public final AbstractAdViewAdapter f2748c;
    public final MediationBannerListener f;

    public zzb(AbstractAdViewAdapter abstractAdViewAdapter, MediationBannerListener mediationBannerListener) {
        this.f2748c = abstractAdViewAdapter;
        this.f = mediationBannerListener;
    }

    @Override // com.google.android.gms.ads.AdListener, com.google.android.gms.ads.internal.client.zza
    public final void onAdClicked() {
        this.f.onAdClicked(this.f2748c);
    }

    @Override // com.google.android.gms.ads.AdListener
    public final void onAdClosed() {
        this.f.onAdClosed(this.f2748c);
    }

    @Override // com.google.android.gms.ads.AdListener
    public final void onAdFailedToLoad(LoadAdError loadAdError) {
        this.f.onAdFailedToLoad(this.f2748c, loadAdError);
    }

    @Override // com.google.android.gms.ads.AdListener
    public final void onAdLoaded() {
        this.f.onAdLoaded(this.f2748c);
    }

    @Override // com.google.android.gms.ads.AdListener
    public final void onAdOpened() {
        this.f.onAdOpened(this.f2748c);
    }

    @Override // com.google.android.gms.ads.admanager.AppEventListener
    public final void onAppEvent(String str, String str2) {
        this.f.zza(this.f2748c, str, str2);
    }
}
