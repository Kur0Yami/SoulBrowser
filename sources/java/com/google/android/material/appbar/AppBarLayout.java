package com.google.android.material.appbar;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.AbsListView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.math.MathUtils;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.NestedScrollingChild;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.f;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.R;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.drawable.DrawableUtils;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.MaterialShapeUtils;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.WeakHashMap;

/* loaded from: classes3.dex */
public class AppBarLayout extends LinearLayout implements CoordinatorLayout.AttachedBehavior {
    public static final int F = R.style.Widget_Design_AppBarLayout;
    public int A;
    public Drawable B;
    public Integer C;
    public final float D;
    public Behavior E;

    /* renamed from: c, reason: collision with root package name */
    public int f11639c;
    public int f;
    public int g;
    public int h;
    public boolean i;
    public int j;
    public WindowInsetsCompat k;
    public ArrayList l;
    public boolean m;
    public boolean n;
    public boolean o;
    public boolean p;
    public ColorStateList q;
    public int r;
    public WeakReference s;
    public ValueAnimator t;
    public ValueAnimator.AnimatorUpdateListener u;
    public final ArrayList v;
    public final LinkedHashSet w;
    public final long x;
    public final TimeInterpolator y;
    public int[] z;

    /* loaded from: classes3.dex */
    public interface BaseOnOffsetChangedListener<T extends AppBarLayout> {
        void a(int i);
    }

    /* loaded from: classes3.dex */
    public static class Behavior extends BaseBehavior<AppBarLayout> {

        /* loaded from: classes3.dex */
        public static abstract class DragCallback extends BaseBehavior.BaseDragCallback<AppBarLayout> {
        }

        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class ChildScrollEffect {
    }

    /* loaded from: classes3.dex */
    public static class CompressChildScrollEffect extends ChildScrollEffect {

        /* renamed from: a, reason: collision with root package name */
        public final Rect f11643a = new Rect();
        public final Rect b = new Rect();
    }

    /* loaded from: classes3.dex */
    public static class LayoutParams extends LinearLayout.LayoutParams {

        /* renamed from: a, reason: collision with root package name */
        public int f11644a;
        public CompressChildScrollEffect b;

        /* renamed from: c, reason: collision with root package name */
        public Interpolator f11645c;

        @Retention(RetentionPolicy.SOURCE)
        @RestrictTo
        /* loaded from: classes3.dex */
        public @interface ScrollEffect {
        }

        @Retention(RetentionPolicy.SOURCE)
        @RestrictTo
        /* loaded from: classes3.dex */
        public @interface ScrollFlags {
        }

        public LayoutParams(int i) {
            super(-1, i);
            this.f11644a = 1;
        }
    }

    @Deprecated
    /* loaded from: classes3.dex */
    public interface LiftOnScrollListener {
        void c();
    }

    /* loaded from: classes3.dex */
    public static abstract class LiftOnScrollProgressListener {
        public abstract void a();
    }

    /* loaded from: classes3.dex */
    public interface OnOffsetChangedListener extends BaseOnOffsetChangedListener<AppBarLayout> {
    }

    /* loaded from: classes3.dex */
    public static class ScrollingViewBehavior extends HeaderScrollingViewBehavior {
        public ScrollingViewBehavior() {
        }

        @Override // com.google.android.material.appbar.HeaderScrollingViewBehavior
        public final AppBarLayout C(ArrayList arrayList) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                View view = (View) arrayList.get(i);
                if (view instanceof AppBarLayout) {
                    return (AppBarLayout) view;
                }
            }
            return null;
        }

        @Override // com.google.android.material.appbar.HeaderScrollingViewBehavior
        public final float D(View view) {
            int i;
            int i2;
            if (view instanceof AppBarLayout) {
                AppBarLayout appBarLayout = (AppBarLayout) view;
                int totalScrollRange = appBarLayout.getTotalScrollRange();
                int downNestedPreScrollRange = appBarLayout.getDownNestedPreScrollRange();
                CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) appBarLayout.getLayoutParams()).f610a;
                if (behavior instanceof BaseBehavior) {
                    i = ((BaseBehavior) behavior).z();
                } else {
                    i = 0;
                }
                if ((downNestedPreScrollRange == 0 || totalScrollRange + i > downNestedPreScrollRange) && (i2 = totalScrollRange - downNestedPreScrollRange) != 0) {
                    return (i / i2) + 1.0f;
                }
            }
            return 0.0f;
        }

        @Override // com.google.android.material.appbar.HeaderScrollingViewBehavior
        public final int E(View view) {
            if (view instanceof AppBarLayout) {
                return ((AppBarLayout) view).getTotalScrollRange();
            }
            return view.getMeasuredHeight();
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final boolean h(View view, View view2) {
            return view2 instanceof AppBarLayout;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean j(CoordinatorLayout coordinatorLayout, View view, View view2) {
            int b;
            CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) view2.getLayoutParams()).f610a;
            if (behavior instanceof BaseBehavior) {
                int bottom = (view2.getBottom() - view.getTop()) + ((BaseBehavior) behavior).n + this.i;
                if (this.j == 0) {
                    b = 0;
                } else {
                    float D = D(view2);
                    int i = this.j;
                    b = MathUtils.b((int) (D * i), 0, i);
                }
                int i2 = bottom - b;
                WeakHashMap weakHashMap = ViewCompat.f792a;
                view.offsetTopAndBottom(i2);
            }
            if (view2 instanceof AppBarLayout) {
                AppBarLayout appBarLayout = (AppBarLayout) view2;
                if (appBarLayout.p) {
                    appBarLayout.g(appBarLayout.h(view));
                }
            }
            return false;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final void k(CoordinatorLayout coordinatorLayout, View view) {
            if (view instanceof AppBarLayout) {
                ViewCompat.z(coordinatorLayout, null);
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final boolean s(CoordinatorLayout coordinatorLayout, View view, Rect rect, boolean z) {
            AppBarLayout appBarLayout;
            ArrayList d = coordinatorLayout.d(view);
            int size = d.size();
            int i = 0;
            while (true) {
                if (i < size) {
                    View view2 = (View) d.get(i);
                    if (view2 instanceof AppBarLayout) {
                        appBarLayout = (AppBarLayout) view2;
                        break;
                    }
                    i++;
                } else {
                    appBarLayout = null;
                    break;
                }
            }
            if (appBarLayout != null) {
                Rect rect2 = new Rect(rect);
                rect2.offset(view.getLeft(), view.getTop());
                int width = coordinatorLayout.getWidth();
                int height = coordinatorLayout.getHeight();
                Rect rect3 = this.g;
                rect3.set(0, 0, width, height);
                if (!rect3.contains(rect2)) {
                    appBarLayout.f(false, !z, true);
                    return true;
                }
            }
            return false;
        }

        public ScrollingViewBehavior(Context context, AttributeSet attributeSet) {
            super(0);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ScrollingViewBehavior_Layout);
            this.j = obtainStyledAttributes.getDimensionPixelSize(R.styleable.ScrollingViewBehavior_Layout_behavior_overlapTop, 0);
            obtainStyledAttributes.recycle();
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AppBarLayout(com.mycompany.app.web.WebViewActivity r9) {
        /*
            Method dump skipped, instructions count: 277
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.AppBarLayout.<init>(com.mycompany.app.web.WebViewActivity):void");
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [com.google.android.material.appbar.AppBarLayout$LayoutParams, android.widget.LinearLayout$LayoutParams] */
    /* JADX WARN: Type inference failed for: r0v3, types: [com.google.android.material.appbar.AppBarLayout$LayoutParams, android.widget.LinearLayout$LayoutParams] */
    /* JADX WARN: Type inference failed for: r0v4, types: [com.google.android.material.appbar.AppBarLayout$LayoutParams, android.widget.LinearLayout$LayoutParams] */
    public static LayoutParams c(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LinearLayout.LayoutParams) {
            ?? layoutParams2 = new LinearLayout.LayoutParams((LinearLayout.LayoutParams) layoutParams);
            layoutParams2.f11644a = 1;
            return layoutParams2;
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ?? layoutParams3 = new LinearLayout.LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
            layoutParams3.f11644a = 1;
            return layoutParams3;
        }
        ?? layoutParams4 = new LinearLayout.LayoutParams(layoutParams);
        layoutParams4.f11644a = 1;
        return layoutParams4;
    }

    public final void a(OnOffsetChangedListener onOffsetChangedListener) {
        if (this.l == null) {
            this.l = new ArrayList();
        }
        if (!this.l.contains(onOffsetChangedListener)) {
            this.l.add(onOffsetChangedListener);
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.material.appbar.AppBarLayout$LayoutParams, android.widget.LinearLayout$LayoutParams] */
    @Override // android.widget.LinearLayout, android.view.ViewGroup
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        CompressChildScrollEffect compressChildScrollEffect;
        Context context = getContext();
        ?? layoutParams = new LinearLayout.LayoutParams(context, attributeSet);
        layoutParams.f11644a = 1;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.AppBarLayout_Layout);
        layoutParams.f11644a = obtainStyledAttributes.getInt(R.styleable.AppBarLayout_Layout_layout_scrollFlags, 0);
        if (obtainStyledAttributes.getInt(R.styleable.AppBarLayout_Layout_layout_scrollEffect, 0) != 1) {
            compressChildScrollEffect = null;
        } else {
            compressChildScrollEffect = new CompressChildScrollEffect();
        }
        layoutParams.b = compressChildScrollEffect;
        if (obtainStyledAttributes.hasValue(R.styleable.AppBarLayout_Layout_layout_scrollInterpolator)) {
            layoutParams.f11645c = AnimationUtils.loadInterpolator(context, obtainStyledAttributes.getResourceId(R.styleable.AppBarLayout_Layout_layout_scrollInterpolator, 0));
        }
        obtainStyledAttributes.recycle();
        return layoutParams;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    public final void d() {
        BaseBehavior.SavedState savedState;
        Behavior behavior = this.E;
        if (behavior != null && this.f != -1 && this.j == 0) {
            savedState = behavior.M(AbsSavedState.f, this);
        } else {
            savedState = null;
        }
        this.f = -1;
        this.g = -1;
        this.h = -1;
        if (savedState != null) {
            Behavior behavior2 = this.E;
            if (behavior2.q == null) {
                behavior2.q = savedState;
            }
        }
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.B != null && getTopInset() > 0) {
            int save = canvas.save();
            canvas.translate(0.0f, -this.f11639c);
            this.B.draw(canvas);
            canvas.restoreToCount(save);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.B;
        if (drawable != null && drawable.isStateful() && drawable.setState(drawableState)) {
            invalidateDrawable(drawable);
        }
    }

    public final void e(int i) {
        this.f11639c = i;
        if (!willNotDraw()) {
            postInvalidateOnAnimation();
        }
        ArrayList arrayList = this.l;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                BaseOnOffsetChangedListener baseOnOffsetChangedListener = (BaseOnOffsetChangedListener) this.l.get(i2);
                if (baseOnOffsetChangedListener != null) {
                    baseOnOffsetChangedListener.a(i);
                }
            }
        }
    }

    public final void f(boolean z, boolean z2, boolean z3) {
        int i;
        int i2;
        if (z) {
            i = 1;
        } else {
            i = 2;
        }
        int i3 = 0;
        if (z2) {
            i2 = 4;
        } else {
            i2 = 0;
        }
        int i4 = i | i2;
        if (z3) {
            i3 = 8;
        }
        this.j = i4 | i3;
        requestLayout();
    }

    public final boolean g(boolean z) {
        float f;
        float f2;
        if (!this.m && this.o != z) {
            this.o = z;
            refreshDrawableState();
            if (getBackground() instanceof MaterialShapeDrawable) {
                float f3 = 0.0f;
                if (this.q != null) {
                    if (z) {
                        f2 = 0.0f;
                    } else {
                        f2 = 1.0f;
                    }
                    if (z) {
                        f3 = 1.0f;
                    }
                    i(f2, f3);
                    return true;
                }
                if (this.p) {
                    float f4 = this.D;
                    if (z) {
                        f = 0.0f;
                    } else {
                        f = f4;
                    }
                    if (z) {
                        f3 = f4;
                    }
                    i(f, f3);
                    return true;
                }
                return true;
            }
            return true;
        }
        return false;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AttachedBehavior
    @NonNull
    public CoordinatorLayout.Behavior<AppBarLayout> getBehavior() {
        Behavior behavior = new Behavior();
        this.E = behavior;
        return behavior;
    }

    public int getDownNestedPreScrollRange() {
        int i;
        int minimumHeight;
        int i2 = this.g;
        if (i2 != -1) {
            return i2;
        }
        int i3 = 0;
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int measuredHeight = childAt.getMeasuredHeight();
                int i4 = layoutParams.f11644a;
                if ((i4 & 5) == 5) {
                    int i5 = ((LinearLayout.LayoutParams) layoutParams).topMargin + ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
                    if ((i4 & 8) != 0) {
                        minimumHeight = childAt.getMinimumHeight();
                    } else if ((i4 & 2) != 0) {
                        minimumHeight = measuredHeight - childAt.getMinimumHeight();
                    } else {
                        i = i5 + measuredHeight;
                        if (childCount == 0 && childAt.getFitsSystemWindows()) {
                            i = Math.min(i, measuredHeight - getTopInset());
                        }
                        i3 += i;
                    }
                    i = minimumHeight + i5;
                    if (childCount == 0) {
                        i = Math.min(i, measuredHeight - getTopInset());
                    }
                    i3 += i;
                } else if (i3 > 0) {
                    break;
                }
            }
        }
        int max = Math.max(0, i3);
        this.g = max;
        return max;
    }

    public int getDownNestedScrollRange() {
        int i = this.h;
        if (i != -1) {
            return i;
        }
        int childCount = getChildCount();
        int i2 = 0;
        int i3 = 0;
        while (true) {
            if (i2 >= childCount) {
                break;
            }
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int measuredHeight = ((LinearLayout.LayoutParams) layoutParams).topMargin + ((LinearLayout.LayoutParams) layoutParams).bottomMargin + childAt.getMeasuredHeight();
                int i4 = layoutParams.f11644a;
                if ((i4 & 1) == 0) {
                    break;
                }
                i3 += measuredHeight;
                if ((i4 & 2) != 0) {
                    i3 -= childAt.getMinimumHeight();
                    break;
                }
            }
            i2++;
        }
        int max = Math.max(0, i3);
        this.h = max;
        return max;
    }

    @IdRes
    public int getLiftOnScrollTargetViewId() {
        return this.r;
    }

    @Nullable
    public MaterialShapeDrawable getMaterialShapeBackground() {
        Drawable background = getBackground();
        if (background instanceof MaterialShapeDrawable) {
            return (MaterialShapeDrawable) background;
        }
        return null;
    }

    public final int getMinimumHeightForVisibleOverlappingContent() {
        int i;
        int topInset = getTopInset();
        int minimumHeight = getMinimumHeight();
        if (minimumHeight != 0) {
            int i2 = (minimumHeight * 2) + topInset;
            if (i2 < getHeight()) {
                return i2;
            }
            return minimumHeight + topInset;
        }
        int childCount = getChildCount();
        if (childCount >= 1) {
            i = getChildAt(childCount - 1).getMinimumHeight();
        } else {
            i = 0;
        }
        if (i != 0) {
            int i3 = (i * 2) + topInset;
            if (i3 < getHeight()) {
                return i3;
            }
            return i + topInset;
        }
        return getHeight() / 3;
    }

    public int getPendingAction() {
        return this.j;
    }

    @Nullable
    public Drawable getStatusBarForeground() {
        return this.B;
    }

    @Deprecated
    public float getTargetElevation() {
        return 0.0f;
    }

    @VisibleForTesting
    public final int getTopInset() {
        WindowInsetsCompat windowInsetsCompat = this.k;
        if (windowInsetsCompat != null) {
            return windowInsetsCompat.i();
        }
        return 0;
    }

    public final int getTotalScrollRange() {
        int i = this.f;
        if (i != -1) {
            return i;
        }
        int childCount = getChildCount();
        int i2 = 0;
        int i3 = 0;
        while (true) {
            if (i2 >= childCount) {
                break;
            }
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int measuredHeight = childAt.getMeasuredHeight();
                int i4 = layoutParams.f11644a;
                if ((i4 & 1) == 0) {
                    break;
                }
                int i5 = measuredHeight + ((LinearLayout.LayoutParams) layoutParams).topMargin + ((LinearLayout.LayoutParams) layoutParams).bottomMargin + i3;
                if (i2 == 0 && childAt.getFitsSystemWindows()) {
                    i5 -= getTopInset();
                }
                i3 = i5;
                if ((i4 & 2) != 0) {
                    i3 -= childAt.getMinimumHeight();
                    break;
                }
            }
            i2++;
        }
        int max = Math.max(0, i3);
        this.f = max;
        return max;
    }

    public int getUpNestedPreScrollRange() {
        return getTotalScrollRange();
    }

    public final boolean h(View view) {
        int i;
        View view2;
        View view3 = null;
        if (this.s == null && (i = this.r) != -1) {
            if (view != null) {
                view2 = view.findViewById(i);
            } else {
                view2 = null;
            }
            if (view2 == null && (getParent() instanceof ViewGroup)) {
                view2 = ((ViewGroup) getParent()).findViewById(this.r);
            }
            if (view2 != null) {
                this.s = new WeakReference(view2);
            }
        }
        WeakReference weakReference = this.s;
        if (weakReference != null) {
            view3 = (View) weakReference.get();
        }
        if (view3 != null) {
            view = view3;
        }
        if (view != null) {
            if (view.canScrollVertically(-1) || view.getScrollY() > 0) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final void i(float f, float f2) {
        ValueAnimator valueAnimator = this.t;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(f, f2);
        this.t = ofFloat;
        ofFloat.setDuration(this.x);
        this.t.setInterpolator(this.y);
        ValueAnimator.AnimatorUpdateListener animatorUpdateListener = this.u;
        if (animatorUpdateListener != null) {
            this.t.addUpdateListener(animatorUpdateListener);
        }
        this.t.start();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        MaterialShapeUtils.d(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final int[] onCreateDrawableState(int i) {
        int i2;
        int i3;
        if (this.z == null) {
            this.z = new int[4];
        }
        int[] iArr = this.z;
        int[] onCreateDrawableState = super.onCreateDrawableState(i + iArr.length);
        boolean z = this.n;
        int i4 = R.attr.state_liftable;
        if (!z) {
            i4 = -i4;
        }
        iArr[0] = i4;
        if (z && this.o) {
            i2 = R.attr.state_lifted;
        } else {
            i2 = -R.attr.state_lifted;
        }
        iArr[1] = i2;
        int i5 = R.attr.state_collapsible;
        if (!z) {
            i5 = -i5;
        }
        iArr[2] = i5;
        if (z && this.o) {
            i3 = R.attr.state_collapsed;
        } else {
            i3 = -R.attr.state_collapsed;
        }
        iArr[3] = i3;
        return View.mergeDrawableStates(onCreateDrawableState, iArr);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        WeakReference weakReference = this.s;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.s = null;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        boolean z2 = true;
        if (getFitsSystemWindows() && getChildCount() > 0) {
            View childAt = getChildAt(0);
            if (childAt.getVisibility() != 8 && !childAt.getFitsSystemWindows()) {
                int topInset = getTopInset();
                for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
                    View childAt2 = getChildAt(childCount);
                    WeakHashMap weakHashMap = ViewCompat.f792a;
                    childAt2.offsetTopAndBottom(topInset);
                }
            }
        }
        d();
        this.i = false;
        int childCount2 = getChildCount();
        int i5 = 0;
        while (true) {
            if (i5 >= childCount2) {
                break;
            }
            if (((LayoutParams) getChildAt(i5).getLayoutParams()).f11645c != null) {
                this.i = true;
                break;
            }
            i5++;
        }
        Drawable drawable = this.B;
        if (drawable != null) {
            drawable.setBounds(0, 0, getWidth(), getTopInset());
        }
        if (!this.m) {
            if (!this.p) {
                int childCount3 = getChildCount();
                int i6 = 0;
                while (true) {
                    if (i6 < childCount3) {
                        int i7 = ((LayoutParams) getChildAt(i6).getLayoutParams()).f11644a;
                        if ((i7 & 1) == 1 && (i7 & 10) != 0) {
                            break;
                        } else {
                            i6++;
                        }
                    } else {
                        z2 = false;
                        break;
                    }
                }
            }
            if (this.n != z2) {
                this.n = z2;
                refreshDrawableState();
            }
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i2);
        if (mode != 1073741824 && getFitsSystemWindows() && getChildCount() > 0) {
            View childAt = getChildAt(0);
            if (childAt.getVisibility() != 8 && !childAt.getFitsSystemWindows()) {
                int measuredHeight = getMeasuredHeight();
                if (mode != Integer.MIN_VALUE) {
                    if (mode == 0) {
                        measuredHeight += getTopInset();
                    }
                } else {
                    measuredHeight = MathUtils.b(getTopInset() + getMeasuredHeight(), 0, View.MeasureSpec.getSize(i2));
                }
                setMeasuredDimension(getMeasuredWidth(), measuredHeight);
            }
        }
        d();
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        final MaterialShapeDrawable materialShapeDrawable;
        ColorStateList colorStateList;
        Context context = getContext();
        if (drawable instanceof MaterialShapeDrawable) {
            materialShapeDrawable = (MaterialShapeDrawable) drawable;
        } else {
            ColorStateList d = DrawableUtils.d(drawable);
            if (d == null) {
                materialShapeDrawable = null;
            } else {
                MaterialShapeDrawable materialShapeDrawable2 = new MaterialShapeDrawable();
                materialShapeDrawable2.o(d);
                materialShapeDrawable = materialShapeDrawable2;
            }
        }
        if (materialShapeDrawable != null && (colorStateList = materialShapeDrawable.f.d) != null) {
            this.A = colorStateList.getDefaultColor();
            final ColorStateList colorStateList2 = this.q;
            if (colorStateList2 != null) {
                final Integer d2 = MaterialColors.d(getContext(), R.attr.colorSurface);
                this.u = new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.appbar.a
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        Integer num;
                        AppBarLayout appBarLayout = AppBarLayout.this;
                        LinkedHashSet linkedHashSet = appBarLayout.w;
                        ArrayList arrayList = appBarLayout.v;
                        int g = MaterialColors.g(((Float) valueAnimator.getAnimatedValue()).floatValue(), appBarLayout.A, colorStateList2.getDefaultColor());
                        ColorStateList valueOf = ColorStateList.valueOf(g);
                        MaterialShapeDrawable materialShapeDrawable3 = materialShapeDrawable;
                        materialShapeDrawable3.o(valueOf);
                        if (appBarLayout.B != null && (num = appBarLayout.C) != null && num.equals(d2)) {
                            appBarLayout.B.setTint(g);
                        }
                        if (!arrayList.isEmpty()) {
                            int size = arrayList.size();
                            int i = 0;
                            while (i < size) {
                                Object obj = arrayList.get(i);
                                i++;
                                AppBarLayout.LiftOnScrollListener liftOnScrollListener = (AppBarLayout.LiftOnScrollListener) obj;
                                if (materialShapeDrawable3.f.d != null) {
                                    liftOnScrollListener.c();
                                }
                            }
                        }
                        if (!linkedHashSet.isEmpty()) {
                            Iterator it = linkedHashSet.iterator();
                            if (it.hasNext()) {
                                ((AppBarLayout.LiftOnScrollProgressListener) it.next()).a();
                                throw null;
                            }
                        }
                    }
                };
            } else {
                materialShapeDrawable.l(context);
                this.u = new f(1, this, materialShapeDrawable);
            }
            drawable = materialShapeDrawable;
        }
        super.setBackground(drawable);
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        MaterialShapeUtils.b(this, f);
    }

    public void setExpanded(boolean z) {
        f(z, isLaidOut(), true);
    }

    public void setLiftOnScroll(boolean z) {
        this.p = z;
    }

    public void setLiftOnScrollColor(@Nullable ColorStateList colorStateList) {
        if (this.q != colorStateList) {
            this.q = colorStateList;
            setBackground(getBackground());
        }
    }

    public void setLiftOnScrollTargetView(@Nullable View view) {
        this.r = -1;
        if (view == null) {
            WeakReference weakReference = this.s;
            if (weakReference != null) {
                weakReference.clear();
            }
            this.s = null;
            return;
        }
        this.s = new WeakReference(view);
    }

    public void setLiftOnScrollTargetViewId(@IdRes int i) {
        this.r = i;
        WeakReference weakReference = this.s;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.s = null;
    }

    public void setLiftableOverrideEnabled(boolean z) {
        this.m = z;
    }

    @Override // android.widget.LinearLayout
    public void setOrientation(int i) {
        if (i == 1) {
            super.setOrientation(i);
            return;
        }
        throw new IllegalArgumentException("AppBarLayout is always vertical and does not support horizontal orientation");
    }

    public void setPendingAction(int i) {
        this.j = i;
    }

    public void setStatusBarForeground(@Nullable Drawable drawable) {
        Drawable drawable2;
        boolean z;
        Drawable drawable3 = this.B;
        if (drawable3 != drawable) {
            Integer num = null;
            if (drawable3 != null) {
                drawable3.setCallback(null);
            }
            if (drawable != null) {
                drawable2 = drawable.mutate();
            } else {
                drawable2 = null;
            }
            this.B = drawable2;
            if (drawable2 instanceof MaterialShapeDrawable) {
                num = Integer.valueOf(((MaterialShapeDrawable) drawable2).z);
            } else {
                ColorStateList d = DrawableUtils.d(drawable2);
                if (d != null) {
                    num = Integer.valueOf(d.getDefaultColor());
                }
            }
            this.C = num;
            Drawable drawable4 = this.B;
            boolean z2 = false;
            if (drawable4 != null) {
                if (drawable4.isStateful()) {
                    this.B.setState(getDrawableState());
                }
                this.B.setLayoutDirection(getLayoutDirection());
                Drawable drawable5 = this.B;
                if (getVisibility() == 0) {
                    z = true;
                } else {
                    z = false;
                }
                drawable5.setVisible(z, false);
                this.B.setCallback(this);
            }
            if (this.B != null && getTopInset() > 0) {
                z2 = true;
            }
            setWillNotDraw(!z2);
            postInvalidateOnAnimation();
        }
    }

    public void setStatusBarForegroundColor(@ColorInt int i) {
        setStatusBarForeground(new ColorDrawable(i));
    }

    public void setStatusBarForegroundResource(@DrawableRes int i) {
        setStatusBarForeground(AppCompatResources.a(getContext(), i));
    }

    @Deprecated
    public void setTargetElevation(float f) {
        ViewUtilsLollipop.a(this, f);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        boolean z;
        super.setVisibility(i);
        if (i == 0) {
            z = true;
        } else {
            z = false;
        }
        Drawable drawable = this.B;
        if (drawable != null) {
            drawable.setVisible(z, false);
        }
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        if (!super.verifyDrawable(drawable) && drawable != this.B) {
            return false;
        }
        return true;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final LinearLayout.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return c(layoutParams);
    }

    /* loaded from: classes3.dex */
    public static class BaseBehavior<T extends AppBarLayout> extends HeaderBehavior<T> {
        public int n;
        public int o;
        public ValueAnimator p;
        public SavedState q;
        public WeakReference r;
        public BaseDragCallback s;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.google.android.material.appbar.AppBarLayout$BaseBehavior$2, reason: invalid class name */
        /* loaded from: classes3.dex */
        public class AnonymousClass2 extends AccessibilityDelegateCompat {
            public final /* synthetic */ AppBarLayout d;
            public final /* synthetic */ CoordinatorLayout e;
            public final /* synthetic */ BaseBehavior f;

            public AnonymousClass2(CoordinatorLayout coordinatorLayout, BaseBehavior baseBehavior, AppBarLayout appBarLayout) {
                this.f = baseBehavior;
                this.d = appBarLayout;
                this.e = coordinatorLayout;
            }

            @Override // androidx.core.view.AccessibilityDelegateCompat
            public final void d(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                this.f760a.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat.f834a);
                accessibilityNodeInfoCompat.k(ScrollView.class.getName());
                AppBarLayout appBarLayout = this.d;
                if (appBarLayout.getTotalScrollRange() != 0) {
                    CoordinatorLayout coordinatorLayout = this.e;
                    BaseBehavior baseBehavior = this.f;
                    View I = BaseBehavior.I(baseBehavior, coordinatorLayout);
                    if (I != null) {
                        int childCount = appBarLayout.getChildCount();
                        for (int i = 0; i < childCount; i++) {
                            if (((LayoutParams) appBarLayout.getChildAt(i).getLayoutParams()).f11644a != 0) {
                                if (baseBehavior.z() != (-appBarLayout.getTotalScrollRange())) {
                                    accessibilityNodeInfoCompat.b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.h);
                                    accessibilityNodeInfoCompat.t(true);
                                }
                                if (baseBehavior.z() != 0) {
                                    if (I.canScrollVertically(-1)) {
                                        if ((-appBarLayout.getDownNestedPreScrollRange()) != 0) {
                                            accessibilityNodeInfoCompat.b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.i);
                                            accessibilityNodeInfoCompat.t(true);
                                            return;
                                        }
                                        return;
                                    }
                                    accessibilityNodeInfoCompat.b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.i);
                                    accessibilityNodeInfoCompat.t(true);
                                    return;
                                }
                                return;
                            }
                        }
                    }
                }
            }

            @Override // androidx.core.view.AccessibilityDelegateCompat
            public final boolean g(View view, int i, Bundle bundle) {
                AppBarLayout appBarLayout = this.d;
                if (i == 4096) {
                    appBarLayout.setExpanded(false);
                    return true;
                }
                if (i == 8192) {
                    BaseBehavior baseBehavior = this.f;
                    if (baseBehavior.z() != 0) {
                        CoordinatorLayout coordinatorLayout = this.e;
                        View I = BaseBehavior.I(baseBehavior, coordinatorLayout);
                        if (I.canScrollVertically(-1)) {
                            int i2 = -appBarLayout.getDownNestedPreScrollRange();
                            if (i2 != 0) {
                                baseBehavior.L(coordinatorLayout, this.d, I, i2, new int[]{0, 0});
                                return true;
                            }
                        } else {
                            appBarLayout.setExpanded(true);
                            return true;
                        }
                    }
                    return false;
                }
                return super.g(view, i, bundle);
            }
        }

        /* loaded from: classes3.dex */
        public static abstract class BaseDragCallback<T extends AppBarLayout> {
        }

        /* loaded from: classes3.dex */
        public static class SavedState extends AbsSavedState {
            public static final Parcelable.Creator<SavedState> CREATOR = new Object();
            public boolean g;
            public boolean h;
            public int i;
            public float j;
            public boolean k;

            /* renamed from: com.google.android.material.appbar.AppBarLayout$BaseBehavior$SavedState$1, reason: invalid class name */
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
                boolean z2;
                if (parcel.readByte() != 0) {
                    z = true;
                } else {
                    z = false;
                }
                this.g = z;
                if (parcel.readByte() != 0) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                this.h = z2;
                this.i = parcel.readInt();
                this.j = parcel.readFloat();
                this.k = parcel.readByte() != 0;
            }

            @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
            public final void writeToParcel(Parcel parcel, int i) {
                super.writeToParcel(parcel, i);
                parcel.writeByte(this.g ? (byte) 1 : (byte) 0);
                parcel.writeByte(this.h ? (byte) 1 : (byte) 0);
                parcel.writeInt(this.i);
                parcel.writeFloat(this.j);
                parcel.writeByte(this.k ? (byte) 1 : (byte) 0);
            }
        }

        public BaseBehavior() {
            this.j = -1;
            this.l = -1;
        }

        public static View I(BaseBehavior baseBehavior, CoordinatorLayout coordinatorLayout) {
            int childCount = coordinatorLayout.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = coordinatorLayout.getChildAt(i);
                if (((CoordinatorLayout.LayoutParams) childAt.getLayoutParams()).f610a instanceof ScrollingViewBehavior) {
                    return childAt;
                }
            }
            return null;
        }

        public static View K(CoordinatorLayout coordinatorLayout) {
            int childCount = coordinatorLayout.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = coordinatorLayout.getChildAt(i);
                if ((childAt instanceof NestedScrollingChild) || (childAt instanceof AbsListView) || (childAt instanceof ScrollView)) {
                    return childAt;
                }
            }
            return null;
        }

        public static void O(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i, int i2, boolean z) {
            View view;
            boolean z2;
            int abs = Math.abs(i);
            int childCount = appBarLayout.getChildCount();
            int i3 = 0;
            while (true) {
                if (i3 < childCount) {
                    view = appBarLayout.getChildAt(i3);
                    if (abs >= view.getTop() && abs <= view.getBottom()) {
                        break;
                    } else {
                        i3++;
                    }
                } else {
                    view = null;
                    break;
                }
            }
            if (view != null) {
                int i4 = ((LayoutParams) view.getLayoutParams()).f11644a;
                if ((i4 & 1) != 0) {
                    int minimumHeight = view.getMinimumHeight();
                    z2 = true;
                    if (i2 > 0) {
                    }
                }
            }
            z2 = false;
            if (appBarLayout.p) {
                z2 = appBarLayout.h(K(coordinatorLayout));
            }
            boolean g = appBarLayout.g(z2);
            if (!z) {
                if (g) {
                    List list = (List) coordinatorLayout.f.b.get(appBarLayout);
                    ArrayList arrayList = coordinatorLayout.h;
                    arrayList.clear();
                    if (list != null) {
                        arrayList.addAll(list);
                    }
                    int size = arrayList.size();
                    for (int i5 = 0; i5 < size; i5++) {
                        CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) ((View) arrayList.get(i5)).getLayoutParams()).f610a;
                        if (behavior instanceof ScrollingViewBehavior) {
                            if (((ScrollingViewBehavior) behavior).j == 0) {
                                return;
                            }
                        }
                    }
                    return;
                }
                return;
            }
            if (appBarLayout.getBackground() != null) {
                appBarLayout.getBackground().jumpToCurrentState();
            }
            if (appBarLayout.getForeground() != null) {
                appBarLayout.getForeground().jumpToCurrentState();
            }
            if (appBarLayout.getStateListAnimator() != null) {
                appBarLayout.getStateListAnimator().jumpToCurrentState();
            }
        }

        @Override // com.google.android.material.appbar.HeaderBehavior
        public final boolean C(View view) {
            if (this.s != null) {
                return false;
            }
            WeakReference weakReference = this.r;
            if (weakReference != null) {
                View view2 = (View) weakReference.get();
                if (view2 == null || !view2.isShown() || view2.canScrollVertically(-1)) {
                    return false;
                }
                return true;
            }
            return true;
        }

        @Override // com.google.android.material.appbar.HeaderBehavior
        public final int D(View view) {
            AppBarLayout appBarLayout = (AppBarLayout) view;
            return appBarLayout.getTopInset() + (-appBarLayout.getDownNestedScrollRange());
        }

        @Override // com.google.android.material.appbar.HeaderBehavior
        public final int E(View view) {
            return ((AppBarLayout) view).getTotalScrollRange();
        }

        @Override // com.google.android.material.appbar.HeaderBehavior
        public final void F(CoordinatorLayout coordinatorLayout, View view) {
            AppBarLayout appBarLayout = (AppBarLayout) view;
            N(coordinatorLayout, appBarLayout);
            if (appBarLayout.p) {
                appBarLayout.g(appBarLayout.h(K(coordinatorLayout)));
            }
        }

        @Override // com.google.android.material.appbar.HeaderBehavior
        public final int G(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3) {
            int i4;
            int i5;
            List list;
            int i6;
            AppBarLayout appBarLayout = (AppBarLayout) view;
            int z = z();
            int i7 = 0;
            if (i2 != 0 && z >= i2 && z <= i3) {
                int b = MathUtils.b(i, i2, i3);
                if (z != b) {
                    if (appBarLayout.i) {
                        int abs = Math.abs(b);
                        int childCount = appBarLayout.getChildCount();
                        int i8 = 0;
                        while (true) {
                            if (i8 >= childCount) {
                                break;
                            }
                            View childAt = appBarLayout.getChildAt(i8);
                            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                            Interpolator interpolator = layoutParams.f11645c;
                            if (abs >= childAt.getTop() && abs <= childAt.getBottom()) {
                                if (interpolator != null) {
                                    int i9 = layoutParams.f11644a;
                                    if ((i9 & 1) != 0) {
                                        i6 = childAt.getHeight() + ((LinearLayout.LayoutParams) layoutParams).topMargin + ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
                                        if ((i9 & 2) != 0) {
                                            i6 -= childAt.getMinimumHeight();
                                        }
                                    } else {
                                        i6 = 0;
                                    }
                                    if (childAt.getFitsSystemWindows()) {
                                        i6 -= appBarLayout.getTopInset();
                                    }
                                    if (i6 > 0) {
                                        float f = i6;
                                        i4 = (childAt.getTop() + Math.round(interpolator.getInterpolation((abs - childAt.getTop()) / f) * f)) * Integer.signum(b);
                                    }
                                }
                            } else {
                                i8++;
                            }
                        }
                    }
                    i4 = b;
                    boolean B = B(i4);
                    int i10 = z - b;
                    this.n = b - i4;
                    int i11 = 1;
                    if (B) {
                        int i12 = 0;
                        while (i12 < appBarLayout.getChildCount()) {
                            LayoutParams layoutParams2 = (LayoutParams) appBarLayout.getChildAt(i12).getLayoutParams();
                            CompressChildScrollEffect compressChildScrollEffect = layoutParams2.b;
                            if (compressChildScrollEffect != null && (layoutParams2.f11644a & i11) != 0) {
                                View childAt2 = appBarLayout.getChildAt(i12);
                                float y = y();
                                Rect rect = compressChildScrollEffect.b;
                                Rect rect2 = compressChildScrollEffect.f11643a;
                                childAt2.getDrawingRect(rect2);
                                appBarLayout.offsetDescendantRectToMyCoords(childAt2, rect2);
                                rect2.offset(0, -appBarLayout.getTopInset());
                                float abs2 = rect2.top - Math.abs(y);
                                if (abs2 <= 0.0f) {
                                    float a2 = 1.0f - MathUtils.a(Math.abs(abs2 / rect2.height()), 0.0f, 1.0f);
                                    float height = (-abs2) - ((rect2.height() * 0.3f) * (1.0f - (a2 * a2)));
                                    childAt2.setTranslationY(height);
                                    childAt2.getDrawingRect(rect);
                                    rect.offset(0, (int) (-height));
                                    if (height >= rect.height()) {
                                        childAt2.setAlpha(0.0f);
                                    } else {
                                        childAt2.setAlpha(1.0f);
                                    }
                                    childAt2.setClipBounds(rect);
                                } else {
                                    childAt2.setClipBounds(null);
                                    childAt2.setTranslationY(0.0f);
                                    childAt2.setAlpha(1.0f);
                                }
                            }
                            i12++;
                            i11 = 1;
                        }
                    }
                    if (!B && appBarLayout.i && (list = (List) coordinatorLayout.f.b.get(appBarLayout)) != null && !list.isEmpty()) {
                        for (int i13 = 0; i13 < list.size(); i13++) {
                            View view2 = (View) list.get(i13);
                            CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) view2.getLayoutParams()).f610a;
                            if (behavior != null) {
                                behavior.j(coordinatorLayout, view2, appBarLayout);
                            }
                        }
                    }
                    appBarLayout.e(y());
                    if (b < z) {
                        i5 = -1;
                    } else {
                        i5 = 1;
                    }
                    O(coordinatorLayout, appBarLayout, b, i5, false);
                    i7 = i10;
                }
            } else {
                this.n = 0;
            }
            if (ViewCompat.f(coordinatorLayout) != null) {
                return i7;
            }
            ViewCompat.z(coordinatorLayout, new AnonymousClass2(coordinatorLayout, this, appBarLayout));
            return i7;
        }

        public final void J(final CoordinatorLayout coordinatorLayout, final AppBarLayout appBarLayout, int i) {
            int height;
            int abs = Math.abs(z() - i);
            float abs2 = Math.abs(0.0f);
            if (abs2 > 0.0f) {
                height = Math.round((abs / abs2) * 1000.0f) * 3;
            } else {
                height = (int) (((abs / appBarLayout.getHeight()) + 1.0f) * 150.0f);
            }
            int z = z();
            if (z == i) {
                ValueAnimator valueAnimator = this.p;
                if (valueAnimator != null && valueAnimator.isRunning()) {
                    this.p.cancel();
                    return;
                }
                return;
            }
            ValueAnimator valueAnimator2 = this.p;
            if (valueAnimator2 == null) {
                ValueAnimator valueAnimator3 = new ValueAnimator();
                this.p = valueAnimator3;
                valueAnimator3.setInterpolator(com.google.android.material.animation.AnimationUtils.e);
                this.p.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.appbar.AppBarLayout.BaseBehavior.1
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator4) {
                        this.H(coordinatorLayout, appBarLayout, ((Integer) valueAnimator4.getAnimatedValue()).intValue());
                    }
                });
            } else {
                valueAnimator2.cancel();
            }
            this.p.setDuration(Math.min(height, 600));
            this.p.setIntValues(z, i);
            this.p.start();
        }

        /* JADX WARN: Removed duplicated region for block: B:12:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:9:0x0030  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void L(androidx.coordinatorlayout.widget.CoordinatorLayout r9, com.google.android.material.appbar.AppBarLayout r10, android.view.View r11, int r12, int[] r13) {
            /*
                r8 = this;
                if (r12 == 0) goto L2b
                if (r12 >= 0) goto L11
                int r0 = r10.getTotalScrollRange()
                int r0 = -r0
                int r1 = r10.getDownNestedPreScrollRange()
                int r1 = r1 + r0
            Le:
                r6 = r0
                r7 = r1
                goto L18
            L11:
                int r0 = r10.getUpNestedPreScrollRange()
                int r0 = -r0
                r1 = 0
                goto Le
            L18:
                if (r6 == r7) goto L2b
                int r0 = r8.z()
                int r5 = r0 - r12
                r2 = r8
                r3 = r9
                r4 = r10
                int r9 = r2.G(r3, r4, r5, r6, r7)
                r10 = 1
                r13[r10] = r9
                goto L2c
            L2b:
                r4 = r10
            L2c:
                boolean r9 = r4.p
                if (r9 == 0) goto L37
                boolean r9 = r4.h(r11)
                r4.g(r9)
            L37:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.AppBarLayout.BaseBehavior.L(androidx.coordinatorlayout.widget.CoordinatorLayout, com.google.android.material.appbar.AppBarLayout, android.view.View, int, int[]):void");
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [com.google.android.material.appbar.AppBarLayout$BaseBehavior$SavedState, androidx.customview.view.AbsSavedState] */
        public final SavedState M(Parcelable parcelable, AppBarLayout appBarLayout) {
            boolean z;
            boolean z2;
            int y = y();
            int childCount = appBarLayout.getChildCount();
            boolean z3 = false;
            for (int i = 0; i < childCount; i++) {
                View childAt = appBarLayout.getChildAt(i);
                int bottom = childAt.getBottom() + y;
                if (childAt.getTop() + y <= 0 && bottom >= 0) {
                    if (parcelable == null) {
                        parcelable = AbsSavedState.f;
                    }
                    ?? absSavedState = new AbsSavedState(parcelable);
                    if (y == 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    absSavedState.h = z;
                    if (!z && (-y) >= appBarLayout.getTotalScrollRange()) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    absSavedState.g = z2;
                    absSavedState.i = i;
                    if (bottom == appBarLayout.getTopInset() + childAt.getMinimumHeight()) {
                        z3 = true;
                    }
                    absSavedState.k = z3;
                    absSavedState.j = bottom / childAt.getHeight();
                    return absSavedState;
                }
            }
            return null;
        }

        public final void N(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout) {
            int paddingTop = appBarLayout.getPaddingTop() + appBarLayout.getTopInset();
            int z = z() - paddingTop;
            int childCount = appBarLayout.getChildCount();
            int i = 0;
            while (true) {
                if (i < childCount) {
                    View childAt = appBarLayout.getChildAt(i);
                    int top = childAt.getTop();
                    int bottom = childAt.getBottom();
                    LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                    if ((layoutParams.f11644a & 32) == 32) {
                        top -= ((LinearLayout.LayoutParams) layoutParams).topMargin;
                        bottom += ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
                    }
                    int i2 = -z;
                    if (top <= i2 && bottom >= i2) {
                        break;
                    } else {
                        i++;
                    }
                } else {
                    i = -1;
                    break;
                }
            }
            if (i >= 0) {
                View childAt2 = appBarLayout.getChildAt(i);
                LayoutParams layoutParams2 = (LayoutParams) childAt2.getLayoutParams();
                int i3 = layoutParams2.f11644a;
                if ((i3 & 17) == 17) {
                    int i4 = -childAt2.getTop();
                    int i5 = -childAt2.getBottom();
                    if (i == 0 && appBarLayout.getFitsSystemWindows() && childAt2.getFitsSystemWindows()) {
                        i4 -= appBarLayout.getTopInset();
                    }
                    if ((i3 & 2) == 2) {
                        i5 += childAt2.getMinimumHeight();
                    } else if ((i3 & 5) == 5) {
                        int minimumHeight = childAt2.getMinimumHeight() + i5;
                        if (z < minimumHeight) {
                            i4 = minimumHeight;
                        } else {
                            i5 = minimumHeight;
                        }
                    }
                    if ((i3 & 32) == 32) {
                        i4 += ((LinearLayout.LayoutParams) layoutParams2).topMargin;
                        i5 -= ((LinearLayout.LayoutParams) layoutParams2).bottomMargin;
                    }
                    if (z < (i5 + i4) / 2) {
                        i4 = i5;
                    }
                    J(coordinatorLayout, appBarLayout, MathUtils.b(i4 + paddingTop, -appBarLayout.getTotalScrollRange(), 0));
                }
            }
        }

        @Override // com.google.android.material.appbar.ViewOffsetBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final boolean n(CoordinatorLayout coordinatorLayout, View view, int i) {
            boolean z;
            int round;
            AppBarLayout appBarLayout = (AppBarLayout) view;
            super.n(coordinatorLayout, appBarLayout, i);
            int pendingAction = appBarLayout.getPendingAction();
            SavedState savedState = this.q;
            if (savedState != null && (pendingAction & 8) == 0) {
                if (savedState.g) {
                    H(coordinatorLayout, appBarLayout, -appBarLayout.getTotalScrollRange());
                } else if (savedState.h) {
                    H(coordinatorLayout, appBarLayout, 0);
                } else {
                    View childAt = appBarLayout.getChildAt(savedState.i);
                    int i2 = -childAt.getBottom();
                    if (this.q.k) {
                        round = appBarLayout.getTopInset() + childAt.getMinimumHeight() + i2;
                    } else {
                        round = Math.round(childAt.getHeight() * this.q.j) + i2;
                    }
                    H(coordinatorLayout, appBarLayout, round);
                }
            } else if (pendingAction != 0) {
                if ((pendingAction & 4) != 0) {
                    z = true;
                } else {
                    z = false;
                }
                if ((pendingAction & 2) != 0) {
                    int i3 = -appBarLayout.getUpNestedPreScrollRange();
                    if (z) {
                        J(coordinatorLayout, appBarLayout, i3);
                    } else {
                        H(coordinatorLayout, appBarLayout, i3);
                    }
                } else if ((pendingAction & 1) != 0) {
                    if (z) {
                        J(coordinatorLayout, appBarLayout, 0);
                    } else {
                        H(coordinatorLayout, appBarLayout, 0);
                    }
                }
            }
            appBarLayout.j = 0;
            this.q = null;
            B(MathUtils.b(y(), -appBarLayout.getTotalScrollRange(), 0));
            O(coordinatorLayout, appBarLayout, y(), 0, true);
            appBarLayout.e(y());
            if (ViewCompat.f(coordinatorLayout) != null) {
                return true;
            }
            ViewCompat.z(coordinatorLayout, new AnonymousClass2(coordinatorLayout, this, appBarLayout));
            return true;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final boolean o(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3) {
            AppBarLayout appBarLayout = (AppBarLayout) view;
            if (((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.LayoutParams) appBarLayout.getLayoutParams())).height != -2) {
                return false;
            }
            coordinatorLayout.r(i, i2, View.MeasureSpec.makeMeasureSpec(0, 0), appBarLayout);
            return true;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final /* bridge */ /* synthetic */ void q(CoordinatorLayout coordinatorLayout, View view, View view2, int i, int i2, int[] iArr, int i3) {
            L(coordinatorLayout, (AppBarLayout) view, view2, i2, iArr);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final void r(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3, int[] iArr) {
            CoordinatorLayout coordinatorLayout2;
            AppBarLayout appBarLayout = (AppBarLayout) view;
            if (i3 < 0) {
                coordinatorLayout2 = coordinatorLayout;
                iArr[1] = G(coordinatorLayout2, appBarLayout, z() - i3, -appBarLayout.getDownNestedScrollRange(), 0);
            } else {
                coordinatorLayout2 = coordinatorLayout;
            }
            if (i3 == 0 && ViewCompat.f(coordinatorLayout2) == null) {
                ViewCompat.z(coordinatorLayout2, new AnonymousClass2(coordinatorLayout2, this, appBarLayout));
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final void t(View view, Parcelable parcelable) {
            if (parcelable instanceof SavedState) {
                this.q = (SavedState) parcelable;
            } else {
                this.q = null;
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final Parcelable u(View view) {
            android.view.AbsSavedState absSavedState = View.BaseSavedState.EMPTY_STATE;
            SavedState M = M(absSavedState, (AppBarLayout) view);
            if (M == null) {
                return absSavedState;
            }
            return M;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final boolean v(CoordinatorLayout coordinatorLayout, View view, View view2, View view3, int i, int i2) {
            boolean z;
            ValueAnimator valueAnimator;
            AppBarLayout appBarLayout = (AppBarLayout) view;
            if ((i & 2) != 0 && (appBarLayout.p || appBarLayout.o || (appBarLayout.getTotalScrollRange() != 0 && coordinatorLayout.getHeight() - view2.getHeight() <= appBarLayout.getHeight()))) {
                z = true;
            } else {
                z = false;
            }
            if (z && (valueAnimator = this.p) != null) {
                valueAnimator.cancel();
            }
            this.r = null;
            this.o = i2;
            return z;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final void w(CoordinatorLayout coordinatorLayout, View view, View view2, int i) {
            AppBarLayout appBarLayout = (AppBarLayout) view;
            if (this.o == 0 || i == 1) {
                N(coordinatorLayout, appBarLayout);
                if (appBarLayout.p) {
                    appBarLayout.g(appBarLayout.h(view2));
                }
            }
            this.r = new WeakReference(view2);
        }

        @Override // com.google.android.material.appbar.ViewOffsetBehavior
        public final int z() {
            return y() + this.n;
        }

        public BaseBehavior(Context context, AttributeSet attributeSet) {
            super(0);
            this.j = -1;
            this.l = -1;
        }
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final /* bridge */ /* synthetic */ LinearLayout.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return c(layoutParams);
    }
}
