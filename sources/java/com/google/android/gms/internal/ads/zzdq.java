package com.google.android.gms.internal.ads;

import android.os.SystemClock;

/* loaded from: classes.dex */
public final class zzdq {

    /* renamed from: a, reason: collision with root package name */
    public boolean f6014a;

    public final synchronized boolean a() {
        if (this.f6014a) {
            return false;
        }
        this.f6014a = true;
        notifyAll();
        return true;
    }

    public final synchronized void b() {
        this.f6014a = false;
    }

    public final synchronized void c() {
        while (!this.f6014a) {
            wait();
        }
    }

    public final synchronized void d() {
        boolean z = false;
        while (!this.f6014a) {
            try {
                wait();
            } catch (InterruptedException unused) {
                z = true;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
    }

    public final synchronized boolean e(long j) {
        if (j > 0) {
            try {
                long elapsedRealtime = SystemClock.elapsedRealtime();
                long j2 = j + elapsedRealtime;
                if (j2 < elapsedRealtime) {
                    d();
                } else {
                    boolean z = false;
                    while (!this.f6014a && elapsedRealtime < j2) {
                        try {
                            wait(j2 - elapsedRealtime);
                        } catch (InterruptedException unused) {
                            z = true;
                        }
                        elapsedRealtime = SystemClock.elapsedRealtime();
                    }
                    if (z) {
                        Thread.currentThread().interrupt();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return this.f6014a;
    }
}
