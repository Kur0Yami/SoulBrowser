package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzdpi implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijp f5995a;
    public final zzdmn b;

    public zzdpi(zzdmn zzdmnVar, zzijf zzijfVar) {
        this.f5995a = zzijfVar;
        this.b = zzdmnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        zzdua zzduaVar = (zzdua) this.f5995a.zzb();
        zzdsp zzdspVar = this.b.f5913a.b;
        zzijo.a(zzdspVar);
        return new zzdph(zzduaVar, zzdspVar);
    }
}
