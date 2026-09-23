package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.core.widgets.Optimizer;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import com.google.android.gms.common.ConnectionResult;
import java.util.ArrayList;
import java.util.HashMap;
import kotlin.jvm.internal.IntCompanionObject;

/* loaded from: classes.dex */
public class ConstraintLayout extends ViewGroup {
    public static SharedValues v;

    /* renamed from: c, reason: collision with root package name */
    public final SparseArray f577c;
    public final ArrayList f;
    public final ConstraintWidgetContainer g;
    public int h;
    public int i;
    public int j;
    public int k;
    public boolean l;
    public int m;
    public ConstraintSet n;
    public ConstraintLayoutStates o;
    public int p;
    public HashMap q;
    public final SparseArray r;
    public final Measurer s;
    public int t;
    public int u;

    /* renamed from: androidx.constraintlayout.widget.ConstraintLayout$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f578a;

        static {
            int[] iArr = new int[ConstraintWidget.DimensionBehaviour.values().length];
            f578a = iArr;
            try {
                iArr[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f578a[1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f578a[3] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f578a[2] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* loaded from: classes.dex */
    public class Measurer implements BasicMeasure.Measurer {

        /* renamed from: a, reason: collision with root package name */
        public final ConstraintLayout f582a;
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public int f583c;
        public int d;
        public int e;
        public int f;
        public int g;

        public Measurer(ConstraintLayout constraintLayout) {
            this.f582a = constraintLayout;
        }

        public static boolean c(int i, int i2, int i3) {
            if (i != i2) {
                int mode = View.MeasureSpec.getMode(i);
                View.MeasureSpec.getSize(i);
                int mode2 = View.MeasureSpec.getMode(i2);
                int size = View.MeasureSpec.getSize(i2);
                if (mode2 == 1073741824) {
                    if ((mode == Integer.MIN_VALUE || mode == 0) && i3 == size) {
                        return true;
                    }
                    return false;
                }
                return false;
            }
            return true;
        }

        @Override // androidx.constraintlayout.core.widgets.analyzer.BasicMeasure.Measurer
        public final void a() {
            ConstraintLayout constraintLayout = this.f582a;
            int childCount = constraintLayout.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = constraintLayout.getChildAt(i);
                if (childAt instanceof Placeholder) {
                    Placeholder placeholder = (Placeholder) childAt;
                    if (placeholder.f != null) {
                        LayoutParams layoutParams = (LayoutParams) placeholder.getLayoutParams();
                        LayoutParams layoutParams2 = (LayoutParams) placeholder.f.getLayoutParams();
                        ConstraintWidget constraintWidget = layoutParams2.p0;
                        constraintWidget.h0 = 0;
                        ConstraintWidget constraintWidget2 = layoutParams.p0;
                        ConstraintWidget.DimensionBehaviour dimensionBehaviour = constraintWidget2.T[0];
                        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.f535c;
                        if (dimensionBehaviour != dimensionBehaviour2) {
                            constraintWidget2.K(constraintWidget.o());
                        }
                        ConstraintWidget constraintWidget3 = layoutParams.p0;
                        if (constraintWidget3.T[1] != dimensionBehaviour2) {
                            constraintWidget3.H(layoutParams2.p0.l());
                        }
                        layoutParams2.p0.h0 = 8;
                    }
                }
            }
            int size = constraintLayout.f.size();
            if (size > 0) {
                for (int i2 = 0; i2 < size; i2++) {
                    ((ConstraintHelper) constraintLayout.f.get(i2)).getClass();
                }
            }
        }

        @Override // androidx.constraintlayout.core.widgets.analyzer.BasicMeasure.Measurer
        public final void b(ConstraintWidget constraintWidget, BasicMeasure.Measure measure) {
            int makeMeasureSpec;
            int makeMeasureSpec2;
            boolean z;
            boolean z2;
            boolean z3;
            boolean z4;
            boolean z5;
            boolean z6;
            int i;
            int i2;
            int i3;
            boolean z7;
            int measuredWidth;
            int baseline;
            int i4;
            boolean z8;
            boolean z9;
            boolean z10;
            boolean z11;
            boolean z12;
            int i5;
            boolean z13;
            boolean z14;
            int i6;
            if (constraintWidget != null) {
                ConstraintAnchor constraintAnchor = constraintWidget.K;
                ConstraintAnchor constraintAnchor2 = constraintWidget.I;
                if (constraintWidget.h0 == 8 && !constraintWidget.E) {
                    measure.e = 0;
                    measure.f = 0;
                    measure.g = 0;
                    return;
                }
                if (constraintWidget.U != null) {
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour = measure.f542a;
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = measure.b;
                    int i7 = measure.f543c;
                    int i8 = measure.d;
                    int i9 = this.b + this.f583c;
                    int i10 = this.d;
                    View view = constraintWidget.g0;
                    int ordinal = dimensionBehaviour.ordinal();
                    if (ordinal != 0) {
                        if (ordinal != 1) {
                            if (ordinal != 2) {
                                if (ordinal != 3) {
                                    makeMeasureSpec = 0;
                                } else {
                                    int i11 = this.f;
                                    if (constraintAnchor2 != null) {
                                        i6 = constraintAnchor2.g;
                                    } else {
                                        i6 = 0;
                                    }
                                    if (constraintAnchor != null) {
                                        i6 += constraintAnchor.g;
                                    }
                                    makeMeasureSpec = ViewGroup.getChildMeasureSpec(i11, i10 + i6, -1);
                                }
                            } else {
                                makeMeasureSpec = ViewGroup.getChildMeasureSpec(this.f, i10, -2);
                                if (constraintWidget.q == 1) {
                                    z13 = true;
                                } else {
                                    z13 = false;
                                }
                                int i12 = measure.j;
                                if (i12 == 1 || i12 == 2) {
                                    if (view.getMeasuredHeight() == constraintWidget.l()) {
                                        z14 = true;
                                    } else {
                                        z14 = false;
                                    }
                                    if (measure.j == 2 || !z13 || ((z13 && z14) || (view instanceof Placeholder) || constraintWidget.y())) {
                                        makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(constraintWidget.o(), 1073741824);
                                    }
                                }
                            }
                        } else {
                            makeMeasureSpec = ViewGroup.getChildMeasureSpec(this.f, i10, -2);
                        }
                    } else {
                        makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i7, 1073741824);
                    }
                    int ordinal2 = dimensionBehaviour2.ordinal();
                    if (ordinal2 != 0) {
                        if (ordinal2 != 1) {
                            if (ordinal2 != 2) {
                                if (ordinal2 != 3) {
                                    makeMeasureSpec2 = 0;
                                } else {
                                    int i13 = this.g;
                                    if (constraintAnchor2 != null) {
                                        i5 = constraintWidget.J.g;
                                    } else {
                                        i5 = 0;
                                    }
                                    if (constraintAnchor != null) {
                                        i5 += constraintWidget.L.g;
                                    }
                                    makeMeasureSpec2 = ViewGroup.getChildMeasureSpec(i13, i9 + i5, -1);
                                }
                            } else {
                                makeMeasureSpec2 = ViewGroup.getChildMeasureSpec(this.g, i9, -2);
                                if (constraintWidget.r == 1) {
                                    z11 = true;
                                } else {
                                    z11 = false;
                                }
                                int i14 = measure.j;
                                if (i14 == 1 || i14 == 2) {
                                    if (view.getMeasuredWidth() == constraintWidget.o()) {
                                        z12 = true;
                                    } else {
                                        z12 = false;
                                    }
                                    if (measure.j == 2 || !z11 || ((z11 && z12) || (view instanceof Placeholder) || constraintWidget.z())) {
                                        makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(constraintWidget.l(), 1073741824);
                                    }
                                }
                            }
                        } else {
                            makeMeasureSpec2 = ViewGroup.getChildMeasureSpec(this.g, i9, -2);
                        }
                    } else {
                        makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i8, 1073741824);
                    }
                    ConstraintWidgetContainer constraintWidgetContainer = (ConstraintWidgetContainer) constraintWidget.U;
                    ConstraintLayout constraintLayout = ConstraintLayout.this;
                    if (constraintWidgetContainer != null && Optimizer.b(constraintLayout.m, 256) && view.getMeasuredWidth() == constraintWidget.o() && view.getMeasuredWidth() < constraintWidgetContainer.o() && view.getMeasuredHeight() == constraintWidget.l() && view.getMeasuredHeight() < constraintWidgetContainer.l() && view.getBaseline() == constraintWidget.b0 && !constraintWidget.x() && c(constraintWidget.G, makeMeasureSpec, constraintWidget.o()) && c(constraintWidget.H, makeMeasureSpec2, constraintWidget.l())) {
                        measure.e = constraintWidget.o();
                        measure.f = constraintWidget.l();
                        measure.g = constraintWidget.b0;
                        return;
                    }
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.g;
                    if (dimensionBehaviour == dimensionBehaviour3) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (dimensionBehaviour2 == dimensionBehaviour3) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = ConstraintWidget.DimensionBehaviour.f535c;
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour5 = ConstraintWidget.DimensionBehaviour.h;
                    if (dimensionBehaviour2 != dimensionBehaviour5 && dimensionBehaviour2 != dimensionBehaviour4) {
                        z3 = false;
                    } else {
                        z3 = true;
                    }
                    if (dimensionBehaviour != dimensionBehaviour5 && dimensionBehaviour != dimensionBehaviour4) {
                        z4 = false;
                    } else {
                        z4 = true;
                    }
                    if (z && constraintWidget.X > 0.0f) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    if (z2 && constraintWidget.X > 0.0f) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    if (view == null) {
                        return;
                    }
                    LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
                    int i15 = measure.j;
                    if (i15 != 1 && i15 != 2 && z && constraintWidget.q == 0 && z2 && constraintWidget.r == 0) {
                        z7 = false;
                        measuredWidth = 0;
                        baseline = 0;
                        i4 = -1;
                        i2 = 0;
                    } else {
                        if ((view instanceof VirtualLayout) && (constraintWidget instanceof androidx.constraintlayout.core.widgets.VirtualLayout)) {
                            ((VirtualLayout) view).n((androidx.constraintlayout.core.widgets.VirtualLayout) constraintWidget, makeMeasureSpec, makeMeasureSpec2);
                        } else {
                            view.measure(makeMeasureSpec, makeMeasureSpec2);
                        }
                        constraintWidget.G = makeMeasureSpec;
                        constraintWidget.H = makeMeasureSpec2;
                        constraintWidget.g = false;
                        int measuredWidth2 = view.getMeasuredWidth();
                        int measuredHeight = view.getMeasuredHeight();
                        int baseline2 = view.getBaseline();
                        int i16 = constraintWidget.t;
                        if (i16 > 0) {
                            i = Math.max(i16, measuredWidth2);
                        } else {
                            i = measuredWidth2;
                        }
                        int i17 = constraintWidget.u;
                        if (i17 > 0) {
                            i = Math.min(i17, i);
                        }
                        int i18 = constraintWidget.w;
                        if (i18 > 0) {
                            i2 = Math.max(i18, measuredHeight);
                        } else {
                            i2 = measuredHeight;
                        }
                        int i19 = makeMeasureSpec2;
                        int i20 = constraintWidget.x;
                        if (i20 > 0) {
                            i2 = Math.min(i20, i2);
                        }
                        if (!Optimizer.b(constraintLayout.m, 1)) {
                            if (z5 && z3) {
                                i = (int) ((i2 * constraintWidget.X) + 0.5f);
                            } else if (z6 && z4) {
                                i2 = (int) ((i / constraintWidget.X) + 0.5f);
                            }
                        }
                        if (measuredWidth2 == i && measuredHeight == i2) {
                            baseline = baseline2;
                            measuredWidth = i;
                            z7 = false;
                        } else {
                            if (measuredWidth2 != i) {
                                makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i, 1073741824);
                            }
                            if (measuredHeight != i2) {
                                i3 = View.MeasureSpec.makeMeasureSpec(i2, 1073741824);
                            } else {
                                i3 = i19;
                            }
                            view.measure(makeMeasureSpec, i3);
                            constraintWidget.G = makeMeasureSpec;
                            constraintWidget.H = i3;
                            z7 = false;
                            constraintWidget.g = false;
                            measuredWidth = view.getMeasuredWidth();
                            int measuredHeight2 = view.getMeasuredHeight();
                            baseline = view.getBaseline();
                            i2 = measuredHeight2;
                        }
                        i4 = -1;
                    }
                    if (baseline != i4) {
                        z8 = true;
                    } else {
                        z8 = z7;
                    }
                    if (measuredWidth == measure.f543c && i2 == measure.d) {
                        z9 = z7;
                    } else {
                        z9 = true;
                    }
                    measure.i = z9;
                    if (layoutParams.b0) {
                        z10 = true;
                    } else {
                        z10 = z8;
                    }
                    if (z10 && baseline != -1 && constraintWidget.b0 != baseline) {
                        measure.i = true;
                    }
                    measure.e = measuredWidth;
                    measure.f = i2;
                    measure.h = z10;
                    measure.g = baseline;
                }
            }
        }
    }

    public ConstraintLayout(Context context) {
        super(context);
        this.f577c = new SparseArray();
        this.f = new ArrayList(4);
        this.g = new ConstraintWidgetContainer();
        this.h = 0;
        this.i = 0;
        this.j = Integer.MAX_VALUE;
        this.k = Integer.MAX_VALUE;
        this.l = true;
        this.m = 257;
        this.n = null;
        this.o = null;
        this.p = -1;
        this.q = new HashMap();
        this.r = new SparseArray();
        this.s = new Measurer(this);
        this.t = 0;
        this.u = 0;
        d(null, 0);
    }

    private int getPaddingWidth() {
        int max = Math.max(0, getPaddingRight()) + Math.max(0, getPaddingLeft());
        int max2 = Math.max(0, getPaddingEnd()) + Math.max(0, getPaddingStart());
        if (max2 > 0) {
            return max2;
        }
        return max;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [androidx.constraintlayout.widget.SharedValues, java.lang.Object] */
    public static SharedValues getSharedValues() {
        if (v == null) {
            ?? obj = new Object();
            new SparseIntArray();
            obj.f606a = new HashMap();
            v = obj;
        }
        return v;
    }

    public final View b(int i) {
        return (View) this.f577c.get(i);
    }

    public final ConstraintWidget c(View view) {
        if (view == this) {
            return this.g;
        }
        if (view != null) {
            if (view.getLayoutParams() instanceof LayoutParams) {
                return ((LayoutParams) view.getLayoutParams()).p0;
            }
            view.setLayoutParams(new LayoutParams(view.getLayoutParams()));
            if (view.getLayoutParams() instanceof LayoutParams) {
                return ((LayoutParams) view.getLayoutParams()).p0;
            }
            return null;
        }
        return null;
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    public final void d(AttributeSet attributeSet, int i) {
        ConstraintWidgetContainer constraintWidgetContainer = this.g;
        constraintWidgetContainer.g0 = this;
        Measurer measurer = this.s;
        constraintWidgetContainer.u0 = measurer;
        constraintWidgetContainer.s0.f = measurer;
        this.f577c.put(getId(), this);
        this.n = null;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.ConstraintLayout_Layout, i, 0);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = obtainStyledAttributes.getIndex(i2);
                if (index == R.styleable.ConstraintLayout_Layout_android_minWidth) {
                    this.h = obtainStyledAttributes.getDimensionPixelOffset(index, this.h);
                } else if (index == R.styleable.ConstraintLayout_Layout_android_minHeight) {
                    this.i = obtainStyledAttributes.getDimensionPixelOffset(index, this.i);
                } else if (index == R.styleable.ConstraintLayout_Layout_android_maxWidth) {
                    this.j = obtainStyledAttributes.getDimensionPixelOffset(index, this.j);
                } else if (index == R.styleable.ConstraintLayout_Layout_android_maxHeight) {
                    this.k = obtainStyledAttributes.getDimensionPixelOffset(index, this.k);
                } else if (index == R.styleable.ConstraintLayout_Layout_layout_optimizationLevel) {
                    this.m = obtainStyledAttributes.getInt(index, this.m);
                } else if (index == R.styleable.ConstraintLayout_Layout_layoutDescription) {
                    int resourceId = obtainStyledAttributes.getResourceId(index, 0);
                    if (resourceId != 0) {
                        try {
                            f(resourceId);
                        } catch (Resources.NotFoundException unused) {
                            this.o = null;
                        }
                    }
                } else if (index == R.styleable.ConstraintLayout_Layout_constraintSet) {
                    int resourceId2 = obtainStyledAttributes.getResourceId(index, 0);
                    try {
                        ConstraintSet constraintSet = new ConstraintSet();
                        this.n = constraintSet;
                        constraintSet.e(getContext(), resourceId2);
                    } catch (Resources.NotFoundException unused2) {
                        this.n = null;
                    }
                    this.p = resourceId2;
                }
            }
            obtainStyledAttributes.recycle();
        }
        constraintWidgetContainer.D0 = this.m;
        LinearSystem.p = constraintWidgetContainer.R(512);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        Object tag;
        int size;
        ArrayList arrayList = this.f;
        if (arrayList != null && (size = arrayList.size()) > 0) {
            for (int i = 0; i < size; i++) {
                ((ConstraintHelper) arrayList.get(i)).l(this);
            }
        }
        super.dispatchDraw(canvas);
        if (isInEditMode()) {
            float width = getWidth();
            float height = getHeight();
            int childCount = getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                if (childAt.getVisibility() != 8 && (tag = childAt.getTag()) != null && (tag instanceof String)) {
                    String[] split2 = ((String) tag).split(",");
                    if (split2.length == 4) {
                        int parseInt = Integer.parseInt(split2[0]);
                        int parseInt2 = Integer.parseInt(split2[1]);
                        int parseInt3 = Integer.parseInt(split2[2]);
                        int i3 = (int) ((parseInt / 1080.0f) * width);
                        int i4 = (int) ((parseInt2 / 1920.0f) * height);
                        Paint paint = new Paint();
                        paint.setColor(-65536);
                        float f = i3;
                        float f2 = i4;
                        float f3 = i3 + ((int) ((parseInt3 / 1080.0f) * width));
                        canvas.drawLine(f, f2, f3, f2, paint);
                        float parseInt4 = i4 + ((int) ((Integer.parseInt(split2[3]) / 1920.0f) * height));
                        canvas.drawLine(f3, f2, f3, parseInt4, paint);
                        canvas.drawLine(f3, parseInt4, f, parseInt4, paint);
                        canvas.drawLine(f, parseInt4, f, f2, paint);
                        paint.setColor(-16711936);
                        canvas.drawLine(f, f2, f3, parseInt4, paint);
                        canvas.drawLine(f, parseInt4, f3, f2, paint);
                    }
                }
            }
        }
    }

    public final boolean e() {
        if ((getContext().getApplicationInfo().flags & 4194304) != 0 && 1 == getLayoutDirection()) {
            return true;
        }
        return false;
    }

    public void f(int i) {
        this.o = new ConstraintLayoutStates(getContext(), this, i);
    }

    @Override // android.view.View
    public final void forceLayout() {
        this.l = true;
        super.forceLayout();
    }

    public final void g(int i, int i2, int i3, int i4, boolean z, boolean z2) {
        Measurer measurer = this.s;
        int i5 = measurer.e;
        int resolveSizeAndState = View.resolveSizeAndState(i3 + measurer.d, i, 0);
        int resolveSizeAndState2 = View.resolveSizeAndState(i4 + i5, i2, 0) & 16777215;
        int min = Math.min(this.j, resolveSizeAndState & 16777215);
        int min2 = Math.min(this.k, resolveSizeAndState2);
        if (z) {
            min |= 16777216;
        }
        if (z2) {
            min2 |= 16777216;
        }
        setMeasuredDimension(min, min2);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    public int getMaxHeight() {
        return this.k;
    }

    public int getMaxWidth() {
        return this.j;
    }

    public int getMinHeight() {
        return this.i;
    }

    public int getMinWidth() {
        return this.h;
    }

    public int getOptimizationLevel() {
        return this.g.D0;
    }

    public final void h(ConstraintWidget constraintWidget, LayoutParams layoutParams, SparseArray sparseArray, int i, ConstraintAnchor.Type type) {
        View view = (View) this.f577c.get(i);
        ConstraintWidget constraintWidget2 = (ConstraintWidget) sparseArray.get(i);
        if (constraintWidget2 != null && view != null && (view.getLayoutParams() instanceof LayoutParams)) {
            layoutParams.b0 = true;
            ConstraintAnchor.Type type2 = ConstraintAnchor.Type.i;
            if (type == type2) {
                LayoutParams layoutParams2 = (LayoutParams) view.getLayoutParams();
                layoutParams2.b0 = true;
                layoutParams2.p0.D = true;
            }
            constraintWidget.j(type2).b(constraintWidget2.j(type), layoutParams.C, layoutParams.B, true);
            constraintWidget.D = true;
            constraintWidget.j(ConstraintAnchor.Type.f).j();
            constraintWidget.j(ConstraintAnchor.Type.h).j();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        View content;
        int childCount = getChildCount();
        boolean isInEditMode = isInEditMode();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            ConstraintWidget constraintWidget = layoutParams.p0;
            if ((childAt.getVisibility() != 8 || layoutParams.c0 || layoutParams.d0 || isInEditMode) && !layoutParams.e0) {
                int p = constraintWidget.p();
                int q = constraintWidget.q();
                int o = constraintWidget.o() + p;
                int l = constraintWidget.l() + q;
                childAt.layout(p, q, o, l);
                if ((childAt instanceof Placeholder) && (content = ((Placeholder) childAt).getContent()) != null) {
                    content.setVisibility(0);
                    content.layout(p, q, o, l);
                }
            }
        }
        ArrayList arrayList = this.f;
        int size = arrayList.size();
        if (size > 0) {
            for (int i6 = 0; i6 < size; i6++) {
                ((ConstraintHelper) arrayList.get(i6)).k();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:205:0x04e8  */
    /* JADX WARN: Removed duplicated region for block: B:241:0x05c3  */
    /* JADX WARN: Removed duplicated region for block: B:249:0x05fa  */
    /* JADX WARN: Removed duplicated region for block: B:258:0x0622  */
    /* JADX WARN: Removed duplicated region for block: B:287:0x0513  */
    /* JADX WARN: Removed duplicated region for block: B:301:0x037f  */
    /* JADX WARN: Removed duplicated region for block: B:307:0x03bc  */
    /* JADX WARN: Removed duplicated region for block: B:313:0x0403  */
    /* JADX WARN: Removed duplicated region for block: B:319:0x043a  */
    /* JADX WARN: Removed duplicated region for block: B:322:0x0480  */
    /* JADX WARN: Removed duplicated region for block: B:325:0x0488  */
    /* JADX WARN: Removed duplicated region for block: B:326:0x0450  */
    /* JADX WARN: Removed duplicated region for block: B:332:0x041b  */
    /* JADX WARN: Removed duplicated region for block: B:338:0x03dd  */
    /* JADX WARN: Removed duplicated region for block: B:344:0x039d  */
    /* JADX WARN: Removed duplicated region for block: B:372:0x0717  */
    /* JADX WARN: Removed duplicated region for block: B:378:0x0768  */
    /* JADX WARN: Removed duplicated region for block: B:384:0x07a9  */
    /* JADX WARN: Removed duplicated region for block: B:387:0x07b4  */
    /* JADX WARN: Removed duplicated region for block: B:390:0x07db  */
    /* JADX WARN: Removed duplicated region for block: B:394:0x07e7  */
    /* JADX WARN: Removed duplicated region for block: B:414:0x0851 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:418:0x085c  */
    /* JADX WARN: Removed duplicated region for block: B:441:0x0961  */
    /* JADX WARN: Removed duplicated region for block: B:448:0x0968  */
    /* JADX WARN: Removed duplicated region for block: B:501:0x0a05  */
    /* JADX WARN: Removed duplicated region for block: B:503:0x0a07  */
    /* JADX WARN: Removed duplicated region for block: B:511:0x0a20  */
    /* JADX WARN: Removed duplicated region for block: B:513:0x0a25  */
    /* JADX WARN: Removed duplicated region for block: B:608:0x0a16  */
    /* JADX WARN: Removed duplicated region for block: B:625:0x0957  */
    /* JADX WARN: Removed duplicated region for block: B:648:0x07b7  */
    /* JADX WARN: Removed duplicated region for block: B:649:0x07ac  */
    /* JADX WARN: Removed duplicated region for block: B:657:0x074d  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r42, int r43) {
        /*
            Method dump skipped, instructions count: 3091
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintLayout.onMeasure(int, int):void");
    }

    @Override // android.view.ViewGroup
    public void onViewAdded(View view) {
        super.onViewAdded(view);
        ConstraintWidget c2 = c(view);
        if ((view instanceof Guideline) && !(c2 instanceof androidx.constraintlayout.core.widgets.Guideline)) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            androidx.constraintlayout.core.widgets.Guideline guideline = new androidx.constraintlayout.core.widgets.Guideline();
            layoutParams.p0 = guideline;
            layoutParams.c0 = true;
            guideline.O(layoutParams.U);
        }
        if (view instanceof ConstraintHelper) {
            ConstraintHelper constraintHelper = (ConstraintHelper) view;
            constraintHelper.m();
            ((LayoutParams) view.getLayoutParams()).d0 = true;
            ArrayList arrayList = this.f;
            if (!arrayList.contains(constraintHelper)) {
                arrayList.add(constraintHelper);
            }
        }
        this.f577c.put(view.getId(), view);
        this.l = true;
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        this.f577c.remove(view.getId());
        ConstraintWidget c2 = c(view);
        this.g.q0.remove(c2);
        c2.A();
        this.f.remove(view);
        this.l = true;
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        this.l = true;
        super.requestLayout();
    }

    public void setConstraintSet(ConstraintSet constraintSet) {
        this.n = constraintSet;
    }

    @Override // android.view.View
    public void setId(int i) {
        int id = getId();
        SparseArray sparseArray = this.f577c;
        sparseArray.remove(id);
        super.setId(i);
        sparseArray.put(getId(), this);
    }

    public void setMaxHeight(int i) {
        if (i == this.k) {
            return;
        }
        this.k = i;
        requestLayout();
    }

    public void setMaxWidth(int i) {
        if (i == this.j) {
            return;
        }
        this.j = i;
        requestLayout();
    }

    public void setMinHeight(int i) {
        if (i == this.i) {
            return;
        }
        this.i = i;
        requestLayout();
    }

    public void setMinWidth(int i) {
        if (i == this.h) {
            return;
        }
        this.h = i;
        requestLayout();
    }

    public void setOnConstraintsChanged(ConstraintsChangedListener constraintsChangedListener) {
    }

    public void setOptimizationLevel(int i) {
        this.m = i;
        ConstraintWidgetContainer constraintWidgetContainer = this.g;
        constraintWidgetContainer.D0 = i;
        LinearSystem.p = constraintWidgetContainer.R(512);
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    public ConstraintLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f577c = new SparseArray();
        this.f = new ArrayList(4);
        this.g = new ConstraintWidgetContainer();
        this.h = 0;
        this.i = 0;
        this.j = Integer.MAX_VALUE;
        this.k = Integer.MAX_VALUE;
        this.l = true;
        this.m = 257;
        this.n = null;
        this.o = null;
        this.p = -1;
        this.q = new HashMap();
        this.r = new SparseArray();
        this.s = new Measurer(this);
        this.t = 0;
        this.u = 0;
        d(attributeSet, 0);
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f577c = new SparseArray();
        this.f = new ArrayList(4);
        this.g = new ConstraintWidgetContainer();
        this.h = 0;
        this.i = 0;
        this.j = Integer.MAX_VALUE;
        this.k = Integer.MAX_VALUE;
        this.l = true;
        this.m = 257;
        this.n = null;
        this.o = null;
        this.p = -1;
        this.q = new HashMap();
        this.r = new SparseArray();
        this.s = new Measurer(this);
        this.t = 0;
        this.u = 0;
        d(attributeSet, i);
    }

    /* loaded from: classes.dex */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        public int A;
        public final int B;
        public final int C;
        public float D;
        public float E;
        public String F;
        public float G;
        public float H;
        public int I;
        public int J;
        public int K;
        public int L;
        public int M;
        public int N;
        public int O;
        public int P;
        public float Q;
        public float R;
        public int S;
        public int T;
        public int U;
        public boolean V;
        public boolean W;
        public String X;
        public int Y;
        public boolean Z;

        /* renamed from: a, reason: collision with root package name */
        public int f579a;
        public boolean a0;
        public int b;
        public boolean b0;

        /* renamed from: c, reason: collision with root package name */
        public float f580c;
        public boolean c0;
        public int d;
        public boolean d0;
        public int e;
        public boolean e0;
        public int f;
        public int f0;
        public int g;
        public int g0;
        public int h;
        public int h0;
        public int i;
        public int i0;
        public int j;
        public int j0;
        public int k;
        public int k0;
        public int l;
        public float l0;
        public int m;
        public int m0;
        public int n;
        public int n0;
        public int o;
        public float o0;
        public int p;
        public ConstraintWidget p0;
        public float q;
        public int r;
        public int s;
        public int t;
        public int u;
        public final int v;
        public int w;
        public final int x;
        public int y;
        public int z;

        /* loaded from: classes.dex */
        public static class Table {

            /* renamed from: a, reason: collision with root package name */
            public static final SparseIntArray f581a;

            static {
                SparseIntArray sparseIntArray = new SparseIntArray();
                f581a = sparseIntArray;
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintWidth, 64);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintHeight, 65);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintLeft_toLeftOf, 8);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintLeft_toRightOf, 9);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintRight_toLeftOf, 10);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintRight_toRightOf, 11);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintTop_toTopOf, 12);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintTop_toBottomOf, 13);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintBottom_toTopOf, 14);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintBottom_toBottomOf, 15);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintBaseline_toBaselineOf, 16);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintBaseline_toTopOf, 52);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintBaseline_toBottomOf, 53);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintCircle, 2);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintCircleRadius, 3);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintCircleAngle, 4);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_editor_absoluteX, 49);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_editor_absoluteY, 50);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintGuide_begin, 5);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintGuide_end, 6);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintGuide_percent, 7);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_android_orientation, 1);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintStart_toEndOf, 17);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintStart_toStartOf, 18);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintEnd_toStartOf, 19);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintEnd_toEndOf, 20);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_goneMarginLeft, 21);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_goneMarginTop, 22);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_goneMarginRight, 23);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_goneMarginBottom, 24);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_goneMarginStart, 25);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_goneMarginEnd, 26);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_goneMarginBaseline, 55);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_marginBaseline, 54);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintHorizontal_bias, 29);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintVertical_bias, 30);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintDimensionRatio, 44);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintHorizontal_weight, 45);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintVertical_weight, 46);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintHorizontal_chainStyle, 47);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintVertical_chainStyle, 48);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constrainedWidth, 27);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constrainedHeight, 28);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintWidth_default, 31);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintHeight_default, 32);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintWidth_min, 33);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintWidth_max, 34);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintWidth_percent, 35);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintHeight_min, 36);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintHeight_max, 37);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintHeight_percent, 38);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintLeft_creator, 39);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintTop_creator, 40);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintRight_creator, 41);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintBottom_creator, 42);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintBaseline_creator, 43);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintTag, 51);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_wrapBehaviorInParent, 66);
            }
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f579a = -1;
            this.b = -1;
            this.f580c = -1.0f;
            this.d = -1;
            this.e = -1;
            this.f = -1;
            this.g = -1;
            this.h = -1;
            this.i = -1;
            this.j = -1;
            this.k = -1;
            this.l = -1;
            this.m = -1;
            this.n = -1;
            this.o = -1;
            this.p = 0;
            this.q = 0.0f;
            this.r = -1;
            this.s = -1;
            this.t = -1;
            this.u = -1;
            this.v = IntCompanionObject.MIN_VALUE;
            this.w = IntCompanionObject.MIN_VALUE;
            this.x = IntCompanionObject.MIN_VALUE;
            this.y = IntCompanionObject.MIN_VALUE;
            this.z = IntCompanionObject.MIN_VALUE;
            this.A = IntCompanionObject.MIN_VALUE;
            this.B = IntCompanionObject.MIN_VALUE;
            this.C = 0;
            this.D = 0.5f;
            this.E = 0.5f;
            this.F = null;
            this.G = -1.0f;
            this.H = -1.0f;
            this.I = 0;
            this.J = 0;
            this.K = 0;
            this.L = 0;
            this.M = 0;
            this.N = 0;
            this.O = 0;
            this.P = 0;
            this.Q = 1.0f;
            this.R = 1.0f;
            this.S = -1;
            this.T = -1;
            this.U = -1;
            this.V = false;
            this.W = false;
            this.X = null;
            this.Y = 0;
            this.Z = true;
            this.a0 = true;
            this.b0 = false;
            this.c0 = false;
            this.d0 = false;
            this.e0 = false;
            this.f0 = -1;
            this.g0 = -1;
            this.h0 = -1;
            this.i0 = -1;
            this.j0 = IntCompanionObject.MIN_VALUE;
            this.k0 = IntCompanionObject.MIN_VALUE;
            this.l0 = 0.5f;
            this.p0 = new ConstraintWidget();
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                int i2 = Table.f581a.get(index);
                switch (i2) {
                    case 1:
                        this.U = obtainStyledAttributes.getInt(index, this.U);
                        break;
                    case 2:
                        int resourceId = obtainStyledAttributes.getResourceId(index, this.o);
                        this.o = resourceId;
                        if (resourceId == -1) {
                            this.o = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        this.p = obtainStyledAttributes.getDimensionPixelSize(index, this.p);
                        break;
                    case 4:
                        float f = obtainStyledAttributes.getFloat(index, this.q) % 360.0f;
                        this.q = f;
                        if (f < 0.0f) {
                            this.q = (360.0f - f) % 360.0f;
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        this.f579a = obtainStyledAttributes.getDimensionPixelOffset(index, this.f579a);
                        break;
                    case 6:
                        this.b = obtainStyledAttributes.getDimensionPixelOffset(index, this.b);
                        break;
                    case 7:
                        this.f580c = obtainStyledAttributes.getFloat(index, this.f580c);
                        break;
                    case 8:
                        int resourceId2 = obtainStyledAttributes.getResourceId(index, this.d);
                        this.d = resourceId2;
                        if (resourceId2 == -1) {
                            this.d = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 9:
                        int resourceId3 = obtainStyledAttributes.getResourceId(index, this.e);
                        this.e = resourceId3;
                        if (resourceId3 == -1) {
                            this.e = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        int resourceId4 = obtainStyledAttributes.getResourceId(index, this.f);
                        this.f = resourceId4;
                        if (resourceId4 == -1) {
                            this.f = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        int resourceId5 = obtainStyledAttributes.getResourceId(index, this.g);
                        this.g = resourceId5;
                        if (resourceId5 == -1) {
                            this.g = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        int resourceId6 = obtainStyledAttributes.getResourceId(index, this.h);
                        this.h = resourceId6;
                        if (resourceId6 == -1) {
                            this.h = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        int resourceId7 = obtainStyledAttributes.getResourceId(index, this.i);
                        this.i = resourceId7;
                        if (resourceId7 == -1) {
                            this.i = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        int resourceId8 = obtainStyledAttributes.getResourceId(index, this.j);
                        this.j = resourceId8;
                        if (resourceId8 == -1) {
                            this.j = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        int resourceId9 = obtainStyledAttributes.getResourceId(index, this.k);
                        this.k = resourceId9;
                        if (resourceId9 == -1) {
                            this.k = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        int resourceId10 = obtainStyledAttributes.getResourceId(index, this.l);
                        this.l = resourceId10;
                        if (resourceId10 == -1) {
                            this.l = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        int resourceId11 = obtainStyledAttributes.getResourceId(index, this.r);
                        this.r = resourceId11;
                        if (resourceId11 == -1) {
                            this.r = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        int resourceId12 = obtainStyledAttributes.getResourceId(index, this.s);
                        this.s = resourceId12;
                        if (resourceId12 == -1) {
                            this.s = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 19:
                        int resourceId13 = obtainStyledAttributes.getResourceId(index, this.t);
                        this.t = resourceId13;
                        if (resourceId13 == -1) {
                            this.t = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 20:
                        int resourceId14 = obtainStyledAttributes.getResourceId(index, this.u);
                        this.u = resourceId14;
                        if (resourceId14 == -1) {
                            this.u = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 21:
                        this.v = obtainStyledAttributes.getDimensionPixelSize(index, this.v);
                        break;
                    case 22:
                        this.w = obtainStyledAttributes.getDimensionPixelSize(index, this.w);
                        break;
                    case ConnectionResult.API_DISABLED /* 23 */:
                        this.x = obtainStyledAttributes.getDimensionPixelSize(index, this.x);
                        break;
                    case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                        this.y = obtainStyledAttributes.getDimensionPixelSize(index, this.y);
                        break;
                    case 25:
                        this.z = obtainStyledAttributes.getDimensionPixelSize(index, this.z);
                        break;
                    case 26:
                        this.A = obtainStyledAttributes.getDimensionPixelSize(index, this.A);
                        break;
                    case 27:
                        this.V = obtainStyledAttributes.getBoolean(index, this.V);
                        break;
                    case 28:
                        this.W = obtainStyledAttributes.getBoolean(index, this.W);
                        break;
                    case 29:
                        this.D = obtainStyledAttributes.getFloat(index, this.D);
                        break;
                    case 30:
                        this.E = obtainStyledAttributes.getFloat(index, this.E);
                        break;
                    case 31:
                        int i3 = obtainStyledAttributes.getInt(index, 0);
                        this.K = i3;
                        if (i3 == 1) {
                            Log.e("ConstraintLayout", "layout_constraintWidth_default=\"wrap\" is deprecated.\nUse layout_width=\"WRAP_CONTENT\" and layout_constrainedWidth=\"true\" instead.");
                            break;
                        } else {
                            break;
                        }
                    case 32:
                        int i4 = obtainStyledAttributes.getInt(index, 0);
                        this.L = i4;
                        if (i4 == 1) {
                            Log.e("ConstraintLayout", "layout_constraintHeight_default=\"wrap\" is deprecated.\nUse layout_height=\"WRAP_CONTENT\" and layout_constrainedHeight=\"true\" instead.");
                            break;
                        } else {
                            break;
                        }
                    case 33:
                        try {
                            this.M = obtainStyledAttributes.getDimensionPixelSize(index, this.M);
                            break;
                        } catch (Exception unused) {
                            if (obtainStyledAttributes.getInt(index, this.M) == -2) {
                                this.M = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case 34:
                        try {
                            this.O = obtainStyledAttributes.getDimensionPixelSize(index, this.O);
                            break;
                        } catch (Exception unused2) {
                            if (obtainStyledAttributes.getInt(index, this.O) == -2) {
                                this.O = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case 35:
                        this.Q = Math.max(0.0f, obtainStyledAttributes.getFloat(index, this.Q));
                        this.K = 2;
                        break;
                    case 36:
                        try {
                            this.N = obtainStyledAttributes.getDimensionPixelSize(index, this.N);
                            break;
                        } catch (Exception unused3) {
                            if (obtainStyledAttributes.getInt(index, this.N) == -2) {
                                this.N = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case 37:
                        try {
                            this.P = obtainStyledAttributes.getDimensionPixelSize(index, this.P);
                            break;
                        } catch (Exception unused4) {
                            if (obtainStyledAttributes.getInt(index, this.P) == -2) {
                                this.P = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case 38:
                        this.R = Math.max(0.0f, obtainStyledAttributes.getFloat(index, this.R));
                        this.L = 2;
                        break;
                    default:
                        switch (i2) {
                            case 44:
                                ConstraintSet.h(this, obtainStyledAttributes.getString(index));
                                break;
                            case 45:
                                this.G = obtainStyledAttributes.getFloat(index, this.G);
                                break;
                            case 46:
                                this.H = obtainStyledAttributes.getFloat(index, this.H);
                                break;
                            case 47:
                                this.I = obtainStyledAttributes.getInt(index, 0);
                                break;
                            case 48:
                                this.J = obtainStyledAttributes.getInt(index, 0);
                                break;
                            case 49:
                                this.S = obtainStyledAttributes.getDimensionPixelOffset(index, this.S);
                                break;
                            case 50:
                                this.T = obtainStyledAttributes.getDimensionPixelOffset(index, this.T);
                                break;
                            case 51:
                                this.X = obtainStyledAttributes.getString(index);
                                break;
                            case 52:
                                int resourceId15 = obtainStyledAttributes.getResourceId(index, this.m);
                                this.m = resourceId15;
                                if (resourceId15 == -1) {
                                    this.m = obtainStyledAttributes.getInt(index, -1);
                                    break;
                                } else {
                                    break;
                                }
                            case 53:
                                int resourceId16 = obtainStyledAttributes.getResourceId(index, this.n);
                                this.n = resourceId16;
                                if (resourceId16 == -1) {
                                    this.n = obtainStyledAttributes.getInt(index, -1);
                                    break;
                                } else {
                                    break;
                                }
                            case 54:
                                this.C = obtainStyledAttributes.getDimensionPixelSize(index, this.C);
                                break;
                            case 55:
                                this.B = obtainStyledAttributes.getDimensionPixelSize(index, this.B);
                                break;
                            default:
                                switch (i2) {
                                    case 64:
                                        ConstraintSet.g(this, obtainStyledAttributes, index, 0);
                                        break;
                                    case 65:
                                        ConstraintSet.g(this, obtainStyledAttributes, index, 1);
                                        break;
                                    case 66:
                                        this.Y = obtainStyledAttributes.getInt(index, this.Y);
                                        break;
                                }
                        }
                }
            }
            obtainStyledAttributes.recycle();
            a();
        }

        public final void a() {
            this.c0 = false;
            this.Z = true;
            this.a0 = true;
            int i = ((ViewGroup.MarginLayoutParams) this).width;
            if (i == -2 && this.V) {
                this.Z = false;
                if (this.K == 0) {
                    this.K = 1;
                }
            }
            int i2 = ((ViewGroup.MarginLayoutParams) this).height;
            if (i2 == -2 && this.W) {
                this.a0 = false;
                if (this.L == 0) {
                    this.L = 1;
                }
            }
            if (i == 0 || i == -1) {
                this.Z = false;
                if (i == 0 && this.K == 1) {
                    ((ViewGroup.MarginLayoutParams) this).width = -2;
                    this.V = true;
                }
            }
            if (i2 == 0 || i2 == -1) {
                this.a0 = false;
                if (i2 == 0 && this.L == 1) {
                    ((ViewGroup.MarginLayoutParams) this).height = -2;
                    this.W = true;
                }
            }
            if (this.f580c == -1.0f && this.f579a == -1 && this.b == -1) {
                return;
            }
            this.c0 = true;
            this.Z = true;
            this.a0 = true;
            if (!(this.p0 instanceof androidx.constraintlayout.core.widgets.Guideline)) {
                this.p0 = new androidx.constraintlayout.core.widgets.Guideline();
            }
            ((androidx.constraintlayout.core.widgets.Guideline) this.p0).O(this.U);
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x004a  */
        /* JADX WARN: Removed duplicated region for block: B:15:0x0051  */
        /* JADX WARN: Removed duplicated region for block: B:18:0x0058  */
        /* JADX WARN: Removed duplicated region for block: B:21:0x005e  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x0064  */
        /* JADX WARN: Removed duplicated region for block: B:31:0x0076  */
        /* JADX WARN: Removed duplicated region for block: B:32:0x007e  */
        @Override // android.view.ViewGroup.MarginLayoutParams, android.view.ViewGroup.LayoutParams
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void resolveLayoutDirection(int r11) {
            /*
                Method dump skipped, instructions count: 255
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintLayout.LayoutParams.resolveLayoutDirection(int):void");
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.f579a = -1;
            this.b = -1;
            this.f580c = -1.0f;
            this.d = -1;
            this.e = -1;
            this.f = -1;
            this.g = -1;
            this.h = -1;
            this.i = -1;
            this.j = -1;
            this.k = -1;
            this.l = -1;
            this.m = -1;
            this.n = -1;
            this.o = -1;
            this.p = 0;
            this.q = 0.0f;
            this.r = -1;
            this.s = -1;
            this.t = -1;
            this.u = -1;
            this.v = IntCompanionObject.MIN_VALUE;
            this.w = IntCompanionObject.MIN_VALUE;
            this.x = IntCompanionObject.MIN_VALUE;
            this.y = IntCompanionObject.MIN_VALUE;
            this.z = IntCompanionObject.MIN_VALUE;
            this.A = IntCompanionObject.MIN_VALUE;
            this.B = IntCompanionObject.MIN_VALUE;
            this.C = 0;
            this.D = 0.5f;
            this.E = 0.5f;
            this.F = null;
            this.G = -1.0f;
            this.H = -1.0f;
            this.I = 0;
            this.J = 0;
            this.K = 0;
            this.L = 0;
            this.M = 0;
            this.N = 0;
            this.O = 0;
            this.P = 0;
            this.Q = 1.0f;
            this.R = 1.0f;
            this.S = -1;
            this.T = -1;
            this.U = -1;
            this.V = false;
            this.W = false;
            this.X = null;
            this.Y = 0;
            this.Z = true;
            this.a0 = true;
            this.b0 = false;
            this.c0 = false;
            this.d0 = false;
            this.e0 = false;
            this.f0 = -1;
            this.g0 = -1;
            this.h0 = -1;
            this.i0 = -1;
            this.j0 = IntCompanionObject.MIN_VALUE;
            this.k0 = IntCompanionObject.MIN_VALUE;
            this.l0 = 0.5f;
            this.p0 = new ConstraintWidget();
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f579a = -1;
            this.b = -1;
            this.f580c = -1.0f;
            this.d = -1;
            this.e = -1;
            this.f = -1;
            this.g = -1;
            this.h = -1;
            this.i = -1;
            this.j = -1;
            this.k = -1;
            this.l = -1;
            this.m = -1;
            this.n = -1;
            this.o = -1;
            this.p = 0;
            this.q = 0.0f;
            this.r = -1;
            this.s = -1;
            this.t = -1;
            this.u = -1;
            this.v = IntCompanionObject.MIN_VALUE;
            this.w = IntCompanionObject.MIN_VALUE;
            this.x = IntCompanionObject.MIN_VALUE;
            this.y = IntCompanionObject.MIN_VALUE;
            this.z = IntCompanionObject.MIN_VALUE;
            this.A = IntCompanionObject.MIN_VALUE;
            this.B = IntCompanionObject.MIN_VALUE;
            this.C = 0;
            this.D = 0.5f;
            this.E = 0.5f;
            this.F = null;
            this.G = -1.0f;
            this.H = -1.0f;
            this.I = 0;
            this.J = 0;
            this.K = 0;
            this.L = 0;
            this.M = 0;
            this.N = 0;
            this.O = 0;
            this.P = 0;
            this.Q = 1.0f;
            this.R = 1.0f;
            this.S = -1;
            this.T = -1;
            this.U = -1;
            this.V = false;
            this.W = false;
            this.X = null;
            this.Y = 0;
            this.Z = true;
            this.a0 = true;
            this.b0 = false;
            this.c0 = false;
            this.d0 = false;
            this.e0 = false;
            this.f0 = -1;
            this.g0 = -1;
            this.h0 = -1;
            this.i0 = -1;
            this.j0 = IntCompanionObject.MIN_VALUE;
            this.k0 = IntCompanionObject.MIN_VALUE;
            this.l0 = 0.5f;
            this.p0 = new ConstraintWidget();
        }
    }
}
