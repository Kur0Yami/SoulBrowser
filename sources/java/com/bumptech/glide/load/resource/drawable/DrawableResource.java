package com.bumptech.glide.load.resource.drawable;

import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.load.engine.Initializable;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import com.bumptech.glide.util.Preconditions;

/* loaded from: classes.dex */
public abstract class DrawableResource<T extends Drawable> implements Resource<T>, Initializable {

    /* renamed from: c, reason: collision with root package name */
    public final Drawable f2396c;

    public DrawableResource(Drawable drawable) {
        Preconditions.c(drawable, "Argument must not be null");
        this.f2396c = drawable;
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public final Object get() {
        Drawable drawable = this.f2396c;
        Drawable.ConstantState constantState = drawable.getConstantState();
        if (constantState == null) {
            return drawable;
        }
        return constantState.newDrawable();
    }

    public void s() {
        Drawable drawable = this.f2396c;
        if (drawable instanceof BitmapDrawable) {
            ((BitmapDrawable) drawable).getBitmap().prepareToDraw();
        } else if (drawable instanceof GifDrawable) {
            ((GifDrawable) drawable).c().prepareToDraw();
        }
    }
}
