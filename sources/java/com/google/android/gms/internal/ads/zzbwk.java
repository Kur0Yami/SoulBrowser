package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.nativead.NativeCustomFormatAd;

/* loaded from: classes.dex */
final class zzbwk extends zzble {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzbwl f4949c;

    @Override // com.google.android.gms.internal.ads.zzblf
    public final void T3(zzbks zzbksVar) {
        zzbwm zzbwmVar;
        zzbwl zzbwlVar = this.f4949c;
        NativeCustomFormatAd.OnCustomFormatAdLoadedListener onCustomFormatAdLoadedListener = zzbwlVar.f4950a;
        synchronized (zzbwlVar) {
            zzbwmVar = zzbwlVar.f4951c;
            if (zzbwmVar == null) {
                zzbwmVar = new zzbwm(zzbksVar);
                zzbwlVar.f4951c = zzbwmVar;
            }
        }
        onCustomFormatAdLoadedListener.onCustomFormatAdLoaded(zzbwmVar);
    }
}
