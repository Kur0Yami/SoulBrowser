package org.apache.commons.lang3.concurrent;

import j$.util.Objects;
import java.lang.Exception;
import org.apache.commons.lang3.builder.AbstractSupplier;

/* loaded from: classes4.dex */
public abstract class AbstractConcurrentInitializer<T, E extends Exception> implements ConcurrentInitializer<T> {

    /* loaded from: classes4.dex */
    public static abstract class AbstractBuilder<I extends AbstractConcurrentInitializer<T, E>, T, B extends AbstractBuilder<I, T, B, E>, E extends Exception> extends AbstractSupplier<I, B, E> {
    }

    public AbstractConcurrentInitializer() {
        Objects.requireNonNull(null, "closer");
        throw null;
    }

    public abstract Exception a(Exception exc);

    public Object b() {
        try {
            throw null;
        } catch (Exception e) {
            if (!(e instanceof RuntimeException)) {
                Exception a2 = a(e);
                if (a2.getClass().isAssignableFrom(e.getClass())) {
                    throw e;
                }
                throw a2;
            }
            throw e;
        }
    }
}
