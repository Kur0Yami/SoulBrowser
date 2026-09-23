package com.google.android.material.bottomnavigation;

import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.core.view.WindowInsetsCompat;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.navigation.NavigationBarView;
import kotlin.jvm.internal.IntCompanionObject;

/* loaded from: classes3.dex */
public class BottomNavigationView extends NavigationBarView {

    /* renamed from: com.google.android.material.bottomnavigation.BottomNavigationView$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements ViewUtils.OnApplyWindowInsetsListener {
        @Override // com.google.android.material.internal.ViewUtils.OnApplyWindowInsetsListener
        public final WindowInsetsCompat a(View view, WindowInsetsCompat windowInsetsCompat, ViewUtils.RelativePadding relativePadding) {
            int i;
            relativePadding.d = windowInsetsCompat.f() + relativePadding.d;
            boolean z = true;
            if (view.getLayoutDirection() != 1) {
                z = false;
            }
            int g = windowInsetsCompat.g();
            int h = windowInsetsCompat.h();
            int i2 = relativePadding.f11823a;
            if (z) {
                i = h;
            } else {
                i = g;
            }
            int i3 = i2 + i;
            relativePadding.f11823a = i3;
            int i4 = relativePadding.f11824c;
            if (!z) {
                g = h;
            }
            int i5 = i4 + g;
            relativePadding.f11824c = i5;
            view.setPaddingRelative(i3, relativePadding.b, i5, relativePadding.d);
            return windowInsetsCompat;
        }
    }

    @Deprecated
    /* loaded from: classes3.dex */
    public interface OnNavigationItemReselectedListener extends NavigationBarView.OnItemReselectedListener {
    }

    @Deprecated
    /* loaded from: classes3.dex */
    public interface OnNavigationItemSelectedListener extends NavigationBarView.OnItemSelectedListener {
    }

    @Override // com.google.android.material.navigation.NavigationBarView
    public int getMaxItemCount() {
        return 6;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        int i3;
        int suggestedMinimumHeight = getSuggestedMinimumHeight();
        if (View.MeasureSpec.getMode(i2) != 1073741824 && suggestedMinimumHeight > 0) {
            i3 = View.MeasureSpec.makeMeasureSpec(Math.max(View.MeasureSpec.getSize(i2), getPaddingBottom() + getPaddingTop() + suggestedMinimumHeight), IntCompanionObject.MIN_VALUE);
        } else {
            i3 = i2;
        }
        super.onMeasure(i, i3);
        if (View.MeasureSpec.getMode(i2) != 1073741824) {
            setMeasuredDimension(getMeasuredWidth(), Math.max(getMeasuredHeight(), getPaddingBottom() + getPaddingTop() + getSuggestedMinimumHeight()));
        }
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        return true;
    }

    public void setItemHorizontalTranslationEnabled(boolean z) {
        BottomNavigationMenuView bottomNavigationMenuView = (BottomNavigationMenuView) getMenuView();
        if (bottomNavigationMenuView.L == z) {
            return;
        }
        bottomNavigationMenuView.setItemHorizontalTranslationEnabled(z);
        getPresenter().getClass();
        throw null;
    }

    @Deprecated
    public void setOnNavigationItemReselectedListener(@Nullable OnNavigationItemReselectedListener onNavigationItemReselectedListener) {
        setOnItemReselectedListener(onNavigationItemReselectedListener);
    }

    @Deprecated
    public void setOnNavigationItemSelectedListener(@Nullable OnNavigationItemSelectedListener onNavigationItemSelectedListener) {
        setOnItemSelectedListener(onNavigationItemSelectedListener);
    }
}
