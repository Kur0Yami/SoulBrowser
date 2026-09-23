package com.nostra13.universalimageloader.core.imageaware;

import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.View;
import com.nostra13.universalimageloader.core.assist.ImageSize;
import com.nostra13.universalimageloader.core.assist.ViewScaleType;

/* loaded from: classes3.dex */
public class NonViewAware implements ImageAware {

    /* renamed from: a, reason: collision with root package name */
    public final String f21009a;
    public final ImageSize b;

    public NonViewAware(String str, ImageSize imageSize) {
        this.f21009a = str;
        this.b = imageSize;
    }

    @Override // com.nostra13.universalimageloader.core.imageaware.ImageAware
    public final View a() {
        return null;
    }

    @Override // com.nostra13.universalimageloader.core.imageaware.ImageAware
    public final boolean b() {
        return false;
    }

    @Override // com.nostra13.universalimageloader.core.imageaware.ImageAware
    public final ViewScaleType c() {
        return ViewScaleType.f20991c;
    }

    @Override // com.nostra13.universalimageloader.core.imageaware.ImageAware
    public final boolean d(Bitmap bitmap) {
        return true;
    }

    @Override // com.nostra13.universalimageloader.core.imageaware.ImageAware
    public final int getHeight() {
        return this.b.b;
    }

    @Override // com.nostra13.universalimageloader.core.imageaware.ImageAware
    public final int getId() {
        String str = this.f21009a;
        if (TextUtils.isEmpty(str)) {
            return super.hashCode();
        }
        return str.hashCode();
    }

    @Override // com.nostra13.universalimageloader.core.imageaware.ImageAware
    public final int getWidth() {
        return this.b.f20988a;
    }
}
