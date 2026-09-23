package com.bumptech.glide.load.engine;

import androidx.core.util.Pools;
import com.bumptech.glide.util.pool.FactoryPools;
import com.bumptech.glide.util.pool.StateVerifier;

/* loaded from: classes.dex */
final class LockedResource<Z> implements Resource<Z>, FactoryPools.Poolable {
    public static final Pools.Pool i = FactoryPools.a(20, new Object());

    /* renamed from: c, reason: collision with root package name */
    public final StateVerifier f2229c = StateVerifier.a();
    public Resource f;
    public boolean g;
    public boolean h;

    /* renamed from: com.bumptech.glide.load.engine.LockedResource$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements FactoryPools.Factory<LockedResource<?>> {
        @Override // com.bumptech.glide.util.pool.FactoryPools.Factory
        public final Object a() {
            return new LockedResource();
        }
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public final synchronized void a() {
        this.f2229c.b();
        this.h = true;
        if (!this.g) {
            this.f.a();
            this.f = null;
            i.a(this);
        }
    }

    @Override // com.bumptech.glide.util.pool.FactoryPools.Poolable
    public final StateVerifier b() {
        return this.f2229c;
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public final Class c() {
        return this.f.c();
    }

    public final synchronized void d() {
        this.f2229c.b();
        if (this.g) {
            this.g = false;
            if (this.h) {
                a();
            }
        } else {
            throw new IllegalStateException("Already unlocked");
        }
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public final Object get() {
        return this.f.get();
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public final int getSize() {
        return this.f.getSize();
    }
}
