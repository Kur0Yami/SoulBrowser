package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class zzfbz implements zzezx {

    /* renamed from: a, reason: collision with root package name */
    public final ScheduledExecutorService f7207a;

    public zzfbz(ScheduledExecutorService scheduledExecutorService) {
        this.f7207a = scheduledExecutorService;
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final ListenableFuture zza() {
        return zzgym.i(zzgym.g(zzgym.a(new Bundle()), ((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.b5)).longValue(), TimeUnit.MILLISECONDS, this.f7207a), zzfby.f7206a, zzcdo.f5068a);
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final int zzb() {
        return 49;
    }
}
