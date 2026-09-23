package com.nostra13.universalimageloader.cache.disc.impl.ext;

import android.graphics.Bitmap;
import com.nostra13.universalimageloader.cache.disc.DiskCache;
import com.nostra13.universalimageloader.cache.disc.impl.ext.DiskLruCache;
import com.nostra13.universalimageloader.cache.disc.naming.FileNameGenerator;
import com.nostra13.universalimageloader.utils.IoUtils;
import com.nostra13.universalimageloader.utils.L;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import kotlin.jvm.internal.LongCompanionObject;

/* loaded from: classes3.dex */
public class LruDiskCache implements DiskCache {
    public static final Bitmap.CompressFormat e = Bitmap.CompressFormat.PNG;

    /* renamed from: a, reason: collision with root package name */
    public DiskLruCache f20948a;
    public final File b;

    /* renamed from: c, reason: collision with root package name */
    public final FileNameGenerator f20949c;
    public final Bitmap.CompressFormat d = e;

    public LruDiskCache(File file, File file2, FileNameGenerator fileNameGenerator, long j) {
        if (file != null) {
            if (j >= 0) {
                if (fileNameGenerator != null) {
                    j = j == 0 ? LongCompanionObject.MAX_VALUE : j;
                    this.b = file2;
                    this.f20949c = fileNameGenerator;
                    d(file, file2, j, Integer.MAX_VALUE);
                    return;
                }
                throw new IllegalArgumentException("fileNameGenerator argument must be not null");
            }
            throw new IllegalArgumentException("cacheMaxSize argument must be positive number");
        }
        throw new IllegalArgumentException("cacheDir argument must be not null");
    }

    @Override // com.nostra13.universalimageloader.cache.disc.DiskCache
    public final boolean a(String str, Bitmap bitmap) {
        DiskLruCache.Editor e2 = this.f20948a.e(this.f20949c.a(str));
        if (e2 == null) {
            return false;
        }
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(e2.c(), 32768);
        try {
            boolean compress = bitmap.compress(this.d, 100, bufferedOutputStream);
            if (compress) {
                e2.b();
                return compress;
            }
            e2.a();
            return compress;
        } finally {
            IoUtils.a(bufferedOutputStream);
        }
    }

    @Override // com.nostra13.universalimageloader.cache.disc.DiskCache
    public final void b() {
        long j;
        try {
            DiskLruCache diskLruCache = this.f20948a;
            diskLruCache.b(diskLruCache.k / 3, diskLruCache.j / 3);
        } catch (IOException e2) {
            L.a(e2);
        }
        try {
            DiskLruCache diskLruCache2 = this.f20948a;
            File file = diskLruCache2.f20940c;
            File file2 = this.b;
            synchronized (diskLruCache2) {
                j = diskLruCache2.j;
            }
            d(file, file2, j, this.f20948a.i());
        } catch (IOException e3) {
            L.a(e3);
        }
    }

    @Override // com.nostra13.universalimageloader.cache.disc.DiskCache
    public final boolean c(String str, InputStream inputStream, IoUtils.CopyListener copyListener) {
        DiskLruCache.Editor e2 = this.f20948a.e(this.f20949c.a(str));
        if (e2 == null) {
            return false;
        }
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(e2.c(), 32768);
        try {
            boolean b = IoUtils.b(inputStream, bufferedOutputStream, copyListener);
            IoUtils.a(bufferedOutputStream);
            if (b) {
                e2.b();
                return b;
            }
            e2.a();
            return b;
        } catch (Throwable th) {
            IoUtils.a(bufferedOutputStream);
            e2.a();
            throw th;
        }
    }

    @Override // com.nostra13.universalimageloader.cache.disc.DiskCache
    public final void clear() {
        long j;
        try {
            DiskLruCache diskLruCache = this.f20948a;
            diskLruCache.b(0, 0L);
            Util.a(diskLruCache.f20940c);
        } catch (Exception e2) {
            L.a(e2);
        }
        try {
            DiskLruCache diskLruCache2 = this.f20948a;
            File file = diskLruCache2.f20940c;
            File file2 = this.b;
            synchronized (diskLruCache2) {
                j = diskLruCache2.j;
            }
            d(file, file2, j, this.f20948a.i());
        } catch (Exception e3) {
            L.a(e3);
        }
    }

    public final void d(File file, File file2, long j, int i) {
        LruDiskCache lruDiskCache;
        try {
            this.f20948a = DiskLruCache.k(file, j, i);
        } catch (IOException e2) {
            L.a(e2);
            if (file2 != null) {
                lruDiskCache = this;
                lruDiskCache.d(file2, null, j, i);
            } else {
                lruDiskCache = this;
            }
            if (lruDiskCache.f20948a != null) {
            } else {
                throw e2;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:18:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0034  */
    /* JADX WARN: Type inference failed for: r5v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3, types: [com.nostra13.universalimageloader.cache.disc.impl.ext.DiskLruCache$Snapshot] */
    @Override // com.nostra13.universalimageloader.cache.disc.DiskCache
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.io.File get(java.lang.String r5) {
        /*
            r4 = this;
            r0 = 0
            com.nostra13.universalimageloader.cache.disc.impl.ext.DiskLruCache r1 = r4.f20948a     // Catch: java.lang.Throwable -> L1d java.io.IOException -> L22
            com.nostra13.universalimageloader.cache.disc.naming.FileNameGenerator r2 = r4.f20949c     // Catch: java.lang.Throwable -> L1d java.io.IOException -> L25
            java.lang.String r5 = r2.a(r5)     // Catch: java.lang.Throwable -> L1d java.io.IOException -> L25
            com.nostra13.universalimageloader.cache.disc.impl.ext.DiskLruCache$Snapshot r5 = r1.f(r5)     // Catch: java.lang.Throwable -> L1d java.io.IOException -> L22
            if (r5 != 0) goto L10
            goto L15
        L10:
            java.io.File[] r1 = r5.f20947c     // Catch: java.io.IOException -> L1b java.lang.Throwable -> L31
            r2 = 0
            r0 = r1[r2]     // Catch: java.io.IOException -> L1b java.lang.Throwable -> L31
        L15:
            if (r5 == 0) goto L1a
            r5.close()
        L1a:
            return r0
        L1b:
            r1 = move-exception
            goto L28
        L1d:
            r5 = move-exception
            r3 = r0
            r0 = r5
            r5 = r3
            goto L32
        L22:
            r1 = move-exception
        L23:
            r5 = r0
            goto L28
        L25:
            r5 = move-exception
            r1 = r5
            goto L23
        L28:
            com.nostra13.universalimageloader.utils.L.a(r1)     // Catch: java.lang.Throwable -> L31
            if (r5 == 0) goto L30
            r5.close()
        L30:
            return r0
        L31:
            r0 = move-exception
        L32:
            if (r5 == 0) goto L37
            r5.close()
        L37:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.nostra13.universalimageloader.cache.disc.impl.ext.LruDiskCache.get(java.lang.String):java.io.File");
    }

    @Override // com.nostra13.universalimageloader.cache.disc.DiskCache
    public final boolean remove(String str) {
        try {
            return this.f20948a.u(this.f20949c.a(str));
        } catch (IOException e2) {
            L.a(e2);
            return false;
        }
    }
}
