package com.nostra13.universalimageloader.core;

import android.content.Context;
import android.text.TextUtils;
import com.mycompany.app.main.MainItem;
import com.nostra13.universalimageloader.cache.disc.DiskCache;
import com.nostra13.universalimageloader.cache.disc.naming.FileNameGenerator;
import com.nostra13.universalimageloader.cache.memory.impl.LruMemoryCache;
import com.nostra13.universalimageloader.core.assist.FlushedInputStream;
import com.nostra13.universalimageloader.core.assist.ImageSize;
import com.nostra13.universalimageloader.core.assist.QueueProcessingType;
import com.nostra13.universalimageloader.core.decode.BaseImageDecoder;
import com.nostra13.universalimageloader.core.download.BaseImageDownloader;
import com.nostra13.universalimageloader.core.download.ImageDownloader;
import java.io.InputStream;
import java.util.concurrent.ThreadPoolExecutor;

/* loaded from: classes3.dex */
public final class ImageLoaderConfiguration {

    /* renamed from: a, reason: collision with root package name */
    public final Context f20969a;
    public final ThreadPoolExecutor b;

    /* renamed from: c, reason: collision with root package name */
    public final ThreadPoolExecutor f20970c;
    public final boolean d;
    public final boolean e;
    public final int f;
    public final QueueProcessingType g;
    public final LruMemoryCache h;
    public final LruMemoryCache i;
    public final DiskCache j;
    public final BaseImageDownloader k;
    public final BaseImageDecoder l;
    public final DisplayImageOptions m;
    public final ImageDownloader n;
    public final ImageDownloader o;

    /* renamed from: com.nostra13.universalimageloader.core.ImageLoaderConfiguration$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f20971a;

        static {
            int[] iArr = new int[ImageDownloader.Scheme.values().length];
            f20971a = iArr;
            try {
                iArr[ImageDownloader.Scheme.HTTP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20971a[ImageDownloader.Scheme.HTTPS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class Builder {

        /* renamed from: a, reason: collision with root package name */
        public Context f20972a;
        public ThreadPoolExecutor b;

        /* renamed from: c, reason: collision with root package name */
        public ThreadPoolExecutor f20973c;
        public boolean d;
        public boolean e;
        public int f;
        public QueueProcessingType g;
        public long h;
        public LruMemoryCache i;
        public LruMemoryCache j;
        public DiskCache k;
        public FileNameGenerator l;
        public BaseImageDownloader m;
        public BaseImageDecoder n;
        public DisplayImageOptions o;
    }

    /* loaded from: classes3.dex */
    public static class NetworkDeniedImageDownloader implements ImageDownloader {

        /* renamed from: a, reason: collision with root package name */
        public final ImageDownloader f20974a;

        public NetworkDeniedImageDownloader(BaseImageDownloader baseImageDownloader) {
            this.f20974a = baseImageDownloader;
        }

        @Override // com.nostra13.universalimageloader.core.download.ImageDownloader
        public final InputStream a(MainItem.ViewItem viewItem) {
            if (viewItem != null) {
                return this.f20974a.a(viewItem);
            }
            throw new IllegalStateException();
        }

        @Override // com.nostra13.universalimageloader.core.download.ImageDownloader
        public final InputStream b(String str, String str2) {
            if (!TextUtils.isEmpty(str)) {
                return this.f20974a.b(str, str2);
            }
            throw new IllegalStateException();
        }
    }

    /* loaded from: classes3.dex */
    public static class SlowNetworkImageDownloader implements ImageDownloader {

        /* renamed from: a, reason: collision with root package name */
        public final ImageDownloader f20975a;

        public SlowNetworkImageDownloader(BaseImageDownloader baseImageDownloader) {
            this.f20975a = baseImageDownloader;
        }

        @Override // com.nostra13.universalimageloader.core.download.ImageDownloader
        public final InputStream a(MainItem.ViewItem viewItem) {
            if (viewItem != null) {
                InputStream a2 = this.f20975a.a(viewItem);
                if (viewItem.f16554a == 7) {
                    return new FlushedInputStream(a2);
                }
                return a2;
            }
            throw new IllegalStateException();
        }

        @Override // com.nostra13.universalimageloader.core.download.ImageDownloader
        public final InputStream b(String str, String str2) {
            if (!TextUtils.isEmpty(str)) {
                InputStream b = this.f20975a.b(str, str2);
                int ordinal = ImageDownloader.Scheme.a(str).ordinal();
                if (ordinal != 0 && ordinal != 1) {
                    return b;
                }
                return new FlushedInputStream(b);
            }
            throw new IllegalStateException();
        }
    }

    public ImageLoaderConfiguration(Builder builder) {
        this.f20969a = builder.f20972a;
        this.b = builder.b;
        this.f20970c = builder.f20973c;
        this.f = builder.f;
        this.g = builder.g;
        this.j = builder.k;
        this.h = builder.i;
        this.i = builder.j;
        this.m = builder.o;
        BaseImageDownloader baseImageDownloader = builder.m;
        this.k = baseImageDownloader;
        this.l = builder.n;
        this.d = builder.d;
        this.e = builder.e;
        this.n = new NetworkDeniedImageDownloader(baseImageDownloader);
        this.o = new SlowNetworkImageDownloader(baseImageDownloader);
    }

    public final ImageSize a() {
        int i;
        int i2 = 0;
        Context context = this.f20969a;
        if (context != null) {
            i = context.getResources().getDisplayMetrics().widthPixels;
        } else {
            i = 0;
        }
        if (context != null) {
            i2 = context.getResources().getDisplayMetrics().heightPixels;
        }
        return new ImageSize(i, i2);
    }
}
