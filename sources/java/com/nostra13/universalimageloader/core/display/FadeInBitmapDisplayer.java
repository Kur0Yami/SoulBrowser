package com.nostra13.universalimageloader.core.display;

import android.graphics.Bitmap;
import com.nostra13.universalimageloader.core.imageaware.ImageAware;

/* loaded from: classes3.dex */
public class FadeInBitmapDisplayer implements BitmapDisplayer {
    @Override // com.nostra13.universalimageloader.core.display.BitmapDisplayer
    public final void a(Bitmap bitmap, ImageAware imageAware) {
        imageAware.d(bitmap);
    }
}
