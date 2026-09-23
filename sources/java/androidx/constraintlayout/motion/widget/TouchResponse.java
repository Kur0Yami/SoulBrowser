package androidx.constraintlayout.motion.widget;

import android.view.MotionEvent;
import android.view.View;
import androidx.core.widget.NestedScrollView;

/* loaded from: classes.dex */
class TouchResponse {

    /* renamed from: androidx.constraintlayout.motion.widget.TouchResponse$1, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass1 implements View.OnTouchListener {
        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View view, MotionEvent motionEvent) {
            return false;
        }
    }

    public final String toString() {
        if (Float.isNaN(0.0f)) {
            return "rotation";
        }
        return "0.0 , 0.0";
    }

    /* renamed from: androidx.constraintlayout.motion.widget.TouchResponse$2, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass2 implements NestedScrollView.OnScrollChangeListener {
        @Override // androidx.core.widget.NestedScrollView.OnScrollChangeListener
        public final void a(NestedScrollView nestedScrollView, int i) {
        }
    }
}
