package com.bumptech.glide.load.engine.bitmap_recycle;

import android.graphics.Bitmap;
import android.os.Build;
import android.util.Log;
import com.bumptech.glide.util.Util;
import j$.util.DesugarCollections;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes.dex */
public class LruBitmapPool implements BitmapPool {
    public static final Bitmap.Config j = Bitmap.Config.ARGB_8888;

    /* renamed from: a, reason: collision with root package name */
    public final SizeConfigStrategy f2244a;
    public final Set b;

    /* renamed from: c, reason: collision with root package name */
    public final NullBitmapTracker f2245c;
    public final long d;
    public long e;
    public int f;
    public int g;
    public int h;
    public int i;

    /* loaded from: classes.dex */
    public interface BitmapTracker {
    }

    /* loaded from: classes.dex */
    public static final class NullBitmapTracker implements BitmapTracker {
    }

    /* loaded from: classes.dex */
    public static class ThrowingBitmapTracker implements BitmapTracker {
    }

    /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.Object, com.bumptech.glide.load.engine.bitmap_recycle.LruBitmapPool$NullBitmapTracker] */
    public LruBitmapPool(long j2) {
        Bitmap.Config config;
        SizeConfigStrategy sizeConfigStrategy = new SizeConfigStrategy();
        HashSet hashSet = new HashSet(Arrays.asList(Bitmap.Config.values()));
        int i = Build.VERSION.SDK_INT;
        hashSet.add(null);
        if (i >= 26) {
            config = Bitmap.Config.HARDWARE;
            hashSet.remove(config);
        }
        Set unmodifiableSet = DesugarCollections.unmodifiableSet(hashSet);
        this.d = j2;
        this.f2244a = sizeConfigStrategy;
        this.b = unmodifiableSet;
        this.f2245c = new Object();
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool
    public final void a(int i) {
        if (Log.isLoggable("LruBitmapPool", 3)) {
            Log.d("LruBitmapPool", "trimMemory, level=" + i);
        }
        if (i < 40 && i < 20) {
            if (i < 20 && i != 15) {
                return;
            }
            h(this.d / 2);
            return;
        }
        b();
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool
    public final void b() {
        if (Log.isLoggable("LruBitmapPool", 3)) {
            Log.d("LruBitmapPool", "clearMemory");
        }
        h(0L);
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool
    public final Bitmap c(int i, int i2, Bitmap.Config config) {
        Bitmap g = g(i, i2, config);
        if (g == null) {
            if (config == null) {
                config = j;
            }
            return Bitmap.createBitmap(i, i2, config);
        }
        return g;
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool
    public final synchronized void d(Bitmap bitmap) {
        try {
            if (bitmap != null) {
                if (!bitmap.isRecycled()) {
                    if (bitmap.isMutable()) {
                        this.f2244a.getClass();
                        if (Util.c(bitmap) <= this.d && this.b.contains(bitmap.getConfig())) {
                            this.f2244a.getClass();
                            int c2 = Util.c(bitmap);
                            this.f2244a.f(bitmap);
                            this.f2245c.getClass();
                            this.h++;
                            this.e += c2;
                            if (Log.isLoggable("LruBitmapPool", 2)) {
                                StringBuilder sb = new StringBuilder("Put bitmap in pool=");
                                this.f2244a.getClass();
                                sb.append(SizeConfigStrategy.c(Util.c(bitmap), bitmap.getConfig()));
                                Log.v("LruBitmapPool", sb.toString());
                            }
                            if (Log.isLoggable("LruBitmapPool", 2)) {
                                f();
                            }
                            h(this.d);
                            return;
                        }
                    }
                    if (Log.isLoggable("LruBitmapPool", 2)) {
                        StringBuilder sb2 = new StringBuilder("Reject bitmap from pool, bitmap: ");
                        this.f2244a.getClass();
                        sb2.append(SizeConfigStrategy.c(Util.c(bitmap), bitmap.getConfig()));
                        sb2.append(", is mutable: ");
                        sb2.append(bitmap.isMutable());
                        sb2.append(", is allowed config: ");
                        sb2.append(this.b.contains(bitmap.getConfig()));
                        Log.v("LruBitmapPool", sb2.toString());
                    }
                    bitmap.recycle();
                    return;
                }
                throw new IllegalStateException("Cannot pool recycled bitmap");
            }
            throw new NullPointerException("Bitmap must not be null");
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool
    public final Bitmap e(int i, int i2, Bitmap.Config config) {
        Bitmap g = g(i, i2, config);
        if (g != null) {
            g.eraseColor(0);
            return g;
        }
        if (config == null) {
            config = j;
        }
        return Bitmap.createBitmap(i, i2, config);
    }

    public final void f() {
        Log.v("LruBitmapPool", "Hits=" + this.f + ", misses=" + this.g + ", puts=" + this.h + ", evictions=" + this.i + ", currentSize=" + this.e + ", maxSize=" + this.d + "\nStrategy=" + this.f2244a);
    }

    public final synchronized Bitmap g(int i, int i2, Bitmap.Config config) {
        Bitmap.Config config2;
        Bitmap.Config config3;
        Bitmap b;
        try {
            if (Build.VERSION.SDK_INT >= 26) {
                config2 = Bitmap.Config.HARDWARE;
                if (config == config2) {
                    throw new IllegalArgumentException("Cannot create a mutable Bitmap with config: " + config + ". Consider setting Downsampler#ALLOW_HARDWARE_CONFIG to false in your RequestOptions and/or in GlideBuilder.setDefaultRequestOptions");
                }
            }
            SizeConfigStrategy sizeConfigStrategy = this.f2244a;
            if (config != null) {
                config3 = config;
            } else {
                config3 = j;
            }
            b = sizeConfigStrategy.b(i, i2, config3);
            if (b == null) {
                if (Log.isLoggable("LruBitmapPool", 3)) {
                    Log.d("LruBitmapPool", "Missing bitmap=" + this.f2244a.e(i, i2, config));
                }
                this.g++;
            } else {
                this.f++;
                long j2 = this.e;
                this.f2244a.getClass();
                this.e = j2 - Util.c(b);
                this.f2245c.getClass();
                b.setHasAlpha(true);
                b.setPremultiplied(true);
            }
            if (Log.isLoggable("LruBitmapPool", 2)) {
                Log.v("LruBitmapPool", "Get bitmap=" + this.f2244a.e(i, i2, config));
            }
            if (Log.isLoggable("LruBitmapPool", 2)) {
                f();
            }
        } catch (Throwable th) {
            throw th;
        }
        return b;
    }

    public final synchronized void h(long j2) {
        while (this.e > j2) {
            try {
                SizeConfigStrategy sizeConfigStrategy = this.f2244a;
                Bitmap bitmap = (Bitmap) sizeConfigStrategy.b.c();
                if (bitmap != null) {
                    sizeConfigStrategy.a(Integer.valueOf(Util.c(bitmap)), bitmap);
                }
                if (bitmap == null) {
                    if (Log.isLoggable("LruBitmapPool", 5)) {
                        Log.w("LruBitmapPool", "Size mismatch, resetting");
                        f();
                    }
                    this.e = 0L;
                    return;
                }
                this.f2245c.getClass();
                long j3 = this.e;
                this.f2244a.getClass();
                this.e = j3 - Util.c(bitmap);
                this.i++;
                if (Log.isLoggable("LruBitmapPool", 3)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Evicting bitmap=");
                    this.f2244a.getClass();
                    sb.append(SizeConfigStrategy.c(Util.c(bitmap), bitmap.getConfig()));
                    Log.d("LruBitmapPool", sb.toString());
                }
                if (Log.isLoggable("LruBitmapPool", 2)) {
                    f();
                }
                bitmap.recycle();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
