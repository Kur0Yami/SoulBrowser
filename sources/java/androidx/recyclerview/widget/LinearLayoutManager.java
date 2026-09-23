package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.a;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.annotation.RestrictTo;
import androidx.recyclerview.widget.GapWorker;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.RecyclerView;
import java.util.List;
import kotlin.jvm.internal.IntCompanionObject;

/* loaded from: classes.dex */
public class LinearLayoutManager extends RecyclerView.LayoutManager implements ItemTouchHelper.ViewDropHandler, RecyclerView.SmoothScroller.ScrollVectorProvider {
    public final AnchorInfo A;
    public final LayoutChunkResult B;
    public final int C;
    public final int[] D;
    public int p;
    public LayoutState q;
    public OrientationHelper r;
    public boolean s;
    public final boolean t;
    public boolean u;
    public boolean v;
    public final boolean w;
    public int x;
    public int y;
    public SavedState z;

    /* loaded from: classes.dex */
    public static class AnchorInfo {

        /* renamed from: a, reason: collision with root package name */
        public OrientationHelper f1542a;
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public int f1543c;
        public boolean d;
        public boolean e;

        public AnchorInfo() {
            d();
        }

        public final void a() {
            int k;
            if (this.d) {
                k = this.f1542a.g();
            } else {
                k = this.f1542a.k();
            }
            this.f1543c = k;
        }

        public final void b(View view, int i) {
            int l;
            if (this.d) {
                int b = this.f1542a.b(view);
                OrientationHelper orientationHelper = this.f1542a;
                if (Integer.MIN_VALUE == orientationHelper.b) {
                    l = 0;
                } else {
                    l = orientationHelper.l() - orientationHelper.b;
                }
                this.f1543c = l + b;
            } else {
                this.f1543c = this.f1542a.e(view);
            }
            this.b = i;
        }

        public final void c(View view, int i) {
            int l;
            OrientationHelper orientationHelper = this.f1542a;
            if (Integer.MIN_VALUE == orientationHelper.b) {
                l = 0;
            } else {
                l = orientationHelper.l() - orientationHelper.b;
            }
            if (l >= 0) {
                b(view, i);
                return;
            }
            this.b = i;
            if (this.d) {
                int g = (this.f1542a.g() - l) - this.f1542a.b(view);
                this.f1543c = this.f1542a.g() - g;
                if (g > 0) {
                    int c2 = this.f1543c - this.f1542a.c(view);
                    int k = this.f1542a.k();
                    int min = c2 - (Math.min(this.f1542a.e(view) - k, 0) + k);
                    if (min < 0) {
                        this.f1543c = Math.min(g, -min) + this.f1543c;
                        return;
                    }
                    return;
                }
                return;
            }
            int e = this.f1542a.e(view);
            int k2 = e - this.f1542a.k();
            this.f1543c = e;
            if (k2 > 0) {
                int g2 = (this.f1542a.g() - Math.min(0, (this.f1542a.g() - l) - this.f1542a.b(view))) - (this.f1542a.c(view) + e);
                if (g2 < 0) {
                    this.f1543c -= Math.min(k2, -g2);
                }
            }
        }

        public final void d() {
            this.b = -1;
            this.f1543c = IntCompanionObject.MIN_VALUE;
            this.d = false;
            this.e = false;
        }

        public final String toString() {
            return "AnchorInfo{mPosition=" + this.b + ", mCoordinate=" + this.f1543c + ", mLayoutFromEnd=" + this.d + ", mValid=" + this.e + '}';
        }
    }

    /* loaded from: classes.dex */
    public static class LayoutChunkResult {

        /* renamed from: a, reason: collision with root package name */
        public int f1544a;
        public boolean b;

        /* renamed from: c, reason: collision with root package name */
        public boolean f1545c;
        public boolean d;
    }

    /* loaded from: classes.dex */
    public static class LayoutState {

        /* renamed from: a, reason: collision with root package name */
        public boolean f1546a;
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public int f1547c;
        public int d;
        public int e;
        public int f;
        public int g;
        public int h;
        public int i;
        public int j;
        public List k;
        public boolean l;

        public final void a(View view) {
            int d;
            int size = this.k.size();
            View view2 = null;
            int i = Integer.MAX_VALUE;
            for (int i2 = 0; i2 < size; i2++) {
                View view3 = ((RecyclerView.ViewHolder) this.k.get(i2)).f1589a;
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view3.getLayoutParams();
                if (view3 != view && !layoutParams.f1573a.j() && (d = (layoutParams.f1573a.d() - this.d) * this.e) >= 0 && d < i) {
                    view2 = view3;
                    if (d == 0) {
                        break;
                    } else {
                        i = d;
                    }
                }
            }
            if (view2 == null) {
                this.d = -1;
            } else {
                this.d = ((RecyclerView.LayoutParams) view2.getLayoutParams()).f1573a.d();
            }
        }

        public final View b(RecyclerView.Recycler recycler) {
            List list = this.k;
            if (list != null) {
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    View view = ((RecyclerView.ViewHolder) this.k.get(i)).f1589a;
                    RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                    if (!layoutParams.f1573a.j() && this.d == layoutParams.f1573a.d()) {
                        a(view);
                        return view;
                    }
                }
                return null;
            }
            View d = recycler.d(this.d);
            this.d += this.e;
            return d;
        }
    }

    @SuppressLint({"BanParcelableUsage"})
    @RestrictTo
    /* loaded from: classes.dex */
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Object();

        /* renamed from: c, reason: collision with root package name */
        public int f1548c;
        public int f;
        public boolean g;

        /* renamed from: androidx.recyclerview.widget.LinearLayoutManager$SavedState$1, reason: invalid class name */
        /* loaded from: classes.dex */
        public class AnonymousClass1 implements Parcelable.Creator<SavedState> {
            /* JADX WARN: Type inference failed for: r0v0, types: [androidx.recyclerview.widget.LinearLayoutManager$SavedState, java.lang.Object] */
            @Override // android.os.Parcelable.Creator
            public final SavedState createFromParcel(Parcel parcel) {
                ?? obj = new Object();
                obj.f1548c = parcel.readInt();
                obj.f = parcel.readInt();
                boolean z = true;
                if (parcel.readInt() != 1) {
                    z = false;
                }
                obj.g = z;
                return obj;
            }

            @Override // android.os.Parcelable.Creator
            public final SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f1548c);
            parcel.writeInt(this.f);
            parcel.writeInt(this.g ? 1 : 0);
        }
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [androidx.recyclerview.widget.LinearLayoutManager$LayoutChunkResult, java.lang.Object] */
    public LinearLayoutManager(int i) {
        this.p = 1;
        this.t = false;
        this.u = false;
        this.v = false;
        this.w = true;
        this.x = -1;
        this.y = IntCompanionObject.MIN_VALUE;
        this.z = null;
        this.A = new AnchorInfo();
        this.B = new Object();
        this.C = 2;
        this.D = new int[2];
        l1(i);
        d(null);
        if (this.t) {
            this.t = false;
            v0();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean F0() {
        if (this.m != 1073741824 && this.l != 1073741824) {
            int x = x();
            for (int i = 0; i < x; i++) {
                ViewGroup.LayoutParams layoutParams = w(i).getLayoutParams();
                if (layoutParams.width < 0 && layoutParams.height < 0) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void H0(int i, RecyclerView recyclerView) {
        LinearSmoothScroller linearSmoothScroller = new LinearSmoothScroller(recyclerView.getContext());
        linearSmoothScroller.f1582a = i;
        I0(linearSmoothScroller);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean J0() {
        if (this.z == null && this.s == this.v) {
            return true;
        }
        return false;
    }

    public void K0(RecyclerView.State state, int[] iArr) {
        int i;
        int i2;
        if (state.f1586a != -1) {
            i = this.r.l();
        } else {
            i = 0;
        }
        if (this.q.f == -1) {
            i2 = 0;
        } else {
            i2 = i;
            i = 0;
        }
        iArr[0] = i;
        iArr[1] = i2;
    }

    public void L0(RecyclerView.State state, LayoutState layoutState, RecyclerView.LayoutManager.LayoutPrefetchRegistry layoutPrefetchRegistry) {
        int i = layoutState.d;
        if (i >= 0 && i < state.b()) {
            ((GapWorker.LayoutPrefetchRegistryImpl) layoutPrefetchRegistry).a(i, Math.max(0, layoutState.g));
        }
    }

    public final int M0(RecyclerView.State state) {
        if (x() == 0) {
            return 0;
        }
        Q0();
        OrientationHelper orientationHelper = this.r;
        boolean z = !this.w;
        return ScrollbarHelper.a(state, orientationHelper, T0(z), S0(z), this, this.w);
    }

    public final int N0(RecyclerView.State state) {
        if (x() == 0) {
            return 0;
        }
        Q0();
        OrientationHelper orientationHelper = this.r;
        boolean z = !this.w;
        return ScrollbarHelper.b(state, orientationHelper, T0(z), S0(z), this, this.w, this.u);
    }

    public final int O0(RecyclerView.State state) {
        if (x() == 0) {
            return 0;
        }
        Q0();
        OrientationHelper orientationHelper = this.r;
        boolean z = !this.w;
        return ScrollbarHelper.c(state, orientationHelper, T0(z), S0(z), this, this.w);
    }

    public final int P0(int i) {
        if (i != 1) {
            if (i != 2) {
                if (i != 17) {
                    if (i != 33) {
                        if (i != 66) {
                            if (i == 130 && this.p == 1) {
                                return 1;
                            }
                            return IntCompanionObject.MIN_VALUE;
                        }
                        if (this.p == 0) {
                            return 1;
                        }
                        return IntCompanionObject.MIN_VALUE;
                    }
                    if (this.p == 1) {
                        return -1;
                    }
                    return IntCompanionObject.MIN_VALUE;
                }
                if (this.p == 0) {
                    return -1;
                }
                return IntCompanionObject.MIN_VALUE;
            }
            if (this.p != 1 && d1()) {
                return -1;
            }
            return 1;
        }
        if (this.p == 1 || !d1()) {
            return -1;
        }
        return 1;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, androidx.recyclerview.widget.LinearLayoutManager$LayoutState] */
    public final void Q0() {
        if (this.q == null) {
            ?? obj = new Object();
            obj.f1546a = true;
            obj.h = 0;
            obj.i = 0;
            obj.k = null;
            this.q = obj;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean R() {
        return true;
    }

    public final int R0(RecyclerView.Recycler recycler, LayoutState layoutState, RecyclerView.State state, boolean z) {
        int i;
        int i2 = layoutState.f1547c;
        int i3 = layoutState.g;
        if (i3 != Integer.MIN_VALUE) {
            if (i2 < 0) {
                layoutState.g = i3 + i2;
            }
            g1(recycler, layoutState);
        }
        int i4 = layoutState.f1547c + layoutState.h;
        while (true) {
            if ((!layoutState.l && i4 <= 0) || (i = layoutState.d) < 0 || i >= state.b()) {
                break;
            }
            LayoutChunkResult layoutChunkResult = this.B;
            layoutChunkResult.f1544a = 0;
            layoutChunkResult.b = false;
            layoutChunkResult.f1545c = false;
            layoutChunkResult.d = false;
            e1(recycler, state, layoutState, layoutChunkResult);
            if (!layoutChunkResult.b) {
                int i5 = layoutState.b;
                int i6 = layoutChunkResult.f1544a;
                layoutState.b = (layoutState.f * i6) + i5;
                if (!layoutChunkResult.f1545c || layoutState.k != null || !state.g) {
                    layoutState.f1547c -= i6;
                    i4 -= i6;
                }
                int i7 = layoutState.g;
                if (i7 != Integer.MIN_VALUE) {
                    int i8 = i7 + i6;
                    layoutState.g = i8;
                    int i9 = layoutState.f1547c;
                    if (i9 < 0) {
                        layoutState.g = i8 + i9;
                    }
                    g1(recycler, layoutState);
                }
                if (z && layoutChunkResult.d) {
                    break;
                }
            } else {
                break;
            }
        }
        return i2 - layoutState.f1547c;
    }

    public final View S0(boolean z) {
        if (this.u) {
            return X0(0, x(), z);
        }
        return X0(x() - 1, -1, z);
    }

    public final View T0(boolean z) {
        if (this.u) {
            return X0(x() - 1, -1, z);
        }
        return X0(0, x(), z);
    }

    public final int U0() {
        View X0 = X0(0, x(), false);
        if (X0 == null) {
            return -1;
        }
        return RecyclerView.LayoutManager.N(X0);
    }

    public final int V0() {
        View X0 = X0(x() - 1, -1, false);
        if (X0 == null) {
            return -1;
        }
        return RecyclerView.LayoutManager.N(X0);
    }

    public final View W0(int i, int i2) {
        int i3;
        int i4;
        Q0();
        if (i2 > i || i2 < i) {
            if (this.r.e(w(i)) < this.r.k()) {
                i3 = 16644;
                i4 = 16388;
            } else {
                i3 = 4161;
                i4 = 4097;
            }
            if (this.p == 0) {
                return this.f1568c.a(i, i2, i3, i4);
            }
            return this.d.a(i, i2, i3, i4);
        }
        return w(i);
    }

    public final View X0(int i, int i2, boolean z) {
        int i3;
        Q0();
        if (z) {
            i3 = 24579;
        } else {
            i3 = 320;
        }
        if (this.p == 0) {
            return this.f1568c.a(i, i2, i3, 320);
        }
        return this.d.a(i, i2, i3, 320);
    }

    public View Y0(RecyclerView.Recycler recycler, RecyclerView.State state, boolean z, boolean z2) {
        int i;
        int i2;
        int i3;
        boolean z3;
        boolean z4;
        Q0();
        int x = x();
        if (z2) {
            i2 = x() - 1;
            i = -1;
            i3 = -1;
        } else {
            i = x;
            i2 = 0;
            i3 = 1;
        }
        int b = state.b();
        int k = this.r.k();
        int g = this.r.g();
        View view = null;
        View view2 = null;
        View view3 = null;
        while (i2 != i) {
            View w = w(i2);
            int N = RecyclerView.LayoutManager.N(w);
            int e = this.r.e(w);
            int b2 = this.r.b(w);
            if (N >= 0 && N < b) {
                if (((RecyclerView.LayoutParams) w.getLayoutParams()).f1573a.j()) {
                    if (view3 == null) {
                        view3 = w;
                    }
                } else {
                    if (b2 <= k && e < k) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (e >= g && b2 > g) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (!z3 && !z4) {
                        return w;
                    }
                    if (z) {
                        if (!z4) {
                            if (view != null) {
                            }
                            view = w;
                        }
                        view2 = w;
                    } else {
                        if (!z3) {
                            if (view != null) {
                            }
                            view = w;
                        }
                        view2 = w;
                    }
                }
            }
            i2 += i3;
        }
        if (view != null) {
            return view;
        }
        if (view2 != null) {
            return view2;
        }
        return view3;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public View Z(View view, int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        int P0;
        View W0;
        View b1;
        i1();
        if (x() != 0 && (P0 = P0(i)) != Integer.MIN_VALUE) {
            Q0();
            n1(P0, (int) (this.r.l() * 0.33333334f), false, state);
            LayoutState layoutState = this.q;
            layoutState.g = IntCompanionObject.MIN_VALUE;
            layoutState.f1546a = false;
            R0(recycler, layoutState, state, true);
            if (P0 == -1) {
                if (this.u) {
                    W0 = W0(x() - 1, -1);
                } else {
                    W0 = W0(0, x());
                }
            } else if (this.u) {
                W0 = W0(0, x());
            } else {
                W0 = W0(x() - 1, -1);
            }
            if (P0 == -1) {
                b1 = c1();
            } else {
                b1 = b1();
            }
            if (b1.hasFocusable()) {
                if (W0 != null) {
                    return b1;
                }
            } else {
                return W0;
            }
        }
        return null;
    }

    public final int Z0(int i, RecyclerView.Recycler recycler, RecyclerView.State state, boolean z) {
        int g;
        int g2 = this.r.g() - i;
        if (g2 > 0) {
            int i2 = -j1(-g2, recycler, state);
            int i3 = i + i2;
            if (z && (g = this.r.g() - i3) > 0) {
                this.r.o(g);
                return g + i2;
            }
            return i2;
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.SmoothScroller.ScrollVectorProvider
    public final PointF a(int i) {
        if (x() == 0) {
            return null;
        }
        boolean z = false;
        int i2 = 1;
        if (i < RecyclerView.LayoutManager.N(w(0))) {
            z = true;
        }
        if (z != this.u) {
            i2 = -1;
        }
        if (this.p == 0) {
            return new PointF(i2, 0.0f);
        }
        return new PointF(0.0f, i2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void a0(AccessibilityEvent accessibilityEvent) {
        super.a0(accessibilityEvent);
        if (x() > 0) {
            accessibilityEvent.setFromIndex(U0());
            accessibilityEvent.setToIndex(V0());
        }
    }

    public final int a1(int i, RecyclerView.Recycler recycler, RecyclerView.State state, boolean z) {
        int k;
        int k2 = i - this.r.k();
        if (k2 > 0) {
            int i2 = -j1(k2, recycler, state);
            int i3 = i + i2;
            if (z && (k = i3 - this.r.k()) > 0) {
                this.r.o(-k);
                return i2 - k;
            }
            return i2;
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.ViewDropHandler
    public final void b(View view, View view2) {
        char c2;
        d("Cannot drop a view during a scroll or layout calculation");
        Q0();
        i1();
        int N = RecyclerView.LayoutManager.N(view);
        int N2 = RecyclerView.LayoutManager.N(view2);
        if (N < N2) {
            c2 = 1;
        } else {
            c2 = 65535;
        }
        if (this.u) {
            if (c2 == 1) {
                k1(N2, this.r.g() - (this.r.c(view) + this.r.e(view2)));
                return;
            }
            k1(N2, this.r.g() - this.r.b(view2));
            return;
        }
        if (c2 == 65535) {
            k1(N2, this.r.e(view2));
        } else {
            k1(N2, this.r.b(view2) - this.r.c(view));
        }
    }

    public final View b1() {
        int x;
        if (this.u) {
            x = 0;
        } else {
            x = x() - 1;
        }
        return w(x);
    }

    public final View c1() {
        int i;
        if (this.u) {
            i = x() - 1;
        } else {
            i = 0;
        }
        return w(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void d(String str) {
        if (this.z == null) {
            super.d(str);
        }
    }

    public final boolean d1() {
        if (I() == 1) {
            return true;
        }
        return false;
    }

    public void e1(RecyclerView.Recycler recycler, RecyclerView.State state, LayoutState layoutState, LayoutChunkResult layoutChunkResult) {
        boolean z;
        int i;
        int i2;
        int i3;
        int i4;
        boolean z2;
        View b = layoutState.b(recycler);
        if (b == null) {
            layoutChunkResult.b = true;
            return;
        }
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) b.getLayoutParams();
        if (layoutState.k == null) {
            boolean z3 = this.u;
            if (layoutState.f == -1) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z3 == z2) {
                c(-1, b, false);
            } else {
                c(0, b, false);
            }
        } else {
            boolean z4 = this.u;
            if (layoutState.f == -1) {
                z = true;
            } else {
                z = false;
            }
            if (z4 == z) {
                c(-1, b, true);
            } else {
                c(0, b, true);
            }
        }
        RecyclerView.LayoutParams layoutParams2 = (RecyclerView.LayoutParams) b.getLayoutParams();
        Rect O = this.b.O(b);
        int i5 = O.left + O.right;
        int i6 = O.top + O.bottom;
        int y = RecyclerView.LayoutManager.y(f(), this.n, this.l, L() + K() + ((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin + i5, ((ViewGroup.MarginLayoutParams) layoutParams2).width);
        int y2 = RecyclerView.LayoutManager.y(g(), this.o, this.m, J() + M() + ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin + i6, ((ViewGroup.MarginLayoutParams) layoutParams2).height);
        if (E0(b, y, y2, layoutParams2)) {
            b.measure(y, y2);
        }
        layoutChunkResult.f1544a = this.r.c(b);
        if (this.p == 1) {
            if (d1()) {
                i4 = this.n - L();
                i = i4 - this.r.d(b);
            } else {
                i = K();
                i4 = this.r.d(b) + i;
            }
            if (layoutState.f == -1) {
                i2 = layoutState.b;
                i3 = i2 - layoutChunkResult.f1544a;
            } else {
                i3 = layoutState.b;
                i2 = layoutChunkResult.f1544a + i3;
            }
        } else {
            int M = M();
            int d = this.r.d(b) + M;
            if (layoutState.f == -1) {
                int i7 = layoutState.b;
                int i8 = i7 - layoutChunkResult.f1544a;
                i4 = i7;
                i2 = d;
                i = i8;
                i3 = M;
            } else {
                int i9 = layoutState.b;
                int i10 = layoutChunkResult.f1544a + i9;
                i = i9;
                i2 = d;
                i3 = M;
                i4 = i10;
            }
        }
        RecyclerView.LayoutManager.T(b, i, i3, i4, i2);
        if (layoutParams.f1573a.j() || layoutParams.f1573a.m()) {
            layoutChunkResult.f1545c = true;
        }
        layoutChunkResult.d = b.hasFocusable();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean f() {
        if (this.p == 0) {
            return true;
        }
        return false;
    }

    public void f1(RecyclerView.Recycler recycler, RecyclerView.State state, AnchorInfo anchorInfo, int i) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean g() {
        if (this.p == 1) {
            return true;
        }
        return false;
    }

    public final void g1(RecyclerView.Recycler recycler, LayoutState layoutState) {
        if (layoutState.f1546a && !layoutState.l) {
            int i = layoutState.g;
            int i2 = layoutState.i;
            if (layoutState.f == -1) {
                int x = x();
                if (i >= 0) {
                    int f = (this.r.f() - i) + i2;
                    if (this.u) {
                        for (int i3 = 0; i3 < x; i3++) {
                            View w = w(i3);
                            if (this.r.e(w) < f || this.r.n(w) < f) {
                                h1(recycler, 0, i3);
                                return;
                            }
                        }
                        return;
                    }
                    int i4 = x - 1;
                    for (int i5 = i4; i5 >= 0; i5--) {
                        View w2 = w(i5);
                        if (this.r.e(w2) < f || this.r.n(w2) < f) {
                            h1(recycler, i4, i5);
                            return;
                        }
                    }
                    return;
                }
                return;
            }
            if (i >= 0) {
                int i6 = i - i2;
                int x2 = x();
                if (this.u) {
                    int i7 = x2 - 1;
                    for (int i8 = i7; i8 >= 0; i8--) {
                        View w3 = w(i8);
                        if (this.r.b(w3) > i6 || this.r.m(w3) > i6) {
                            h1(recycler, i7, i8);
                            return;
                        }
                    }
                    return;
                }
                for (int i9 = 0; i9 < x2; i9++) {
                    View w4 = w(i9);
                    if (this.r.b(w4) > i6 || this.r.m(w4) > i6) {
                        h1(recycler, 0, i9);
                        return;
                    }
                }
            }
        }
    }

    public final void h1(RecyclerView.Recycler recycler, int i, int i2) {
        if (i != i2) {
            if (i2 > i) {
                for (int i3 = i2 - 1; i3 >= i; i3--) {
                    s0(i3, recycler);
                }
                return;
            }
            while (i > i2) {
                s0(i, recycler);
                i--;
            }
        }
    }

    public final void i1() {
        if (this.p != 1 && d1()) {
            this.u = !this.t;
        } else {
            this.u = this.t;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void j(int i, int i2, RecyclerView.State state, RecyclerView.LayoutManager.LayoutPrefetchRegistry layoutPrefetchRegistry) {
        int i3;
        if (this.p != 0) {
            i = i2;
        }
        if (x() != 0 && i != 0) {
            Q0();
            if (i > 0) {
                i3 = 1;
            } else {
                i3 = -1;
            }
            n1(i3, Math.abs(i), true, state);
            L0(state, this.q, layoutPrefetchRegistry);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void j0(RecyclerView.Recycler recycler, RecyclerView.State state) {
        View view;
        int i;
        View view2;
        View Y0;
        boolean z;
        boolean z2;
        int i2;
        boolean z3;
        boolean z4;
        int e;
        int l;
        int i3;
        boolean z5;
        int i4;
        int i5;
        List list;
        boolean z6;
        int i6;
        int i7;
        int Z0;
        int i8;
        View s;
        int e2;
        int i9;
        int i10;
        int i11 = -1;
        if ((this.z != null || this.x != -1) && state.b() == 0) {
            p0(recycler);
            return;
        }
        SavedState savedState = this.z;
        if (savedState != null && (i10 = savedState.f1548c) >= 0) {
            this.x = i10;
        }
        Q0();
        this.q.f1546a = false;
        i1();
        RecyclerView recyclerView = this.b;
        if (recyclerView == null || (view = recyclerView.getFocusedChild()) == null || this.f1567a.f1496c.contains(view)) {
            view = null;
        }
        AnchorInfo anchorInfo = this.A;
        if (anchorInfo.e && this.x == -1 && this.z == null) {
            if (view != null && (this.r.e(view) >= this.r.g() || this.r.b(view) <= this.r.k())) {
                anchorInfo.c(view, RecyclerView.LayoutManager.N(view));
            }
        } else {
            anchorInfo.d();
            anchorInfo.d = this.u ^ this.v;
            if (!state.g && (i2 = this.x) != -1) {
                if (i2 >= 0 && i2 < state.b()) {
                    int i12 = this.x;
                    anchorInfo.b = i12;
                    SavedState savedState2 = this.z;
                    if (savedState2 != null && savedState2.f1548c >= 0) {
                        boolean z7 = savedState2.g;
                        anchorInfo.d = z7;
                        if (z7) {
                            anchorInfo.f1543c = this.r.g() - this.z.f;
                        } else {
                            anchorInfo.f1543c = this.r.k() + this.z.f;
                        }
                    } else if (this.y == Integer.MIN_VALUE) {
                        View s2 = s(i12);
                        if (s2 != null) {
                            if (this.r.c(s2) > this.r.l()) {
                                anchorInfo.a();
                            } else if (this.r.e(s2) - this.r.k() < 0) {
                                anchorInfo.f1543c = this.r.k();
                                anchorInfo.d = false;
                            } else if (this.r.g() - this.r.b(s2) < 0) {
                                anchorInfo.f1543c = this.r.g();
                                anchorInfo.d = true;
                            } else {
                                if (anchorInfo.d) {
                                    int b = this.r.b(s2);
                                    OrientationHelper orientationHelper = this.r;
                                    if (Integer.MIN_VALUE == orientationHelper.b) {
                                        l = 0;
                                    } else {
                                        l = orientationHelper.l() - orientationHelper.b;
                                    }
                                    e = l + b;
                                } else {
                                    e = this.r.e(s2);
                                }
                                anchorInfo.f1543c = e;
                            }
                        } else {
                            if (x() > 0) {
                                if (this.x < RecyclerView.LayoutManager.N(w(0))) {
                                    z3 = true;
                                } else {
                                    z3 = false;
                                }
                                if (z3 == this.u) {
                                    z4 = true;
                                } else {
                                    z4 = false;
                                }
                                anchorInfo.d = z4;
                            }
                            anchorInfo.a();
                        }
                    } else {
                        boolean z8 = this.u;
                        anchorInfo.d = z8;
                        if (z8) {
                            anchorInfo.f1543c = this.r.g() - this.y;
                        } else {
                            anchorInfo.f1543c = this.r.k() + this.y;
                        }
                    }
                    anchorInfo.e = true;
                } else {
                    this.x = -1;
                    this.y = IntCompanionObject.MIN_VALUE;
                }
            }
            if (x() != 0) {
                RecyclerView recyclerView2 = this.b;
                if (recyclerView2 == null || (view2 = recyclerView2.getFocusedChild()) == null || this.f1567a.f1496c.contains(view2)) {
                    view2 = null;
                }
                if (view2 != null) {
                    RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view2.getLayoutParams();
                    if (!layoutParams.f1573a.j() && layoutParams.f1573a.d() >= 0 && layoutParams.f1573a.d() < state.b()) {
                        anchorInfo.c(view2, RecyclerView.LayoutManager.N(view2));
                        anchorInfo.e = true;
                    }
                }
                boolean z9 = this.s;
                boolean z10 = this.v;
                if (z9 == z10 && (Y0 = Y0(recycler, state, anchorInfo.d, z10)) != null) {
                    anchorInfo.b(Y0, RecyclerView.LayoutManager.N(Y0));
                    if (!state.g && J0()) {
                        int e3 = this.r.e(Y0);
                        int b2 = this.r.b(Y0);
                        int k = this.r.k();
                        int g = this.r.g();
                        if (b2 <= k && e3 < k) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (e3 >= g && b2 > g) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        if (z || z2) {
                            if (anchorInfo.d) {
                                k = g;
                            }
                            anchorInfo.f1543c = k;
                        }
                    }
                    anchorInfo.e = true;
                }
            }
            anchorInfo.a();
            if (this.v) {
                i = state.b() - 1;
            } else {
                i = 0;
            }
            anchorInfo.b = i;
            anchorInfo.e = true;
        }
        LayoutState layoutState = this.q;
        if (layoutState.j >= 0) {
            i3 = 1;
        } else {
            i3 = -1;
        }
        layoutState.f = i3;
        int[] iArr = this.D;
        iArr[0] = 0;
        iArr[1] = 0;
        K0(state, iArr);
        int k2 = this.r.k() + Math.max(0, iArr[0]);
        int h = this.r.h() + Math.max(0, iArr[1]);
        if (state.g && (i8 = this.x) != -1 && this.y != Integer.MIN_VALUE && (s = s(i8)) != null) {
            if (this.u) {
                i9 = this.r.g() - this.r.b(s);
                e2 = this.y;
            } else {
                e2 = this.r.e(s) - this.r.k();
                i9 = this.y;
            }
            int i13 = i9 - e2;
            if (i13 > 0) {
                k2 += i13;
            } else {
                h -= i13;
            }
        }
        if (!anchorInfo.d ? !this.u : this.u) {
            i11 = 1;
        }
        f1(recycler, state, anchorInfo, i11);
        r(recycler);
        LayoutState layoutState2 = this.q;
        if (this.r.i() == 0 && this.r.f() == 0) {
            z5 = true;
        } else {
            z5 = false;
        }
        layoutState2.l = z5;
        this.q.getClass();
        this.q.i = 0;
        if (anchorInfo.d) {
            p1(anchorInfo.b, anchorInfo.f1543c);
            LayoutState layoutState3 = this.q;
            layoutState3.h = k2;
            R0(recycler, layoutState3, state, false);
            LayoutState layoutState4 = this.q;
            i5 = layoutState4.b;
            int i14 = layoutState4.d;
            int i15 = layoutState4.f1547c;
            if (i15 > 0) {
                h += i15;
            }
            o1(anchorInfo.b, anchorInfo.f1543c);
            LayoutState layoutState5 = this.q;
            layoutState5.h = h;
            layoutState5.d += layoutState5.e;
            R0(recycler, layoutState5, state, false);
            LayoutState layoutState6 = this.q;
            i4 = layoutState6.b;
            int i16 = layoutState6.f1547c;
            if (i16 > 0) {
                p1(i14, i5);
                LayoutState layoutState7 = this.q;
                layoutState7.h = i16;
                R0(recycler, layoutState7, state, false);
                i5 = this.q.b;
            }
        } else {
            o1(anchorInfo.b, anchorInfo.f1543c);
            LayoutState layoutState8 = this.q;
            layoutState8.h = h;
            R0(recycler, layoutState8, state, false);
            LayoutState layoutState9 = this.q;
            i4 = layoutState9.b;
            int i17 = layoutState9.d;
            int i18 = layoutState9.f1547c;
            if (i18 > 0) {
                k2 += i18;
            }
            p1(anchorInfo.b, anchorInfo.f1543c);
            LayoutState layoutState10 = this.q;
            layoutState10.h = k2;
            layoutState10.d += layoutState10.e;
            R0(recycler, layoutState10, state, false);
            LayoutState layoutState11 = this.q;
            int i19 = layoutState11.b;
            int i20 = layoutState11.f1547c;
            if (i20 > 0) {
                o1(i17, i4);
                LayoutState layoutState12 = this.q;
                layoutState12.h = i20;
                R0(recycler, layoutState12, state, false);
                i4 = this.q.b;
            }
            i5 = i19;
        }
        if (x() > 0) {
            if (this.u ^ this.v) {
                int Z02 = Z0(i4, recycler, state, true);
                i6 = i5 + Z02;
                i7 = i4 + Z02;
                Z0 = a1(i6, recycler, state, false);
            } else {
                int a1 = a1(i5, recycler, state, true);
                i6 = i5 + a1;
                i7 = i4 + a1;
                Z0 = Z0(i7, recycler, state, false);
            }
            i5 = i6 + Z0;
            i4 = i7 + Z0;
        }
        if (state.k && x() != 0 && !state.g && J0()) {
            List list2 = recycler.d;
            int size = list2.size();
            int N = RecyclerView.LayoutManager.N(w(0));
            int i21 = 0;
            int i22 = 0;
            for (int i23 = 0; i23 < size; i23++) {
                RecyclerView.ViewHolder viewHolder = (RecyclerView.ViewHolder) list2.get(i23);
                boolean j = viewHolder.j();
                View view3 = viewHolder.f1589a;
                if (!j) {
                    if (viewHolder.d() < N) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    if (z6 != this.u) {
                        i21 += this.r.c(view3);
                    } else {
                        i22 += this.r.c(view3);
                    }
                }
            }
            this.q.k = list2;
            if (i21 > 0) {
                p1(RecyclerView.LayoutManager.N(c1()), i5);
                LayoutState layoutState13 = this.q;
                layoutState13.h = i21;
                layoutState13.f1547c = 0;
                layoutState13.a(null);
                R0(recycler, this.q, state, false);
            }
            if (i22 > 0) {
                o1(RecyclerView.LayoutManager.N(b1()), i4);
                LayoutState layoutState14 = this.q;
                layoutState14.h = i22;
                layoutState14.f1547c = 0;
                list = null;
                layoutState14.a(null);
                R0(recycler, this.q, state, false);
            } else {
                list = null;
            }
            this.q.k = list;
        }
        if (!state.g) {
            OrientationHelper orientationHelper2 = this.r;
            orientationHelper2.b = orientationHelper2.l();
        } else {
            anchorInfo.d();
        }
        this.s = this.v;
    }

    public final int j1(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        int i2;
        if (x() != 0 && i != 0) {
            Q0();
            this.q.f1546a = true;
            if (i > 0) {
                i2 = 1;
            } else {
                i2 = -1;
            }
            int abs = Math.abs(i);
            n1(i2, abs, true, state);
            LayoutState layoutState = this.q;
            int R0 = R0(recycler, layoutState, state, false) + layoutState.g;
            if (R0 >= 0) {
                if (abs > R0) {
                    i = i2 * R0;
                }
                this.r.o(-i);
                this.q.j = i;
                return i;
            }
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void k(int i, RecyclerView.LayoutManager.LayoutPrefetchRegistry layoutPrefetchRegistry) {
        boolean z;
        int i2;
        SavedState savedState = this.z;
        int i3 = -1;
        if (savedState != null && (i2 = savedState.f1548c) >= 0) {
            z = savedState.g;
        } else {
            i1();
            z = this.u;
            i2 = this.x;
            if (i2 == -1) {
                i2 = z ? i - 1 : 0;
            }
        }
        if (!z) {
            i3 = 1;
        }
        for (int i4 = 0; i4 < this.C && i2 >= 0 && i2 < i; i4++) {
            ((GapWorker.LayoutPrefetchRegistryImpl) layoutPrefetchRegistry).a(i2, 0);
            i2 += i3;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void k0(RecyclerView.State state) {
        this.z = null;
        this.x = -1;
        this.y = IntCompanionObject.MIN_VALUE;
        this.A.d();
    }

    public final void k1(int i, int i2) {
        this.x = i;
        this.y = i2;
        SavedState savedState = this.z;
        if (savedState != null) {
            savedState.f1548c = -1;
        }
        v0();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int l(RecyclerView.State state) {
        return M0(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void l0(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            this.z = savedState;
            if (this.x != -1) {
                savedState.f1548c = -1;
            }
            v0();
        }
    }

    public final void l1(int i) {
        if (i != 0 && i != 1) {
            throw new IllegalArgumentException(a.e(i, "invalid orientation:"));
        }
        d(null);
        if (i == this.p && this.r != null) {
            return;
        }
        OrientationHelper a2 = OrientationHelper.a(this, i);
        this.r = a2;
        this.A.f1542a = a2;
        this.p = i;
        v0();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int m(RecyclerView.State state) {
        return N0(state);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [android.os.Parcelable, androidx.recyclerview.widget.LinearLayoutManager$SavedState, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v9, types: [android.os.Parcelable, androidx.recyclerview.widget.LinearLayoutManager$SavedState, java.lang.Object] */
    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final Parcelable m0() {
        SavedState savedState = this.z;
        if (savedState != null) {
            ?? obj = new Object();
            obj.f1548c = savedState.f1548c;
            obj.f = savedState.f;
            obj.g = savedState.g;
            return obj;
        }
        ?? obj2 = new Object();
        if (x() > 0) {
            Q0();
            boolean z = this.s ^ this.u;
            obj2.g = z;
            if (z) {
                View b1 = b1();
                obj2.f = this.r.g() - this.r.b(b1);
                obj2.f1548c = RecyclerView.LayoutManager.N(b1);
                return obj2;
            }
            View c1 = c1();
            obj2.f1548c = RecyclerView.LayoutManager.N(c1);
            obj2.f = this.r.e(c1) - this.r.k();
            return obj2;
        }
        obj2.f1548c = -1;
        return obj2;
    }

    public void m1(boolean z) {
        d(null);
        if (this.v == z) {
            return;
        }
        this.v = z;
        v0();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int n(RecyclerView.State state) {
        return O0(state);
    }

    public final void n1(int i, int i2, boolean z, RecyclerView.State state) {
        boolean z2;
        int i3;
        int k;
        LayoutState layoutState = this.q;
        boolean z3 = false;
        int i4 = 1;
        if (this.r.i() == 0 && this.r.f() == 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        layoutState.l = z2;
        this.q.f = i;
        int[] iArr = this.D;
        iArr[0] = 0;
        iArr[1] = 0;
        K0(state, iArr);
        int max = Math.max(0, iArr[0]);
        int max2 = Math.max(0, iArr[1]);
        if (i == 1) {
            z3 = true;
        }
        LayoutState layoutState2 = this.q;
        if (z3) {
            i3 = max2;
        } else {
            i3 = max;
        }
        layoutState2.h = i3;
        if (!z3) {
            max = max2;
        }
        layoutState2.i = max;
        if (z3) {
            layoutState2.h = this.r.h() + i3;
            View b1 = b1();
            LayoutState layoutState3 = this.q;
            if (this.u) {
                i4 = -1;
            }
            layoutState3.e = i4;
            int N = RecyclerView.LayoutManager.N(b1);
            LayoutState layoutState4 = this.q;
            layoutState3.d = N + layoutState4.e;
            layoutState4.b = this.r.b(b1);
            k = this.r.b(b1) - this.r.g();
        } else {
            View c1 = c1();
            LayoutState layoutState5 = this.q;
            layoutState5.h = this.r.k() + layoutState5.h;
            LayoutState layoutState6 = this.q;
            if (!this.u) {
                i4 = -1;
            }
            layoutState6.e = i4;
            int N2 = RecyclerView.LayoutManager.N(c1);
            LayoutState layoutState7 = this.q;
            layoutState6.d = N2 + layoutState7.e;
            layoutState7.b = this.r.e(c1);
            k = (-this.r.e(c1)) + this.r.k();
        }
        LayoutState layoutState8 = this.q;
        layoutState8.f1547c = i2;
        if (z) {
            layoutState8.f1547c = i2 - k;
        }
        layoutState8.g = k;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int o(RecyclerView.State state) {
        return M0(state);
    }

    public final void o1(int i, int i2) {
        int i3;
        this.q.f1547c = this.r.g() - i2;
        LayoutState layoutState = this.q;
        if (this.u) {
            i3 = -1;
        } else {
            i3 = 1;
        }
        layoutState.e = i3;
        layoutState.d = i;
        layoutState.f = 1;
        layoutState.b = i2;
        layoutState.g = IntCompanionObject.MIN_VALUE;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int p(RecyclerView.State state) {
        return N0(state);
    }

    public final void p1(int i, int i2) {
        int i3;
        this.q.f1547c = i2 - this.r.k();
        LayoutState layoutState = this.q;
        layoutState.d = i;
        if (this.u) {
            i3 = 1;
        } else {
            i3 = -1;
        }
        layoutState.e = i3;
        layoutState.f = -1;
        layoutState.b = i2;
        layoutState.g = IntCompanionObject.MIN_VALUE;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int q(RecyclerView.State state) {
        return O0(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final View s(int i) {
        int x = x();
        if (x == 0) {
            return null;
        }
        int N = i - RecyclerView.LayoutManager.N(w(0));
        if (N >= 0 && N < x) {
            View w = w(N);
            if (RecyclerView.LayoutManager.N(w) == i) {
                return w;
            }
        }
        return super.s(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams t() {
        return new RecyclerView.LayoutParams(-2, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int w0(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (this.p == 1) {
            return 0;
        }
        return j1(i, recycler, state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void x0(int i) {
        this.x = i;
        this.y = IntCompanionObject.MIN_VALUE;
        SavedState savedState = this.z;
        if (savedState != null) {
            savedState.f1548c = -1;
        }
        v0();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int y0(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (this.p == 0) {
            return 0;
        }
        return j1(i, recycler, state);
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [androidx.recyclerview.widget.LinearLayoutManager$LayoutChunkResult, java.lang.Object] */
    @SuppressLint({"UnknownNullness"})
    public LinearLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        this.p = 1;
        this.t = false;
        this.u = false;
        this.v = false;
        this.w = true;
        this.x = -1;
        this.y = IntCompanionObject.MIN_VALUE;
        this.z = null;
        this.A = new AnchorInfo();
        this.B = new Object();
        this.C = 2;
        this.D = new int[2];
        RecyclerView.LayoutManager.Properties O = RecyclerView.LayoutManager.O(context, attributeSet, i, i2);
        l1(O.f1571a);
        boolean z = O.f1572c;
        d(null);
        if (z != this.t) {
            this.t = z;
            v0();
        }
        m1(O.d);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void Y(RecyclerView recyclerView) {
    }
}
