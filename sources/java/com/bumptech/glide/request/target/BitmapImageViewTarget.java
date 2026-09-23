package com.bumptech.glide.request.target;

import android.graphics.Bitmap;
import android.widget.ImageView;

/* loaded from: classes.dex */
public class BitmapImageViewTarget extends ImageViewTarget<Bitmap> {
    @Override // com.bumptech.glide.request.target.ImageViewTarget
    public final void d(Object obj) {
        ((ImageView) this.f).setImageBitmap((Bitmap) obj);
    }
}
