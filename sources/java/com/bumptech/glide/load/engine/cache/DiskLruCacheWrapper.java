package com.bumptech.glide.load.engine.cache;

import android.util.Log;
import com.bumptech.glide.disklrucache.DiskLruCache;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.engine.cache.DiskCache;
import com.bumptech.glide.load.engine.cache.DiskCacheWriteLocker;
import java.io.File;
import java.io.IOException;

/* loaded from: classes.dex */
public class DiskLruCacheWrapper implements DiskCache {
    public final File b;
    public DiskLruCache e;
    public final DiskCacheWriteLocker d = new DiskCacheWriteLocker();

    /* renamed from: c, reason: collision with root package name */
    public final long f2257c = 262144000;

    /* renamed from: a, reason: collision with root package name */
    public final SafeKeyGenerator f2256a = new SafeKeyGenerator();

    public DiskLruCacheWrapper(File file) {
        this.b = file;
    }

    @Override // com.bumptech.glide.load.engine.cache.DiskCache
    public final void a(Key key, DiskCache.Writer writer) {
        DiskCacheWriteLocker.WriteLock writeLock;
        boolean z;
        String b = this.f2256a.b(key);
        DiskCacheWriteLocker diskCacheWriteLocker = this.d;
        synchronized (diskCacheWriteLocker) {
            try {
                writeLock = (DiskCacheWriteLocker.WriteLock) diskCacheWriteLocker.f2252a.get(b);
                if (writeLock == null) {
                    writeLock = diskCacheWriteLocker.b.a();
                    diskCacheWriteLocker.f2252a.put(b, writeLock);
                }
                writeLock.b++;
            } catch (Throwable th) {
                throw th;
            }
        }
        writeLock.f2253a.lock();
        try {
            if (Log.isLoggable("DiskLruCacheWrapper", 2)) {
                Log.v("DiskLruCacheWrapper", "Put: Obtained: " + b + " for for Key: " + key);
            }
            try {
                DiskLruCache c2 = c();
                if (c2.j(b) == null) {
                    DiskLruCache.Editor f = c2.f(b);
                    if (f != null) {
                        try {
                            if (writer.a(f.b())) {
                                DiskLruCache.a(DiskLruCache.this, f, true);
                                f.f2100c = true;
                            }
                            if (!z) {
                                try {
                                    f.a();
                                } catch (IOException unused) {
                                }
                            }
                        } finally {
                            if (!f.f2100c) {
                                try {
                                    f.a();
                                } catch (IOException unused2) {
                                }
                            }
                        }
                    } else {
                        throw new IllegalStateException("Had two simultaneous puts for: ".concat(b));
                    }
                }
            } catch (IOException e) {
                if (Log.isLoggable("DiskLruCacheWrapper", 5)) {
                    Log.w("DiskLruCacheWrapper", "Unable to put to disk cache", e);
                }
            }
        } finally {
            this.d.a(b);
        }
    }

    @Override // com.bumptech.glide.load.engine.cache.DiskCache
    public final File b(Key key) {
        String b = this.f2256a.b(key);
        if (Log.isLoggable("DiskLruCacheWrapper", 2)) {
            Log.v("DiskLruCacheWrapper", "Get: Obtained: " + b + " for for Key: " + key);
        }
        try {
            DiskLruCache.Value j = c().j(b);
            if (j != null) {
                return j.f2103a[0];
            }
            return null;
        } catch (IOException e) {
            if (Log.isLoggable("DiskLruCacheWrapper", 5)) {
                Log.w("DiskLruCacheWrapper", "Unable to get from disk cache", e);
                return null;
            }
            return null;
        }
    }

    public final synchronized DiskLruCache c() {
        try {
            if (this.e == null) {
                this.e = DiskLruCache.l(this.b, this.f2257c);
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.e;
    }

    @Override // com.bumptech.glide.load.engine.cache.DiskCache
    public final synchronized void clear() {
        try {
            try {
                c().d();
            } catch (IOException e) {
                if (Log.isLoggable("DiskLruCacheWrapper", 5)) {
                    Log.w("DiskLruCacheWrapper", "Unable to clear disk cache or disk cache cleared externally", e);
                }
            }
        } finally {
            d();
        }
    }

    public final synchronized void d() {
        this.e = null;
    }
}
