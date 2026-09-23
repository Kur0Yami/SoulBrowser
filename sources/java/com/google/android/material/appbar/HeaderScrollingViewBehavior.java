package com.google.android.material.appbar;

import android.graphics.Rect;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.math.MathUtils;
import androidx.core.view.WindowInsetsCompat;
import com.google.android.material.search.SearchBar;
import java.util.ArrayList;
import kotlin.jvm.internal.IntCompanionObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public abstract class HeaderScrollingViewBehavior extends ViewOffsetBehavior<View> {
    public final Rect g;
    public final Rect h;
    public int i;
    public int j;

    public HeaderScrollingViewBehavior() {
        this.g = new Rect();
        this.h = new Rect();
        this.i = 0;
    }

    @Override // com.google.android.material.appbar.ViewOffsetBehavior
    public final void A(CoordinatorLayout coordinatorLayout, View view, int i) {
        AppBarLayout C = C(coordinatorLayout.d(view));
        int i2 = 0;
        if (C != null) {
            CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) view.getLayoutParams();
            int paddingLeft = coordinatorLayout.getPaddingLeft() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
            int bottom = C.getBottom() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
            int width = (coordinatorLayout.getWidth() - coordinatorLayout.getPaddingRight()) - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
            int bottom2 = ((C.getBottom() + coordinatorLayout.getHeight()) - coordinatorLayout.getPaddingBottom()) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
            Rect rect = this.g;
            rect.set(paddingLeft, bottom, width, bottom2);
            WindowInsetsCompat lastWindowInsets = coordinatorLayout.getLastWindowInsets();
            if (lastWindowInsets != null && coordinatorLayout.getFitsSystemWindows() && !view.getFitsSystemWindows()) {
                rect.left = lastWindowInsets.g() + rect.left;
                rect.right -= lastWindowInsets.h();
            }
            int i3 = layoutParams.f611c;
            if (i3 == 0) {
                i3 = 8388659;
            }
            int measuredWidth = view.getMeasuredWidth();
            int measuredHeight = view.getMeasuredHeight();
            Rect rect2 = this.h;
            Gravity.apply(i3, measuredWidth, measuredHeight, rect, rect2, i);
            if (this.j != 0) {
                float D = D(C);
                int i4 = this.j;
                i2 = MathUtils.b((int) (D * i4), 0, i4);
            }
            view.layout(rect2.left, rect2.top - i2, rect2.right, rect2.bottom - i2);
            this.i = rect2.top - C.getBottom();
            return;
        }
        coordinatorLayout.q(view, i);
        this.i = 0;
    }

    public abstract AppBarLayout C(ArrayList arrayList);

    public float D(View view) {
        return 1.0f;
    }

    public int E(View view) {
        return view.getMeasuredHeight();
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean o(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3) {
        AppBarLayout C;
        int i4;
        WindowInsetsCompat lastWindowInsets;
        int i5 = view.getLayoutParams().height;
        if ((i5 == -1 || i5 == -2) && (C = C(coordinatorLayout.d(view))) != null) {
            int size = View.MeasureSpec.getSize(i3);
            if (size > 0) {
                if (C.getFitsSystemWindows() && (lastWindowInsets = coordinatorLayout.getLastWindowInsets()) != null) {
                    size += lastWindowInsets.f() + lastWindowInsets.i();
                }
            } else {
                size = coordinatorLayout.getHeight();
            }
            int E = size + E(C);
            int measuredHeight = C.getMeasuredHeight();
            if (this instanceof SearchBar.ScrollingViewBehavior) {
                view.setTranslationY(-measuredHeight);
            } else {
                view.setTranslationY(0.0f);
                E -= measuredHeight;
            }
            if (i5 == -1) {
                i4 = 1073741824;
            } else {
                i4 = IntCompanionObject.MIN_VALUE;
            }
            coordinatorLayout.r(i, i2, View.MeasureSpec.makeMeasureSpec(E, i4), view);
            return true;
        }
        return false;
    }

    public HeaderScrollingViewBehavior(int i) {
        super(0);
        this.g = new Rect();
        this.h = new Rect();
        this.i = 0;
    }
}
