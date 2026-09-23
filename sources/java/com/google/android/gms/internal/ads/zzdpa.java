package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzdpa implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijp f5983a;
    public final zzdmn b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijf f5984c;
    public final zzdmm d;

    public zzdpa(zzijf zzijfVar, zzdmn zzdmnVar, zzijf zzijfVar2, zzdmm zzdmmVar) {
        this.f5983a = zzijfVar;
        this.b = zzdmnVar;
        this.f5984c = zzijfVar2;
        this.d = zzdmmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        zzdua zzduaVar = (zzdua) this.f5983a.zzb();
        zzdsp zzdspVar = this.b.f5913a.b;
        zzijo.a(zzdspVar);
        zzcsh zzcshVar = (zzcsh) this.f5984c.zzb();
        zzdmg zzdmgVar = (zzdmg) this.d.f5912a.zzb();
        zzijo.a(zzdmgVar);
        return new zzdoz(zzduaVar, zzdspVar, zzcshVar, zzdmgVar);
    }
}
