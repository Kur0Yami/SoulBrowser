package com.nostra13.universalimageloader.core;

import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import com.google.api.client.http.HttpStatusCodes;
import com.mycompany.app.compress.Compress;
import com.mycompany.app.main.MainItem;
import com.nostra13.universalimageloader.cache.disc.DiskCache;
import com.nostra13.universalimageloader.cache.memory.impl.LruMemoryCache;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.assist.FailReason;
import com.nostra13.universalimageloader.core.imageaware.ImageViewAware;
import com.nostra13.universalimageloader.core.imageaware.NonViewAware;
import com.nostra13.universalimageloader.core.listener.SimpleImageLoadingListener;
import com.nostra13.universalimageloader.utils.L;
import com.nostra13.universalimageloader.utils.MemoryCacheUtils;

/* loaded from: classes3.dex */
public class ImageLoader {

    /* renamed from: c, reason: collision with root package name */
    public static volatile ImageLoader f20962c;
    public static final int[] d = {2, 4, 8, 24, 136, 264, 152, 280, 392, 408, 40, 56, 168, 296, 184, 312, 424, 440, 72, 88, HttpStatusCodes.STATUS_CODE_OK, 328, 216, 344, 456, 472};

    /* renamed from: a, reason: collision with root package name */
    public ImageLoaderConfiguration f20963a;
    public ImageLoaderEngine b;

    /* loaded from: classes3.dex */
    public static class ImageLoadItem {

        /* renamed from: a, reason: collision with root package name */
        public String f20964a;
        public Bitmap b;

        /* renamed from: c, reason: collision with root package name */
        public int f20965c;
    }

    /* loaded from: classes3.dex */
    public static class SyncImageLoadingListener extends SimpleImageLoadingListener {

        /* renamed from: a, reason: collision with root package name */
        public Bitmap f20966a;

        @Override // com.nostra13.universalimageloader.core.listener.SimpleImageLoadingListener, com.nostra13.universalimageloader.core.listener.ImageLoadingListener
        public final void c(MainItem.ViewItem viewItem, View view, Bitmap bitmap) {
            this.f20966a = bitmap;
        }
    }

    /* loaded from: classes3.dex */
    public static class SyncLoadingListener extends SimpleImageLoadingListener {

        /* renamed from: a, reason: collision with root package name */
        public String f20967a;
        public Bitmap b;

        /* renamed from: c, reason: collision with root package name */
        public int f20968c;

        @Override // com.nostra13.universalimageloader.core.listener.SimpleImageLoadingListener, com.nostra13.universalimageloader.core.listener.ImageLoadingListener
        public final void a(MainItem.ViewItem viewItem, View view, FailReason failReason) {
            if (viewItem != null) {
                this.f20967a = viewItem.q;
            }
            if (viewItem != null && failReason != null) {
                FailReason.FailType failType = failReason.f20985a;
                if (failType == null) {
                    this.f20968c = 1;
                    return;
                }
                if (failType.equals(FailReason.FailType.f)) {
                    this.f20968c = 1;
                    return;
                } else if ((failType.equals(FailReason.FailType.f20986c) || failType.equals(FailReason.FailType.h)) && !Compress.C(viewItem.q, true, true)) {
                    this.f20968c = 1;
                    return;
                } else {
                    this.f20968c = 2;
                    return;
                }
            }
            this.f20968c = 1;
        }

        @Override // com.nostra13.universalimageloader.core.listener.SimpleImageLoadingListener, com.nostra13.universalimageloader.core.listener.ImageLoadingListener
        public final void c(MainItem.ViewItem viewItem, View view, Bitmap bitmap) {
            if (viewItem != null) {
                this.f20967a = viewItem.q;
            }
            this.b = bitmap;
            this.f20968c = 0;
        }
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [java.lang.Object, com.nostra13.universalimageloader.core.ImageLoader] */
    public static ImageLoader f() {
        if (f20962c == null) {
            synchronized (ImageLoader.class) {
                try {
                    if (f20962c == null) {
                        f20962c = new Object();
                    }
                } finally {
                }
            }
        }
        return f20962c;
    }

    public final void a(ImageView imageView) {
        this.b.a(new ImageViewAware(imageView));
    }

    public final void b() {
        if (this.f20963a != null) {
        } else {
            throw new IllegalStateException("ImageLoader must be init with configuration before using");
        }
    }

    public final void c(MainItem.ViewItem viewItem, ImageView imageView, DisplayImageOptions displayImageOptions, SimpleImageLoadingListener simpleImageLoadingListener) {
        d(viewItem, new ImageViewAware(imageView), displayImageOptions, simpleImageLoadingListener);
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x00be  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void d(com.mycompany.app.main.MainItem.ViewItem r11, com.nostra13.universalimageloader.core.imageaware.ImageAware r12, com.nostra13.universalimageloader.core.DisplayImageOptions r13, com.nostra13.universalimageloader.core.listener.SimpleImageLoadingListener r14) {
        /*
            Method dump skipped, instructions count: 334
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.nostra13.universalimageloader.core.ImageLoader.d(com.mycompany.app.main.MainItem$ViewItem, com.nostra13.universalimageloader.core.imageaware.ImageAware, com.nostra13.universalimageloader.core.DisplayImageOptions, com.nostra13.universalimageloader.core.listener.SimpleImageLoadingListener):void");
    }

    public final DiskCache e() {
        b();
        return this.f20963a.j;
    }

    public final LruMemoryCache g() {
        b();
        return this.f20963a.h;
    }

    public final synchronized void h(ImageLoaderConfiguration imageLoaderConfiguration) {
        try {
            if (this.f20963a == null) {
                this.b = new ImageLoaderEngine(imageLoaderConfiguration);
                this.f20963a = imageLoaderConfiguration;
            } else {
                L.b(5, null, "Try to initialize ImageLoader which had already been initialized before. To re-init ImageLoader with new configuration call ImageLoader.destroy() at first.", new Object[0]);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void i(MainItem.ViewItem viewItem, DisplayImageOptions displayImageOptions, SimpleImageLoadingListener simpleImageLoadingListener) {
        Compress compress;
        int i;
        if (viewItem == null) {
            return;
        }
        if (viewItem.f16554a == 8 && (compress = viewItem.b) != null && (i = viewItem.f) != -1) {
            viewItem.q = compress.n(i);
        }
        String str = viewItem.q;
        b();
        if (displayImageOptions == null) {
            displayImageOptions = this.f20963a.m;
        }
        NonViewAware nonViewAware = new NonViewAware(str, this.f20963a.a());
        if (TextUtils.isEmpty(str)) {
            this.b.a(nonViewAware);
            displayImageOptions.getClass();
            simpleImageLoadingListener.a(viewItem, null, null);
            return;
        }
        d(viewItem, nonViewAware, displayImageOptions, simpleImageLoadingListener);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [com.nostra13.universalimageloader.core.ImageLoader$SyncImageLoadingListener, com.nostra13.universalimageloader.core.listener.SimpleImageLoadingListener, java.lang.Object] */
    public final Bitmap j(MainItem.ViewItem viewItem, DisplayImageOptions displayImageOptions) {
        if (displayImageOptions == null) {
            displayImageOptions = this.f20963a.m;
        }
        DisplayImageOptions.Builder builder = new DisplayImageOptions.Builder();
        builder.b(displayImageOptions);
        builder.g = true;
        DisplayImageOptions displayImageOptions2 = new DisplayImageOptions(builder);
        ?? obj = new Object();
        i(viewItem, displayImageOptions2, obj);
        return obj.f20966a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [com.nostra13.universalimageloader.core.listener.SimpleImageLoadingListener, java.lang.Object, com.nostra13.universalimageloader.core.ImageLoader$SyncLoadingListener] */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Object, com.nostra13.universalimageloader.core.ImageLoader$ImageLoadItem] */
    public final ImageLoadItem k(MainItem.ViewItem viewItem, DisplayImageOptions displayImageOptions) {
        if (displayImageOptions == null) {
            displayImageOptions = this.f20963a.m;
        }
        DisplayImageOptions.Builder builder = new DisplayImageOptions.Builder();
        builder.b(displayImageOptions);
        builder.g = true;
        DisplayImageOptions displayImageOptions2 = new DisplayImageOptions(builder);
        ?? obj = new Object();
        i(viewItem, displayImageOptions2, obj);
        String str = obj.f20967a;
        Bitmap bitmap = obj.b;
        int i = obj.f20968c;
        ?? obj2 = new Object();
        obj2.f20964a = str;
        obj2.b = bitmap;
        obj2.f20965c = i;
        return obj2;
    }

    public final void l(String str) {
        if (this.f20963a != null && !TextUtils.isEmpty(str)) {
            for (int i = 0; i < 26; i++) {
                this.f20963a.h.c(MemoryCacheUtils.a(d[i], str));
            }
            this.f20963a.j.remove(str);
        }
    }

    public final void m() {
        ImageLoaderEngine imageLoaderEngine = this.b;
        ImageLoaderConfiguration imageLoaderConfiguration = imageLoaderEngine.f20976a;
        if (!imageLoaderConfiguration.d) {
            imageLoaderEngine.b.shutdownNow();
        }
        if (!imageLoaderConfiguration.e) {
            imageLoaderEngine.f20977c.shutdownNow();
        }
        imageLoaderEngine.e.clear();
        imageLoaderEngine.f.clear();
    }
}
