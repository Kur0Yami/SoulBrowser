package com.bumptech.glide.load.engine.cache;

import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.engine.Engine;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.util.LruCache;

/* loaded from: classes.dex */
public class LruResourceCache extends LruCache<Key, Resource<?>> implements MemoryCache {
    public Engine d;

    @Override // com.bumptech.glide.load.engine.cache.MemoryCache
    public final void a(int i) {
        long j;
        if (i >= 40) {
            b();
        } else {
            if (i < 20 && i != 15) {
                return;
            }
            synchronized (this) {
                j = this.b;
            }
            j(j / 2);
        }
    }

    @Override // com.bumptech.glide.load.engine.cache.MemoryCache
    public final void c(Engine engine) {
        this.d = engine;
    }

    @Override // com.bumptech.glide.util.LruCache
    public final int g(Object obj) {
        Resource resource = (Resource) obj;
        if (resource == null) {
            return 1;
        }
        return resource.getSize();
    }

    @Override // com.bumptech.glide.util.LruCache
    public final void h(Object obj, Object obj2) {
        Resource resource = (Resource) obj2;
        Engine engine = this.d;
        if (engine != null && resource != null) {
            engine.h(resource);
        }
    }
}
