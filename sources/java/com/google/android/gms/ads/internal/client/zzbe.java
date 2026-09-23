package com.google.android.gms.ads.internal.client;

import androidx.annotation.Nullable;
import com.google.android.gms.ads.FullScreenContentCallback;

/* loaded from: classes.dex */
public final class zzbe extends zzcu {

    /* renamed from: c, reason: collision with root package name */
    public final FullScreenContentCallback f3010c;

    public zzbe(@Nullable FullScreenContentCallback fullScreenContentCallback) {
        this.f3010c = fullScreenContentCallback;
    }

    @Override // com.google.android.gms.ads.internal.client.zzcv
    public final void zzb(zze zzeVar) {
        FullScreenContentCallback fullScreenContentCallback = this.f3010c;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdFailedToShowFullScreenContent(zzeVar.zza());
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzcv
    public final void zzc() {
        FullScreenContentCallback fullScreenContentCallback = this.f3010c;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdShowedFullScreenContent();
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzcv
    public final void zzd() {
        FullScreenContentCallback fullScreenContentCallback = this.f3010c;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdDismissedFullScreenContent();
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzcv
    public final void zze() {
        FullScreenContentCallback fullScreenContentCallback = this.f3010c;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdImpression();
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzcv
    public final void zzf() {
        FullScreenContentCallback fullScreenContentCallback = this.f3010c;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdClicked();
        }
    }
}
