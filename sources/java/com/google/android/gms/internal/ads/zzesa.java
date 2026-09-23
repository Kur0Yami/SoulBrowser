package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzesa implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzdab f6872a;
    public final zzijp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijf f6873c;

    public zzesa(zzdab zzdabVar, zzijf zzijfVar, zzijf zzijfVar2) {
        this.f6872a = zzdabVar;
        this.b = zzijfVar;
        this.f6873c = zzijfVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final zzery zzb() {
        zzgyw zzgywVar = zzcdo.f5068a;
        zzijo.a(zzgywVar);
        zzfik a2 = this.f6872a.a();
        return new zzery(zzgywVar, a2, ((Integer) this.f6873c.zzb()).intValue());
    }
}
