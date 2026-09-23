package com.google.android.gms.internal.ads;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzcky implements ThreadFactory {

    /* renamed from: a, reason: collision with root package name */
    public final AtomicInteger f5229a = new AtomicInteger(1);
    public final int b;

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        int andIncrement = this.f5229a.getAndIncrement();
        return new zzckx(this, runnable, androidx.work.impl.workers.a.r(andIncrement, "AdWorker(WebViewStartup) #", new StringBuilder(String.valueOf(andIncrement).length() + 26)), runnable);
    }
}
