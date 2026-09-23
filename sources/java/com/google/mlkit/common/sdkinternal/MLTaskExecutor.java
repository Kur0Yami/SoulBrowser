package com.google.mlkit.common.sdkinternal;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.mlkit.common.MlKitException;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

@KeepForSdk
/* loaded from: classes3.dex */
public class MLTaskExecutor {
    public static final Object b = new Object();

    /* renamed from: c, reason: collision with root package name */
    public static MLTaskExecutor f12769c;

    /* renamed from: a, reason: collision with root package name */
    public final com.google.android.gms.internal.mlkit_common.zza f12770a;

    /* JADX WARN: Type inference failed for: r0v0, types: [android.os.Handler, com.google.android.gms.internal.mlkit_common.zza] */
    public MLTaskExecutor(Looper looper) {
        ?? handler = new Handler(looper);
        Looper.getMainLooper();
        this.f12770a = handler;
    }

    public static MLTaskExecutor a() {
        MLTaskExecutor mLTaskExecutor;
        synchronized (b) {
            try {
                if (f12769c == null) {
                    HandlerThread handlerThread = new HandlerThread("MLHandler", 9);
                    handlerThread.start();
                    f12769c = new MLTaskExecutor(handlerThread.getLooper());
                }
                mLTaskExecutor = f12769c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return mLTaskExecutor;
    }

    public static Task b(final Callable callable) {
        final TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        zzh.f12788c.execute(new Runnable() { // from class: com.google.mlkit.common.sdkinternal.zzf
            @Override // java.lang.Runnable
            public final void run() {
                Callable callable2 = callable;
                TaskCompletionSource taskCompletionSource2 = taskCompletionSource;
                try {
                    taskCompletionSource2.b(callable2.call());
                } catch (MlKitException e) {
                    taskCompletionSource2.a(e);
                } catch (Exception e2) {
                    taskCompletionSource2.a(new MlKitException(e2, "Internal error has occurred when executing ML Kit tasks"));
                }
            }
        });
        return taskCompletionSource.f11605a;
    }

    public static Executor c() {
        return zzh.f12788c;
    }
}
