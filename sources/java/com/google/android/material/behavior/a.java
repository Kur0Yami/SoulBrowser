package com.google.android.material.behavior;

import android.view.View;
import android.view.accessibility.AccessibilityManager;
import androidx.coordinatorlayout.widget.CoordinatorLayout;

/* loaded from: classes3.dex */
public final /* synthetic */ class a implements AccessibilityManager.TouchExplorationStateChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11670a;
    public final /* synthetic */ View b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CoordinatorLayout.Behavior f11671c;

    public /* synthetic */ a(CoordinatorLayout.Behavior behavior, View view, int i) {
        this.f11670a = i;
        this.f11671c = behavior;
        this.b = view;
    }

    @Override // android.view.accessibility.AccessibilityManager.TouchExplorationStateChangeListener
    public final void onTouchExplorationStateChanged(boolean z) {
        int i = this.f11670a;
        View view = this.b;
        CoordinatorLayout.Behavior behavior = this.f11671c;
        switch (i) {
            case 0:
                HideBottomViewOnScrollBehavior hideBottomViewOnScrollBehavior = (HideBottomViewOnScrollBehavior) behavior;
                int i2 = HideBottomViewOnScrollBehavior.p;
                if (z && hideBottomViewOnScrollBehavior.n == 1) {
                    hideBottomViewOnScrollBehavior.y(view);
                    return;
                }
                return;
            default:
                HideViewOnScrollBehavior hideViewOnScrollBehavior = (HideViewOnScrollBehavior) behavior;
                if (z && hideViewOnScrollBehavior.n == 1) {
                    hideViewOnScrollBehavior.z(view);
                    return;
                }
                return;
        }
    }
}
