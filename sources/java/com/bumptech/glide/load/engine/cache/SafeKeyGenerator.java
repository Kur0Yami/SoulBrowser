package com.bumptech.glide.load.engine.cache;

import androidx.core.util.Pools;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.util.LruCache;
import com.bumptech.glide.util.Preconditions;
import com.bumptech.glide.util.Util;
import com.bumptech.glide.util.pool.FactoryPools;
import com.bumptech.glide.util.pool.StateVerifier;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import kotlin.UByte;

/* loaded from: classes.dex */
public class SafeKeyGenerator {

    /* renamed from: a, reason: collision with root package name */
    public final LruCache f2265a = new LruCache(1000);
    public final Pools.Pool b = FactoryPools.a(10, new Object());

    /* renamed from: com.bumptech.glide.load.engine.cache.SafeKeyGenerator$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements FactoryPools.Factory<PoolableDigestContainer> {
        @Override // com.bumptech.glide.util.pool.FactoryPools.Factory
        public final Object a() {
            try {
                return new PoolableDigestContainer(MessageDigest.getInstance("SHA-256"));
            } catch (NoSuchAlgorithmException e) {
                throw new RuntimeException(e);
            }
        }
    }

    /* loaded from: classes.dex */
    public static final class PoolableDigestContainer implements FactoryPools.Poolable {

        /* renamed from: c, reason: collision with root package name */
        public final MessageDigest f2266c;
        public final StateVerifier f = StateVerifier.a();

        public PoolableDigestContainer(MessageDigest messageDigest) {
            this.f2266c = messageDigest;
        }

        @Override // com.bumptech.glide.util.pool.FactoryPools.Poolable
        public final StateVerifier b() {
            return this.f;
        }
    }

    public final String a(Key key) {
        String str;
        PoolableDigestContainer poolableDigestContainer = (PoolableDigestContainer) this.b.b();
        Preconditions.c(poolableDigestContainer, "Argument must not be null");
        try {
            key.a(poolableDigestContainer.f2266c);
            byte[] digest = poolableDigestContainer.f2266c.digest();
            char[] cArr = Util.b;
            synchronized (cArr) {
                for (int i = 0; i < digest.length; i++) {
                    byte b = digest[i];
                    int i2 = b & UByte.MAX_VALUE;
                    int i3 = i * 2;
                    char[] cArr2 = Util.f2497a;
                    cArr[i3] = cArr2[i2 >>> 4];
                    cArr[i3 + 1] = cArr2[b & 15];
                }
                str = new String(cArr);
            }
            return str;
        } finally {
            this.b.a(poolableDigestContainer);
        }
    }

    public final String b(Key key) {
        String str;
        synchronized (this.f2265a) {
            str = (String) this.f2265a.f(key);
        }
        if (str == null) {
            str = a(key);
        }
        synchronized (this.f2265a) {
            this.f2265a.i(key, str);
        }
        return str;
    }
}
