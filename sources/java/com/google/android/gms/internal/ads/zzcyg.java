package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzcyg implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijf f5589a;
    public final zzijp b;

    public zzcyg(zzijf zzijfVar, zzijf zzijfVar2) {
        this.f5589a = zzijfVar;
        this.b = zzijfVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzdij((zzdfb) this.f5589a.zzb(), (Executor) this.b.zzb());
    }
}
