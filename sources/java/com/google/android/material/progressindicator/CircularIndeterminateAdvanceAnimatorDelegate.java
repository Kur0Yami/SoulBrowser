package com.google.android.material.progressindicator;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.util.Property;

/* loaded from: classes3.dex */
final class CircularIndeterminateAdvanceAnimatorDelegate extends IndeterminateAnimatorDelegate<ObjectAnimator> {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f11851c = 0;

    /* renamed from: a, reason: collision with root package name */
    public float f11852a;
    public float b;

    /* renamed from: com.google.android.material.progressindicator.CircularIndeterminateAdvanceAnimatorDelegate$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 extends AnimatorListenerAdapter {
        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationRepeat(Animator animator) {
            super.onAnimationRepeat(animator);
            throw null;
        }
    }

    /* renamed from: com.google.android.material.progressindicator.CircularIndeterminateAdvanceAnimatorDelegate$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass2 extends AnimatorListenerAdapter {
        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            throw null;
        }
    }

    /* renamed from: com.google.android.material.progressindicator.CircularIndeterminateAdvanceAnimatorDelegate$3, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass3 extends Property<CircularIndeterminateAdvanceAnimatorDelegate, Float> {
        @Override // android.util.Property
        public final Float get(CircularIndeterminateAdvanceAnimatorDelegate circularIndeterminateAdvanceAnimatorDelegate) {
            return Float.valueOf(circularIndeterminateAdvanceAnimatorDelegate.f11852a);
        }

        @Override // android.util.Property
        public final void set(CircularIndeterminateAdvanceAnimatorDelegate circularIndeterminateAdvanceAnimatorDelegate, Float f) {
            circularIndeterminateAdvanceAnimatorDelegate.f11852a = f.floatValue();
            throw null;
        }
    }

    /* renamed from: com.google.android.material.progressindicator.CircularIndeterminateAdvanceAnimatorDelegate$4, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass4 extends Property<CircularIndeterminateAdvanceAnimatorDelegate, Float> {
        @Override // android.util.Property
        public final Float get(CircularIndeterminateAdvanceAnimatorDelegate circularIndeterminateAdvanceAnimatorDelegate) {
            return Float.valueOf(circularIndeterminateAdvanceAnimatorDelegate.b);
        }

        @Override // android.util.Property
        public final void set(CircularIndeterminateAdvanceAnimatorDelegate circularIndeterminateAdvanceAnimatorDelegate, Float f) {
            circularIndeterminateAdvanceAnimatorDelegate.b = f.floatValue();
        }
    }

    static {
        new Property(Float.class, "animationFraction");
        new Property(Float.class, "completeEndFraction");
    }

    public final void a() {
    }
}
