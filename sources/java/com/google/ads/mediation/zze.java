package com.google.ads.mediation;

import androidx.annotation.VisibleForTesting;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.formats.UnifiedNativeAd;
import com.google.android.gms.ads.formats.zzg;
import com.google.android.gms.ads.mediation.MediationNativeListener;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
import com.google.android.gms.internal.ads.zzbkt;

@VisibleForTesting
/* loaded from: classes.dex */
final class zze extends AdListener implements zzg, com.google.android.gms.ads.formats.zze, com.google.android.gms.ads.formats.zzd {

    /* renamed from: c, reason: collision with root package name */
    public final AbstractAdViewAdapter f2751c;
    public final MediationNativeListener f;

    public zze(AbstractAdViewAdapter abstractAdViewAdapter, MediationNativeListener mediationNativeListener) {
        this.f2751c = abstractAdViewAdapter;
        this.f = mediationNativeListener;
    }

    @Override // com.google.android.gms.ads.AdListener, com.google.android.gms.ads.internal.client.zza
    public final void onAdClicked() {
        this.f.onAdClicked(this.f2751c);
    }

    @Override // com.google.android.gms.ads.AdListener
    public final void onAdClosed() {
        this.f.onAdClosed(this.f2751c);
    }

    @Override // com.google.android.gms.ads.AdListener
    public final void onAdFailedToLoad(LoadAdError loadAdError) {
        this.f.onAdFailedToLoad(this.f2751c, loadAdError);
    }

    @Override // com.google.android.gms.ads.AdListener
    public final void onAdImpression() {
        this.f.onAdImpression(this.f2751c);
    }

    @Override // com.google.android.gms.ads.AdListener
    public final void onAdLoaded() {
    }

    @Override // com.google.android.gms.ads.AdListener
    public final void onAdOpened() {
        this.f.onAdOpened(this.f2751c);
    }

    @Override // com.google.android.gms.ads.formats.zzg
    public final void zza(UnifiedNativeAd unifiedNativeAd) {
        UnifiedNativeAdMapper unifiedNativeAdMapper = new UnifiedNativeAdMapper();
        unifiedNativeAdMapper.setHeadline(unifiedNativeAd.zza());
        unifiedNativeAdMapper.setImages(unifiedNativeAd.zzb());
        unifiedNativeAdMapper.setBody(unifiedNativeAd.zzc());
        unifiedNativeAdMapper.setIcon(unifiedNativeAd.zzd());
        unifiedNativeAdMapper.setCallToAction(unifiedNativeAd.zze());
        unifiedNativeAdMapper.setAdvertiser(unifiedNativeAd.zzf());
        unifiedNativeAdMapper.setStarRating(unifiedNativeAd.zzg());
        unifiedNativeAdMapper.setStore(unifiedNativeAd.zzh());
        unifiedNativeAdMapper.setPrice(unifiedNativeAd.zzi());
        unifiedNativeAdMapper.zzb(unifiedNativeAd.zzk());
        unifiedNativeAdMapper.setOverrideImpressionRecording(true);
        unifiedNativeAdMapper.setOverrideClickHandling(true);
        unifiedNativeAdMapper.zza(unifiedNativeAd.zzj());
        this.f.onAdLoaded(this.f2751c, unifiedNativeAdMapper);
    }

    @Override // com.google.android.gms.ads.formats.zze
    public final void zzb(zzbkt zzbktVar) {
        this.f.zzc(this.f2751c, zzbktVar);
    }

    @Override // com.google.android.gms.ads.formats.zzd
    public final void zzc(zzbkt zzbktVar, String str) {
        this.f.zzd(this.f2751c, zzbktVar, str);
    }
}
