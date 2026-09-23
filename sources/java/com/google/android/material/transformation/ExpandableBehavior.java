package com.google.android.material.transformation;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.expandable.ExpandableWidget;
import java.util.ArrayList;

@Deprecated
/* loaded from: classes3.dex */
public abstract class ExpandableBehavior extends CoordinatorLayout.Behavior<View> {

    /* renamed from: c, reason: collision with root package name */
    public final int f12014c = 0;

    /* renamed from: com.google.android.material.transformation.ExpandableBehavior$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements ViewTreeObserver.OnPreDrawListener {
        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public final boolean onPreDraw() {
            throw null;
        }
    }

    public ExpandableBehavior() {
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public abstract boolean h(View view, View view2);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean j(CoordinatorLayout coordinatorLayout, View view, View view2) {
        ((ExpandableWidget) view2).a();
        throw null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean n(CoordinatorLayout coordinatorLayout, View view, int i) {
        ExpandableWidget expandableWidget;
        if (!view.isLaidOut()) {
            ArrayList d = coordinatorLayout.d(view);
            int size = d.size();
            int i2 = 0;
            while (true) {
                if (i2 < size) {
                    View view2 = (View) d.get(i2);
                    if (h(view, view2)) {
                        expandableWidget = (ExpandableWidget) view2;
                        break;
                    }
                    i2++;
                } else {
                    expandableWidget = null;
                    break;
                }
            }
            if (expandableWidget != null) {
                expandableWidget.a();
                throw null;
            }
        }
        return false;
    }

    public ExpandableBehavior(Context context, AttributeSet attributeSet) {
    }
}
