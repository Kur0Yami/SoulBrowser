package com.google.android.gms.internal.ads;

import java.util.concurrent.ExecutorService;

/* loaded from: classes.dex */
public final class zzgdb implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijf f7837a;
    public final zzijf b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijf f7838c;
    public final zzijh d;
    public final zzijf e;

    public zzgdb(zzijf zzijfVar, zzijf zzijfVar2, zzijf zzijfVar3, zzijf zzijfVar4, zzijh zzijhVar) {
        this.f7837a = zzijfVar;
        this.b = zzijfVar2;
        this.f7838c = zzijfVar3;
        this.d = zzijhVar;
        this.e = zzijfVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        return new zzgda(zzijf.b(this.f7837a), zzijf.b(this.b), zzijf.b(this.f7838c), (ExecutorService) this.d.f9006a, (zzgnc) this.e.zzb());
    }
}
