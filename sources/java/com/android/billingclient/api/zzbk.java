package com.android.billingclient.api;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzbk implements ThreadFactory {

    /* renamed from: a, reason: collision with root package name */
    public final ThreadFactory f2040a = Executors.defaultThreadFactory();
    public final AtomicInteger b = new AtomicInteger(1);

    public zzbk(BillingClientImpl billingClientImpl) {
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread newThread = this.f2040a.newThread(runnable);
        newThread.setName("PlayBillingLibrary-" + this.b.getAndIncrement());
        return newThread;
    }
}
