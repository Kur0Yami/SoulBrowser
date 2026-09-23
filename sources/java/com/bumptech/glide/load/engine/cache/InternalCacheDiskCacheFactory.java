package com.bumptech.glide.load.engine.cache;

import android.content.Context;
import com.bumptech.glide.load.engine.cache.DiskLruCacheFactory;

/* loaded from: classes.dex */
public final class InternalCacheDiskCacheFactory extends DiskLruCacheFactory {

    /* renamed from: com.bumptech.glide.load.engine.cache.InternalCacheDiskCacheFactory$1, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass1 implements DiskLruCacheFactory.CacheDirectoryGetter {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Context f2258a;

        public AnonymousClass1(Context context) {
            this.f2258a = context;
        }
    }

    public InternalCacheDiskCacheFactory(Context context) {
        super(new AnonymousClass1(context));
    }
}
