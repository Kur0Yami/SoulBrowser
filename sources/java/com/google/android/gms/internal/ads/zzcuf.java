package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzcuf implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzcua f5479a;
    public final zzijp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzcwb f5480c;

    public zzcuf(zzcua zzcuaVar, zzijf zzijfVar, zzcwb zzcwbVar) {
        this.f5479a = zzcuaVar;
        this.b = zzijfVar;
        this.f5480c = zzcwbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        return new zzcue(this.f5479a.f5474a.d, (zzdxe) this.b.zzb(), this.f5480c.a());
    }
}
