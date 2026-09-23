package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzcvd implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzcvc f5499a;

    public zzcvd(zzcvc zzcvcVar) {
        this.f5499a = zzcvcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        zzdfq zzdfqVar = this.f5499a.b;
        if (zzdfqVar != null) {
            return new zzdij(zzdfqVar, zzcdo.g);
        }
        return new zzdij(new Object(), zzcdo.g);
    }
}
