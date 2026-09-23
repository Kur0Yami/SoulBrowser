package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;

/* loaded from: classes.dex */
final class zzbvq implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AdOverlayInfoParcel f4927c;
    public final /* synthetic */ zzbvr f;

    public zzbvq(zzbvr zzbvrVar, AdOverlayInfoParcel adOverlayInfoParcel) {
        this.f4927c = adOverlayInfoParcel;
        this.f = zzbvrVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.google.android.gms.ads.internal.zzt.zzb();
        com.google.android.gms.ads.internal.overlay.zzn.zza(this.f.f4928a, this.f4927c, true, null);
    }
}
