package com.google.android.gms.internal.ads;

import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;

/* loaded from: classes.dex */
public final class zzflr implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijf f7461a;

    public zzflr(zzijf zzijfVar) {
        this.f7461a = zzijfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final /* bridge */ /* synthetic */ Object zzb() {
        ScheduledExecutorService unconfigurableScheduledExecutorService = Executors.unconfigurableScheduledExecutorService(Executors.newScheduledThreadPool(1, (ThreadFactory) this.f7461a.zzb()));
        zzijo.a(unconfigurableScheduledExecutorService);
        return unconfigurableScheduledExecutorService;
    }
}
