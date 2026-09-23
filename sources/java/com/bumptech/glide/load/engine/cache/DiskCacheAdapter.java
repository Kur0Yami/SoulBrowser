package com.bumptech.glide.load.engine.cache;

import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.engine.cache.DiskCache;
import java.io.File;

/* loaded from: classes.dex */
public class DiskCacheAdapter implements DiskCache {

    /* loaded from: classes.dex */
    public static final class Factory implements DiskCache.Factory {
        /* JADX WARN: Type inference failed for: r0v0, types: [com.bumptech.glide.load.engine.cache.DiskCache, java.lang.Object] */
        @Override // com.bumptech.glide.load.engine.cache.DiskCache.Factory
        public final DiskCache build() {
            return new Object();
        }
    }

    @Override // com.bumptech.glide.load.engine.cache.DiskCache
    public final void a(Key key, DiskCache.Writer writer) {
    }

    @Override // com.bumptech.glide.load.engine.cache.DiskCache
    public final File b(Key key) {
        return null;
    }

    @Override // com.bumptech.glide.load.engine.cache.DiskCache
    public final void clear() {
    }
}
