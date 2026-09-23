package com.bumptech.glide.request.target;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;

/* loaded from: classes.dex */
public class DrawableImageViewTarget extends ImageViewTarget<Drawable> {
    @Override // com.bumptech.glide.request.target.ImageViewTarget
    public final void d(Object obj) {
        ((ImageView) this.f).setImageDrawable((Drawable) obj);
    }
}
