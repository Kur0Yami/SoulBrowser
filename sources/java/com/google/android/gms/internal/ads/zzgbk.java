package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzgbk implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijf f7799a;
    public final zzijf b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijh f7800c;

    public zzgbk(zzijf zzijfVar, zzijf zzijfVar2, zzijh zzijhVar) {
        this.f7799a = zzijfVar;
        this.b = zzijfVar2;
        this.f7800c = zzijhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        zzgbj zzgbjVar;
        zzija b = zzijf.b(this.f7799a);
        zzija b2 = zzijf.b(this.b);
        if (((zzgad) this.f7800c.f9006a).a0()) {
            zzgbjVar = (zzgbj) b.zzb();
        } else {
            zzgbjVar = (zzgbj) b2.zzb();
        }
        zzijo.a(zzgbjVar);
        return zzgbjVar;
    }
}
