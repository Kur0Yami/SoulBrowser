package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzbwj extends zzblb {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzbwl f4948c;

    @Override // com.google.android.gms.internal.ads.zzblc
    public final void F0(zzbks zzbksVar, String str) {
        zzbwm zzbwmVar;
        zzbwl zzbwlVar = this.f4948c;
        if (zzbwlVar.b == null) {
            return;
        }
        synchronized (zzbwlVar) {
            zzbwmVar = zzbwlVar.f4951c;
            if (zzbwmVar == null) {
                zzbwmVar = new zzbwm(zzbksVar);
                zzbwlVar.f4951c = zzbwmVar;
            }
        }
        zzbwlVar.b.onCustomClick(zzbwmVar, str);
    }
}
