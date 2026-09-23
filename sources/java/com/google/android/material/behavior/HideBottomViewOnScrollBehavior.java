package com.google.android.material.behavior;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.accessibility.AccessibilityManager;
import androidx.annotation.RestrictTo;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.interpolator.view.animation.LinearOutSlowInInterpolator;
import com.google.android.material.R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.motion.MotionUtils;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Iterator;
import java.util.LinkedHashSet;

@Deprecated
/* loaded from: classes3.dex */
public class HideBottomViewOnScrollBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {
    public static final int p = R.attr.motionDurationLong2;
    public static final int q = R.attr.motionDurationMedium4;
    public static final int r = R.attr.motionEasingEmphasizedInterpolator;
    public int f;
    public int g;
    public TimeInterpolator h;
    public TimeInterpolator i;
    public AccessibilityManager k;
    public a l;
    public ViewPropertyAnimator o;

    /* renamed from: c, reason: collision with root package name */
    public final LinkedHashSet f11659c = new LinkedHashSet();
    public int j = 0;
    public final boolean m = true;
    public int n = 2;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.behavior.HideBottomViewOnScrollBehavior$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass2 extends AnimatorListenerAdapter {
        public AnonymousClass2() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            HideBottomViewOnScrollBehavior.this.o = null;
        }
    }

    /* loaded from: classes3.dex */
    public interface OnScrollStateChangedListener {
        void a();
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes3.dex */
    public @interface ScrollState {
    }

    public HideBottomViewOnScrollBehavior() {
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean n(CoordinatorLayout coordinatorLayout, View view, int i) {
        this.j = view.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) view.getLayoutParams()).bottomMargin;
        this.f = MotionUtils.c(view.getContext(), p, 225);
        this.g = MotionUtils.c(view.getContext(), q, 175);
        Context context = view.getContext();
        LinearOutSlowInInterpolator linearOutSlowInInterpolator = AnimationUtils.d;
        int i2 = r;
        this.h = MotionUtils.d(context, i2, linearOutSlowInInterpolator);
        this.i = MotionUtils.d(view.getContext(), i2, AnimationUtils.f11632c);
        if (this.k == null) {
            this.k = (AccessibilityManager) view.getContext().getSystemService(AccessibilityManager.class);
        }
        AccessibilityManager accessibilityManager = this.k;
        if (accessibilityManager != null && this.l == null) {
            a aVar = new a(this, view, 0);
            this.l = aVar;
            accessibilityManager.addTouchExplorationStateChangeListener(aVar);
            view.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.google.android.material.behavior.HideBottomViewOnScrollBehavior.1
                @Override // android.view.View.OnAttachStateChangeListener
                public final void onViewAttachedToWindow(View view2) {
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public final void onViewDetachedFromWindow(View view2) {
                    AccessibilityManager accessibilityManager2;
                    HideBottomViewOnScrollBehavior hideBottomViewOnScrollBehavior = HideBottomViewOnScrollBehavior.this;
                    a aVar2 = hideBottomViewOnScrollBehavior.l;
                    if (aVar2 != null && (accessibilityManager2 = hideBottomViewOnScrollBehavior.k) != null) {
                        accessibilityManager2.removeTouchExplorationStateChangeListener(aVar2);
                        hideBottomViewOnScrollBehavior.l = null;
                    }
                }
            });
            return false;
        }
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void r(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3, int[] iArr) {
        AccessibilityManager accessibilityManager;
        if (i > 0) {
            if (this.n != 1) {
                if (!this.m || (accessibilityManager = this.k) == null || !accessibilityManager.isTouchExplorationEnabled()) {
                    ViewPropertyAnimator viewPropertyAnimator = this.o;
                    if (viewPropertyAnimator != null) {
                        viewPropertyAnimator.cancel();
                        view.clearAnimation();
                    }
                    this.n = 1;
                    Iterator it = this.f11659c.iterator();
                    while (it.hasNext()) {
                        ((OnScrollStateChangedListener) it.next()).a();
                    }
                    this.o = view.animate().translationY(this.j).setInterpolator(this.i).setDuration(this.g).setListener(new AnonymousClass2());
                    return;
                }
                return;
            }
            return;
        }
        if (i < 0) {
            y(view);
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean v(CoordinatorLayout coordinatorLayout, View view, View view2, View view3, int i, int i2) {
        return i == 2;
    }

    public final void y(View view) {
        if (this.n == 2) {
            return;
        }
        ViewPropertyAnimator viewPropertyAnimator = this.o;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            view.clearAnimation();
        }
        this.n = 2;
        Iterator it = this.f11659c.iterator();
        while (it.hasNext()) {
            ((OnScrollStateChangedListener) it.next()).a();
        }
        this.o = view.animate().translationY(0).setInterpolator(this.h).setDuration(this.f).setListener(new AnonymousClass2());
    }

    public HideBottomViewOnScrollBehavior(Context context, AttributeSet attributeSet) {
    }
}
