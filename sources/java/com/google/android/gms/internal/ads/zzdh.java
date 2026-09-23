package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* loaded from: classes.dex */
public final class zzdh {

    /* renamed from: a, reason: collision with root package name */
    public static ExecutorService f5792a;

    public static synchronized Executor a() {
        ExecutorService executorService;
        synchronized (zzdh.class) {
            try {
                if (f5792a == null) {
                    String str = zzfj.f7405a;
                    f5792a = Executors.newSingleThreadExecutor(new zzfi("ExoPlayer:BackgroundExecutor"));
                }
                executorService = f5792a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return executorService;
    }
}
