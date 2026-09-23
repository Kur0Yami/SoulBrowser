package com.google.android.material.progressindicator;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.util.Property;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.material.animation.AnimationUtils;

/* loaded from: classes3.dex */
final class CircularIndeterminateRetreatAnimatorDelegate extends IndeterminateAnimatorDelegate<ObjectAnimator> {

    /* renamed from: c, reason: collision with root package name */
    public static final int[] f11853c;

    /* renamed from: a, reason: collision with root package name */
    public float f11854a;
    public float b;

    /* renamed from: com.google.android.material.progressindicator.CircularIndeterminateRetreatAnimatorDelegate$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 extends AnimatorListenerAdapter {
        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationRepeat(Animator animator) {
            super.onAnimationRepeat(animator);
            int length = CircularIndeterminateRetreatAnimatorDelegate.f11853c.length;
            throw null;
        }
    }

    /* renamed from: com.google.android.material.progressindicator.CircularIndeterminateRetreatAnimatorDelegate$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass2 extends AnimatorListenerAdapter {
        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            throw null;
        }
    }

    /* renamed from: com.google.android.material.progressindicator.CircularIndeterminateRetreatAnimatorDelegate$3, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass3 extends Property<CircularIndeterminateRetreatAnimatorDelegate, Float> {
        @Override // android.util.Property
        public final Float get(CircularIndeterminateRetreatAnimatorDelegate circularIndeterminateRetreatAnimatorDelegate) {
            return Float.valueOf(circularIndeterminateRetreatAnimatorDelegate.f11854a);
        }

        @Override // android.util.Property
        public final void set(CircularIndeterminateRetreatAnimatorDelegate circularIndeterminateRetreatAnimatorDelegate, Float f) {
            circularIndeterminateRetreatAnimatorDelegate.f11854a = f.floatValue();
            throw null;
        }
    }

    /* renamed from: com.google.android.material.progressindicator.CircularIndeterminateRetreatAnimatorDelegate$4, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass4 extends Property<CircularIndeterminateRetreatAnimatorDelegate, Float> {
        @Override // android.util.Property
        public final Float get(CircularIndeterminateRetreatAnimatorDelegate circularIndeterminateRetreatAnimatorDelegate) {
            return Float.valueOf(circularIndeterminateRetreatAnimatorDelegate.b);
        }

        @Override // android.util.Property
        public final void set(CircularIndeterminateRetreatAnimatorDelegate circularIndeterminateRetreatAnimatorDelegate, Float f) {
            circularIndeterminateRetreatAnimatorDelegate.b = f.floatValue();
        }
    }

    static {
        FastOutSlowInInterpolator fastOutSlowInInterpolator = AnimationUtils.b;
        f11853c = new int[]{0, ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED, 3000, 4500};
        new Property(Float.class, "animationFraction");
        new Property(Float.class, "completeEndFraction");
    }

    public final void a() {
    }
}
