package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.Rect;
import android.support.v4.media.a;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.recyclerview.widget.GapWorker;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class GridLayoutManager extends LinearLayoutManager {
    public boolean E;
    public int F;
    public int[] G;
    public View[] H;
    public final SparseIntArray I;
    public final SparseIntArray J;
    public SpanSizeLookup K;
    public final Rect L;

    /* loaded from: classes.dex */
    public static final class DefaultSpanSizeLookup extends SpanSizeLookup {
        @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
        public final int b(int i, int i2) {
            return i % i2;
        }

        @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
        public final int c(int i) {
            return 1;
        }
    }

    /* loaded from: classes.dex */
    public static class LayoutParams extends RecyclerView.LayoutParams {
        public int e;
        public int f;

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.e = -1;
            this.f = 0;
        }
    }

    /* loaded from: classes.dex */
    public static abstract class SpanSizeLookup {

        /* renamed from: a, reason: collision with root package name */
        public final SparseIntArray f1527a = new SparseIntArray();
        public final SparseIntArray b = new SparseIntArray();

        public final int a(int i, int i2) {
            int c2 = c(i);
            int i3 = 0;
            int i4 = 0;
            for (int i5 = 0; i5 < i; i5++) {
                int c3 = c(i5);
                i3 += c3;
                if (i3 == i2) {
                    i4++;
                    i3 = 0;
                } else if (i3 > i2) {
                    i4++;
                    i3 = c3;
                }
            }
            if (i3 + c2 > i2) {
                return i4 + 1;
            }
            return i4;
        }

        public int b(int i, int i2) {
            int c2 = c(i);
            if (c2 == i2) {
                return 0;
            }
            int i3 = 0;
            for (int i4 = 0; i4 < i; i4++) {
                int c3 = c(i4);
                i3 += c3;
                if (i3 == i2) {
                    i3 = 0;
                } else if (i3 > i2) {
                    i3 = c3;
                }
            }
            if (c2 + i3 > i2) {
                return 0;
            }
            return i3;
        }

        public abstract int c(int i);

        public final void d() {
            this.f1527a.clear();
        }
    }

    public GridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.E = false;
        this.F = -1;
        this.I = new SparseIntArray();
        this.J = new SparseIntArray();
        this.K = new SpanSizeLookup();
        this.L = new Rect();
        x1(RecyclerView.LayoutManager.O(context, attributeSet, i, i2).b);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void B0(Rect rect, int i, int i2) {
        int i3;
        int i4;
        if (this.G == null) {
            super.B0(rect, i, i2);
        }
        int L = L() + K();
        int J = J() + M();
        if (this.p == 1) {
            int height = rect.height() + J;
            RecyclerView recyclerView = this.b;
            WeakHashMap weakHashMap = ViewCompat.f792a;
            i4 = RecyclerView.LayoutManager.i(i2, height, recyclerView.getMinimumHeight());
            int[] iArr = this.G;
            i3 = RecyclerView.LayoutManager.i(i, iArr[iArr.length - 1] + L, this.b.getMinimumWidth());
        } else {
            int width = rect.width() + L;
            RecyclerView recyclerView2 = this.b;
            WeakHashMap weakHashMap2 = ViewCompat.f792a;
            i3 = RecyclerView.LayoutManager.i(i, width, recyclerView2.getMinimumWidth());
            int[] iArr2 = this.G;
            i4 = RecyclerView.LayoutManager.i(i2, iArr2[iArr2.length - 1] + J, this.b.getMinimumHeight());
        }
        this.b.setMeasuredDimension(i3, i4);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean J0() {
        if (this.z == null && !this.E) {
            return true;
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void L0(RecyclerView.State state, LinearLayoutManager.LayoutState layoutState, RecyclerView.LayoutManager.LayoutPrefetchRegistry layoutPrefetchRegistry) {
        int i;
        int i2 = this.F;
        for (int i3 = 0; i3 < this.F && (i = layoutState.d) >= 0 && i < state.b() && i2 > 0; i3++) {
            int i4 = layoutState.d;
            ((GapWorker.LayoutPrefetchRegistryImpl) layoutPrefetchRegistry).a(i4, Math.max(0, layoutState.g));
            i2 -= this.K.c(i4);
            layoutState.d += layoutState.e;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int P(RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (this.p == 0) {
            return this.F;
        }
        if (state.b() < 1) {
            return 0;
        }
        return t1(state.b() - 1, recycler, state) + 1;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final View Y0(RecyclerView.Recycler recycler, RecyclerView.State state, boolean z, boolean z2) {
        int i;
        int i2;
        int x = x();
        int i3 = 1;
        if (z2) {
            i2 = x() - 1;
            i = -1;
            i3 = -1;
        } else {
            i = x;
            i2 = 0;
        }
        int b = state.b();
        Q0();
        int k = this.r.k();
        int g = this.r.g();
        View view = null;
        View view2 = null;
        while (i2 != i) {
            View w = w(i2);
            int N = RecyclerView.LayoutManager.N(w);
            if (N >= 0 && N < b && u1(N, recycler, state) == 0) {
                if (((RecyclerView.LayoutParams) w.getLayoutParams()).f1573a.j()) {
                    if (view2 == null) {
                        view2 = w;
                    }
                } else {
                    if (this.r.e(w) < g && this.r.b(w) >= k) {
                        return w;
                    }
                    if (view == null) {
                        view = w;
                    }
                }
            }
            i2 += i3;
        }
        if (view != null) {
            return view;
        }
        return view2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:63:0x00e0, code lost:
    
        if (r13 == r10) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0105, code lost:
    
        if (r13 == r9) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x001f, code lost:
    
        if (r22.f1567a.f1496c.contains(r3) != false) goto L10;
     */
    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View Z(android.view.View r23, int r24, androidx.recyclerview.widget.RecyclerView.Recycler r25, androidx.recyclerview.widget.RecyclerView.State r26) {
        /*
            Method dump skipped, instructions count: 324
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.Z(android.view.View, int, androidx.recyclerview.widget.RecyclerView$Recycler, androidx.recyclerview.widget.RecyclerView$State):android.view.View");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void b0(RecyclerView.Recycler recycler, RecyclerView.State state, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        super.b0(recycler, state, accessibilityNodeInfoCompat);
        accessibilityNodeInfoCompat.k(GridView.class.getName());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void d0(RecyclerView.Recycler recycler, RecyclerView.State state, View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof LayoutParams)) {
            c0(view, accessibilityNodeInfoCompat);
            return;
        }
        LayoutParams layoutParams2 = (LayoutParams) layoutParams;
        int t1 = t1(layoutParams2.f1573a.d(), recycler, state);
        if (this.p == 0) {
            accessibilityNodeInfoCompat.m(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.a(false, layoutParams2.e, layoutParams2.f, t1, 1));
        } else {
            accessibilityNodeInfoCompat.m(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.a(false, t1, 1, layoutParams2.e, layoutParams2.f));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void e0(RecyclerView recyclerView, int i, int i2) {
        this.K.d();
        this.K.b.clear();
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x008c, code lost:
    
        r22.b = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x008e, code lost:
    
        return;
     */
    @Override // androidx.recyclerview.widget.LinearLayoutManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void e1(androidx.recyclerview.widget.RecyclerView.Recycler r19, androidx.recyclerview.widget.RecyclerView.State r20, androidx.recyclerview.widget.LinearLayoutManager.LayoutState r21, androidx.recyclerview.widget.LinearLayoutManager.LayoutChunkResult r22) {
        /*
            Method dump skipped, instructions count: 608
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.e1(androidx.recyclerview.widget.RecyclerView$Recycler, androidx.recyclerview.widget.RecyclerView$State, androidx.recyclerview.widget.LinearLayoutManager$LayoutState, androidx.recyclerview.widget.LinearLayoutManager$LayoutChunkResult):void");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void f0() {
        this.K.d();
        this.K.b.clear();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void f1(RecyclerView.Recycler recycler, RecyclerView.State state, LinearLayoutManager.AnchorInfo anchorInfo, int i) {
        boolean z;
        y1();
        if (state.b() > 0 && !state.g) {
            if (i == 1) {
                z = true;
            } else {
                z = false;
            }
            int u1 = u1(anchorInfo.b, recycler, state);
            if (z) {
                while (u1 > 0) {
                    int i2 = anchorInfo.b;
                    if (i2 <= 0) {
                        break;
                    }
                    int i3 = i2 - 1;
                    anchorInfo.b = i3;
                    u1 = u1(i3, recycler, state);
                }
            } else {
                int b = state.b() - 1;
                int i4 = anchorInfo.b;
                while (i4 < b) {
                    int i5 = i4 + 1;
                    int u12 = u1(i5, recycler, state);
                    if (u12 <= u1) {
                        break;
                    }
                    i4 = i5;
                    u1 = u12;
                }
                anchorInfo.b = i4;
            }
        }
        r1();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void g0(int i, int i2) {
        this.K.d();
        this.K.b.clear();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean h(RecyclerView.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void h0(RecyclerView recyclerView, int i, int i2) {
        this.K.d();
        this.K.b.clear();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void i0(int i, int i2) {
        this.K.d();
        this.K.b.clear();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void j0(RecyclerView.Recycler recycler, RecyclerView.State state) {
        boolean z = state.g;
        SparseIntArray sparseIntArray = this.J;
        SparseIntArray sparseIntArray2 = this.I;
        if (z) {
            int x = x();
            for (int i = 0; i < x; i++) {
                LayoutParams layoutParams = (LayoutParams) w(i).getLayoutParams();
                int d = layoutParams.f1573a.d();
                sparseIntArray2.put(d, layoutParams.f);
                sparseIntArray.put(d, layoutParams.e);
            }
        }
        super.j0(recycler, state);
        sparseIntArray2.clear();
        sparseIntArray.clear();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void k0(RecyclerView.State state) {
        super.k0(state);
        this.E = false;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int m(RecyclerView.State state) {
        return N0(state);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void m1(boolean z) {
        if (!z) {
            super.m1(false);
            return;
        }
        throw new UnsupportedOperationException("GridLayoutManager does not support stack from end. Consider using reverse layout");
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int n(RecyclerView.State state) {
        return O0(state);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int p(RecyclerView.State state) {
        return N0(state);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int q(RecyclerView.State state) {
        return O0(state);
    }

    public final void q1(int i) {
        int i2;
        int[] iArr = this.G;
        int i3 = this.F;
        if (iArr == null || iArr.length != i3 + 1 || iArr[iArr.length - 1] != i) {
            iArr = new int[i3 + 1];
        }
        int i4 = 0;
        iArr[0] = 0;
        int i5 = i / i3;
        int i6 = i % i3;
        int i7 = 0;
        for (int i8 = 1; i8 <= i3; i8++) {
            i4 += i6;
            if (i4 > 0 && i3 - i4 < i6) {
                i2 = i5 + 1;
                i4 -= i3;
            } else {
                i2 = i5;
            }
            i7 += i2;
            iArr[i8] = i7;
        }
        this.G = iArr;
    }

    public final void r1() {
        View[] viewArr = this.H;
        if (viewArr != null && viewArr.length == this.F) {
            return;
        }
        this.H = new View[this.F];
    }

    public final int s1(int i, int i2) {
        if (this.p == 1 && d1()) {
            int[] iArr = this.G;
            int i3 = this.F;
            return iArr[i3 - i] - iArr[(i3 - i) - i2];
        }
        int[] iArr2 = this.G;
        return iArr2[i2 + i] - iArr2[i];
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final RecyclerView.LayoutParams t() {
        if (this.p == 0) {
            return new LayoutParams(-2, -1);
        }
        return new LayoutParams(-1, -2);
    }

    public final int t1(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (!state.g) {
            return this.K.a(i, this.F);
        }
        int b = recycler.b(i);
        if (b == -1) {
            Log.w("GridLayoutManager", "Cannot find span size for pre layout position. " + i);
            return 0;
        }
        return this.K.a(b, this.F);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.recyclerview.widget.GridLayoutManager$LayoutParams, androidx.recyclerview.widget.RecyclerView$LayoutParams] */
    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final RecyclerView.LayoutParams u(Context context, AttributeSet attributeSet) {
        ?? layoutParams = new RecyclerView.LayoutParams(context, attributeSet);
        layoutParams.e = -1;
        layoutParams.f = 0;
        return layoutParams;
    }

    public final int u1(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (!state.g) {
            return this.K.b(i, this.F);
        }
        int i2 = this.J.get(i, -1);
        if (i2 != -1) {
            return i2;
        }
        int b = recycler.b(i);
        if (b == -1) {
            Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i);
            return 0;
        }
        return this.K.b(b, this.F);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.recyclerview.widget.GridLayoutManager$LayoutParams, androidx.recyclerview.widget.RecyclerView$LayoutParams] */
    /* JADX WARN: Type inference failed for: r0v2, types: [androidx.recyclerview.widget.GridLayoutManager$LayoutParams, androidx.recyclerview.widget.RecyclerView$LayoutParams] */
    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final RecyclerView.LayoutParams v(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ?? layoutParams2 = new RecyclerView.LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
            layoutParams2.e = -1;
            layoutParams2.f = 0;
            return layoutParams2;
        }
        ?? layoutParams3 = new RecyclerView.LayoutParams(layoutParams);
        layoutParams3.e = -1;
        layoutParams3.f = 0;
        return layoutParams3;
    }

    public final int v1(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (!state.g) {
            return this.K.c(i);
        }
        int i2 = this.I.get(i, -1);
        if (i2 != -1) {
            return i2;
        }
        int b = recycler.b(i);
        if (b == -1) {
            Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i);
            return 1;
        }
        return this.K.c(b);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int w0(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        y1();
        r1();
        return super.w0(i, recycler, state);
    }

    public final void w1(int i, View view, boolean z) {
        int i2;
        int i3;
        boolean E0;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        Rect rect = layoutParams.b;
        int i4 = rect.top + rect.bottom + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
        int i5 = rect.left + rect.right + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
        int s1 = s1(layoutParams.e, layoutParams.f);
        if (this.p == 1) {
            i3 = RecyclerView.LayoutManager.y(false, s1, i, i5, ((ViewGroup.MarginLayoutParams) layoutParams).width);
            i2 = RecyclerView.LayoutManager.y(true, this.r.l(), this.m, i4, ((ViewGroup.MarginLayoutParams) layoutParams).height);
        } else {
            int y = RecyclerView.LayoutManager.y(false, s1, i, i4, ((ViewGroup.MarginLayoutParams) layoutParams).height);
            int y2 = RecyclerView.LayoutManager.y(true, this.r.l(), this.l, i5, ((ViewGroup.MarginLayoutParams) layoutParams).width);
            i2 = y;
            i3 = y2;
        }
        RecyclerView.LayoutParams layoutParams2 = (RecyclerView.LayoutParams) view.getLayoutParams();
        if (z) {
            E0 = G0(view, i3, i2, layoutParams2);
        } else {
            E0 = E0(view, i3, i2, layoutParams2);
        }
        if (E0) {
            view.measure(i3, i2);
        }
    }

    public final void x1(int i) {
        if (i == this.F) {
            return;
        }
        this.E = true;
        if (i >= 1) {
            this.F = i;
            this.K.d();
            v0();
            return;
        }
        throw new IllegalArgumentException(a.e(i, "Span count should be at least 1. Provided "));
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int y0(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        y1();
        r1();
        return super.y0(i, recycler, state);
    }

    public final void y1() {
        int J;
        int M;
        if (this.p == 1) {
            J = this.n - L();
            M = K();
        } else {
            J = this.o - J();
            M = M();
        }
        q1(J - M);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int z(RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (this.p == 1) {
            return this.F;
        }
        if (state.b() < 1) {
            return 0;
        }
        return t1(state.b() - 1, recycler, state) + 1;
    }

    public GridLayoutManager(int i, int i2) {
        super(1);
        this.E = false;
        this.F = -1;
        this.I = new SparseIntArray();
        this.J = new SparseIntArray();
        this.K = new SpanSizeLookup();
        this.L = new Rect();
        x1(i);
    }

    public GridLayoutManager(int i) {
        super(1);
        this.E = false;
        this.F = -1;
        this.I = new SparseIntArray();
        this.J = new SparseIntArray();
        this.K = new SpanSizeLookup();
        this.L = new Rect();
        x1(i);
    }
}
