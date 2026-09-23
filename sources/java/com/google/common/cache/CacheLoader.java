package com.google.common.cache;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Function;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.ListenableFutureTask;
import java.io.Serializable;
import java.util.concurrent.Callable;

@GwtCompatible
/* loaded from: classes3.dex */
public abstract class CacheLoader<K, V> {

    /* renamed from: com.google.common.cache.CacheLoader$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 extends CacheLoader<Object, Object> {
        @Override // com.google.common.cache.CacheLoader
        public final Object b(Object obj) {
            throw null;
        }

        @Override // com.google.common.cache.CacheLoader
        public final ListenableFuture c(final Object obj, final Object obj2) {
            new ListenableFutureTask(new Callable() { // from class: com.google.common.cache.a
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    throw null;
                }
            });
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public static final class FunctionToCacheLoader<K, V> extends CacheLoader<K, V> implements Serializable {

        /* renamed from: c, reason: collision with root package name */
        public final Function f12203c;

        public FunctionToCacheLoader(Function function) {
            this.f12203c = function;
        }

        @Override // com.google.common.cache.CacheLoader
        public final Object b(Object obj) {
            obj.getClass();
            return this.f12203c.apply(obj);
        }
    }

    /* loaded from: classes3.dex */
    public static final class InvalidCacheLoadException extends RuntimeException {
    }

    /* loaded from: classes3.dex */
    public static final class SupplierToCacheLoader<V> extends CacheLoader<Object, V> implements Serializable {
        @Override // com.google.common.cache.CacheLoader
        public final Object b(Object obj) {
            obj.getClass();
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public static final class UnsupportedLoadingOperationException extends UnsupportedOperationException {
    }

    public static CacheLoader a(Function function) {
        return new FunctionToCacheLoader(function);
    }

    public abstract Object b(Object obj);

    public ListenableFuture c(Object obj, Object obj2) {
        obj.getClass();
        return Futures.d(b(obj));
    }
}
