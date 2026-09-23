package com.google.mlkit.common.sdkinternal;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.CancellationToken;
import com.google.android.gms.tasks.CancellationTokenSource;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.mlkit.common.MlKitException;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

@KeepForSdk
/* loaded from: classes3.dex */
public abstract class ModelResource {

    /* renamed from: a, reason: collision with root package name */
    public final TaskQueue f12774a;
    public final AtomicInteger b = new AtomicInteger(0);

    /* renamed from: c, reason: collision with root package name */
    public final AtomicBoolean f12775c = new AtomicBoolean(false);

    public ModelResource(TaskQueue taskQueue) {
        this.f12774a = taskQueue;
    }

    public final Task a(final Executor executor, final Callable callable, final CancellationToken cancellationToken) {
        boolean z;
        if (this.b.get() > 0) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkState(z);
        if (cancellationToken.a()) {
            return Tasks.c();
        }
        final CancellationTokenSource cancellationTokenSource = new CancellationTokenSource();
        final TaskCompletionSource taskCompletionSource = new TaskCompletionSource(cancellationTokenSource.f11603a);
        Executor executor2 = new Executor() { // from class: com.google.mlkit.common.sdkinternal.zzm
            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                try {
                    executor.execute(runnable);
                } catch (RuntimeException e) {
                    if (cancellationToken.a()) {
                        cancellationTokenSource.a();
                    } else {
                        taskCompletionSource.a(e);
                    }
                    throw e;
                }
            }
        };
        this.f12774a.a(new Runnable() { // from class: com.google.mlkit.common.sdkinternal.zzn
            @Override // java.lang.Runnable
            public final void run() {
                Callable callable2 = callable;
                TaskCompletionSource taskCompletionSource2 = taskCompletionSource;
                ModelResource modelResource = ModelResource.this;
                AtomicBoolean atomicBoolean = modelResource.f12775c;
                CancellationToken cancellationToken2 = cancellationToken;
                boolean a2 = cancellationToken2.a();
                CancellationTokenSource cancellationTokenSource2 = cancellationTokenSource;
                try {
                    if (a2) {
                        cancellationTokenSource2.a();
                        return;
                    }
                    try {
                        if (!atomicBoolean.get()) {
                            modelResource.b();
                            atomicBoolean.set(true);
                        }
                        if (cancellationToken2.a()) {
                            cancellationTokenSource2.a();
                            return;
                        }
                        Object call = callable2.call();
                        if (cancellationToken2.a()) {
                            cancellationTokenSource2.a();
                        } else {
                            taskCompletionSource2.b(call);
                        }
                    } catch (RuntimeException e) {
                        throw new MlKitException(e, "Internal error has occurred when executing ML Kit tasks");
                    }
                } catch (Exception e2) {
                    if (cancellationToken2.a()) {
                        cancellationTokenSource2.a();
                    } else {
                        taskCompletionSource2.a(e2);
                    }
                }
            }
        }, executor2);
        return taskCompletionSource.f11605a;
    }

    public abstract void b();

    public abstract void c();
}
