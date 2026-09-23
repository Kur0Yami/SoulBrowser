package org.apache.commons.lang3.concurrent;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes4.dex */
final class UncheckedFutureImpl<V> extends AbstractFutureProxy<V> implements UncheckedFuture<V> {
    @Override // org.apache.commons.lang3.concurrent.AbstractFutureProxy, java.util.concurrent.Future
    public final Object get() {
        try {
            throw null;
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        } catch (ExecutionException e2) {
            throw new RuntimeException(e2);
        }
    }

    @Override // org.apache.commons.lang3.concurrent.AbstractFutureProxy, java.util.concurrent.Future
    public final Object get(long j, TimeUnit timeUnit) {
        try {
            throw null;
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        } catch (ExecutionException e2) {
            throw new RuntimeException(e2);
        } catch (TimeoutException e3) {
            throw new RuntimeException(e3);
        }
    }
}
