package com.google.android.gms.tasks;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
final class zzu implements Executor {

    /* renamed from: c, reason: collision with root package name */
    public final com.google.android.gms.internal.tasks.zza f11627c;

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.tasks.zza, android.os.Handler] */
    public zzu() {
        ?? handler = new Handler(Looper.getMainLooper());
        Looper.getMainLooper();
        this.f11627c = handler;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f11627c.post(runnable);
    }
}
