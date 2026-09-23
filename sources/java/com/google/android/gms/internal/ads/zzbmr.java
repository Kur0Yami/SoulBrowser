package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzbmr implements zzgyj {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzcir f4769a;

    public zzbmr(zzcir zzcirVar) {
        this.f4769a = zzcirVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final /* bridge */ /* synthetic */ void a(Object obj) {
        com.google.android.gms.ads.internal.util.client.zzv zzvVar;
        String str = (String) obj;
        zzcir zzcirVar = this.f4769a;
        if (zzcirVar.zzC() != null) {
            zzvVar = zzcirVar.zzC().x0;
        } else {
            zzvVar = null;
        }
        new com.google.android.gms.ads.internal.util.zzbt(zzcirVar.getContext(), zzcirVar.zzs().afmaVersion, str, null, zzvVar).zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final void b(Throwable th) {
        com.google.android.gms.ads.internal.zzt.zzh().f("DefaultGmsgHandlers.attributionReportingManager", th);
    }
}
