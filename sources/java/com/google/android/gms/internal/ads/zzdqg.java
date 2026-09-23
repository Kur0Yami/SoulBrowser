package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzdqg implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzdqv f6025a;
    public final zzdra b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijf f6026c;

    public zzdqg(zzdqv zzdqvVar, zzdra zzdraVar, zzijf zzijfVar) {
        this.f6025a = zzdqvVar;
        this.b = zzdraVar;
        this.f6026c = zzijfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final zzdqf zzb() {
        zzgyw zzgywVar = zzcdo.f5068a;
        zzijo.a(zzgywVar);
        zzdqu zzb = this.f6025a.zzb();
        zzijo.a(zzgywVar);
        zzdra zzdraVar = this.b;
        return new zzdqf(zzgywVar, zzb, new zzdqz(zzgywVar, zzdraVar.f6052a.zzb(), (zzdwy) zzdraVar.b.zzb()), (zzdwy) this.f6026c.zzb());
    }
}
