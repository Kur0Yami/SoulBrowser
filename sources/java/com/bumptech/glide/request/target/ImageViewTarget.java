package com.bumptech.glide.request.target;

import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.bumptech.glide.request.transition.Transition;

/* loaded from: classes.dex */
public abstract class ImageViewTarget<Z> extends ViewTarget<ImageView, Z> implements Transition.ViewAdapter {
    public Animatable i;

    @Override // com.bumptech.glide.request.target.Target
    public final void a(Object obj, Transition transition) {
        if (transition != null && transition.a(obj, this)) {
            if (obj instanceof Animatable) {
                Animatable animatable = (Animatable) obj;
                this.i = animatable;
                animatable.start();
                return;
            }
            this.i = null;
            return;
        }
        d(obj);
        if (obj instanceof Animatable) {
            Animatable animatable2 = (Animatable) obj;
            this.i = animatable2;
            animatable2.start();
            return;
        }
        this.i = null;
    }

    public final void b(Drawable drawable) {
        ((ImageView) this.f).setImageDrawable(drawable);
    }

    public abstract void d(Object obj);

    @Override // com.bumptech.glide.request.target.BaseTarget, com.bumptech.glide.request.target.Target
    public final void g(Drawable drawable) {
        d(null);
        this.i = null;
        b(drawable);
    }

    @Override // com.bumptech.glide.request.target.BaseTarget, com.bumptech.glide.manager.LifecycleListener
    public final void h() {
        Animatable animatable = this.i;
        if (animatable != null) {
            animatable.stop();
        }
    }

    @Override // com.bumptech.glide.request.target.ViewTarget, com.bumptech.glide.request.target.BaseTarget, com.bumptech.glide.request.target.Target
    public final void i(Drawable drawable) {
        d(null);
        this.i = null;
        b(drawable);
    }

    @Override // com.bumptech.glide.request.target.ViewTarget, com.bumptech.glide.request.target.BaseTarget, com.bumptech.glide.request.target.Target
    public final void l(Drawable drawable) {
        super.l(drawable);
        Animatable animatable = this.i;
        if (animatable != null) {
            animatable.stop();
        }
        d(null);
        this.i = null;
        b(drawable);
    }

    @Override // com.bumptech.glide.request.target.BaseTarget, com.bumptech.glide.manager.LifecycleListener
    public final void m() {
        Animatable animatable = this.i;
        if (animatable != null) {
            animatable.start();
        }
    }
}
