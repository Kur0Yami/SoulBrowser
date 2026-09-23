package com.google.android.material.behavior;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.accessibility.AccessibilityManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
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

/* loaded from: classes3.dex */
public class HideViewOnScrollBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {
    public static final int p = R.attr.motionDurationLong2;
    public static final int q = R.attr.motionDurationMedium4;
    public static final int r = R.attr.motionEasingEmphasizedInterpolator;

    /* renamed from: c, reason: collision with root package name */
    public HideViewOnScrollDelegate f11662c;
    public AccessibilityManager f;
    public a g;
    public int i;
    public int j;
    public TimeInterpolator k;
    public TimeInterpolator l;
    public ViewPropertyAnimator o;
    public final LinkedHashSet h = new LinkedHashSet();
    public int m = 0;
    public int n = 2;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.behavior.HideViewOnScrollBehavior$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass2 extends AnimatorListenerAdapter {
        public AnonymousClass2() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            HideViewOnScrollBehavior.this.o = null;
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

    public HideViewOnScrollBehavior() {
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean n(CoordinatorLayout coordinatorLayout, View view, int i) {
        int i2;
        if (this.f == null) {
            this.f = (AccessibilityManager) view.getContext().getSystemService(AccessibilityManager.class);
        }
        AccessibilityManager accessibilityManager = this.f;
        if (accessibilityManager != null && this.g == null) {
            a aVar = new a(this, view, 1);
            this.g = aVar;
            accessibilityManager.addTouchExplorationStateChangeListener(aVar);
            view.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.google.android.material.behavior.HideViewOnScrollBehavior.1
                @Override // android.view.View.OnAttachStateChangeListener
                public final void onViewAttachedToWindow(View view2) {
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public final void onViewDetachedFromWindow(View view2) {
                    AccessibilityManager accessibilityManager2;
                    HideViewOnScrollBehavior hideViewOnScrollBehavior = HideViewOnScrollBehavior.this;
                    a aVar2 = hideViewOnScrollBehavior.g;
                    if (aVar2 != null && (accessibilityManager2 = hideViewOnScrollBehavior.f) != null) {
                        accessibilityManager2.removeTouchExplorationStateChangeListener(aVar2);
                        hideViewOnScrollBehavior.g = null;
                    }
                }
            });
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int i3 = ((CoordinatorLayout.LayoutParams) view.getLayoutParams()).f611c;
        if (i3 != 80 && i3 != 81) {
            int absoluteGravity = Gravity.getAbsoluteGravity(i3, i);
            if (absoluteGravity != 3 && absoluteGravity != 19) {
                i2 = 0;
            } else {
                i2 = 2;
            }
            y(i2);
        } else {
            y(1);
        }
        this.m = this.f11662c.a(view, marginLayoutParams);
        this.i = MotionUtils.c(view.getContext(), p, 225);
        this.j = MotionUtils.c(view.getContext(), q, 175);
        Context context = view.getContext();
        LinearOutSlowInInterpolator linearOutSlowInInterpolator = AnimationUtils.d;
        int i4 = r;
        this.k = MotionUtils.d(context, i4, linearOutSlowInInterpolator);
        this.l = MotionUtils.d(view.getContext(), i4, AnimationUtils.f11632c);
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void r(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3, int[] iArr) {
        if (i > 0) {
            if (this.n != 1) {
                AccessibilityManager accessibilityManager = this.f;
                if (accessibilityManager == null || !accessibilityManager.isTouchExplorationEnabled()) {
                    ViewPropertyAnimator viewPropertyAnimator = this.o;
                    if (viewPropertyAnimator != null) {
                        viewPropertyAnimator.cancel();
                        view.clearAnimation();
                    }
                    this.n = 1;
                    Iterator it = this.h.iterator();
                    while (it.hasNext()) {
                        ((OnScrollStateChangedListener) it.next()).a();
                    }
                    this.o = this.f11662c.c(view, this.m).setInterpolator(this.l).setDuration(this.j).setListener(new AnonymousClass2());
                    return;
                }
                return;
            }
            return;
        }
        if (i < 0) {
            z(view);
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean v(CoordinatorLayout coordinatorLayout, View view, View view2, View view3, int i, int i2) {
        return i == 2;
    }

    /* JADX WARN: Type inference failed for: r4v1, types: [com.google.android.material.behavior.HideViewOnScrollDelegate, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v2, types: [com.google.android.material.behavior.HideViewOnScrollDelegate, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v4, types: [com.google.android.material.behavior.HideViewOnScrollDelegate, java.lang.Object] */
    public final void y(int i) {
        HideViewOnScrollDelegate hideViewOnScrollDelegate = this.f11662c;
        if (hideViewOnScrollDelegate != null && hideViewOnScrollDelegate.b() == i) {
            return;
        }
        if (i != 0) {
            if (i != 1) {
                if (i == 2) {
                    this.f11662c = new Object();
                    return;
                }
                throw new IllegalArgumentException(android.support.v4.media.a.f(i, "Invalid view edge position value: ", ". Must be 0, 1 or 2."));
            }
            this.f11662c = new Object();
            return;
        }
        this.f11662c = new Object();
    }

    public final void z(View view) {
        if (this.n == 2) {
            return;
        }
        ViewPropertyAnimator viewPropertyAnimator = this.o;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            view.clearAnimation();
        }
        this.n = 2;
        Iterator it = this.h.iterator();
        while (it.hasNext()) {
            ((OnScrollStateChangedListener) it.next()).a();
        }
        this.f11662c.getClass();
        this.o = this.f11662c.c(view, 0).setInterpolator(this.k).setDuration(this.i).setListener(new AnonymousClass2());
    }

    public HideViewOnScrollBehavior(@NonNull Context context, @Nullable AttributeSet attributeSet) {
    }
}
