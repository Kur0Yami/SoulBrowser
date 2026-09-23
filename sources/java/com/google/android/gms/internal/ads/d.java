package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import android.os.Build;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public abstract /* synthetic */ class d {
    public static /* synthetic */ MediaCodec.CryptoInfo.Pattern a() {
        return new MediaCodec.CryptoInfo.Pattern(0, 0);
    }

    public static /* synthetic */ void b(zzgxi zzgxiVar) {
        boolean isTerminated;
        if ((Build.VERSION.SDK_INT <= 23 || zzgxiVar != ForkJoinPool.commonPool()) && !(isTerminated = zzgxiVar.isTerminated())) {
            zzgxiVar.shutdown();
            boolean z = false;
            while (!isTerminated) {
                try {
                    isTerminated = zzgxiVar.awaitTermination(1L, TimeUnit.DAYS);
                } catch (InterruptedException unused) {
                    if (!z) {
                        zzgxiVar.shutdownNow();
                        z = true;
                    }
                }
            }
            if (z) {
                Thread.currentThread().interrupt();
            }
        }
    }

    public static void c(ExecutorService executorService) {
        if (Build.VERSION.SDK_INT <= 23 || executorService != ForkJoinPool.commonPool()) {
            zzgyy zzgyyVar = (zzgyy) executorService;
            boolean isTerminated = zzgyyVar.f8310c.isTerminated();
            if (!isTerminated) {
                zzgyyVar.shutdown();
                boolean z = false;
                while (!isTerminated) {
                    try {
                        isTerminated = ((zzgyy) executorService).f8310c.awaitTermination(1L, TimeUnit.DAYS);
                    } catch (InterruptedException unused) {
                        if (!z) {
                            zzgyyVar.shutdownNow();
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

    public static /* synthetic */ void d(ExecutorService executorService) {
        ThreadPoolExecutor threadPoolExecutor;
        boolean isTerminated;
        if ((Build.VERSION.SDK_INT <= 23 || executorService != ForkJoinPool.commonPool()) && !(isTerminated = (threadPoolExecutor = (ThreadPoolExecutor) executorService).isTerminated())) {
            ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = (ScheduledThreadPoolExecutor) executorService;
            scheduledThreadPoolExecutor.shutdown();
            boolean z = false;
            while (!isTerminated) {
                try {
                    isTerminated = threadPoolExecutor.awaitTermination(1L, TimeUnit.DAYS);
                } catch (InterruptedException unused) {
                    if (!z) {
                        scheduledThreadPoolExecutor.shutdownNow();
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
