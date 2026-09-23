package com.google.android.material.navigationrail;

import android.content.Context;
import android.view.View;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import com.google.android.material.navigation.NavigationBarItemView;
import com.google.android.material.navigation.NavigationBarMenuView;

@RestrictTo
/* loaded from: classes3.dex */
public class NavigationRailMenuView extends NavigationBarMenuView {
    public int L;
    public int M;

    @Override // com.google.android.material.navigation.NavigationBarMenuView
    public final NavigationBarItemView a(Context context) {
        return new NavigationBarItemView(context);
    }

    public final int c(int i, int i2, int i3, View view) {
        int makeMeasureSpec;
        int i4;
        int i5;
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i2, 0);
        int childCount = getChildCount();
        int i6 = 0;
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt = getChildAt(i7);
            if (!(childAt instanceof NavigationBarItemView)) {
                childAt.measure(i, makeMeasureSpec2);
                if (childAt.getVisibility() != 8) {
                    i5 = childAt.getMeasuredHeight();
                } else {
                    i5 = 0;
                }
                i2 -= i5;
                i6 += i5;
            }
        }
        int max = Math.max(i2, 0);
        if (view == null) {
            int max2 = max / Math.max(1, i3);
            int i8 = this.L;
            if (i8 == -1) {
                i8 = View.MeasureSpec.getSize(i);
            }
            makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(Math.min(i8, max2), 0);
        } else {
            makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(view.getMeasuredHeight(), 0);
        }
        int i9 = 0;
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt2 = getChildAt(i10);
            if (childAt2.getVisibility() == 0) {
                i9++;
            }
            if ((childAt2 instanceof NavigationBarItemView) && childAt2 != view) {
                childAt2.measure(i, makeMeasureSpec);
                if (childAt2.getVisibility() != 8) {
                    i4 = childAt2.getMeasuredHeight();
                } else {
                    i4 = 0;
                }
                i6 = i4 + i6;
            }
        }
        return (Math.max(0, i9 - 1) * this.M) + i6;
    }

    @Px
    public int getItemMinimumHeight() {
        return this.L;
    }

    @Px
    public int getItemSpacing() {
        return this.M;
    }

    public int getMenuGravity() {
        throw null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int max;
        int childCount = getChildCount();
        int i5 = i3 - i;
        int i6 = 0;
        int i7 = 0;
        for (int i8 = 0; i8 < childCount; i8++) {
            View childAt = getChildAt(i8);
            if (childAt.getVisibility() != 8) {
                i7 += childAt.getMeasuredHeight();
                i6++;
            }
        }
        if (i6 <= 1) {
            max = 0;
        } else {
            max = Math.max(0, Math.min((getMeasuredHeight() - i7) / (i6 - 1), this.M));
        }
        int i9 = 0;
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt2 = getChildAt(i10);
            if (childAt2.getVisibility() != 8) {
                int measuredHeight = childAt2.getMeasuredHeight();
                childAt2.layout(0, i9, i5, measuredHeight + i9);
                i9 += measuredHeight + max;
            }
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        int c2;
        int labelVisibilityMode;
        int i3;
        int size = View.MeasureSpec.getSize(i2);
        int currentVisibleContentItemCount = getCurrentVisibleContentItemCount();
        if (currentVisibleContentItemCount > 1 && ((labelVisibilityMode = getLabelVisibilityMode()) != -1 ? labelVisibilityMode == 0 : currentVisibleContentItemCount > 3)) {
            View childAt = getChildAt(getSelectedItemPosition());
            if (childAt != null) {
                int max = size / Math.max(1, currentVisibleContentItemCount);
                int i4 = this.L;
                if (i4 == -1) {
                    i4 = View.MeasureSpec.getSize(i);
                }
                childAt.measure(i, View.MeasureSpec.makeMeasureSpec(Math.min(i4, max), 0));
                if (childAt.getVisibility() != 8) {
                    i3 = childAt.getMeasuredHeight();
                } else {
                    i3 = 0;
                }
                size -= i3;
                currentVisibleContentItemCount--;
            } else {
                i3 = 0;
            }
            c2 = c(i, size, currentVisibleContentItemCount, childAt) + i3;
        } else {
            c2 = c(i, size, currentVisibleContentItemCount, null);
        }
        setMeasuredDimension(View.MeasureSpec.getSize(i), View.resolveSizeAndState(c2, i2, 0));
    }

    public void setItemMinimumHeight(@Px int i) {
        if (this.L != i) {
            this.L = i;
            requestLayout();
        }
    }

    public void setItemSpacing(@Px int i) {
        if (this.M != i) {
            this.M = i;
            requestLayout();
        }
    }

    public void setMenuGravity(int i) {
        throw null;
    }
}
