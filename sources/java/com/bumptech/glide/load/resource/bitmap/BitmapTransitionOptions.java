package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import com.bumptech.glide.TransitionOptions;
import com.bumptech.glide.request.transition.NoTransition;

/* loaded from: classes.dex */
public final class BitmapTransitionOptions extends TransitionOptions<BitmapTransitionOptions, Bitmap> {
    @Override // com.bumptech.glide.TransitionOptions
    public final boolean equals(Object obj) {
        if ((obj instanceof BitmapTransitionOptions) && super.equals(obj)) {
            return true;
        }
        return false;
    }

    @Override // com.bumptech.glide.TransitionOptions
    public final int hashCode() {
        return NoTransition.b.hashCode();
    }
}
