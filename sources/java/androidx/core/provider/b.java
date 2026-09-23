package androidx.core.provider;

import android.os.Build;
import com.bumptech.glide.load.engine.executor.GlideExecutor;
import com.google.android.gms.internal.mlkit_common.zzav;
import com.google.common.util.concurrent.AbstractListeningExecutorService;
import com.google.common.util.concurrent.ForwardingExecutorService;
import com.google.common.util.concurrent.ForwardingListeningExecutorService;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public abstract /* synthetic */ class b {
    public static /* synthetic */ void a(GlideExecutor glideExecutor) {
        boolean isTerminated;
        if ((Build.VERSION.SDK_INT <= 23 || glideExecutor != ForkJoinPool.commonPool()) && !(isTerminated = glideExecutor.isTerminated())) {
            glideExecutor.shutdown();
            boolean z = false;
            while (!isTerminated) {
                try {
                    isTerminated = glideExecutor.awaitTermination(1L, TimeUnit.DAYS);
                } catch (InterruptedException unused) {
                    if (!z) {
                        glideExecutor.shutdownNow();
                        z = true;
                    }
                }
            }
            if (z) {
                Thread.currentThread().interrupt();
            }
        }
    }

    public static /* synthetic */ void b(zzav zzavVar) {
        boolean isTerminated;
        if ((Build.VERSION.SDK_INT <= 23 || zzavVar != ForkJoinPool.commonPool()) && !(isTerminated = zzavVar.isTerminated())) {
            zzavVar.shutdown();
            boolean z = false;
            while (!isTerminated) {
                try {
                    isTerminated = zzavVar.awaitTermination(1L, TimeUnit.DAYS);
                } catch (InterruptedException unused) {
                    if (!z) {
                        zzavVar.shutdownNow();
                        z = true;
                    }
                }
            }
            if (z) {
                Thread.currentThread().interrupt();
            }
        }
    }

    public static /* synthetic */ void c(AbstractListeningExecutorService abstractListeningExecutorService) {
        boolean isTerminated;
        if ((Build.VERSION.SDK_INT <= 23 || abstractListeningExecutorService != ForkJoinPool.commonPool()) && !(isTerminated = abstractListeningExecutorService.isTerminated())) {
            abstractListeningExecutorService.shutdown();
            boolean z = false;
            while (!isTerminated) {
                try {
                    isTerminated = abstractListeningExecutorService.awaitTermination(1L, TimeUnit.DAYS);
                } catch (InterruptedException unused) {
                    if (!z) {
                        abstractListeningExecutorService.shutdownNow();
                        z = true;
                    }
                }
            }
            if (z) {
                Thread.currentThread().interrupt();
            }
        }
    }

    public static /* synthetic */ void d(ForwardingExecutorService forwardingExecutorService) {
        boolean isTerminated;
        if ((Build.VERSION.SDK_INT <= 23 || forwardingExecutorService != ForkJoinPool.commonPool()) && !(isTerminated = forwardingExecutorService.isTerminated())) {
            forwardingExecutorService.shutdown();
            boolean z = false;
            while (!isTerminated) {
                try {
                    isTerminated = forwardingExecutorService.awaitTermination(1L, TimeUnit.DAYS);
                } catch (InterruptedException unused) {
                    if (!z) {
                        forwardingExecutorService.shutdownNow();
                        z = true;
                    }
                }
            }
            if (z) {
                Thread.currentThread().interrupt();
            }
        }
    }

    public static /* synthetic */ void e(ForwardingListeningExecutorService forwardingListeningExecutorService) {
        boolean isTerminated;
        if ((Build.VERSION.SDK_INT <= 23 || forwardingListeningExecutorService != ForkJoinPool.commonPool()) && !(isTerminated = forwardingListeningExecutorService.isTerminated())) {
            forwardingListeningExecutorService.shutdown();
            boolean z = false;
            while (!isTerminated) {
                try {
                    isTerminated = forwardingListeningExecutorService.awaitTermination(1L, TimeUnit.DAYS);
                } catch (InterruptedException unused) {
                    if (!z) {
                        forwardingListeningExecutorService.shutdownNow();
                        z = true;
                    }
                }
            }
            if (z) {
                Thread.currentThread().interrupt();
            }
        }
    }

    public static /* synthetic */ void f(ExecutorService executorService) {
        boolean isTerminated;
        if ((Build.VERSION.SDK_INT <= 23 || executorService != ForkJoinPool.commonPool()) && !(isTerminated = executorService.isTerminated())) {
            executorService.shutdown();
            boolean z = false;
            while (!isTerminated) {
                try {
                    isTerminated = executorService.awaitTermination(1L, TimeUnit.DAYS);
                } catch (InterruptedException unused) {
                    if (!z) {
                        executorService.shutdownNow();
                        z = true;
                    }
                }
            }
            if (z) {
                Thread.currentThread().interrupt();
            }
        }
    }

    public static void g(ExecutorService executorService) {
        if (Build.VERSION.SDK_INT > 23 && executorService == ForkJoinPool.commonPool()) {
        } else {
            throw null;
        }
    }
}
