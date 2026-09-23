package com.bumptech.glide.util.pool;

import android.util.Log;
import androidx.core.util.Pools;
import com.bumptech.glide.util.pool.StateVerifier;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class FactoryPools {

    /* renamed from: a, reason: collision with root package name */
    public static final Resetter f2500a = new Object();

    /* renamed from: com.bumptech.glide.util.pool.FactoryPools$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements Resetter<Object> {
        @Override // com.bumptech.glide.util.pool.FactoryPools.Resetter
        public final void a(Object obj) {
        }
    }

    /* renamed from: com.bumptech.glide.util.pool.FactoryPools$2, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass2 implements Factory<List<Object>> {
        @Override // com.bumptech.glide.util.pool.FactoryPools.Factory
        public final Object a() {
            return new ArrayList();
        }
    }

    /* renamed from: com.bumptech.glide.util.pool.FactoryPools$3, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass3 implements Resetter<List<Object>> {
        @Override // com.bumptech.glide.util.pool.FactoryPools.Resetter
        public final void a(Object obj) {
            ((List) obj).clear();
        }
    }

    /* loaded from: classes.dex */
    public interface Factory<T> {
        Object a();
    }

    /* loaded from: classes.dex */
    public static final class FactoryPool<T> implements Pools.Pool<T> {

        /* renamed from: a, reason: collision with root package name */
        public final Factory f2501a;
        public final Resetter b;

        /* renamed from: c, reason: collision with root package name */
        public final Pools.SynchronizedPool f2502c;

        public FactoryPool(Pools.SynchronizedPool synchronizedPool, Factory factory, Resetter resetter) {
            this.f2502c = synchronizedPool;
            this.f2501a = factory;
            this.b = resetter;
        }

        @Override // androidx.core.util.Pools.Pool
        public final boolean a(Object obj) {
            if (obj instanceof Poolable) {
                ((StateVerifier.DefaultStateVerifier) ((Poolable) obj).b()).f2503a = true;
            }
            this.b.a(obj);
            return this.f2502c.a(obj);
        }

        @Override // androidx.core.util.Pools.Pool
        public final Object b() {
            Object b = this.f2502c.b();
            if (b == null) {
                b = this.f2501a.a();
                if (Log.isLoggable("FactoryPools", 2)) {
                    Log.v("FactoryPools", "Created new " + b.getClass());
                }
            }
            if (b instanceof Poolable) {
                ((StateVerifier.DefaultStateVerifier) ((Poolable) b).b()).f2503a = false;
            }
            return b;
        }
    }

    /* loaded from: classes.dex */
    public interface Poolable {
        StateVerifier b();
    }

    /* loaded from: classes.dex */
    public interface Resetter<T> {
        void a(Object obj);
    }

    public static Pools.Pool a(int i, Factory factory) {
        return new FactoryPool(new Pools.SynchronizedPool(i), factory, f2500a);
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.bumptech.glide.util.pool.FactoryPools$Factory, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v0, types: [com.bumptech.glide.util.pool.FactoryPools$Resetter, java.lang.Object] */
    public static Pools.Pool b() {
        return new FactoryPool(new Pools.SynchronizedPool(20), new Object(), new Object());
    }
}
