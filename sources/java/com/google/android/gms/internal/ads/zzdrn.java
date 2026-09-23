package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzdrn implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijp f6069a;
    public final zzijf b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijf f6070c;
    public final zzijf d;
    public final zzijf e;

    public zzdrn(zzijf zzijfVar, zzijf zzijfVar2, zzijf zzijfVar3, zzijf zzijfVar4, zzijf zzijfVar5) {
        this.f6069a = zzijfVar;
        this.b = zzijfVar2;
        this.f6070c = zzijfVar3;
        this.d = zzijfVar4;
        this.e = zzijfVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzdrf((Executor) this.f6069a.zzb(), (zzcsh) this.b.zzb(), (zzdil) this.f6070c.zzb(), (zzcra) this.d.zzb(), (zzcze) this.e.zzb());
    }
}
