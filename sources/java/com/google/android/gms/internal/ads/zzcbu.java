package com.google.android.gms.internal.ads;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzcbu implements ThreadFactory {

    /* renamed from: a, reason: collision with root package name */
    public final AtomicInteger f5028a = new AtomicInteger(1);

    public zzcbu(zzcbw zzcbwVar) {
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        int andIncrement = this.f5028a.getAndIncrement();
        return new Thread(runnable, androidx.work.impl.workers.a.r(andIncrement, "AdWorker(SCION_TASK_EXECUTOR) #", new StringBuilder(String.valueOf(andIncrement).length() + 31)));
    }
}
