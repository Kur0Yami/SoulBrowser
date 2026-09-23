package com.google.mlkit.common.sdkinternal;

import com.google.android.gms.common.internal.Preconditions;
import java.io.Closeable;

/* loaded from: classes3.dex */
final class zzx implements Closeable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ TaskQueue f12798c;

    public /* synthetic */ zzx(TaskQueue taskQueue) {
        boolean z;
        this.f12798c = taskQueue;
        if (((Thread) taskQueue.d.getAndSet(Thread.currentThread())) == null) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkState(z);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        TaskQueue taskQueue = this.f12798c;
        taskQueue.d.set(null);
        taskQueue.b();
    }
}
