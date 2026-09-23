package com.bumptech.glide.request.target;

import android.graphics.drawable.Drawable;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.bumptech.glide.request.target.FixedSizeDrawable;

/* loaded from: classes.dex */
public abstract class ThumbnailImageViewTarget<T> extends ImageViewTarget<T> {
    @Override // com.bumptech.glide.request.target.ImageViewTarget
    public final void d(Object obj) {
        ImageView imageView = (ImageView) this.f;
        ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
        Drawable k = k(obj);
        if (layoutParams != null && layoutParams.width > 0 && layoutParams.height > 0) {
            k = new FixedSizeDrawable(new FixedSizeDrawable.State(k.getConstantState(), layoutParams.width, layoutParams.height), k);
        }
        imageView.setImageDrawable(k);
    }

    public abstract Drawable k(Object obj);
}
