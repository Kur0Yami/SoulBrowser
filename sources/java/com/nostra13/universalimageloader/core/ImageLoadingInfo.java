package com.nostra13.universalimageloader.core;

import com.mycompany.app.main.MainItem;
import com.nostra13.universalimageloader.core.assist.ImageSize;
import com.nostra13.universalimageloader.core.imageaware.ImageAware;
import com.nostra13.universalimageloader.core.listener.ImageLoadingListener;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes3.dex */
final class ImageLoadingInfo {

    /* renamed from: a, reason: collision with root package name */
    public final String f20979a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final String f20980c;
    public final ImageAware d;
    public final ImageSize e;
    public final DisplayImageOptions f;
    public final ImageLoadingListener g;
    public final ReentrantLock h;
    public final MainItem.ViewItem i;

    public ImageLoadingInfo(MainItem.ViewItem viewItem, String str, ImageAware imageAware, ImageSize imageSize, String str2, DisplayImageOptions displayImageOptions, ImageLoadingListener imageLoadingListener, ReentrantLock reentrantLock) {
        this.f20979a = str;
        if (viewItem != null) {
            this.b = viewItem.r;
        } else {
            this.b = null;
        }
        this.d = imageAware;
        this.e = imageSize;
        this.f = displayImageOptions;
        this.g = imageLoadingListener;
        this.h = reentrantLock;
        this.f20980c = str2;
        this.i = viewItem;
    }
}
