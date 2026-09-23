package com.nostra13.universalimageloader.cache.memory.impl;

import android.graphics.Bitmap;
import com.nostra13.universalimageloader.cache.memory.MemoryCache;
import java.util.LinkedHashMap;
import java.util.Locale;

/* loaded from: classes3.dex */
public class LruMemoryCache implements MemoryCache {

    /* renamed from: a, reason: collision with root package name */
    public final LinkedHashMap f20953a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public int f20954c;

    public LruMemoryCache(int i) {
        if (i > 0) {
            this.b = i;
            this.f20953a = new LinkedHashMap(0, 0.75f, true);
            return;
        }
        throw new IllegalArgumentException("maxSize <= 0");
    }

    public final Bitmap a(String str) {
        Bitmap bitmap;
        if (str == null) {
            return null;
        }
        synchronized (this) {
            bitmap = (Bitmap) this.f20953a.get(str);
        }
        return bitmap;
    }

    public final boolean b(String str, Bitmap bitmap) {
        if (str != null && bitmap != null) {
            synchronized (this) {
                try {
                    this.f20954c = (bitmap.getHeight() * bitmap.getRowBytes()) + this.f20954c;
                    Bitmap bitmap2 = (Bitmap) this.f20953a.put(str, bitmap);
                    if (bitmap2 != null) {
                        this.f20954c -= bitmap2.getHeight() * bitmap2.getRowBytes();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            d(this.b);
            return true;
        }
        return false;
    }

    public final Bitmap c(String str) {
        Bitmap bitmap;
        if (str == null) {
            return null;
        }
        synchronized (this) {
            try {
                bitmap = (Bitmap) this.f20953a.remove(str);
                if (bitmap != null) {
                    this.f20954c -= bitmap.getHeight() * bitmap.getRowBytes();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return bitmap;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0076, code lost:
    
        throw new java.lang.IllegalStateException(getClass().getName() + ".sizeOf() is reporting inconsistent results!");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void d(int r4) {
        /*
            r3 = this;
        L0:
            monitor-enter(r3)
            int r0 = r3.f20954c     // Catch: java.lang.Throwable -> L12
            if (r0 < 0) goto L58
            java.util.LinkedHashMap r0 = r3.f20953a     // Catch: java.lang.Throwable -> L12
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> L12
            if (r0 == 0) goto L14
            int r0 = r3.f20954c     // Catch: java.lang.Throwable -> L12
            if (r0 != 0) goto L58
            goto L14
        L12:
            r4 = move-exception
            goto L77
        L14:
            int r0 = r3.f20954c     // Catch: java.lang.Throwable -> L12
            if (r0 <= r4) goto L56
            java.util.LinkedHashMap r0 = r3.f20953a     // Catch: java.lang.Throwable -> L12
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> L12
            if (r0 == 0) goto L21
            goto L56
        L21:
            java.util.LinkedHashMap r0 = r3.f20953a     // Catch: java.lang.Throwable -> L12
            java.util.Set r0 = r0.entrySet()     // Catch: java.lang.Throwable -> L12
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Throwable -> L12
            java.lang.Object r0 = r0.next()     // Catch: java.lang.Throwable -> L12
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0     // Catch: java.lang.Throwable -> L12
            if (r0 != 0) goto L35
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L12
            return
        L35:
            java.lang.Object r1 = r0.getKey()     // Catch: java.lang.Throwable -> L12
            java.lang.String r1 = (java.lang.String) r1     // Catch: java.lang.Throwable -> L12
            java.lang.Object r0 = r0.getValue()     // Catch: java.lang.Throwable -> L12
            android.graphics.Bitmap r0 = (android.graphics.Bitmap) r0     // Catch: java.lang.Throwable -> L12
            java.util.LinkedHashMap r2 = r3.f20953a     // Catch: java.lang.Throwable -> L12
            r2.remove(r1)     // Catch: java.lang.Throwable -> L12
            int r1 = r3.f20954c     // Catch: java.lang.Throwable -> L12
            int r2 = r0.getRowBytes()     // Catch: java.lang.Throwable -> L12
            int r0 = r0.getHeight()     // Catch: java.lang.Throwable -> L12
            int r0 = r0 * r2
            int r1 = r1 - r0
            r3.f20954c = r1     // Catch: java.lang.Throwable -> L12
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L12
            goto L0
        L56:
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L12
            return
        L58:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L12
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L12
            r0.<init>()     // Catch: java.lang.Throwable -> L12
            java.lang.Class r1 = r3.getClass()     // Catch: java.lang.Throwable -> L12
            java.lang.String r1 = r1.getName()     // Catch: java.lang.Throwable -> L12
            r0.append(r1)     // Catch: java.lang.Throwable -> L12
            java.lang.String r1 = ".sizeOf() is reporting inconsistent results!"
            r0.append(r1)     // Catch: java.lang.Throwable -> L12
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> L12
            r4.<init>(r0)     // Catch: java.lang.Throwable -> L12
            throw r4     // Catch: java.lang.Throwable -> L12
        L77:
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L12
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.nostra13.universalimageloader.cache.memory.impl.LruMemoryCache.d(int):void");
    }

    public final synchronized String toString() {
        Locale locale = Locale.US;
        return "LruCache[maxSize=" + this.b + "]";
    }
}
