package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class zzgna {

    /* renamed from: a, reason: collision with root package name */
    public final zzgcf f8149a;
    public final AtomicBoolean b = new AtomicBoolean(false);

    /* renamed from: c, reason: collision with root package name */
    public long f8150c = -1;
    public long d = -1;
    public Throwable e = null;
    public final int f;

    public zzgna(int i, zzgcf zzgcfVar) {
        this.f = i;
        this.f8149a = zzgcfVar;
    }

    public final void a() {
        if (!this.b.get()) {
            this.f8150c = SystemClock.uptimeMillis();
            return;
        }
        throw new IllegalStateException("Finished trace.");
    }

    public final void b(Throwable th) {
        if (!this.b.get()) {
            this.e = th;
            return;
        }
        throw new IllegalStateException("Finished trace.");
    }

    public final void c() {
        long j;
        AtomicBoolean atomicBoolean = this.b;
        if (!atomicBoolean.getAndSet(true)) {
            this.d = SystemClock.uptimeMillis();
            if (atomicBoolean.get()) {
                j = this.d - this.f8150c;
            } else {
                j = -1;
            }
            this.f8149a.b(this.f - 1, j, null, this.e);
            return;
        }
        throw new IllegalStateException("Finished trace.");
    }
}
