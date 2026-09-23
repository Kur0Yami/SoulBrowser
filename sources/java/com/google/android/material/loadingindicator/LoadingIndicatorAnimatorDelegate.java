package com.google.android.material.loadingindicator;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.util.Property;
import androidx.dynamicanimation.animation.FloatPropertyCompat;
import com.google.android.material.shape.Shapeable;

/* loaded from: classes3.dex */
class LoadingIndicatorAnimatorDelegate {

    /* renamed from: a, reason: collision with root package name */
    public float f11826a;
    public float b;

    /* renamed from: com.google.android.material.loadingindicator.LoadingIndicatorAnimatorDelegate$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 extends AnimatorListenerAdapter {
        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationRepeat(Animator animator) {
            super.onAnimationRepeat(animator);
            throw null;
        }
    }

    /* renamed from: com.google.android.material.loadingindicator.LoadingIndicatorAnimatorDelegate$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass2 extends Property<LoadingIndicatorAnimatorDelegate, Float> {
        @Override // android.util.Property
        public final Float get(LoadingIndicatorAnimatorDelegate loadingIndicatorAnimatorDelegate) {
            return Float.valueOf(loadingIndicatorAnimatorDelegate.f11826a);
        }

        @Override // android.util.Property
        public final void set(LoadingIndicatorAnimatorDelegate loadingIndicatorAnimatorDelegate, Float f) {
            loadingIndicatorAnimatorDelegate.f11826a = f.floatValue();
            throw null;
        }
    }

    /* renamed from: com.google.android.material.loadingindicator.LoadingIndicatorAnimatorDelegate$3, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass3 extends FloatPropertyCompat<LoadingIndicatorAnimatorDelegate> {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public final float a(Shapeable shapeable) {
            return ((LoadingIndicatorAnimatorDelegate) shapeable).b;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public final void b(Shapeable shapeable, float f) {
            ((LoadingIndicatorAnimatorDelegate) shapeable).b = f;
            throw null;
        }
    }

    static {
        new Property(Float.class, "animationFraction");
    }
}
