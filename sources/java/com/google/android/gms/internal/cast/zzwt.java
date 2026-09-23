package com.google.android.gms.internal.cast;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class zzwt {
    public static zzwo a(ExecutorService executorService) {
        if (executorService instanceof zzwo) {
            return (zzwo) executorService;
        }
        if (executorService instanceof ScheduledExecutorService) {
            return new zzws((ScheduledExecutorService) executorService);
        }
        return new zzwp(executorService);
    }
}
