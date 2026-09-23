package org.apache.commons.lang3.concurrent;

import org.apache.commons.lang3.concurrent.AbstractConcurrentInitializer;

/* loaded from: classes4.dex */
public class LazyInitializer<T> extends AbstractConcurrentInitializer<T, ConcurrentException> {
    public static final Object b = new Object();

    /* renamed from: a, reason: collision with root package name */
    public volatile Object f22378a;

    /* loaded from: classes4.dex */
    public static class Builder<I extends LazyInitializer<T>, T> extends AbstractConcurrentInitializer.AbstractBuilder<I, T, Builder<I, T>, ConcurrentException> {
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
        Object obj;
        Object obj2 = this.f22378a;
        Object obj3 = b;
        if (obj2 == obj3) {
            synchronized (this) {
                try {
                    obj = this.f22378a;
                    if (obj == obj3) {
                        obj = b();
                        this.f22378a = obj;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return obj;
        }
        return obj2;
    }
}
