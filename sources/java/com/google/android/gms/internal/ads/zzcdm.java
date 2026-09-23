package com.google.android.gms.internal.ads;

import android.os.Looper;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
final class zzcdm implements Executor {

    /* renamed from: c, reason: collision with root package name */
    public final com.google.android.gms.ads.internal.util.zzf f5066c = new com.google.android.gms.ads.internal.util.zzf(Looper.getMainLooper());

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            try {
                runnable.run();
                return;
            } catch (Throwable th) {
                com.google.android.gms.ads.internal.zzt.zzc();
                com.google.android.gms.ads.internal.util.zzs.zzR(com.google.android.gms.ads.internal.zzt.zzh().e, th);
                throw th;
            }
        }
        this.f5066c.post(runnable);
    }
}
