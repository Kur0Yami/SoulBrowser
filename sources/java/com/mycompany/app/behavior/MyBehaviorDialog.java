package com.mycompany.app.behavior;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.a;
import android.util.AttributeSet;
import android.view.AbsSavedState;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.math.MathUtils;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.customview.widget.ViewDragHelper;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.api.client.googleapis.media.MediaHttpUploader;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.web.WebNestView;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.WeakHashMap;

/* loaded from: classes3.dex */
public class MyBehaviorDialog<V extends View> extends CoordinatorLayout.Behavior<V> {
    public int A;
    public int B;
    public WeakReference C;
    public WeakReference D;
    public boolean E;
    public final ArrayList F;
    public VelocityTracker G;
    public int H;
    public int I;
    public boolean J;
    public HashMap K;
    public final ViewDragHelper.Callback L;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f12845c;
    public final float f;
    public final boolean g;
    public final boolean h;
    public int i;
    public SettleRunnable j;
    public int k;
    public int l;
    public int m;
    public boolean n;
    public boolean o;
    public boolean p;
    public boolean q;
    public int r;
    public boolean s;
    public View t;
    public ViewDragHelper u;
    public boolean v;
    public int w;
    public boolean x;
    public int y;
    public int z;

    /* loaded from: classes3.dex */
    public static abstract class BottomSheetCallback {
        public abstract void a(int i);
    }

    /* loaded from: classes3.dex */
    public class SettleRunnable implements Runnable {

        /* renamed from: c, reason: collision with root package name */
        public final View f12849c;
        public boolean f;
        public int g;

        public SettleRunnable(View view, int i) {
            this.f12849c = view;
            this.g = i;
        }

        @Override // java.lang.Runnable
        public final void run() {
            MyBehaviorDialog myBehaviorDialog = MyBehaviorDialog.this;
            ViewDragHelper viewDragHelper = myBehaviorDialog.u;
            if (viewDragHelper != null && viewDragHelper.f()) {
                this.f12849c.postOnAnimation(this);
            } else {
                myBehaviorDialog.D(this.g);
            }
            this.f = false;
        }
    }

    public MyBehaviorDialog() {
        this.f12845c = true;
        this.j = null;
        this.o = true;
        this.r = 4;
        this.F = new ArrayList();
        this.L = new ViewDragHelper.Callback() { // from class: com.mycompany.app.behavior.MyBehaviorDialog.2
            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final int a(View view, int i) {
                return view.getLeft();
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final int b(View view, int i) {
                int i2;
                MyBehaviorDialog myBehaviorDialog = MyBehaviorDialog.this;
                int B = myBehaviorDialog.B();
                if (myBehaviorDialog.n) {
                    i2 = myBehaviorDialog.z;
                } else {
                    i2 = myBehaviorDialog.m;
                }
                return MathUtils.b(i, B, i2);
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final int d() {
                MyBehaviorDialog myBehaviorDialog = MyBehaviorDialog.this;
                if (myBehaviorDialog.n) {
                    return myBehaviorDialog.z;
                }
                return myBehaviorDialog.m;
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final void f(int i) {
                if (i == 1) {
                    MyBehaviorDialog myBehaviorDialog = MyBehaviorDialog.this;
                    if (myBehaviorDialog.o) {
                        myBehaviorDialog.D(1);
                    }
                }
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final void g(View view, int i, int i2) {
                MyBehaviorDialog.this.z(i2);
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final void h(View view, float f, float f2) {
                int i = 0;
                int i2 = 6;
                MyBehaviorDialog myBehaviorDialog = MyBehaviorDialog.this;
                if (f2 < 0.0f) {
                    if (myBehaviorDialog.f12845c) {
                        i = myBehaviorDialog.k;
                    } else {
                        int top = view.getTop();
                        int i3 = myBehaviorDialog.l;
                        if (top > i3) {
                            i = i3;
                        }
                    }
                    i2 = 3;
                } else if (myBehaviorDialog.n && myBehaviorDialog.F(view, f2)) {
                    if (Math.abs(f) >= Math.abs(f2) || f2 <= 500.0f) {
                        int top2 = view.getTop();
                        int i4 = myBehaviorDialog.z;
                        if ((i4 != myBehaviorDialog.A || !myBehaviorDialog.q || top2 <= myBehaviorDialog.B) && top2 <= (myBehaviorDialog.B() + i4) / 2) {
                            if (myBehaviorDialog.f12845c) {
                                i = myBehaviorDialog.k;
                            } else if (Math.abs(view.getTop()) >= Math.abs(view.getTop() - myBehaviorDialog.l)) {
                                i = myBehaviorDialog.l;
                            }
                            i2 = 3;
                        }
                    }
                    i = myBehaviorDialog.z;
                    i2 = 5;
                } else {
                    if (myBehaviorDialog.q) {
                        if (myBehaviorDialog.f12845c) {
                            i = myBehaviorDialog.k;
                        }
                    } else if (f2 != 0.0f && Math.abs(f) <= Math.abs(f2)) {
                        if (myBehaviorDialog.f12845c) {
                            i = myBehaviorDialog.m;
                        } else {
                            int top3 = view.getTop();
                            if (Math.abs(top3 - myBehaviorDialog.l) < Math.abs(top3 - myBehaviorDialog.m)) {
                                i = myBehaviorDialog.l;
                            } else {
                                i = myBehaviorDialog.m;
                            }
                        }
                        i2 = 4;
                    } else {
                        int top4 = view.getTop();
                        if (myBehaviorDialog.f12845c) {
                            if (Math.abs(top4 - myBehaviorDialog.k) < Math.abs(top4 - myBehaviorDialog.m)) {
                                i = myBehaviorDialog.k;
                            } else {
                                i = myBehaviorDialog.m;
                                i2 = 4;
                            }
                        } else {
                            int i5 = myBehaviorDialog.l;
                            if (top4 < i5) {
                                if (top4 >= Math.abs(top4 - myBehaviorDialog.m)) {
                                    i = myBehaviorDialog.l;
                                }
                            } else if (Math.abs(top4 - i5) < Math.abs(top4 - myBehaviorDialog.m)) {
                                i = myBehaviorDialog.l;
                            } else {
                                i = myBehaviorDialog.m;
                                i2 = 4;
                            }
                        }
                    }
                    i2 = 3;
                }
                myBehaviorDialog.G(view, i2, i, true);
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final boolean i(View view, int i) {
                View view2;
                MyBehaviorDialog myBehaviorDialog = MyBehaviorDialog.this;
                int i2 = myBehaviorDialog.r;
                if (i2 != 1 && !myBehaviorDialog.J) {
                    if (i2 == 3 && myBehaviorDialog.H == i) {
                        WeakReference weakReference = myBehaviorDialog.D;
                        if (weakReference != null) {
                            view2 = (View) weakReference.get();
                        } else {
                            view2 = null;
                        }
                        if (view2 != null && view2.canScrollVertically(-1)) {
                            return false;
                        }
                    }
                    WeakReference weakReference2 = myBehaviorDialog.C;
                    if (weakReference2 != null && weakReference2.get() == view) {
                        return true;
                    }
                    return false;
                }
                return false;
            }
        };
    }

    public final View A(View view) {
        Object tag;
        boolean r;
        RecyclerView.LayoutManager layoutManager;
        if (view != null) {
            if (view.getVisibility() != 0 || (((tag = view.getTag()) != null && (tag instanceof String) && "skip_scroll".equals(tag)) || ((view instanceof RecyclerView) && ((layoutManager = ((RecyclerView) view).getLayoutManager()) == null || !(layoutManager instanceof LinearLayoutManager) || ((LinearLayoutManager) layoutManager).p != 1)))) {
                r = false;
            } else {
                r = ViewCompat.r(view);
            }
            if (r) {
                return view;
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                int childCount = viewGroup.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    View A = A(viewGroup.getChildAt(i));
                    if (A != null) {
                        return A;
                    }
                }
                return null;
            }
            return null;
        }
        return null;
    }

    public final int B() {
        if (this.f12845c) {
            return this.k;
        }
        return 0;
    }

    public final void C(boolean z) {
        if (this.n != z) {
            this.n = z;
            if (!z && this.r == 5) {
                e(4);
            }
            H();
        }
    }

    public final void D(int i) {
        if (this.r != i) {
            this.r = i;
            WeakReference weakReference = this.C;
            if (weakReference == null || ((View) weakReference.get()) == null) {
                return;
            }
            int i2 = 0;
            if (i == 3) {
                I(true);
            } else if (i == 6 || i == 5 || i == 4) {
                I(false);
            }
            while (true) {
                ArrayList arrayList = this.F;
                if (i2 < arrayList.size()) {
                    ((BottomSheetCallback) arrayList.get(i2)).a(i);
                    i2++;
                } else {
                    H();
                    return;
                }
            }
        }
    }

    public final void E(View view, int i) {
        int i2;
        int i3;
        if (i == 4) {
            i2 = this.m;
        } else if (i == 6) {
            i2 = this.l;
            if (this.f12845c && i2 <= (i3 = this.k)) {
                i = 3;
                i2 = i3;
            }
        } else if (i == 3) {
            i2 = B();
        } else if (this.n && i == 5) {
            i2 = this.z;
        } else {
            throw new IllegalArgumentException(a.e(i, "Illegal state argument: "));
        }
        G(view, i, i2, false);
    }

    public final boolean F(View view, float f) {
        int top = view.getTop();
        if (!this.q || top <= this.B) {
            if (top >= this.m) {
                if (Math.abs(((f * 0.1f) + view.getTop()) - this.m) / y() > 0.5f) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final void G(View view, int i, int i2, boolean z) {
        if (i == 5) {
            D(i);
            return;
        }
        ViewDragHelper viewDragHelper = this.u;
        if (viewDragHelper != null && (!z ? viewDragHelper.q(view, view.getLeft(), i2) : viewDragHelper.o(view.getLeft(), i2))) {
            D(2);
            if (this.j == null) {
                this.j = new SettleRunnable(view, i);
            }
            SettleRunnable settleRunnable = this.j;
            if (!settleRunnable.f) {
                settleRunnable.g = i;
                view.postOnAnimation(settleRunnable);
                this.j.f = true;
                return;
            }
            settleRunnable.g = i;
            return;
        }
        D(i);
    }

    public final void H() {
        View view;
        WeakReference weakReference = this.C;
        if (weakReference != null && (view = (View) weakReference.get()) != null) {
            ViewCompat.v(view, 524288);
            ViewCompat.s(view, 0);
            ViewCompat.v(view, MediaHttpUploader.MINIMUM_CHUNK_SIZE);
            ViewCompat.s(view, 0);
            ViewCompat.v(view, 1048576);
            ViewCompat.s(view, 0);
            if (this.n) {
                final int i = 5;
                if (this.r != 5) {
                    ViewCompat.w(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.l, new AccessibilityViewCommand() { // from class: com.mycompany.app.behavior.MyBehaviorDialog.3
                        @Override // androidx.core.view.accessibility.AccessibilityViewCommand
                        public final boolean a(View view2) {
                            MyBehaviorDialog.this.e(i);
                            return true;
                        }
                    });
                }
            }
            int i2 = this.r;
            final int i3 = 6;
            final int i4 = 4;
            final int i5 = 3;
            if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 6) {
                        return;
                    }
                    ViewCompat.w(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.k, new AccessibilityViewCommand() { // from class: com.mycompany.app.behavior.MyBehaviorDialog.3
                        @Override // androidx.core.view.accessibility.AccessibilityViewCommand
                        public final boolean a(View view2) {
                            MyBehaviorDialog.this.e(i4);
                            return true;
                        }
                    });
                    ViewCompat.w(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.j, new AccessibilityViewCommand() { // from class: com.mycompany.app.behavior.MyBehaviorDialog.3
                        @Override // androidx.core.view.accessibility.AccessibilityViewCommand
                        public final boolean a(View view2) {
                            MyBehaviorDialog.this.e(i5);
                            return true;
                        }
                    });
                    return;
                }
                if (this.f12845c) {
                    i3 = 3;
                }
                ViewCompat.w(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.j, new AccessibilityViewCommand() { // from class: com.mycompany.app.behavior.MyBehaviorDialog.3
                    @Override // androidx.core.view.accessibility.AccessibilityViewCommand
                    public final boolean a(View view2) {
                        MyBehaviorDialog.this.e(i3);
                        return true;
                    }
                });
                return;
            }
            if (this.f12845c) {
                i3 = 4;
            }
            ViewCompat.w(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.k, new AccessibilityViewCommand() { // from class: com.mycompany.app.behavior.MyBehaviorDialog.3
                @Override // androidx.core.view.accessibility.AccessibilityViewCommand
                public final boolean a(View view2) {
                    MyBehaviorDialog.this.e(i3);
                    return true;
                }
            });
        }
    }

    public final void I(boolean z) {
        WeakReference weakReference = this.C;
        if (weakReference != null) {
            ViewParent parent = ((View) weakReference.get()).getParent();
            if (parent instanceof CoordinatorLayout) {
                CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
                int childCount = coordinatorLayout.getChildCount();
                if (z) {
                    if (this.K == null) {
                        this.K = new HashMap(childCount);
                    } else {
                        return;
                    }
                }
                for (int i = 0; i < childCount; i++) {
                    View childAt = coordinatorLayout.getChildAt(i);
                    if (childAt != this.C.get() && z) {
                        this.K.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                    }
                }
                if (!z) {
                    this.K = null;
                }
            }
        }
    }

    public final void e(final int i) {
        if (i != this.r) {
            WeakReference weakReference = this.C;
            if (weakReference == null) {
                if (i == 4 || i == 3 || i == 6 || (this.n && i == 5)) {
                    this.r = i;
                    return;
                }
                return;
            }
            final View view = (View) weakReference.get();
            if (view == null) {
                return;
            }
            ViewParent parent = view.getParent();
            if (parent != null && parent.isLayoutRequested() && view.isAttachedToWindow()) {
                view.post(new Runnable() { // from class: com.mycompany.app.behavior.MyBehaviorDialog.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        MyBehaviorDialog.this.E(view, i);
                    }
                });
            } else {
                E(view, i);
            }
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void i(CoordinatorLayout.LayoutParams layoutParams) {
        this.C = null;
        this.u = null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void l() {
        this.C = null;
        this.u = null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean m(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        boolean z;
        View view2;
        ViewDragHelper viewDragHelper;
        if (view.isShown() && this.o) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 5) {
                this.v = true;
                return false;
            }
            View view3 = null;
            if (actionMasked == 0) {
                this.H = -1;
                VelocityTracker velocityTracker = this.G;
                if (velocityTracker != null) {
                    velocityTracker.recycle();
                    this.G = null;
                }
            }
            if (this.G == null) {
                this.G = VelocityTracker.obtain();
            }
            this.G.addMovement(motionEvent);
            if (actionMasked != 0) {
                if (actionMasked == 1 || actionMasked == 3) {
                    this.J = false;
                    this.H = -1;
                    if (this.v) {
                        this.v = false;
                        return false;
                    }
                }
            } else {
                int x = (int) motionEvent.getX();
                this.I = (int) motionEvent.getY();
                if (this.r != 2) {
                    WeakReference weakReference = this.D;
                    if (weakReference != null) {
                        view2 = (View) weakReference.get();
                    } else {
                        view2 = null;
                    }
                    if (view2 != null && coordinatorLayout.i(view2, x, this.I)) {
                        this.H = motionEvent.getPointerId(motionEvent.getActionIndex());
                        this.J = true;
                    }
                }
                if (this.H == -1 && !coordinatorLayout.i(view, x, this.I)) {
                    z = true;
                } else {
                    z = false;
                }
                this.v = z;
            }
            if (this.v || (viewDragHelper = this.u) == null || !viewDragHelper.p(motionEvent)) {
                WeakReference weakReference2 = this.D;
                if (weakReference2 != null) {
                    view3 = (View) weakReference2.get();
                }
                if (actionMasked != 2 || view3 == null || this.v || this.r == 1 || coordinatorLayout.i(view3, (int) motionEvent.getX(), (int) motionEvent.getY()) || this.u == null || Math.abs(this.I - motionEvent.getY()) <= this.u.b) {
                    return false;
                }
            }
            return true;
        }
        this.v = true;
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean n(CoordinatorLayout coordinatorLayout, View view, int i) {
        boolean z;
        Context context = view.getContext();
        if (this.C == null) {
            this.i = (int) MainUtil.G(context, 64.0f);
            this.C = new WeakReference(view);
            H();
            if (view.getImportantForAccessibility() == 0) {
                view.setImportantForAccessibility(1);
            }
        }
        if (this.u == null) {
            this.u = new ViewDragHelper(coordinatorLayout.getContext(), coordinatorLayout, this.L);
        }
        int top = view.getTop();
        coordinatorLayout.q(view, i);
        this.y = coordinatorLayout.getWidth();
        this.z = coordinatorLayout.getHeight();
        this.A = view.getHeight();
        boolean z2 = false;
        if (MainUtil.K6(context, this.z) < 600.0f) {
            z = true;
        } else {
            z = false;
        }
        this.p = z;
        if (z) {
            this.q = true;
            this.r = 3;
        }
        int i2 = this.z;
        int i3 = this.A;
        if (i2 == i3) {
            this.B = Math.min(i2 / 4, MainApp.g1 * 4);
        } else {
            this.B = (i3 / 2) + (i2 - i3);
        }
        this.k = Math.max(0, this.z - this.A);
        this.l = (int) (0.5f * this.z);
        int y = y();
        if (this.f12845c) {
            this.m = Math.max(this.z - y, this.k);
        } else {
            this.m = this.z - y;
        }
        int i4 = this.r;
        if (i4 == 3) {
            int B = B();
            WeakHashMap weakHashMap = ViewCompat.f792a;
            view.offsetTopAndBottom(B);
        } else if (i4 == 6) {
            int i5 = this.l;
            WeakHashMap weakHashMap2 = ViewCompat.f792a;
            view.offsetTopAndBottom(i5);
        } else if (this.n && i4 == 5) {
            int i6 = this.z;
            WeakHashMap weakHashMap3 = ViewCompat.f792a;
            view.offsetTopAndBottom(i6);
        } else if (i4 == 4) {
            int i7 = this.m;
            WeakHashMap weakHashMap4 = ViewCompat.f792a;
            view.offsetTopAndBottom(i7);
        } else if (i4 == 1 || i4 == 2) {
            int top2 = top - view.getTop();
            WeakHashMap weakHashMap5 = ViewCompat.f792a;
            view.offsetTopAndBottom(top2);
        }
        View view2 = this.t;
        if (view2 == null) {
            if (this.s) {
                view2 = null;
            } else {
                view2 = A(view);
            }
            this.D = new WeakReference(view2);
        }
        if (view2 != null && (view2 instanceof WebNestView)) {
            z2 = true;
        }
        this.E = z2;
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean p(View view) {
        WeakReference weakReference = this.D;
        if (weakReference != null && view == weakReference.get() && this.r != 3) {
            return true;
        }
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void q(CoordinatorLayout coordinatorLayout, View view, View view2, int i, int i2, int[] iArr, int i3) {
        View view3;
        if (i3 != 1) {
            WeakReference weakReference = this.D;
            if (weakReference != null) {
                view3 = (View) weakReference.get();
            } else {
                view3 = null;
            }
            if (view2 == view3) {
                int top = view.getTop();
                int i4 = top - i2;
                if (i2 > 0) {
                    if (i4 < B()) {
                        int B = top - B();
                        iArr[1] = B;
                        int i5 = -B;
                        WeakHashMap weakHashMap = ViewCompat.f792a;
                        view.offsetTopAndBottom(i5);
                        D(3);
                    } else if (this.o) {
                        iArr[1] = i2;
                        WeakHashMap weakHashMap2 = ViewCompat.f792a;
                        view.offsetTopAndBottom(-i2);
                        D(1);
                    } else {
                        return;
                    }
                } else if (i2 < 0) {
                    if (!view2.canScrollVertically(-1)) {
                        int i6 = this.m;
                        if (i4 > i6 && !this.n) {
                            int i7 = top - i6;
                            iArr[1] = i7;
                            int i8 = -i7;
                            WeakHashMap weakHashMap3 = ViewCompat.f792a;
                            view.offsetTopAndBottom(i8);
                            D(4);
                        } else {
                            if (!this.o) {
                                return;
                            }
                            iArr[1] = i2;
                            WeakHashMap weakHashMap4 = ViewCompat.f792a;
                            view.offsetTopAndBottom(-i2);
                            D(1);
                        }
                    } else if (this.E) {
                        this.v = true;
                    }
                }
                z(view.getTop());
                this.w = i2;
                this.x = true;
            }
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void t(View view, Parcelable parcelable) {
        try {
            int i = ((SavedState) parcelable).g;
            if (i != 1 && i != 2) {
                this.r = i;
                return;
            }
            if (this.q) {
                this.r = 3;
            } else {
                this.r = 4;
            }
        } catch (Exception unused) {
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final Parcelable u(View view) {
        AbsSavedState absSavedState = View.BaseSavedState.EMPTY_STATE;
        return new SavedState(this);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean v(CoordinatorLayout coordinatorLayout, View view, View view2, View view3, int i, int i2) {
        this.w = 0;
        this.x = false;
        if ((i & 2) == 0) {
            return false;
        }
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void w(CoordinatorLayout coordinatorLayout, View view, View view2, int i) {
        int i2;
        float yVelocity;
        int i3 = 3;
        if (view.getTop() == B()) {
            D(3);
            return;
        }
        WeakReference weakReference = this.D;
        if (weakReference != null && view2 == weakReference.get() && this.x) {
            if (this.w > 0) {
                if (this.f12845c) {
                    i2 = this.k;
                } else {
                    int top = view.getTop();
                    int i4 = this.l;
                    if (top > i4) {
                        i3 = 6;
                        i2 = i4;
                    }
                    i2 = 0;
                }
            } else {
                if (this.n) {
                    VelocityTracker velocityTracker = this.G;
                    if (velocityTracker == null) {
                        yVelocity = 0.0f;
                    } else {
                        velocityTracker.computeCurrentVelocity(1000, this.f);
                        yVelocity = this.G.getYVelocity(this.H);
                    }
                    if (F(view, yVelocity)) {
                        i2 = this.z;
                        i3 = 5;
                    }
                }
                if (this.q) {
                    if (this.f12845c) {
                        i2 = this.k;
                    }
                    i2 = 0;
                } else if (this.w == 0) {
                    int top2 = view.getTop();
                    if (this.f12845c) {
                        if (Math.abs(top2 - this.k) < Math.abs(top2 - this.m)) {
                            i2 = this.k;
                        } else {
                            i2 = this.m;
                        }
                    } else {
                        int i5 = this.l;
                        if (top2 < i5) {
                            if (top2 >= Math.abs(top2 - this.m)) {
                                i2 = this.l;
                            }
                            i2 = 0;
                        } else if (Math.abs(top2 - i5) < Math.abs(top2 - this.m)) {
                            i2 = this.l;
                        } else {
                            i2 = this.m;
                        }
                        i3 = 6;
                    }
                    i3 = 4;
                } else {
                    if (this.f12845c) {
                        i2 = this.m;
                    } else {
                        int top3 = view.getTop();
                        if (Math.abs(top3 - this.l) < Math.abs(top3 - this.m)) {
                            i2 = this.l;
                            i3 = 6;
                        } else {
                            i2 = this.m;
                        }
                    }
                    i3 = 4;
                }
            }
            G(view, i3, i2, false);
            this.x = false;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean x(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        if (!view.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (this.r == 1 && actionMasked == 0) {
            return true;
        }
        ViewDragHelper viewDragHelper = this.u;
        if (viewDragHelper != null) {
            viewDragHelper.j(motionEvent);
        }
        if (actionMasked == 0) {
            this.H = -1;
            VelocityTracker velocityTracker = this.G;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.G = null;
            }
        }
        if (this.G == null) {
            this.G = VelocityTracker.obtain();
        }
        this.G.addMovement(motionEvent);
        if (this.u != null && actionMasked == 2 && !this.v) {
            float abs = Math.abs(this.I - motionEvent.getY());
            ViewDragHelper viewDragHelper2 = this.u;
            if (abs > viewDragHelper2.b) {
                viewDragHelper2.b(view, motionEvent.getPointerId(motionEvent.getActionIndex()));
            }
        }
        return !this.v;
    }

    public final int y() {
        if (this.g) {
            int i = this.z;
            int i2 = this.y;
            if (i <= i2) {
                i2 = i;
                i = i2;
            }
            if (this.h) {
                return Math.max(this.i, i - i2);
            }
            return Math.max(this.i, i - ((i2 * 9) / 16));
        }
        return 0;
    }

    public final void z(int i) {
        if (((View) this.C.get()) != null) {
            ArrayList arrayList = this.F;
            if (!arrayList.isEmpty()) {
                if (i <= this.m) {
                    B();
                }
                for (int i2 = 0; i2 < arrayList.size(); i2++) {
                    ((BottomSheetCallback) arrayList.get(i2)).getClass();
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class SavedState extends androidx.customview.view.AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Object();
        public final int g;
        public final int h;
        public final boolean i;
        public final boolean j;
        public final boolean k;

        /* renamed from: com.mycompany.app.behavior.MyBehaviorDialog$SavedState$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        public class AnonymousClass1 implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.ClassLoaderCreator
            public final SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public final Object[] newArray(int i) {
                return new SavedState[i];
            }

            @Override // android.os.Parcelable.Creator
            public final Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.g = parcel.readInt();
            this.h = parcel.readInt();
            this.i = parcel.readInt() == 1;
            this.j = parcel.readInt() == 1;
            this.k = parcel.readInt() == 1;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.g);
            parcel.writeInt(this.h);
            parcel.writeInt(this.i ? 1 : 0);
            parcel.writeInt(this.j ? 1 : 0);
            parcel.writeInt(this.k ? 1 : 0);
        }

        public SavedState(MyBehaviorDialog myBehaviorDialog) {
            super(AbsSavedState.EMPTY_STATE);
            this.g = myBehaviorDialog.r;
            this.h = 0;
            this.i = myBehaviorDialog.f12845c;
            this.j = myBehaviorDialog.n;
            this.k = false;
        }
    }

    public MyBehaviorDialog(Context context) {
        this.f12845c = true;
        this.j = null;
        this.o = true;
        this.r = 4;
        this.F = new ArrayList();
        this.L = new ViewDragHelper.Callback() { // from class: com.mycompany.app.behavior.MyBehaviorDialog.2
            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final int a(View view, int i) {
                return view.getLeft();
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final int b(View view, int i) {
                int i2;
                MyBehaviorDialog myBehaviorDialog = MyBehaviorDialog.this;
                int B = myBehaviorDialog.B();
                if (myBehaviorDialog.n) {
                    i2 = myBehaviorDialog.z;
                } else {
                    i2 = myBehaviorDialog.m;
                }
                return MathUtils.b(i, B, i2);
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final int d() {
                MyBehaviorDialog myBehaviorDialog = MyBehaviorDialog.this;
                if (myBehaviorDialog.n) {
                    return myBehaviorDialog.z;
                }
                return myBehaviorDialog.m;
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final void f(int i) {
                if (i == 1) {
                    MyBehaviorDialog myBehaviorDialog = MyBehaviorDialog.this;
                    if (myBehaviorDialog.o) {
                        myBehaviorDialog.D(1);
                    }
                }
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final void g(View view, int i, int i2) {
                MyBehaviorDialog.this.z(i2);
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final void h(View view, float f, float f2) {
                int i = 0;
                int i2 = 6;
                MyBehaviorDialog myBehaviorDialog = MyBehaviorDialog.this;
                if (f2 < 0.0f) {
                    if (myBehaviorDialog.f12845c) {
                        i = myBehaviorDialog.k;
                    } else {
                        int top = view.getTop();
                        int i3 = myBehaviorDialog.l;
                        if (top > i3) {
                            i = i3;
                        }
                    }
                    i2 = 3;
                } else if (myBehaviorDialog.n && myBehaviorDialog.F(view, f2)) {
                    if (Math.abs(f) >= Math.abs(f2) || f2 <= 500.0f) {
                        int top2 = view.getTop();
                        int i4 = myBehaviorDialog.z;
                        if ((i4 != myBehaviorDialog.A || !myBehaviorDialog.q || top2 <= myBehaviorDialog.B) && top2 <= (myBehaviorDialog.B() + i4) / 2) {
                            if (myBehaviorDialog.f12845c) {
                                i = myBehaviorDialog.k;
                            } else if (Math.abs(view.getTop()) >= Math.abs(view.getTop() - myBehaviorDialog.l)) {
                                i = myBehaviorDialog.l;
                            }
                            i2 = 3;
                        }
                    }
                    i = myBehaviorDialog.z;
                    i2 = 5;
                } else {
                    if (myBehaviorDialog.q) {
                        if (myBehaviorDialog.f12845c) {
                            i = myBehaviorDialog.k;
                        }
                    } else if (f2 != 0.0f && Math.abs(f) <= Math.abs(f2)) {
                        if (myBehaviorDialog.f12845c) {
                            i = myBehaviorDialog.m;
                        } else {
                            int top3 = view.getTop();
                            if (Math.abs(top3 - myBehaviorDialog.l) < Math.abs(top3 - myBehaviorDialog.m)) {
                                i = myBehaviorDialog.l;
                            } else {
                                i = myBehaviorDialog.m;
                            }
                        }
                        i2 = 4;
                    } else {
                        int top4 = view.getTop();
                        if (myBehaviorDialog.f12845c) {
                            if (Math.abs(top4 - myBehaviorDialog.k) < Math.abs(top4 - myBehaviorDialog.m)) {
                                i = myBehaviorDialog.k;
                            } else {
                                i = myBehaviorDialog.m;
                                i2 = 4;
                            }
                        } else {
                            int i5 = myBehaviorDialog.l;
                            if (top4 < i5) {
                                if (top4 >= Math.abs(top4 - myBehaviorDialog.m)) {
                                    i = myBehaviorDialog.l;
                                }
                            } else if (Math.abs(top4 - i5) < Math.abs(top4 - myBehaviorDialog.m)) {
                                i = myBehaviorDialog.l;
                            } else {
                                i = myBehaviorDialog.m;
                                i2 = 4;
                            }
                        }
                    }
                    i2 = 3;
                }
                myBehaviorDialog.G(view, i2, i, true);
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final boolean i(View view, int i) {
                View view2;
                MyBehaviorDialog myBehaviorDialog = MyBehaviorDialog.this;
                int i2 = myBehaviorDialog.r;
                if (i2 != 1 && !myBehaviorDialog.J) {
                    if (i2 == 3 && myBehaviorDialog.H == i) {
                        WeakReference weakReference = myBehaviorDialog.D;
                        if (weakReference != null) {
                            view2 = (View) weakReference.get();
                        } else {
                            view2 = null;
                        }
                        if (view2 != null && view2.canScrollVertically(-1)) {
                            return false;
                        }
                    }
                    WeakReference weakReference2 = myBehaviorDialog.C;
                    if (weakReference2 != null && weakReference2.get() == view) {
                        return true;
                    }
                    return false;
                }
                return false;
            }
        };
        this.g = true;
        this.h = true;
        this.f = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
    }

    public MyBehaviorDialog(Context context, AttributeSet attributeSet) {
        this.f12845c = true;
        this.j = null;
        this.o = true;
        this.r = 4;
        this.F = new ArrayList();
        this.L = new ViewDragHelper.Callback() { // from class: com.mycompany.app.behavior.MyBehaviorDialog.2
            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final int a(View view, int i) {
                return view.getLeft();
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final int b(View view, int i) {
                int i2;
                MyBehaviorDialog myBehaviorDialog = MyBehaviorDialog.this;
                int B = myBehaviorDialog.B();
                if (myBehaviorDialog.n) {
                    i2 = myBehaviorDialog.z;
                } else {
                    i2 = myBehaviorDialog.m;
                }
                return MathUtils.b(i, B, i2);
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final int d() {
                MyBehaviorDialog myBehaviorDialog = MyBehaviorDialog.this;
                if (myBehaviorDialog.n) {
                    return myBehaviorDialog.z;
                }
                return myBehaviorDialog.m;
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final void f(int i) {
                if (i == 1) {
                    MyBehaviorDialog myBehaviorDialog = MyBehaviorDialog.this;
                    if (myBehaviorDialog.o) {
                        myBehaviorDialog.D(1);
                    }
                }
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final void g(View view, int i, int i2) {
                MyBehaviorDialog.this.z(i2);
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final void h(View view, float f, float f2) {
                int i = 0;
                int i2 = 6;
                MyBehaviorDialog myBehaviorDialog = MyBehaviorDialog.this;
                if (f2 < 0.0f) {
                    if (myBehaviorDialog.f12845c) {
                        i = myBehaviorDialog.k;
                    } else {
                        int top = view.getTop();
                        int i3 = myBehaviorDialog.l;
                        if (top > i3) {
                            i = i3;
                        }
                    }
                    i2 = 3;
                } else if (myBehaviorDialog.n && myBehaviorDialog.F(view, f2)) {
                    if (Math.abs(f) >= Math.abs(f2) || f2 <= 500.0f) {
                        int top2 = view.getTop();
                        int i4 = myBehaviorDialog.z;
                        if ((i4 != myBehaviorDialog.A || !myBehaviorDialog.q || top2 <= myBehaviorDialog.B) && top2 <= (myBehaviorDialog.B() + i4) / 2) {
                            if (myBehaviorDialog.f12845c) {
                                i = myBehaviorDialog.k;
                            } else if (Math.abs(view.getTop()) >= Math.abs(view.getTop() - myBehaviorDialog.l)) {
                                i = myBehaviorDialog.l;
                            }
                            i2 = 3;
                        }
                    }
                    i = myBehaviorDialog.z;
                    i2 = 5;
                } else {
                    if (myBehaviorDialog.q) {
                        if (myBehaviorDialog.f12845c) {
                            i = myBehaviorDialog.k;
                        }
                    } else if (f2 != 0.0f && Math.abs(f) <= Math.abs(f2)) {
                        if (myBehaviorDialog.f12845c) {
                            i = myBehaviorDialog.m;
                        } else {
                            int top3 = view.getTop();
                            if (Math.abs(top3 - myBehaviorDialog.l) < Math.abs(top3 - myBehaviorDialog.m)) {
                                i = myBehaviorDialog.l;
                            } else {
                                i = myBehaviorDialog.m;
                            }
                        }
                        i2 = 4;
                    } else {
                        int top4 = view.getTop();
                        if (myBehaviorDialog.f12845c) {
                            if (Math.abs(top4 - myBehaviorDialog.k) < Math.abs(top4 - myBehaviorDialog.m)) {
                                i = myBehaviorDialog.k;
                            } else {
                                i = myBehaviorDialog.m;
                                i2 = 4;
                            }
                        } else {
                            int i5 = myBehaviorDialog.l;
                            if (top4 < i5) {
                                if (top4 >= Math.abs(top4 - myBehaviorDialog.m)) {
                                    i = myBehaviorDialog.l;
                                }
                            } else if (Math.abs(top4 - i5) < Math.abs(top4 - myBehaviorDialog.m)) {
                                i = myBehaviorDialog.l;
                            } else {
                                i = myBehaviorDialog.m;
                                i2 = 4;
                            }
                        }
                    }
                    i2 = 3;
                }
                myBehaviorDialog.G(view, i2, i, true);
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final boolean i(View view, int i) {
                View view2;
                MyBehaviorDialog myBehaviorDialog = MyBehaviorDialog.this;
                int i2 = myBehaviorDialog.r;
                if (i2 != 1 && !myBehaviorDialog.J) {
                    if (i2 == 3 && myBehaviorDialog.H == i) {
                        WeakReference weakReference = myBehaviorDialog.D;
                        if (weakReference != null) {
                            view2 = (View) weakReference.get();
                        } else {
                            view2 = null;
                        }
                        if (view2 != null && view2.canScrollVertically(-1)) {
                            return false;
                        }
                    }
                    WeakReference weakReference2 = myBehaviorDialog.C;
                    if (weakReference2 != null && weakReference2.get() == view) {
                        return true;
                    }
                    return false;
                }
                return false;
            }
        };
        this.g = true;
        this.f = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
    }
}
