package com.google.android.material.sidesheet;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Property;
import android.util.TypedValue;
import android.view.AbsSavedState;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.activity.BackEventCompat;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.math.MathUtils;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.customview.widget.ViewDragHelper;
import com.google.android.material.R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.motion.MaterialSideContainerBackHelper;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.sidesheet.SideSheetBehavior;
import com.google.android.material.sidesheet.SideSheetDialog;
import com.google.api.client.googleapis.media.MediaHttpUploader;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.WeakHashMap;

/* loaded from: classes3.dex */
public class SideSheetBehavior<V extends View> extends CoordinatorLayout.Behavior<V> implements Sheet<SideSheetCallback> {
    public static final int B = R.string.side_sheet_accessibility_pane_title;
    public static final int C = R.style.Widget_Material3_SideSheet;
    public final ViewDragHelper.Callback A;

    /* renamed from: c, reason: collision with root package name */
    public SheetDelegate f11919c;
    public final MaterialShapeDrawable f;
    public final ColorStateList g;
    public final ShapeAppearanceModel h;
    public final StateSettlingTracker i;
    public final float j;
    public final boolean k;
    public int l;
    public ViewDragHelper m;
    public boolean n;
    public final float o;
    public int p;
    public int q;
    public int r;
    public int s;
    public WeakReference t;
    public WeakReference u;
    public final int v;
    public VelocityTracker w;
    public MaterialSideContainerBackHelper x;
    public int y;
    public final LinkedHashSet z;

    /* loaded from: classes3.dex */
    public class StateSettlingTracker {

        /* renamed from: a, reason: collision with root package name */
        public int f11922a;
        public boolean b;

        /* renamed from: c, reason: collision with root package name */
        public final d f11923c = new Runnable() { // from class: com.google.android.material.sidesheet.d
            @Override // java.lang.Runnable
            public final void run() {
                SideSheetBehavior.StateSettlingTracker stateSettlingTracker = SideSheetBehavior.StateSettlingTracker.this;
                stateSettlingTracker.b = false;
                SideSheetBehavior sideSheetBehavior = SideSheetBehavior.this;
                ViewDragHelper viewDragHelper = sideSheetBehavior.m;
                if (viewDragHelper != null && viewDragHelper.f()) {
                    stateSettlingTracker.a(stateSettlingTracker.f11922a);
                } else if (sideSheetBehavior.l == 2) {
                    sideSheetBehavior.y(stateSettlingTracker.f11922a);
                }
            }
        };

        /* JADX WARN: Type inference failed for: r1v1, types: [com.google.android.material.sidesheet.d] */
        public StateSettlingTracker() {
        }

        public final void a(int i) {
            SideSheetBehavior sideSheetBehavior = SideSheetBehavior.this;
            WeakReference weakReference = sideSheetBehavior.t;
            if (weakReference != null && weakReference.get() != null) {
                this.f11922a = i;
                if (!this.b) {
                    ((View) sideSheetBehavior.t.get()).postOnAnimation(this.f11923c);
                    this.b = true;
                }
            }
        }
    }

    public SideSheetBehavior() {
        this.i = new StateSettlingTracker();
        this.k = true;
        this.l = 5;
        this.o = 0.1f;
        this.v = -1;
        this.z = new LinkedHashSet();
        this.A = new ViewDragHelper.Callback() { // from class: com.google.android.material.sidesheet.SideSheetBehavior.1
            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final int a(View view, int i) {
                SideSheetBehavior sideSheetBehavior = SideSheetBehavior.this;
                return MathUtils.b(i, sideSheetBehavior.f11919c.g(), sideSheetBehavior.f11919c.f());
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final int b(View view, int i) {
                return view.getTop();
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final int c(View view) {
                SideSheetBehavior sideSheetBehavior = SideSheetBehavior.this;
                return sideSheetBehavior.p + sideSheetBehavior.s;
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final void f(int i) {
                if (i == 1) {
                    SideSheetBehavior sideSheetBehavior = SideSheetBehavior.this;
                    if (sideSheetBehavior.k) {
                        sideSheetBehavior.y(1);
                    }
                }
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final void g(View view, int i, int i2) {
                View view2;
                ViewGroup.MarginLayoutParams marginLayoutParams;
                SideSheetBehavior sideSheetBehavior = SideSheetBehavior.this;
                WeakReference weakReference = sideSheetBehavior.u;
                if (weakReference != null) {
                    view2 = (View) weakReference.get();
                } else {
                    view2 = null;
                }
                if (view2 != null && (marginLayoutParams = (ViewGroup.MarginLayoutParams) view2.getLayoutParams()) != null) {
                    sideSheetBehavior.f11919c.p(marginLayoutParams, view.getLeft(), view.getRight());
                    view2.setLayoutParams(marginLayoutParams);
                }
                LinkedHashSet linkedHashSet = sideSheetBehavior.z;
                if (!linkedHashSet.isEmpty()) {
                    sideSheetBehavior.f11919c.b(i);
                    Iterator it = linkedHashSet.iterator();
                    while (it.hasNext()) {
                        ((SheetCallback) it.next()).getClass();
                    }
                }
            }

            /* JADX WARN: Code restructure failed: missing block: B:18:0x0051, code lost:
            
                if (java.lang.Math.abs(r4 - r0.f11919c.d()) < java.lang.Math.abs(r4 - r0.f11919c.e())) goto L19;
             */
            /* JADX WARN: Code restructure failed: missing block: B:8:0x0021, code lost:
            
                if (r0.f11919c.l(r3) == false) goto L19;
             */
            @Override // androidx.customview.widget.ViewDragHelper.Callback
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void h(android.view.View r3, float r4, float r5) {
                /*
                    r2 = this;
                    com.google.android.material.sidesheet.SideSheetBehavior r0 = com.google.android.material.sidesheet.SideSheetBehavior.this
                    com.google.android.material.sidesheet.SheetDelegate r1 = r0.f11919c
                    boolean r1 = r1.k(r4)
                    if (r1 == 0) goto Lb
                    goto L53
                Lb:
                    com.google.android.material.sidesheet.SheetDelegate r1 = r0.f11919c
                    boolean r1 = r1.n(r3, r4)
                    if (r1 == 0) goto L24
                    com.google.android.material.sidesheet.SheetDelegate r1 = r0.f11919c
                    boolean r4 = r1.m(r4, r5)
                    if (r4 != 0) goto L55
                    com.google.android.material.sidesheet.SheetDelegate r4 = r0.f11919c
                    boolean r4 = r4.l(r3)
                    if (r4 == 0) goto L53
                    goto L55
                L24:
                    r1 = 0
                    int r1 = (r4 > r1 ? 1 : (r4 == r1 ? 0 : -1))
                    if (r1 == 0) goto L36
                    float r4 = java.lang.Math.abs(r4)
                    float r5 = java.lang.Math.abs(r5)
                    int r4 = (r4 > r5 ? 1 : (r4 == r5 ? 0 : -1))
                    if (r4 <= 0) goto L36
                    goto L55
                L36:
                    int r4 = r3.getLeft()
                    com.google.android.material.sidesheet.SheetDelegate r5 = r0.f11919c
                    int r5 = r5.d()
                    int r5 = r4 - r5
                    int r5 = java.lang.Math.abs(r5)
                    com.google.android.material.sidesheet.SheetDelegate r1 = r0.f11919c
                    int r1 = r1.e()
                    int r4 = r4 - r1
                    int r4 = java.lang.Math.abs(r4)
                    if (r5 >= r4) goto L55
                L53:
                    r4 = 3
                    goto L56
                L55:
                    r4 = 5
                L56:
                    r5 = 1
                    r0.A(r4, r3, r5)
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.sidesheet.SideSheetBehavior.AnonymousClass1.h(android.view.View, float, float):void");
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final boolean i(View view, int i) {
                WeakReference weakReference;
                SideSheetBehavior sideSheetBehavior = SideSheetBehavior.this;
                if (sideSheetBehavior.l == 1 || (weakReference = sideSheetBehavior.t) == null || weakReference.get() != view) {
                    return false;
                }
                return true;
            }
        };
    }

    public final void A(int i, View view, boolean z) {
        int d;
        if (i != 3) {
            if (i == 5) {
                d = this.f11919c.e();
            } else {
                throw new IllegalArgumentException(android.support.v4.media.a.e(i, "Invalid state to get outer edge offset: "));
            }
        } else {
            d = this.f11919c.d();
        }
        ViewDragHelper viewDragHelper = this.m;
        if (viewDragHelper != null && (!z ? viewDragHelper.q(view, d, view.getTop()) : viewDragHelper.o(d, view.getTop()))) {
            y(2);
            this.i.a(i);
        } else {
            y(i);
        }
    }

    public final void B() {
        View view;
        WeakReference weakReference = this.t;
        if (weakReference != null && (view = (View) weakReference.get()) != null) {
            ViewCompat.v(view, MediaHttpUploader.MINIMUM_CHUNK_SIZE);
            ViewCompat.s(view, 0);
            ViewCompat.v(view, 1048576);
            ViewCompat.s(view, 0);
            final int i = 5;
            if (this.l != 5) {
                ViewCompat.w(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.l, new AccessibilityViewCommand() { // from class: com.google.android.material.sidesheet.b
                    @Override // androidx.core.view.accessibility.AccessibilityViewCommand
                    public final boolean a(View view2) {
                        int i2 = SideSheetBehavior.B;
                        SideSheetBehavior.this.e(i);
                        return true;
                    }
                });
            }
            final int i2 = 3;
            if (this.l != 3) {
                ViewCompat.w(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.j, new AccessibilityViewCommand() { // from class: com.google.android.material.sidesheet.b
                    @Override // androidx.core.view.accessibility.AccessibilityViewCommand
                    public final boolean a(View view2) {
                        int i22 = SideSheetBehavior.B;
                        SideSheetBehavior.this.e(i2);
                        return true;
                    }
                });
            }
        }
    }

    @Override // com.google.android.material.sidesheet.Sheet
    public final void a(SideSheetDialog.AnonymousClass1 anonymousClass1) {
        this.z.add(anonymousClass1);
    }

    @Override // com.google.android.material.motion.MaterialBackHandler
    public final void b(BackEventCompat backEventCompat) {
        MaterialSideContainerBackHelper materialSideContainerBackHelper = this.x;
        if (materialSideContainerBackHelper == null) {
            return;
        }
        materialSideContainerBackHelper.f = backEventCompat;
    }

    @Override // com.google.android.material.motion.MaterialBackHandler
    public final void c(BackEventCompat backEventCompat) {
        int i;
        View view;
        ViewGroup.MarginLayoutParams marginLayoutParams;
        boolean z;
        MaterialSideContainerBackHelper materialSideContainerBackHelper = this.x;
        if (materialSideContainerBackHelper != null) {
            SheetDelegate sheetDelegate = this.f11919c;
            if (sheetDelegate != null && sheetDelegate.j() != 0) {
                i = 3;
            } else {
                i = 5;
            }
            if (materialSideContainerBackHelper.f == null) {
                Log.w("MaterialBackHelper", "Must call startBackProgress() before updateBackProgress()");
            }
            BackEventCompat backEventCompat2 = materialSideContainerBackHelper.f;
            materialSideContainerBackHelper.f = backEventCompat;
            if (backEventCompat2 != null) {
                if (backEventCompat.d == 0) {
                    z = true;
                } else {
                    z = false;
                }
                materialSideContainerBackHelper.c(backEventCompat.f10c, i, z);
            }
            WeakReference weakReference = this.t;
            if (weakReference != null && weakReference.get() != null) {
                View view2 = (View) this.t.get();
                WeakReference weakReference2 = this.u;
                if (weakReference2 != null) {
                    view = (View) weakReference2.get();
                } else {
                    view = null;
                }
                if (view != null && (marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams()) != null) {
                    this.f11919c.o(marginLayoutParams, (int) ((view2.getScaleX() * this.p) + this.s));
                    view.requestLayout();
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0, types: [com.google.android.material.sidesheet.c] */
    @Override // com.google.android.material.motion.MaterialBackHandler
    public final void d() {
        final View view;
        final ViewGroup.MarginLayoutParams marginLayoutParams;
        MaterialSideContainerBackHelper materialSideContainerBackHelper = this.x;
        if (materialSideContainerBackHelper == null) {
            return;
        }
        BackEventCompat backEventCompat = materialSideContainerBackHelper.f;
        c cVar = null;
        materialSideContainerBackHelper.f = null;
        int i = 5;
        if (backEventCompat != null && Build.VERSION.SDK_INT >= 34) {
            SheetDelegate sheetDelegate = this.f11919c;
            if (sheetDelegate != null && sheetDelegate.j() != 0) {
                i = 3;
            }
            AnimatorListenerAdapter animatorListenerAdapter = new AnimatorListenerAdapter() { // from class: com.google.android.material.sidesheet.SideSheetBehavior.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    SideSheetBehavior sideSheetBehavior = SideSheetBehavior.this;
                    sideSheetBehavior.y(5);
                    WeakReference weakReference = sideSheetBehavior.t;
                    if (weakReference != null && weakReference.get() != null) {
                        ((View) sideSheetBehavior.t.get()).requestLayout();
                    }
                }
            };
            WeakReference weakReference = this.u;
            if (weakReference != null) {
                view = (View) weakReference.get();
            } else {
                view = null;
            }
            if (view != null && (marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams()) != null) {
                final int c2 = this.f11919c.c(marginLayoutParams);
                cVar = new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.sidesheet.c
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        SideSheetBehavior.this.f11919c.o(marginLayoutParams, AnimationUtils.c(valueAnimator.getAnimatedFraction(), c2, 0));
                        view.requestLayout();
                    }
                };
            }
            materialSideContainerBackHelper.b(backEventCompat, i, animatorListenerAdapter, cVar);
            return;
        }
        e(5);
    }

    @Override // com.google.android.material.sidesheet.Sheet
    public final void e(int i) {
        String str;
        if (i != 1 && i != 2) {
            WeakReference weakReference = this.t;
            if (weakReference != null && weakReference.get() != null) {
                View view = (View) this.t.get();
                androidx.core.content.res.a aVar = new androidx.core.content.res.a(i, 1, this);
                ViewParent parent = view.getParent();
                if (parent != null && parent.isLayoutRequested() && view.isAttachedToWindow()) {
                    view.post(aVar);
                    return;
                } else {
                    aVar.run();
                    return;
                }
            }
            y(i);
            return;
        }
        StringBuilder sb = new StringBuilder("STATE_");
        if (i == 1) {
            str = "DRAGGING";
        } else {
            str = "SETTLING";
        }
        throw new IllegalArgumentException(android.support.v4.media.a.p(sb, str, " should not be set externally."));
    }

    @Override // com.google.android.material.motion.MaterialBackHandler
    public final void f() {
        MaterialSideContainerBackHelper materialSideContainerBackHelper = this.x;
        if (materialSideContainerBackHelper != null) {
            View view = materialSideContainerBackHelper.b;
            if (materialSideContainerBackHelper.a() == null) {
                return;
            }
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(ObjectAnimator.ofFloat(view, (Property<View, Float>) View.SCALE_X, 1.0f), ObjectAnimator.ofFloat(view, (Property<View, Float>) View.SCALE_Y, 1.0f));
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i = 0; i < viewGroup.getChildCount(); i++) {
                    animatorSet.playTogether(ObjectAnimator.ofFloat(viewGroup.getChildAt(i), (Property<View, Float>) View.SCALE_Y, 1.0f));
                }
            }
            animatorSet.setDuration(materialSideContainerBackHelper.e);
            animatorSet.start();
        }
    }

    @Override // com.google.android.material.sidesheet.Sheet
    public final int getState() {
        return this.l;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void i(CoordinatorLayout.LayoutParams layoutParams) {
        this.t = null;
        this.m = null;
        this.x = null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void l() {
        this.t = null;
        this.m = null;
        this.x = null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean m(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        ViewDragHelper viewDragHelper;
        VelocityTracker velocityTracker;
        if ((view.isShown() || ViewCompat.g(view) != null) && this.k) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0 && (velocityTracker = this.w) != null) {
                velocityTracker.recycle();
                this.w = null;
            }
            if (this.w == null) {
                this.w = VelocityTracker.obtain();
            }
            this.w.addMovement(motionEvent);
            if (actionMasked != 0) {
                if ((actionMasked == 1 || actionMasked == 3) && this.n) {
                    this.n = false;
                    return false;
                }
            } else {
                this.y = (int) motionEvent.getX();
            }
            if (!this.n && (viewDragHelper = this.m) != null && viewDragHelper.p(motionEvent)) {
                return true;
            }
            return false;
        }
        this.n = true;
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean n(CoordinatorLayout coordinatorLayout, View view, int i) {
        int i2;
        View view2;
        View view3;
        int i3;
        int i4;
        View findViewById;
        int i5;
        if (coordinatorLayout.getFitsSystemWindows() && !view.getFitsSystemWindows()) {
            view.setFitsSystemWindows(true);
        }
        WeakReference weakReference = this.t;
        MaterialShapeDrawable materialShapeDrawable = this.f;
        int i6 = 0;
        if (weakReference == null) {
            this.t = new WeakReference(view);
            this.x = new MaterialSideContainerBackHelper(view);
            if (materialShapeDrawable != null) {
                view.setBackground(materialShapeDrawable);
                float f = this.j;
                if (f == -1.0f) {
                    f = view.getElevation();
                }
                materialShapeDrawable.n(f);
            } else {
                ColorStateList colorStateList = this.g;
                if (colorStateList != null) {
                    ViewCompat.C(view, colorStateList);
                }
            }
            if (this.l == 5) {
                i5 = 4;
            } else {
                i5 = 0;
            }
            if (view.getVisibility() != i5) {
                view.setVisibility(i5);
            }
            B();
            if (view.getImportantForAccessibility() == 0) {
                view.setImportantForAccessibility(1);
            }
            if (ViewCompat.g(view) == null) {
                ViewCompat.B(view, view.getResources().getString(B));
            }
        }
        if (Gravity.getAbsoluteGravity(((CoordinatorLayout.LayoutParams) view.getLayoutParams()).f611c, i) == 3) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        SheetDelegate sheetDelegate = this.f11919c;
        if (sheetDelegate == null || sheetDelegate.j() != i2) {
            CoordinatorLayout.LayoutParams layoutParams = null;
            ShapeAppearanceModel shapeAppearanceModel = this.h;
            if (i2 == 0) {
                this.f11919c = new RightSheetDelegate(this);
                if (shapeAppearanceModel != null) {
                    WeakReference weakReference2 = this.t;
                    if (weakReference2 != null && (view3 = (View) weakReference2.get()) != null && (view3.getLayoutParams() instanceof CoordinatorLayout.LayoutParams)) {
                        layoutParams = (CoordinatorLayout.LayoutParams) view3.getLayoutParams();
                    }
                    if (layoutParams == null || ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin <= 0) {
                        ShapeAppearanceModel.Builder g = shapeAppearanceModel.g();
                        g.e(0.0f);
                        g.c(0.0f);
                        ShapeAppearanceModel a2 = g.a();
                        if (materialShapeDrawable != null) {
                            materialShapeDrawable.setShapeAppearanceModel(a2);
                        }
                    }
                }
            } else if (i2 == 1) {
                this.f11919c = new LeftSheetDelegate(this);
                if (shapeAppearanceModel != null) {
                    WeakReference weakReference3 = this.t;
                    if (weakReference3 != null && (view2 = (View) weakReference3.get()) != null && (view2.getLayoutParams() instanceof CoordinatorLayout.LayoutParams)) {
                        layoutParams = (CoordinatorLayout.LayoutParams) view2.getLayoutParams();
                    }
                    if (layoutParams == null || ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin <= 0) {
                        ShapeAppearanceModel.Builder g2 = shapeAppearanceModel.g();
                        g2.d(0.0f);
                        g2.b(0.0f);
                        ShapeAppearanceModel a3 = g2.a();
                        if (materialShapeDrawable != null) {
                            materialShapeDrawable.setShapeAppearanceModel(a3);
                        }
                    }
                }
            } else {
                throw new IllegalArgumentException(android.support.v4.media.a.f(i2, "Invalid sheet edge position value: ", ". Must be 0 or 1."));
            }
        }
        if (this.m == null) {
            this.m = new ViewDragHelper(coordinatorLayout.getContext(), coordinatorLayout, this.A);
        }
        int h = this.f11919c.h(view);
        coordinatorLayout.q(view, i);
        this.q = coordinatorLayout.getWidth();
        this.r = this.f11919c.i(coordinatorLayout);
        this.p = view.getWidth();
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        if (marginLayoutParams != null) {
            i3 = this.f11919c.a(marginLayoutParams);
        } else {
            i3 = 0;
        }
        this.s = i3;
        int i7 = this.l;
        if (i7 != 1 && i7 != 2) {
            if (i7 != 3) {
                if (i7 == 5) {
                    i6 = this.f11919c.e();
                } else {
                    throw new IllegalStateException("Unexpected value: " + this.l);
                }
            }
        } else {
            i6 = h - this.f11919c.h(view);
        }
        WeakHashMap weakHashMap = ViewCompat.f792a;
        view.offsetLeftAndRight(i6);
        if (this.u == null && (i4 = this.v) != -1 && (findViewById = coordinatorLayout.findViewById(i4)) != null) {
            this.u = new WeakReference(findViewById);
        }
        for (SheetCallback sheetCallback : this.z) {
        }
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean o(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(ViewGroup.getChildMeasureSpec(i, coordinatorLayout.getPaddingRight() + coordinatorLayout.getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i2, marginLayoutParams.width), ViewGroup.getChildMeasureSpec(i3, coordinatorLayout.getPaddingBottom() + coordinatorLayout.getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, marginLayoutParams.height));
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void t(View view, Parcelable parcelable) {
        int i = ((SavedState) parcelable).g;
        if (i == 1 || i == 2) {
            i = 5;
        }
        this.l = i;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final Parcelable u(View view) {
        AbsSavedState absSavedState = View.BaseSavedState.EMPTY_STATE;
        return new SavedState(this);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean x(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        VelocityTracker velocityTracker;
        if (!view.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (this.l == 1 && actionMasked == 0) {
            return true;
        }
        if (z()) {
            this.m.j(motionEvent);
        }
        if (actionMasked == 0 && (velocityTracker = this.w) != null) {
            velocityTracker.recycle();
            this.w = null;
        }
        if (this.w == null) {
            this.w = VelocityTracker.obtain();
        }
        this.w.addMovement(motionEvent);
        if (z() && actionMasked == 2 && !this.n && z()) {
            float abs = Math.abs(this.y - motionEvent.getX());
            ViewDragHelper viewDragHelper = this.m;
            if (abs > viewDragHelper.b) {
                viewDragHelper.b(view, motionEvent.getPointerId(motionEvent.getActionIndex()));
            }
        }
        return !this.n;
    }

    public final void y(int i) {
        View view;
        int i2;
        if (this.l != i) {
            this.l = i;
            WeakReference weakReference = this.t;
            if (weakReference == null || (view = (View) weakReference.get()) == null) {
                return;
            }
            if (this.l == 5) {
                i2 = 4;
            } else {
                i2 = 0;
            }
            if (view.getVisibility() != i2) {
                view.setVisibility(i2);
            }
            Iterator it = this.z.iterator();
            while (it.hasNext()) {
                ((SheetCallback) it.next()).b(i);
            }
            B();
        }
    }

    public final boolean z() {
        if (this.m != null) {
            if (this.k || this.l == 1) {
                return true;
            }
            return false;
        }
        return false;
    }

    /* loaded from: classes3.dex */
    public static class SavedState extends androidx.customview.view.AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Object();
        public final int g;

        /* renamed from: com.google.android.material.sidesheet.SideSheetBehavior$SavedState$1, reason: invalid class name */
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
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.g);
        }

        public SavedState(SideSheetBehavior sideSheetBehavior) {
            super(AbsSavedState.EMPTY_STATE);
            this.g = sideSheetBehavior.l;
        }
    }

    public SideSheetBehavior(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this.i = new StateSettlingTracker();
        this.k = true;
        this.l = 5;
        this.o = 0.1f;
        this.v = -1;
        this.z = new LinkedHashSet();
        this.A = new ViewDragHelper.Callback() { // from class: com.google.android.material.sidesheet.SideSheetBehavior.1
            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final int a(View view, int i) {
                SideSheetBehavior sideSheetBehavior = SideSheetBehavior.this;
                return MathUtils.b(i, sideSheetBehavior.f11919c.g(), sideSheetBehavior.f11919c.f());
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final int b(View view, int i) {
                return view.getTop();
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final int c(View view) {
                SideSheetBehavior sideSheetBehavior = SideSheetBehavior.this;
                return sideSheetBehavior.p + sideSheetBehavior.s;
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final void f(int i) {
                if (i == 1) {
                    SideSheetBehavior sideSheetBehavior = SideSheetBehavior.this;
                    if (sideSheetBehavior.k) {
                        sideSheetBehavior.y(1);
                    }
                }
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final void g(View view, int i, int i2) {
                View view2;
                ViewGroup.MarginLayoutParams marginLayoutParams;
                SideSheetBehavior sideSheetBehavior = SideSheetBehavior.this;
                WeakReference weakReference = sideSheetBehavior.u;
                if (weakReference != null) {
                    view2 = (View) weakReference.get();
                } else {
                    view2 = null;
                }
                if (view2 != null && (marginLayoutParams = (ViewGroup.MarginLayoutParams) view2.getLayoutParams()) != null) {
                    sideSheetBehavior.f11919c.p(marginLayoutParams, view.getLeft(), view.getRight());
                    view2.setLayoutParams(marginLayoutParams);
                }
                LinkedHashSet linkedHashSet = sideSheetBehavior.z;
                if (!linkedHashSet.isEmpty()) {
                    sideSheetBehavior.f11919c.b(i);
                    Iterator it = linkedHashSet.iterator();
                    while (it.hasNext()) {
                        ((SheetCallback) it.next()).getClass();
                    }
                }
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
                    this = this;
                    com.google.android.material.sidesheet.SideSheetBehavior r0 = com.google.android.material.sidesheet.SideSheetBehavior.this
                    com.google.android.material.sidesheet.SheetDelegate r1 = r0.f11919c
                    boolean r1 = r1.k(r4)
                    if (r1 == 0) goto Lb
                    goto L53
                Lb:
                    com.google.android.material.sidesheet.SheetDelegate r1 = r0.f11919c
                    boolean r1 = r1.n(r3, r4)
                    if (r1 == 0) goto L24
                    com.google.android.material.sidesheet.SheetDelegate r1 = r0.f11919c
                    boolean r4 = r1.m(r4, r5)
                    if (r4 != 0) goto L55
                    com.google.android.material.sidesheet.SheetDelegate r4 = r0.f11919c
                    boolean r4 = r4.l(r3)
                    if (r4 == 0) goto L53
                    goto L55
                L24:
                    r1 = 0
                    int r1 = (r4 > r1 ? 1 : (r4 == r1 ? 0 : -1))
                    if (r1 == 0) goto L36
                    float r4 = java.lang.Math.abs(r4)
                    float r5 = java.lang.Math.abs(r5)
                    int r4 = (r4 > r5 ? 1 : (r4 == r5 ? 0 : -1))
                    if (r4 <= 0) goto L36
                    goto L55
                L36:
                    int r4 = r3.getLeft()
                    com.google.android.material.sidesheet.SheetDelegate r5 = r0.f11919c
                    int r5 = r5.d()
                    int r5 = r4 - r5
                    int r5 = java.lang.Math.abs(r5)
                    com.google.android.material.sidesheet.SheetDelegate r1 = r0.f11919c
                    int r1 = r1.e()
                    int r4 = r4 - r1
                    int r4 = java.lang.Math.abs(r4)
                    if (r5 >= r4) goto L55
                L53:
                    r4 = 3
                    goto L56
                L55:
                    r4 = 5
                L56:
                    r5 = 1
                    r0.A(r4, r3, r5)
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.sidesheet.SideSheetBehavior.AnonymousClass1.h(android.view.View, float, float):void");
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final boolean i(View view, int i) {
                WeakReference weakReference;
                SideSheetBehavior sideSheetBehavior = SideSheetBehavior.this;
                if (sideSheetBehavior.l == 1 || (weakReference = sideSheetBehavior.t) == null || weakReference.get() != view) {
                    return false;
                }
                return true;
            }
        };
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SideSheetBehavior_Layout);
        if (obtainStyledAttributes.hasValue(R.styleable.SideSheetBehavior_Layout_backgroundTint)) {
            this.g = MaterialResources.a(context, obtainStyledAttributes, R.styleable.SideSheetBehavior_Layout_backgroundTint);
        }
        if (obtainStyledAttributes.hasValue(R.styleable.SideSheetBehavior_Layout_shapeAppearance)) {
            this.h = ShapeAppearanceModel.c(context, attributeSet, 0, C).a();
        }
        if (obtainStyledAttributes.hasValue(R.styleable.SideSheetBehavior_Layout_coplanarSiblingViewId)) {
            int resourceId = obtainStyledAttributes.getResourceId(R.styleable.SideSheetBehavior_Layout_coplanarSiblingViewId, -1);
            this.v = resourceId;
            WeakReference weakReference = this.u;
            if (weakReference != null) {
                weakReference.clear();
            }
            this.u = null;
            WeakReference weakReference2 = this.t;
            if (weakReference2 != null) {
                View view = (View) weakReference2.get();
                if (resourceId != -1 && view.isLaidOut()) {
                    view.requestLayout();
                }
            }
        }
        ShapeAppearanceModel shapeAppearanceModel = this.h;
        if (shapeAppearanceModel != null) {
            MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(shapeAppearanceModel);
            this.f = materialShapeDrawable;
            materialShapeDrawable.l(context);
            ColorStateList colorStateList = this.g;
            if (colorStateList != null) {
                this.f.o(colorStateList);
            } else {
                TypedValue typedValue = new TypedValue();
                context.getTheme().resolveAttribute(android.R.attr.colorBackground, typedValue, true);
                this.f.setTint(typedValue.data);
            }
        }
        this.j = obtainStyledAttributes.getDimension(R.styleable.SideSheetBehavior_Layout_android_elevation, -1.0f);
        this.k = obtainStyledAttributes.getBoolean(R.styleable.SideSheetBehavior_Layout_behavior_draggable, true);
        obtainStyledAttributes.recycle();
        ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
    }
}
