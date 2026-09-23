package com.google.android.material.appbar;

import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.OverScroller;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.math.MathUtils;
import kotlin.jvm.internal.IntCompanionObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public abstract class HeaderBehavior<V extends View> extends ViewOffsetBehavior<V> {
    public Runnable g;
    public OverScroller h;
    public boolean i;
    public int j;
    public int k;
    public int l;
    public VelocityTracker m;

    /* loaded from: classes3.dex */
    public class FlingRunnable implements Runnable {

        /* renamed from: c, reason: collision with root package name */
        public final CoordinatorLayout f11648c;
        public final View f;

        public FlingRunnable(CoordinatorLayout coordinatorLayout, View view) {
            this.f11648c = coordinatorLayout;
            this.f = view;
        }

        @Override // java.lang.Runnable
        public final void run() {
            HeaderBehavior headerBehavior;
            OverScroller overScroller;
            View view = this.f;
            if (view != null && (overScroller = (headerBehavior = HeaderBehavior.this).h) != null) {
                boolean computeScrollOffset = overScroller.computeScrollOffset();
                CoordinatorLayout coordinatorLayout = this.f11648c;
                if (computeScrollOffset) {
                    headerBehavior.H(coordinatorLayout, view, headerBehavior.h.getCurrY());
                    view.postOnAnimation(this);
                } else {
                    headerBehavior.F(coordinatorLayout, view);
                }
            }
        }
    }

    public boolean C(View view) {
        return false;
    }

    public int D(View view) {
        return -view.getHeight();
    }

    public int E(View view) {
        return view.getHeight();
    }

    public void F(CoordinatorLayout coordinatorLayout, View view) {
    }

    public int G(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3) {
        int b;
        int y = y();
        if (i2 != 0 && y >= i2 && y <= i3 && y != (b = MathUtils.b(i, i2, i3))) {
            B(b);
            return y - b;
        }
        return 0;
    }

    public final void H(CoordinatorLayout coordinatorLayout, View view, int i) {
        G(coordinatorLayout, view, i, IntCompanionObject.MIN_VALUE, Integer.MAX_VALUE);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean m(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        boolean z;
        int findPointerIndex;
        if (this.l < 0) {
            this.l = ViewConfiguration.get(coordinatorLayout.getContext()).getScaledTouchSlop();
        }
        if (motionEvent.getActionMasked() == 2 && this.i) {
            int i = this.j;
            if (i != -1 && (findPointerIndex = motionEvent.findPointerIndex(i)) != -1) {
                int y = (int) motionEvent.getY(findPointerIndex);
                if (Math.abs(y - this.k) > this.l) {
                    this.k = y;
                    return true;
                }
            }
            return false;
        }
        if (motionEvent.getActionMasked() == 0) {
            this.j = -1;
            int x = (int) motionEvent.getX();
            int y2 = (int) motionEvent.getY();
            if (C(view) && coordinatorLayout.i(view, x, y2)) {
                z = true;
            } else {
                z = false;
            }
            this.i = z;
            if (z) {
                this.k = y2;
                this.j = motionEvent.getPointerId(0);
                if (this.m == null) {
                    this.m = VelocityTracker.obtain();
                }
                OverScroller overScroller = this.h;
                if (overScroller != null && !overScroller.isFinished()) {
                    this.h.abortAnimation();
                    return true;
                }
            }
        }
        VelocityTracker velocityTracker = this.m;
        if (velocityTracker != null) {
            velocityTracker.addMovement(motionEvent);
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00d8 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00c8  */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean x(androidx.coordinatorlayout.widget.CoordinatorLayout r19, android.view.View r20, android.view.MotionEvent r21) {
        /*
            Method dump skipped, instructions count: 221
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.HeaderBehavior.x(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, android.view.MotionEvent):boolean");
    }
}
