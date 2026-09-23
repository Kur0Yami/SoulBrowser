package com.google.android.material.bottomsheet;

import android.annotation.SuppressLint;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.c;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class BottomSheetDragHandleView extends AppCompatImageView implements AccessibilityManager.AccessibilityStateChangeListener {
    public static final /* synthetic */ int l = 0;
    public BottomSheetBehavior h;
    public boolean i;
    public boolean j;
    public boolean k;

    /* renamed from: com.google.android.material.bottomsheet.BottomSheetDragHandleView$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass2 extends GestureDetector.SimpleOnGestureListener {
        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public final boolean onDoubleTap(MotionEvent motionEvent) {
            throw null;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public final boolean onDown(MotionEvent motionEvent) {
            throw null;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public final boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            int i = BottomSheetDragHandleView.l;
            throw null;
        }
    }

    /* renamed from: com.google.android.material.bottomsheet.BottomSheetDragHandleView$3, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass3 extends AccessibilityDelegateCompat {
        @Override // androidx.core.view.AccessibilityDelegateCompat
        public final void e(View view, AccessibilityEvent accessibilityEvent) {
            super.e(view, accessibilityEvent);
            if (accessibilityEvent.getEventType() != 1) {
                return;
            }
            int i = BottomSheetDragHandleView.l;
            throw null;
        }
    }

    private void setBottomSheetBehavior(@Nullable BottomSheetBehavior<?> bottomSheetBehavior) {
        BottomSheetBehavior bottomSheetBehavior2 = this.h;
        if (bottomSheetBehavior2 != null) {
            bottomSheetBehavior2.e0.remove((Object) null);
            this.h.J(null);
            this.h.c0 = null;
        }
        this.h = bottomSheetBehavior;
        boolean z = false;
        if (bottomSheetBehavior != null) {
            bottomSheetBehavior.J(this);
            BottomSheetBehavior bottomSheetBehavior3 = this.h;
            bottomSheetBehavior3.getClass();
            bottomSheetBehavior3.c0 = new WeakReference(this);
            int i = this.h.R;
            if (i == 4) {
                this.i = true;
            } else if (i == 3) {
                this.i = false;
            }
            ViewCompat.w(this, AccessibilityNodeInfoCompat.AccessibilityActionCompat.g, new c(4, this));
            ArrayList arrayList = this.h.e0;
            if (!arrayList.contains(null)) {
                arrayList.add(null);
            }
        }
        if (this.h != null) {
            z = true;
        }
        setClickable(z);
    }

    @Override // android.view.accessibility.AccessibilityManager.AccessibilityStateChangeListener
    public final void onAccessibilityStateChanged(boolean z) {
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onAttachedToWindow() {
        BottomSheetBehavior<?> bottomSheetBehavior;
        super.onAttachedToWindow();
        View view = this;
        while (true) {
            Object parent = view.getParent();
            bottomSheetBehavior = null;
            if (parent instanceof View) {
                view = (View) parent;
            } else {
                view = null;
            }
            if (view == null) {
                break;
            }
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.LayoutParams) {
                CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) layoutParams).f610a;
                if (behavior instanceof BottomSheetBehavior) {
                    bottomSheetBehavior = (BottomSheetBehavior) behavior;
                    break;
                }
            }
        }
        setBottomSheetBehavior(bottomSheetBehavior);
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onDetachedFromWindow() {
        setBottomSheetBehavior(null);
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.k && !this.j) {
            throw null;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public void setOnClickListener(@Nullable View.OnClickListener onClickListener) {
        boolean z;
        if (onClickListener != null) {
            z = true;
        } else {
            z = false;
        }
        this.k = z;
        super.setOnClickListener(onClickListener);
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public void setOnTouchListener(View.OnTouchListener onTouchListener) {
        boolean z;
        if (onTouchListener != null) {
            z = true;
        } else {
            z = false;
        }
        this.j = z;
        super.setOnTouchListener(onTouchListener);
    }

    /* renamed from: com.google.android.material.bottomsheet.BottomSheetDragHandleView$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 extends BottomSheetBehavior.BottomSheetCallback {
        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.BottomSheetCallback
        public final void c(View view, int i) {
            int i2 = BottomSheetDragHandleView.l;
            throw null;
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.BottomSheetCallback
        public final void b(View view) {
        }
    }
}
