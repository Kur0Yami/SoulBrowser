package com.bumptech.glide.request.transition;

import android.view.View;
import com.bumptech.glide.request.target.ImageViewTarget;

/* loaded from: classes.dex */
public class ViewTransition<R> implements Transition<R> {

    /* loaded from: classes.dex */
    public interface ViewTransitionAnimationFactory {
    }

    @Override // com.bumptech.glide.request.transition.Transition
    public final boolean a(Object obj, ImageViewTarget imageViewTarget) {
        View view = imageViewTarget.f;
        if (view == null) {
            return false;
        }
        view.clearAnimation();
        view.getContext();
        throw null;
    }
}
