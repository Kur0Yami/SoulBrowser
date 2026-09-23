package com.mycompany.app.behavior;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.appbar.AppBarLayout;
import com.mycompany.app.pref.PrefWeb;

/* loaded from: classes3.dex */
public class MyBehaviorSnack extends CoordinatorLayout.Behavior<View> {

    /* renamed from: c, reason: collision with root package name */
    public int f12850c;

    public MyBehaviorSnack(Context context, AttributeSet attributeSet) {
    }

    public static float y(View view, int i) {
        if (view == null) {
            return 0.0f;
        }
        return (view.getTop() / view.getHeight()) * (-i);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean h(View view, View view2) {
        return view2 instanceof AppBarLayout;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean j(CoordinatorLayout coordinatorLayout, View view, View view2) {
        if (view2 == null) {
            return true;
        }
        if (!PrefWeb.w && view.getVisibility() != 8) {
            view.setTranslationY(y(view2, this.f12850c));
            return true;
        }
        view.setTranslationY(0.0f);
        return true;
    }
}
