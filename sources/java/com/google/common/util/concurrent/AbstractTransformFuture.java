package com.google.common.util.concurrent;

import com.google.android.gms.ads.RequestConfiguration;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Function;
import com.google.common.util.concurrent.AbstractFuture;
import com.google.common.util.concurrent.FluentFuture;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;

/* JADX INFO: Access modifiers changed from: package-private */
@GwtCompatible
/* loaded from: classes3.dex */
public abstract class AbstractTransformFuture<I, O, F, T> extends FluentFuture.TrustedFuture<O> implements Runnable {
    public static final /* synthetic */ int n = 0;
    public ListenableFuture l;
    public com.google.common.cache.b m;

    /* loaded from: classes3.dex */
    public static final class AsyncTransformFuture<I, O> extends AbstractTransformFuture<I, O, AsyncFunction<? super I, ? extends O>, ListenableFuture<? extends O>> {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.util.concurrent.AbstractTransformFuture
        public final Object q(com.google.common.cache.b bVar, Object obj) {
            ((AsyncFunction) bVar).apply(obj);
            throw null;
        }

        @Override // com.google.common.util.concurrent.AbstractTransformFuture
        public final void r(Object obj) {
            p((ListenableFuture) obj);
        }
    }

    /* loaded from: classes3.dex */
    public static final class TransformFuture<I, O> extends AbstractTransformFuture<I, O, Function<? super I, ? extends O>, O> {
        @Override // com.google.common.util.concurrent.AbstractTransformFuture
        public final Object q(com.google.common.cache.b bVar, Object obj) {
            bVar.apply(obj);
            return obj;
        }

        @Override // com.google.common.util.concurrent.AbstractTransformFuture
        public final void r(Object obj) {
            n(obj);
        }
    }

    @Override // com.google.common.util.concurrent.AbstractFuture
    public final void d() {
        l(this.l);
        this.l = null;
        this.m = null;
    }

    @Override // com.google.common.util.concurrent.AbstractFuture
    public final String m() {
        String str;
        ListenableFuture listenableFuture = this.l;
        com.google.common.cache.b bVar = this.m;
        String m = super.m();
        if (listenableFuture != null) {
            str = "inputFuture=[" + listenableFuture + "], ";
        } else {
            str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        if (bVar != null) {
            return str + "function=[" + bVar + "]";
        }
        if (m != null) {
            return android.support.v4.media.a.k(str, m);
        }
        return null;
    }

    public abstract Object q(com.google.common.cache.b bVar, Object obj);

    public abstract void r(Object obj);

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        ListenableFuture listenableFuture = this.l;
        com.google.common.cache.b bVar = this.m;
        boolean z2 = this.f12561c instanceof AbstractFuture.Cancellation;
        boolean z3 = true;
        if (listenableFuture == null) {
            z = true;
        } else {
            z = false;
        }
        boolean z4 = z2 | z;
        if (bVar != null) {
            z3 = false;
        }
        if (z4 | z3) {
            return;
        }
        this.l = null;
        if (listenableFuture.isCancelled()) {
            p(listenableFuture);
            return;
        }
        try {
            try {
                Object q = q(bVar, Futures.b(listenableFuture));
                this.m = null;
                r(q);
            } catch (Throwable th) {
                try {
                    Platform.a(th);
                    o(th);
                } finally {
                    this.m = null;
                }
            }
        } catch (Error e) {
            o(e);
        } catch (CancellationException unused) {
            cancel(false);
        } catch (ExecutionException e2) {
            o(e2.getCause());
        } catch (Exception e3) {
            o(e3);
        }
    }
}
