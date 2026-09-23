package com.google.common.util.concurrent;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import com.google.common.util.concurrent.FluentFuture;
import java.util.concurrent.TimeoutException;

@J2ktIncompatible
@GwtIncompatible
/* loaded from: classes3.dex */
final class TimeoutFuture<V> extends FluentFuture.TrustedFuture<V> {

    /* loaded from: classes3.dex */
    public static final class Fire<V> implements Runnable {
        @Override // java.lang.Runnable
        public final void run() {
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public static final class TimeoutFutureException extends TimeoutException {
        @Override // java.lang.Throwable
        public final synchronized Throwable fillInStackTrace() {
            setStackTrace(new StackTraceElement[0]);
            return this;
        }
    }

    @Override // com.google.common.util.concurrent.AbstractFuture
    public final void d() {
        l(null);
    }

    @Override // com.google.common.util.concurrent.AbstractFuture
    public final String m() {
        return null;
    }
}
