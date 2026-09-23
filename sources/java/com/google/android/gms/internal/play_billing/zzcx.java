package com.google.android.gms.internal.play_billing;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class zzcx extends zzcz {
    public static zzdc a(Object obj) {
        return new zzda(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.android.gms.internal.play_billing.zzdh, java.lang.Object, com.google.android.gms.internal.play_billing.zzdc] */
    /* JADX WARN: Type inference failed for: r2v0, types: [com.google.android.gms.internal.play_billing.zzde, java.lang.Object, java.lang.Runnable] */
    public static zzdc b(zzdc zzdcVar, ScheduledExecutorService scheduledExecutorService) {
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        if (zzdcVar.isDone()) {
            return zzdcVar;
        }
        ?? obj = new Object();
        obj.l = zzdcVar;
        ?? obj2 = new Object();
        obj2.f11482c = obj;
        obj.m = scheduledExecutorService.schedule((Runnable) obj2, 28500L, timeUnit);
        zzdcVar.b0(obj2, zzcs.f11477c);
        return obj;
    }

    public static void c(zzdc zzdcVar, zzcv zzcvVar, ExecutorService executorService) {
        zzdcVar.b0(new zzcw(zzdcVar, zzcvVar), executorService);
    }
}
