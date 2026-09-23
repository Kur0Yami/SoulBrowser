package com.mycompany.app.compress;

import androidx.collection.LruCache;

/* loaded from: classes3.dex */
public class CompressCache {
    public static CompressCache b;

    /* renamed from: a, reason: collision with root package name */
    public LruCache f12871a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.compress.CompressCache$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 extends LruCache<String, BitmapInfo> {
        @Override // androidx.collection.LruCache
        public final /* bridge */ /* synthetic */ int f(Object obj, Object obj2) {
            return 4;
        }
    }

    /* loaded from: classes3.dex */
    public static class BitmapInfo {

        /* renamed from: a, reason: collision with root package name */
        public final int f12872a;
        public final int b;

        /* renamed from: c, reason: collision with root package name */
        public final int f12873c;

        public BitmapInfo(int i, int i2, int i3) {
            this.f12872a = i;
            this.b = i2;
            this.f12873c = i3;
        }
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [com.mycompany.app.compress.CompressCache, java.lang.Object] */
    public static CompressCache a() {
        if (b == null) {
            synchronized (CompressCache.class) {
                try {
                    if (b == null) {
                        ?? obj = new Object();
                        obj.f12871a = new LruCache(Math.round(((1 / 100.0f) * ((float) Runtime.getRuntime().maxMemory())) / 1024.0f));
                        b = obj;
                    }
                } finally {
                }
            }
        }
        return b;
    }
}
