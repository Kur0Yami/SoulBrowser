package com.google.android.material.bottomnavigation;

import android.content.Context;
import android.view.View;
import androidx.annotation.RestrictTo;
import com.google.android.material.navigation.NavigationBarItemView;
import com.google.android.material.navigation.NavigationBarMenuView;

@RestrictTo
/* loaded from: classes3.dex */
public class BottomNavigationMenuView extends NavigationBarMenuView {
    public boolean L;

    @Override // com.google.android.material.navigation.NavigationBarMenuView
    public final NavigationBarItemView a(Context context) {
        return new NavigationBarItemView(context);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        int i5 = i3 - i;
        int i6 = i4 - i2;
        int i7 = 0;
        for (int i8 = 0; i8 < childCount; i8++) {
            View childAt = getChildAt(i8);
            if (childAt.getVisibility() != 8) {
                if (getLayoutDirection() == 1) {
                    int i9 = i5 - i7;
                    childAt.layout(i9 - childAt.getMeasuredWidth(), 0, i9, i6);
                } else {
                    childAt.layout(i7, 0, childAt.getMeasuredWidth() + i7, i6);
                }
                i7 += childAt.getMeasuredWidth();
            }
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        View.MeasureSpec.getSize(i);
        getCurrentVisibleContentItemCount();
        getChildCount();
        throw null;
    }

    public void setItemHorizontalTranslationEnabled(boolean z) {
        this.L = z;
    }
}
