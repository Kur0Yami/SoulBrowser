package com.google.android.material.appbar;

import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class ViewOffsetBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {

    /* renamed from: c, reason: collision with root package name */
    public ViewOffsetHelper f11649c;
    public int f = 0;

    public ViewOffsetBehavior() {
    }

    public void A(CoordinatorLayout coordinatorLayout, View view, int i) {
        coordinatorLayout.q(view, i);
    }

    public boolean B(int i) {
        ViewOffsetHelper viewOffsetHelper = this.f11649c;
        if (viewOffsetHelper != null) {
            return viewOffsetHelper.b(i);
        }
        this.f = i;
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean n(CoordinatorLayout coordinatorLayout, View view, int i) {
        A(coordinatorLayout, view, i);
        if (this.f11649c == null) {
            this.f11649c = new ViewOffsetHelper(view);
        }
        ViewOffsetHelper viewOffsetHelper = this.f11649c;
        View view2 = viewOffsetHelper.f11650a;
        viewOffsetHelper.b = view2.getTop();
        viewOffsetHelper.f11651c = view2.getLeft();
        this.f11649c.a();
        int i2 = this.f;
        if (i2 != 0) {
            this.f11649c.b(i2);
            this.f = 0;
            return true;
        }
        return true;
    }

    public int y() {
        ViewOffsetHelper viewOffsetHelper = this.f11649c;
        if (viewOffsetHelper != null) {
            return viewOffsetHelper.d;
        }
        return 0;
    }

    public int z() {
        return y();
    }

    public ViewOffsetBehavior(int i) {
    }
}
