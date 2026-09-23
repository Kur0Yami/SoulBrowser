package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzgkj implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijf f8050a;
    public final zzijf b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijp f8051c;

    public zzgkj(zzijf zzijfVar, zzijf zzijfVar2, zzijh zzijhVar) {
        this.f8050a = zzijfVar;
        this.b = zzijfVar2;
        this.f8051c = zzijhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzija b = zzijf.b(this.f8050a);
        zzija b2 = zzijf.b(this.b);
        if (true == ((zzgad) this.f8051c.zzb()).Z()) {
            b = b2;
        }
        zzgjw zzgjwVar = (zzgjw) b.zzb();
        zzijo.a(zzgjwVar);
        return zzgjwVar;
    }
}
