package org.apache.commons.lang3.concurrent;

import org.apache.commons.lang3.concurrent.AbstractConcurrentInitializer;

/* loaded from: classes4.dex */
public class AtomicSafeInitializer<T> extends AbstractConcurrentInitializer<T, ConcurrentException> {

    /* renamed from: a, reason: collision with root package name */
    public static final Object f22374a = new Object();

    /* loaded from: classes4.dex */
    public static class Builder<I extends AtomicSafeInitializer<T>, T> extends AbstractConcurrentInitializer.AbstractBuilder<I, T, Builder<I, T>, ConcurrentException> {
        @Override // org.apache.commons.lang3.function.FailableSupplier
        public final Object get() {
            new AbstractConcurrentInitializer();
            throw null;
        }
    }

    @Override // org.apache.commons.lang3.concurrent.AbstractConcurrentInitializer
    public final Exception a(Exception exc) {
        return new ConcurrentException(exc);
    }

    @Override // org.apache.commons.lang3.function.FailableSupplier
    public final Object get() {
        throw null;
    }
}
