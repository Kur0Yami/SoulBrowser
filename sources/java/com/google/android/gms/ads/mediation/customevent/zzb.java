package com.google.android.gms.ads.mediation.customevent;

import androidx.annotation.VisibleForTesting;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;

@VisibleForTesting
/* loaded from: classes.dex */
final class zzb implements CustomEventInterstitialListener {

    /* renamed from: a, reason: collision with root package name */
    public final CustomEventAdapter f3195a;
    public final MediationInterstitialListener b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CustomEventAdapter f3196c;

    public zzb(CustomEventAdapter customEventAdapter, CustomEventAdapter customEventAdapter2, MediationInterstitialListener mediationInterstitialListener) {
        this.f3196c = customEventAdapter;
        this.f3195a = customEventAdapter2;
        this.b = mediationInterstitialListener;
    }

    @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
    public final void onAdClicked() {
        zzo.zzd("Custom event adapter called onAdClicked.");
        this.b.onAdClicked(this.f3195a);
    }

    @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
    public final void onAdClosed() {
        zzo.zzd("Custom event adapter called onAdClosed.");
        this.b.onAdClosed(this.f3195a);
    }

    @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
    public final void onAdFailedToLoad(int i) {
        zzo.zzd("Custom event adapter called onFailedToReceiveAd.");
        this.b.onAdFailedToLoad(this.f3195a, i);
    }

    @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
    public final void onAdLeftApplication() {
        zzo.zzd("Custom event adapter called onAdLeftApplication.");
        this.b.onAdLeftApplication(this.f3195a);
    }

    @Override // com.google.android.gms.ads.mediation.customevent.CustomEventInterstitialListener
    public final void onAdLoaded() {
        zzo.zzd("Custom event adapter called onReceivedAd.");
        this.b.onAdLoaded(this.f3196c);
    }

    @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
    public final void onAdOpened() {
        zzo.zzd("Custom event adapter called onAdOpened.");
        this.b.onAdOpened(this.f3195a);
    }

    @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
    public final void onAdFailedToLoad(AdError adError) {
        zzo.zzd("Custom event adapter called onFailedToReceiveAd.");
        this.b.onAdFailedToLoad(this.f3195a, adError);
    }
}
