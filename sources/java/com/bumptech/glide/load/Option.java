package com.bumptech.glide.load;

import android.support.v4.media.a;
import android.text.TextUtils;
import java.security.MessageDigest;

/* loaded from: classes.dex */
public final class Option<T> {
    public static final CacheKeyUpdater e = new Object();

    /* renamed from: a, reason: collision with root package name */
    public final Object f2161a;
    public final CacheKeyUpdater b;

    /* renamed from: c, reason: collision with root package name */
    public final String f2162c;
    public volatile byte[] d;

    /* renamed from: com.bumptech.glide.load.Option$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements CacheKeyUpdater<Object> {
        @Override // com.bumptech.glide.load.Option.CacheKeyUpdater
        public final void a(byte[] bArr, Object obj, MessageDigest messageDigest) {
        }
    }

    /* loaded from: classes.dex */
    public interface CacheKeyUpdater<T> {
        void a(byte[] bArr, Object obj, MessageDigest messageDigest);
    }

    public Option(String str, Object obj, CacheKeyUpdater cacheKeyUpdater) {
        if (!TextUtils.isEmpty(str)) {
            this.f2162c = str;
            this.f2161a = obj;
            this.b = cacheKeyUpdater;
            return;
        }
        throw new IllegalArgumentException("Must not be null or empty");
    }

    public static Option a(Object obj, String str) {
        return new Option(str, obj, e);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof Option) {
            return this.f2162c.equals(((Option) obj).f2162c);
        }
        return false;
    }

    public final int hashCode() {
        return this.f2162c.hashCode();
    }

    public final String toString() {
        return a.p(new StringBuilder("Option{key='"), this.f2162c, "'}");
    }
}
