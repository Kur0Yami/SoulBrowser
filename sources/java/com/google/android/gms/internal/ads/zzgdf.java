package com.google.android.gms.internal.ads;

import java.util.concurrent.ExecutorService;

/* loaded from: classes.dex */
public final class zzgdf implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijh f7843a;
    public final zzijf b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijf f7844c;
    public final zzijh d;
    public final zzijf e;

    public zzgdf(zzijf zzijfVar, zzijf zzijfVar2, zzijf zzijfVar3, zzijh zzijhVar, zzijh zzijhVar2) {
        this.f7843a = zzijhVar;
        this.b = zzijfVar;
        this.f7844c = zzijfVar2;
        this.d = zzijhVar2;
        this.e = zzijfVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        return new zzgde((zzgad) this.f7843a.f9006a, (zzgda) this.b.zzb(), (zzgcu) this.f7844c.zzb(), (ExecutorService) this.d.f9006a, (zzgnc) this.e.zzb());
    }
}
