package com.google.mlkit.vision.common.internal;

import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.OnLifecycleEvent;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.GmsLogger;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.mlkit_common.zzrr;
import com.google.android.gms.tasks.CancellationTokenSource;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.mlkit.common.sdkinternal.MLTask;
import com.google.mlkit.vision.text.internal.TextRecognizerTaskWithResource;
import java.io.Closeable;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;

@KeepForSdk
/* loaded from: classes3.dex */
public class MobileVisionBase<DetectionResultT> implements Closeable, LifecycleObserver {
    public static final GmsLogger i = new GmsLogger("MobileVisionBase", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);

    /* renamed from: c, reason: collision with root package name */
    public final AtomicBoolean f12811c = new AtomicBoolean(false);
    public final MLTask f;
    public final CancellationTokenSource g;
    public final Executor h;

    public MobileVisionBase(TextRecognizerTaskWithResource textRecognizerTaskWithResource, Executor executor) {
        this.f = textRecognizerTaskWithResource;
        CancellationTokenSource cancellationTokenSource = new CancellationTokenSource();
        this.g = cancellationTokenSource;
        this.h = executor;
        textRecognizerTaskWithResource.b.incrementAndGet();
        textRecognizerTaskWithResource.a(executor, zzb.f12815a, cancellationTokenSource.f11603a).e(zzc.f12816c);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    @KeepForSdk
    @OnLifecycleEvent(Lifecycle.Event.ON_DESTROY)
    public synchronized void close() {
        boolean z = true;
        if (!this.f12811c.getAndSet(true)) {
            this.g.a();
            final MLTask mLTask = this.f;
            Executor executor = this.h;
            if (mLTask.b.get() <= 0) {
                z = false;
            }
            Preconditions.checkState(z);
            final TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
            mLTask.f12774a.a(new Runnable() { // from class: com.google.mlkit.common.sdkinternal.zzl
                @Override // java.lang.Runnable
                public final void run() {
                    boolean z2;
                    ModelResource modelResource = ModelResource.this;
                    int decrementAndGet = modelResource.b.decrementAndGet();
                    if (decrementAndGet >= 0) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    Preconditions.checkState(z2);
                    if (decrementAndGet == 0) {
                        modelResource.c();
                        modelResource.f12775c.set(false);
                    }
                    zzrr.a();
                    taskCompletionSource.b(null);
                }
            }, executor);
        }
    }
}
