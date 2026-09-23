package com.nostra13.universalimageloader.core.decode;

import android.graphics.BitmapFactory;
import android.os.Build;
import com.mycompany.app.main.MainItem;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.assist.ImageScaleType;
import com.nostra13.universalimageloader.core.assist.ImageSize;
import com.nostra13.universalimageloader.core.assist.ViewScaleType;
import com.nostra13.universalimageloader.core.download.ImageDownloader;

/* loaded from: classes3.dex */
public class ImageDecodingInfo {

    /* renamed from: a, reason: collision with root package name */
    public final String f20999a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final String f21000c;
    public final ImageSize d;
    public final int e;
    public final ImageScaleType f;
    public final ViewScaleType g;
    public final ImageDownloader h;
    public final boolean i;
    public final BitmapFactory.Options j;
    public final MainItem.ViewItem k;

    public ImageDecodingInfo(MainItem.ViewItem viewItem, String str, String str2, String str3, String str4, ImageSize imageSize, int i, ViewScaleType viewScaleType, ImageDownloader imageDownloader, DisplayImageOptions displayImageOptions) {
        this.f20999a = str2;
        this.b = str3;
        this.f21000c = str4;
        this.d = imageSize;
        this.e = i;
        this.f = displayImageOptions.f20959c;
        this.g = viewScaleType;
        this.h = imageDownloader;
        this.k = viewItem;
        this.i = displayImageOptions.e;
        BitmapFactory.Options options = new BitmapFactory.Options();
        this.j = options;
        BitmapFactory.Options options2 = displayImageOptions.d;
        options.inDensity = options2.inDensity;
        options.inJustDecodeBounds = options2.inJustDecodeBounds;
        options.inPreferredConfig = options2.inPreferredConfig;
        options.inSampleSize = options2.inSampleSize;
        options.inScaled = options2.inScaled;
        options.inScreenDensity = options2.inScreenDensity;
        options.inTargetDensity = options2.inTargetDensity;
        options.inTempStorage = options2.inTempStorage;
        options.inBitmap = options2.inBitmap;
        options.inMutable = options2.inMutable;
        if (Build.VERSION.SDK_INT < 24) {
            options.inDither = options2.inDither;
            options.inPreferQualityOverSpeed = options2.inPreferQualityOverSpeed;
        }
    }
}
