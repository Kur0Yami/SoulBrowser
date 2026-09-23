package com.google.android.gms.internal.ads;

import java.util.concurrent.ExecutorService;

/* loaded from: classes.dex */
public final class zzgce implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijs f7818a;
    public final zzijs b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijh f7819c;
    public final zzijf d;

    public zzgce(zzijs zzijsVar, zzijs zzijsVar2, zzijh zzijhVar, zzijf zzijfVar) {
        this.f7818a = zzijsVar;
        this.b = zzijsVar2;
        this.f7819c = zzijhVar;
        this.d = zzijfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        return new zzgcd(zzijf.b(this.f7818a), zzijf.b(this.b), (ExecutorService) this.f7819c.f9006a, zzijf.b(this.d));
    }
}
