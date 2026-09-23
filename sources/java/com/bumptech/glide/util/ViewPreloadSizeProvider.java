package com.bumptech.glide.util;

import android.graphics.drawable.Drawable;
import android.view.View;
import com.bumptech.glide.ListPreloader;
import com.bumptech.glide.request.target.CustomViewTarget;
import com.bumptech.glide.request.target.SizeReadyCallback;
import com.bumptech.glide.request.transition.Transition;

/* loaded from: classes.dex */
public class ViewPreloadSizeProvider<T> implements ListPreloader.PreloadSizeProvider<T>, SizeReadyCallback {

    /* loaded from: classes.dex */
    public static final class SizeViewTarget extends CustomViewTarget<View, Object> {
        @Override // com.bumptech.glide.request.target.Target
        public final void a(Object obj, Transition transition) {
        }

        @Override // com.bumptech.glide.request.target.Target
        public final void g(Drawable drawable) {
        }
    }

    @Override // com.bumptech.glide.request.target.SizeReadyCallback
    public final void b(int i, int i2) {
    }
}
