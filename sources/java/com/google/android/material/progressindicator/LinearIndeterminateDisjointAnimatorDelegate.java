package com.google.android.material.progressindicator;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.util.Property;

/* loaded from: classes3.dex */
final class LinearIndeterminateDisjointAnimatorDelegate extends IndeterminateAnimatorDelegate<ObjectAnimator> {
    public static final /* synthetic */ int b = 0;

    /* renamed from: a, reason: collision with root package name */
    public float f11858a;

    /* renamed from: com.google.android.material.progressindicator.LinearIndeterminateDisjointAnimatorDelegate$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 extends AnimatorListenerAdapter {
        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationRepeat(Animator animator) {
            super.onAnimationRepeat(animator);
            throw null;
        }
    }

    /* renamed from: com.google.android.material.progressindicator.LinearIndeterminateDisjointAnimatorDelegate$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass2 extends AnimatorListenerAdapter {
        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            throw null;
        }
    }

    /* renamed from: com.google.android.material.progressindicator.LinearIndeterminateDisjointAnimatorDelegate$3, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass3 extends Property<LinearIndeterminateDisjointAnimatorDelegate, Float> {
        @Override // android.util.Property
        public final Float get(LinearIndeterminateDisjointAnimatorDelegate linearIndeterminateDisjointAnimatorDelegate) {
            return Float.valueOf(linearIndeterminateDisjointAnimatorDelegate.f11858a);
        }

        @Override // android.util.Property
        public final void set(LinearIndeterminateDisjointAnimatorDelegate linearIndeterminateDisjointAnimatorDelegate, Float f) {
            linearIndeterminateDisjointAnimatorDelegate.f11858a = f.floatValue();
            throw null;
        }
    }

    static {
        new Property(Float.class, "animationFraction");
    }

    public final void a() {
    }
}
