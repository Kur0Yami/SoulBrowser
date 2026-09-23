package com.google.android.gms.ads.internal.client;

import com.google.android.gms.ads.AdListener;

/* loaded from: classes.dex */
public final class zzg extends zzbj {

    /* renamed from: c, reason: collision with root package name */
    public final AdListener f3044c;

    public zzg(AdListener adListener) {
        this.f3044c = adListener;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbk
    public final void zzb() {
        AdListener adListener = this.f3044c;
        if (adListener != null) {
            adListener.onAdClosed();
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbk
    public final void zzc(int i) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbk
    public final void zzd(zze zzeVar) {
        AdListener adListener = this.f3044c;
        if (adListener != null) {
            adListener.onAdFailedToLoad(zzeVar.zzb());
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbk
    public final void zze() {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbk
    public final void zzf() {
        AdListener adListener = this.f3044c;
        if (adListener != null) {
            adListener.onAdLoaded();
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbk
    public final void zzg() {
        AdListener adListener = this.f3044c;
        if (adListener != null) {
            adListener.onAdOpened();
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbk
    public final void zzh() {
        AdListener adListener = this.f3044c;
        if (adListener != null) {
            adListener.onAdClicked();
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbk
    public final void zzi() {
        AdListener adListener = this.f3044c;
        if (adListener != null) {
            adListener.onAdSwipeGestureClicked();
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbk
    public final void zzj() {
        AdListener adListener = this.f3044c;
        if (adListener != null) {
            adListener.onAdImpression();
        }
    }

    public final AdListener zzk() {
        return this.f3044c;
    }
}
