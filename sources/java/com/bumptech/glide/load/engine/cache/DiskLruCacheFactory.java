package com.bumptech.glide.load.engine.cache;

import com.bumptech.glide.load.engine.cache.DiskCache;
import com.bumptech.glide.load.engine.cache.InternalCacheDiskCacheFactory;
import java.io.File;

/* loaded from: classes.dex */
public class DiskLruCacheFactory implements DiskCache.Factory {

    /* renamed from: a, reason: collision with root package name */
    public final CacheDirectoryGetter f2255a;

    /* renamed from: com.bumptech.glide.load.engine.cache.DiskLruCacheFactory$1, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass1 implements CacheDirectoryGetter {
    }

    /* renamed from: com.bumptech.glide.load.engine.cache.DiskLruCacheFactory$2, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass2 implements CacheDirectoryGetter {
    }

    /* loaded from: classes.dex */
    public interface CacheDirectoryGetter {
    }

    public DiskLruCacheFactory(CacheDirectoryGetter cacheDirectoryGetter) {
        this.f2255a = cacheDirectoryGetter;
    }

    @Override // com.bumptech.glide.load.engine.cache.DiskCache.Factory
    public final DiskCache build() {
        File file;
        File cacheDir = ((InternalCacheDiskCacheFactory.AnonymousClass1) this.f2255a).f2258a.getCacheDir();
        if (cacheDir == null) {
            file = null;
        } else {
            file = new File(cacheDir, "image_manager_disk_cache");
        }
        if (file == null || (!file.isDirectory() && !file.mkdirs())) {
            return null;
        }
        return new DiskLruCacheWrapper(file);
    }
}
