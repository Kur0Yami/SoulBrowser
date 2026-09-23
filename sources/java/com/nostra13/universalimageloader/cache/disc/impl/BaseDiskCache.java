package com.nostra13.universalimageloader.cache.disc.impl;

import android.graphics.Bitmap;
import com.mycompany.app.main.MainUtil;
import com.nostra13.universalimageloader.cache.disc.DiskCache;
import com.nostra13.universalimageloader.cache.disc.naming.FileNameGenerator;
import com.nostra13.universalimageloader.utils.IoUtils;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.InputStream;

/* loaded from: classes3.dex */
public abstract class BaseDiskCache implements DiskCache {
    public static final Bitmap.CompressFormat e = Bitmap.CompressFormat.PNG;

    /* renamed from: a, reason: collision with root package name */
    public final File f20938a;
    public final File b;

    /* renamed from: c, reason: collision with root package name */
    public final FileNameGenerator f20939c;
    public final Bitmap.CompressFormat d = e;

    public BaseDiskCache(File file, File file2, FileNameGenerator fileNameGenerator) {
        if (file != null) {
            if (fileNameGenerator != null) {
                this.f20938a = file;
                this.b = file2;
                this.f20939c = fileNameGenerator;
                return;
            }
            throw new IllegalArgumentException("fileNameGenerator argument must be not null");
        }
        throw new IllegalArgumentException("cacheDir argument must be not null");
    }

    @Override // com.nostra13.universalimageloader.cache.disc.DiskCache
    public final boolean a(String str, Bitmap bitmap) {
        File d = d(str);
        File file = new File(d.getAbsolutePath() + ".tmp");
        boolean z = false;
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(MainUtil.c1(file.getPath(), false), 32768);
        try {
            boolean compress = bitmap.compress(this.d, 100, bufferedOutputStream);
            IoUtils.a(bufferedOutputStream);
            if (!compress || file.renameTo(d)) {
                z = compress;
            }
            if (!z) {
                file.delete();
            }
            return z;
        } catch (Throwable th) {
            IoUtils.a(bufferedOutputStream);
            file.delete();
            throw th;
        }
    }

    @Override // com.nostra13.universalimageloader.cache.disc.DiskCache
    public void b() {
    }

    @Override // com.nostra13.universalimageloader.cache.disc.DiskCache
    public boolean c(String str, InputStream inputStream, IoUtils.CopyListener copyListener) {
        boolean z;
        File d = d(str);
        File file = new File(d.getAbsolutePath() + ".tmp");
        boolean z2 = false;
        try {
            try {
                z = IoUtils.b(inputStream, new BufferedOutputStream(MainUtil.c1(file.getPath(), false), 32768), copyListener);
                try {
                    if (!z || file.renameTo(d)) {
                        z2 = z;
                    }
                    if (!z2) {
                        file.delete();
                    }
                    return z2;
                } catch (Throwable th) {
                    th = th;
                    if (!z || file.renameTo(d)) {
                        z2 = z;
                    }
                    if (!z2) {
                        file.delete();
                    }
                    throw th;
                }
            } finally {
            }
        } catch (Throwable th2) {
            th = th2;
            z = false;
        }
    }

    @Override // com.nostra13.universalimageloader.cache.disc.DiskCache
    public void clear() {
        try {
            File[] listFiles = this.f20938a.listFiles();
            if (listFiles != null) {
                for (File file : listFiles) {
                    file.delete();
                }
            }
        } catch (Exception unused) {
        }
    }

    public final File d(String str) {
        File file;
        String a2 = this.f20939c.a(str);
        File file2 = this.f20938a;
        if (!file2.exists() && !file2.mkdirs() && (file = this.b) != null && (file.exists() || file.mkdirs())) {
            file2 = file;
        }
        return new File(file2, a2);
    }

    @Override // com.nostra13.universalimageloader.cache.disc.DiskCache
    public File get(String str) {
        return d(str);
    }

    @Override // com.nostra13.universalimageloader.cache.disc.DiskCache
    public boolean remove(String str) {
        return d(str).delete();
    }
}
