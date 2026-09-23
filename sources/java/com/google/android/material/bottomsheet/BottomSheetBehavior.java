package com.google.android.material.bottomsheet;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.support.v4.media.a;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.util.TypedValue;
import android.view.AbsSavedState;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.activity.BackEventCompat;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.math.MathUtils;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.customview.widget.ViewDragHelper;
import com.google.android.material.R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.motion.MaterialBackHandler;
import com.google.android.material.motion.MaterialBottomContainerBackHelper;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.api.client.googleapis.media.MediaHttpUploader;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.WeakHashMap;
import kotlin.jvm.internal.IntCompanionObject;

/* loaded from: classes3.dex */
public class BottomSheetBehavior<V extends View> extends CoordinatorLayout.Behavior<V> implements MaterialBackHandler {
    public static final int n0 = R.style.Widget_Design_BottomSheet_Modal;
    public int A;
    public final boolean B;
    public final ShapeAppearanceModel C;
    public boolean D;
    public final StateSettlingTracker E;
    public final ValueAnimator F;
    public final int G;
    public int H;
    public int I;
    public final float J;
    public int K;
    public final float L;
    public boolean M;
    public boolean N;
    public final boolean O;
    public final boolean P;
    public boolean Q;
    public int R;
    public ViewDragHelper S;
    public boolean T;
    public int U;
    public boolean V;
    public final float W;
    public int X;
    public int Y;
    public int Z;
    public WeakReference a0;
    public WeakReference b0;

    /* renamed from: c, reason: collision with root package name */
    public final int f11681c;
    public WeakReference c0;
    public WeakReference d0;
    public final ArrayList e0;
    public boolean f;
    public VelocityTracker f0;
    public final float g;
    public MaterialBottomContainerBackHelper g0;
    public final int h;
    public int h0;
    public int i;
    public int i0;
    public boolean j;
    public boolean j0;
    public int k;
    public HashMap k0;
    public final int l;
    public final SparseIntArray l0;
    public final MaterialShapeDrawable m;
    public final ViewDragHelper.Callback m0;
    public final ColorStateList n;
    public final int o;
    public final int p;
    public int q;
    public final boolean r;
    public final boolean s;
    public final boolean t;
    public final boolean u;
    public final boolean v;
    public final boolean w;
    public final boolean x;
    public final boolean y;
    public int z;

    /* loaded from: classes3.dex */
    public static abstract class BottomSheetCallback {
        public void a(View view) {
        }

        public abstract void b(View view);

        public abstract void c(View view, int i);
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes3.dex */
    public @interface SaveFlags {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes3.dex */
    public @interface StableState {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes3.dex */
    public @interface State {
    }

    /* loaded from: classes3.dex */
    public class StateSettlingTracker {

        /* renamed from: a, reason: collision with root package name */
        public int f11688a;
        public boolean b;

        /* renamed from: c, reason: collision with root package name */
        public final Runnable f11689c = new Runnable() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.StateSettlingTracker.1
            @Override // java.lang.Runnable
            public final void run() {
                StateSettlingTracker stateSettlingTracker = StateSettlingTracker.this;
                stateSettlingTracker.b = false;
                BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                ViewDragHelper viewDragHelper = bottomSheetBehavior.S;
                if (viewDragHelper != null && viewDragHelper.f()) {
                    stateSettlingTracker.a(stateSettlingTracker.f11688a);
                } else if (bottomSheetBehavior.R == 2) {
                    bottomSheetBehavior.M(stateSettlingTracker.f11688a);
                }
            }
        };

        public StateSettlingTracker() {
        }

        public final void a(int i) {
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            WeakReference weakReference = bottomSheetBehavior.a0;
            if (weakReference != null && weakReference.get() != null) {
                this.f11688a = i;
                if (!this.b) {
                    ((View) bottomSheetBehavior.a0.get()).postOnAnimation(this.f11689c);
                    this.b = true;
                }
            }
        }
    }

    public BottomSheetBehavior() {
        this.f11681c = 0;
        this.f = true;
        this.o = -1;
        this.p = -1;
        this.E = new StateSettlingTracker();
        this.J = 0.5f;
        this.L = -1.0f;
        this.O = true;
        this.P = true;
        this.R = 4;
        this.W = 0.1f;
        this.e0 = new ArrayList();
        this.i0 = -1;
        this.l0 = new SparseIntArray();
        this.m0 = new ViewDragHelper.Callback() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.5
            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final int a(View view, int i) {
                return view.getLeft();
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final int b(View view, int i) {
                return MathUtils.b(i, BottomSheetBehavior.this.G(), d());
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final int d() {
                int i = BottomSheetBehavior.n0;
                BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                if (bottomSheetBehavior.M) {
                    return bottomSheetBehavior.Z;
                }
                return bottomSheetBehavior.K;
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final void f(int i) {
                if (i == 1) {
                    BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                    if (bottomSheetBehavior.O) {
                        bottomSheetBehavior.M(1);
                    }
                }
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final void g(View view, int i, int i2) {
                BottomSheetBehavior.this.C(i2);
            }

            /* JADX WARN: Code restructure failed: missing block: B:10:0x001c, code lost:
            
                if (r7 > r4.I) goto L52;
             */
            /* JADX WARN: Code restructure failed: missing block: B:25:0x006c, code lost:
            
                if (java.lang.Math.abs(r6.getTop() - r4.G()) < java.lang.Math.abs(r6.getTop() - r4.I)) goto L6;
             */
            /* JADX WARN: Code restructure failed: missing block: B:39:0x00b7, code lost:
            
                if (java.lang.Math.abs(r7 - r4.H) < java.lang.Math.abs(r7 - r4.K)) goto L6;
             */
            @Override // androidx.customview.widget.ViewDragHelper.Callback
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void h(android.view.View r6, float r7, float r8) {
                /*
                    Method dump skipped, instructions count: 233
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.AnonymousClass5.h(android.view.View, float, float):void");
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final boolean i(View view, int i) {
                View view2;
                BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                int i2 = bottomSheetBehavior.R;
                if (i2 != 1 && !bottomSheetBehavior.j0) {
                    if (i2 == 3 && bottomSheetBehavior.h0 == i) {
                        WeakReference weakReference = bottomSheetBehavior.d0;
                        if (weakReference != null) {
                            view2 = (View) weakReference.get();
                        } else {
                            view2 = null;
                        }
                        if (view2 != null && view2.canScrollVertically(-1)) {
                            return false;
                        }
                    }
                    SystemClock.uptimeMillis();
                    WeakReference weakReference2 = bottomSheetBehavior.a0;
                    if (weakReference2 != null && weakReference2.get() == view) {
                        return true;
                    }
                    return false;
                }
                return false;
            }
        };
    }

    public static BottomSheetBehavior E(View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof CoordinatorLayout.LayoutParams) {
            CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) layoutParams).f610a;
            if (behavior instanceof BottomSheetBehavior) {
                return (BottomSheetBehavior) behavior;
            }
            throw new IllegalArgumentException("The view is not associated with BottomSheetBehavior");
        }
        throw new IllegalArgumentException("The view is not a child of CoordinatorLayout");
    }

    public static int F(int i, int i2, int i3, int i4) {
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i, i2, i4);
        if (i3 == -1) {
            return childMeasureSpec;
        }
        int mode = View.MeasureSpec.getMode(childMeasureSpec);
        int size = View.MeasureSpec.getSize(childMeasureSpec);
        if (mode != 1073741824) {
            if (size != 0) {
                i3 = Math.min(size, i3);
            }
            return View.MeasureSpec.makeMeasureSpec(i3, IntCompanionObject.MIN_VALUE);
        }
        return View.MeasureSpec.makeMeasureSpec(Math.min(size, i3), 1073741824);
    }

    public final int A() {
        int i;
        if (this.j) {
            return Math.min(Math.max(this.k, this.Z - ((this.Y * 9) / 16)), this.X) + this.z;
        }
        if (!this.r && !this.s && (i = this.q) > 0) {
            return Math.max(this.i, i + this.l);
        }
        return this.i + this.z;
    }

    public final void B(View view, int i) {
        if (view != null) {
            ViewCompat.v(view, 524288);
            ViewCompat.s(view, 0);
            ViewCompat.v(view, MediaHttpUploader.MINIMUM_CHUNK_SIZE);
            ViewCompat.s(view, 0);
            ViewCompat.v(view, 1048576);
            ViewCompat.s(view, 0);
            SparseIntArray sparseIntArray = this.l0;
            int i2 = sparseIntArray.get(i, -1);
            if (i2 != -1) {
                ViewCompat.v(view, i2);
                ViewCompat.s(view, 0);
                sparseIntArray.delete(i);
            }
        }
    }

    public final void C(int i) {
        View view = (View) this.a0.get();
        if (view != null) {
            ArrayList arrayList = this.e0;
            if (!arrayList.isEmpty()) {
                int i2 = this.K;
                if (i <= i2 && i2 != G()) {
                    G();
                }
                for (int i3 = 0; i3 < arrayList.size(); i3++) {
                    ((BottomSheetCallback) arrayList.get(i3)).b(view);
                }
            }
        }
    }

    public final View D(View view) {
        if (view.getVisibility() != 0) {
            return null;
        }
        if (view.isNestedScrollingEnabled()) {
            return view;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View D = D(viewGroup.getChildAt(i));
                if (D != null) {
                    return D;
                }
            }
        }
        return null;
    }

    public final int G() {
        int i;
        if (this.f) {
            return this.H;
        }
        if (this.v) {
            i = 0;
        } else {
            i = this.A;
        }
        return Math.max(this.G, i);
    }

    public final int H(int i) {
        if (i != 3) {
            if (i != 4) {
                if (i != 5) {
                    if (i == 6) {
                        return this.I;
                    }
                    throw new IllegalArgumentException(a.e(i, "Invalid state to get top offset: "));
                }
                return this.Z;
            }
            return this.K;
        }
        return G();
    }

    public final boolean I() {
        WeakReference weakReference = this.a0;
        if (weakReference != null && weakReference.get() != null) {
            int[] iArr = new int[2];
            ((View) this.a0.get()).getLocationOnScreen(iArr);
            if (iArr[1] == 0) {
                return true;
            }
        }
        return false;
    }

    public final void J(BottomSheetDragHandleView bottomSheetDragHandleView) {
        WeakReference weakReference;
        if (bottomSheetDragHandleView == null && (weakReference = this.b0) != null) {
            B((View) weakReference.get(), 1);
            this.b0 = null;
        } else {
            this.b0 = new WeakReference(bottomSheetDragHandleView);
            Q(bottomSheetDragHandleView, 1);
        }
    }

    public final void K(boolean z) {
        if (this.M != z) {
            this.M = z;
            if (!z && this.R == 5) {
                e(4);
            }
            P();
        }
    }

    public final void L(int i) {
        if (i == -1) {
            if (!this.j) {
                this.j = true;
            } else {
                return;
            }
        } else {
            if (!this.j && this.i == i) {
                return;
            }
            this.j = false;
            this.i = Math.max(0, i);
        }
        T();
    }

    public final void M(int i) {
        View view;
        if (this.R != i) {
            this.R = i;
            if (i != 4 && i != 3 && i != 6) {
                boolean z = this.M;
            }
            WeakReference weakReference = this.a0;
            if (weakReference == null || (view = (View) weakReference.get()) == null) {
                return;
            }
            int i2 = 0;
            if (i == 3) {
                S(true);
            } else if (i == 6 || i == 5 || i == 4) {
                S(false);
            }
            R(i, true);
            while (true) {
                ArrayList arrayList = this.e0;
                if (i2 < arrayList.size()) {
                    ((BottomSheetCallback) arrayList.get(i2)).c(view, i);
                    i2++;
                } else {
                    P();
                    return;
                }
            }
        }
    }

    public final boolean N(View view, float f) {
        if (this.N) {
            return true;
        }
        if (view.getTop() < this.K) {
            return false;
        }
        if (Math.abs(((f * this.W) + view.getTop()) - this.K) / A() > 0.5f) {
            return true;
        }
        return false;
    }

    public final void O(int i, View view, boolean z) {
        int H = H(i);
        ViewDragHelper viewDragHelper = this.S;
        if (viewDragHelper != null && (!z ? viewDragHelper.q(view, view.getLeft(), H) : viewDragHelper.o(view.getLeft(), H))) {
            M(2);
            R(i, true);
            this.E.a(i);
            return;
        }
        M(i);
    }

    public final void P() {
        WeakReference weakReference = this.a0;
        if (weakReference != null) {
            Q((View) weakReference.get(), 0);
        }
        WeakReference weakReference2 = this.b0;
        if (weakReference2 != null) {
            Q((View) weakReference2.get(), 1);
        }
    }

    public final void Q(View view, int i) {
        int i2;
        boolean z;
        int i3;
        if (view != null) {
            B(view, i);
            final int i4 = 6;
            if (!this.f && this.R != 6) {
                String string = view.getResources().getString(R.string.bottomsheet_action_expand_halfway);
                AccessibilityViewCommand accessibilityViewCommand = new AccessibilityViewCommand() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.6
                    @Override // androidx.core.view.accessibility.AccessibilityViewCommand
                    public final boolean a(View view2) {
                        BottomSheetBehavior.this.e(i4);
                        return true;
                    }
                };
                ArrayList h = ViewCompat.h(view);
                int i5 = 0;
                while (true) {
                    if (i5 < h.size()) {
                        if (TextUtils.equals(string, ((AccessibilityNodeInfo.AccessibilityAction) ((AccessibilityNodeInfoCompat.AccessibilityActionCompat) h.get(i5)).f835a).getLabel())) {
                            i2 = ((AccessibilityNodeInfoCompat.AccessibilityActionCompat) h.get(i5)).a();
                            break;
                        }
                        i5++;
                    } else {
                        int i6 = 0;
                        int i7 = -1;
                        while (true) {
                            int[] iArr = ViewCompat.d;
                            if (i6 >= 32 || i7 != -1) {
                                break;
                            }
                            int i8 = iArr[i6];
                            boolean z2 = true;
                            for (int i9 = 0; i9 < h.size(); i9++) {
                                if (((AccessibilityNodeInfoCompat.AccessibilityActionCompat) h.get(i9)).a() != i8) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                z2 &= z;
                            }
                            if (z2) {
                                i7 = i8;
                            }
                            i6++;
                        }
                        i2 = i7;
                    }
                }
                if (i2 != -1) {
                    i3 = i2;
                    AccessibilityNodeInfoCompat.AccessibilityActionCompat accessibilityActionCompat = new AccessibilityNodeInfoCompat.AccessibilityActionCompat(null, i3, string, accessibilityViewCommand, null);
                    AccessibilityDelegateCompat e = ViewCompat.e(view);
                    if (e == null) {
                        e = new AccessibilityDelegateCompat();
                    }
                    ViewCompat.z(view, e);
                    ViewCompat.v(view, accessibilityActionCompat.a());
                    ViewCompat.h(view).add(accessibilityActionCompat);
                    ViewCompat.s(view, 0);
                } else {
                    i3 = i2;
                }
                this.l0.put(i, i3);
            }
            if (this.M) {
                final int i10 = 5;
                if (this.R != 5) {
                    ViewCompat.w(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.l, new AccessibilityViewCommand() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.6
                        @Override // androidx.core.view.accessibility.AccessibilityViewCommand
                        public final boolean a(View view2) {
                            BottomSheetBehavior.this.e(i10);
                            return true;
                        }
                    });
                }
            }
            int i11 = this.R;
            final int i12 = 4;
            final int i13 = 3;
            if (i11 != 3) {
                if (i11 != 4) {
                    if (i11 != 6) {
                        return;
                    }
                    ViewCompat.w(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.k, new AccessibilityViewCommand() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.6
                        @Override // androidx.core.view.accessibility.AccessibilityViewCommand
                        public final boolean a(View view2) {
                            BottomSheetBehavior.this.e(i12);
                            return true;
                        }
                    });
                    ViewCompat.w(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.j, new AccessibilityViewCommand() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.6
                        @Override // androidx.core.view.accessibility.AccessibilityViewCommand
                        public final boolean a(View view2) {
                            BottomSheetBehavior.this.e(i13);
                            return true;
                        }
                    });
                    return;
                }
                if (this.f) {
                    i4 = 3;
                }
                ViewCompat.w(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.j, new AccessibilityViewCommand() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.6
                    @Override // androidx.core.view.accessibility.AccessibilityViewCommand
                    public final boolean a(View view2) {
                        BottomSheetBehavior.this.e(i4);
                        return true;
                    }
                });
                return;
            }
            if (this.f) {
                i4 = 4;
            }
            ViewCompat.w(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.k, new AccessibilityViewCommand() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.6
                @Override // androidx.core.view.accessibility.AccessibilityViewCommand
                public final boolean a(View view2) {
                    BottomSheetBehavior.this.e(i4);
                    return true;
                }
            });
        }
    }

    public final void R(int i, boolean z) {
        boolean z2;
        MaterialShapeDrawable materialShapeDrawable;
        if (i != 2) {
            if (this.R == 3 && (this.B || I())) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (this.D != z2 && (materialShapeDrawable = this.m) != null) {
                this.D = z2;
                ValueAnimator valueAnimator = this.F;
                float f = 1.0f;
                if (z && valueAnimator != null) {
                    if (valueAnimator.isRunning()) {
                        valueAnimator.reverse();
                        return;
                    }
                    float f2 = materialShapeDrawable.f.j;
                    if (z2) {
                        f = z();
                    }
                    valueAnimator.setFloatValues(f2, f);
                    valueAnimator.start();
                    return;
                }
                if (valueAnimator != null && valueAnimator.isRunning()) {
                    valueAnimator.cancel();
                }
                if (this.D) {
                    f = z();
                }
                MaterialShapeDrawable.MaterialShapeDrawableState materialShapeDrawableState = materialShapeDrawable.f;
                if (materialShapeDrawableState.j != f) {
                    materialShapeDrawableState.j = f;
                    materialShapeDrawable.j = true;
                    materialShapeDrawable.k = true;
                    materialShapeDrawable.invalidateSelf();
                }
            }
        }
    }

    public final void S(boolean z) {
        WeakReference weakReference = this.a0;
        if (weakReference != null) {
            ViewParent parent = ((View) weakReference.get()).getParent();
            if (parent instanceof CoordinatorLayout) {
                CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
                int childCount = coordinatorLayout.getChildCount();
                if (z) {
                    if (this.k0 == null) {
                        this.k0 = new HashMap(childCount);
                    } else {
                        return;
                    }
                }
                for (int i = 0; i < childCount; i++) {
                    View childAt = coordinatorLayout.getChildAt(i);
                    if (childAt != this.a0.get() && z) {
                        this.k0.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                    }
                }
                if (!z) {
                    this.k0 = null;
                }
            }
        }
    }

    public final void T() {
        View view;
        if (this.a0 != null) {
            y();
            if (this.R == 4 && (view = (View) this.a0.get()) != null) {
                view.requestLayout();
            }
        }
    }

    @Override // com.google.android.material.motion.MaterialBackHandler
    public final void b(BackEventCompat backEventCompat) {
        MaterialBottomContainerBackHelper materialBottomContainerBackHelper = this.g0;
        if (materialBottomContainerBackHelper == null) {
            return;
        }
        materialBottomContainerBackHelper.f = backEventCompat;
    }

    @Override // com.google.android.material.motion.MaterialBackHandler
    public final void c(BackEventCompat backEventCompat) {
        MaterialBottomContainerBackHelper materialBottomContainerBackHelper = this.g0;
        if (materialBottomContainerBackHelper != null) {
            if (materialBottomContainerBackHelper.f == null) {
                Log.w("MaterialBackHelper", "Must call startBackProgress() before updateBackProgress()");
            }
            BackEventCompat backEventCompat2 = materialBottomContainerBackHelper.f;
            materialBottomContainerBackHelper.f = backEventCompat;
            if (backEventCompat2 == null) {
                return;
            }
            materialBottomContainerBackHelper.d(backEventCompat.f10c);
        }
    }

    @Override // com.google.android.material.motion.MaterialBackHandler
    public final void d() {
        MaterialBottomContainerBackHelper materialBottomContainerBackHelper = this.g0;
        if (materialBottomContainerBackHelper == null) {
            return;
        }
        BackEventCompat backEventCompat = materialBottomContainerBackHelper.f;
        materialBottomContainerBackHelper.f = null;
        int i = 4;
        if (backEventCompat != null && Build.VERSION.SDK_INT >= 34) {
            if (this.M) {
                materialBottomContainerBackHelper.c(backEventCompat, new AnimatorListenerAdapter() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.2
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator) {
                        BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                        bottomSheetBehavior.M(5);
                        WeakReference weakReference = bottomSheetBehavior.a0;
                        if (weakReference != null && weakReference.get() != null) {
                            ((View) bottomSheetBehavior.a0.get()).requestLayout();
                        }
                    }
                });
                return;
            }
            AnimatorSet b = materialBottomContainerBackHelper.b();
            b.setDuration(AnimationUtils.c(backEventCompat.f10c, materialBottomContainerBackHelper.f11830c, materialBottomContainerBackHelper.d));
            b.start();
            e(4);
            return;
        }
        if (this.M) {
            i = 5;
        }
        e(i);
    }

    public final void e(int i) {
        String str;
        final int i2;
        if (i != 1 && i != 2) {
            if (!this.M && i == 5) {
                Log.w("BottomSheetBehavior", "Cannot set state: " + i);
                return;
            }
            if (i == 6 && this.f && H(i) <= this.H) {
                i2 = 3;
            } else {
                i2 = i;
            }
            WeakReference weakReference = this.a0;
            if (weakReference != null && weakReference.get() != null) {
                final View view = (View) this.a0.get();
                Runnable runnable = new Runnable() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        int i3 = BottomSheetBehavior.n0;
                        BottomSheetBehavior.this.O(i2, view, false);
                    }
                };
                ViewParent parent = view.getParent();
                if (parent != null && parent.isLayoutRequested() && view.isAttachedToWindow()) {
                    view.post(runnable);
                    return;
                } else {
                    runnable.run();
                    return;
                }
            }
            M(i);
            return;
        }
        StringBuilder sb = new StringBuilder("STATE_");
        if (i == 1) {
            str = "DRAGGING";
        } else {
            str = "SETTLING";
        }
        throw new IllegalArgumentException(a.p(sb, str, " should not be set externally."));
    }

    @Override // com.google.android.material.motion.MaterialBackHandler
    public final void f() {
        MaterialBottomContainerBackHelper materialBottomContainerBackHelper = this.g0;
        if (materialBottomContainerBackHelper == null || materialBottomContainerBackHelper.a() == null) {
            return;
        }
        AnimatorSet b = materialBottomContainerBackHelper.b();
        b.setDuration(materialBottomContainerBackHelper.e);
        b.start();
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void i(CoordinatorLayout.LayoutParams layoutParams) {
        this.a0 = null;
        this.S = null;
        this.g0 = null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void l() {
        this.a0 = null;
        this.S = null;
        this.g0 = null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean m(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        boolean z;
        View view2;
        View view3;
        int i;
        ViewDragHelper viewDragHelper;
        if (view.isShown() && this.O) {
            int actionMasked = motionEvent.getActionMasked();
            View view4 = null;
            if (actionMasked == 0) {
                this.h0 = -1;
                this.i0 = -1;
                VelocityTracker velocityTracker = this.f0;
                if (velocityTracker != null) {
                    velocityTracker.recycle();
                    this.f0 = null;
                }
            }
            if (this.f0 == null) {
                this.f0 = VelocityTracker.obtain();
            }
            this.f0.addMovement(motionEvent);
            if (actionMasked != 0) {
                if (actionMasked == 1 || actionMasked == 3) {
                    this.j0 = false;
                    this.h0 = -1;
                    if (this.T) {
                        this.T = false;
                        return false;
                    }
                }
            } else {
                int x = (int) motionEvent.getX();
                int y = (int) motionEvent.getY();
                this.i0 = y;
                if (this.R != 2) {
                    WeakReference weakReference = this.d0;
                    if (weakReference != null) {
                        view2 = (View) weakReference.get();
                    } else {
                        view2 = null;
                    }
                    if (view2 != null && coordinatorLayout.i(view2, x, y)) {
                        this.h0 = motionEvent.getPointerId(motionEvent.getActionIndex());
                        int i2 = this.i0;
                        WeakReference weakReference2 = this.c0;
                        if (weakReference2 != null) {
                            view3 = (View) weakReference2.get();
                        } else {
                            view3 = null;
                        }
                        if (view3 == null || !coordinatorLayout.i(view3, x, i2)) {
                            this.j0 = true;
                        }
                    }
                }
                if (this.h0 == -1 && !coordinatorLayout.i(view, x, this.i0)) {
                    z = true;
                } else {
                    z = false;
                }
                this.T = z;
            }
            if (this.T || (viewDragHelper = this.S) == null || !viewDragHelper.p(motionEvent)) {
                WeakReference weakReference3 = this.d0;
                if (weakReference3 != null) {
                    view4 = (View) weakReference3.get();
                }
                if (actionMasked != 2 || view4 == null || this.T || this.R == 1 || coordinatorLayout.i(view4, (int) motionEvent.getX(), (int) motionEvent.getY()) || this.S == null || (i = this.i0) == -1 || Math.abs(i - motionEvent.getY()) <= this.S.b) {
                    return false;
                }
            }
            return true;
        }
        this.T = true;
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean n(CoordinatorLayout coordinatorLayout, View view, int i) {
        final boolean z;
        if (coordinatorLayout.getFitsSystemWindows() && !view.getFitsSystemWindows()) {
            view.setFitsSystemWindows(true);
        }
        int i2 = 0;
        if (this.a0 == null) {
            this.k = coordinatorLayout.getResources().getDimensionPixelSize(R.dimen.design_bottom_sheet_peek_height_min);
            if (Build.VERSION.SDK_INT >= 29 && !this.r && !this.j) {
                z = true;
            } else {
                z = false;
            }
            if (this.s || this.t || this.u || this.w || this.x || this.y || z) {
                ViewUtils.a(view, new ViewUtils.OnApplyWindowInsetsListener() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.4
                    /* JADX WARN: Removed duplicated region for block: B:35:0x0088  */
                    /* JADX WARN: Removed duplicated region for block: B:38:0x0096  */
                    @Override // com.google.android.material.internal.ViewUtils.OnApplyWindowInsetsListener
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public final androidx.core.view.WindowInsetsCompat a(android.view.View r17, androidx.core.view.WindowInsetsCompat r18, com.google.android.material.internal.ViewUtils.RelativePadding r19) {
                        /*
                            r16 = this;
                            r0 = r16
                            r1 = r17
                            r2 = r18
                            r3 = r19
                            r4 = 7
                            androidx.core.graphics.Insets r4 = r2.d(r4)
                            r5 = 32
                            androidx.core.graphics.Insets r5 = r2.d(r5)
                            com.google.android.material.bottomsheet.BottomSheetBehavior r6 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                            boolean r7 = r6.s
                            int r8 = r4.b
                            int r9 = r4.f682c
                            int r10 = r4.f681a
                            r6.A = r8
                            int r8 = r1.getLayoutDirection()
                            r12 = 1
                            if (r8 != r12) goto L28
                            r8 = r12
                            goto L29
                        L28:
                            r8 = 0
                        L29:
                            int r13 = r1.getPaddingBottom()
                            int r14 = r1.getPaddingLeft()
                            int r15 = r1.getPaddingRight()
                            if (r7 == 0) goto L40
                            int r13 = r2.f()
                            r6.z = r13
                            int r11 = r3.d
                            int r13 = r13 + r11
                        L40:
                            boolean r11 = r6.t
                            if (r11 == 0) goto L4d
                            if (r8 == 0) goto L49
                            int r11 = r3.f11824c
                            goto L4b
                        L49:
                            int r11 = r3.f11823a
                        L4b:
                            int r14 = r11 + r10
                        L4d:
                            boolean r11 = r6.u
                            if (r11 == 0) goto L5a
                            if (r8 == 0) goto L56
                            int r3 = r3.f11823a
                            goto L58
                        L56:
                            int r3 = r3.f11824c
                        L58:
                            int r15 = r3 + r9
                        L5a:
                            android.view.ViewGroup$LayoutParams r3 = r1.getLayoutParams()
                            android.view.ViewGroup$MarginLayoutParams r3 = (android.view.ViewGroup.MarginLayoutParams) r3
                            boolean r8 = r6.w
                            if (r8 == 0) goto L6c
                            int r8 = r3.leftMargin
                            if (r8 == r10) goto L6c
                            r3.leftMargin = r10
                            r11 = r12
                            goto L6d
                        L6c:
                            r11 = 0
                        L6d:
                            boolean r8 = r6.x
                            if (r8 == 0) goto L78
                            int r8 = r3.rightMargin
                            if (r8 == r9) goto L78
                            r3.rightMargin = r9
                            r11 = r12
                        L78:
                            boolean r8 = r6.y
                            if (r8 == 0) goto L85
                            int r8 = r3.topMargin
                            int r4 = r4.b
                            if (r8 == r4) goto L85
                            r3.topMargin = r4
                            goto L86
                        L85:
                            r12 = r11
                        L86:
                            if (r12 == 0) goto L8b
                            r1.setLayoutParams(r3)
                        L8b:
                            int r3 = r1.getPaddingTop()
                            r1.setPadding(r14, r3, r15, r13)
                            boolean r1 = r2
                            if (r1 == 0) goto L9a
                            int r3 = r5.d
                            r6.q = r3
                        L9a:
                            if (r7 != 0) goto La0
                            if (r1 == 0) goto L9f
                            goto La0
                        L9f:
                            return r2
                        La0:
                            r6.T()
                            return r2
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.AnonymousClass4.a(android.view.View, androidx.core.view.WindowInsetsCompat, com.google.android.material.internal.ViewUtils$RelativePadding):androidx.core.view.WindowInsetsCompat");
                    }
                });
            }
            ViewCompat.N(view, new InsetsAnimationCallback(view));
            this.a0 = new WeakReference(view);
            this.g0 = new MaterialBottomContainerBackHelper(view);
            MaterialShapeDrawable materialShapeDrawable = this.m;
            if (materialShapeDrawable != null) {
                view.setBackground(materialShapeDrawable);
                float f = this.L;
                if (f == -1.0f) {
                    f = view.getElevation();
                }
                materialShapeDrawable.n(f);
            } else {
                ColorStateList colorStateList = this.n;
                if (colorStateList != null) {
                    ViewCompat.C(view, colorStateList);
                }
            }
            P();
            if (view.getImportantForAccessibility() == 0) {
                view.setImportantForAccessibility(1);
            }
        }
        if (this.S == null) {
            this.S = new ViewDragHelper(coordinatorLayout.getContext(), coordinatorLayout, this.m0);
        }
        int top = view.getTop();
        coordinatorLayout.q(view, i);
        this.Y = coordinatorLayout.getWidth();
        this.Z = coordinatorLayout.getHeight();
        int height = view.getHeight();
        this.X = height;
        int i3 = this.Z;
        int i4 = i3 - height;
        int i5 = this.A;
        if (i4 < i5) {
            boolean z2 = this.v;
            int i6 = this.p;
            if (z2) {
                if (i6 != -1) {
                    i3 = Math.min(i3, i6);
                }
                this.X = i3;
            } else {
                int i7 = i3 - i5;
                if (i6 != -1) {
                    i7 = Math.min(i7, i6);
                }
                this.X = i7;
            }
        }
        this.H = Math.max(0, this.Z - this.X);
        this.I = (int) ((1.0f - this.J) * this.Z);
        y();
        int i8 = this.R;
        if (i8 == 3) {
            int G = G();
            WeakHashMap weakHashMap = ViewCompat.f792a;
            view.offsetTopAndBottom(G);
        } else if (i8 == 6) {
            int i9 = this.I;
            WeakHashMap weakHashMap2 = ViewCompat.f792a;
            view.offsetTopAndBottom(i9);
        } else if (this.M && i8 == 5) {
            int i10 = this.Z;
            WeakHashMap weakHashMap3 = ViewCompat.f792a;
            view.offsetTopAndBottom(i10);
        } else if (i8 == 4) {
            int i11 = this.K;
            WeakHashMap weakHashMap4 = ViewCompat.f792a;
            view.offsetTopAndBottom(i11);
        } else if (i8 == 1 || i8 == 2) {
            int top2 = top - view.getTop();
            WeakHashMap weakHashMap5 = ViewCompat.f792a;
            view.offsetTopAndBottom(top2);
        }
        R(this.R, false);
        this.d0 = new WeakReference(D(view));
        while (true) {
            ArrayList arrayList = this.e0;
            if (i2 >= arrayList.size()) {
                return true;
            }
            ((BottomSheetCallback) arrayList.get(i2)).a(view);
            i2++;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean o(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(F(i, coordinatorLayout.getPaddingRight() + coordinatorLayout.getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i2, this.o, marginLayoutParams.width), F(i3, coordinatorLayout.getPaddingBottom() + coordinatorLayout.getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, this.p, marginLayoutParams.height));
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean p(View view) {
        WeakReference weakReference = this.d0;
        if (weakReference != null && view == weakReference.get() && this.R != 3 && !this.Q) {
            return true;
        }
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void q(CoordinatorLayout coordinatorLayout, View view, View view2, int i, int i2, int[] iArr, int i3) {
        View view3;
        if (i3 != 1) {
            WeakReference weakReference = this.d0;
            if (weakReference != null) {
                view3 = (View) weakReference.get();
            } else {
                view3 = null;
            }
            if (view2 == view3) {
                int top = view.getTop();
                int i4 = top - i2;
                boolean z = this.O;
                boolean z2 = this.P;
                if (i2 > 0) {
                    if (!this.V && !z2 && view2 == view3 && view2.canScrollVertically(1)) {
                        this.Q = true;
                        return;
                    }
                    if (i4 < G()) {
                        int G = top - G();
                        iArr[1] = G;
                        WeakHashMap weakHashMap = ViewCompat.f792a;
                        view.offsetTopAndBottom(-G);
                        M(3);
                    } else if (z) {
                        iArr[1] = i2;
                        WeakHashMap weakHashMap2 = ViewCompat.f792a;
                        view.offsetTopAndBottom(-i2);
                        M(1);
                    } else {
                        return;
                    }
                } else if (i2 < 0) {
                    boolean canScrollVertically = view2.canScrollVertically(-1);
                    if (!this.V && !z2 && view2 == view3 && canScrollVertically) {
                        this.Q = true;
                        return;
                    }
                    if (!canScrollVertically) {
                        int i5 = this.K;
                        if (i4 > i5 && !this.M) {
                            int i6 = top - i5;
                            iArr[1] = i6;
                            WeakHashMap weakHashMap3 = ViewCompat.f792a;
                            view.offsetTopAndBottom(-i6);
                            M(4);
                        } else {
                            if (!z) {
                                return;
                            }
                            iArr[1] = i2;
                            WeakHashMap weakHashMap4 = ViewCompat.f792a;
                            view.offsetTopAndBottom(-i2);
                            M(1);
                        }
                    }
                }
                C(view.getTop());
                this.U = i2;
                this.V = true;
                this.Q = false;
            }
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void t(View view, Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        int i = this.f11681c;
        if (i != 0) {
            if (i == -1 || (i & 1) == 1) {
                this.i = savedState.h;
            }
            if (i == -1 || (i & 2) == 2) {
                this.f = savedState.i;
            }
            if (i == -1 || (i & 4) == 4) {
                this.M = savedState.j;
            }
            if (i == -1 || (i & 8) == 8) {
                this.N = savedState.k;
            }
        }
        int i2 = savedState.g;
        if (i2 != 1 && i2 != 2) {
            this.R = i2;
        } else {
            this.R = 4;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final Parcelable u(View view) {
        AbsSavedState absSavedState = View.BaseSavedState.EMPTY_STATE;
        return new SavedState(this);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean v(CoordinatorLayout coordinatorLayout, View view, View view2, View view3, int i, int i2) {
        this.U = 0;
        this.V = false;
        if ((i & 2) == 0) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0030, code lost:
    
        if (r4.getTop() <= r2.I) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0071, code lost:
    
        if (java.lang.Math.abs(r3 - r2.H) < java.lang.Math.abs(r3 - r2.K)) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0080, code lost:
    
        if (r3 < java.lang.Math.abs(r3 - r2.K)) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0090, code lost:
    
        if (java.lang.Math.abs(r3 - r1) < java.lang.Math.abs(r3 - r2.K)) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00ac, code lost:
    
        if (java.lang.Math.abs(r3 - r2.I) < java.lang.Math.abs(r3 - r2.K)) goto L50;
     */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void w(androidx.coordinatorlayout.widget.CoordinatorLayout r3, android.view.View r4, android.view.View r5, int r6) {
        /*
            r2 = this;
            int r3 = r4.getTop()
            int r6 = r2.G()
            r0 = 3
            if (r3 != r6) goto Lf
            r2.M(r0)
            return
        Lf:
            java.lang.ref.WeakReference r3 = r2.d0
            if (r3 == 0) goto Lb5
            java.lang.Object r3 = r3.get()
            if (r5 != r3) goto Lb5
            boolean r3 = r2.V
            if (r3 != 0) goto L1f
            goto Lb5
        L1f:
            int r3 = r2.U
            r5 = 6
            if (r3 <= 0) goto L34
            boolean r3 = r2.f
            if (r3 == 0) goto L2a
            goto Laf
        L2a:
            int r3 = r4.getTop()
            int r6 = r2.I
            if (r3 <= r6) goto Laf
            goto Lae
        L34:
            boolean r3 = r2.M
            if (r3 == 0) goto L55
            android.view.VelocityTracker r3 = r2.f0
            if (r3 != 0) goto L3e
            r3 = 0
            goto L4d
        L3e:
            r6 = 1000(0x3e8, float:1.401E-42)
            float r1 = r2.g
            r3.computeCurrentVelocity(r6, r1)
            android.view.VelocityTracker r3 = r2.f0
            int r6 = r2.h0
            float r3 = r3.getYVelocity(r6)
        L4d:
            boolean r3 = r2.N(r4, r3)
            if (r3 == 0) goto L55
            r0 = 5
            goto Laf
        L55:
            int r3 = r2.U
            r6 = 4
            if (r3 != 0) goto L93
            int r3 = r4.getTop()
            boolean r1 = r2.f
            if (r1 == 0) goto L74
            int r5 = r2.H
            int r5 = r3 - r5
            int r5 = java.lang.Math.abs(r5)
            int r1 = r2.K
            int r3 = r3 - r1
            int r3 = java.lang.Math.abs(r3)
            if (r5 >= r3) goto L97
            goto Laf
        L74:
            int r1 = r2.I
            if (r3 >= r1) goto L83
            int r6 = r2.K
            int r6 = r3 - r6
            int r6 = java.lang.Math.abs(r6)
            if (r3 >= r6) goto Lae
            goto Laf
        L83:
            int r0 = r3 - r1
            int r0 = java.lang.Math.abs(r0)
            int r1 = r2.K
            int r3 = r3 - r1
            int r3 = java.lang.Math.abs(r3)
            if (r0 >= r3) goto L97
            goto Lae
        L93:
            boolean r3 = r2.f
            if (r3 == 0) goto L99
        L97:
            r0 = r6
            goto Laf
        L99:
            int r3 = r4.getTop()
            int r0 = r2.I
            int r0 = r3 - r0
            int r0 = java.lang.Math.abs(r0)
            int r1 = r2.K
            int r3 = r3 - r1
            int r3 = java.lang.Math.abs(r3)
            if (r0 >= r3) goto L97
        Lae:
            r0 = r5
        Laf:
            r3 = 0
            r2.O(r0, r4, r3)
            r2.V = r3
        Lb5:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.w(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, android.view.View, int):void");
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean x(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        if (!view.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        int i = this.R;
        if (i == 1 && actionMasked == 0) {
            return true;
        }
        ViewDragHelper viewDragHelper = this.S;
        if (viewDragHelper != null && (this.O || i == 1)) {
            viewDragHelper.j(motionEvent);
        }
        if (actionMasked == 0) {
            this.h0 = -1;
            this.i0 = -1;
            VelocityTracker velocityTracker = this.f0;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.f0 = null;
            }
        }
        if (this.f0 == null) {
            this.f0 = VelocityTracker.obtain();
        }
        this.f0.addMovement(motionEvent);
        if (this.S != null && ((this.O || this.R == 1) && actionMasked == 2 && !this.T)) {
            float abs = Math.abs(this.i0 - motionEvent.getY());
            ViewDragHelper viewDragHelper2 = this.S;
            if (abs > viewDragHelper2.b) {
                viewDragHelper2.b(view, motionEvent.getPointerId(motionEvent.getActionIndex()));
            }
        }
        return !this.T;
    }

    public final void y() {
        int A = A();
        if (this.f) {
            this.K = Math.max(this.Z - A, this.H);
        } else {
            this.K = this.Z - A;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0061  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final float z() {
        /*
            r6 = this;
            com.google.android.material.shape.MaterialShapeDrawable r0 = r6.m
            r1 = 0
            if (r0 == 0) goto L8a
            java.lang.ref.WeakReference r0 = r6.a0
            if (r0 == 0) goto L8a
            java.lang.Object r0 = r0.get()
            if (r0 == 0) goto L8a
            int r0 = android.os.Build.VERSION.SDK_INT
            r2 = 31
            if (r0 < r2) goto L8a
            java.lang.ref.WeakReference r0 = r6.a0
            java.lang.Object r0 = r0.get()
            android.view.View r0 = (android.view.View) r0
            boolean r2 = r6.I()
            if (r2 == 0) goto L8a
            android.view.WindowInsets r0 = r0.getRootWindowInsets()
            if (r0 == 0) goto L8a
            com.google.android.material.shape.MaterialShapeDrawable r2 = r6.m
            float[] r3 = r2.G
            if (r3 == 0) goto L33
            r2 = 3
            r2 = r3[r2]
            goto L41
        L33:
            com.google.android.material.shape.MaterialShapeDrawable$MaterialShapeDrawableState r3 = r2.f
            com.google.android.material.shape.ShapeAppearanceModel r3 = r3.f11880a
            com.google.android.material.shape.CornerSize r3 = r3.e
            android.graphics.RectF r2 = r2.h()
            float r2 = r3.a(r2)
        L41:
            r3 = 0
            android.view.RoundedCorner r4 = r0.getRoundedCorner(r3)
            if (r4 == 0) goto L57
            int r4 = r4.getRadius()
            float r4 = (float) r4
            int r5 = (r4 > r1 ? 1 : (r4 == r1 ? 0 : -1))
            if (r5 <= 0) goto L57
            int r5 = (r2 > r1 ? 1 : (r2 == r1 ? 0 : -1))
            if (r5 <= 0) goto L57
            float r4 = r4 / r2
            goto L58
        L57:
            r4 = r1
        L58:
            com.google.android.material.shape.MaterialShapeDrawable r2 = r6.m
            float[] r5 = r2.G
            if (r5 == 0) goto L61
            r2 = r5[r3]
            goto L6f
        L61:
            com.google.android.material.shape.MaterialShapeDrawable$MaterialShapeDrawableState r3 = r2.f
            com.google.android.material.shape.ShapeAppearanceModel r3 = r3.f11880a
            com.google.android.material.shape.CornerSize r3 = r3.f
            android.graphics.RectF r2 = r2.h()
            float r2 = r3.a(r2)
        L6f:
            r3 = 1
            android.view.RoundedCorner r0 = r0.getRoundedCorner(r3)
            if (r0 == 0) goto L85
            int r0 = r0.getRadius()
            float r0 = (float) r0
            int r3 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r3 <= 0) goto L85
            int r3 = (r2 > r1 ? 1 : (r2 == r1 ? 0 : -1))
            if (r3 <= 0) goto L85
            float r1 = r0 / r2
        L85:
            float r0 = java.lang.Math.max(r4, r1)
            return r0
        L8a:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.z():float");
    }

    /* loaded from: classes3.dex */
    public static class SavedState extends androidx.customview.view.AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Object();
        public final int g;
        public final int h;
        public final boolean i;
        public final boolean j;
        public final boolean k;

        /* renamed from: com.google.android.material.bottomsheet.BottomSheetBehavior$SavedState$1, reason: invalid class name */
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

        public SavedState(BottomSheetBehavior bottomSheetBehavior) {
            super(AbsSavedState.EMPTY_STATE);
            this.g = bottomSheetBehavior.R;
            this.h = bottomSheetBehavior.i;
            this.i = bottomSheetBehavior.f;
            this.j = bottomSheetBehavior.M;
            this.k = bottomSheetBehavior.N;
        }
    }

    public BottomSheetBehavior(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        int i;
        this.f11681c = 0;
        this.f = true;
        this.o = -1;
        this.p = -1;
        this.E = new StateSettlingTracker();
        this.J = 0.5f;
        this.L = -1.0f;
        this.O = true;
        this.P = true;
        this.R = 4;
        this.W = 0.1f;
        this.e0 = new ArrayList();
        this.i0 = -1;
        this.l0 = new SparseIntArray();
        this.m0 = new ViewDragHelper.Callback() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.5
            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final int a(View view, int i2) {
                return view.getLeft();
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final int b(View view, int i2) {
                return MathUtils.b(i2, BottomSheetBehavior.this.G(), d());
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final int d() {
                int i2 = BottomSheetBehavior.n0;
                BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                if (bottomSheetBehavior.M) {
                    return bottomSheetBehavior.Z;
                }
                return bottomSheetBehavior.K;
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final void f(int i2) {
                if (i2 == 1) {
                    BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                    if (bottomSheetBehavior.O) {
                        bottomSheetBehavior.M(1);
                    }
                }
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final void g(View view, int i2, int i22) {
                BottomSheetBehavior.this.C(i22);
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final void h(View view, float f, float f2) {
                /*  JADX ERROR: Method code generation error
                    java.lang.NullPointerException: Cannot invoke "jadx.core.dex.nodes.IContainer.get(jadx.api.plugins.input.data.attributes.IJadxAttrType)" because "cont" is null
                    	at jadx.core.codegen.RegionGen.declareVars(RegionGen.java:70)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:65)
                    	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:297)
                    	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:276)
                    	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:406)
                    	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:335)
                    	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:301)
                    	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:184)
                    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
                    	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                    	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:261)
                    */
                /*
                    Method dump skipped, instructions count: 233
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.AnonymousClass5.h(android.view.View, float, float):void");
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final boolean i(View view, int i2) {
                View view2;
                BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                int i22 = bottomSheetBehavior.R;
                if (i22 != 1 && !bottomSheetBehavior.j0) {
                    if (i22 == 3 && bottomSheetBehavior.h0 == i2) {
                        WeakReference weakReference = bottomSheetBehavior.d0;
                        if (weakReference != null) {
                            view2 = (View) weakReference.get();
                        } else {
                            view2 = null;
                        }
                        if (view2 != null && view2.canScrollVertically(-1)) {
                            return false;
                        }
                    }
                    SystemClock.uptimeMillis();
                    WeakReference weakReference2 = bottomSheetBehavior.a0;
                    if (weakReference2 != null && weakReference2.get() == view) {
                        return true;
                    }
                    return false;
                }
                return false;
            }
        };
        this.l = context.getResources().getDimensionPixelSize(R.dimen.mtrl_min_touch_target_size);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.BottomSheetBehavior_Layout);
        if (obtainStyledAttributes.hasValue(R.styleable.BottomSheetBehavior_Layout_backgroundTint)) {
            this.n = MaterialResources.a(context, obtainStyledAttributes, R.styleable.BottomSheetBehavior_Layout_backgroundTint);
        }
        if (obtainStyledAttributes.hasValue(R.styleable.BottomSheetBehavior_Layout_shapeAppearance)) {
            this.C = ShapeAppearanceModel.c(context, attributeSet, R.attr.bottomSheetStyle, n0).a();
        }
        ShapeAppearanceModel shapeAppearanceModel = this.C;
        if (shapeAppearanceModel != null) {
            MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(shapeAppearanceModel);
            this.m = materialShapeDrawable;
            materialShapeDrawable.l(context);
            ColorStateList colorStateList = this.n;
            if (colorStateList != null) {
                this.m.o(colorStateList);
            } else {
                TypedValue typedValue = new TypedValue();
                context.getTheme().resolveAttribute(android.R.attr.colorBackground, typedValue, true);
                this.m.setTint(typedValue.data);
            }
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(z(), 1.0f);
        this.F = ofFloat;
        ofFloat.setDuration(500L);
        this.F.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                MaterialShapeDrawable materialShapeDrawable2 = BottomSheetBehavior.this.m;
                if (materialShapeDrawable2 != null) {
                    MaterialShapeDrawable.MaterialShapeDrawableState materialShapeDrawableState = materialShapeDrawable2.f;
                    if (materialShapeDrawableState.j != floatValue) {
                        materialShapeDrawableState.j = floatValue;
                        materialShapeDrawable2.j = true;
                        materialShapeDrawable2.k = true;
                        materialShapeDrawable2.invalidateSelf();
                    }
                }
            }
        });
        this.L = obtainStyledAttributes.getDimension(R.styleable.BottomSheetBehavior_Layout_android_elevation, -1.0f);
        if (obtainStyledAttributes.hasValue(R.styleable.BottomSheetBehavior_Layout_android_maxWidth)) {
            this.o = obtainStyledAttributes.getDimensionPixelSize(R.styleable.BottomSheetBehavior_Layout_android_maxWidth, -1);
        }
        if (obtainStyledAttributes.hasValue(R.styleable.BottomSheetBehavior_Layout_android_maxHeight)) {
            this.p = obtainStyledAttributes.getDimensionPixelSize(R.styleable.BottomSheetBehavior_Layout_android_maxHeight, -1);
        }
        TypedValue peekValue = obtainStyledAttributes.peekValue(R.styleable.BottomSheetBehavior_Layout_behavior_peekHeight);
        if (peekValue != null && (i = peekValue.data) == -1) {
            L(i);
        } else {
            L(obtainStyledAttributes.getDimensionPixelSize(R.styleable.BottomSheetBehavior_Layout_behavior_peekHeight, -1));
        }
        K(obtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_behavior_hideable, false));
        this.r = obtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_gestureInsetBottomIgnored, false);
        boolean z = obtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_behavior_fitToContents, true);
        if (this.f != z) {
            this.f = z;
            if (this.a0 != null) {
                y();
            }
            M((this.f && this.R == 6) ? 3 : this.R);
            R(this.R, true);
            P();
        }
        this.N = obtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_behavior_skipCollapsed, false);
        this.O = obtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_behavior_draggable, true);
        this.P = obtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_behavior_draggableOnNestedScroll, true);
        this.f11681c = obtainStyledAttributes.getInt(R.styleable.BottomSheetBehavior_Layout_behavior_saveFlags, 0);
        float f = obtainStyledAttributes.getFloat(R.styleable.BottomSheetBehavior_Layout_behavior_halfExpandedRatio, 0.5f);
        if (f > 0.0f && f < 1.0f) {
            this.J = f;
            if (this.a0 != null) {
                this.I = (int) ((1.0f - f) * this.Z);
            }
            TypedValue peekValue2 = obtainStyledAttributes.peekValue(R.styleable.BottomSheetBehavior_Layout_behavior_expandedOffset);
            if (peekValue2 != null && peekValue2.type == 16) {
                int i2 = peekValue2.data;
                if (i2 >= 0) {
                    this.G = i2;
                    R(this.R, true);
                } else {
                    throw new IllegalArgumentException("offset must be greater than or equal to 0");
                }
            } else {
                int dimensionPixelOffset = obtainStyledAttributes.getDimensionPixelOffset(R.styleable.BottomSheetBehavior_Layout_behavior_expandedOffset, 0);
                if (dimensionPixelOffset >= 0) {
                    this.G = dimensionPixelOffset;
                    R(this.R, true);
                } else {
                    throw new IllegalArgumentException("offset must be greater than or equal to 0");
                }
            }
            this.h = obtainStyledAttributes.getInt(R.styleable.BottomSheetBehavior_Layout_behavior_significantVelocityThreshold, 500);
            this.s = obtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_paddingBottomSystemWindowInsets, false);
            this.t = obtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_paddingLeftSystemWindowInsets, false);
            this.u = obtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_paddingRightSystemWindowInsets, false);
            this.v = obtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_paddingTopSystemWindowInsets, true);
            this.w = obtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_marginLeftSystemWindowInsets, false);
            this.x = obtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_marginRightSystemWindowInsets, false);
            this.y = obtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_marginTopSystemWindowInsets, false);
            this.B = obtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_shouldRemoveExpandedCorners, true);
            obtainStyledAttributes.recycle();
            this.g = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
            return;
        }
        throw new IllegalArgumentException("ratio must be a float value between 0 and 1");
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void r(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3, int[] iArr) {
    }
}
