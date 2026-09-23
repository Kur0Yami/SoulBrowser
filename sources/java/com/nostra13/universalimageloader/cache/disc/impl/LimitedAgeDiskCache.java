package com.nostra13.universalimageloader.cache.disc.impl;

import com.nostra13.universalimageloader.utils.IoUtils;
import java.io.File;
import java.io.InputStream;

/* loaded from: classes3.dex */
public class LimitedAgeDiskCache extends BaseDiskCache {
    @Override // com.nostra13.universalimageloader.cache.disc.impl.BaseDiskCache, com.nostra13.universalimageloader.cache.disc.DiskCache
    public final void b() {
    }

    @Override // com.nostra13.universalimageloader.cache.disc.impl.BaseDiskCache, com.nostra13.universalimageloader.cache.disc.DiskCache
    public final boolean c(String str, InputStream inputStream, IoUtils.CopyListener copyListener) {
        super.c(str, inputStream, copyListener);
        d(str).setLastModified(System.currentTimeMillis());
        throw null;
    }

    @Override // com.nostra13.universalimageloader.cache.disc.impl.BaseDiskCache, com.nostra13.universalimageloader.cache.disc.DiskCache
    public final void clear() {
        super.clear();
        throw null;
    }

    @Override // com.nostra13.universalimageloader.cache.disc.impl.BaseDiskCache, com.nostra13.universalimageloader.cache.disc.DiskCache
    public final File get(String str) {
        File d = d(str);
        if (!d.exists()) {
            return d;
        }
        throw null;
    }

    @Override // com.nostra13.universalimageloader.cache.disc.impl.BaseDiskCache, com.nostra13.universalimageloader.cache.disc.DiskCache
    public final boolean remove(String str) {
        d(str);
        throw null;
    }
}
