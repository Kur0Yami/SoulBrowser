package com.nostra13.universalimageloader.core.imageaware;

import android.graphics.Bitmap;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;
import com.nostra13.universalimageloader.core.assist.ViewScaleType;
import java.lang.ref.WeakReference;

/* loaded from: classes3.dex */
public class ImageViewAware extends ViewAware {
    public ImageViewAware(ImageView imageView) {
        if (imageView != null) {
            this.f21010a = new WeakReference(imageView);
            this.b = true;
            return;
        }
        throw new IllegalArgumentException("view must not be null");
    }

    @Override // com.nostra13.universalimageloader.core.imageaware.ViewAware, com.nostra13.universalimageloader.core.imageaware.ImageAware
    public final View a() {
        return (ImageView) super.a();
    }

    @Override // com.nostra13.universalimageloader.core.imageaware.ViewAware, com.nostra13.universalimageloader.core.imageaware.ImageAware
    public final ViewScaleType c() {
        ImageView imageView = (ImageView) this.f21010a.get();
        if (imageView != null) {
            return ViewScaleType.a(imageView);
        }
        return ViewScaleType.f;
    }

    @Override // com.nostra13.universalimageloader.core.imageaware.ViewAware
    public final void e(Bitmap bitmap, View view) {
        ((ImageView) view).setImageBitmap(bitmap);
    }

    @Override // com.nostra13.universalimageloader.core.imageaware.ViewAware
    public final void g(Drawable drawable, View view) {
        ((ImageView) view).setImageDrawable(drawable);
        if (drawable instanceof AnimationDrawable) {
            ((AnimationDrawable) drawable).start();
        }
    }
}
