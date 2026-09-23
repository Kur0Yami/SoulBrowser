package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class zzesd implements zzezx {

    /* renamed from: a, reason: collision with root package name */
    public final ListenableFuture f6876a;
    public final Executor b;

    /* renamed from: c, reason: collision with root package name */
    public final ScheduledExecutorService f6877c;

    public zzesd(ListenableFuture listenableFuture, Executor executor, ScheduledExecutorService scheduledExecutorService) {
        this.f6876a = listenableFuture;
        this.b = executor;
        this.f6877c = scheduledExecutorService;
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final ListenableFuture zza() {
        ListenableFuture listenableFuture = this.f6876a;
        zzesc zzescVar = zzesc.f6875a;
        Executor executor = this.b;
        ListenableFuture h = zzgym.h(listenableFuture, zzescVar, executor);
        if (((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Qd)).intValue() > 0) {
            h = zzgym.g(h, ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(r1)).intValue(), TimeUnit.MILLISECONDS, this.f6877c);
        }
        return zzgym.f(h, Throwable.class, zzesb.f6874a, executor);
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final int zzb() {
        return 6;
    }
}
