package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzcym implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijf f5595a;
    public final zzijp b;

    public zzcym(zzijf zzijfVar, zzijf zzijfVar2) {
        this.f5595a = zzijfVar;
        this.b = zzijfVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzdij((zzdfb) this.f5595a.zzb(), (Executor) this.b.zzb());
    }
}
