package com.google.common.util.concurrent;

import com.google.common.annotations.GwtCompatible;
import com.google.common.util.concurrent.AbstractFuture;
import com.google.j2objc.annotations.ReflectionSupport;
import java.util.Set;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.logging.Level;

@ReflectionSupport
@GwtCompatible
/* loaded from: classes3.dex */
abstract class AggregateFutureState<OutputT> extends AbstractFuture.TrustedFuture<OutputT> {
    public static final LazyLogger n = new LazyLogger(AggregateFutureState.class);
    public volatile Set l;
    public volatile int m;

    /* loaded from: classes3.dex */
    public static abstract class AtomicHelper {
    }

    /* loaded from: classes3.dex */
    public static final class SafeAtomicHelper extends AtomicHelper {
        static {
            AtomicReferenceFieldUpdater.newUpdater(AggregateFutureState.class, Set.class, "l");
            AtomicIntegerFieldUpdater.newUpdater(AggregateFutureState.class, "m");
        }
    }

    /* loaded from: classes3.dex */
    public static final class SynchronizedAtomicHelper extends AtomicHelper {
    }

    static {
        try {
            th = null;
        } catch (Throwable th) {
            th = th;
        }
        if (th != null) {
            n.a().log(Level.SEVERE, "SafeAtomicHelper is broken!", th);
        }
    }
}
