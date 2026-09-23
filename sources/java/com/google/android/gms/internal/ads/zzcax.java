package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.OnUserEarnedRewardListener;

/* loaded from: classes.dex */
public final class zzcax extends zzcah {

    /* renamed from: c, reason: collision with root package name */
    public FullScreenContentCallback f5003c;
    public OnUserEarnedRewardListener f;

    @Override // com.google.android.gms.internal.ads.zzcai
    public final void R(zzcac zzcacVar) {
        OnUserEarnedRewardListener onUserEarnedRewardListener = this.f;
        if (onUserEarnedRewardListener != null) {
            onUserEarnedRewardListener.onUserEarnedReward(new zzcap(zzcacVar));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcai
    public final void c4(com.google.android.gms.ads.internal.client.zze zzeVar) {
        FullScreenContentCallback fullScreenContentCallback = this.f5003c;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdFailedToShowFullScreenContent(zzeVar.zza());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcai
    public final void e(int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzcai
    public final void zze() {
        FullScreenContentCallback fullScreenContentCallback = this.f5003c;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdShowedFullScreenContent();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcai
    public final void zzf() {
        FullScreenContentCallback fullScreenContentCallback = this.f5003c;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdDismissedFullScreenContent();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcai
    public final void zzj() {
        FullScreenContentCallback fullScreenContentCallback = this.f5003c;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdImpression();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcai
    public final void zzk() {
        FullScreenContentCallback fullScreenContentCallback = this.f5003c;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdClicked();
        }
    }
}
