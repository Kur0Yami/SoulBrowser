package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.Key;
import java.security.MessageDigest;

/* loaded from: classes.dex */
final class DataCacheKey implements Key {
    public final Key b;

    /* renamed from: c, reason: collision with root package name */
    public final Key f2187c;

    public DataCacheKey(Key key, Key key2) {
        this.b = key;
        this.f2187c = key2;
    }

    @Override // com.bumptech.glide.load.Key
    public final void a(MessageDigest messageDigest) {
        this.b.a(messageDigest);
        this.f2187c.a(messageDigest);
    }

    @Override // com.bumptech.glide.load.Key
    public final boolean equals(Object obj) {
        if (obj instanceof DataCacheKey) {
            DataCacheKey dataCacheKey = (DataCacheKey) obj;
            if (this.b.equals(dataCacheKey.b) && this.f2187c.equals(dataCacheKey.f2187c)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.bumptech.glide.load.Key
    public final int hashCode() {
        return this.f2187c.hashCode() + (this.b.hashCode() * 31);
    }

    public final String toString() {
        return "DataCacheKey{sourceKey=" + this.b + ", signature=" + this.f2187c + '}';
    }
}
