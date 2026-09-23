package com.mycompany.app.behavior;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.appbar.AppBarLayout;
import com.mycompany.app.pref.PrefWeb;

/* loaded from: classes3.dex */
public class MyBehaviorBot extends CoordinatorLayout.Behavior<View> {

    /* renamed from: c, reason: collision with root package name */
    public boolean f12844c;

    public MyBehaviorBot(Context context, AttributeSet attributeSet) {
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
        if (!PrefWeb.w && !this.f12844c && view.getVisibility() != 8) {
            if (view.getHeight() == 0) {
                view.setTranslationY(0.0f);
                return true;
            }
            view.setTranslationY((view2.getTop() / view2.getHeight()) * (-r0));
            return true;
        }
        view.setTranslationY(0.0f);
        return true;
    }
}
