package com.google.android.material.navigationrail;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.PathInterpolator;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.core.view.WindowInsetsCompat;
import androidx.transition.Transition;
import androidx.transition.TransitionManager;
import androidx.transition.TransitionSet;
import androidx.transition.Visibility;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.navigation.NavigationBarDividerView;
import com.google.android.material.navigation.NavigationBarItemView;
import com.google.android.material.navigation.NavigationBarView;
import kotlin.uuid.Uuid;

/* loaded from: classes3.dex */
public class NavigationRailView extends NavigationBarView {
    public static final PathInterpolator q = new PathInterpolator(0.38f, 1.21f, 0.22f, 1.0f);
    public boolean g;
    public boolean h;
    public int i;
    public int j;
    public int k;
    public int l;
    public int m;
    public int n;
    public int o;
    public int p;

    /* renamed from: com.google.android.material.navigationrail.NavigationRailView$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements ViewUtils.OnApplyWindowInsetsListener {
        @Override // com.google.android.material.internal.ViewUtils.OnApplyWindowInsetsListener
        public final WindowInsetsCompat a(View view, WindowInsetsCompat windowInsetsCompat, ViewUtils.RelativePadding relativePadding) {
            windowInsetsCompat.d(7);
            windowInsetsCompat.d(Uuid.SIZE_BITS);
            PathInterpolator pathInterpolator = NavigationRailView.q;
            throw null;
        }
    }

    private int getMaxChildWidth() {
        int childCount = getNavigationRailMenuView().getChildCount();
        int i = 0;
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getNavigationRailMenuView().getChildAt(i2);
            if (childAt.getVisibility() != 8 && !(childAt instanceof NavigationBarDividerView)) {
                i = Math.max(i, childAt.getMeasuredWidth());
            }
        }
        return i;
    }

    private NavigationRailMenuView getNavigationRailMenuView() {
        return (NavigationRailMenuView) getMenuView();
    }

    private void setExpanded(boolean z) {
        if (this.h == z) {
            return;
        }
        if (isLaidOut()) {
            Transition transition = new Transition();
            transition.g = 500L;
            transition.h = q;
            Visibility visibility = new Visibility();
            visibility.g = 100L;
            Visibility visibility2 = new Visibility();
            visibility2.g = 100L;
            Transition transition2 = new Transition();
            Visibility visibility3 = new Visibility();
            visibility3.g = 100L;
            int childCount = getNavigationRailMenuView().getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = getNavigationRailMenuView().getChildAt(i);
                if (childAt instanceof NavigationBarItemView) {
                    NavigationBarItemView navigationBarItemView = (NavigationBarItemView) childAt;
                    transition.o(navigationBarItemView.getLabelGroup());
                    transition.o(navigationBarItemView.getExpandedLabelGroup());
                    if (this.h) {
                        visibility2.b(navigationBarItemView.getExpandedLabelGroup());
                        visibility.b(navigationBarItemView.getLabelGroup());
                    } else {
                        visibility2.b(navigationBarItemView.getLabelGroup());
                        visibility.b(navigationBarItemView.getExpandedLabelGroup());
                    }
                    transition2.b(navigationBarItemView.getExpandedLabelGroup());
                }
                visibility3.b(childAt);
            }
            TransitionSet transitionSet = new TransitionSet();
            transitionSet.P(0);
            transitionSet.O(transition);
            transitionSet.O(visibility);
            transitionSet.O(transition2);
            if (!this.h) {
                transitionSet.O(visibility3);
            }
            TransitionSet transitionSet2 = new TransitionSet();
            transitionSet2.P(0);
            transitionSet2.O(visibility2);
            if (this.h) {
                transitionSet2.O(visibility3);
            }
            TransitionSet transitionSet3 = new TransitionSet();
            transitionSet3.P(1);
            transitionSet3.O(transitionSet2);
            transitionSet3.O(transitionSet);
            TransitionManager.a((ViewGroup) getParent(), transitionSet3);
        }
        this.h = z;
        int i2 = this.k;
        int i3 = this.i;
        int i4 = this.j;
        int i5 = this.l;
        if (z) {
            i2 = this.n;
            i3 = this.p;
            i4 = this.m;
            i5 = this.o;
        }
        getNavigationRailMenuView().setItemGravity(i5);
        super.setItemIconGravity(i2);
        getNavigationRailMenuView().setItemSpacing(i3);
        getNavigationRailMenuView().setItemMinimumHeight(i4);
        getNavigationRailMenuView().setExpanded(z);
    }

    public int getCollapsedItemMinimumHeight() {
        return this.j;
    }

    @Override // com.google.android.material.navigation.NavigationBarView
    @RestrictTo
    public int getCollapsedMaxItemCount() {
        return 7;
    }

    public int getExpandedItemMinimumHeight() {
        return this.m;
    }

    @Nullable
    public View getHeaderView() {
        return null;
    }

    @Override // com.google.android.material.navigation.NavigationBarView
    public int getItemGravity() {
        return getNavigationRailMenuView().getItemGravity();
    }

    @Override // com.google.android.material.navigation.NavigationBarView
    public int getItemIconGravity() {
        return getNavigationRailMenuView().getItemIconGravity();
    }

    public int getItemMinimumHeight() {
        return getNavigationRailMenuView().getItemMinimumHeight();
    }

    public int getItemSpacing() {
        return getNavigationRailMenuView().getItemSpacing();
    }

    @Override // com.google.android.material.navigation.NavigationBarView
    public int getMaxItemCount() {
        return Integer.MAX_VALUE;
    }

    public int getMenuGravity() {
        return getNavigationRailMenuView().getMenuGravity();
    }

    public boolean getSubmenuDividersEnabled() {
        return this.g;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        int i3;
        int suggestedMinimumWidth = getSuggestedMinimumWidth();
        if (View.MeasureSpec.getMode(i) != 1073741824 && suggestedMinimumWidth > 0) {
            i3 = View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(i), getPaddingRight() + getPaddingLeft() + suggestedMinimumWidth), 1073741824);
        } else {
            i3 = i;
        }
        if (this.h) {
            measureChild(getNavigationRailMenuView(), i, i2);
            int maxChildWidth = getMaxChildWidth();
            int min = Math.min(0, View.MeasureSpec.getSize(i));
            if (View.MeasureSpec.getMode(i) != 1073741824) {
                i = View.MeasureSpec.makeMeasureSpec(Math.max(getSuggestedMinimumWidth(), Math.min(Math.max(maxChildWidth, min), 0)), 1073741824);
            }
            if (getItemActiveIndicatorExpandedWidth() == -1) {
                NavigationRailMenuView navigationRailMenuView = getNavigationRailMenuView();
                View.MeasureSpec.getSize(i);
                navigationRailMenuView.getClass();
            }
            i3 = i;
        }
        super.onMeasure(i3, i2);
        throw null;
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        return true;
    }

    public void setCollapsedItemMinimumHeight(@Px int i) {
        this.j = i;
        if (!this.h) {
            ((NavigationRailMenuView) getMenuView()).setItemMinimumHeight(i);
        }
    }

    public void setCollapsedItemSpacing(@Px int i) {
        this.i = i;
        if (!this.h) {
            getNavigationRailMenuView().setItemSpacing(i);
        }
    }

    public void setExpandedItemMinimumHeight(@Px int i) {
        this.m = i;
        if (this.h) {
            ((NavigationRailMenuView) getMenuView()).setItemMinimumHeight(i);
        }
    }

    @Override // com.google.android.material.navigation.NavigationBarView
    public void setItemGravity(int i) {
        this.l = i;
        this.o = i;
        super.setItemGravity(i);
    }

    @Override // com.google.android.material.navigation.NavigationBarView
    public void setItemIconGravity(int i) {
        this.k = i;
        this.n = i;
        super.setItemIconGravity(i);
    }

    public void setItemMinimumHeight(@Px int i) {
        this.j = i;
        this.m = i;
        ((NavigationRailMenuView) getMenuView()).setItemMinimumHeight(i);
    }

    public void setItemSpacing(@Px int i) {
        this.i = i;
        this.p = i;
        getNavigationRailMenuView().setItemSpacing(i);
    }

    public void setMenuGravity(int i) {
        getNavigationRailMenuView().setMenuGravity(i);
    }

    public void setSubmenuDividersEnabled(boolean z) {
        if (this.g == z) {
            return;
        }
        this.g = z;
        getNavigationRailMenuView().setSubmenuDividersEnabled(z);
    }
}
