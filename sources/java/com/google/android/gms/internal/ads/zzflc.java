package com.google.android.gms.internal.ads;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
final class zzflc implements ThreadFactory {

    /* renamed from: a, reason: collision with root package name */
    public final AtomicInteger f7455a = new AtomicInteger(1);

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        int andIncrement = this.f7455a.getAndIncrement();
        return new Thread(runnable, androidx.work.impl.workers.a.r(andIncrement, "AdWorker(NG) #", new StringBuilder(String.valueOf(andIncrement).length() + 14)));
    }
}
