package com.google.android.gms.internal.ads;

import android.os.SystemClock;

/* loaded from: classes.dex */
final class zzsr {

    /* renamed from: a, reason: collision with root package name */
    public Exception f9258a;
    public long b = -9223372036854775807L;

    /* renamed from: c, reason: collision with root package name */
    public long f9259c = -9223372036854775807L;

    public final void a(Exception exc) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (this.f9258a == null) {
            this.f9258a = exc;
        }
        if (this.b == -9223372036854775807L && zzss.X.get() <= 0) {
            this.b = 200 + elapsedRealtime;
        }
        long j = this.b;
        if (j != -9223372036854775807L && elapsedRealtime >= j) {
            Exception exc2 = this.f9258a;
            if (exc2 != exc) {
                exc2.addSuppressed(exc);
            }
            Exception exc3 = this.f9258a;
            this.f9258a = null;
            this.b = -9223372036854775807L;
            this.f9259c = -9223372036854775807L;
            throw exc3;
        }
        this.f9259c = elapsedRealtime + 50;
    }
}
