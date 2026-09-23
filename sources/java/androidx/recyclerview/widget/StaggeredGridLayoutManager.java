package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.a;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.annotation.RestrictTo;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.GapWorker;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.WeakHashMap;
import kotlin.jvm.internal.IntCompanionObject;

/* loaded from: classes.dex */
public class StaggeredGridLayoutManager extends RecyclerView.LayoutManager implements RecyclerView.SmoothScroller.ScrollVectorProvider {
    public final LazySpanLookup B;
    public final int C;
    public boolean D;
    public boolean E;
    public SavedState F;
    public final Rect G;
    public final AnchorInfo H;
    public final boolean I;
    public int[] J;
    public final Runnable K;
    public final int p;
    public final Span[] q;
    public final OrientationHelper r;
    public final OrientationHelper s;
    public final int t;
    public int u;
    public final LayoutState v;
    public boolean w;
    public final BitSet y;
    public boolean x = false;
    public int z = -1;
    public int A = IntCompanionObject.MIN_VALUE;

    /* loaded from: classes.dex */
    public class AnchorInfo {

        /* renamed from: a, reason: collision with root package name */
        public int f1595a;
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public boolean f1596c;
        public boolean d;
        public boolean e;
        public int[] f;

        public AnchorInfo() {
            a();
        }

        public final void a() {
            this.f1595a = -1;
            this.b = IntCompanionObject.MIN_VALUE;
            this.f1596c = false;
            this.d = false;
            this.e = false;
            int[] iArr = this.f;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
        }
    }

    /* loaded from: classes.dex */
    public static class LayoutParams extends RecyclerView.LayoutParams {
        public Span e;
    }

    /* loaded from: classes.dex */
    public static class LazySpanLookup {

        /* renamed from: a, reason: collision with root package name */
        public int[] f1597a;
        public ArrayList b;

        @SuppressLint({"BanParcelableUsage"})
        /* loaded from: classes.dex */
        public static class FullSpanItem implements Parcelable {
            public static final Parcelable.Creator<FullSpanItem> CREATOR = new Object();

            /* renamed from: c, reason: collision with root package name */
            public int f1598c;
            public int f;
            public int[] g;
            public boolean h;

            /* renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem$1, reason: invalid class name */
            /* loaded from: classes.dex */
            public class AnonymousClass1 implements Parcelable.Creator<FullSpanItem> {
                /* JADX WARN: Type inference failed for: r0v0, types: [androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem, java.lang.Object] */
                @Override // android.os.Parcelable.Creator
                public final FullSpanItem createFromParcel(Parcel parcel) {
                    ?? obj = new Object();
                    obj.f1598c = parcel.readInt();
                    obj.f = parcel.readInt();
                    boolean z = true;
                    if (parcel.readInt() != 1) {
                        z = false;
                    }
                    obj.h = z;
                    int readInt = parcel.readInt();
                    if (readInt > 0) {
                        int[] iArr = new int[readInt];
                        obj.g = iArr;
                        parcel.readIntArray(iArr);
                    }
                    return obj;
                }

                @Override // android.os.Parcelable.Creator
                public final FullSpanItem[] newArray(int i) {
                    return new FullSpanItem[i];
                }
            }

            @Override // android.os.Parcelable
            public final int describeContents() {
                return 0;
            }

            public final String toString() {
                return "FullSpanItem{mPosition=" + this.f1598c + ", mGapDir=" + this.f + ", mHasUnwantedGapAfter=" + this.h + ", mGapPerSpan=" + Arrays.toString(this.g) + '}';
            }

            @Override // android.os.Parcelable
            public final void writeToParcel(Parcel parcel, int i) {
                parcel.writeInt(this.f1598c);
                parcel.writeInt(this.f);
                parcel.writeInt(this.h ? 1 : 0);
                int[] iArr = this.g;
                if (iArr != null && iArr.length > 0) {
                    parcel.writeInt(iArr.length);
                    parcel.writeIntArray(this.g);
                } else {
                    parcel.writeInt(0);
                }
            }
        }

        public final void a() {
            int[] iArr = this.f1597a;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            this.b = null;
        }

        public final void b(int i) {
            int[] iArr = this.f1597a;
            if (iArr == null) {
                int[] iArr2 = new int[Math.max(i, 10) + 1];
                this.f1597a = iArr2;
                Arrays.fill(iArr2, -1);
            } else if (i >= iArr.length) {
                int length = iArr.length;
                while (length <= i) {
                    length *= 2;
                }
                int[] iArr3 = new int[length];
                this.f1597a = iArr3;
                System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
                int[] iArr4 = this.f1597a;
                Arrays.fill(iArr4, iArr.length, iArr4.length, -1);
            }
        }

        public final void c(int i, int i2) {
            int[] iArr = this.f1597a;
            if (iArr != null && i < iArr.length) {
                int i3 = i + i2;
                b(i3);
                int[] iArr2 = this.f1597a;
                System.arraycopy(iArr2, i, iArr2, i3, (iArr2.length - i) - i2);
                Arrays.fill(this.f1597a, i, i3, -1);
                ArrayList arrayList = this.b;
                if (arrayList != null) {
                    for (int size = arrayList.size() - 1; size >= 0; size--) {
                        FullSpanItem fullSpanItem = (FullSpanItem) this.b.get(size);
                        int i4 = fullSpanItem.f1598c;
                        if (i4 >= i) {
                            fullSpanItem.f1598c = i4 + i2;
                        }
                    }
                }
            }
        }

        public final void d(int i, int i2) {
            int[] iArr = this.f1597a;
            if (iArr != null && i < iArr.length) {
                int i3 = i + i2;
                b(i3);
                int[] iArr2 = this.f1597a;
                System.arraycopy(iArr2, i3, iArr2, i, (iArr2.length - i) - i2);
                int[] iArr3 = this.f1597a;
                Arrays.fill(iArr3, iArr3.length - i2, iArr3.length, -1);
                ArrayList arrayList = this.b;
                if (arrayList != null) {
                    for (int size = arrayList.size() - 1; size >= 0; size--) {
                        FullSpanItem fullSpanItem = (FullSpanItem) this.b.get(size);
                        int i4 = fullSpanItem.f1598c;
                        if (i4 >= i) {
                            if (i4 < i3) {
                                this.b.remove(size);
                            } else {
                                fullSpanItem.f1598c = i4 - i2;
                            }
                        }
                    }
                }
            }
        }
    }

    @SuppressLint({"BanParcelableUsage"})
    @RestrictTo
    /* loaded from: classes.dex */
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Object();

        /* renamed from: c, reason: collision with root package name */
        public int f1599c;
        public int f;
        public int g;
        public int[] h;
        public int i;
        public int[] j;
        public ArrayList k;
        public boolean l;
        public boolean m;
        public boolean n;

        /* renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$SavedState$1, reason: invalid class name */
        /* loaded from: classes.dex */
        public class AnonymousClass1 implements Parcelable.Creator<SavedState> {
            /* JADX WARN: Type inference failed for: r0v0, types: [androidx.recyclerview.widget.StaggeredGridLayoutManager$SavedState, java.lang.Object] */
            @Override // android.os.Parcelable.Creator
            public final SavedState createFromParcel(Parcel parcel) {
                boolean z;
                boolean z2;
                ?? obj = new Object();
                obj.f1599c = parcel.readInt();
                obj.f = parcel.readInt();
                int readInt = parcel.readInt();
                obj.g = readInt;
                if (readInt > 0) {
                    int[] iArr = new int[readInt];
                    obj.h = iArr;
                    parcel.readIntArray(iArr);
                }
                int readInt2 = parcel.readInt();
                obj.i = readInt2;
                if (readInt2 > 0) {
                    int[] iArr2 = new int[readInt2];
                    obj.j = iArr2;
                    parcel.readIntArray(iArr2);
                }
                boolean z3 = false;
                if (parcel.readInt() == 1) {
                    z = true;
                } else {
                    z = false;
                }
                obj.l = z;
                if (parcel.readInt() == 1) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                obj.m = z2;
                if (parcel.readInt() == 1) {
                    z3 = true;
                }
                obj.n = z3;
                obj.k = parcel.readArrayList(LazySpanLookup.FullSpanItem.class.getClassLoader());
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
            parcel.writeInt(this.f1599c);
            parcel.writeInt(this.f);
            parcel.writeInt(this.g);
            if (this.g > 0) {
                parcel.writeIntArray(this.h);
            }
            parcel.writeInt(this.i);
            if (this.i > 0) {
                parcel.writeIntArray(this.j);
            }
            parcel.writeInt(this.l ? 1 : 0);
            parcel.writeInt(this.m ? 1 : 0);
            parcel.writeInt(this.n ? 1 : 0);
            parcel.writeList(this.k);
        }
    }

    /* loaded from: classes.dex */
    public class Span {

        /* renamed from: a, reason: collision with root package name */
        public final ArrayList f1600a = new ArrayList();
        public int b = IntCompanionObject.MIN_VALUE;

        /* renamed from: c, reason: collision with root package name */
        public int f1601c = IntCompanionObject.MIN_VALUE;
        public int d = 0;
        public final int e;

        public Span(int i) {
            this.e = i;
        }

        public final void a() {
            View view = (View) a.c(1, this.f1600a);
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            this.f1601c = StaggeredGridLayoutManager.this.r.b(view);
            layoutParams.getClass();
        }

        public final void b() {
            this.f1600a.clear();
            this.b = IntCompanionObject.MIN_VALUE;
            this.f1601c = IntCompanionObject.MIN_VALUE;
            this.d = 0;
        }

        public final int c() {
            boolean z = StaggeredGridLayoutManager.this.w;
            ArrayList arrayList = this.f1600a;
            if (z) {
                return e(arrayList.size() - 1, -1);
            }
            return e(0, arrayList.size());
        }

        public final int d() {
            boolean z = StaggeredGridLayoutManager.this.w;
            ArrayList arrayList = this.f1600a;
            if (z) {
                return e(0, arrayList.size());
            }
            return e(arrayList.size() - 1, -1);
        }

        public final int e(int i, int i2) {
            int i3;
            boolean z;
            StaggeredGridLayoutManager staggeredGridLayoutManager = StaggeredGridLayoutManager.this;
            int k = staggeredGridLayoutManager.r.k();
            int g = staggeredGridLayoutManager.r.g();
            if (i2 > i) {
                i3 = 1;
            } else {
                i3 = -1;
            }
            while (i != i2) {
                View view = (View) this.f1600a.get(i);
                int e = staggeredGridLayoutManager.r.e(view);
                int b = staggeredGridLayoutManager.r.b(view);
                boolean z2 = false;
                if (e <= g) {
                    z = true;
                } else {
                    z = false;
                }
                if (b >= k) {
                    z2 = true;
                }
                if (z && z2 && (e < k || b > g)) {
                    return RecyclerView.LayoutManager.N(view);
                }
                i += i3;
            }
            return -1;
        }

        public final int f(int i) {
            int i2 = this.f1601c;
            if (i2 != Integer.MIN_VALUE) {
                return i2;
            }
            if (this.f1600a.size() == 0) {
                return i;
            }
            a();
            return this.f1601c;
        }

        public final View g(int i, int i2) {
            StaggeredGridLayoutManager staggeredGridLayoutManager = StaggeredGridLayoutManager.this;
            ArrayList arrayList = this.f1600a;
            View view = null;
            if (i2 == -1) {
                int size = arrayList.size();
                int i3 = 0;
                while (i3 < size) {
                    View view2 = (View) arrayList.get(i3);
                    if ((staggeredGridLayoutManager.w && RecyclerView.LayoutManager.N(view2) <= i) || ((!staggeredGridLayoutManager.w && RecyclerView.LayoutManager.N(view2) >= i) || !view2.hasFocusable())) {
                        break;
                    }
                    i3++;
                    view = view2;
                }
                return view;
            }
            int size2 = arrayList.size() - 1;
            while (size2 >= 0) {
                View view3 = (View) arrayList.get(size2);
                if ((staggeredGridLayoutManager.w && RecyclerView.LayoutManager.N(view3) >= i) || ((!staggeredGridLayoutManager.w && RecyclerView.LayoutManager.N(view3) <= i) || !view3.hasFocusable())) {
                    break;
                }
                size2--;
                view = view3;
            }
            return view;
        }

        public final int h(int i) {
            int i2 = this.b;
            if (i2 != Integer.MIN_VALUE) {
                return i2;
            }
            ArrayList arrayList = this.f1600a;
            if (arrayList.size() == 0) {
                return i;
            }
            View view = (View) arrayList.get(0);
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            this.b = StaggeredGridLayoutManager.this.r.e(view);
            layoutParams.getClass();
            return this.b;
        }
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup] */
    /* JADX WARN: Type inference failed for: r5v3, types: [androidx.recyclerview.widget.LayoutState, java.lang.Object] */
    public StaggeredGridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        this.p = -1;
        this.w = false;
        ?? obj = new Object();
        this.B = obj;
        this.C = 2;
        this.G = new Rect();
        this.H = new AnchorInfo();
        this.I = true;
        this.K = new Runnable() { // from class: androidx.recyclerview.widget.StaggeredGridLayoutManager.1
            @Override // java.lang.Runnable
            public final void run() {
                StaggeredGridLayoutManager.this.K0();
            }
        };
        RecyclerView.LayoutManager.Properties O = RecyclerView.LayoutManager.O(context, attributeSet, i, i2);
        int i3 = O.f1571a;
        if (i3 != 0 && i3 != 1) {
            throw new IllegalArgumentException("invalid orientation.");
        }
        d(null);
        if (i3 != this.t) {
            this.t = i3;
            OrientationHelper orientationHelper = this.r;
            this.r = this.s;
            this.s = orientationHelper;
            v0();
        }
        int i4 = O.b;
        d(null);
        if (i4 != this.p) {
            obj.a();
            v0();
            this.p = i4;
            this.y = new BitSet(this.p);
            this.q = new Span[this.p];
            for (int i5 = 0; i5 < this.p; i5++) {
                this.q[i5] = new Span(i5);
            }
            v0();
        }
        boolean z = O.f1572c;
        d(null);
        SavedState savedState = this.F;
        if (savedState != null && savedState.l != z) {
            savedState.l = z;
        }
        this.w = z;
        v0();
        ?? obj2 = new Object();
        obj2.f1540a = true;
        obj2.f = 0;
        obj2.g = 0;
        this.v = obj2;
        this.r = OrientationHelper.a(this, this.t);
        this.s = OrientationHelper.a(this, 1 - this.t);
    }

    public static int k1(int i, int i2, int i3) {
        int mode;
        if ((i2 == 0 && i3 == 0) || ((mode = View.MeasureSpec.getMode(i)) != Integer.MIN_VALUE && mode != 1073741824)) {
            return i;
        }
        return View.MeasureSpec.makeMeasureSpec(Math.max(0, (View.MeasureSpec.getSize(i) - i2) - i3), mode);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void B0(Rect rect, int i, int i2) {
        int i3;
        int i4;
        int L = L() + K();
        int J = J() + M();
        int i5 = this.t;
        int i6 = this.p;
        if (i5 == 1) {
            int height = rect.height() + J;
            RecyclerView recyclerView = this.b;
            WeakHashMap weakHashMap = ViewCompat.f792a;
            i4 = RecyclerView.LayoutManager.i(i2, height, recyclerView.getMinimumHeight());
            i3 = RecyclerView.LayoutManager.i(i, (this.u * i6) + L, this.b.getMinimumWidth());
        } else {
            int width = rect.width() + L;
            RecyclerView recyclerView2 = this.b;
            WeakHashMap weakHashMap2 = ViewCompat.f792a;
            i3 = RecyclerView.LayoutManager.i(i, width, recyclerView2.getMinimumWidth());
            i4 = RecyclerView.LayoutManager.i(i2, (this.u * i6) + J, this.b.getMinimumHeight());
        }
        this.b.setMeasuredDimension(i3, i4);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void H0(int i, RecyclerView recyclerView) {
        LinearSmoothScroller linearSmoothScroller = new LinearSmoothScroller(recyclerView.getContext());
        linearSmoothScroller.f1582a = i;
        I0(linearSmoothScroller);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean J0() {
        if (this.F == null) {
            return true;
        }
        return false;
    }

    public final boolean K0() {
        int R0;
        if (x() != 0 && this.C != 0 && this.g) {
            if (this.x) {
                R0 = S0();
                R0();
            } else {
                R0 = R0();
                S0();
            }
            if (R0 == 0 && W0() != null) {
                this.B.a();
                this.f = true;
                v0();
                return true;
            }
        }
        return false;
    }

    public final int L0(RecyclerView.State state) {
        if (x() == 0) {
            return 0;
        }
        boolean z = !this.I;
        return ScrollbarHelper.b(state, this.r, O0(z), N0(z), this, this.I, this.x);
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0259, code lost:
    
        c1(r20, r3);
     */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v24 */
    /* JADX WARN: Type inference failed for: r8v3, types: [int, boolean] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int M0(androidx.recyclerview.widget.RecyclerView.Recycler r20, androidx.recyclerview.widget.LayoutState r21, androidx.recyclerview.widget.RecyclerView.State r22) {
        /*
            Method dump skipped, instructions count: 657
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.M0(androidx.recyclerview.widget.RecyclerView$Recycler, androidx.recyclerview.widget.LayoutState, androidx.recyclerview.widget.RecyclerView$State):int");
    }

    public final View N0(boolean z) {
        int k = this.r.k();
        int g = this.r.g();
        View view = null;
        for (int x = x() - 1; x >= 0; x--) {
            View w = w(x);
            int e = this.r.e(w);
            int b = this.r.b(w);
            if (b > k && e < g) {
                if (b > g && z) {
                    if (view == null) {
                        view = w;
                    }
                } else {
                    return w;
                }
            }
        }
        return view;
    }

    public final View O0(boolean z) {
        int k = this.r.k();
        int g = this.r.g();
        int x = x();
        View view = null;
        for (int i = 0; i < x; i++) {
            View w = w(i);
            int e = this.r.e(w);
            if (this.r.b(w) > k && e < g) {
                if (e < k && z) {
                    if (view == null) {
                        view = w;
                    }
                } else {
                    return w;
                }
            }
        }
        return view;
    }

    public final void P0(RecyclerView.Recycler recycler, RecyclerView.State state, boolean z) {
        int g;
        int T0 = T0(IntCompanionObject.MIN_VALUE);
        if (T0 != Integer.MIN_VALUE && (g = this.r.g() - T0) > 0) {
            int i = g - (-g1(-g, recycler, state));
            if (z && i > 0) {
                this.r.o(i);
            }
        }
    }

    public final void Q0(RecyclerView.Recycler recycler, RecyclerView.State state, boolean z) {
        int k;
        int U0 = U0(Integer.MAX_VALUE);
        if (U0 != Integer.MAX_VALUE && (k = U0 - this.r.k()) > 0) {
            int g1 = k - g1(k, recycler, state);
            if (z && g1 > 0) {
                this.r.o(-g1);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean R() {
        if (this.C != 0) {
            return true;
        }
        return false;
    }

    public final int R0() {
        if (x() == 0) {
            return 0;
        }
        return RecyclerView.LayoutManager.N(w(0));
    }

    public final int S0() {
        int x = x();
        if (x == 0) {
            return 0;
        }
        return RecyclerView.LayoutManager.N(w(x - 1));
    }

    public final int T0(int i) {
        int f = this.q[0].f(i);
        for (int i2 = 1; i2 < this.p; i2++) {
            int f2 = this.q[i2].f(i);
            if (f2 > f) {
                f = f2;
            }
        }
        return f;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void U(int i) {
        super.U(i);
        for (int i2 = 0; i2 < this.p; i2++) {
            Span span = this.q[i2];
            int i3 = span.b;
            if (i3 != Integer.MIN_VALUE) {
                span.b = i3 + i;
            }
            int i4 = span.f1601c;
            if (i4 != Integer.MIN_VALUE) {
                span.f1601c = i4 + i;
            }
        }
    }

    public final int U0(int i) {
        int h = this.q[0].h(i);
        for (int i2 = 1; i2 < this.p; i2++) {
            int h2 = this.q[i2].h(i);
            if (h2 < h) {
                h = h2;
            }
        }
        return h;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void V(int i) {
        super.V(i);
        for (int i2 = 0; i2 < this.p; i2++) {
            Span span = this.q[i2];
            int i3 = span.b;
            if (i3 != Integer.MIN_VALUE) {
                span.b = i3 + i;
            }
            int i4 = span.f1601c;
            if (i4 != Integer.MIN_VALUE) {
                span.f1601c = i4 + i;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:56:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00ae  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void V0(int r10, int r11, int r12) {
        /*
            r9 = this;
            boolean r0 = r9.x
            if (r0 == 0) goto L9
            int r0 = r9.S0()
            goto Ld
        L9:
            int r0 = r9.R0()
        Ld:
            r1 = 8
            if (r12 != r1) goto L1b
            if (r10 >= r11) goto L17
            int r2 = r11 + 1
        L15:
            r3 = r10
            goto L1e
        L17:
            int r2 = r10 + 1
            r3 = r11
            goto L1e
        L1b:
            int r2 = r10 + r11
            goto L15
        L1e:
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r4 = r9.B
            int[] r5 = r4.f1597a
            if (r5 != 0) goto L26
            goto L9a
        L26:
            int r5 = r5.length
            if (r3 < r5) goto L2b
            goto L9a
        L2b:
            java.util.ArrayList r5 = r4.b
            r6 = -1
            if (r5 != 0) goto L32
        L30:
            r5 = r6
            goto L80
        L32:
            if (r5 != 0) goto L35
            goto L4d
        L35:
            int r5 = r5.size()
            int r5 = r5 + (-1)
        L3b:
            if (r5 < 0) goto L4d
            java.util.ArrayList r7 = r4.b
            java.lang.Object r7 = r7.get(r5)
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem r7 = (androidx.recyclerview.widget.StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem) r7
            int r8 = r7.f1598c
            if (r8 != r3) goto L4a
            goto L4e
        L4a:
            int r5 = r5 + (-1)
            goto L3b
        L4d:
            r7 = 0
        L4e:
            if (r7 == 0) goto L55
            java.util.ArrayList r5 = r4.b
            r5.remove(r7)
        L55:
            java.util.ArrayList r5 = r4.b
            int r5 = r5.size()
            r7 = 0
        L5c:
            if (r7 >= r5) goto L6e
            java.util.ArrayList r8 = r4.b
            java.lang.Object r8 = r8.get(r7)
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem r8 = (androidx.recyclerview.widget.StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem) r8
            int r8 = r8.f1598c
            if (r8 < r3) goto L6b
            goto L6f
        L6b:
            int r7 = r7 + 1
            goto L5c
        L6e:
            r7 = r6
        L6f:
            if (r7 == r6) goto L30
            java.util.ArrayList r5 = r4.b
            java.lang.Object r5 = r5.get(r7)
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem r5 = (androidx.recyclerview.widget.StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem) r5
            java.util.ArrayList r8 = r4.b
            r8.remove(r7)
            int r5 = r5.f1598c
        L80:
            if (r5 != r6) goto L8c
            int[] r5 = r4.f1597a
            int r7 = r5.length
            java.util.Arrays.fill(r5, r3, r7, r6)
            int[] r5 = r4.f1597a
            int r5 = r5.length
            goto L9a
        L8c:
            int r5 = r5 + 1
            int[] r7 = r4.f1597a
            int r7 = r7.length
            int r5 = java.lang.Math.min(r5, r7)
            int[] r7 = r4.f1597a
            java.util.Arrays.fill(r7, r3, r5, r6)
        L9a:
            r5 = 1
            if (r12 == r5) goto Lae
            r6 = 2
            if (r12 == r6) goto Laa
            if (r12 == r1) goto La3
            goto Lb1
        La3:
            r4.d(r10, r5)
            r4.c(r11, r5)
            goto Lb1
        Laa:
            r4.d(r10, r11)
            goto Lb1
        Lae:
            r4.c(r10, r11)
        Lb1:
            if (r2 > r0) goto Lb4
            goto Lc6
        Lb4:
            boolean r10 = r9.x
            if (r10 == 0) goto Lbd
            int r10 = r9.R0()
            goto Lc1
        Lbd:
            int r10 = r9.S0()
        Lc1:
            if (r3 > r10) goto Lc6
            r9.v0()
        Lc6:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.V0(int, int, int):void");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void W() {
        this.B.a();
        for (int i = 0; i < this.p; i++) {
            this.q[i].b();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00f8 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x002c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00f0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View W0() {
        /*
            Method dump skipped, instructions count: 251
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.W0():android.view.View");
    }

    public final boolean X0() {
        if (I() == 1) {
            return true;
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void Y(RecyclerView recyclerView) {
        RecyclerView recyclerView2 = this.b;
        if (recyclerView2 != null) {
            recyclerView2.removeCallbacks(this.K);
        }
        for (int i = 0; i < this.p; i++) {
            this.q[i].b();
        }
        recyclerView.requestLayout();
    }

    public final void Y0(View view, int i, int i2) {
        Rect rect = this.G;
        e(rect, view);
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int k1 = k1(i, ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + rect.left, ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + rect.right);
        int k12 = k1(i2, ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + rect.top, ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin + rect.bottom);
        if (E0(view, k1, k12, layoutParams)) {
            view.measure(k1, k12);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:111:0x004f, code lost:
    
        if (r8.t == 1) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x0055, code lost:
    
        if (r8.t == 0) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x0061, code lost:
    
        if (X0() == false) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x006d, code lost:
    
        if (X0() == false) goto L37;
     */
    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View Z(android.view.View r9, int r10, androidx.recyclerview.widget.RecyclerView.Recycler r11, androidx.recyclerview.widget.RecyclerView.State r12) {
        /*
            Method dump skipped, instructions count: 350
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.Z(android.view.View, int, androidx.recyclerview.widget.RecyclerView$Recycler, androidx.recyclerview.widget.RecyclerView$State):android.view.View");
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x01aa, code lost:
    
        r11 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x01a6, code lost:
    
        if (r11 != r16.x) goto L108;
     */
    /* JADX WARN: Code restructure failed: missing block: B:261:0x0414, code lost:
    
        if (K0() != false) goto L255;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0198, code lost:
    
        if (r16.x != false) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x01a8, code lost:
    
        r11 = false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void Z0(androidx.recyclerview.widget.RecyclerView.Recycler r17, androidx.recyclerview.widget.RecyclerView.State r18, boolean r19) {
        /*
            Method dump skipped, instructions count: 1074
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.Z0(androidx.recyclerview.widget.RecyclerView$Recycler, androidx.recyclerview.widget.RecyclerView$State, boolean):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0019, code lost:
    
        if (r4 != r3.x) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x000a, code lost:
    
        if (r3.x != false) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x000c, code lost:
    
        r1 = 1;
     */
    @Override // androidx.recyclerview.widget.RecyclerView.SmoothScroller.ScrollVectorProvider
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.PointF a(int r4) {
        /*
            r3 = this;
            int r0 = r3.x()
            r1 = -1
            r2 = 1
            if (r0 != 0) goto Le
            boolean r4 = r3.x
            if (r4 == 0) goto L1b
        Lc:
            r1 = r2
            goto L1b
        Le:
            int r0 = r3.R0()
            if (r4 >= r0) goto L16
            r4 = r2
            goto L17
        L16:
            r4 = 0
        L17:
            boolean r0 = r3.x
            if (r4 == r0) goto Lc
        L1b:
            android.graphics.PointF r4 = new android.graphics.PointF
            r4.<init>()
            if (r1 != 0) goto L24
            r4 = 0
            return r4
        L24:
            int r0 = r3.t
            r2 = 0
            if (r0 != 0) goto L2f
            float r0 = (float) r1
            r4.x = r0
            r4.y = r2
            return r4
        L2f:
            r4.x = r2
            float r0 = (float) r1
            r4.y = r0
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.a(int):android.graphics.PointF");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void a0(AccessibilityEvent accessibilityEvent) {
        super.a0(accessibilityEvent);
        if (x() > 0) {
            View O0 = O0(false);
            View N0 = N0(false);
            if (O0 != null && N0 != null) {
                int N = RecyclerView.LayoutManager.N(O0);
                int N2 = RecyclerView.LayoutManager.N(N0);
                if (N < N2) {
                    accessibilityEvent.setFromIndex(N);
                    accessibilityEvent.setToIndex(N2);
                } else {
                    accessibilityEvent.setFromIndex(N2);
                    accessibilityEvent.setToIndex(N);
                }
            }
        }
    }

    public final boolean a1(int i) {
        boolean z;
        boolean z2;
        boolean z3;
        if (this.t == 0) {
            if (i == -1) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (z3 == this.x) {
                return false;
            }
            return true;
        }
        if (i == -1) {
            z = true;
        } else {
            z = false;
        }
        if (z == this.x) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2 != X0()) {
            return false;
        }
        return true;
    }

    public final void b1(int i, RecyclerView.State state) {
        int R0;
        int i2;
        if (i > 0) {
            R0 = S0();
            i2 = 1;
        } else {
            R0 = R0();
            i2 = -1;
        }
        LayoutState layoutState = this.v;
        layoutState.f1540a = true;
        i1(R0, state);
        h1(i2);
        layoutState.f1541c = R0 + layoutState.d;
        layoutState.b = Math.abs(i);
    }

    public final void c1(RecyclerView.Recycler recycler, LayoutState layoutState) {
        int min;
        int min2;
        if (layoutState.f1540a && !layoutState.i) {
            if (layoutState.b == 0) {
                if (layoutState.e == -1) {
                    d1(layoutState.g, recycler);
                    return;
                } else {
                    e1(layoutState.f, recycler);
                    return;
                }
            }
            int i = 1;
            if (layoutState.e == -1) {
                int i2 = layoutState.f;
                int h = this.q[0].h(i2);
                while (i < this.p) {
                    int h2 = this.q[i].h(i2);
                    if (h2 > h) {
                        h = h2;
                    }
                    i++;
                }
                int i3 = i2 - h;
                if (i3 < 0) {
                    min2 = layoutState.g;
                } else {
                    min2 = layoutState.g - Math.min(i3, layoutState.b);
                }
                d1(min2, recycler);
                return;
            }
            int i4 = layoutState.g;
            int f = this.q[0].f(i4);
            while (i < this.p) {
                int f2 = this.q[i].f(i4);
                if (f2 < f) {
                    f = f2;
                }
                i++;
            }
            int i5 = f - layoutState.g;
            if (i5 < 0) {
                min = layoutState.f;
            } else {
                min = Math.min(i5, layoutState.b) + layoutState.f;
            }
            e1(min, recycler);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void d(String str) {
        if (this.F == null) {
            super.d(str);
        }
    }

    public final void d1(int i, RecyclerView.Recycler recycler) {
        for (int x = x() - 1; x >= 0; x--) {
            View w = w(x);
            if (this.r.e(w) >= i && this.r.n(w) >= i) {
                LayoutParams layoutParams = (LayoutParams) w.getLayoutParams();
                layoutParams.getClass();
                if (layoutParams.e.f1600a.size() != 1) {
                    Span span = layoutParams.e;
                    ArrayList arrayList = span.f1600a;
                    int size = arrayList.size();
                    View view = (View) arrayList.remove(size - 1);
                    LayoutParams layoutParams2 = (LayoutParams) view.getLayoutParams();
                    layoutParams2.e = null;
                    if (layoutParams2.f1573a.j() || layoutParams2.f1573a.m()) {
                        span.d -= StaggeredGridLayoutManager.this.r.c(view);
                    }
                    if (size == 1) {
                        span.b = IntCompanionObject.MIN_VALUE;
                    }
                    span.f1601c = IntCompanionObject.MIN_VALUE;
                    r0(w, recycler);
                } else {
                    return;
                }
            } else {
                return;
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void e0(RecyclerView recyclerView, int i, int i2) {
        V0(i, i2, 1);
    }

    public final void e1(int i, RecyclerView.Recycler recycler) {
        while (x() > 0) {
            View w = w(0);
            if (this.r.b(w) <= i && this.r.m(w) <= i) {
                LayoutParams layoutParams = (LayoutParams) w.getLayoutParams();
                layoutParams.getClass();
                if (layoutParams.e.f1600a.size() != 1) {
                    Span span = layoutParams.e;
                    ArrayList arrayList = span.f1600a;
                    View view = (View) arrayList.remove(0);
                    LayoutParams layoutParams2 = (LayoutParams) view.getLayoutParams();
                    layoutParams2.e = null;
                    if (arrayList.size() == 0) {
                        span.f1601c = IntCompanionObject.MIN_VALUE;
                    }
                    if (layoutParams2.f1573a.j() || layoutParams2.f1573a.m()) {
                        span.d -= StaggeredGridLayoutManager.this.r.c(view);
                    }
                    span.b = IntCompanionObject.MIN_VALUE;
                    r0(w, recycler);
                } else {
                    return;
                }
            } else {
                return;
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean f() {
        if (this.t == 0) {
            return true;
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void f0() {
        this.B.a();
        v0();
    }

    public final void f1() {
        if (this.t != 1 && X0()) {
            this.x = !this.w;
        } else {
            this.x = this.w;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean g() {
        if (this.t == 1) {
            return true;
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void g0(int i, int i2) {
        V0(i, i2, 8);
    }

    public final int g1(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (x() == 0 || i == 0) {
            return 0;
        }
        b1(i, state);
        LayoutState layoutState = this.v;
        int M0 = M0(recycler, layoutState, state);
        if (layoutState.b >= M0) {
            if (i < 0) {
                i = -M0;
            } else {
                i = M0;
            }
        }
        this.r.o(-i);
        this.D = this.x;
        layoutState.b = 0;
        c1(recycler, layoutState);
        return i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean h(RecyclerView.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void h0(RecyclerView recyclerView, int i, int i2) {
        V0(i, i2, 2);
    }

    public final void h1(int i) {
        boolean z;
        LayoutState layoutState = this.v;
        layoutState.e = i;
        boolean z2 = this.x;
        int i2 = 1;
        if (i == -1) {
            z = true;
        } else {
            z = false;
        }
        if (z2 != z) {
            i2 = -1;
        }
        layoutState.d = i2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void i0(int i, int i2) {
        V0(i, i2, 4);
    }

    public final void i1(int i, RecyclerView.State state) {
        int i2;
        int i3;
        int i4;
        boolean z;
        LayoutState layoutState = this.v;
        boolean z2 = false;
        layoutState.b = 0;
        layoutState.f1541c = i;
        RecyclerView.SmoothScroller smoothScroller = this.e;
        if (smoothScroller != null && smoothScroller.e && (i4 = state.f1586a) != -1) {
            boolean z3 = this.x;
            if (i4 < i) {
                z = true;
            } else {
                z = false;
            }
            if (z3 == z) {
                i2 = this.r.l();
                i3 = 0;
            } else {
                i3 = this.r.l();
                i2 = 0;
            }
        } else {
            i2 = 0;
            i3 = 0;
        }
        RecyclerView recyclerView = this.b;
        if (recyclerView != null && recyclerView.l) {
            layoutState.f = this.r.k() - i3;
            layoutState.g = this.r.g() + i2;
        } else {
            layoutState.g = this.r.f() + i2;
            layoutState.f = -i3;
        }
        layoutState.h = false;
        layoutState.f1540a = true;
        if (this.r.i() == 0 && this.r.f() == 0) {
            z2 = true;
        }
        layoutState.i = z2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void j(int i, int i2, RecyclerView.State state, RecyclerView.LayoutManager.LayoutPrefetchRegistry layoutPrefetchRegistry) {
        LayoutState layoutState;
        int f;
        int i3;
        if (this.t != 0) {
            i = i2;
        }
        if (x() != 0 && i != 0) {
            b1(i, state);
            int[] iArr = this.J;
            if (iArr == null || iArr.length < this.p) {
                this.J = new int[this.p];
            }
            int i4 = 0;
            int i5 = 0;
            while (true) {
                int i6 = this.p;
                layoutState = this.v;
                if (i4 >= i6) {
                    break;
                }
                if (layoutState.d == -1) {
                    f = layoutState.f;
                    i3 = this.q[i4].h(f);
                } else {
                    f = this.q[i4].f(layoutState.g);
                    i3 = layoutState.g;
                }
                int i7 = f - i3;
                if (i7 >= 0) {
                    this.J[i5] = i7;
                    i5++;
                }
                i4++;
            }
            Arrays.sort(this.J, 0, i5);
            for (int i8 = 0; i8 < i5; i8++) {
                int i9 = layoutState.f1541c;
                if (i9 >= 0 && i9 < state.b()) {
                    ((GapWorker.LayoutPrefetchRegistryImpl) layoutPrefetchRegistry).a(layoutState.f1541c, this.J[i8]);
                    layoutState.f1541c += layoutState.d;
                } else {
                    return;
                }
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void j0(RecyclerView.Recycler recycler, RecyclerView.State state) {
        Z0(recycler, state, true);
    }

    public final void j1(Span span, int i, int i2) {
        int i3 = span.d;
        int i4 = span.e;
        if (i == -1) {
            int i5 = span.b;
            if (i5 == Integer.MIN_VALUE) {
                View view = (View) span.f1600a.get(0);
                LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
                span.b = StaggeredGridLayoutManager.this.r.e(view);
                layoutParams.getClass();
                i5 = span.b;
            }
            if (i5 + i3 <= i2) {
                this.y.set(i4, false);
                return;
            }
            return;
        }
        int i6 = span.f1601c;
        if (i6 == Integer.MIN_VALUE) {
            span.a();
            i6 = span.f1601c;
        }
        if (i6 - i3 >= i2) {
            this.y.set(i4, false);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void k0(RecyclerView.State state) {
        this.z = -1;
        this.A = IntCompanionObject.MIN_VALUE;
        this.F = null;
        this.H.a();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int l(RecyclerView.State state) {
        if (x() == 0) {
            return 0;
        }
        boolean z = !this.I;
        return ScrollbarHelper.a(state, this.r, O0(z), N0(z), this, this.I);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void l0(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            this.F = savedState;
            if (this.z != -1) {
                savedState.f1599c = -1;
                savedState.f = -1;
                savedState.h = null;
                savedState.g = 0;
                savedState.i = 0;
                savedState.j = null;
                savedState.k = null;
            }
            v0();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int m(RecyclerView.State state) {
        return L0(state);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.recyclerview.widget.StaggeredGridLayoutManager$SavedState, android.os.Parcelable, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v6, types: [androidx.recyclerview.widget.StaggeredGridLayoutManager$SavedState, android.os.Parcelable, java.lang.Object] */
    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final Parcelable m0() {
        int R0;
        View O0;
        int h;
        int k;
        int[] iArr;
        SavedState savedState = this.F;
        if (savedState != null) {
            ?? obj = new Object();
            obj.g = savedState.g;
            obj.f1599c = savedState.f1599c;
            obj.f = savedState.f;
            obj.h = savedState.h;
            obj.i = savedState.i;
            obj.j = savedState.j;
            obj.l = savedState.l;
            obj.m = savedState.m;
            obj.n = savedState.n;
            obj.k = savedState.k;
            return obj;
        }
        ?? obj2 = new Object();
        obj2.l = this.w;
        obj2.m = this.D;
        obj2.n = this.E;
        LazySpanLookup lazySpanLookup = this.B;
        if (lazySpanLookup != null && (iArr = lazySpanLookup.f1597a) != null) {
            obj2.j = iArr;
            obj2.i = iArr.length;
            obj2.k = lazySpanLookup.b;
        } else {
            obj2.i = 0;
        }
        int i = -1;
        if (x() > 0) {
            if (this.D) {
                R0 = S0();
            } else {
                R0 = R0();
            }
            obj2.f1599c = R0;
            if (this.x) {
                O0 = N0(true);
            } else {
                O0 = O0(true);
            }
            if (O0 != null) {
                i = RecyclerView.LayoutManager.N(O0);
            }
            obj2.f = i;
            int i2 = this.p;
            obj2.g = i2;
            obj2.h = new int[i2];
            for (int i3 = 0; i3 < this.p; i3++) {
                if (this.D) {
                    h = this.q[i3].f(IntCompanionObject.MIN_VALUE);
                    if (h != Integer.MIN_VALUE) {
                        k = this.r.g();
                        h -= k;
                        obj2.h[i3] = h;
                    } else {
                        obj2.h[i3] = h;
                    }
                } else {
                    h = this.q[i3].h(IntCompanionObject.MIN_VALUE);
                    if (h != Integer.MIN_VALUE) {
                        k = this.r.k();
                        h -= k;
                        obj2.h[i3] = h;
                    } else {
                        obj2.h[i3] = h;
                    }
                }
            }
            return obj2;
        }
        obj2.f1599c = -1;
        obj2.f = -1;
        obj2.g = 0;
        return obj2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int n(RecyclerView.State state) {
        if (x() == 0) {
            return 0;
        }
        boolean z = !this.I;
        return ScrollbarHelper.c(state, this.r, O0(z), N0(z), this, this.I);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void n0(int i) {
        if (i == 0) {
            K0();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int o(RecyclerView.State state) {
        if (x() == 0) {
            return 0;
        }
        boolean z = !this.I;
        return ScrollbarHelper.a(state, this.r, O0(z), N0(z), this, this.I);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int p(RecyclerView.State state) {
        return L0(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int q(RecyclerView.State state) {
        if (x() == 0) {
            return 0;
        }
        boolean z = !this.I;
        return ScrollbarHelper.c(state, this.r, O0(z), N0(z), this, this.I);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final RecyclerView.LayoutParams t() {
        if (this.t == 0) {
            return new RecyclerView.LayoutParams(-2, -1);
        }
        return new RecyclerView.LayoutParams(-1, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final RecyclerView.LayoutParams u(Context context, AttributeSet attributeSet) {
        return new RecyclerView.LayoutParams(context, attributeSet);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final RecyclerView.LayoutParams v(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new RecyclerView.LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new RecyclerView.LayoutParams(layoutParams);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int w0(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        return g1(i, recycler, state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void x0(int i) {
        SavedState savedState = this.F;
        if (savedState != null && savedState.f1599c != i) {
            savedState.h = null;
            savedState.g = 0;
            savedState.f1599c = -1;
            savedState.f = -1;
        }
        this.z = i;
        this.A = IntCompanionObject.MIN_VALUE;
        v0();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int y0(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        return g1(i, recycler, state);
    }
}
