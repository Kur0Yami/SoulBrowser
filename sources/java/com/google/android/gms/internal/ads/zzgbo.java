package com.google.android.gms.internal.ads;

import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class zzgbo implements zzgbj {

    /* renamed from: a, reason: collision with root package name */
    public final ScheduledExecutorService f7804a = Executors.newSingleThreadScheduledExecutor();

    @Override // com.google.android.gms.internal.ads.zzgbj
    public final void a(Runnable runnable, long j) {
        this.f7804a.schedule(runnable, j, TimeUnit.MILLISECONDS);
    }

    @Override // com.google.android.gms.internal.ads.zzgbj
    public final void zzb() {
    }
}
