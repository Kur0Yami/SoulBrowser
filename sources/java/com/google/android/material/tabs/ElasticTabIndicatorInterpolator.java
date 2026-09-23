package com.google.android.material.tabs;

import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.google.android.material.animation.AnimationUtils;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class ElasticTabIndicatorInterpolator extends TabIndicatorInterpolator {
    @Override // com.google.android.material.tabs.TabIndicatorInterpolator
    public final void b(TabLayout tabLayout, View view, View view2, float f, Drawable drawable) {
        float sin;
        float cos;
        RectF a2 = TabIndicatorInterpolator.a(tabLayout, view);
        RectF a3 = TabIndicatorInterpolator.a(tabLayout, view2);
        if (a2.left < a3.left) {
            double d = (f * 3.141592653589793d) / 2.0d;
            sin = (float) (1.0d - Math.cos(d));
            cos = (float) Math.sin(d);
        } else {
            double d2 = (f * 3.141592653589793d) / 2.0d;
            sin = (float) Math.sin(d2);
            cos = (float) (1.0d - Math.cos(d2));
        }
        drawable.setBounds(AnimationUtils.c(sin, (int) a2.left, (int) a3.left), drawable.getBounds().top, AnimationUtils.c(cos, (int) a2.right, (int) a3.right), drawable.getBounds().bottom);
    }
}
