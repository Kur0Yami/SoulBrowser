package com.nostra13.universalimageloader.core;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.nostra13.universalimageloader.core.assist.ImageScaleType;
import com.nostra13.universalimageloader.core.display.BitmapDisplayer;

/* loaded from: classes3.dex */
public final class DisplayImageOptions {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f20958a;
    public final boolean b;

    /* renamed from: c, reason: collision with root package name */
    public final ImageScaleType f20959c;
    public final BitmapFactory.Options d;
    public final boolean e;
    public final BitmapDisplayer f;
    public final boolean g;

    /* loaded from: classes3.dex */
    public static class Builder {

        /* renamed from: a, reason: collision with root package name */
        public boolean f20960a = false;
        public boolean b = false;

        /* renamed from: c, reason: collision with root package name */
        public ImageScaleType f20961c = ImageScaleType.g;
        public BitmapFactory.Options d = new BitmapFactory.Options();
        public boolean e = false;
        public BitmapDisplayer f = new Object();
        public boolean g = false;

        public final void a() {
            Bitmap.Config config = Bitmap.Config.RGB_565;
            if (config != null) {
                this.d.inPreferredConfig = config;
                return;
            }
            throw new IllegalArgumentException("bitmapConfig can't be null");
        }

        public final void b(DisplayImageOptions displayImageOptions) {
            displayImageOptions.getClass();
            this.f20960a = displayImageOptions.f20958a;
            this.b = displayImageOptions.b;
            this.f20961c = displayImageOptions.f20959c;
            this.d = displayImageOptions.d;
            this.e = displayImageOptions.e;
            this.f = displayImageOptions.f;
            this.g = displayImageOptions.g;
        }
    }

    public DisplayImageOptions(Builder builder) {
        this.f20958a = builder.f20960a;
        this.b = builder.b;
        this.f20959c = builder.f20961c;
        this.d = builder.d;
        this.e = builder.e;
        this.f = builder.f;
        this.g = builder.g;
    }
}
