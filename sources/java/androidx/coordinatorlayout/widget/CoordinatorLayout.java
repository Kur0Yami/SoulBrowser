package androidx.coordinatorlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.support.v4.media.a;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.collection.SimpleArrayMap;
import androidx.coordinatorlayout.R;
import androidx.core.util.Pools;
import androidx.core.view.NestedScrollingParent2;
import androidx.core.view.NestedScrollingParent3;
import androidx.core.view.NestedScrollingParentHelper;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.customview.view.AbsSavedState;
import j$.util.DesugarCollections;
import j$.util.Objects;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class CoordinatorLayout extends ViewGroup implements NestedScrollingParent2, NestedScrollingParent3 {
    public static final Comparator A;
    public static final Pools.SynchronizedPool B;
    public static final String x;
    public static final Class[] y;
    public static final ThreadLocal z;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f607c;
    public final DirectedAcyclicGraph f;
    public final ArrayList g;
    public final ArrayList h;
    public final int[] i;
    public final int[] j;
    public boolean k;
    public boolean l;
    public final int[] m;
    public View n;
    public View o;
    public OnPreDrawListener p;
    public boolean q;
    public WindowInsetsCompat r;
    public boolean s;
    public Drawable t;
    public ViewGroup.OnHierarchyChangeListener u;
    public OnApplyWindowInsetsListener v;
    public final NestedScrollingParentHelper w;

    /* loaded from: classes.dex */
    public interface AttachedBehavior {
        Behavior getBehavior();
    }

    @Retention(RetentionPolicy.RUNTIME)
    @Deprecated
    /* loaded from: classes.dex */
    public @interface DefaultBehavior {
        Class value();
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes.dex */
    public @interface DispatchChangeEvent {
    }

    /* loaded from: classes.dex */
    public class HierarchyChangeListener implements ViewGroup.OnHierarchyChangeListener {
        public HierarchyChangeListener() {
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public final void onChildViewAdded(View view, View view2) {
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = CoordinatorLayout.this.u;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewAdded(view, view2);
            }
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public final void onChildViewRemoved(View view, View view2) {
            CoordinatorLayout coordinatorLayout = CoordinatorLayout.this;
            coordinatorLayout.p(2);
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = coordinatorLayout.u;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewRemoved(view, view2);
            }
        }
    }

    /* loaded from: classes.dex */
    public class OnPreDrawListener implements ViewTreeObserver.OnPreDrawListener {
        public OnPreDrawListener() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public final boolean onPreDraw() {
            CoordinatorLayout.this.p(0);
            return true;
        }
    }

    /* loaded from: classes.dex */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Object();
        public SparseArray g;

        /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$SavedState$1, reason: invalid class name */
        /* loaded from: classes.dex */
        public static class AnonymousClass1 implements Parcelable.ClassLoaderCreator<SavedState> {
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
            int readInt = parcel.readInt();
            int[] iArr = new int[readInt];
            parcel.readIntArray(iArr);
            Parcelable[] readParcelableArray = parcel.readParcelableArray(classLoader);
            this.g = new SparseArray(readInt);
            for (int i = 0; i < readInt; i++) {
                this.g.append(iArr[i], readParcelableArray[i]);
            }
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            int i2;
            super.writeToParcel(parcel, i);
            SparseArray sparseArray = this.g;
            if (sparseArray != null) {
                i2 = sparseArray.size();
            } else {
                i2 = 0;
            }
            parcel.writeInt(i2);
            int[] iArr = new int[i2];
            Parcelable[] parcelableArr = new Parcelable[i2];
            for (int i3 = 0; i3 < i2; i3++) {
                iArr[i3] = this.g.keyAt(i3);
                parcelableArr[i3] = (Parcelable) this.g.valueAt(i3);
            }
            parcel.writeIntArray(iArr);
            parcel.writeParcelableArray(parcelableArr, i);
        }
    }

    /* loaded from: classes.dex */
    public static class ViewElevationComparator implements Comparator<View> {
        @Override // java.util.Comparator
        public final int compare(View view, View view2) {
            float q = ViewCompat.q(view);
            float q2 = ViewCompat.q(view2);
            if (q > q2) {
                return -1;
            }
            if (q < q2) {
                return 1;
            }
            return 0;
        }
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [java.lang.Object, java.util.Comparator] */
    static {
        String str;
        Package r0 = CoordinatorLayout.class.getPackage();
        if (r0 != null) {
            str = r0.getName();
        } else {
            str = null;
        }
        x = str;
        A = new Object();
        y = new Class[]{Context.class, AttributeSet.class};
        z = new ThreadLocal();
        B = new Pools.SynchronizedPool(12);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Type inference failed for: r2v6, types: [androidx.core.view.NestedScrollingParentHelper, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public CoordinatorLayout(@androidx.annotation.NonNull android.content.Context r9, @androidx.annotation.Nullable android.util.AttributeSet r10) {
        /*
            r8 = this;
            int r5 = androidx.coordinatorlayout.R.attr.coordinatorLayoutStyle
            r8.<init>(r9, r10, r5)
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            r8.f607c = r2
            androidx.coordinatorlayout.widget.DirectedAcyclicGraph r2 = new androidx.coordinatorlayout.widget.DirectedAcyclicGraph
            r2.<init>()
            r8.f = r2
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            r8.g = r2
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            r8.h = r2
            r2 = 2
            int[] r4 = new int[r2]
            r8.i = r4
            int[] r2 = new int[r2]
            r8.j = r2
            androidx.core.view.NestedScrollingParentHelper r2 = new androidx.core.view.NestedScrollingParentHelper
            r2.<init>()
            r8.w = r2
            r7 = 0
            if (r5 != 0) goto L3e
            int[] r2 = androidx.coordinatorlayout.R.styleable.CoordinatorLayout
            int r4 = androidx.coordinatorlayout.R.style.Widget_Support_CoordinatorLayout
            android.content.res.TypedArray r2 = r9.obtainStyledAttributes(r10, r2, r7, r4)
        L3c:
            r4 = r2
            goto L45
        L3e:
            int[] r2 = androidx.coordinatorlayout.R.styleable.CoordinatorLayout
            android.content.res.TypedArray r2 = r9.obtainStyledAttributes(r10, r2, r5, r7)
            goto L3c
        L45:
            int r2 = android.os.Build.VERSION.SDK_INT
            r6 = 29
            if (r2 < r6) goto L62
            if (r5 != 0) goto L59
            int[] r2 = androidx.coordinatorlayout.R.styleable.CoordinatorLayout
            r5 = 0
            int r6 = androidx.coordinatorlayout.R.style.Widget_Support_CoordinatorLayout
            r0 = r8
            r1 = r9
            r3 = r10
            r0.saveAttributeDataForStyleable(r1, r2, r3, r4, r5, r6)
            goto L62
        L59:
            int[] r2 = androidx.coordinatorlayout.R.styleable.CoordinatorLayout
            r6 = 0
            r0 = r8
            r1 = r9
            r3 = r10
            r0.saveAttributeDataForStyleable(r1, r2, r3, r4, r5, r6)
        L62:
            int r1 = androidx.coordinatorlayout.R.styleable.CoordinatorLayout_keylines
            int r1 = r4.getResourceId(r1, r7)
            if (r1 == 0) goto L89
            android.content.res.Resources r2 = r9.getResources()
            int[] r1 = r2.getIntArray(r1)
            r8.m = r1
            android.util.DisplayMetrics r2 = r2.getDisplayMetrics()
            float r2 = r2.density
            int r1 = r1.length
        L7b:
            if (r7 >= r1) goto L89
            int[] r3 = r8.m
            r5 = r3[r7]
            float r5 = (float) r5
            float r5 = r5 * r2
            int r5 = (int) r5
            r3[r7] = r5
            int r7 = r7 + 1
            goto L7b
        L89:
            int r1 = androidx.coordinatorlayout.R.styleable.CoordinatorLayout_statusBarBackground
            android.graphics.drawable.Drawable r1 = r4.getDrawable(r1)
            r8.t = r1
            r4.recycle()
            r8.x()
            androidx.coordinatorlayout.widget.CoordinatorLayout$HierarchyChangeListener r1 = new androidx.coordinatorlayout.widget.CoordinatorLayout$HierarchyChangeListener
            r1.<init>()
            super.setOnHierarchyChangeListener(r1)
            java.util.WeakHashMap r1 = androidx.core.view.ViewCompat.f792a
            int r1 = r8.getImportantForAccessibility()
            if (r1 != 0) goto Lab
            r1 = 1
            r8.setImportantForAccessibility(r1)
        Lab:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.coordinatorlayout.widget.CoordinatorLayout.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    public static Rect a() {
        Rect rect = (Rect) B.b();
        if (rect == null) {
            return new Rect();
        }
        return rect;
    }

    public static void f(int i, Rect rect, Rect rect2, LayoutParams layoutParams, int i2, int i3) {
        int width;
        int height;
        int i4 = layoutParams.f611c;
        if (i4 == 0) {
            i4 = 17;
        }
        int absoluteGravity = Gravity.getAbsoluteGravity(i4, i);
        int i5 = layoutParams.d;
        if ((i5 & 7) == 0) {
            i5 |= 8388611;
        }
        if ((i5 & 112) == 0) {
            i5 |= 48;
        }
        int absoluteGravity2 = Gravity.getAbsoluteGravity(i5, i);
        int i6 = absoluteGravity & 7;
        int i7 = absoluteGravity & 112;
        int i8 = absoluteGravity2 & 7;
        int i9 = absoluteGravity2 & 112;
        if (i8 != 1) {
            if (i8 != 5) {
                width = rect.left;
            } else {
                width = rect.right;
            }
        } else {
            width = rect.left + (rect.width() / 2);
        }
        if (i9 != 16) {
            if (i9 != 80) {
                height = rect.top;
            } else {
                height = rect.bottom;
            }
        } else {
            height = rect.top + (rect.height() / 2);
        }
        if (i6 != 1) {
            if (i6 != 5) {
                width -= i2;
            }
        } else {
            width -= i2 / 2;
        }
        if (i7 != 16) {
            if (i7 != 80) {
                height -= i3;
            }
        } else {
            height -= i3 / 2;
        }
        rect2.set(width, height, i2 + width, i3 + height);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static LayoutParams h(View view) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (!layoutParams.b) {
            if (view instanceof AttachedBehavior) {
                Behavior behavior = ((AttachedBehavior) view).getBehavior();
                if (behavior == null) {
                    Log.e("CoordinatorLayout", "Attached behavior class is null");
                }
                layoutParams.b(behavior);
                layoutParams.b = true;
                return layoutParams;
            }
            DefaultBehavior defaultBehavior = null;
            for (Class<?> cls = view.getClass(); cls != null; cls = cls.getSuperclass()) {
                defaultBehavior = (DefaultBehavior) cls.getAnnotation(DefaultBehavior.class);
                if (defaultBehavior != null) {
                    break;
                }
            }
            if (defaultBehavior != null) {
                try {
                    layoutParams.b((Behavior) defaultBehavior.value().getDeclaredConstructor(null).newInstance(null));
                } catch (Exception e) {
                    Log.e("CoordinatorLayout", "Default behavior class " + defaultBehavior.value().getName() + " could not be instantiated. Did you forget a default constructor?", e);
                }
            }
            layoutParams.b = true;
        }
        return layoutParams;
    }

    public static void v(View view, int i) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int i2 = layoutParams.i;
        if (i2 != i) {
            WeakHashMap weakHashMap = ViewCompat.f792a;
            view.offsetLeftAndRight(i - i2);
            layoutParams.i = i;
        }
    }

    public static void w(View view, int i) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int i2 = layoutParams.j;
        if (i2 != i) {
            WeakHashMap weakHashMap = ViewCompat.f792a;
            view.offsetTopAndBottom(i - i2);
            layoutParams.j = i;
        }
    }

    public final void b(LayoutParams layoutParams, Rect rect, int i, int i2) {
        int width = getWidth();
        int height = getHeight();
        int max = Math.max(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, Math.min(rect.left, ((width - getPaddingRight()) - i) - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin));
        int max2 = Math.max(getPaddingTop() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, Math.min(rect.top, ((height - getPaddingBottom()) - i2) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin));
        rect.set(max, max2, i + max, i2 + max2);
    }

    public final void c(View view, Rect rect, boolean z2) {
        if (!view.isLayoutRequested() && view.getVisibility() != 8) {
            if (z2) {
                e(rect, view);
                return;
            } else {
                rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
                return;
            }
        }
        rect.setEmpty();
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if ((layoutParams instanceof LayoutParams) && super.checkLayoutParams(layoutParams)) {
            return true;
        }
        return false;
    }

    public final ArrayList d(View view) {
        SimpleArrayMap simpleArrayMap = this.f.b;
        int i = simpleArrayMap.g;
        ArrayList arrayList = null;
        for (int i2 = 0; i2 < i; i2++) {
            ArrayList arrayList2 = (ArrayList) simpleArrayMap.j(i2);
            if (arrayList2 != null && arrayList2.contains(view)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(simpleArrayMap.f(i2));
            }
        }
        ArrayList arrayList3 = this.h;
        arrayList3.clear();
        if (arrayList != null) {
            arrayList3.addAll(arrayList);
        }
        return arrayList3;
    }

    @Override // android.view.ViewGroup
    public final boolean drawChild(Canvas canvas, View view, long j) {
        Behavior behavior = ((LayoutParams) view.getLayoutParams()).f610a;
        if (behavior != null) {
            behavior.getClass();
        }
        return super.drawChild(canvas, view, j);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        boolean z2;
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.t;
        if (drawable != null && drawable.isStateful()) {
            z2 = drawable.setState(drawableState);
        } else {
            z2 = false;
        }
        if (z2) {
            invalidate();
        }
    }

    public final void e(Rect rect, View view) {
        ThreadLocal threadLocal = ViewGroupUtils.f615a;
        rect.set(0, 0, view.getWidth(), view.getHeight());
        ThreadLocal threadLocal2 = ViewGroupUtils.f615a;
        Matrix matrix = (Matrix) threadLocal2.get();
        if (matrix == null) {
            matrix = new Matrix();
            threadLocal2.set(matrix);
        } else {
            matrix.reset();
        }
        ViewGroupUtils.a(this, view, matrix);
        ThreadLocal threadLocal3 = ViewGroupUtils.b;
        RectF rectF = (RectF) threadLocal3.get();
        if (rectF == null) {
            rectF = new RectF();
            threadLocal3.set(rectF);
        }
        rectF.set(rect);
        matrix.mapRect(rectF);
        rect.set((int) (rectF.left + 0.5f), (int) (rectF.top + 0.5f), (int) (rectF.right + 0.5f), (int) (rectF.bottom + 0.5f));
    }

    public final int g(int i) {
        int[] iArr = this.m;
        if (iArr == null) {
            Log.e("CoordinatorLayout", "No keylines defined for " + this + " - attempted index lookup " + i);
            return 0;
        }
        if (i >= 0 && i < iArr.length) {
            return iArr[i];
        }
        Log.e("CoordinatorLayout", "Keyline index " + i + " out of range for " + this);
        return 0;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @VisibleForTesting
    public final List<View> getDependencySortedChildren() {
        t();
        return DesugarCollections.unmodifiableList(this.f607c);
    }

    @RestrictTo
    public final WindowInsetsCompat getLastWindowInsets() {
        return this.r;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        NestedScrollingParentHelper nestedScrollingParentHelper = this.w;
        return nestedScrollingParentHelper.b | nestedScrollingParentHelper.f783a;
    }

    @Nullable
    public Drawable getStatusBarBackground() {
        return this.t;
    }

    @Override // android.view.View
    public int getSuggestedMinimumHeight() {
        return Math.max(super.getSuggestedMinimumHeight(), getPaddingBottom() + getPaddingTop());
    }

    @Override // android.view.View
    public int getSuggestedMinimumWidth() {
        return Math.max(super.getSuggestedMinimumWidth(), getPaddingRight() + getPaddingLeft());
    }

    public final boolean i(View view, int i, int i2) {
        Pools.SynchronizedPool synchronizedPool = B;
        Rect a2 = a();
        e(a2, view);
        try {
            return a2.contains(i, i2);
        } finally {
            a2.setEmpty();
            synchronizedPool.a(a2);
        }
    }

    @Override // androidx.core.view.NestedScrollingParent3
    public final void j(View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        Behavior behavior;
        int childCount = getChildCount();
        int i6 = 0;
        int i7 = 0;
        boolean z2 = false;
        for (int i8 = 0; i8 < childCount; i8++) {
            View childAt = getChildAt(i8);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.a(i5) && (behavior = layoutParams.f610a) != null) {
                    int[] iArr2 = this.i;
                    iArr2[0] = 0;
                    iArr2[1] = 0;
                    behavior.r(this, childAt, i2, i3, i4, iArr2);
                    if (i3 > 0) {
                        i6 = Math.max(i6, iArr2[0]);
                    } else {
                        i6 = Math.min(i6, iArr2[0]);
                    }
                    if (i4 > 0) {
                        i7 = Math.max(i7, iArr2[1]);
                    } else {
                        i7 = Math.min(i7, iArr2[1]);
                    }
                    z2 = true;
                }
            }
        }
        iArr[0] = iArr[0] + i6;
        iArr[1] = iArr[1] + i7;
        if (z2) {
            p(1);
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final void k(View view, int i, int i2, int i3, int i4, int i5) {
        j(view, i, i2, i3, i4, 0, this.j);
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final boolean l(View view, View view2, int i, int i2) {
        int childCount = getChildCount();
        boolean z2 = false;
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                Behavior behavior = layoutParams.f610a;
                if (behavior != null) {
                    boolean v = behavior.v(this, childAt, view, view2, i, i2);
                    z2 |= v;
                    if (i2 != 0) {
                        if (i2 == 1) {
                            layoutParams.n = v;
                        }
                    } else {
                        layoutParams.m = v;
                    }
                } else if (i2 != 0) {
                    if (i2 == 1) {
                        layoutParams.n = false;
                    }
                } else {
                    layoutParams.m = false;
                }
            }
        }
        return z2;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final void m(View view, View view2, int i, int i2) {
        NestedScrollingParentHelper nestedScrollingParentHelper = this.w;
        if (i2 == 1) {
            nestedScrollingParentHelper.b = i;
        } else {
            nestedScrollingParentHelper.f783a = i;
        }
        this.o = view2;
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            ((LayoutParams) getChildAt(i3).getLayoutParams()).getClass();
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final void n(View view, int i) {
        NestedScrollingParentHelper nestedScrollingParentHelper = this.w;
        if (i == 1) {
            nestedScrollingParentHelper.b = 0;
        } else {
            nestedScrollingParentHelper.f783a = 0;
        }
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (layoutParams.a(i)) {
                Behavior behavior = layoutParams.f610a;
                if (behavior != null) {
                    behavior.w(this, childAt, view, i);
                }
                if (i != 0) {
                    if (i == 1) {
                        layoutParams.n = false;
                    }
                } else {
                    layoutParams.m = false;
                }
                layoutParams.o = false;
            }
        }
        this.o = null;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final void o(View view, int i, int i2, int[] iArr, int i3) {
        Behavior behavior;
        int min;
        int min2;
        int childCount = getChildCount();
        boolean z2 = false;
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.a(i3) && (behavior = layoutParams.f610a) != null) {
                    int[] iArr2 = this.i;
                    iArr2[0] = 0;
                    iArr2[1] = 0;
                    behavior.q(this, childAt, view, i, i2, iArr2, i3);
                    if (i > 0) {
                        min = Math.max(i4, iArr2[0]);
                    } else {
                        min = Math.min(i4, iArr2[0]);
                    }
                    i4 = min;
                    if (i2 > 0) {
                        min2 = Math.max(i5, iArr2[1]);
                    } else {
                        min2 = Math.min(i5, iArr2[1]);
                    }
                    i5 = min2;
                    z2 = true;
                }
            }
        }
        iArr[0] = i4;
        iArr[1] = i5;
        if (z2) {
            p(1);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        u(false);
        if (this.q) {
            if (this.p == null) {
                this.p = new OnPreDrawListener();
            }
            getViewTreeObserver().addOnPreDrawListener(this.p);
        }
        if (this.r == null) {
            WeakHashMap weakHashMap = ViewCompat.f792a;
            if (getFitsSystemWindows()) {
                ViewCompat.x(this);
            }
        }
        this.l = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        u(false);
        if (this.q && this.p != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.p);
        }
        View view = this.o;
        if (view != null) {
            n(view, 0);
        }
        this.l = false;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        int i;
        super.onDraw(canvas);
        if (this.s && this.t != null) {
            WindowInsetsCompat windowInsetsCompat = this.r;
            if (windowInsetsCompat != null) {
                i = windowInsetsCompat.i();
            } else {
                i = 0;
            }
            if (i > 0) {
                this.t.setBounds(0, 0, getWidth(), i);
                this.t.draw(canvas);
            }
        }
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            u(true);
        }
        boolean s = s(motionEvent, 0);
        if (actionMasked != 1 && actionMasked != 3) {
            return s;
        }
        u(true);
        return s;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z2, int i, int i2, int i3, int i4) {
        Behavior behavior;
        WeakHashMap weakHashMap = ViewCompat.f792a;
        int layoutDirection = getLayoutDirection();
        ArrayList arrayList = this.f607c;
        int size = arrayList.size();
        for (int i5 = 0; i5 < size; i5++) {
            View view = (View) arrayList.get(i5);
            if (view.getVisibility() != 8 && ((behavior = ((LayoutParams) view.getLayoutParams()).f610a) == null || !behavior.n(this, view, layoutDirection))) {
                q(view, layoutDirection);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:60:0x0167  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0189  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r27, int r28) {
        /*
            Method dump skipped, instructions count: 499
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.coordinatorlayout.widget.CoordinatorLayout.onMeasure(int, int):void");
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedFling(View view, float f, float f2, boolean z2) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.a(0)) {
                    Behavior behavior = layoutParams.f610a;
                }
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedPreFling(View view, float f, float f2) {
        Behavior behavior;
        int childCount = getChildCount();
        boolean z2 = false;
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.a(0) && (behavior = layoutParams.f610a) != null) {
                    z2 |= behavior.p(view);
                }
            }
        }
        return z2;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
        o(view, i, i2, iArr, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        k(view, i, i2, i3, i4, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScrollAccepted(View view, View view2, int i) {
        m(view, view2, i, 0);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        Parcelable parcelable2;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.f936c);
        SparseArray sparseArray = savedState.g;
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            int id = childAt.getId();
            Behavior behavior = h(childAt).f610a;
            if (id != -1 && behavior != null && (parcelable2 = (Parcelable) sparseArray.get(id)) != null) {
                behavior.t(childAt, parcelable2);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [android.os.Parcelable, androidx.customview.view.AbsSavedState, androidx.coordinatorlayout.widget.CoordinatorLayout$SavedState] */
    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        Parcelable u;
        ?? absSavedState = new AbsSavedState(super.onSaveInstanceState());
        SparseArray sparseArray = new SparseArray();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            int id = childAt.getId();
            Behavior behavior = ((LayoutParams) childAt.getLayoutParams()).f610a;
            if (id != -1 && behavior != null && (u = behavior.u(childAt)) != null) {
                sparseArray.append(id, u);
            }
        }
        absSavedState.g = sparseArray;
        return absSavedState;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onStartNestedScroll(View view, View view2, int i) {
        return l(view, view2, i, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onStopNestedScroll(View view) {
        n(view, 0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0012, code lost:
    
        if (r3 != false) goto L9;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002f  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r18) {
        /*
            r17 = this;
            r0 = r17
            r1 = r18
            int r2 = r1.getActionMasked()
            android.view.View r3 = r0.n
            r4 = 1
            r5 = 0
            if (r3 != 0) goto L17
            boolean r3 = r0.s(r1, r4)
            if (r3 == 0) goto L15
            goto L18
        L15:
            r6 = r5
            goto L2a
        L17:
            r3 = r5
        L18:
            android.view.View r6 = r0.n
            android.view.ViewGroup$LayoutParams r6 = r6.getLayoutParams()
            androidx.coordinatorlayout.widget.CoordinatorLayout$LayoutParams r6 = (androidx.coordinatorlayout.widget.CoordinatorLayout.LayoutParams) r6
            androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior r6 = r6.f610a
            if (r6 == 0) goto L15
            android.view.View r7 = r0.n
            boolean r6 = r6.x(r0, r7, r1)
        L2a:
            android.view.View r7 = r0.n
            r8 = 0
            if (r7 != 0) goto L35
            boolean r1 = super.onTouchEvent(r18)
            r6 = r6 | r1
            goto L48
        L35:
            if (r3 == 0) goto L48
            long r9 = android.os.SystemClock.uptimeMillis()
            r15 = 0
            r16 = 0
            r13 = 3
            r14 = 0
            r11 = r9
            android.view.MotionEvent r8 = android.view.MotionEvent.obtain(r9, r11, r13, r14, r15, r16)
            super.onTouchEvent(r8)
        L48:
            if (r8 == 0) goto L4d
            r8.recycle()
        L4d:
            if (r2 == r4) goto L54
            r1 = 3
            if (r2 != r1) goto L53
            goto L54
        L53:
            return r6
        L54:
            r0.u(r5)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.coordinatorlayout.widget.CoordinatorLayout.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public final void p(int i) {
        int i2;
        Rect rect;
        int i3;
        ArrayList arrayList;
        boolean z2;
        boolean z3;
        boolean z4;
        int width;
        int i4;
        int i5;
        int i6;
        int height;
        int i7;
        int i8;
        int i9;
        ArrayList arrayList2;
        LayoutParams layoutParams;
        int i10;
        int i11;
        Rect rect2;
        int i12;
        View view;
        boolean z5;
        Behavior behavior;
        WeakHashMap weakHashMap = ViewCompat.f792a;
        int layoutDirection = getLayoutDirection();
        ArrayList arrayList3 = this.f607c;
        int size = arrayList3.size();
        Rect a2 = a();
        Rect a3 = a();
        Rect a4 = a();
        int i13 = 0;
        while (true) {
            Pools.SynchronizedPool synchronizedPool = B;
            if (i13 < size) {
                View view2 = (View) arrayList3.get(i13);
                LayoutParams layoutParams2 = (LayoutParams) view2.getLayoutParams();
                if (i == 0 && view2.getVisibility() == 8) {
                    arrayList = arrayList3;
                    i3 = size;
                    rect = a4;
                    i2 = i13;
                } else {
                    int i14 = 0;
                    while (i14 < i13) {
                        if (layoutParams2.l == ((View) arrayList3.get(i14))) {
                            LayoutParams layoutParams3 = (LayoutParams) view2.getLayoutParams();
                            if (layoutParams3.k != null) {
                                Rect a5 = a();
                                Rect a6 = a();
                                LayoutParams layoutParams4 = layoutParams2;
                                Rect a7 = a();
                                e(a5, layoutParams3.k);
                                c(view2, a6, false);
                                int measuredWidth = view2.getMeasuredWidth();
                                View view3 = view2;
                                int measuredHeight = view3.getMeasuredHeight();
                                arrayList2 = arrayList3;
                                layoutParams = layoutParams4;
                                i10 = i14;
                                layoutDirection = layoutDirection;
                                i12 = i13;
                                view = view3;
                                f(layoutDirection, a5, a7, layoutParams3, measuredWidth, measuredHeight);
                                i11 = size;
                                rect2 = a4;
                                if (a7.left == a6.left && a7.top == a6.top) {
                                    z5 = false;
                                } else {
                                    z5 = true;
                                }
                                b(layoutParams3, a7, measuredWidth, measuredHeight);
                                int i15 = a7.left - a6.left;
                                int i16 = a7.top - a6.top;
                                if (i15 != 0) {
                                    WeakHashMap weakHashMap2 = ViewCompat.f792a;
                                    view.offsetLeftAndRight(i15);
                                }
                                if (i16 != 0) {
                                    WeakHashMap weakHashMap3 = ViewCompat.f792a;
                                    view.offsetTopAndBottom(i16);
                                }
                                if (z5 && (behavior = layoutParams3.f610a) != null) {
                                    behavior.j(this, view, layoutParams3.k);
                                }
                                a5.setEmpty();
                                synchronizedPool.a(a5);
                                a6.setEmpty();
                                synchronizedPool.a(a6);
                                a7.setEmpty();
                                synchronizedPool.a(a7);
                                i14 = i10 + 1;
                                layoutParams2 = layoutParams;
                                view2 = view;
                                arrayList3 = arrayList2;
                                size = i11;
                                i13 = i12;
                                a4 = rect2;
                            }
                        }
                        arrayList2 = arrayList3;
                        layoutParams = layoutParams2;
                        i10 = i14;
                        i11 = size;
                        rect2 = a4;
                        i12 = i13;
                        view = view2;
                        i14 = i10 + 1;
                        layoutParams2 = layoutParams;
                        view2 = view;
                        arrayList3 = arrayList2;
                        size = i11;
                        i13 = i12;
                        a4 = rect2;
                    }
                    ArrayList arrayList4 = arrayList3;
                    LayoutParams layoutParams5 = layoutParams2;
                    int i17 = size;
                    Rect rect3 = a4;
                    i2 = i13;
                    View view4 = view2;
                    c(view4, a3, true);
                    if (layoutParams5.g != 0 && !a3.isEmpty()) {
                        int absoluteGravity = Gravity.getAbsoluteGravity(layoutParams5.g, layoutDirection);
                        int i18 = absoluteGravity & 112;
                        if (i18 != 48) {
                            if (i18 == 80) {
                                a2.bottom = Math.max(a2.bottom, getHeight() - a3.top);
                            }
                        } else {
                            a2.top = Math.max(a2.top, a3.bottom);
                        }
                        int i19 = absoluteGravity & 7;
                        if (i19 != 3) {
                            if (i19 == 5) {
                                a2.right = Math.max(a2.right, getWidth() - a3.left);
                            }
                        } else {
                            a2.left = Math.max(a2.left, a3.right);
                        }
                    }
                    if (layoutParams5.h != 0 && view4.getVisibility() == 0) {
                        WeakHashMap weakHashMap4 = ViewCompat.f792a;
                        if (view4.isLaidOut() && view4.getWidth() > 0 && view4.getHeight() > 0) {
                            LayoutParams layoutParams6 = (LayoutParams) view4.getLayoutParams();
                            Behavior behavior2 = layoutParams6.f610a;
                            Rect a8 = a();
                            Rect a9 = a();
                            a9.set(view4.getLeft(), view4.getTop(), view4.getRight(), view4.getBottom());
                            if (behavior2 != null && behavior2.g(view4)) {
                                if (!a9.contains(a8)) {
                                    throw new IllegalArgumentException("Rect should be within the child's bounds. Rect:" + a8.toShortString() + " | Bounds:" + a9.toShortString());
                                }
                            } else {
                                a8.set(a9);
                            }
                            a9.setEmpty();
                            synchronizedPool.a(a9);
                            if (a8.isEmpty()) {
                                a8.setEmpty();
                                synchronizedPool.a(a8);
                            } else {
                                int absoluteGravity2 = Gravity.getAbsoluteGravity(layoutParams6.h, layoutDirection);
                                if ((absoluteGravity2 & 48) == 48 && (i8 = (a8.top - ((ViewGroup.MarginLayoutParams) layoutParams6).topMargin) - layoutParams6.j) < (i9 = a2.top)) {
                                    w(view4, i9 - i8);
                                    z3 = true;
                                } else {
                                    z3 = false;
                                }
                                if ((absoluteGravity2 & 80) == 80 && (height = ((getHeight() - a8.bottom) - ((ViewGroup.MarginLayoutParams) layoutParams6).bottomMargin) + layoutParams6.j) < (i7 = a2.bottom)) {
                                    w(view4, height - i7);
                                    z3 = true;
                                }
                                if (!z3) {
                                    w(view4, 0);
                                }
                                if ((absoluteGravity2 & 3) == 3 && (i5 = (a8.left - ((ViewGroup.MarginLayoutParams) layoutParams6).leftMargin) - layoutParams6.i) < (i6 = a2.left)) {
                                    v(view4, i6 - i5);
                                    z4 = true;
                                } else {
                                    z4 = false;
                                }
                                if ((absoluteGravity2 & 5) == 5 && (width = ((getWidth() - a8.right) - ((ViewGroup.MarginLayoutParams) layoutParams6).rightMargin) + layoutParams6.i) < (i4 = a2.right)) {
                                    v(view4, width - i4);
                                    z4 = true;
                                }
                                if (!z4) {
                                    v(view4, 0);
                                }
                                a8.setEmpty();
                                synchronizedPool.a(a8);
                            }
                        }
                    }
                    if (i != 2) {
                        rect = rect3;
                        rect.set(((LayoutParams) view4.getLayoutParams()).p);
                        if (rect.equals(a3)) {
                            arrayList = arrayList4;
                            i3 = i17;
                        } else {
                            ((LayoutParams) view4.getLayoutParams()).p.set(a3);
                        }
                    } else {
                        rect = rect3;
                    }
                    int i20 = i2 + 1;
                    i3 = i17;
                    while (true) {
                        arrayList = arrayList4;
                        if (i20 >= i3) {
                            break;
                        }
                        View view5 = (View) arrayList.get(i20);
                        LayoutParams layoutParams7 = (LayoutParams) view5.getLayoutParams();
                        Behavior behavior3 = layoutParams7.f610a;
                        if (behavior3 != null && behavior3.h(view5, view4)) {
                            if (i == 0 && layoutParams7.o) {
                                layoutParams7.o = false;
                            } else {
                                if (i != 2) {
                                    z2 = behavior3.j(this, view5, view4);
                                } else {
                                    behavior3.k(this, view4);
                                    z2 = true;
                                }
                                if (i == 1) {
                                    layoutParams7.o = z2;
                                }
                            }
                        }
                        i20++;
                        arrayList4 = arrayList;
                    }
                }
                i13 = i2 + 1;
                a4 = rect;
                size = i3;
                arrayList3 = arrayList;
            } else {
                Rect rect4 = a4;
                a2.setEmpty();
                synchronizedPool.a(a2);
                a3.setEmpty();
                synchronizedPool.a(a3);
                rect4.setEmpty();
                synchronizedPool.a(rect4);
                return;
            }
        }
    }

    public final void q(View view, int i) {
        Rect a2;
        Rect a3;
        int i2;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        View view2 = layoutParams.k;
        if (view2 == null && layoutParams.f != -1) {
            throw new IllegalStateException("An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete.");
        }
        Pools.SynchronizedPool synchronizedPool = B;
        if (view2 != null) {
            a2 = a();
            a3 = a();
            try {
                e(a2, view2);
                LayoutParams layoutParams2 = (LayoutParams) view.getLayoutParams();
                int measuredWidth = view.getMeasuredWidth();
                int measuredHeight = view.getMeasuredHeight();
                f(i, a2, a3, layoutParams2, measuredWidth, measuredHeight);
                b(layoutParams2, a3, measuredWidth, measuredHeight);
                view.layout(a3.left, a3.top, a3.right, a3.bottom);
                return;
            } finally {
                a2.setEmpty();
                synchronizedPool.a(a2);
                a3.setEmpty();
                synchronizedPool.a(a3);
            }
        }
        int i3 = layoutParams.e;
        if (i3 >= 0) {
            LayoutParams layoutParams3 = (LayoutParams) view.getLayoutParams();
            int i4 = layoutParams3.f611c;
            if (i4 == 0) {
                i4 = 8388661;
            }
            int absoluteGravity = Gravity.getAbsoluteGravity(i4, i);
            int i5 = absoluteGravity & 7;
            int i6 = absoluteGravity & 112;
            int width = getWidth();
            int height = getHeight();
            int measuredWidth2 = view.getMeasuredWidth();
            int measuredHeight2 = view.getMeasuredHeight();
            if (i == 1) {
                i3 = width - i3;
            }
            int g = g(i3) - measuredWidth2;
            if (i5 != 1) {
                if (i5 == 5) {
                    g += measuredWidth2;
                }
            } else {
                g += measuredWidth2 / 2;
            }
            if (i6 != 16) {
                if (i6 != 80) {
                    i2 = 0;
                } else {
                    i2 = measuredHeight2;
                }
            } else {
                i2 = measuredHeight2 / 2;
            }
            int max = Math.max(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) layoutParams3).leftMargin, Math.min(g, ((width - getPaddingRight()) - measuredWidth2) - ((ViewGroup.MarginLayoutParams) layoutParams3).rightMargin));
            int max2 = Math.max(getPaddingTop() + ((ViewGroup.MarginLayoutParams) layoutParams3).topMargin, Math.min(i2, ((height - getPaddingBottom()) - measuredHeight2) - ((ViewGroup.MarginLayoutParams) layoutParams3).bottomMargin));
            view.layout(max, max2, measuredWidth2 + max, measuredHeight2 + max2);
            return;
        }
        LayoutParams layoutParams4 = (LayoutParams) view.getLayoutParams();
        a2 = a();
        a2.set(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) layoutParams4).leftMargin, getPaddingTop() + ((ViewGroup.MarginLayoutParams) layoutParams4).topMargin, (getWidth() - getPaddingRight()) - ((ViewGroup.MarginLayoutParams) layoutParams4).rightMargin, (getHeight() - getPaddingBottom()) - ((ViewGroup.MarginLayoutParams) layoutParams4).bottomMargin);
        if (this.r != null) {
            WeakHashMap weakHashMap = ViewCompat.f792a;
            if (getFitsSystemWindows() && !view.getFitsSystemWindows()) {
                a2.left = this.r.g() + a2.left;
                a2.top = this.r.i() + a2.top;
                a2.right -= this.r.h();
                a2.bottom -= this.r.f();
            }
        }
        a3 = a();
        int i7 = layoutParams4.f611c;
        if ((i7 & 7) == 0) {
            i7 |= 8388611;
        }
        if ((i7 & 112) == 0) {
            i7 |= 48;
        }
        Gravity.apply(i7, view.getMeasuredWidth(), view.getMeasuredHeight(), a2, a3, i);
        view.layout(a3.left, a3.top, a3.right, a3.bottom);
    }

    public final void r(int i, int i2, int i3, View view) {
        measureChildWithMargins(view, i, i2, i3, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z2) {
        Behavior behavior = ((LayoutParams) view.getLayoutParams()).f610a;
        if (behavior != null && behavior.s(this, view, rect, z2)) {
            return true;
        }
        return super.requestChildRectangleOnScreen(view, rect, z2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestDisallowInterceptTouchEvent(boolean z2) {
        super.requestDisallowInterceptTouchEvent(z2);
        if (z2 && !this.k) {
            u(false);
            this.k = true;
        }
    }

    public final boolean s(MotionEvent motionEvent, int i) {
        int i2;
        int actionMasked = motionEvent.getActionMasked();
        ArrayList arrayList = this.g;
        arrayList.clear();
        boolean isChildrenDrawingOrderEnabled = isChildrenDrawingOrderEnabled();
        int childCount = getChildCount();
        for (int i3 = childCount - 1; i3 >= 0; i3--) {
            if (isChildrenDrawingOrderEnabled) {
                i2 = getChildDrawingOrder(childCount, i3);
            } else {
                i2 = i3;
            }
            arrayList.add(getChildAt(i2));
        }
        Comparator comparator = A;
        if (comparator != null) {
            Collections.sort(arrayList, comparator);
        }
        int size = arrayList.size();
        MotionEvent motionEvent2 = null;
        boolean z2 = false;
        for (int i4 = 0; i4 < size; i4++) {
            View view = (View) arrayList.get(i4);
            Behavior behavior = ((LayoutParams) view.getLayoutParams()).f610a;
            if (z2 && actionMasked != 0) {
                if (behavior != null) {
                    if (motionEvent2 == null) {
                        long uptimeMillis = SystemClock.uptimeMillis();
                        motionEvent2 = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                    }
                    if (i != 0) {
                        if (i == 1) {
                            behavior.x(this, view, motionEvent2);
                        }
                    } else {
                        behavior.m(this, view, motionEvent2);
                    }
                }
            } else if (!z2 && behavior != null) {
                if (i != 0) {
                    if (i == 1) {
                        z2 = behavior.x(this, view, motionEvent);
                    }
                } else {
                    z2 = behavior.m(this, view, motionEvent);
                }
                if (z2) {
                    this.n = view;
                }
            }
        }
        arrayList.clear();
        return z2;
    }

    @Override // android.view.View
    public void setFitsSystemWindows(boolean z2) {
        super.setFitsSystemWindows(z2);
        x();
    }

    @Override // android.view.ViewGroup
    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.u = onHierarchyChangeListener;
    }

    public void setStatusBarBackground(@Nullable Drawable drawable) {
        boolean z2;
        Drawable drawable2 = this.t;
        if (drawable2 != drawable) {
            Drawable drawable3 = null;
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            if (drawable != null) {
                drawable3 = drawable.mutate();
            }
            this.t = drawable3;
            if (drawable3 != null) {
                if (drawable3.isStateful()) {
                    this.t.setState(getDrawableState());
                }
                Drawable drawable4 = this.t;
                WeakHashMap weakHashMap = ViewCompat.f792a;
                drawable4.setLayoutDirection(getLayoutDirection());
                Drawable drawable5 = this.t;
                if (getVisibility() == 0) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                drawable5.setVisible(z2, false);
                this.t.setCallback(this);
            }
            WeakHashMap weakHashMap2 = ViewCompat.f792a;
            postInvalidateOnAnimation();
        }
    }

    public void setStatusBarBackgroundColor(@ColorInt int i) {
        setStatusBarBackground(new ColorDrawable(i));
    }

    public void setStatusBarBackgroundResource(@DrawableRes int i) {
        Drawable drawable;
        if (i != 0) {
            drawable = getContext().getDrawable(i);
        } else {
            drawable = null;
        }
        setStatusBarBackground(drawable);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        boolean z2;
        super.setVisibility(i);
        if (i == 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        Drawable drawable = this.t;
        if (drawable != null && drawable.isVisible() != z2) {
            this.t.setVisible(z2, false);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x00f7, code lost:
    
        if ((android.view.Gravity.getAbsoluteGravity(r8.h, r12) & r13) == r13) goto L72;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void t() {
        /*
            Method dump skipped, instructions count: 398
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.coordinatorlayout.widget.CoordinatorLayout.t():void");
    }

    public final void u(boolean z2) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            Behavior behavior = ((LayoutParams) childAt.getLayoutParams()).f610a;
            if (behavior != null) {
                long uptimeMillis = SystemClock.uptimeMillis();
                MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                if (z2) {
                    behavior.m(this, childAt, obtain);
                } else {
                    behavior.x(this, childAt, obtain);
                }
                obtain.recycle();
            }
        }
        for (int i2 = 0; i2 < childCount; i2++) {
            ((LayoutParams) getChildAt(i2).getLayoutParams()).getClass();
        }
        this.n = null;
        this.k = false;
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        if (!super.verifyDrawable(drawable) && drawable != this.t) {
            return false;
        }
        return true;
    }

    public final void x() {
        WeakHashMap weakHashMap = ViewCompat.f792a;
        if (getFitsSystemWindows()) {
            if (this.v == null) {
                this.v = new OnApplyWindowInsetsListener() { // from class: androidx.coordinatorlayout.widget.CoordinatorLayout.1
                    @Override // androidx.core.view.OnApplyWindowInsetsListener
                    public final WindowInsetsCompat a(View view, WindowInsetsCompat windowInsetsCompat) {
                        boolean z2;
                        CoordinatorLayout coordinatorLayout = CoordinatorLayout.this;
                        if (!Objects.equals(coordinatorLayout.r, windowInsetsCompat)) {
                            coordinatorLayout.r = windowInsetsCompat;
                            boolean z3 = true;
                            if (windowInsetsCompat.i() > 0) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            coordinatorLayout.s = z2;
                            if (z2 || coordinatorLayout.getBackground() != null) {
                                z3 = false;
                            }
                            coordinatorLayout.setWillNotDraw(z3);
                            if (!windowInsetsCompat.l()) {
                                int childCount = coordinatorLayout.getChildCount();
                                for (int i = 0; i < childCount; i++) {
                                    View childAt = coordinatorLayout.getChildAt(i);
                                    WeakHashMap weakHashMap2 = ViewCompat.f792a;
                                    if (childAt.getFitsSystemWindows() && ((LayoutParams) childAt.getLayoutParams()).f610a != null && windowInsetsCompat.l()) {
                                        break;
                                    }
                                }
                            }
                            coordinatorLayout.requestLayout();
                        }
                        return windowInsetsCompat;
                    }
                };
            }
            ViewCompat.G(this, this.v);
            setSystemUiVisibility(1280);
            return;
        }
        ViewCompat.G(this, null);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LayoutParams) {
            return new LayoutParams((LayoutParams) layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new LayoutParams(layoutParams);
    }

    /* loaded from: classes.dex */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        /* renamed from: a, reason: collision with root package name */
        public Behavior f610a;
        public boolean b;

        /* renamed from: c, reason: collision with root package name */
        public int f611c;
        public int d;
        public final int e;
        public int f;
        public final int g;
        public int h;
        public int i;
        public int j;
        public View k;
        public View l;
        public boolean m;
        public boolean n;
        public boolean o;
        public final Rect p;

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.b = false;
            this.f611c = 0;
            this.d = 0;
            this.e = -1;
            this.f = -1;
            this.g = 0;
            this.h = 0;
            this.p = new Rect();
        }

        public final boolean a(int i) {
            if (i != 0) {
                if (i != 1) {
                    return false;
                }
                return this.n;
            }
            return this.m;
        }

        public final void b(Behavior behavior) {
            Behavior behavior2 = this.f610a;
            if (behavior2 != behavior) {
                if (behavior2 != null) {
                    behavior2.l();
                }
                this.f610a = behavior;
                this.b = true;
                if (behavior != null) {
                    behavior.i(this);
                }
            }
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            Behavior behavior;
            this.b = false;
            this.f611c = 0;
            this.d = 0;
            this.e = -1;
            this.f = -1;
            this.g = 0;
            this.h = 0;
            this.p = new Rect();
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CoordinatorLayout_Layout);
            this.f611c = obtainStyledAttributes.getInteger(R.styleable.CoordinatorLayout_Layout_android_layout_gravity, 0);
            this.f = obtainStyledAttributes.getResourceId(R.styleable.CoordinatorLayout_Layout_layout_anchor, -1);
            this.d = obtainStyledAttributes.getInteger(R.styleable.CoordinatorLayout_Layout_layout_anchorGravity, 0);
            this.e = obtainStyledAttributes.getInteger(R.styleable.CoordinatorLayout_Layout_layout_keyline, -1);
            this.g = obtainStyledAttributes.getInt(R.styleable.CoordinatorLayout_Layout_layout_insetEdge, 0);
            this.h = obtainStyledAttributes.getInt(R.styleable.CoordinatorLayout_Layout_layout_dodgeInsetEdges, 0);
            boolean hasValue = obtainStyledAttributes.hasValue(R.styleable.CoordinatorLayout_Layout_layout_behavior);
            this.b = hasValue;
            if (hasValue) {
                String string = obtainStyledAttributes.getString(R.styleable.CoordinatorLayout_Layout_layout_behavior);
                String str = CoordinatorLayout.x;
                if (TextUtils.isEmpty(string)) {
                    behavior = null;
                } else {
                    if (string.startsWith(".")) {
                        string = context.getPackageName() + string;
                    } else if (string.indexOf(46) < 0) {
                        String str2 = CoordinatorLayout.x;
                        if (!TextUtils.isEmpty(str2)) {
                            string = str2 + '.' + string;
                        }
                    }
                    try {
                        ThreadLocal threadLocal = CoordinatorLayout.z;
                        Map map = (Map) threadLocal.get();
                        if (map == null) {
                            map = new HashMap();
                            threadLocal.set(map);
                        }
                        Constructor<?> constructor = (Constructor) map.get(string);
                        if (constructor == null) {
                            constructor = Class.forName(string, false, context.getClassLoader()).getConstructor(CoordinatorLayout.y);
                            constructor.setAccessible(true);
                            map.put(string, constructor);
                        }
                        behavior = (Behavior) constructor.newInstance(context, attributeSet);
                    } catch (Exception e) {
                        throw new RuntimeException(a.C("Could not inflate Behavior subclass ", string), e);
                    }
                }
                this.f610a = behavior;
            }
            obtainStyledAttributes.recycle();
            Behavior behavior2 = this.f610a;
            if (behavior2 != null) {
                behavior2.i(this);
            }
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            this.b = false;
            this.f611c = 0;
            this.d = 0;
            this.e = -1;
            this.f = -1;
            this.g = 0;
            this.h = 0;
            this.p = new Rect();
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.b = false;
            this.f611c = 0;
            this.d = 0;
            this.e = -1;
            this.f = -1;
            this.g = 0;
            this.h = 0;
            this.p = new Rect();
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.b = false;
            this.f611c = 0;
            this.d = 0;
            this.e = -1;
            this.f = -1;
            this.g = 0;
            this.h = 0;
            this.p = new Rect();
        }
    }

    /* loaded from: classes.dex */
    public static abstract class Behavior<V extends View> {
        public boolean g(View view) {
            return false;
        }

        public boolean h(View view, View view2) {
            return false;
        }

        public void i(LayoutParams layoutParams) {
        }

        public boolean j(CoordinatorLayout coordinatorLayout, View view, View view2) {
            return false;
        }

        public void l() {
        }

        public boolean m(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
            return false;
        }

        public boolean n(CoordinatorLayout coordinatorLayout, View view, int i) {
            return false;
        }

        public boolean o(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3) {
            return false;
        }

        public boolean p(View view) {
            return false;
        }

        public void q(CoordinatorLayout coordinatorLayout, View view, View view2, int i, int i2, int[] iArr, int i3) {
        }

        public void r(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3, int[] iArr) {
            iArr[0] = iArr[0] + i2;
            iArr[1] = iArr[1] + i3;
        }

        public boolean s(CoordinatorLayout coordinatorLayout, View view, Rect rect, boolean z) {
            return false;
        }

        public Parcelable u(View view) {
            return View.BaseSavedState.EMPTY_STATE;
        }

        public boolean v(CoordinatorLayout coordinatorLayout, View view, View view2, View view3, int i, int i2) {
            return false;
        }

        public void w(CoordinatorLayout coordinatorLayout, View view, View view2, int i) {
        }

        public boolean x(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
            return false;
        }

        public void k(CoordinatorLayout coordinatorLayout, View view) {
        }

        public void t(View view, Parcelable parcelable) {
        }
    }
}
