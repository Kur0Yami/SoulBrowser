package com.google.android.gms.internal.cast;

import android.os.Build;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public abstract /* synthetic */ class a {
    public static /* synthetic */ void a(zzwd zzwdVar) {
        boolean isTerminated;
        if ((Build.VERSION.SDK_INT <= 23 || zzwdVar != ForkJoinPool.commonPool()) && !(isTerminated = zzwdVar.isTerminated())) {
            zzwdVar.shutdown();
            boolean z = false;
            while (!isTerminated) {
                try {
                    isTerminated = zzwdVar.awaitTermination(1L, TimeUnit.DAYS);
                } catch (InterruptedException unused) {
                    if (!z) {
                        zzwdVar.shutdownNow();
                        z = true;
                    }
                }
            }
            if (z) {
                Thread.currentThread().interrupt();
            }
        }
    }

    public static void b(ExecutorService executorService) {
        if (Build.VERSION.SDK_INT <= 23 || executorService != ForkJoinPool.commonPool()) {
            zzwp zzwpVar = (zzwp) executorService;
            boolean isTerminated = zzwpVar.f9864c.isTerminated();
            if (!isTerminated) {
                zzwpVar.shutdown();
                boolean z = false;
                while (!isTerminated) {
                    try {
                        isTerminated = ((zzwp) executorService).f9864c.awaitTermination(1L, TimeUnit.DAYS);
                    } catch (InterruptedException unused) {
                        if (!z) {
                            zzwpVar.shutdownNow();
                            z = true;
                        }
                    }
                }
                if (z) {
                    Thread.currentThread().interrupt();
                }
            }
        }
    }
}
