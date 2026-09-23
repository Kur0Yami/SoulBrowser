package com.google.android.gms.internal.ads;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class zzflg implements zzijg {
    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        ExecutorService a2 = ((zzfxj) zzfxk.b).a(1, Executors.defaultThreadFactory());
        if (a2 instanceof zzgyw) {
            return (zzgyw) a2;
        }
        if (a2 instanceof ScheduledExecutorService) {
            return new zzgzc((ScheduledExecutorService) a2);
        }
        return new zzgyy(a2);
    }
}
