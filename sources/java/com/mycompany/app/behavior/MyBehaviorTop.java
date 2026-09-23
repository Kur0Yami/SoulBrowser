package com.mycompany.app.behavior;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.appbar.AppBarLayout;
import com.mycompany.app.pref.PrefWeb;

/* loaded from: classes3.dex */
public class MyBehaviorTop extends CoordinatorLayout.Behavior<View> {

    /* renamed from: c, reason: collision with root package name */
    public boolean f12851c;

    public MyBehaviorTop(Context context, AttributeSet attributeSet) {
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
        if (!PrefWeb.v && !this.f12851c && view.getVisibility() != 8) {
            int height = view.getHeight();
            if (height == 0) {
                view.setTranslationY(0.0f);
                return true;
            }
            view.setTranslationY((view2.getTop() / view2.getHeight()) * height);
            return true;
        }
        view.setTranslationY(0.0f);
        return true;
    }
}
