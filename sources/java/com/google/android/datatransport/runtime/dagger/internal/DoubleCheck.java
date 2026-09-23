package com.google.android.datatransport.runtime.dagger.internal;

import com.google.android.datatransport.runtime.dagger.Lazy;
import javax.inject.Provider;

/* loaded from: classes.dex */
public final class DoubleCheck<T> implements Provider<T>, Lazy<T> {

    /* renamed from: c, reason: collision with root package name */
    public static final Object f2849c = new Object();

    /* renamed from: a, reason: collision with root package name */
    public volatile Factory f2850a;
    public volatile Object b;

    /* JADX WARN: Type inference failed for: r0v1, types: [javax.inject.Provider, com.google.android.datatransport.runtime.dagger.internal.DoubleCheck, java.lang.Object] */
    public static Provider a(Factory factory) {
        if (factory instanceof DoubleCheck) {
            return factory;
        }
        ?? obj = new Object();
        obj.b = f2849c;
        obj.f2850a = factory;
        return obj;
    }

    public static void b(Object obj, Object obj2) {
        if (obj != f2849c && !(obj instanceof MemoizedSentinel) && obj != obj2) {
            throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj + " & " + obj2 + ". This is likely due to a circular dependency.");
        }
    }

    @Override // javax.inject.Provider
    public final Object get() {
        Object obj;
        Object obj2 = this.b;
        Object obj3 = f2849c;
        if (obj2 == obj3) {
            synchronized (this) {
                try {
                    obj = this.b;
                    if (obj == obj3) {
                        obj = this.f2850a.get();
                        b(this.b, obj);
                        this.b = obj;
                        this.f2850a = null;
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
