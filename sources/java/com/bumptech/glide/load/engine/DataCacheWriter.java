package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.Encoder;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.engine.cache.DiskCache;
import java.io.File;

/* loaded from: classes.dex */
class DataCacheWriter<DataType> implements DiskCache.Writer {

    /* renamed from: a, reason: collision with root package name */
    public final Encoder f2188a;
    public final Object b;

    /* renamed from: c, reason: collision with root package name */
    public final Options f2189c;

    public DataCacheWriter(Encoder encoder, Object obj, Options options) {
        this.f2188a = encoder;
        this.b = obj;
        this.f2189c = options;
    }

    @Override // com.bumptech.glide.load.engine.cache.DiskCache.Writer
    public final boolean a(File file) {
        return this.f2188a.a(this.b, file, this.f2189c);
    }
}
