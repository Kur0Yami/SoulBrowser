package com.google.common.util.concurrent;

import com.google.android.gms.ads.RequestConfiguration;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Function;
import com.google.common.util.concurrent.FluentFuture;
import java.lang.Throwable;

@GwtCompatible
/* loaded from: classes3.dex */
abstract class AbstractCatchingFuture<V, X extends Throwable, F, T> extends FluentFuture.TrustedFuture<V> implements Runnable {

    /* loaded from: classes3.dex */
    public static final class AsyncCatchingFuture<V, X extends Throwable> extends AbstractCatchingFuture<V, X, AsyncFunction<? super X, ? extends V>, ListenableFuture<? extends V>> {
    }

    /* loaded from: classes3.dex */
    public static final class CatchingFuture<V, X extends Throwable> extends AbstractCatchingFuture<V, X, Function<? super X, ? extends V>, V> {
    }

    @Override // com.google.common.util.concurrent.AbstractFuture
    public final void d() {
        l(null);
    }

    @Override // com.google.common.util.concurrent.AbstractFuture
    public final String m() {
        String m = super.m();
        if (m != null) {
            return android.support.v4.media.a.k(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, m);
        }
        return null;
    }

    @Override // java.lang.Runnable
    public final void run() {
    }
}
