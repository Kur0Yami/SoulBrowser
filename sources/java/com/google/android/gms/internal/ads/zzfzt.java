package com.google.android.gms.internal.ads;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class zzfzt implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijh f7753a;

    public zzfzt(zzijh zzijhVar) {
        this.f7753a = zzijhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        ExecutorService executorService = (ExecutorService) this.f7753a.f9006a;
        if (executorService instanceof zzgyw) {
            return (zzgyw) executorService;
        }
        if (executorService instanceof ScheduledExecutorService) {
            return new zzgzc((ScheduledExecutorService) executorService);
        }
        return new zzgyy(executorService);
    }
}
