package androidx.work.impl;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.RestrictTo;
import androidx.core.os.HandlerCompat;
import androidx.work.RunnableScheduler;

@RestrictTo
/* loaded from: classes.dex */
public class DefaultRunnableScheduler implements RunnableScheduler {

    /* renamed from: a, reason: collision with root package name */
    public final Handler f1861a = HandlerCompat.a(Looper.getMainLooper());

    @Override // androidx.work.RunnableScheduler
    public final void a(Runnable runnable, long j) {
        this.f1861a.postDelayed(runnable, j);
    }

    @Override // androidx.work.RunnableScheduler
    public final void b(Runnable runnable) {
        this.f1861a.removeCallbacks(runnable);
    }
}
