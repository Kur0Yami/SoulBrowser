package com.bumptech.glide.request;

import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.support.v4.media.a;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.request.transition.Transition;
import com.bumptech.glide.util.Util;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import kotlin.jvm.internal.IntCompanionObject;

/* loaded from: classes.dex */
public class RequestFutureTarget<R> implements FutureTarget<R>, RequestListener<R> {

    /* renamed from: c, reason: collision with root package name */
    public Object f2460c;
    public Request f;
    public boolean g;
    public boolean h;
    public boolean i;
    public GlideException j;

    @VisibleForTesting
    /* loaded from: classes.dex */
    public static class Waiter {
    }

    @Override // com.bumptech.glide.request.target.Target
    public final synchronized void a(Object obj, Transition transition) {
    }

    @Override // com.bumptech.glide.request.RequestListener
    public final synchronized boolean b(GlideException glideException) {
        this.i = true;
        this.j = glideException;
        notifyAll();
        return false;
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        synchronized (this) {
            try {
                if (isDone()) {
                    return false;
                }
                this.g = true;
                notifyAll();
                Request request = null;
                if (z) {
                    Request request2 = this.f;
                    this.f = null;
                    request = request2;
                }
                if (request != null) {
                    request.clear();
                }
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.bumptech.glide.request.RequestListener
    public final synchronized void d(Object obj) {
        this.h = true;
        this.f2460c = obj;
        notifyAll();
    }

    @Override // com.bumptech.glide.request.target.Target
    public final synchronized void e(Request request) {
        this.f = request;
    }

    @Override // com.bumptech.glide.request.target.Target
    public final void f(SingleRequest singleRequest) {
        singleRequest.b(IntCompanionObject.MIN_VALUE, IntCompanionObject.MIN_VALUE);
    }

    @Override // com.bumptech.glide.request.target.Target
    public final synchronized void g(Drawable drawable) {
    }

    @Override // java.util.concurrent.Future
    public final Object get() {
        try {
            return n(null);
        } catch (TimeoutException e) {
            throw new AssertionError(e);
        }
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public final void h() {
    }

    @Override // com.bumptech.glide.request.target.Target
    public final void i(Drawable drawable) {
    }

    @Override // java.util.concurrent.Future
    public final synchronized boolean isCancelled() {
        return this.g;
    }

    @Override // java.util.concurrent.Future
    public final synchronized boolean isDone() {
        boolean z;
        if (!this.g && !this.h) {
            if (!this.i) {
                z = false;
            }
        }
        z = true;
        return z;
    }

    @Override // com.bumptech.glide.request.target.Target
    public final synchronized Request j() {
        return this.f;
    }

    @Override // com.bumptech.glide.request.target.Target
    public final void l(Drawable drawable) {
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public final void m() {
    }

    public final synchronized Object n(Long l) {
        if (!isDone()) {
            char[] cArr = Util.f2497a;
            if (Looper.myLooper() == Looper.getMainLooper()) {
                throw new IllegalArgumentException("You must call this method on a background thread");
            }
        }
        if (!this.g) {
            if (!this.i) {
                if (this.h) {
                    return this.f2460c;
                }
                if (l == null) {
                    wait(0L);
                } else if (l.longValue() > 0) {
                    long currentTimeMillis = System.currentTimeMillis();
                    long longValue = l.longValue() + currentTimeMillis;
                    while (!isDone() && currentTimeMillis < longValue) {
                        wait(longValue - currentTimeMillis);
                        currentTimeMillis = System.currentTimeMillis();
                    }
                }
                if (!Thread.interrupted()) {
                    if (!this.i) {
                        if (!this.g) {
                            if (this.h) {
                                return this.f2460c;
                            }
                            throw new TimeoutException();
                        }
                        throw new CancellationException();
                    }
                    throw new ExecutionException(this.j);
                }
                throw new InterruptedException();
            }
            throw new ExecutionException(this.j);
        }
        throw new CancellationException();
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public final void onDestroy() {
    }

    public final String toString() {
        Request request;
        String str;
        String p = a.p(new StringBuilder(), super.toString(), "[status=");
        synchronized (this) {
            try {
                request = null;
                if (this.g) {
                    str = "CANCELLED";
                } else if (this.i) {
                    str = "FAILURE";
                } else if (this.h) {
                    str = "SUCCESS";
                } else {
                    str = "PENDING";
                    request = this.f;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (request != null) {
            return p + str + ", request=[" + request + "]]";
        }
        return a.D(p, str, "]");
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j, TimeUnit timeUnit) {
        return n(Long.valueOf(timeUnit.toMillis(j)));
    }

    @Override // com.bumptech.glide.request.target.Target
    public final void c(SingleRequest singleRequest) {
    }
}
