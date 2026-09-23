package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzblw extends zzblb {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzbly f4757c;

    @Override // com.google.android.gms.internal.ads.zzblc
    public final void F0(zzbks zzbksVar, String str) {
        zzbkt zzbktVar;
        zzbly zzblyVar = this.f4757c;
        if (zzblyVar.b == null) {
            return;
        }
        synchronized (zzblyVar) {
            zzbktVar = zzblyVar.f4760c;
            if (zzbktVar == null) {
                zzbktVar = new zzbkt(zzbksVar);
                zzblyVar.f4760c = zzbktVar;
            }
        }
        zzblyVar.b.zzc(zzbktVar, str);
    }
}
