package com.google.android.material.behavior;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.customview.widget.ViewDragHelper;
import java.util.WeakHashMap;

/* loaded from: classes3.dex */
public class SwipeDismissBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {

    /* renamed from: c, reason: collision with root package name */
    public ViewDragHelper f11665c;
    public boolean f;
    public boolean g;
    public int h = 2;
    public float i = 0.0f;
    public float j = 0.5f;
    public final ViewDragHelper.Callback k = new ViewDragHelper.Callback() { // from class: com.google.android.material.behavior.SwipeDismissBehavior.1

        /* renamed from: a, reason: collision with root package name */
        public int f11666a;
        public int b = -1;

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public final int a(View view, int i) {
            boolean z;
            int width;
            int width2;
            int width3;
            if (view.getLayoutDirection() == 1) {
                z = true;
            } else {
                z = false;
            }
            int i2 = SwipeDismissBehavior.this.h;
            if (i2 == 0) {
                if (z) {
                    width = this.f11666a - view.getWidth();
                    width2 = this.f11666a;
                } else {
                    width = this.f11666a;
                    width3 = view.getWidth();
                    width2 = width3 + width;
                }
            } else if (i2 == 1) {
                if (z) {
                    width = this.f11666a;
                    width3 = view.getWidth();
                    width2 = width3 + width;
                } else {
                    width = this.f11666a - view.getWidth();
                    width2 = this.f11666a;
                }
            } else {
                width = this.f11666a - view.getWidth();
                width2 = view.getWidth() + this.f11666a;
            }
            return Math.min(Math.max(width, i), width2);
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public final int b(View view, int i) {
            return view.getTop();
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public final int c(View view) {
            return view.getWidth();
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public final void e(View view, int i) {
            this.b = i;
            this.f11666a = view.getLeft();
            ViewParent parent = view.getParent();
            if (parent != null) {
                SwipeDismissBehavior swipeDismissBehavior = SwipeDismissBehavior.this;
                swipeDismissBehavior.g = true;
                parent.requestDisallowInterceptTouchEvent(true);
                swipeDismissBehavior.g = false;
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public final void f(int i) {
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public final void g(View view, int i, int i2) {
            float width = view.getWidth();
            SwipeDismissBehavior swipeDismissBehavior = SwipeDismissBehavior.this;
            float f = width * swipeDismissBehavior.i;
            float width2 = view.getWidth() * swipeDismissBehavior.j;
            float abs = Math.abs(i - this.f11666a);
            if (abs <= f) {
                view.setAlpha(1.0f);
            } else if (abs >= width2) {
                view.setAlpha(0.0f);
            } else {
                view.setAlpha(Math.min(Math.max(0.0f, 1.0f - ((abs - f) / (width2 - f))), 1.0f));
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:34:0x004e, code lost:
        
            if (java.lang.Math.abs(r9.getLeft() - r8.f11666a) >= java.lang.Math.round(r9.getWidth() * 0.5f)) goto L27;
         */
        @Override // androidx.customview.widget.ViewDragHelper.Callback
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void h(android.view.View r9, float r10, float r11) {
            /*
                r8 = this;
                r11 = -1
                r8.b = r11
                int r11 = r9.getWidth()
                r0 = 0
                int r1 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
                r2 = 0
                com.google.android.material.behavior.SwipeDismissBehavior r3 = com.google.android.material.behavior.SwipeDismissBehavior.this
                r4 = 1
                if (r1 == 0) goto L37
                int r5 = r9.getLayoutDirection()
                if (r5 != r4) goto L18
                r5 = r4
                goto L19
            L18:
                r5 = r2
            L19:
                int r6 = r3.h
                r7 = 2
                if (r6 != r7) goto L1f
                goto L50
            L1f:
                if (r6 != 0) goto L2b
                if (r5 == 0) goto L28
                int r1 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
                if (r1 >= 0) goto L65
                goto L50
            L28:
                if (r1 <= 0) goto L65
                goto L50
            L2b:
                if (r6 != r4) goto L65
                if (r5 == 0) goto L32
                if (r1 <= 0) goto L65
                goto L50
            L32:
                int r1 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
                if (r1 >= 0) goto L65
                goto L50
            L37:
                int r1 = r9.getLeft()
                int r5 = r8.f11666a
                int r1 = r1 - r5
                int r5 = r9.getWidth()
                float r5 = (float) r5
                r6 = 1056964608(0x3f000000, float:0.5)
                float r5 = r5 * r6
                int r5 = java.lang.Math.round(r5)
                int r1 = java.lang.Math.abs(r1)
                if (r1 < r5) goto L65
            L50:
                int r10 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
                if (r10 < 0) goto L5f
                int r10 = r9.getLeft()
                int r0 = r8.f11666a
                if (r10 >= r0) goto L5d
                goto L5f
            L5d:
                int r0 = r0 + r11
                goto L63
            L5f:
                int r10 = r8.f11666a
                int r0 = r10 - r11
            L63:
                r2 = r4
                goto L67
            L65:
                int r0 = r8.f11666a
            L67:
                androidx.customview.widget.ViewDragHelper r10 = r3.f11665c
                int r11 = r9.getTop()
                boolean r10 = r10.o(r0, r11)
                if (r10 == 0) goto L7b
                com.google.android.material.behavior.SwipeDismissBehavior$SettleRunnable r10 = new com.google.android.material.behavior.SwipeDismissBehavior$SettleRunnable
                r10.<init>(r9, r2)
                r9.postOnAnimation(r10)
            L7b:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.behavior.SwipeDismissBehavior.AnonymousClass1.h(android.view.View, float, float):void");
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public final boolean i(View view, int i) {
            int i2 = this.b;
            if ((i2 == -1 || i2 == i) && SwipeDismissBehavior.this.y(view)) {
                return true;
            }
            return false;
        }
    };

    /* loaded from: classes3.dex */
    public interface OnDismissListener {
    }

    /* loaded from: classes3.dex */
    public class SettleRunnable implements Runnable {

        /* renamed from: c, reason: collision with root package name */
        public final View f11669c;

        public SettleRunnable(View view, boolean z) {
            this.f11669c = view;
        }

        @Override // java.lang.Runnable
        public final void run() {
            ViewDragHelper viewDragHelper = SwipeDismissBehavior.this.f11665c;
            if (viewDragHelper != null && viewDragHelper.f()) {
                this.f11669c.postOnAnimation(this);
            }
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean m(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        boolean z = this.f;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked == 1 || actionMasked == 3) {
                this.f = false;
            }
        } else {
            z = coordinatorLayout.i(view, (int) motionEvent.getX(), (int) motionEvent.getY());
            this.f = z;
        }
        if (z) {
            if (this.f11665c == null) {
                this.f11665c = new ViewDragHelper(coordinatorLayout.getContext(), coordinatorLayout, this.k);
            }
            if (!this.g && this.f11665c.p(motionEvent)) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean n(CoordinatorLayout coordinatorLayout, View view, int i) {
        if (view.getImportantForAccessibility() == 0) {
            view.setImportantForAccessibility(1);
            ViewCompat.v(view, 1048576);
            ViewCompat.s(view, 0);
            if (y(view)) {
                ViewCompat.w(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.l, new AccessibilityViewCommand() { // from class: com.google.android.material.behavior.SwipeDismissBehavior.2
                    @Override // androidx.core.view.accessibility.AccessibilityViewCommand
                    public final boolean a(View view2) {
                        int width;
                        SwipeDismissBehavior swipeDismissBehavior = SwipeDismissBehavior.this;
                        boolean z = false;
                        if (!swipeDismissBehavior.y(view2)) {
                            return false;
                        }
                        if (view2.getLayoutDirection() == 1) {
                            z = true;
                        }
                        int i2 = swipeDismissBehavior.h;
                        if ((i2 == 0 && z) || (i2 == 1 && !z)) {
                            width = -view2.getWidth();
                        } else {
                            width = view2.getWidth();
                        }
                        WeakHashMap weakHashMap = ViewCompat.f792a;
                        view2.offsetLeftAndRight(width);
                        view2.setAlpha(0.0f);
                        return true;
                    }
                });
            }
        }
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean x(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        if (this.f11665c != null) {
            if (!this.g || motionEvent.getActionMasked() != 3) {
                this.f11665c.j(motionEvent);
                return true;
            }
            return true;
        }
        return false;
    }

    public boolean y(View view) {
        return true;
    }
}
