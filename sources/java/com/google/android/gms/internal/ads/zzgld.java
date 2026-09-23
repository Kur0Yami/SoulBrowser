package com.google.android.gms.internal.ads;

import java.util.concurrent.ExecutorService;

/* loaded from: classes.dex */
public final class zzgld implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijf f8082a;
    public final zzijp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijp f8083c;

    public zzgld(zzijf zzijfVar, zzijf zzijfVar2, zzijh zzijhVar) {
        this.f8082a = zzijfVar;
        this.b = zzijhVar;
        this.f8083c = zzijfVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzglc((zzgib) this.f8082a.zzb(), (ExecutorService) this.b.zzb(), (zzgnc) this.f8083c.zzb());
    }
}
