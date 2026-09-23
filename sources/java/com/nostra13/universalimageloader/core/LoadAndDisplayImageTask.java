package com.nostra13.universalimageloader.core;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainUtil;
import com.nostra13.universalimageloader.core.assist.FailReason;
import com.nostra13.universalimageloader.core.assist.ImageSize;
import com.nostra13.universalimageloader.core.assist.LoadedFrom;
import com.nostra13.universalimageloader.core.decode.BaseImageDecoder;
import com.nostra13.universalimageloader.core.decode.ImageDecodingInfo;
import com.nostra13.universalimageloader.core.download.BaseImageDownloader;
import com.nostra13.universalimageloader.core.download.ImageDownloader;
import com.nostra13.universalimageloader.core.imageaware.ImageAware;
import com.nostra13.universalimageloader.core.listener.ImageLoadingListener;
import com.nostra13.universalimageloader.utils.IoUtils;
import com.nostra13.universalimageloader.utils.L;
import com.nostra13.universalimageloader.utils.MemoryCacheUtils;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class LoadAndDisplayImageTask implements Runnable, IoUtils.CopyListener {

    /* renamed from: c, reason: collision with root package name */
    public final ImageLoaderEngine f20981c;
    public final ImageLoadingInfo f;
    public final Handler g;
    public final ImageLoaderConfiguration h;
    public final BaseImageDownloader i;
    public final ImageDownloader j;
    public final ImageDownloader k;
    public final BaseImageDecoder l;
    public final String m;
    public final String n;
    public final String o;
    public final ImageAware p;
    public final ImageSize q;
    public final DisplayImageOptions r;
    public final ImageLoadingListener s;
    public final boolean t;
    public final MainItem.ViewItem u;
    public final int v;
    public String w;
    public String x;
    public boolean y;
    public LoadedFrom z = LoadedFrom.f20989c;

    /* renamed from: com.nostra13.universalimageloader.core.LoadAndDisplayImageTask$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements Runnable {
        @Override // java.lang.Runnable
        public final void run() {
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public static class TaskCancelledException extends Exception {
    }

    public LoadAndDisplayImageTask(ImageLoaderEngine imageLoaderEngine, ImageLoadingInfo imageLoadingInfo, Handler handler) {
        int i;
        this.f20981c = imageLoaderEngine;
        this.f = imageLoadingInfo;
        this.g = handler == null ? new Handler(Looper.getMainLooper()) : handler;
        ImageLoaderConfiguration imageLoaderConfiguration = imageLoaderEngine.f20976a;
        this.h = imageLoaderConfiguration;
        this.i = imageLoaderConfiguration.k;
        this.j = imageLoaderConfiguration.n;
        this.k = imageLoaderConfiguration.o;
        this.l = imageLoaderConfiguration.l;
        this.m = imageLoadingInfo.f20979a;
        this.n = imageLoadingInfo.b;
        this.o = imageLoadingInfo.f20980c;
        this.p = imageLoadingInfo.d;
        this.q = imageLoadingInfo.e;
        DisplayImageOptions displayImageOptions = imageLoadingInfo.f;
        this.r = displayImageOptions;
        this.s = imageLoadingInfo.g;
        this.t = displayImageOptions.g;
        MainItem.ViewItem viewItem = imageLoadingInfo.i;
        this.u = viewItem;
        if (viewItem != null) {
            i = viewItem.t;
        } else {
            i = 8;
        }
        this.v = i;
    }

    public static void j(Runnable runnable, boolean z, Handler handler, ImageLoaderEngine imageLoaderEngine) {
        if (z) {
            runnable.run();
        } else if (handler == null) {
            imageLoaderEngine.d.execute(runnable);
        } else {
            handler.post(runnable);
        }
    }

    @Override // com.nostra13.universalimageloader.utils.IoUtils.CopyListener
    public final boolean a(int i, int i2) {
        if (!this.t) {
            if (h() || i()) {
                return false;
            }
            return true;
        }
        return true;
    }

    public final void b() {
        ImageAware imageAware = this.p;
        if (!imageAware.b()) {
            if (this.o.equals((String) this.f20981c.e.get(Integer.valueOf(imageAware.getId())))) {
                return;
            } else {
                throw new Exception();
            }
        }
        throw new Exception();
    }

    /* JADX WARN: Code restructure failed: missing block: B:110:0x00b3, code lost:
    
        if (r0 != null) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0088, code lost:
    
        if (r0 != null) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x008a, code lost:
    
        r11 = true;
        r14 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x008c, code lost:
    
        r11 = false;
        r14 = r14;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0192  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.Bitmap c(com.mycompany.app.main.MainItem.ViewItem r21, java.lang.String r22, java.lang.String r23) {
        /*
            Method dump skipped, instructions count: 444
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.nostra13.universalimageloader.core.LoadAndDisplayImageTask.c(com.mycompany.app.main.MainItem$ViewItem, java.lang.String, java.lang.String):android.graphics.Bitmap");
    }

    public final boolean d() {
        String str = this.m;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        ImageDownloader f = f();
        this.r.getClass();
        InputStream b = f.b(str, this.n);
        if (b == null) {
            L.b(6, null, "No stream for image [%s]", this.o);
            return false;
        }
        try {
            return this.h.j.c(str, b, this);
        } finally {
            IoUtils.a(b);
        }
    }

    public final void e(FailReason.FailType failType, Throwable th) {
        if (this.t) {
            try {
                this.s.a(this.u, null, new FailReason(failType));
            } catch (Exception unused) {
            }
        } else if (!h() && !i()) {
            j(new Runnable(failType, th) { // from class: com.nostra13.universalimageloader.core.LoadAndDisplayImageTask.2

                /* renamed from: c, reason: collision with root package name */
                public final /* synthetic */ FailReason.FailType f20982c;

                @Override // java.lang.Runnable
                public final void run() {
                    LoadAndDisplayImageTask loadAndDisplayImageTask = LoadAndDisplayImageTask.this;
                    try {
                        loadAndDisplayImageTask.r.getClass();
                        loadAndDisplayImageTask.s.a(loadAndDisplayImageTask.u, loadAndDisplayImageTask.p.a(), new FailReason(this.f20982c));
                    } catch (Exception unused2) {
                    }
                }
            }, false, this.g, this.f20981c);
        }
    }

    public final ImageDownloader f() {
        ImageLoaderEngine imageLoaderEngine = this.f20981c;
        if (imageLoaderEngine.h.get()) {
            return this.j;
        }
        if (imageLoaderEngine.i.get()) {
            return this.k;
        }
        return this.i;
    }

    public final Bitmap g(MainItem.ViewItem viewItem) {
        boolean z;
        int i = 1;
        Bitmap bitmap = null;
        int i2 = 1;
        while (true) {
            if (i2 < 26) {
                int i3 = ImageLoader.d[i2];
                if (i3 != this.v) {
                    bitmap = this.h.h.a(MemoryCacheUtils.a(i3, this.m));
                    if (MainUtil.f6(bitmap)) {
                        z = true;
                        break;
                    }
                }
                i2++;
            } else {
                z = false;
                break;
            }
        }
        if (z) {
            ImageDecodingInfo imageDecodingInfo = new ImageDecodingInfo(viewItem, this.o, null, this.n, this.m, this.q, this.v, this.p.c(), f(), this.r);
            BaseImageDecoder baseImageDecoder = this.l;
            baseImageDecoder.getClass();
            if (MainUtil.f6(bitmap)) {
                int i4 = baseImageDecoder.b(new ImageSize(bitmap.getWidth(), bitmap.getHeight(), 0), imageDecodingInfo).inSampleSize;
                if (i4 == 1) {
                    return bitmap;
                }
                float f = i4;
                int width = (int) (bitmap.getWidth() / f);
                int height = (int) (bitmap.getHeight() / f);
                if (width == 0) {
                    width = 1;
                }
                if (height != 0) {
                    i = height;
                }
                try {
                    return MainUtil.k3(width, i, bitmap);
                } catch (OutOfMemoryError unused) {
                    return bitmap;
                }
            }
        }
        return null;
    }

    public final boolean h() {
        if (Thread.interrupted()) {
            return true;
        }
        return false;
    }

    public final boolean i() {
        ImageAware imageAware = this.p;
        if (!imageAware.b()) {
            if (this.o.equals((String) this.f20981c.e.get(Integer.valueOf(imageAware.getId())))) {
                return false;
            }
            return true;
        }
        return true;
    }

    public final boolean k() {
        ImageLoaderConfiguration imageLoaderConfiguration = this.h;
        try {
            boolean d = d();
            if (d) {
                imageLoaderConfiguration.getClass();
                return d;
            }
            return d;
        } catch (IOException e) {
            L.a(e);
            return false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4 */
    public final Bitmap l() {
        Bitmap g;
        File file;
        File file2;
        File file3;
        Bitmap bitmap = 2;
        String str = this.n;
        boolean z = true;
        ImageLoaderConfiguration imageLoaderConfiguration = this.h;
        int i = this.v;
        MainItem.ViewItem viewItem = this.u;
        Bitmap bitmap2 = null;
        try {
            try {
                try {
                    if (i != 2 && i != 4) {
                        if (!TextUtils.isEmpty(this.w) && (file3 = imageLoaderConfiguration.j.get(this.w)) != null && file3.exists() && file3.length() > 0) {
                            String absolutePath = file3.getAbsolutePath();
                            b();
                            g = c(null, absolutePath, str);
                            if (MainUtil.f6(g)) {
                                this.y = true;
                                return g;
                            }
                        } else {
                            g = null;
                        }
                    } else {
                        b();
                        g = g(viewItem);
                        if (MainUtil.f6(g)) {
                            return g;
                        }
                    }
                    if ((viewItem != null && !viewItem.u) || !this.r.b) {
                        z = false;
                    }
                    String str2 = this.m;
                    if (z && (file2 = imageLoaderConfiguration.j.get(str2)) != null && file2.exists() && file2.length() > 0) {
                        this.z = LoadedFrom.f;
                        String absolutePath2 = file2.getAbsolutePath();
                        if (i == 0) {
                            viewItem.getClass();
                        }
                        b();
                        g = c(null, absolutePath2, str);
                    }
                    if (g != null && g.getWidth() > 0 && g.getHeight() > 0) {
                        return g;
                    }
                    this.z = LoadedFrom.f20989c;
                    if (z && k() && (file = imageLoaderConfiguration.j.get(str2)) != null) {
                        String absolutePath3 = file.getAbsolutePath();
                        if (i == 0) {
                            viewItem.getClass();
                        }
                        b();
                        g = c(null, absolutePath3, str);
                    }
                    if (g == null || g.getWidth() <= 0 || g.getHeight() <= 0) {
                        b();
                        g = c(viewItem, null, str);
                    }
                    if (g != null && g.getWidth() > 0 && g.getHeight() > 0) {
                        return g;
                    }
                    e(FailReason.FailType.f, null);
                    return g;
                } catch (TaskCancelledException e) {
                    throw e;
                }
            } catch (IOException e2) {
                e = e2;
                L.a(e);
                e(FailReason.FailType.f20986c, e);
                return bitmap2;
            } catch (IllegalStateException unused) {
                bitmap = 0;
                e(FailReason.FailType.g, null);
                return bitmap;
            } catch (OutOfMemoryError e3) {
                e = e3;
                L.a(e);
                e(FailReason.FailType.h, e);
                return bitmap2;
            } catch (Throwable th) {
                th = th;
                L.a(th);
                e(FailReason.FailType.i, th);
                return bitmap2;
            }
        } catch (IOException e4) {
            e = e4;
            bitmap2 = 2;
            L.a(e);
            e(FailReason.FailType.f20986c, e);
            return bitmap2;
        } catch (IllegalStateException unused2) {
            e(FailReason.FailType.g, null);
            return bitmap;
        } catch (OutOfMemoryError e5) {
            e = e5;
            bitmap2 = 2;
            L.a(e);
            e(FailReason.FailType.h, e);
            return bitmap2;
        } catch (Throwable th2) {
            th = th2;
            bitmap2 = 2;
            L.a(th);
            e(FailReason.FailType.i, th);
            return bitmap2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0103 A[Catch: all -> 0x007c, TaskCancelledException -> 0x010f, TRY_ENTER, TryCatch #1 {TaskCancelledException -> 0x010f, blocks: (B:22:0x0050, B:26:0x005b, B:28:0x005f, B:30:0x0063, B:32:0x0071, B:33:0x007f, B:35:0x0087, B:37:0x009e, B:40:0x00a5, B:41:0x00df, B:45:0x0103, B:46:0x0108, B:47:0x00aa, B:51:0x00b4, B:53:0x00bd, B:55:0x00c8, B:57:0x00ce, B:58:0x00d8, B:59:0x0109, B:60:0x010e, B:61:0x0092), top: B:21:0x0050, outer: #2 }] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instructions count: 302
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.nostra13.universalimageloader.core.LoadAndDisplayImageTask.run():void");
    }
}
