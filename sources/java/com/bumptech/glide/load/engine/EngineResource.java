package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.Key;
import com.bumptech.glide.util.Preconditions;

/* loaded from: classes.dex */
class EngineResource<Z> implements Resource<Z> {

    /* renamed from: c, reason: collision with root package name */
    public final boolean f2223c;
    public final boolean f;
    public final Resource g;
    public final ResourceListener h;
    public final Key i;
    public int j;
    public boolean k;

    /* loaded from: classes.dex */
    public interface ResourceListener {
        void c(Key key, EngineResource engineResource);
    }

    public EngineResource(Resource resource, boolean z, boolean z2, Key key, ResourceListener resourceListener) {
        Preconditions.c(resource, "Argument must not be null");
        this.g = resource;
        this.f2223c = z;
        this.f = z2;
        this.i = key;
        Preconditions.c(resourceListener, "Argument must not be null");
        this.h = resourceListener;
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public final synchronized void a() {
        if (this.j <= 0) {
            if (!this.k) {
                this.k = true;
                if (this.f) {
                    this.g.a();
                }
            } else {
                throw new IllegalStateException("Cannot recycle a resource that has already been recycled");
            }
        } else {
            throw new IllegalStateException("Cannot recycle a resource while it is still acquired");
        }
    }

    public final synchronized void b() {
        if (!this.k) {
            this.j++;
        } else {
            throw new IllegalStateException("Cannot acquire a recycled resource");
        }
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public final Class c() {
        return this.g.c();
    }

    public final void d() {
        boolean z;
        synchronized (this) {
            int i = this.j;
            if (i > 0) {
                z = true;
                int i2 = i - 1;
                this.j = i2;
                if (i2 != 0) {
                    z = false;
                }
            } else {
                throw new IllegalStateException("Cannot release a recycled or not yet acquired resource");
            }
        }
        if (z) {
            this.h.c(this.i, this);
        }
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public final Object get() {
        return this.g.get();
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public final int getSize() {
        return this.g.getSize();
    }

    public final synchronized String toString() {
        return "EngineResource{isMemoryCacheable=" + this.f2223c + ", listener=" + this.h + ", key=" + this.i + ", acquired=" + this.j + ", isRecycled=" + this.k + ", resource=" + this.g + '}';
    }
}
