package com.google.android.gms.internal.ads;

import java.util.concurrent.ExecutorService;

/* loaded from: classes.dex */
public final class zzgip implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijf f7996a;
    public final zzijf b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijf f7997c;
    public final zzijp d;
    public final zzijp e;

    public zzgip(zzijf zzijfVar, zzijf zzijfVar2, zzijf zzijfVar3, zzijf zzijfVar4, zzijh zzijhVar) {
        this.f7996a = zzijfVar;
        this.b = zzijfVar2;
        this.f7997c = zzijfVar3;
        this.d = zzijfVar4;
        this.e = zzijhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzgio((zzfvy) this.f7996a.zzb(), (zzgjw) this.b.zzb(), (zzgls) this.f7997c.zzb(), (zzgnc) this.d.zzb(), (ExecutorService) this.e.zzb());
    }
}
