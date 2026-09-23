package com.google.android.material.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;

/* loaded from: classes3.dex */
public final class FadeProvider implements VisibilityAnimatorProvider {

    /* renamed from: com.google.android.material.transition.FadeProvider$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements ValueAnimator.AnimatorUpdateListener {
        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
            ((Float) valueAnimator.getAnimatedValue()).floatValue();
            throw null;
        }
    }

    /* renamed from: com.google.android.material.transition.FadeProvider$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass2 extends AnimatorListenerAdapter {
        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            throw null;
        }
    }
}
