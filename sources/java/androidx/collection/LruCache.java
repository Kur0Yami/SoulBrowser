package androidx.collection;

import androidx.collection.internal.Lock;
import androidx.collection.internal.LruHashMap;
import com.google.android.gms.ads.RequestConfiguration;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0016\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u0001*\b\b\u0001\u0010\u0003*\u00020\u00012\u00020\u0001¨\u0006\u0004"}, d2 = {"Landroidx/collection/LruCache;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "K", "V", "collection"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nLruCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LruCache.kt\nandroidx/collection/LruCache\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 LockExt.kt\nandroidx/collection/internal/LockExtKt\n+ 4 Lock.jvm.kt\nandroidx/collection/internal/Lock\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,355:1\n1#2:356\n23#3,3:357\n23#3,3:361\n23#3,3:365\n23#3,3:369\n23#3,3:373\n23#3,3:377\n23#3,3:381\n23#3,3:385\n23#3,3:389\n23#3,3:393\n23#3,3:397\n23#3,3:401\n23#3,3:405\n23#3,3:409\n23#3,3:415\n26#4:360\n26#4:364\n26#4:368\n26#4:372\n26#4:376\n26#4:380\n26#4:384\n26#4:388\n26#4:392\n26#4:396\n26#4:400\n26#4:404\n26#4:408\n26#4:412\n26#4:418\n1855#5,2:413\n*S KotlinDebug\n*F\n+ 1 LruCache.kt\nandroidx/collection/LruCache\n*L\n65#1:357,3\n78#1:361,3\n95#1:365,3\n122#1:369,3\n151#1:373,3\n180#1:377,3\n255#1:381,3\n262#1:385,3\n268#1:389,3\n274#1:393,3\n279#1:397,3\n284#1:401,3\n289#1:405,3\n299#1:409,3\n308#1:415,3\n65#1:360\n78#1:364\n95#1:368\n122#1:372\n151#1:376\n180#1:380\n255#1:384\n262#1:388\n268#1:392\n274#1:396\n279#1:400\n284#1:404\n289#1:408\n299#1:412\n308#1:418\n300#1:413,2\n*E\n"})
/* loaded from: classes.dex */
public class LruCache<K, V> {

    /* renamed from: a, reason: collision with root package name */
    public final int f447a;
    public final LruHashMap b;

    /* renamed from: c, reason: collision with root package name */
    public final Lock f448c;
    public int d;
    public int e;
    public int f;

    /* JADX WARN: Type inference failed for: r2v3, types: [androidx.collection.internal.Lock, java.lang.Object] */
    public LruCache(int i) {
        this.f447a = i;
        if (i > 0) {
            this.b = new LruHashMap();
            this.f448c = new Object();
            return;
        }
        throw new IllegalArgumentException("maxSize <= 0");
    }

    public Object a(Object key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return null;
    }

    public void b(Object key, Object oldValue) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(oldValue, "oldValue");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Object c(Object key) {
        Object value;
        Intrinsics.checkNotNullParameter(key, "key");
        synchronized (this.f448c) {
            LruHashMap lruHashMap = this.b;
            lruHashMap.getClass();
            Intrinsics.checkNotNullParameter(key, "key");
            Object obj = lruHashMap.f478a.get(key);
            if (obj != null) {
                this.e++;
                return obj;
            }
            this.f++;
            Object value2 = a(key);
            if (value2 == null) {
                return null;
            }
            synchronized (this.f448c) {
                try {
                    LruHashMap lruHashMap2 = this.b;
                    lruHashMap2.getClass();
                    Intrinsics.checkNotNullParameter(key, "key");
                    Intrinsics.checkNotNullParameter(value2, "value");
                    value = lruHashMap2.f478a.put(key, value2);
                    if (value != null) {
                        LruHashMap lruHashMap3 = this.b;
                        lruHashMap3.getClass();
                        Intrinsics.checkNotNullParameter(key, "key");
                        Intrinsics.checkNotNullParameter(value, "value");
                        lruHashMap3.f478a.put(key, value);
                    } else {
                        this.d += e(key, value2);
                        Unit unit = Unit.INSTANCE;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (value != null) {
                b(key, value2);
                return value;
            }
            g(this.f447a);
            return value2;
        }
    }

    public final Object d(Object key, Object value) {
        Object put;
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        synchronized (this.f448c) {
            try {
                this.d += e(key, value);
                LruHashMap lruHashMap = this.b;
                lruHashMap.getClass();
                Intrinsics.checkNotNullParameter(key, "key");
                Intrinsics.checkNotNullParameter(value, "value");
                put = lruHashMap.f478a.put(key, value);
                if (put != null) {
                    this.d -= e(key, put);
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (put != null) {
            b(key, put);
        }
        g(this.f447a);
        return put;
    }

    public final int e(Object obj, Object obj2) {
        int f = f(obj, obj2);
        if (f >= 0) {
            return f;
        }
        throw new IllegalStateException(("Negative size: " + obj + '=' + obj2).toString());
    }

    public int f(Object key, Object value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        return 1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x006c, code lost:
    
        throw new java.lang.IllegalStateException("LruCache.sizeOf() is reporting inconsistent results!");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void g(int r6) {
        /*
            r5 = this;
        L0:
            androidx.collection.internal.Lock r0 = r5.f448c
            monitor-enter(r0)
            int r1 = r5.d     // Catch: java.lang.Throwable -> L16
            if (r1 < 0) goto L65
            androidx.collection.internal.LruHashMap r1 = r5.b     // Catch: java.lang.Throwable -> L16
            java.util.LinkedHashMap r1 = r1.f478a     // Catch: java.lang.Throwable -> L16
            boolean r1 = r1.isEmpty()     // Catch: java.lang.Throwable -> L16
            if (r1 == 0) goto L18
            int r1 = r5.d     // Catch: java.lang.Throwable -> L16
            if (r1 != 0) goto L65
            goto L18
        L16:
            r6 = move-exception
            goto L6d
        L18:
            int r1 = r5.d     // Catch: java.lang.Throwable -> L16
            if (r1 <= r6) goto L63
            androidx.collection.internal.LruHashMap r1 = r5.b     // Catch: java.lang.Throwable -> L16
            java.util.LinkedHashMap r1 = r1.f478a     // Catch: java.lang.Throwable -> L16
            boolean r1 = r1.isEmpty()     // Catch: java.lang.Throwable -> L16
            if (r1 == 0) goto L27
            goto L63
        L27:
            androidx.collection.internal.LruHashMap r1 = r5.b     // Catch: java.lang.Throwable -> L16
            java.util.LinkedHashMap r1 = r1.f478a     // Catch: java.lang.Throwable -> L16
            java.util.Set r1 = r1.entrySet()     // Catch: java.lang.Throwable -> L16
            java.lang.String r2 = "map.entries"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r2)     // Catch: java.lang.Throwable -> L16
            java.lang.Object r1 = kotlin.collections.CollectionsKt.j(r1)     // Catch: java.lang.Throwable -> L16
            java.util.Map$Entry r1 = (java.util.Map.Entry) r1     // Catch: java.lang.Throwable -> L16
            if (r1 != 0) goto L3e
            monitor-exit(r0)
            return
        L3e:
            java.lang.Object r2 = r1.getKey()     // Catch: java.lang.Throwable -> L16
            java.lang.Object r1 = r1.getValue()     // Catch: java.lang.Throwable -> L16
            androidx.collection.internal.LruHashMap r3 = r5.b     // Catch: java.lang.Throwable -> L16
            r3.getClass()     // Catch: java.lang.Throwable -> L16
            java.lang.String r4 = "key"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r4)     // Catch: java.lang.Throwable -> L16
            java.util.LinkedHashMap r3 = r3.f478a     // Catch: java.lang.Throwable -> L16
            r3.remove(r2)     // Catch: java.lang.Throwable -> L16
            int r3 = r5.d     // Catch: java.lang.Throwable -> L16
            int r4 = r5.e(r2, r1)     // Catch: java.lang.Throwable -> L16
            int r3 = r3 - r4
            r5.d = r3     // Catch: java.lang.Throwable -> L16
            monitor-exit(r0)
            r5.b(r2, r1)
            goto L0
        L63:
            monitor-exit(r0)
            return
        L65:
            java.lang.String r6 = "LruCache.sizeOf() is reporting inconsistent results!"
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L16
            r1.<init>(r6)     // Catch: java.lang.Throwable -> L16
            throw r1     // Catch: java.lang.Throwable -> L16
        L6d:
            monitor-exit(r0)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.collection.LruCache.g(int):void");
    }

    public final String toString() {
        int i;
        String str;
        synchronized (this.f448c) {
            try {
                int i2 = this.e;
                int i3 = this.f + i2;
                if (i3 != 0) {
                    i = (i2 * 100) / i3;
                } else {
                    i = 0;
                }
                str = "LruCache[maxSize=" + this.f447a + ",hits=" + this.e + ",misses=" + this.f + ",hitRate=" + i + "%]";
            } catch (Throwable th) {
                throw th;
            }
        }
        return str;
    }
}
