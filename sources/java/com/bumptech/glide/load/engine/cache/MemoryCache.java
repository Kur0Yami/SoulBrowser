package com.bumptech.glide.load.engine.cache;

import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.engine.Engine;
import com.bumptech.glide.load.engine.Resource;

/* loaded from: classes.dex */
public interface MemoryCache {

    /* loaded from: classes.dex */
    public interface ResourceRemovedListener {
    }

    void a(int i);

    void b();

    void c(Engine engine);

    Resource d(Key key, Resource resource);

    Resource e(Key key);
}
