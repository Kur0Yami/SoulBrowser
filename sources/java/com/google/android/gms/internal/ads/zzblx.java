package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzblx extends zzble {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzbly f4758c;

    @Override // com.google.android.gms.internal.ads.zzblf
    public final void T3(zzbks zzbksVar) {
        zzbkt zzbktVar;
        zzbly zzblyVar = this.f4758c;
        com.google.android.gms.ads.formats.zze zzeVar = zzblyVar.f4759a;
        synchronized (zzblyVar) {
            zzbktVar = zzblyVar.f4760c;
            if (zzbktVar == null) {
                zzbktVar = new zzbkt(zzbksVar);
                zzblyVar.f4760c = zzbktVar;
            }
        }
        zzeVar.zzb(zzbktVar);
    }
}
