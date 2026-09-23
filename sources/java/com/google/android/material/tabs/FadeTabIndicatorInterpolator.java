package com.google.android.material.tabs;

import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.google.android.material.animation.AnimationUtils;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class FadeTabIndicatorInterpolator extends TabIndicatorInterpolator {
    @Override // com.google.android.material.tabs.TabIndicatorInterpolator
    public final void b(TabLayout tabLayout, View view, View view2, float f, Drawable drawable) {
        float b;
        if (f >= 0.5f) {
            view = view2;
        }
        RectF a2 = TabIndicatorInterpolator.a(tabLayout, view);
        if (f < 0.5f) {
            b = AnimationUtils.b(1.0f, 0.0f, 0.0f, 0.5f, f);
        } else {
            b = AnimationUtils.b(0.0f, 1.0f, 0.5f, 1.0f, f);
        }
        drawable.setBounds((int) a2.left, drawable.getBounds().top, (int) a2.right, drawable.getBounds().bottom);
        drawable.setAlpha((int) (b * 255.0f));
    }
}
