package com.nostra13.universalimageloader.core;

import android.graphics.Bitmap;
import com.mycompany.app.main.MainItem;
import com.nostra13.universalimageloader.core.assist.LoadedFrom;
import com.nostra13.universalimageloader.core.display.BitmapDisplayer;
import com.nostra13.universalimageloader.core.imageaware.ImageAware;
import com.nostra13.universalimageloader.core.listener.ImageLoadingListener;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class DisplayBitmapTask implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final Bitmap f20957c;
    public final ImageAware f;
    public final String g;
    public final BitmapDisplayer h;
    public final ImageLoadingListener i;
    public final ImageLoaderEngine j;
    public final MainItem.ViewItem k;

    public DisplayBitmapTask(Bitmap bitmap, ImageLoadingInfo imageLoadingInfo, ImageLoaderEngine imageLoaderEngine, LoadedFrom loadedFrom) {
        this.f20957c = bitmap;
        this.f = imageLoadingInfo.d;
        this.g = imageLoadingInfo.f20980c;
        this.h = imageLoadingInfo.f.f;
        this.i = imageLoadingInfo.g;
        this.j = imageLoaderEngine;
        this.k = imageLoadingInfo.i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ImageAware imageAware = this.f;
        boolean b = imageAware.b();
        ImageLoadingListener imageLoadingListener = this.i;
        if (b) {
            imageLoadingListener.b(imageAware.a());
            return;
        }
        ImageLoaderEngine imageLoaderEngine = this.j;
        if (!this.g.equals((String) imageLoaderEngine.e.get(Integer.valueOf(imageAware.getId())))) {
            imageLoadingListener.b(imageAware.a());
            return;
        }
        BitmapDisplayer bitmapDisplayer = this.h;
        Bitmap bitmap = this.f20957c;
        bitmapDisplayer.a(bitmap, imageAware);
        imageLoaderEngine.a(imageAware);
        imageLoadingListener.c(this.k, imageAware.a(), bitmap);
    }
}
