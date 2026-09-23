package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzdpy implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzdta f6011a;
    public final zzijp b;

    public zzdpy(zzdta zzdtaVar, zzijf zzijfVar) {
        this.f6011a = zzdtaVar;
        this.b = zzijfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        return new zzdij(new zzdsz(this.f6011a.f6122a.a()), (Executor) this.b.zzb());
    }
}
