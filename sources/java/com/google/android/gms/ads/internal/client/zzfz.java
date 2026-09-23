package com.google.android.gms.ads.internal.client;

import com.google.android.gms.ads.VideoController;

/* loaded from: classes.dex */
public final class zzfz extends zzef {

    /* renamed from: c, reason: collision with root package name */
    public final VideoController.VideoLifecycleCallbacks f3043c;

    public zzfz(VideoController.VideoLifecycleCallbacks videoLifecycleCallbacks) {
        this.f3043c = videoLifecycleCallbacks;
    }

    @Override // com.google.android.gms.ads.internal.client.zzeg
    public final void zze() {
        this.f3043c.onVideoStart();
    }

    @Override // com.google.android.gms.ads.internal.client.zzeg
    public final void zzf() {
        this.f3043c.onVideoPlay();
    }

    @Override // com.google.android.gms.ads.internal.client.zzeg
    public final void zzg() {
        this.f3043c.onVideoPause();
    }

    @Override // com.google.android.gms.ads.internal.client.zzeg
    public final void zzh() {
        this.f3043c.onVideoEnd();
    }

    @Override // com.google.android.gms.ads.internal.client.zzeg
    public final void zzi(boolean z) {
        this.f3043c.onVideoMute(z);
    }
}
