package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class zzesf implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijf f6879a;
    public final zzijp b;

    public zzesf(zzijf zzijfVar, zzijp zzijpVar) {
        this.f6879a = zzijfVar;
        this.b = zzijpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        ListenableFuture listenableFuture = (ListenableFuture) this.f6879a.zzb();
        zzgyw zzgywVar = zzcdo.f5068a;
        zzijo.a(zzgywVar);
        return new zzesd(listenableFuture, zzgywVar, (ScheduledExecutorService) this.b.zzb());
    }
}
