package com.google.android.gms.internal.consent_sdk;

import android.support.v4.media.a;
import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzcy implements Executor {
    public final ThreadPoolExecutor f;

    /* renamed from: c, reason: collision with root package name */
    public final AtomicInteger f10000c = new AtomicInteger(1);
    public WeakReference g = new WeakReference(null);

    public zzcy() {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ThreadFactory() { // from class: com.google.android.gms.internal.consent_sdk.zzcx
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                zzcy zzcyVar = zzcy.this;
                Thread thread = new Thread(runnable, a.e(zzcyVar.f10000c.getAndIncrement(), "Google consent worker #"));
                zzcyVar.g = new WeakReference(thread);
                return thread;
            }
        });
        this.f = threadPoolExecutor;
        threadPoolExecutor.allowCoreThreadTimeOut(true);
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        if (Thread.currentThread() == this.g.get()) {
            runnable.run();
        } else {
            this.f.execute(runnable);
        }
    }
}
