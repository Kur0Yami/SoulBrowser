package com.google.android.gms.cast.internal;

import android.os.Looper;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.internal.cast.zzfk;
import java.util.Locale;

/* loaded from: classes.dex */
public final class zzav {
    public static final Object j = new Object();

    /* renamed from: a, reason: collision with root package name */
    public final Logger f3616a;
    public final long b;

    /* renamed from: c, reason: collision with root package name */
    public final String f3617c;
    public zzat h;
    public Runnable i;
    public final Clock e = DefaultClock.getInstance();
    public long f = -1;
    public long g = 0;
    public final zzfk d = new zzfk(Looper.getMainLooper());

    public zzav(long j2, String str) {
        this.b = j2;
        this.f3617c = str;
        this.f3616a = new Logger("RequestTracker", str);
    }

    public final void a(long j2, zzat zzatVar) {
        zzat zzatVar2;
        long j3;
        long j4;
        long currentTimeMillis = this.e.currentTimeMillis();
        Object obj = j;
        synchronized (obj) {
            zzatVar2 = this.h;
            j3 = this.f;
            j4 = this.g;
            this.f = j2;
            this.h = zzatVar;
            this.g = currentTimeMillis;
        }
        if (zzatVar2 != null) {
            zzatVar2.a(j3, j4, currentTimeMillis, this.f3617c);
        }
        synchronized (obj) {
            try {
                Runnable runnable = this.i;
                if (runnable != null) {
                    this.d.removeCallbacks(runnable);
                }
                Runnable runnable2 = new Runnable() { // from class: com.google.android.gms.cast.internal.zzau
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        zzav zzavVar = zzav.this;
                        synchronized (zzav.j) {
                            try {
                                if (!zzavVar.b()) {
                                    return;
                                }
                                zzavVar.e(15);
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                };
                this.i = runnable2;
                this.d.postDelayed(runnable2, this.b);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean b() {
        boolean z;
        synchronized (j) {
            if (this.f != -1) {
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }

    public final boolean c(long j2) {
        boolean z;
        synchronized (j) {
            long j3 = this.f;
            z = false;
            if (j3 != -1 && j3 == j2) {
                z = true;
            }
        }
        return z;
    }

    public final void d(long j2, int i, zzaq zzaqVar) {
        synchronized (j) {
            try {
                if (c(j2)) {
                    Locale locale = Locale.ROOT;
                    f(zzaqVar, i, "request " + j2 + " completed");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean e(int i) {
        synchronized (j) {
            try {
                if (b()) {
                    Locale locale = Locale.ROOT;
                    f(null, i, "clearing request " + this.f);
                    return true;
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void f(Object obj, int i, String str) {
        this.f3616a.b(str, new Object[0]);
        Object obj2 = j;
        synchronized (obj2) {
            try {
                if (this.h != null) {
                    ((zzat) Preconditions.checkNotNull(this.h)).b(this.f3617c, this.f, i, obj, this.g, this.e.currentTimeMillis());
                }
                this.f = -1L;
                this.h = null;
                synchronized (obj2) {
                    Runnable runnable = this.i;
                    if (runnable != null) {
                        this.d.removeCallbacks(runnable);
                        this.i = null;
                    }
                }
            } catch (Throwable th) {
                throw th;
            } finally {
            }
        }
    }
}
