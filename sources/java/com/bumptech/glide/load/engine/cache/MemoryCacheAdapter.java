package com.bumptech.glide.load.engine.cache;

import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.engine.Engine;
import com.bumptech.glide.load.engine.Resource;

/* loaded from: classes.dex */
public class MemoryCacheAdapter implements MemoryCache {

    /* renamed from: a, reason: collision with root package name */
    public Engine f2259a;

    @Override // com.bumptech.glide.load.engine.cache.MemoryCache
    public final void a(int i) {
    }

    @Override // com.bumptech.glide.load.engine.cache.MemoryCache
    public final void b() {
    }

    @Override // com.bumptech.glide.load.engine.cache.MemoryCache
    public final void c(Engine engine) {
        this.f2259a = engine;
    }

    @Override // com.bumptech.glide.load.engine.cache.MemoryCache
    public final Resource d(Key key, Resource resource) {
        this.f2259a.h(resource);
        return null;
    }

    @Override // com.bumptech.glide.load.engine.cache.MemoryCache
    public final Resource e(Key key) {
        return null;
    }
}
