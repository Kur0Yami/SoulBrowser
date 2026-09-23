package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class zzgxl extends zzgyd implements Runnable {
    public static final /* synthetic */ int n = 0;
    public ListenableFuture l;
    public Object m;

    public zzgxl(ListenableFuture listenableFuture, Object obj) {
        listenableFuture.getClass();
        this.l = listenableFuture;
        this.m = obj;
    }

    @Override // com.google.android.gms.internal.ads.zzgxf
    public final void e() {
        n(this.l);
        this.l = null;
        this.m = null;
    }

    @Override // com.google.android.gms.internal.ads.zzgxf
    public final String f() {
        String str;
        ListenableFuture listenableFuture = this.l;
        Object obj = this.m;
        String f = super.f();
        if (listenableFuture != null) {
            String obj2 = listenableFuture.toString();
            str = android.support.v4.media.a.q(new StringBuilder(obj2.length() + 16), "inputFuture=[", obj2, "], ");
        } else {
            str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        if (obj != null) {
            int length = str.length();
            String obj3 = obj.toString();
            return android.support.v4.media.a.r(new StringBuilder(obj3.length() + length + 10 + 1), str, "function=[", obj3, "]");
        }
        if (f != null) {
            return str.concat(f);
        }
        return null;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        ListenableFuture listenableFuture = this.l;
        Object obj = this.m;
        boolean isCancelled = isCancelled();
        boolean z2 = true;
        if (listenableFuture == null) {
            z = true;
        } else {
            z = false;
        }
        boolean z3 = isCancelled | z;
        if (obj != null) {
            z2 = false;
        }
        if (z3 | z2) {
            return;
        }
        this.l = null;
        if (!listenableFuture.isCancelled()) {
            try {
                try {
                    Object t = t(obj, zzgym.l(listenableFuture));
                    this.m = null;
                    s(t);
                    return;
                } catch (Throwable th) {
                    try {
                        if (th instanceof InterruptedException) {
                            Thread.currentThread().interrupt();
                        }
                        d(th);
                        return;
                    } finally {
                        this.m = null;
                    }
                }
            } catch (Error e) {
                d(e);
                return;
            } catch (CancellationException unused) {
                cancel(false);
                return;
            } catch (ExecutionException e2) {
                d(e2.getCause());
                return;
            } catch (Exception e3) {
                d(e3);
                return;
            }
        }
        m(listenableFuture);
    }

    public abstract void s(Object obj);

    public abstract Object t(Object obj, Object obj2);
}
