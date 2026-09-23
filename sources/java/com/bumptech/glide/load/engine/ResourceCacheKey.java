package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.util.LruCache;
import com.bumptech.glide.util.Util;
import java.nio.ByteBuffer;
import java.security.MessageDigest;

/* loaded from: classes.dex */
final class ResourceCacheKey implements Key {
    public static final LruCache j = new LruCache(50);
    public final ArrayPool b;

    /* renamed from: c, reason: collision with root package name */
    public final Key f2231c;
    public final Key d;
    public final int e;
    public final int f;
    public final Class g;
    public final Options h;
    public final Transformation i;

    public ResourceCacheKey(ArrayPool arrayPool, Key key, Key key2, int i, int i2, Transformation transformation, Class cls, Options options) {
        this.b = arrayPool;
        this.f2231c = key;
        this.d = key2;
        this.e = i;
        this.f = i2;
        this.i = transformation;
        this.g = cls;
        this.h = options;
    }

    @Override // com.bumptech.glide.load.Key
    public final void a(MessageDigest messageDigest) {
        ArrayPool arrayPool = this.b;
        byte[] bArr = (byte[]) arrayPool.e();
        ByteBuffer.wrap(bArr).putInt(this.e).putInt(this.f).array();
        this.d.a(messageDigest);
        this.f2231c.a(messageDigest);
        messageDigest.update(bArr);
        Transformation transformation = this.i;
        if (transformation != null) {
            transformation.a(messageDigest);
        }
        this.h.a(messageDigest);
        LruCache lruCache = j;
        Class cls = this.g;
        byte[] bArr2 = (byte[]) lruCache.f(cls);
        if (bArr2 == null) {
            bArr2 = cls.getName().getBytes(Key.f2160a);
            lruCache.i(cls, bArr2);
        }
        messageDigest.update(bArr2);
        arrayPool.c(bArr);
    }

    @Override // com.bumptech.glide.load.Key
    public final boolean equals(Object obj) {
        if (obj instanceof ResourceCacheKey) {
            ResourceCacheKey resourceCacheKey = (ResourceCacheKey) obj;
            if (this.f == resourceCacheKey.f && this.e == resourceCacheKey.e && Util.b(this.i, resourceCacheKey.i) && this.g.equals(resourceCacheKey.g) && this.f2231c.equals(resourceCacheKey.f2231c) && this.d.equals(resourceCacheKey.d) && this.h.equals(resourceCacheKey.h)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.bumptech.glide.load.Key
    public final int hashCode() {
        int hashCode = ((((this.d.hashCode() + (this.f2231c.hashCode() * 31)) * 31) + this.e) * 31) + this.f;
        Transformation transformation = this.i;
        if (transformation != null) {
            hashCode = (hashCode * 31) + transformation.hashCode();
        }
        return this.h.b.hashCode() + ((this.g.hashCode() + (hashCode * 31)) * 31);
    }

    public final String toString() {
        return "ResourceCacheKey{sourceKey=" + this.f2231c + ", signature=" + this.d + ", width=" + this.e + ", height=" + this.f + ", decodedResourceClass=" + this.g + ", transformation='" + this.i + "', options=" + this.h + '}';
    }
}
