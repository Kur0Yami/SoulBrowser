package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.FullScreenContentCallback;

/* loaded from: classes.dex */
public final class zzbea extends zzbej {

    /* renamed from: c, reason: collision with root package name */
    public FullScreenContentCallback f4589c;

    public zzbea() {
        super("com.google.android.gms.ads.internal.appopen.client.IAppOpenFullScreenContentCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzbek
    public final void zzc() {
        FullScreenContentCallback fullScreenContentCallback = this.f4589c;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdShowedFullScreenContent();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbek
    public final void zzd() {
        FullScreenContentCallback fullScreenContentCallback = this.f4589c;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdDismissedFullScreenContent();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbek
    public final void zze(com.google.android.gms.ads.internal.client.zze zzeVar) {
        FullScreenContentCallback fullScreenContentCallback = this.f4589c;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdFailedToShowFullScreenContent(zzeVar.zza());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbek
    public final void zzf() {
        FullScreenContentCallback fullScreenContentCallback = this.f4589c;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdImpression();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbek
    public final void zzg() {
        FullScreenContentCallback fullScreenContentCallback = this.f4589c;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdClicked();
        }
    }
}
