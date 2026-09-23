package com.bumptech.glide.load;

import androidx.collection.SimpleArrayMap;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.util.CachedHashCodeArrayMap;
import java.security.MessageDigest;

/* loaded from: classes.dex */
public final class Options implements Key {
    public final CachedHashCodeArrayMap b = new SimpleArrayMap(0);

    @Override // com.bumptech.glide.load.Key
    public final void a(MessageDigest messageDigest) {
        int i = 0;
        while (true) {
            CachedHashCodeArrayMap cachedHashCodeArrayMap = this.b;
            if (i < cachedHashCodeArrayMap.g) {
                Option option = (Option) cachedHashCodeArrayMap.f(i);
                Object j = this.b.j(i);
                Option.CacheKeyUpdater cacheKeyUpdater = option.b;
                if (option.d == null) {
                    option.d = option.f2162c.getBytes(Key.f2160a);
                }
                cacheKeyUpdater.a(option.d, j, messageDigest);
                i++;
            } else {
                return;
            }
        }
    }

    public final Object c(Option option) {
        CachedHashCodeArrayMap cachedHashCodeArrayMap = this.b;
        if (cachedHashCodeArrayMap.containsKey(option)) {
            return cachedHashCodeArrayMap.get(option);
        }
        return option.f2161a;
    }

    @Override // com.bumptech.glide.load.Key
    public final boolean equals(Object obj) {
        if (obj instanceof Options) {
            return this.b.equals(((Options) obj).b);
        }
        return false;
    }

    @Override // com.bumptech.glide.load.Key
    public final int hashCode() {
        return this.b.hashCode();
    }

    public final String toString() {
        return "Options{values=" + this.b + '}';
    }
}
