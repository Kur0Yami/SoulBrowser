package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzglu implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijf f8104a;
    public final zzijp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijp f8105c;
    public final zzijp d;

    public zzglu(zzijf zzijfVar, zzijf zzijfVar2, zzijf zzijfVar3, zzijh zzijhVar) {
        this.f8104a = zzijfVar;
        this.b = zzijfVar2;
        this.f8105c = zzijfVar3;
        this.d = zzijhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzija b = zzijf.b(this.f8104a);
        zzgnc zzgncVar = (zzgnc) this.b.zzb();
        return new zzglt(b, zzgncVar, ((zzgad) this.d.zzb()).P().E());
    }
}
