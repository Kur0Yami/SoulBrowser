package com.google.android.material.internal;

import android.animation.ValueAnimator;
import android.view.View;
import androidx.annotation.RestrictTo;

@RestrictTo
/* loaded from: classes3.dex */
public class MultiViewUpdateListener implements ValueAnimator.AnimatorUpdateListener {

    /* loaded from: classes3.dex */
    public interface Listener {
        void a(ValueAnimator valueAnimator, View view);
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        throw null;
    }
}
