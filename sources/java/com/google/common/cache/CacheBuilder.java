package com.google.common.cache;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Ascii;
import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;
import com.google.common.base.Ticker;
import com.google.common.cache.AbstractCache;
import com.google.common.cache.LocalCache;
import java.util.logging.Logger;

@GwtCompatible
/* loaded from: classes3.dex */
public final class CacheBuilder<K, V> {
    public static final Supplier d = Suppliers.a(new Object());
    public static final Ticker e = new Object();

    /* renamed from: a, reason: collision with root package name */
    public LocalCache.Strength.AnonymousClass3 f12198a;
    public long b;

    /* renamed from: c, reason: collision with root package name */
    public Supplier f12199c;

    /* renamed from: com.google.common.cache.CacheBuilder$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass2 implements Supplier<AbstractCache.StatsCounter> {
        @Override // com.google.common.base.Supplier
        public final Object get() {
            return new AbstractCache.SimpleStatsCounter();
        }
    }

    /* renamed from: com.google.common.cache.CacheBuilder$3, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass3 extends Ticker {
        @Override // com.google.common.base.Ticker
        public final long a() {
            return 0L;
        }
    }

    /* loaded from: classes3.dex */
    public static final class LoggerHolder {
        static {
            Logger.getLogger(CacheBuilder.class.getName());
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static final class NullListener implements RemovalListener<Object, Object> {

        /* renamed from: c, reason: collision with root package name */
        public static final NullListener f12200c;
        public static final /* synthetic */ NullListener[] f;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, com.google.common.cache.CacheBuilder$NullListener] */
        static {
            ?? r0 = new Enum("INSTANCE", 0);
            f12200c = r0;
            f = new NullListener[]{r0};
        }

        public static NullListener valueOf(String str) {
            return (NullListener) Enum.valueOf(NullListener.class, str);
        }

        public static NullListener[] values() {
            return (NullListener[]) f.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static final class OneWeigher implements Weigher<Object, Object> {

        /* renamed from: c, reason: collision with root package name */
        public static final OneWeigher f12201c;
        public static final /* synthetic */ OneWeigher[] f;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, com.google.common.cache.CacheBuilder$OneWeigher] */
        static {
            ?? r0 = new Enum("INSTANCE", 0);
            f12201c = r0;
            f = new OneWeigher[]{r0};
        }

        public static OneWeigher valueOf(String str) {
            return (OneWeigher) Enum.valueOf(OneWeigher.class, str);
        }

        public static OneWeigher[] values() {
            return (OneWeigher[]) f.clone();
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.google.common.cache.CacheBuilder] */
    public static CacheBuilder b() {
        ?? obj = new Object();
        obj.b = -1L;
        obj.f12199c = d;
        return obj;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.common.cache.LocalCache$LocalManualCache, com.google.common.cache.LoadingCache] */
    public final LoadingCache a(CacheLoader cacheLoader) {
        return new LocalCache.LocalManualCache(new LocalCache(this, cacheLoader));
    }

    public final void c() {
        boolean z;
        LocalCache.Strength.AnonymousClass3 anonymousClass3 = this.f12198a;
        if (anonymousClass3 == null) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.k("Key strength was already set to %s", anonymousClass3, z);
        this.f12198a = LocalCache.Strength.f;
    }

    public final String toString() {
        MoreObjects.ToStringHelper b = MoreObjects.b(this);
        if (this.b != -1) {
            b.b(android.support.v4.media.a.o(new StringBuilder(), this.b, "ns"), "expireAfterWrite");
        }
        LocalCache.Strength.AnonymousClass3 anonymousClass3 = this.f12198a;
        if (anonymousClass3 != null) {
            b.b(Ascii.c(anonymousClass3.toString()), "keyStrength");
        }
        return b.toString();
    }

    /* renamed from: com.google.common.cache.CacheBuilder$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 implements AbstractCache.StatsCounter {
        @Override // com.google.common.cache.AbstractCache.StatsCounter
        public final void a() {
        }

        @Override // com.google.common.cache.AbstractCache.StatsCounter
        public final void c(long j) {
        }

        @Override // com.google.common.cache.AbstractCache.StatsCounter
        public final void d(long j) {
        }

        @Override // com.google.common.cache.AbstractCache.StatsCounter
        public final void b() {
        }

        @Override // com.google.common.cache.AbstractCache.StatsCounter
        public final void e() {
        }
    }
}
