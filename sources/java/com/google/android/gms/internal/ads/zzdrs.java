package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzdrs implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzije f6075a;
    public final zzdoe b;

    public zzdrs(zzije zzijeVar, zzdoe zzdoeVar) {
        this.f6075a = zzijeVar;
        this.b = zzdoeVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [com.google.android.gms.internal.ads.zzbcc, com.google.android.gms.internal.ads.zzdrr, java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        zzdnh zzdnhVar = (zzdnh) this.f6075a.zzb();
        zzdnm a2 = this.b.a();
        ?? zzbccVar = new zzbcc("com.google.android.gms.ads.internal.instream.client.IInstreamAd");
        zzbccVar.f6074c = a2.i();
        zzbccVar.f = a2.U();
        zzbccVar.g = zzdnhVar;
        zzbccVar.h = false;
        zzbccVar.i = false;
        if (a2.p() != null) {
            a2.p().z(zzbccVar);
        }
        return zzbccVar;
    }
}
