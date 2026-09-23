package com.bumptech.glide.request.transition;

import com.bumptech.glide.request.target.ImageViewTarget;

/* loaded from: classes.dex */
public class ViewPropertyTransition<R> implements Transition<R> {

    /* loaded from: classes.dex */
    public interface Animator {
    }

    @Override // com.bumptech.glide.request.transition.Transition
    public final boolean a(Object obj, ImageViewTarget imageViewTarget) {
        if (imageViewTarget.f == null) {
            return false;
        }
        throw null;
    }
}
