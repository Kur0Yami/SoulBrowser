package com.mycompany.app.behavior;

import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.mycompany.app.soulbrowser.R;

/* loaded from: classes3.dex */
public class MyBehaviorWebTop extends CoordinatorLayout.Behavior<View> {
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean h(View view, View view2) {
        if (view2.getId() == R.id.web_top_view) {
            return true;
        }
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean j(CoordinatorLayout coordinatorLayout, View view, View view2) {
        if (view != null && view2 != null) {
            view.setTranslationY(view2.getTranslationY() + view2.getBottom());
        }
        return true;
    }
}
