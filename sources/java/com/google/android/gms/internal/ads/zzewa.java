package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class zzewa implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzexd f7009a;
    public final zzijp b;

    public zzewa(zzexd zzexdVar, zzijf zzijfVar) {
        this.f7009a = zzexdVar;
        this.b = zzijfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        zzgyw zzgywVar = zzcdo.f5068a;
        zzijo.a(zzgywVar);
        return new zzeyj(new zzexb(zzgywVar, this.f7009a.f7045a.a()), ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Rd)).intValue(), (ScheduledExecutorService) this.b.zzb());
    }
}
