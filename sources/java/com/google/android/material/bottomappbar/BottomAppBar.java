package com.google.android.material.bottomappbar;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.ColorInt;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.WindowInsetsCompat;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.animation.TransformationCallback;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.motion.MotionUtils;
import com.google.android.material.shape.MaterialShapeUtils;
import com.google.api.client.http.HttpStatusCodes;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class BottomAppBar extends Toolbar implements CoordinatorLayout.AttachedBehavior {
    public static final int m0 = R.attr.motionDurationLong2;
    public static final int n0 = R.attr.motionEasingEmphasizedInterpolator;
    public Integer b0;
    public AnimatorSet c0;
    public AnimatorSet d0;
    public int e0;
    public int f0;
    public int g0;
    public int h0;
    public int i0;
    public boolean j0;
    public boolean k0;
    public Behavior l0;

    /* renamed from: com.google.android.material.bottomappbar.BottomAppBar$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 extends AnimatorListenerAdapter {
        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator) {
            throw null;
        }
    }

    /* renamed from: com.google.android.material.bottomappbar.BottomAppBar$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass2 implements TransformationCallback<FloatingActionButton> {
    }

    /* renamed from: com.google.android.material.bottomappbar.BottomAppBar$3, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass3 implements ViewUtils.OnApplyWindowInsetsListener {
        @Override // com.google.android.material.internal.ViewUtils.OnApplyWindowInsetsListener
        public final WindowInsetsCompat a(View view, WindowInsetsCompat windowInsetsCompat, ViewUtils.RelativePadding relativePadding) {
            int i = BottomAppBar.m0;
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public interface AnimationListener {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes3.dex */
    public @interface FabAlignmentMode {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes3.dex */
    public @interface FabAnchorMode {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes3.dex */
    public @interface FabAnimationMode {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes3.dex */
    public @interface MenuAlignmentMode {
    }

    /* loaded from: classes3.dex */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Object();
        public int g;
        public boolean h;

        /* renamed from: com.google.android.material.bottomappbar.BottomAppBar$SavedState$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        public class AnonymousClass1 implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.ClassLoaderCreator
            public final SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public final Object[] newArray(int i) {
                return new SavedState[i];
            }

            @Override // android.os.Parcelable.Creator
            public final Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            boolean z;
            this.g = parcel.readInt();
            if (parcel.readInt() != 0) {
                z = true;
            } else {
                z = false;
            }
            this.h = z;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.g);
            parcel.writeInt(this.h ? 1 : 0);
        }
    }

    @Nullable
    private ActionMenuView getActionMenuView() {
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt instanceof ActionMenuView) {
                return (ActionMenuView) childAt;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getBottomInset() {
        throw null;
    }

    private int getFabAlignmentAnimationDuration() {
        return MotionUtils.c(getContext(), m0, HttpStatusCodes.STATUS_CODE_MULTIPLE_CHOICES);
    }

    private float getFabTranslationX() {
        return E(this.e0);
    }

    private float getFabTranslationY() {
        int i;
        if (this.g0 == 1) {
            return -getTopEdgeTreatment().g;
        }
        View C = C();
        if (C != null) {
            i = (-((getMeasuredHeight() + getBottomInset()) - C.getMeasuredHeight())) / 2;
        } else {
            i = 0;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getLeftInset() {
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getRightInset() {
        throw null;
    }

    @NonNull
    private BottomAppBarTopEdgeTreatment getTopEdgeTreatment() {
        throw null;
    }

    public final View C() {
        if (getParent() instanceof CoordinatorLayout) {
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) getParent();
            List list = (List) coordinatorLayout.f.b.get(this);
            ArrayList arrayList = coordinatorLayout.h;
            arrayList.clear();
            if (list != null) {
                arrayList.addAll(list);
            }
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                View view = (View) obj;
                if ((view instanceof FloatingActionButton) || (view instanceof ExtendedFloatingActionButton)) {
                    return view;
                }
            }
            return null;
        }
        return null;
    }

    public final int D(ActionMenuView actionMenuView, int i, boolean z) {
        int i2;
        boolean z2 = true;
        if (this.i0 != 1 && (i != 1 || !z)) {
            return 0;
        }
        if (getLayoutDirection() != 1) {
            z2 = false;
        }
        if (z2) {
            i2 = getMeasuredWidth();
        } else {
            i2 = 0;
        }
        for (int i3 = 0; i3 < getChildCount(); i3++) {
            View childAt = getChildAt(i3);
            if ((childAt.getLayoutParams() instanceof Toolbar.LayoutParams) && (((Toolbar.LayoutParams) childAt.getLayoutParams()).f72a & 8388615) == 8388611) {
                if (z2) {
                    i2 = Math.min(i2, childAt.getLeft());
                } else {
                    i2 = Math.max(i2, childAt.getRight());
                }
            }
        }
        if (z2) {
            actionMenuView.getRight();
        } else {
            actionMenuView.getLeft();
        }
        throw null;
    }

    public final float E(int i) {
        if (getLayoutDirection() == 1) {
        }
        if (i == 1) {
            C();
            throw null;
        }
        return 0.0f;
    }

    public final boolean F() {
        FloatingActionButton floatingActionButton;
        View C = C();
        if (C instanceof FloatingActionButton) {
            floatingActionButton = (FloatingActionButton) C;
        } else {
            floatingActionButton = null;
        }
        if (floatingActionButton != null && floatingActionButton.h()) {
            return true;
        }
        return false;
    }

    public final void G() {
        BottomAppBarTopEdgeTreatment topEdgeTreatment = getTopEdgeTreatment();
        getFabTranslationX();
        topEdgeTreatment.getClass();
        if (this.k0 && F()) {
            int i = this.g0;
        }
        throw null;
    }

    public final void H(final ActionMenuView actionMenuView, final int i, final boolean z, boolean z2) {
        Runnable runnable = new Runnable() { // from class: com.google.android.material.bottomappbar.BottomAppBar.8
            @Override // java.lang.Runnable
            public final void run() {
                int i2 = i;
                boolean z3 = z;
                BottomAppBar bottomAppBar = BottomAppBar.this;
                ActionMenuView actionMenuView2 = actionMenuView;
                bottomAppBar.D(actionMenuView2, i2, z3);
                actionMenuView2.setTranslationX(0);
            }
        };
        if (z2) {
            actionMenuView.post(runnable);
        } else {
            runnable.run();
        }
    }

    @Nullable
    public ColorStateList getBackgroundTint() {
        throw null;
    }

    @Dimension
    public float getCradleVerticalOffset() {
        return getTopEdgeTreatment().g;
    }

    public int getFabAlignmentMode() {
        return this.e0;
    }

    @Px
    public int getFabAlignmentModeEndMargin() {
        return this.h0;
    }

    public int getFabAnchorMode() {
        return this.g0;
    }

    public int getFabAnimationMode() {
        return this.f0;
    }

    public float getFabCradleMargin() {
        return getTopEdgeTreatment().f;
    }

    @Dimension
    public float getFabCradleRoundedCornerRadius() {
        return getTopEdgeTreatment().f11680c;
    }

    public boolean getHideOnScroll() {
        return this.j0;
    }

    public int getMenuAlignmentMode() {
        return this.i0;
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        MaterialShapeUtils.c(this, null);
        throw null;
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (!z) {
            ActionMenuView actionMenuView = getActionMenuView();
            if (actionMenuView != null && this.d0 == null) {
                actionMenuView.setAlpha(1.0f);
                if (!F()) {
                    H(actionMenuView, 0, false, false);
                    return;
                } else {
                    H(actionMenuView, this.e0, this.k0, false);
                    return;
                }
            }
            return;
        }
        AnimatorSet animatorSet = this.d0;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        AnimatorSet animatorSet2 = this.c0;
        if (animatorSet2 != null) {
            animatorSet2.cancel();
        }
        G();
        throw null;
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.f936c);
        this.e0 = savedState.g;
        this.k0 = savedState.h;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [android.os.Parcelable, androidx.customview.view.AbsSavedState, com.google.android.material.bottomappbar.BottomAppBar$SavedState] */
    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    public final Parcelable onSaveInstanceState() {
        ?? absSavedState = new AbsSavedState(super.onSaveInstanceState());
        absSavedState.g = this.e0;
        absSavedState.h = this.k0;
        return absSavedState;
    }

    public void setBackgroundTint(@Nullable ColorStateList colorStateList) {
        throw null;
    }

    public void setCradleVerticalOffset(@Dimension float f) {
        if (f == getCradleVerticalOffset()) {
            return;
        }
        BottomAppBarTopEdgeTreatment topEdgeTreatment = getTopEdgeTreatment();
        if (f >= 0.0f) {
            topEdgeTreatment.g = f;
            throw null;
        }
        topEdgeTreatment.getClass();
        throw new IllegalArgumentException("cradleVerticalOffset must be positive.");
    }

    @Override // android.view.View
    public void setElevation(float f) {
        throw null;
    }

    public void setFabAlignmentMode(final int i) {
        final int i2;
        final boolean z = this.k0;
        if (isLaidOut()) {
            AnimatorSet animatorSet = this.d0;
            if (animatorSet != null) {
                animatorSet.cancel();
            }
            ArrayList arrayList = new ArrayList();
            if (!F()) {
                z = false;
                i2 = 0;
            } else {
                i2 = i;
            }
            final ActionMenuView actionMenuView = getActionMenuView();
            if (actionMenuView != null) {
                float fabAlignmentAnimationDuration = getFabAlignmentAnimationDuration();
                ObjectAnimator ofFloat = ObjectAnimator.ofFloat(actionMenuView, "alpha", 1.0f);
                ofFloat.setDuration(0.8f * fabAlignmentAnimationDuration);
                float translationX = actionMenuView.getTranslationX();
                D(actionMenuView, i2, z);
                if (Math.abs(translationX - 0) > 1.0f) {
                    ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(actionMenuView, "alpha", 0.0f);
                    ofFloat2.setDuration(fabAlignmentAnimationDuration * 0.2f);
                    ofFloat2.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.bottomappbar.BottomAppBar.7

                        /* renamed from: a, reason: collision with root package name */
                        public boolean f11675a;

                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public final void onAnimationCancel(Animator animator) {
                            this.f11675a = true;
                        }

                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public final void onAnimationEnd(Animator animator) {
                            if (!this.f11675a) {
                                BottomAppBar.this.H(actionMenuView, i2, z, false);
                            }
                        }
                    });
                    AnimatorSet animatorSet2 = new AnimatorSet();
                    animatorSet2.playSequentially(ofFloat2, ofFloat);
                    arrayList.add(animatorSet2);
                } else if (actionMenuView.getAlpha() < 1.0f) {
                    arrayList.add(ofFloat);
                }
            }
            AnimatorSet animatorSet3 = new AnimatorSet();
            animatorSet3.playTogether(arrayList);
            this.d0 = animatorSet3;
            animatorSet3.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.bottomappbar.BottomAppBar.6
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    int i3 = BottomAppBar.m0;
                    BottomAppBar.this.d0 = null;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationStart(Animator animator) {
                    int i3 = BottomAppBar.m0;
                }
            });
            this.d0.start();
        }
        if (this.e0 != i && isLaidOut()) {
            AnimatorSet animatorSet4 = this.c0;
            if (animatorSet4 != null) {
                animatorSet4.cancel();
            }
            ArrayList arrayList2 = new ArrayList();
            FloatingActionButton floatingActionButton = null;
            if (this.f0 == 1) {
                View C = C();
                if (C instanceof FloatingActionButton) {
                    floatingActionButton = (FloatingActionButton) C;
                }
                ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(floatingActionButton, "translationX", E(i));
                ofFloat3.setDuration(getFabAlignmentAnimationDuration());
                arrayList2.add(ofFloat3);
            } else {
                View C2 = C();
                if (C2 instanceof FloatingActionButton) {
                    floatingActionButton = (FloatingActionButton) C2;
                }
                if (floatingActionButton != null && !floatingActionButton.g()) {
                    floatingActionButton.f(new FloatingActionButton.OnVisibilityChangedListener() { // from class: com.google.android.material.bottomappbar.BottomAppBar.5

                        /* renamed from: com.google.android.material.bottomappbar.BottomAppBar$5$1, reason: invalid class name */
                        /* loaded from: classes3.dex */
                        class AnonymousClass1 extends FloatingActionButton.OnVisibilityChangedListener {
                            @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.OnVisibilityChangedListener
                            public final void b() {
                                int i = BottomAppBar.m0;
                            }
                        }

                        /* JADX WARN: Multi-variable type inference failed */
                        /* JADX WARN: Type inference failed for: r0v3, types: [com.google.android.material.floatingactionbutton.FloatingActionButton$OnVisibilityChangedListener, java.lang.Object] */
                        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.OnVisibilityChangedListener
                        public final void a(FloatingActionButton floatingActionButton2) {
                            int i3 = BottomAppBar.m0;
                            floatingActionButton2.setTranslationX(BottomAppBar.this.E(i));
                            floatingActionButton2.j(new Object(), true);
                        }
                    }, true);
                }
            }
            AnimatorSet animatorSet5 = new AnimatorSet();
            animatorSet5.playTogether(arrayList2);
            animatorSet5.setInterpolator(MotionUtils.d(getContext(), n0, AnimationUtils.f11631a));
            this.c0 = animatorSet5;
            animatorSet5.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.bottomappbar.BottomAppBar.4
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    int i3 = BottomAppBar.m0;
                    BottomAppBar.this.c0 = null;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationStart(Animator animator) {
                    int i3 = BottomAppBar.m0;
                }
            });
            this.c0.start();
        }
        this.e0 = i;
    }

    public void setFabAlignmentModeEndMargin(@Px int i) {
        if (this.h0 == i) {
            return;
        }
        this.h0 = i;
        G();
        throw null;
    }

    public void setFabAnchorMode(int i) {
        this.g0 = i;
        G();
        throw null;
    }

    public void setFabAnimationMode(int i) {
        this.f0 = i;
    }

    public void setFabCornerSize(@Dimension float f) {
        if (f == getTopEdgeTreatment().h) {
            return;
        }
        getTopEdgeTreatment().h = f;
        throw null;
    }

    public void setFabCradleMargin(@Dimension float f) {
        if (f == getFabCradleMargin()) {
            return;
        }
        getTopEdgeTreatment().f = f;
        throw null;
    }

    public void setFabCradleRoundedCornerRadius(@Dimension float f) {
        if (f == getFabCradleRoundedCornerRadius()) {
            return;
        }
        getTopEdgeTreatment().f11680c = f;
        throw null;
    }

    public void setHideOnScroll(boolean z) {
        this.j0 = z;
    }

    public void setMenuAlignmentMode(int i) {
        if (this.i0 != i) {
            this.i0 = i;
            ActionMenuView actionMenuView = getActionMenuView();
            if (actionMenuView != null) {
                H(actionMenuView, this.e0, F(), false);
            }
        }
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setNavigationIcon(@Nullable Drawable drawable) {
        if (drawable != null && this.b0 != null) {
            drawable = drawable.mutate();
            drawable.setTint(this.b0.intValue());
        }
        super.setNavigationIcon(drawable);
    }

    public void setNavigationIconTint(@ColorInt int i) {
        this.b0 = Integer.valueOf(i);
        Drawable navigationIcon = getNavigationIcon();
        if (navigationIcon != null) {
            setNavigationIcon(navigationIcon);
        }
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setSubtitle(CharSequence charSequence) {
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setTitle(CharSequence charSequence) {
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AttachedBehavior
    @NonNull
    public Behavior getBehavior() {
        if (this.l0 == null) {
            this.l0 = new Behavior();
        }
        return this.l0;
    }

    /* loaded from: classes3.dex */
    public static class Behavior extends HideBottomViewOnScrollBehavior<BottomAppBar> {
        public final Rect s;
        public WeakReference t;
        public int u;
        public final View.OnLayoutChangeListener v;

        public Behavior() {
            this.v = new View.OnLayoutChangeListener() { // from class: com.google.android.material.bottomappbar.BottomAppBar.Behavior.1
                @Override // android.view.View.OnLayoutChangeListener
                public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                    Behavior behavior = Behavior.this;
                    BottomAppBar bottomAppBar = (BottomAppBar) behavior.t.get();
                    if (bottomAppBar != null && ((view instanceof FloatingActionButton) || (view instanceof ExtendedFloatingActionButton))) {
                        int height = view.getHeight();
                        if (!(view instanceof FloatingActionButton)) {
                            CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) view.getLayoutParams();
                            if (behavior.u == 0) {
                                if (bottomAppBar.g0 == 1) {
                                    ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = bottomAppBar.getBottomInset() + (bottomAppBar.getResources().getDimensionPixelOffset(R.dimen.mtrl_bottomappbar_fab_bottom_margin) - ((view.getMeasuredHeight() - height) / 2));
                                }
                                ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = bottomAppBar.getLeftInset();
                                ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin = bottomAppBar.getRightInset();
                                if (view.getLayoutDirection() == 1) {
                                    ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                                } else {
                                    ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                                }
                            }
                            int i9 = BottomAppBar.m0;
                            bottomAppBar.G();
                            throw null;
                        }
                        FloatingActionButton floatingActionButton = (FloatingActionButton) view;
                        behavior.s.set(0, 0, floatingActionButton.getMeasuredWidth(), floatingActionButton.getMeasuredHeight());
                        throw null;
                    }
                    view.removeOnLayoutChangeListener(this);
                }
            };
            this.s = new Rect();
        }

        @Override // com.google.android.material.behavior.HideBottomViewOnScrollBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final boolean n(CoordinatorLayout coordinatorLayout, View view, int i) {
            final BottomAppBar bottomAppBar = (BottomAppBar) view;
            this.t = new WeakReference(bottomAppBar);
            int i2 = BottomAppBar.m0;
            View C = bottomAppBar.C();
            if (C != null && !C.isLaidOut()) {
                CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) C.getLayoutParams();
                layoutParams.d = 17;
                int i3 = bottomAppBar.g0;
                if (i3 == 1) {
                    layoutParams.d = 49;
                }
                if (i3 == 0) {
                    layoutParams.d |= 80;
                }
                this.u = ((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.LayoutParams) C.getLayoutParams())).bottomMargin;
                if (C instanceof FloatingActionButton) {
                    FloatingActionButton floatingActionButton = (FloatingActionButton) C;
                    if (floatingActionButton.getShowMotionSpec() == null) {
                        floatingActionButton.setShowMotionSpecResource(R.animator.mtrl_fab_show_motion_spec);
                    }
                    if (floatingActionButton.getHideMotionSpec() == null) {
                        floatingActionButton.setHideMotionSpecResource(R.animator.mtrl_fab_hide_motion_spec);
                    }
                    floatingActionButton.b();
                    floatingActionButton.c(new AnimatorListenerAdapter() { // from class: com.google.android.material.bottomappbar.BottomAppBar.9
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public final void onAnimationStart(Animator animator) {
                            BottomAppBar.this.getClass();
                            throw null;
                        }
                    });
                    floatingActionButton.d();
                }
                C.addOnLayoutChangeListener(this.v);
                bottomAppBar.G();
                throw null;
            }
            coordinatorLayout.q(bottomAppBar, i);
            super.n(coordinatorLayout, bottomAppBar, i);
            return false;
        }

        @Override // com.google.android.material.behavior.HideBottomViewOnScrollBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final boolean v(CoordinatorLayout coordinatorLayout, View view, View view2, View view3, int i, int i2) {
            BottomAppBar bottomAppBar = (BottomAppBar) view;
            if (bottomAppBar.getHideOnScroll() && super.v(coordinatorLayout, bottomAppBar, view2, view3, i, i2)) {
                return true;
            }
            return false;
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.v = new View.OnLayoutChangeListener() { // from class: com.google.android.material.bottomappbar.BottomAppBar.Behavior.1
                @Override // android.view.View.OnLayoutChangeListener
                public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                    Behavior behavior = Behavior.this;
                    BottomAppBar bottomAppBar = (BottomAppBar) behavior.t.get();
                    if (bottomAppBar != null && ((view instanceof FloatingActionButton) || (view instanceof ExtendedFloatingActionButton))) {
                        int height = view.getHeight();
                        if (!(view instanceof FloatingActionButton)) {
                            CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) view.getLayoutParams();
                            if (behavior.u == 0) {
                                if (bottomAppBar.g0 == 1) {
                                    ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = bottomAppBar.getBottomInset() + (bottomAppBar.getResources().getDimensionPixelOffset(R.dimen.mtrl_bottomappbar_fab_bottom_margin) - ((view.getMeasuredHeight() - height) / 2));
                                }
                                ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = bottomAppBar.getLeftInset();
                                ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin = bottomAppBar.getRightInset();
                                if (view.getLayoutDirection() == 1) {
                                    ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                                } else {
                                    ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                                }
                            }
                            int i9 = BottomAppBar.m0;
                            bottomAppBar.G();
                            throw null;
                        }
                        FloatingActionButton floatingActionButton = (FloatingActionButton) view;
                        behavior.s.set(0, 0, floatingActionButton.getMeasuredWidth(), floatingActionButton.getMeasuredHeight());
                        throw null;
                    }
                    view.removeOnLayoutChangeListener(this);
                }
            };
            this.s = new Rect();
        }
    }
}
