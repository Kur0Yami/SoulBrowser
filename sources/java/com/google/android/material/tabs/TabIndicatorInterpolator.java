package com.google.android.material.tabs;

import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.tabs.TabLayout;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class TabIndicatorInterpolator {
    public static RectF a(TabLayout tabLayout, View view) {
        if (view == null) {
            return new RectF();
        }
        if (!tabLayout.I && (view instanceof TabLayout.TabView)) {
            TabLayout.TabView tabView = (TabLayout.TabView) view;
            int contentWidth = tabView.getContentWidth();
            int contentHeight = tabView.getContentHeight();
            int b = (int) ViewUtils.b(tabView.getContext(), 24);
            if (contentWidth < b) {
                contentWidth = b;
            }
            int right = (tabView.getRight() + tabView.getLeft()) / 2;
            int bottom = (tabView.getBottom() + tabView.getTop()) / 2;
            int i = contentWidth / 2;
            return new RectF(right - i, bottom - (contentHeight / 2), i + right, (right / 2) + bottom);
        }
        return new RectF(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
    }

    public void b(TabLayout tabLayout, View view, View view2, float f, Drawable drawable) {
        RectF a2 = a(tabLayout, view);
        RectF a3 = a(tabLayout, view2);
        drawable.setBounds(AnimationUtils.c(f, (int) a2.left, (int) a3.left), drawable.getBounds().top, AnimationUtils.c(f, (int) a2.right, (int) a3.right), drawable.getBounds().bottom);
    }
}
