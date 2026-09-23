package com.google.android.gms.internal.ads;

import java.util.concurrent.ExecutorService;

/* loaded from: classes.dex */
public final class zzgdm implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijp f7849a;
    public final zzijf b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijp f7850c;
    public final zzijp d;
    public final zzijf e;
    public final zzijp f;
    public final zzijp g;

    public zzgdm(zzijh zzijhVar, zzijf zzijfVar, zzijf zzijfVar2, zzijf zzijfVar3, zzijf zzijfVar4, zzijp zzijpVar, zzijh zzijhVar2) {
        this.f7849a = zzijhVar;
        this.b = zzijfVar;
        this.f7850c = zzijfVar2;
        this.d = zzijfVar3;
        this.e = zzijfVar4;
        this.f = zzijpVar;
        this.g = zzijhVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzgdj((ExecutorService) this.f7849a.zzb(), zzijf.b(this.b), zzijf.b(this.f7850c), (zzglx) this.d.zzb(), zzijf.b(this.e), this.f, (zzgad) this.g.zzb());
    }
}
