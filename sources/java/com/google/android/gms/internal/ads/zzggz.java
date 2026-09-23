package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzggz implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijf f7944a;
    public final zzijf b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijf f7945c;
    public final zzijp d;

    public zzggz(zzijf zzijfVar, zzijf zzijfVar2, zzijf zzijfVar3, zzijh zzijhVar) {
        this.f7944a = zzijfVar;
        this.b = zzijfVar2;
        this.f7945c = zzijfVar3;
        this.d = zzijhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzija b = zzijf.b(this.f7944a);
        zzija b2 = zzijf.b(this.b);
        zzija b3 = zzijf.b(this.f7945c);
        zzgad zzgadVar = (zzgad) this.d.zzb();
        return new zzggy(b, b2, b3, zzgadVar.P().D(), zzgadVar.P().G());
    }
}
