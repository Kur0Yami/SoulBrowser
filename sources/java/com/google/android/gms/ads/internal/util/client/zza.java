package com.google.android.gms.ads.internal.util.client;

import androidx.work.impl.workers.a;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
final class zza implements ThreadFactory {

    /* renamed from: a, reason: collision with root package name */
    public final AtomicInteger f3071a = new AtomicInteger(1);
    public final /* synthetic */ String b;

    public zza(String str) {
        this.b = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        int andIncrement = this.f3071a.getAndIncrement();
        int length = String.valueOf(andIncrement).length();
        String str = this.b;
        StringBuilder sb = new StringBuilder(a.d(12, length, str));
        sb.append("AdWorker(");
        sb.append(str);
        sb.append(") #");
        sb.append(andIncrement);
        return new Thread(runnable, sb.toString());
    }
}
