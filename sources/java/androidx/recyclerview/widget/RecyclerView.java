package androidx.recyclerview.widget;

import android.R;
import android.animation.LayoutTransition;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.Observable;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.os.Trace;
import android.support.v4.media.a;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.OverScroller;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.collection.LongSparseArray;
import androidx.collection.SimpleArrayMap;
import androidx.core.os.TraceCompat;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.NestedScrollingChild2;
import androidx.core.view.NestedScrollingChild3;
import androidx.core.view.NestedScrollingChildHelper;
import androidx.core.view.ScrollingView;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewConfigurationCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.widget.EdgeEffectCompat;
import androidx.customview.poolingcontainer.PoolingContainer;
import androidx.customview.view.AbsSavedState;
import androidx.recyclerview.widget.AdapterHelper;
import androidx.recyclerview.widget.ChildHelper;
import androidx.recyclerview.widget.GapWorker;
import androidx.recyclerview.widget.RecyclerViewAccessibilityDelegate;
import androidx.recyclerview.widget.ViewBoundsCheck;
import androidx.recyclerview.widget.ViewInfoStore;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.api.client.googleapis.media.MediaHttpUploader;
import j$.util.DesugarCollections;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;
import kotlin.io.ConstantsKt;
import kotlin.jvm.internal.IntCompanionObject;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.LongCompanionObject;
import kotlin.uuid.Uuid;

/* loaded from: classes.dex */
public class RecyclerView extends ViewGroup implements ScrollingView, NestedScrollingChild2, NestedScrollingChild3 {
    public static boolean G0 = false;
    public static boolean H0 = false;
    public static final int[] I0 = {R.attr.nestedScrollingEnabled};
    public static final float J0 = (float) (Math.log(0.78d) / Math.log(0.9d));
    public static final boolean K0 = true;
    public static final boolean L0 = true;
    public static final boolean M0 = true;
    public static final Class[] N0;
    public static final Interpolator O0;
    public static final StretchEdgeEffectFactory P0;
    public int A;
    public final ArrayList A0;
    public boolean B;
    public final Runnable B0;
    public boolean C;
    public boolean C0;
    public boolean D;
    public int D0;
    public int E;
    public int E0;
    public boolean F;
    public final AnonymousClass4 F0;
    public final AccessibilityManager G;
    public ArrayList H;
    public boolean I;
    public boolean J;
    public int K;
    public int L;
    public EdgeEffectFactory M;
    public EdgeEffect N;
    public EdgeEffect O;
    public EdgeEffect P;
    public EdgeEffect Q;
    public ItemAnimator R;
    public int S;
    public int T;
    public VelocityTracker U;
    public int V;
    public int W;
    public int a0;
    public int b0;

    /* renamed from: c, reason: collision with root package name */
    public final float f1553c;
    public int c0;
    public OnFlingListener d0;
    public final int e0;
    public final RecyclerViewDataObserver f;
    public final int f0;
    public final Recycler g;
    public final float g0;
    public SavedState h;
    public final float h0;
    public final AdapterHelper i;
    public boolean i0;
    public final ChildHelper j;
    public final ViewFlinger j0;
    public final ViewInfoStore k;
    public GapWorker k0;
    public boolean l;
    public final GapWorker.LayoutPrefetchRegistryImpl l0;
    public final Runnable m;
    public final State m0;
    public final Rect n;
    public OnScrollListener n0;
    public final Rect o;
    public ArrayList o0;
    public final RectF p;
    public boolean p0;
    public Adapter q;
    public boolean q0;
    public LayoutManager r;
    public final ItemAnimatorRestoreListener r0;
    public RecyclerListener s;
    public boolean s0;
    public final ArrayList t;
    public RecyclerViewAccessibilityDelegate t0;
    public final ArrayList u;
    public ChildDrawingOrderCallback u0;
    public final ArrayList v;
    public final int[] v0;
    public OnItemTouchListener w;
    public NestedScrollingChildHelper w0;
    public boolean x;
    public final int[] x0;
    public boolean y;
    public final int[] y0;
    public boolean z;
    public final int[] z0;

    /* renamed from: androidx.recyclerview.widget.RecyclerView$3, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass3 implements Interpolator {
        @Override // android.animation.TimeInterpolator
        public final float getInterpolation(float f) {
            float f2 = f - 1.0f;
            return (f2 * f2 * f2 * f2 * f2) + 1.0f;
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$4, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass4 implements ViewInfoStore.ProcessCallback {
        public AnonymousClass4() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.recyclerview.widget.RecyclerView$5, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass5 implements ChildHelper.Callback {
        public AnonymousClass5() {
        }

        public final void a(View view) {
            ViewHolder M = RecyclerView.M(view);
            if (M != null) {
                int i = M.p;
                RecyclerView recyclerView = RecyclerView.this;
                if (recyclerView.Q()) {
                    M.q = i;
                    recyclerView.A0.add(M);
                } else {
                    View view2 = M.f1589a;
                    WeakHashMap weakHashMap = ViewCompat.f792a;
                    view2.setImportantForAccessibility(i);
                }
                M.p = 0;
            }
        }

        public final void b(int i) {
            RecyclerView recyclerView = RecyclerView.this;
            View childAt = recyclerView.getChildAt(i);
            if (childAt != null) {
                recyclerView.r(childAt);
                childAt.clearAnimation();
            }
            recyclerView.removeViewAt(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.recyclerview.widget.RecyclerView$6, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass6 implements AdapterHelper.Callback {
        public AnonymousClass6() {
        }

        public final void a(AdapterHelper.UpdateOp updateOp) {
            int i = updateOp.f1492a;
            RecyclerView recyclerView = RecyclerView.this;
            if (i != 1) {
                if (i != 2) {
                    if (i != 4) {
                        if (i != 8) {
                            return;
                        }
                        recyclerView.r.g0(updateOp.b, updateOp.f1493c);
                        return;
                    }
                    recyclerView.r.i0(updateOp.b, updateOp.f1493c);
                    return;
                }
                recyclerView.r.h0(recyclerView, updateOp.b, updateOp.f1493c);
                return;
            }
            recyclerView.r.e0(recyclerView, updateOp.b, updateOp.f1493c);
        }

        public final ViewHolder b(int i) {
            RecyclerView recyclerView = RecyclerView.this;
            int childCount = RecyclerView.this.getChildCount();
            int i2 = 0;
            ViewHolder viewHolder = null;
            while (true) {
                if (i2 >= childCount) {
                    break;
                }
                ViewHolder M = RecyclerView.M(RecyclerView.this.getChildAt(i2));
                if (M != null && !M.j() && M.f1590c == i) {
                    if (recyclerView.j.f1496c.contains(M.f1589a)) {
                        viewHolder = M;
                    } else {
                        viewHolder = M;
                        break;
                    }
                }
                i2++;
            }
            if (viewHolder != null) {
                if (recyclerView.j.f1496c.contains(viewHolder.f1589a)) {
                    if (RecyclerView.H0) {
                        Log.d("RecyclerView", "assuming view holder cannot be find because it is hidden");
                    }
                } else {
                    return viewHolder;
                }
            }
            return null;
        }

        public final void c(int i, int i2) {
            int i3;
            int i4;
            RecyclerView recyclerView = RecyclerView.this;
            int childCount = RecyclerView.this.getChildCount();
            int i5 = i2 + i;
            for (int i6 = 0; i6 < childCount; i6++) {
                View childAt = RecyclerView.this.getChildAt(i6);
                ViewHolder M = RecyclerView.M(childAt);
                if (M != null && !M.q() && (i4 = M.f1590c) >= i && i4 < i5) {
                    M.a(2);
                    M.a(1024);
                    ((LayoutParams) childAt.getLayoutParams()).f1574c = true;
                }
            }
            Recycler recycler = recyclerView.g;
            ArrayList arrayList = recycler.f1580c;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ViewHolder viewHolder = (ViewHolder) arrayList.get(size);
                if (viewHolder != null && (i3 = viewHolder.f1590c) >= i && i3 < i5) {
                    viewHolder.a(2);
                    recycler.h(size);
                }
            }
            recyclerView.q0 = true;
        }

        public final void d(int i, int i2) {
            RecyclerView recyclerView = RecyclerView.this;
            int childCount = RecyclerView.this.getChildCount();
            for (int i3 = 0; i3 < childCount; i3++) {
                ViewHolder M = RecyclerView.M(RecyclerView.this.getChildAt(i3));
                if (M != null && !M.q() && M.f1590c >= i) {
                    if (RecyclerView.H0) {
                        Log.d("RecyclerView", "offsetPositionRecordsForInsert attached child " + i3 + " holder " + M + " now at position " + (M.f1590c + i2));
                    }
                    M.n(i2, false);
                    recyclerView.m0.f = true;
                }
            }
            ArrayList arrayList = recyclerView.g.f1580c;
            int size = arrayList.size();
            for (int i4 = 0; i4 < size; i4++) {
                ViewHolder viewHolder = (ViewHolder) arrayList.get(i4);
                if (viewHolder != null && viewHolder.f1590c >= i) {
                    if (RecyclerView.H0) {
                        Log.d("RecyclerView", "offsetPositionRecordsForInsert cached " + i4 + " holder " + viewHolder + " now at position " + (viewHolder.f1590c + i2));
                    }
                    viewHolder.n(i2, false);
                }
            }
            recyclerView.requestLayout();
            recyclerView.p0 = true;
        }

        public final void e(int i, int i2) {
            int i3;
            int i4;
            int i5;
            int i6;
            int i7;
            int i8;
            int i9;
            int i10;
            RecyclerView recyclerView = RecyclerView.this;
            int childCount = RecyclerView.this.getChildCount();
            if (i < i2) {
                i4 = i;
                i3 = i2;
                i5 = -1;
            } else {
                i3 = i;
                i4 = i2;
                i5 = 1;
            }
            boolean z = false;
            for (int i11 = 0; i11 < childCount; i11++) {
                ViewHolder M = RecyclerView.M(RecyclerView.this.getChildAt(i11));
                if (M != null && (i10 = M.f1590c) >= i4 && i10 <= i3) {
                    if (RecyclerView.H0) {
                        Log.d("RecyclerView", "offsetPositionRecordsForMove attached child " + i11 + " holder " + M);
                    }
                    if (M.f1590c == i) {
                        M.n(i2 - i, false);
                    } else {
                        M.n(i5, false);
                    }
                    recyclerView.m0.f = true;
                }
            }
            ArrayList arrayList = recyclerView.g.f1580c;
            if (i < i2) {
                i7 = i;
                i6 = i2;
                i8 = -1;
            } else {
                i6 = i;
                i7 = i2;
                i8 = 1;
            }
            int size = arrayList.size();
            int i12 = 0;
            while (i12 < size) {
                ViewHolder viewHolder = (ViewHolder) arrayList.get(i12);
                if (viewHolder != null && (i9 = viewHolder.f1590c) >= i7 && i9 <= i6) {
                    if (i9 == i) {
                        viewHolder.n(i2 - i, z);
                    } else {
                        viewHolder.n(i8, z);
                    }
                    if (RecyclerView.H0) {
                        Log.d("RecyclerView", "offsetPositionRecordsForMove cached child " + i12 + " holder " + viewHolder);
                    }
                }
                i12++;
                z = false;
            }
            recyclerView.requestLayout();
            recyclerView.p0 = true;
        }

        public final void f(int i, int i2) {
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.T(i, i2, true);
            recyclerView.p0 = true;
            recyclerView.m0.f1587c += i2;
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$7, reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass7 {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f1559a;

        static {
            int[] iArr = new int[Adapter.StateRestorationPolicy.values().length];
            f1559a = iArr;
            try {
                iArr[2] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1559a[1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* loaded from: classes.dex */
    public static class AdapterDataObservable extends Observable<AdapterDataObserver> {
        public final boolean a() {
            return !((Observable) this).mObservers.isEmpty();
        }

        public final void b() {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((AdapterDataObserver) ((Observable) this).mObservers.get(size)).a();
            }
        }

        public final void c(int i, int i2) {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((AdapterDataObserver) ((Observable) this).mObservers.get(size)).e(i, i2);
            }
        }

        public final void d(int i, int i2) {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((AdapterDataObserver) ((Observable) this).mObservers.get(size)).c(i, i2);
            }
        }

        public final void e(int i) {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((AdapterDataObserver) ((Observable) this).mObservers.get(size)).d(i);
            }
        }

        public final void f(int i) {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((AdapterDataObserver) ((Observable) this).mObservers.get(size)).f(i);
            }
        }
    }

    /* loaded from: classes.dex */
    public interface ChildDrawingOrderCallback {
        int a(int i, int i2);
    }

    /* loaded from: classes.dex */
    public static class EdgeEffectFactory {

        @Retention(RetentionPolicy.SOURCE)
        /* loaded from: classes.dex */
        public @interface EdgeDirection {
        }

        public EdgeEffect a(RecyclerView recyclerView) {
            return new EdgeEffect(recyclerView.getContext());
        }
    }

    /* loaded from: classes.dex */
    public static abstract class ItemAnimator {

        /* renamed from: a, reason: collision with root package name */
        public ItemAnimatorRestoreListener f1563a;
        public ArrayList b;

        /* renamed from: c, reason: collision with root package name */
        public long f1564c;
        public long d;
        public long e;
        public long f;

        @Retention(RetentionPolicy.SOURCE)
        /* loaded from: classes.dex */
        public @interface AdapterChanges {
        }

        /* loaded from: classes.dex */
        public interface ItemAnimatorFinishedListener {
            void a();
        }

        /* loaded from: classes.dex */
        public interface ItemAnimatorListener {
        }

        /* loaded from: classes.dex */
        public static class ItemHolderInfo {

            /* renamed from: a, reason: collision with root package name */
            public int f1565a;
            public int b;

            public final void a(ViewHolder viewHolder) {
                View view = viewHolder.f1589a;
                this.f1565a = view.getLeft();
                this.b = view.getTop();
                view.getRight();
                view.getBottom();
            }
        }

        public static void e(ViewHolder viewHolder) {
            int i = viewHolder.j;
            if (!viewHolder.h() && (i & 4) == 0) {
                viewHolder.b();
            }
        }

        public abstract boolean a(ViewHolder viewHolder, ItemHolderInfo itemHolderInfo, ItemHolderInfo itemHolderInfo2);

        public abstract boolean b(ViewHolder viewHolder, ViewHolder viewHolder2, ItemHolderInfo itemHolderInfo, ItemHolderInfo itemHolderInfo2);

        public abstract boolean c(ViewHolder viewHolder, ItemHolderInfo itemHolderInfo, ItemHolderInfo itemHolderInfo2);

        public abstract boolean d(ViewHolder viewHolder, ItemHolderInfo itemHolderInfo, ItemHolderInfo itemHolderInfo2);

        public boolean f(ViewHolder viewHolder) {
            return true;
        }

        public boolean g(ViewHolder viewHolder, List list) {
            return f(viewHolder);
        }

        public final void h(ViewHolder viewHolder) {
            ItemAnimatorRestoreListener itemAnimatorRestoreListener = this.f1563a;
            if (itemAnimatorRestoreListener != null) {
                RecyclerView recyclerView = RecyclerView.this;
                boolean z = true;
                viewHolder.p(true);
                View view = viewHolder.f1589a;
                if (viewHolder.h != null && viewHolder.i == null) {
                    viewHolder.h = null;
                }
                viewHolder.i = null;
                if ((viewHolder.j & 16) == 0) {
                    Recycler recycler = recyclerView.g;
                    recyclerView.m0();
                    ChildHelper childHelper = recyclerView.j;
                    ChildHelper.Bucket bucket = childHelper.b;
                    AnonymousClass5 anonymousClass5 = childHelper.f1495a;
                    int indexOfChild = RecyclerView.this.indexOfChild(view);
                    if (indexOfChild == -1) {
                        childHelper.e(view);
                    } else if (bucket.d(indexOfChild)) {
                        bucket.f(indexOfChild);
                        childHelper.e(view);
                        anonymousClass5.b(indexOfChild);
                    } else {
                        z = false;
                    }
                    if (z) {
                        ViewHolder M = RecyclerView.M(view);
                        recycler.m(M);
                        recycler.j(M);
                        if (RecyclerView.H0) {
                            Log.d("RecyclerView", "after removing animated view: " + view + ", " + recyclerView);
                        }
                    }
                    recyclerView.n0(!z);
                    if (!z && viewHolder.l()) {
                        recyclerView.removeDetachedView(view, false);
                    }
                }
            }
        }

        public abstract void i(ViewHolder viewHolder);

        public abstract void j();

        public abstract boolean k();

        public abstract void l();
    }

    /* loaded from: classes.dex */
    public class ItemAnimatorRestoreListener implements ItemAnimator.ItemAnimatorListener {
        public ItemAnimatorRestoreListener() {
        }
    }

    /* loaded from: classes.dex */
    public interface OnChildAttachStateChangeListener {
        void b(View view);

        void c(View view);
    }

    /* loaded from: classes.dex */
    public static abstract class OnFlingListener {
        public abstract boolean a(int i, int i2);
    }

    /* loaded from: classes.dex */
    public interface OnItemTouchListener {
        void a(MotionEvent motionEvent);

        boolean d(MotionEvent motionEvent);

        void e(boolean z);
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes.dex */
    public @interface Orientation {
    }

    /* loaded from: classes.dex */
    public static class RecycledViewPool {

        /* renamed from: a, reason: collision with root package name */
        public SparseArray f1575a;
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public Set f1576c;

        /* loaded from: classes.dex */
        public static class ScrapData {

            /* renamed from: a, reason: collision with root package name */
            public final ArrayList f1577a = new ArrayList();
            public final int b = 5;

            /* renamed from: c, reason: collision with root package name */
            public long f1578c = 0;
            public long d = 0;
        }

        public final ScrapData a(int i) {
            SparseArray sparseArray = this.f1575a;
            ScrapData scrapData = (ScrapData) sparseArray.get(i);
            if (scrapData == null) {
                ScrapData scrapData2 = new ScrapData();
                sparseArray.put(i, scrapData2);
                return scrapData2;
            }
            return scrapData;
        }
    }

    /* loaded from: classes.dex */
    public final class Recycler {

        /* renamed from: a, reason: collision with root package name */
        public final ArrayList f1579a;
        public ArrayList b;

        /* renamed from: c, reason: collision with root package name */
        public final ArrayList f1580c;
        public final List d;
        public int e;
        public int f;
        public RecycledViewPool g;
        public ViewCacheExtension h;

        public Recycler() {
            ArrayList arrayList = new ArrayList();
            this.f1579a = arrayList;
            this.b = null;
            this.f1580c = new ArrayList();
            this.d = DesugarCollections.unmodifiableList(arrayList);
            this.e = 2;
            this.f = 2;
        }

        public final void a(ViewHolder viewHolder, boolean z) {
            AccessibilityDelegateCompat accessibilityDelegateCompat;
            RecyclerView.l(viewHolder);
            View view = viewHolder.f1589a;
            RecyclerView recyclerView = RecyclerView.this;
            RecyclerViewAccessibilityDelegate recyclerViewAccessibilityDelegate = recyclerView.t0;
            if (recyclerViewAccessibilityDelegate != null) {
                RecyclerViewAccessibilityDelegate.ItemDelegate itemDelegate = recyclerViewAccessibilityDelegate.e;
                if (itemDelegate != null) {
                    accessibilityDelegateCompat = (AccessibilityDelegateCompat) itemDelegate.e.remove(view);
                } else {
                    accessibilityDelegateCompat = null;
                }
                ViewCompat.z(view, accessibilityDelegateCompat);
            }
            if (z) {
                RecyclerListener recyclerListener = recyclerView.s;
                ArrayList arrayList = recyclerView.t;
                if (recyclerListener != null) {
                    recyclerListener.a();
                }
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    ((RecyclerListener) arrayList.get(i)).a();
                }
                Adapter adapter = recyclerView.q;
                if (adapter != null) {
                    adapter.t(viewHolder);
                }
                if (recyclerView.m0 != null) {
                    recyclerView.k.d(viewHolder);
                }
                if (RecyclerView.H0) {
                    Log.d("RecyclerView", "dispatchViewRecycled: " + viewHolder);
                }
            }
            viewHolder.s = null;
            viewHolder.r = null;
            RecycledViewPool c2 = c();
            c2.getClass();
            int i2 = viewHolder.f;
            ArrayList arrayList2 = c2.a(i2).f1577a;
            if (((RecycledViewPool.ScrapData) c2.f1575a.get(i2)).b <= arrayList2.size()) {
                PoolingContainer.a(view);
            } else {
                if (RecyclerView.G0 && arrayList2.contains(viewHolder)) {
                    throw new IllegalArgumentException("this scrap item already exists");
                }
                viewHolder.o();
                arrayList2.add(viewHolder);
            }
        }

        public final int b(int i) {
            RecyclerView recyclerView = RecyclerView.this;
            if (i >= 0 && i < recyclerView.m0.b()) {
                if (!recyclerView.m0.g) {
                    return i;
                }
                return recyclerView.i.f(i, 0);
            }
            StringBuilder s = a.s(i, "invalid position ", ". State item count is ");
            s.append(recyclerView.m0.b());
            s.append(recyclerView.C());
            throw new IndexOutOfBoundsException(s.toString());
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, androidx.recyclerview.widget.RecyclerView$RecycledViewPool] */
        public final RecycledViewPool c() {
            if (this.g == null) {
                ?? obj = new Object();
                obj.f1575a = new SparseArray();
                obj.b = 0;
                obj.f1576c = Collections.newSetFromMap(new IdentityHashMap());
                this.g = obj;
                e();
            }
            return this.g;
        }

        public final View d(int i) {
            return l(i, LongCompanionObject.MAX_VALUE).f1589a;
        }

        public final void e() {
            RecyclerView recyclerView;
            Adapter adapter;
            RecycledViewPool recycledViewPool = this.g;
            if (recycledViewPool != null && (adapter = (recyclerView = RecyclerView.this).q) != null && recyclerView.x) {
                recycledViewPool.f1576c.add(adapter);
            }
        }

        public final void f(Adapter adapter, boolean z) {
            RecycledViewPool recycledViewPool = this.g;
            if (recycledViewPool != null) {
                SparseArray sparseArray = recycledViewPool.f1575a;
                Set set = recycledViewPool.f1576c;
                set.remove(adapter);
                if (set.size() == 0 && !z) {
                    for (int i = 0; i < sparseArray.size(); i++) {
                        ArrayList arrayList = ((RecycledViewPool.ScrapData) sparseArray.get(sparseArray.keyAt(i))).f1577a;
                        for (int i2 = 0; i2 < arrayList.size(); i2++) {
                            PoolingContainer.a(((ViewHolder) arrayList.get(i2)).f1589a);
                        }
                    }
                }
            }
        }

        public final void g() {
            ArrayList arrayList = this.f1580c;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                h(size);
            }
            arrayList.clear();
            if (RecyclerView.M0) {
                GapWorker.LayoutPrefetchRegistryImpl layoutPrefetchRegistryImpl = RecyclerView.this.l0;
                int[] iArr = layoutPrefetchRegistryImpl.f1524c;
                if (iArr != null) {
                    Arrays.fill(iArr, -1);
                }
                layoutPrefetchRegistryImpl.d = 0;
            }
        }

        public final void h(int i) {
            if (RecyclerView.H0) {
                Log.d("RecyclerView", "Recycling cached view at index " + i);
            }
            ArrayList arrayList = this.f1580c;
            ViewHolder viewHolder = (ViewHolder) arrayList.get(i);
            if (RecyclerView.H0) {
                Log.d("RecyclerView", "CachedViewHolder to be recycled: " + viewHolder);
            }
            a(viewHolder, true);
            arrayList.remove(i);
        }

        public final void i(View view) {
            ViewHolder M = RecyclerView.M(view);
            boolean l = M.l();
            RecyclerView recyclerView = RecyclerView.this;
            if (l) {
                recyclerView.removeDetachedView(view, false);
            }
            if (M.k()) {
                M.n.m(M);
            } else if (M.r()) {
                M.j &= -33;
            }
            j(M);
            if (recyclerView.R != null && !M.i()) {
                recyclerView.R.i(M);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:73:0x00de, code lost:
        
            r6 = r6 - 1;
         */
        /* JADX WARN: Removed duplicated region for block: B:80:0x00ed  */
        /* JADX WARN: Removed duplicated region for block: B:82:0x00f2  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void j(androidx.recyclerview.widget.RecyclerView.ViewHolder r13) {
            /*
                Method dump skipped, instructions count: 347
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.Recycler.j(androidx.recyclerview.widget.RecyclerView$ViewHolder):void");
        }

        public final void k(View view) {
            ItemAnimator itemAnimator;
            ViewHolder M = RecyclerView.M(view);
            int i = M.j & 12;
            RecyclerView recyclerView = RecyclerView.this;
            if (i == 0 && M.m() && (itemAnimator = recyclerView.R) != null && !itemAnimator.g(M, M.e())) {
                if (this.b == null) {
                    this.b = new ArrayList();
                }
                M.n = this;
                M.o = true;
                this.b.add(M);
                return;
            }
            if (M.h() && !M.j() && !recyclerView.q.b) {
                throw new IllegalArgumentException(a.i(recyclerView, new StringBuilder("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool.")));
            }
            M.n = this;
            M.o = false;
            this.f1579a.add(M);
        }

        /* JADX WARN: Code restructure failed: missing block: B:204:0x052b, code lost:
        
            if (r10.h() == false) goto L296;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:186:0x06c1  */
        /* JADX WARN: Removed duplicated region for block: B:189:0x06e1 A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:193:0x06cb  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x007e  */
        /* JADX WARN: Removed duplicated region for block: B:38:0x022f  */
        /* JADX WARN: Removed duplicated region for block: B:391:0x0080  */
        /* JADX WARN: Type inference failed for: r6v36, types: [java.lang.Object, androidx.recyclerview.widget.RecyclerView$ItemAnimator$ItemHolderInfo] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final androidx.recyclerview.widget.RecyclerView.ViewHolder l(int r29, long r30) {
            /*
                Method dump skipped, instructions count: 1802
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.Recycler.l(int, long):androidx.recyclerview.widget.RecyclerView$ViewHolder");
        }

        public final void m(ViewHolder viewHolder) {
            if (viewHolder.o) {
                this.b.remove(viewHolder);
            } else {
                this.f1579a.remove(viewHolder);
            }
            viewHolder.n = null;
            viewHolder.o = false;
            viewHolder.j &= -33;
        }

        public final void n() {
            int i;
            LayoutManager layoutManager = RecyclerView.this.r;
            if (layoutManager != null) {
                i = layoutManager.j;
            } else {
                i = 0;
            }
            this.f = this.e + i;
            ArrayList arrayList = this.f1580c;
            for (int size = arrayList.size() - 1; size >= 0 && arrayList.size() > this.f; size--) {
                h(size);
            }
        }
    }

    /* loaded from: classes.dex */
    public interface RecyclerListener {
        void a();
    }

    /* loaded from: classes.dex */
    public class RecyclerViewDataObserver extends AdapterDataObserver {
        public RecyclerViewDataObserver() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void a() {
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.k(null);
            recyclerView.m0.f = true;
            recyclerView.Z(true);
            if (!recyclerView.i.g()) {
                recyclerView.requestLayout();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void c(int i, int i2) {
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.k(null);
            AdapterHelper adapterHelper = recyclerView.i;
            ArrayList arrayList = adapterHelper.b;
            if (i2 >= 1) {
                arrayList.add(adapterHelper.h(4, i, i2));
                adapterHelper.f |= 4;
                if (arrayList.size() == 1) {
                    g();
                }
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void d(int i) {
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.k(null);
            AdapterHelper adapterHelper = recyclerView.i;
            ArrayList arrayList = adapterHelper.b;
            arrayList.add(adapterHelper.h(1, i, 1));
            adapterHelper.f |= 1;
            if (arrayList.size() == 1) {
                g();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void e(int i, int i2) {
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.k(null);
            AdapterHelper adapterHelper = recyclerView.i;
            ArrayList arrayList = adapterHelper.b;
            if (i != i2) {
                arrayList.add(adapterHelper.h(8, i, i2));
                adapterHelper.f |= 8;
                if (arrayList.size() == 1) {
                    g();
                }
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void f(int i) {
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.k(null);
            AdapterHelper adapterHelper = recyclerView.i;
            ArrayList arrayList = adapterHelper.b;
            arrayList.add(adapterHelper.h(2, i, 1));
            adapterHelper.f |= 2;
            if (arrayList.size() == 1) {
                g();
            }
        }

        public final void g() {
            boolean z = RecyclerView.L0;
            RecyclerView recyclerView = RecyclerView.this;
            if (z && recyclerView.y && recyclerView.x) {
                Runnable runnable = recyclerView.m;
                WeakHashMap weakHashMap = ViewCompat.f792a;
                recyclerView.postOnAnimation(runnable);
            } else {
                recyclerView.F = true;
                recyclerView.requestLayout();
            }
        }
    }

    @RestrictTo
    /* loaded from: classes.dex */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Object();
        public Parcelable g;

        /* renamed from: androidx.recyclerview.widget.RecyclerView$SavedState$1, reason: invalid class name */
        /* loaded from: classes.dex */
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
            this.g = parcel.readParcelable(classLoader == null ? LayoutManager.class.getClassLoader() : classLoader);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeParcelable(this.g, 0);
        }
    }

    /* loaded from: classes.dex */
    public static abstract class SmoothScroller {

        /* renamed from: a, reason: collision with root package name */
        public int f1582a = -1;
        public RecyclerView b;

        /* renamed from: c, reason: collision with root package name */
        public LayoutManager f1583c;
        public boolean d;
        public boolean e;
        public View f;
        public final Action g;
        public boolean h;

        /* loaded from: classes.dex */
        public static class Action {

            /* renamed from: a, reason: collision with root package name */
            public int f1584a;
            public int b;

            /* renamed from: c, reason: collision with root package name */
            public int f1585c;
            public int d;
            public Interpolator e;
            public boolean f;
            public int g;

            public final void a(RecyclerView recyclerView) {
                int i = this.d;
                if (i >= 0) {
                    this.d = -1;
                    recyclerView.R(i);
                    this.f = false;
                    return;
                }
                if (this.f) {
                    Interpolator interpolator = this.e;
                    if (interpolator != null && this.f1585c < 1) {
                        throw new IllegalStateException("If you provide an interpolator, you must set a positive duration");
                    }
                    int i2 = this.f1585c;
                    if (i2 >= 1) {
                        recyclerView.j0.c(this.f1584a, this.b, i2, interpolator);
                        int i3 = this.g + 1;
                        this.g = i3;
                        if (i3 > 10) {
                            Log.e("RecyclerView", "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary");
                        }
                        this.f = false;
                        return;
                    }
                    throw new IllegalStateException("Scroll duration must be a positive number");
                }
                this.g = 0;
            }
        }

        /* loaded from: classes.dex */
        public interface ScrollVectorProvider {
            PointF a(int i);
        }

        /* JADX WARN: Type inference failed for: r1v0, types: [androidx.recyclerview.widget.RecyclerView$SmoothScroller$Action, java.lang.Object] */
        public SmoothScroller() {
            ?? obj = new Object();
            obj.d = -1;
            obj.f = false;
            obj.g = 0;
            obj.f1584a = 0;
            obj.b = 0;
            obj.f1585c = IntCompanionObject.MIN_VALUE;
            obj.e = null;
            this.g = obj;
        }

        public PointF a(int i) {
            Object obj = this.f1583c;
            if (obj instanceof ScrollVectorProvider) {
                return ((ScrollVectorProvider) obj).a(i);
            }
            Log.w("RecyclerView", "You should override computeScrollVectorForPosition when the LayoutManager does not implement " + ScrollVectorProvider.class.getCanonicalName());
            return null;
        }

        public final void b(int i, int i2) {
            PointF a2;
            RecyclerView recyclerView = this.b;
            int i3 = -1;
            if (this.f1582a == -1 || recyclerView == null) {
                f();
            }
            if (this.d && this.f == null && this.f1583c != null && (a2 = a(this.f1582a)) != null) {
                float f = a2.x;
                if (f != 0.0f || a2.y != 0.0f) {
                    recyclerView.h0(null, (int) Math.signum(f), (int) Math.signum(a2.y));
                }
            }
            boolean z = false;
            this.d = false;
            View view = this.f;
            Action action = this.g;
            if (view != null) {
                this.b.getClass();
                ViewHolder M = RecyclerView.M(view);
                if (M != null) {
                    i3 = M.d();
                }
                if (i3 == this.f1582a) {
                    View view2 = this.f;
                    State state = recyclerView.m0;
                    e(view2, action);
                    action.a(recyclerView);
                    f();
                } else {
                    Log.e("RecyclerView", "Passed over target position while smooth scrolling.");
                    this.f = null;
                }
            }
            if (this.e) {
                State state2 = recyclerView.m0;
                c(i, i2, action);
                if (action.d >= 0) {
                    z = true;
                }
                action.a(recyclerView);
                if (z && this.e) {
                    this.d = true;
                    recyclerView.j0.b();
                }
            }
        }

        public abstract void c(int i, int i2, Action action);

        public abstract void d();

        public abstract void e(View view, Action action);

        public final void f() {
            if (!this.e) {
                return;
            }
            this.e = false;
            d();
            this.b.m0.f1586a = -1;
            this.f = null;
            this.f1582a = -1;
            this.d = false;
            LayoutManager layoutManager = this.f1583c;
            if (layoutManager.e == this) {
                layoutManager.e = null;
            }
            this.f1583c = null;
            this.b = null;
        }
    }

    /* loaded from: classes.dex */
    public static class State {

        /* renamed from: a, reason: collision with root package name */
        public int f1586a;
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public int f1587c;
        public int d;
        public int e;
        public boolean f;
        public boolean g;
        public boolean h;
        public boolean i;
        public boolean j;
        public boolean k;
        public int l;
        public long m;
        public int n;

        public final void a(int i) {
            if ((this.d & i) != 0) {
                return;
            }
            throw new IllegalStateException("Layout state should be one of " + Integer.toBinaryString(i) + " but it is " + Integer.toBinaryString(this.d));
        }

        public final int b() {
            if (this.g) {
                return this.b - this.f1587c;
            }
            return this.e;
        }

        public final String toString() {
            return "State{mTargetPosition=" + this.f1586a + ", mData=null, mItemCount=" + this.e + ", mIsMeasuring=" + this.i + ", mPreviousLayoutItemCount=" + this.b + ", mDeletedInvisibleItemCountSincePreviousLayout=" + this.f1587c + ", mStructureChanged=" + this.f + ", mInPreLayout=" + this.g + ", mRunSimpleAnimations=" + this.j + ", mRunPredictiveAnimations=" + this.k + '}';
        }
    }

    /* loaded from: classes.dex */
    public static class StretchEdgeEffectFactory extends EdgeEffectFactory {
        @Override // androidx.recyclerview.widget.RecyclerView.EdgeEffectFactory
        public final EdgeEffect a(RecyclerView recyclerView) {
            return new EdgeEffect(recyclerView.getContext());
        }
    }

    /* loaded from: classes.dex */
    public static abstract class ViewCacheExtension {
        public abstract View a();
    }

    /* loaded from: classes.dex */
    public class ViewFlinger implements Runnable {

        /* renamed from: c, reason: collision with root package name */
        public int f1588c;
        public int f;
        public OverScroller g;
        public Interpolator h;
        public boolean i;
        public boolean j;

        public ViewFlinger() {
            Interpolator interpolator = RecyclerView.O0;
            this.h = interpolator;
            this.i = false;
            this.j = false;
            this.g = new OverScroller(RecyclerView.this.getContext(), interpolator);
        }

        public final void a(int i, int i2) {
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.setScrollState(2);
            this.f = 0;
            this.f1588c = 0;
            Interpolator interpolator = this.h;
            Interpolator interpolator2 = RecyclerView.O0;
            if (interpolator != interpolator2) {
                this.h = interpolator2;
                this.g = new OverScroller(recyclerView.getContext(), interpolator2);
            }
            this.g.fling(0, 0, i, i2, IntCompanionObject.MIN_VALUE, Integer.MAX_VALUE, IntCompanionObject.MIN_VALUE, Integer.MAX_VALUE);
            b();
        }

        public final void b() {
            if (this.i) {
                this.j = true;
                return;
            }
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.removeCallbacks(this);
            WeakHashMap weakHashMap = ViewCompat.f792a;
            recyclerView.postOnAnimation(this);
        }

        public final void c(int i, int i2, int i3, Interpolator interpolator) {
            boolean z;
            int height;
            RecyclerView recyclerView = RecyclerView.this;
            if (i3 == Integer.MIN_VALUE) {
                int abs = Math.abs(i);
                int abs2 = Math.abs(i2);
                if (abs > abs2) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    height = recyclerView.getWidth();
                } else {
                    height = recyclerView.getHeight();
                }
                if (!z) {
                    abs = abs2;
                }
                i3 = Math.min((int) (((abs / height) + 1.0f) * 300.0f), 2000);
            }
            int i4 = i3;
            if (interpolator == null) {
                interpolator = RecyclerView.O0;
            }
            if (this.h != interpolator) {
                this.h = interpolator;
                this.g = new OverScroller(recyclerView.getContext(), interpolator);
            }
            this.f = 0;
            this.f1588c = 0;
            recyclerView.setScrollState(2);
            this.g.startScroll(0, 0, i, i2, i4);
            b();
        }

        @Override // java.lang.Runnable
        public final void run() {
            int i;
            int i2;
            boolean z;
            boolean z2;
            boolean z3;
            int i3;
            RecyclerView recyclerView = RecyclerView.this;
            int[] iArr = recyclerView.z0;
            if (recyclerView.r == null) {
                recyclerView.removeCallbacks(this);
                this.g.abortAnimation();
                return;
            }
            this.j = false;
            this.i = true;
            recyclerView.p();
            OverScroller overScroller = this.g;
            if (overScroller.computeScrollOffset()) {
                int currX = overScroller.getCurrX();
                int currY = overScroller.getCurrY();
                int i4 = currX - this.f1588c;
                int i5 = currY - this.f;
                this.f1588c = currX;
                this.f = currY;
                int o = RecyclerView.o(i4, recyclerView.N, recyclerView.P, recyclerView.getWidth());
                int o2 = RecyclerView.o(i5, recyclerView.O, recyclerView.Q, recyclerView.getHeight());
                int[] iArr2 = recyclerView.z0;
                iArr2[0] = 0;
                iArr2[1] = 0;
                if (recyclerView.v(iArr2, null, o, o2, 1)) {
                    o -= iArr[0];
                    o2 -= iArr[1];
                }
                if (recyclerView.getOverScrollMode() != 2) {
                    recyclerView.n(o, o2);
                }
                if (recyclerView.q != null) {
                    iArr[0] = 0;
                    iArr[1] = 0;
                    recyclerView.h0(iArr, o, o2);
                    i = iArr[0];
                    i2 = iArr[1];
                    o -= i;
                    o2 -= i2;
                    SmoothScroller smoothScroller = recyclerView.r.e;
                    if (smoothScroller != null && !smoothScroller.d && smoothScroller.e) {
                        int b = recyclerView.m0.b();
                        if (b == 0) {
                            smoothScroller.f();
                        } else if (smoothScroller.f1582a >= b) {
                            smoothScroller.f1582a = b - 1;
                            smoothScroller.b(i, i2);
                        } else {
                            smoothScroller.b(i, i2);
                        }
                    }
                } else {
                    i = 0;
                    i2 = 0;
                }
                if (!recyclerView.u.isEmpty()) {
                    recyclerView.invalidate();
                }
                int[] iArr3 = recyclerView.z0;
                iArr3[0] = 0;
                iArr3[1] = 0;
                recyclerView.w(i, i2, o, o2, null, 1, iArr3);
                int i6 = o - iArr[0];
                int i7 = o2 - iArr[1];
                if (i != 0 || i2 != 0) {
                    recyclerView.x(i, i2);
                }
                if (!recyclerView.awakenScrollBars()) {
                    recyclerView.invalidate();
                }
                if (overScroller.getCurrX() == overScroller.getFinalX()) {
                    z = true;
                } else {
                    z = false;
                }
                if (overScroller.getCurrY() == overScroller.getFinalY()) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (!overScroller.isFinished() && ((!z && i6 == 0) || (!z2 && i7 == 0))) {
                    z3 = false;
                } else {
                    z3 = true;
                }
                SmoothScroller smoothScroller2 = recyclerView.r.e;
                if ((smoothScroller2 == null || !smoothScroller2.d) && z3) {
                    if (recyclerView.getOverScrollMode() != 2) {
                        int currVelocity = (int) overScroller.getCurrVelocity();
                        if (i6 < 0) {
                            i3 = -currVelocity;
                        } else if (i6 > 0) {
                            i3 = currVelocity;
                        } else {
                            i3 = 0;
                        }
                        if (i7 < 0) {
                            currVelocity = -currVelocity;
                        } else if (i7 <= 0) {
                            currVelocity = 0;
                        }
                        if (i3 < 0) {
                            recyclerView.z();
                            if (recyclerView.N.isFinished()) {
                                recyclerView.N.onAbsorb(-i3);
                            }
                        } else if (i3 > 0) {
                            recyclerView.A();
                            if (recyclerView.P.isFinished()) {
                                recyclerView.P.onAbsorb(i3);
                            }
                        }
                        if (currVelocity < 0) {
                            recyclerView.B();
                            if (recyclerView.O.isFinished()) {
                                recyclerView.O.onAbsorb(-currVelocity);
                            }
                        } else if (currVelocity > 0) {
                            recyclerView.y();
                            if (recyclerView.Q.isFinished()) {
                                recyclerView.Q.onAbsorb(currVelocity);
                            }
                        }
                        if (i3 != 0 || currVelocity != 0) {
                            WeakHashMap weakHashMap = ViewCompat.f792a;
                            recyclerView.postInvalidateOnAnimation();
                        }
                    }
                    if (RecyclerView.M0) {
                        GapWorker.LayoutPrefetchRegistryImpl layoutPrefetchRegistryImpl = recyclerView.l0;
                        int[] iArr4 = layoutPrefetchRegistryImpl.f1524c;
                        if (iArr4 != null) {
                            Arrays.fill(iArr4, -1);
                        }
                        layoutPrefetchRegistryImpl.d = 0;
                    }
                } else {
                    b();
                    GapWorker gapWorker = recyclerView.k0;
                    if (gapWorker != null) {
                        gapWorker.a(recyclerView, i, i2);
                    }
                }
            }
            SmoothScroller smoothScroller3 = recyclerView.r.e;
            if (smoothScroller3 != null && smoothScroller3.d) {
                smoothScroller3.b(0, 0);
            }
            this.i = false;
            if (this.j) {
                recyclerView.removeCallbacks(this);
                WeakHashMap weakHashMap2 = ViewCompat.f792a;
                recyclerView.postOnAnimation(this);
            } else {
                recyclerView.setScrollState(0);
                recyclerView.o0(1);
            }
        }
    }

    /* loaded from: classes.dex */
    public static abstract class ViewHolder {
        public static final List t = Collections.EMPTY_LIST;

        /* renamed from: a, reason: collision with root package name */
        public final View f1589a;
        public WeakReference b;
        public int j;
        public RecyclerView r;
        public Adapter s;

        /* renamed from: c, reason: collision with root package name */
        public int f1590c = -1;
        public int d = -1;
        public long e = -1;
        public int f = -1;
        public int g = -1;
        public ViewHolder h = null;
        public ViewHolder i = null;
        public final ArrayList k = null;
        public final List l = null;
        public int m = 0;
        public Recycler n = null;
        public boolean o = false;
        public int p = 0;
        public int q = -1;

        public ViewHolder(View view) {
            if (view != null) {
                this.f1589a = view;
                return;
            }
            throw new IllegalArgumentException("itemView may not be null");
        }

        public final void a(int i) {
            this.j = i | this.j;
        }

        public final int b() {
            RecyclerView recyclerView = this.r;
            if (recyclerView == null) {
                return -1;
            }
            return recyclerView.J(this);
        }

        public final int c() {
            RecyclerView recyclerView;
            Adapter adapter;
            int J;
            if (this.s == null || (recyclerView = this.r) == null || (adapter = recyclerView.getAdapter()) == null || (J = this.r.J(this)) == -1) {
                return -1;
            }
            return adapter.c(this.s, J);
        }

        public final int d() {
            int i = this.g;
            if (i == -1) {
                return this.f1590c;
            }
            return i;
        }

        public final List e() {
            ArrayList arrayList;
            if ((this.j & 1024) == 0 && (arrayList = this.k) != null && arrayList.size() != 0) {
                return this.l;
            }
            return t;
        }

        public final boolean f() {
            View view = this.f1589a;
            if (view.getParent() != null && view.getParent() != this.r) {
                return true;
            }
            return false;
        }

        public final boolean g() {
            if ((this.j & 1) != 0) {
                return true;
            }
            return false;
        }

        public final boolean h() {
            if ((this.j & 4) != 0) {
                return true;
            }
            return false;
        }

        public final boolean i() {
            if ((this.j & 16) == 0) {
                WeakHashMap weakHashMap = ViewCompat.f792a;
                if (!this.f1589a.hasTransientState()) {
                    return true;
                }
                return false;
            }
            return false;
        }

        public final boolean j() {
            if ((this.j & 8) != 0) {
                return true;
            }
            return false;
        }

        public final boolean k() {
            if (this.n != null) {
                return true;
            }
            return false;
        }

        public final boolean l() {
            if ((this.j & 256) != 0) {
                return true;
            }
            return false;
        }

        public final boolean m() {
            if ((this.j & 2) != 0) {
                return true;
            }
            return false;
        }

        public final void n(int i, boolean z) {
            if (this.d == -1) {
                this.d = this.f1590c;
            }
            if (this.g == -1) {
                this.g = this.f1590c;
            }
            if (z) {
                this.g += i;
            }
            this.f1590c += i;
            View view = this.f1589a;
            if (view.getLayoutParams() != null) {
                ((LayoutParams) view.getLayoutParams()).f1574c = true;
            }
        }

        public final void o() {
            if (RecyclerView.G0 && l()) {
                throw new IllegalStateException("Attempting to reset temp-detached ViewHolder: " + this + ". ViewHolders should be fully detached before resetting.");
            }
            this.j = 0;
            this.f1590c = -1;
            this.d = -1;
            this.e = -1L;
            this.g = -1;
            this.m = 0;
            this.h = null;
            this.i = null;
            ArrayList arrayList = this.k;
            if (arrayList != null) {
                arrayList.clear();
            }
            this.j &= -1025;
            this.p = 0;
            this.q = -1;
            RecyclerView.l(this);
        }

        public final void p(boolean z) {
            int i;
            int i2 = this.m;
            if (z) {
                i = i2 - 1;
            } else {
                i = i2 + 1;
            }
            this.m = i;
            if (i < 0) {
                this.m = 0;
                if (!RecyclerView.G0) {
                    Log.e("View", "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for " + this);
                } else {
                    throw new RuntimeException("isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for " + this);
                }
            } else if (!z && i == 1) {
                this.j |= 16;
            } else if (z && i == 0) {
                this.j &= -17;
            }
            if (RecyclerView.H0) {
                Log.d("RecyclerView", "setIsRecyclable val:" + z + ":" + this);
            }
        }

        public final boolean q() {
            if ((this.j & Uuid.SIZE_BITS) != 0) {
                return true;
            }
            return false;
        }

        public final boolean r() {
            if ((this.j & 32) != 0) {
                return true;
            }
            return false;
        }

        public final String toString() {
            String simpleName;
            String str;
            if (getClass().isAnonymousClass()) {
                simpleName = "ViewHolder";
            } else {
                simpleName = getClass().getSimpleName();
            }
            StringBuilder v = a.v(simpleName, "{");
            v.append(Integer.toHexString(hashCode()));
            v.append(" position=");
            v.append(this.f1590c);
            v.append(" id=");
            v.append(this.e);
            v.append(", oldPos=");
            v.append(this.d);
            v.append(", pLpos:");
            v.append(this.g);
            StringBuilder sb = new StringBuilder(v.toString());
            if (k()) {
                sb.append(" scrap ");
                if (this.o) {
                    str = "[changeScrap]";
                } else {
                    str = "[attachedScrap]";
                }
                sb.append(str);
            }
            if (h()) {
                sb.append(" invalid");
            }
            if (!g()) {
                sb.append(" unbound");
            }
            if ((this.j & 2) != 0) {
                sb.append(" update");
            }
            if (j()) {
                sb.append(" removed");
            }
            if (q()) {
                sb.append(" ignored");
            }
            if (l()) {
                sb.append(" tmpDetached");
            }
            if (!i()) {
                sb.append(" not recyclable(" + this.m + ")");
            }
            if ((this.j & 512) != 0 || h()) {
                sb.append(" undefined adapter position");
            }
            if (this.f1589a.getParent() == null) {
                sb.append(" no parent");
            }
            sb.append("}");
            return sb.toString();
        }
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [androidx.recyclerview.widget.RecyclerView$StretchEdgeEffectFactory, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v9, types: [android.view.animation.Interpolator, java.lang.Object] */
    static {
        Class cls = Integer.TYPE;
        N0 = new Class[]{Context.class, AttributeSet.class, cls, cls};
        O0 = new Object();
        P0 = new Object();
    }

    public RecyclerView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, androidx.recyclerview.R.attr.recyclerViewStyle);
    }

    public static RecyclerView H(View view) {
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        if (view instanceof RecyclerView) {
            return (RecyclerView) view;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            RecyclerView H = H(viewGroup.getChildAt(i));
            if (H != null) {
                return H;
            }
        }
        return null;
    }

    public static ViewHolder M(View view) {
        if (view == null) {
            return null;
        }
        return ((LayoutParams) view.getLayoutParams()).f1573a;
    }

    public static void N(Rect rect, View view) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        Rect rect2 = layoutParams.b;
        rect.set((view.getLeft() - rect2.left) - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, (view.getTop() - rect2.top) - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, view.getRight() + rect2.right + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, view.getBottom() + rect2.bottom + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
    }

    private NestedScrollingChildHelper getScrollingChildHelper() {
        if (this.w0 == null) {
            this.w0 = new NestedScrollingChildHelper(this);
        }
        return this.w0;
    }

    public static void l(ViewHolder viewHolder) {
        WeakReference weakReference = viewHolder.b;
        if (weakReference != null) {
            View view = (View) weakReference.get();
            while (view != null) {
                if (view != viewHolder.f1589a) {
                    Object parent = view.getParent();
                    if (parent instanceof View) {
                        view = (View) parent;
                    } else {
                        view = null;
                    }
                } else {
                    return;
                }
            }
            viewHolder.b = null;
        }
    }

    public static int o(int i, EdgeEffect edgeEffect, EdgeEffect edgeEffect2, int i2) {
        if (i > 0 && edgeEffect != null && EdgeEffectCompat.a(edgeEffect) != 0.0f) {
            int round = Math.round(EdgeEffectCompat.b(edgeEffect, ((-i) * 4.0f) / i2, 0.5f) * ((-i2) / 4.0f));
            if (round != i) {
                edgeEffect.finish();
            }
            return i - round;
        }
        if (i < 0 && edgeEffect2 != null && EdgeEffectCompat.a(edgeEffect2) != 0.0f) {
            float f = i2;
            int round2 = Math.round(EdgeEffectCompat.b(edgeEffect2, (i * 4.0f) / f, 0.5f) * (f / 4.0f));
            if (round2 != i) {
                edgeEffect2.finish();
            }
            return i - round2;
        }
        return i;
    }

    public static void setDebugAssertionsEnabled(boolean z) {
        G0 = z;
    }

    public static void setVerboseLoggingEnabled(boolean z) {
        H0 = z;
    }

    public final void A() {
        if (this.P != null) {
            return;
        }
        EdgeEffect a2 = this.M.a(this);
        this.P = a2;
        if (this.l) {
            a2.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            a2.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    public final void B() {
        if (this.O != null) {
            return;
        }
        EdgeEffect a2 = this.M.a(this);
        this.O = a2;
        if (this.l) {
            a2.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            a2.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public final String C() {
        return " " + super.toString() + ", adapter:" + this.q + ", layout:" + this.r + ", context:" + getContext();
    }

    public final void D(State state) {
        if (getScrollState() == 2) {
            OverScroller overScroller = this.j0.g;
            overScroller.getFinalX();
            overScroller.getCurrX();
            state.getClass();
            overScroller.getFinalY();
            overScroller.getCurrY();
            return;
        }
        state.getClass();
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0016, code lost:
    
        return r3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View E(android.view.View r3) {
        /*
            r2 = this;
            android.view.ViewParent r0 = r3.getParent()
        L4:
            if (r0 == 0) goto L14
            if (r0 == r2) goto L14
            boolean r1 = r0 instanceof android.view.View
            if (r1 == 0) goto L14
            r3 = r0
            android.view.View r3 = (android.view.View) r3
            android.view.ViewParent r0 = r3.getParent()
            goto L4
        L14:
            if (r0 != r2) goto L17
            return r3
        L17:
            r3 = 0
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.E(android.view.View):android.view.View");
    }

    public final boolean F(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        ArrayList arrayList = this.v;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            OnItemTouchListener onItemTouchListener = (OnItemTouchListener) arrayList.get(i);
            if (onItemTouchListener.d(motionEvent) && action != 3) {
                this.w = onItemTouchListener;
                return true;
            }
        }
        return false;
    }

    public final void G(int[] iArr) {
        int c2 = this.j.c();
        if (c2 == 0) {
            iArr[0] = -1;
            iArr[1] = -1;
            return;
        }
        int i = Integer.MAX_VALUE;
        int i2 = IntCompanionObject.MIN_VALUE;
        for (int i3 = 0; i3 < c2; i3++) {
            ViewHolder M = M(this.j.b(i3));
            if (!M.q()) {
                int d = M.d();
                if (d < i) {
                    i = d;
                }
                if (d > i2) {
                    i2 = d;
                }
            }
        }
        iArr[0] = i;
        iArr[1] = i2;
    }

    public final ViewHolder I(int i) {
        ViewHolder viewHolder = null;
        if (this.I) {
            return null;
        }
        int childCount = RecyclerView.this.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            ViewHolder M = M(RecyclerView.this.getChildAt(i2));
            if (M != null && !M.j() && J(M) == i) {
                if (this.j.f1496c.contains(M.f1589a)) {
                    viewHolder = M;
                } else {
                    return M;
                }
            }
        }
        return viewHolder;
    }

    public final int J(ViewHolder viewHolder) {
        if ((viewHolder.j & 524) == 0 && viewHolder.g()) {
            int i = viewHolder.f1590c;
            ArrayList arrayList = this.i.b;
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                AdapterHelper.UpdateOp updateOp = (AdapterHelper.UpdateOp) arrayList.get(i2);
                int i3 = updateOp.f1492a;
                if (i3 != 1) {
                    if (i3 != 2) {
                        if (i3 == 8) {
                            int i4 = updateOp.b;
                            if (i4 == i) {
                                i = updateOp.f1493c;
                            } else {
                                if (i4 < i) {
                                    i--;
                                }
                                if (updateOp.f1493c <= i) {
                                    i++;
                                }
                            }
                        }
                    } else {
                        int i5 = updateOp.b;
                        if (i5 <= i) {
                            int i6 = updateOp.f1493c;
                            if (i5 + i6 <= i) {
                                i -= i6;
                            }
                        } else {
                            continue;
                        }
                    }
                } else if (updateOp.b <= i) {
                    i += updateOp.f1493c;
                }
            }
            return i;
        }
        return -1;
    }

    public final long K(ViewHolder viewHolder) {
        if (this.q.b) {
            return viewHolder.e;
        }
        return viewHolder.f1590c;
    }

    public final ViewHolder L(View view) {
        ViewParent parent = view.getParent();
        if (parent != null && parent != this) {
            throw new IllegalArgumentException("View " + view + " is not a direct child of " + this);
        }
        return M(view);
    }

    public final Rect O(View view) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        boolean z = layoutParams.f1574c;
        Rect rect = layoutParams.b;
        if (!z || (this.m0.g && (layoutParams.f1573a.m() || layoutParams.f1573a.h()))) {
            return rect;
        }
        rect.set(0, 0, 0, 0);
        ArrayList arrayList = this.u;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            Rect rect2 = this.n;
            rect2.set(0, 0, 0, 0);
            ((ItemDecoration) arrayList.get(i)).f(rect2, view, this);
            rect.left += rect2.left;
            rect.top += rect2.top;
            rect.right += rect2.right;
            rect.bottom += rect2.bottom;
        }
        layoutParams.f1574c = false;
        return rect;
    }

    public final boolean P() {
        if (this.z && !this.I && !this.i.g()) {
            return false;
        }
        return true;
    }

    public final boolean Q() {
        if (this.K > 0) {
            return true;
        }
        return false;
    }

    public final void R(int i) {
        if (this.r == null) {
            return;
        }
        setScrollState(2);
        this.r.x0(i);
        awakenScrollBars();
    }

    public final void S() {
        int childCount = RecyclerView.this.getChildCount();
        for (int i = 0; i < childCount; i++) {
            ((LayoutParams) RecyclerView.this.getChildAt(i).getLayoutParams()).f1574c = true;
        }
        ArrayList arrayList = this.g.f1580c;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            LayoutParams layoutParams = (LayoutParams) ((ViewHolder) arrayList.get(i2)).f1589a.getLayoutParams();
            if (layoutParams != null) {
                layoutParams.f1574c = true;
            }
        }
    }

    public final void T(int i, int i2, boolean z) {
        int i3 = i + i2;
        int childCount = RecyclerView.this.getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            ViewHolder M = M(RecyclerView.this.getChildAt(i4));
            if (M != null && !M.q()) {
                int i5 = M.f1590c;
                State state = this.m0;
                if (i5 >= i3) {
                    if (H0) {
                        Log.d("RecyclerView", "offsetPositionRecordsForRemove attached child " + i4 + " holder " + M + " now at position " + (M.f1590c - i2));
                    }
                    M.n(-i2, z);
                    state.f = true;
                } else if (i5 >= i) {
                    if (H0) {
                        Log.d("RecyclerView", "offsetPositionRecordsForRemove attached child " + i4 + " holder " + M + " now REMOVED");
                    }
                    M.a(8);
                    M.n(-i2, z);
                    M.f1590c = i - 1;
                    state.f = true;
                }
            }
        }
        Recycler recycler = this.g;
        ArrayList arrayList = recycler.f1580c;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            ViewHolder viewHolder = (ViewHolder) arrayList.get(size);
            if (viewHolder != null) {
                int i6 = viewHolder.f1590c;
                if (i6 >= i3) {
                    if (H0) {
                        Log.d("RecyclerView", "offsetPositionRecordsForRemove cached " + size + " holder " + viewHolder + " now at position " + (viewHolder.f1590c - i2));
                    }
                    viewHolder.n(-i2, z);
                } else if (i6 >= i) {
                    viewHolder.a(8);
                    recycler.h(size);
                }
            }
        }
        requestLayout();
    }

    public final void U() {
        this.K++;
    }

    public final void V(boolean z) {
        int i;
        AccessibilityManager accessibilityManager;
        int i2 = this.K - 1;
        this.K = i2;
        if (i2 < 1) {
            if (G0 && i2 < 0) {
                throw new IllegalStateException(a.i(this, new StringBuilder("layout or scroll counter cannot go below zero.Some calls are not matching")));
            }
            this.K = 0;
            if (z) {
                int i3 = this.E;
                this.E = 0;
                if (i3 != 0 && (accessibilityManager = this.G) != null && accessibilityManager.isEnabled()) {
                    AccessibilityEvent obtain = AccessibilityEvent.obtain();
                    obtain.setEventType(2048);
                    obtain.setContentChangeTypes(i3);
                    sendAccessibilityEventUnchecked(obtain);
                }
                ArrayList arrayList = this.A0;
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    ViewHolder viewHolder = (ViewHolder) arrayList.get(size);
                    if (viewHolder.f1589a.getParent() == this && !viewHolder.q() && (i = viewHolder.q) != -1) {
                        View view = viewHolder.f1589a;
                        WeakHashMap weakHashMap = ViewCompat.f792a;
                        view.setImportantForAccessibility(i);
                        viewHolder.q = -1;
                    }
                }
                arrayList.clear();
            }
        }
    }

    public final void W(MotionEvent motionEvent) {
        int i;
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.T) {
            if (actionIndex == 0) {
                i = 1;
            } else {
                i = 0;
            }
            this.T = motionEvent.getPointerId(i);
            int x = (int) (motionEvent.getX(i) + 0.5f);
            this.a0 = x;
            this.V = x;
            int y = (int) (motionEvent.getY(i) + 0.5f);
            this.b0 = y;
            this.W = y;
        }
    }

    public final void X() {
        if (!this.s0 && this.x) {
            WeakHashMap weakHashMap = ViewCompat.f792a;
            postOnAnimation(this.B0);
            this.s0 = true;
        }
    }

    public final void Y() {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4 = false;
        if (this.I) {
            AdapterHelper adapterHelper = this.i;
            adapterHelper.k(adapterHelper.b);
            adapterHelper.k(adapterHelper.f1491c);
            adapterHelper.f = 0;
            if (this.J) {
                this.r.f0();
            }
        }
        if (this.R != null && this.r.J0()) {
            this.i.j();
        } else {
            this.i.c();
        }
        if (!this.p0 && !this.q0) {
            z = false;
        } else {
            z = true;
        }
        if (this.z && this.R != null && (((z3 = this.I) || z || this.r.f) && (!z3 || this.q.b))) {
            z2 = true;
        } else {
            z2 = false;
        }
        State state = this.m0;
        state.j = z2;
        if (z2 && z && !this.I && this.R != null && this.r.J0()) {
            z4 = true;
        }
        state.k = z4;
    }

    public final void Z(boolean z) {
        this.J = z | this.J;
        this.I = true;
        int childCount = RecyclerView.this.getChildCount();
        for (int i = 0; i < childCount; i++) {
            ViewHolder M = M(RecyclerView.this.getChildAt(i));
            if (M != null && !M.q()) {
                M.a(6);
            }
        }
        S();
        Recycler recycler = this.g;
        ArrayList arrayList = recycler.f1580c;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            ViewHolder viewHolder = (ViewHolder) arrayList.get(i2);
            if (viewHolder != null) {
                viewHolder.a(6);
                viewHolder.a(1024);
            }
        }
        Adapter adapter = RecyclerView.this.q;
        if (adapter != null && adapter.b) {
            return;
        }
        recycler.g();
    }

    public final void a0(ViewHolder viewHolder, ItemAnimator.ItemHolderInfo itemHolderInfo) {
        viewHolder.j &= -8193;
        boolean z = this.m0.h;
        ViewInfoStore viewInfoStore = this.k;
        if (z && viewHolder.m() && !viewHolder.j() && !viewHolder.q()) {
            viewInfoStore.b.g(K(viewHolder), viewHolder);
        }
        SimpleArrayMap simpleArrayMap = viewInfoStore.f1605a;
        ViewInfoStore.InfoRecord infoRecord = (ViewInfoStore.InfoRecord) simpleArrayMap.get(viewHolder);
        if (infoRecord == null) {
            infoRecord = ViewInfoStore.InfoRecord.a();
            simpleArrayMap.put(viewHolder, infoRecord);
        }
        infoRecord.b = itemHolderInfo;
        infoRecord.f1606a |= 4;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void addFocusables(ArrayList arrayList, int i, int i2) {
        LayoutManager layoutManager = this.r;
        if (layoutManager != null) {
            layoutManager.getClass();
        }
        super.addFocusables(arrayList, i, i2);
    }

    public final int b0(float f, int i) {
        float height = f / getHeight();
        float width = i / getWidth();
        EdgeEffect edgeEffect = this.N;
        float f2 = 0.0f;
        if (edgeEffect != null && EdgeEffectCompat.a(edgeEffect) != 0.0f) {
            if (canScrollHorizontally(-1)) {
                this.N.onRelease();
            } else {
                float f3 = -EdgeEffectCompat.b(this.N, -width, 1.0f - height);
                if (EdgeEffectCompat.a(this.N) == 0.0f) {
                    this.N.onRelease();
                }
                f2 = f3;
            }
            invalidate();
        } else {
            EdgeEffect edgeEffect2 = this.P;
            if (edgeEffect2 != null && EdgeEffectCompat.a(edgeEffect2) != 0.0f) {
                if (canScrollHorizontally(1)) {
                    this.P.onRelease();
                } else {
                    float b = EdgeEffectCompat.b(this.P, width, height);
                    if (EdgeEffectCompat.a(this.P) == 0.0f) {
                        this.P.onRelease();
                    }
                    f2 = b;
                }
                invalidate();
            }
        }
        return Math.round(f2 * getWidth());
    }

    public final int c0(float f, int i) {
        float width = f / getWidth();
        float height = i / getHeight();
        EdgeEffect edgeEffect = this.O;
        float f2 = 0.0f;
        if (edgeEffect != null && EdgeEffectCompat.a(edgeEffect) != 0.0f) {
            if (canScrollVertically(-1)) {
                this.O.onRelease();
            } else {
                float f3 = -EdgeEffectCompat.b(this.O, -height, width);
                if (EdgeEffectCompat.a(this.O) == 0.0f) {
                    this.O.onRelease();
                }
                f2 = f3;
            }
            invalidate();
        } else {
            EdgeEffect edgeEffect2 = this.Q;
            if (edgeEffect2 != null && EdgeEffectCompat.a(edgeEffect2) != 0.0f) {
                if (canScrollVertically(1)) {
                    this.Q.onRelease();
                } else {
                    float b = EdgeEffectCompat.b(this.Q, height, 1.0f - width);
                    if (EdgeEffectCompat.a(this.Q) == 0.0f) {
                        this.Q.onRelease();
                    }
                    f2 = b;
                }
                invalidate();
            }
        }
        return Math.round(f2 * getHeight());
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if ((layoutParams instanceof LayoutParams) && this.r.h((LayoutParams) layoutParams)) {
            return true;
        }
        return false;
    }

    @Override // android.view.View
    public int computeHorizontalScrollExtent() {
        LayoutManager layoutManager = this.r;
        if (layoutManager != null && layoutManager.f()) {
            return this.r.l(this.m0);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeHorizontalScrollOffset() {
        LayoutManager layoutManager = this.r;
        if (layoutManager != null && layoutManager.f()) {
            return this.r.m(this.m0);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeHorizontalScrollRange() {
        LayoutManager layoutManager = this.r;
        if (layoutManager != null && layoutManager.f()) {
            return this.r.n(this.m0);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollExtent() {
        LayoutManager layoutManager = this.r;
        if (layoutManager != null && layoutManager.g()) {
            return this.r.o(this.m0);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollOffset() {
        LayoutManager layoutManager = this.r;
        if (layoutManager != null && layoutManager.g()) {
            return this.r.p(this.m0);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollRange() {
        LayoutManager layoutManager = this.r;
        if (layoutManager != null && layoutManager.g()) {
            return this.r.q(this.m0);
        }
        return 0;
    }

    public final void d0(ItemDecoration itemDecoration) {
        boolean z;
        LayoutManager layoutManager = this.r;
        if (layoutManager != null) {
            layoutManager.d("Cannot remove item decoration during a scroll  or layout");
        }
        ArrayList arrayList = this.u;
        arrayList.remove(itemDecoration);
        if (arrayList.isEmpty()) {
            if (getOverScrollMode() == 2) {
                z = true;
            } else {
                z = false;
            }
            setWillNotDraw(z);
        }
        S();
        requestLayout();
    }

    @Override // android.view.View
    public final boolean dispatchNestedFling(float f, float f2, boolean z) {
        return getScrollingChildHelper().a(f, f2, z);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreFling(float f, float f2) {
        return getScrollingChildHelper().b(f, f2);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return getScrollingChildHelper().c(iArr, iArr2, i, i2, 0);
    }

    @Override // android.view.View
    public final boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return getScrollingChildHelper().d(i, i2, i3, i4, iArr, 0, null);
    }

    @Override // android.view.View
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        onPopulateAccessibilityEvent(accessibilityEvent);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchRestoreInstanceState(SparseArray sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchSaveInstanceState(SparseArray sparseArray) {
        dispatchFreezeSelfOnly(sparseArray);
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        boolean z;
        int i;
        boolean z2;
        boolean z3;
        int i2;
        super.draw(canvas);
        ArrayList arrayList = this.u;
        int size = arrayList.size();
        boolean z4 = false;
        for (int i3 = 0; i3 < size; i3++) {
            ((ItemDecoration) arrayList.get(i3)).h(canvas, this);
        }
        EdgeEffect edgeEffect = this.N;
        boolean z5 = true;
        if (edgeEffect != null && !edgeEffect.isFinished()) {
            int save = canvas.save();
            if (this.l) {
                i2 = getPaddingBottom();
            } else {
                i2 = 0;
            }
            canvas.rotate(270.0f);
            canvas.translate((-getHeight()) + i2, 0.0f);
            EdgeEffect edgeEffect2 = this.N;
            if (edgeEffect2 != null && edgeEffect2.draw(canvas)) {
                z = true;
            } else {
                z = false;
            }
            canvas.restoreToCount(save);
        } else {
            z = false;
        }
        EdgeEffect edgeEffect3 = this.O;
        if (edgeEffect3 != null && !edgeEffect3.isFinished()) {
            int save2 = canvas.save();
            if (this.l) {
                canvas.translate(getPaddingLeft(), getPaddingTop());
            }
            EdgeEffect edgeEffect4 = this.O;
            if (edgeEffect4 != null && edgeEffect4.draw(canvas)) {
                z3 = true;
            } else {
                z3 = false;
            }
            z |= z3;
            canvas.restoreToCount(save2);
        }
        EdgeEffect edgeEffect5 = this.P;
        if (edgeEffect5 != null && !edgeEffect5.isFinished()) {
            int save3 = canvas.save();
            int width = getWidth();
            if (this.l) {
                i = getPaddingTop();
            } else {
                i = 0;
            }
            canvas.rotate(90.0f);
            canvas.translate(i, -width);
            EdgeEffect edgeEffect6 = this.P;
            if (edgeEffect6 != null && edgeEffect6.draw(canvas)) {
                z2 = true;
            } else {
                z2 = false;
            }
            z |= z2;
            canvas.restoreToCount(save3);
        }
        EdgeEffect edgeEffect7 = this.Q;
        if (edgeEffect7 != null && !edgeEffect7.isFinished()) {
            int save4 = canvas.save();
            canvas.rotate(180.0f);
            if (this.l) {
                canvas.translate(getPaddingRight() + (-getWidth()), getPaddingBottom() + (-getHeight()));
            } else {
                canvas.translate(-getWidth(), -getHeight());
            }
            EdgeEffect edgeEffect8 = this.Q;
            if (edgeEffect8 != null && edgeEffect8.draw(canvas)) {
                z4 = true;
            }
            z |= z4;
            canvas.restoreToCount(save4);
        }
        if (z || this.R == null || arrayList.size() <= 0 || !this.R.k()) {
            z5 = z;
        }
        if (z5) {
            WeakHashMap weakHashMap = ViewCompat.f792a;
            postInvalidateOnAnimation();
        }
    }

    @Override // android.view.ViewGroup
    public final boolean drawChild(Canvas canvas, View view, long j) {
        return super.drawChild(canvas, view, j);
    }

    public final void e0(View view, View view2) {
        View view3;
        boolean z;
        if (view2 != null) {
            view3 = view2;
        } else {
            view3 = view;
        }
        int width = view3.getWidth();
        int height = view3.getHeight();
        Rect rect = this.n;
        rect.set(0, 0, width, height);
        ViewGroup.LayoutParams layoutParams = view3.getLayoutParams();
        if (layoutParams instanceof LayoutParams) {
            LayoutParams layoutParams2 = (LayoutParams) layoutParams;
            if (!layoutParams2.f1574c) {
                Rect rect2 = layoutParams2.b;
                rect.left -= rect2.left;
                rect.right += rect2.right;
                rect.top -= rect2.top;
                rect.bottom += rect2.bottom;
            }
        }
        if (view2 != null) {
            offsetDescendantRectToMyCoords(view2, rect);
            offsetRectIntoDescendantCoords(view, rect);
        }
        LayoutManager layoutManager = this.r;
        boolean z2 = !this.z;
        if (view2 == null) {
            z = true;
        } else {
            z = false;
        }
        layoutManager.u0(this, view, this.n, z2, z);
    }

    public final void f0() {
        VelocityTracker velocityTracker = this.U;
        if (velocityTracker != null) {
            velocityTracker.clear();
        }
        boolean z = false;
        o0(0);
        EdgeEffect edgeEffect = this.N;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            z = this.N.isFinished();
        }
        EdgeEffect edgeEffect2 = this.O;
        if (edgeEffect2 != null) {
            edgeEffect2.onRelease();
            z |= this.O.isFinished();
        }
        EdgeEffect edgeEffect3 = this.P;
        if (edgeEffect3 != null) {
            edgeEffect3.onRelease();
            z |= this.P.isFinished();
        }
        EdgeEffect edgeEffect4 = this.Q;
        if (edgeEffect4 != null) {
            edgeEffect4.onRelease();
            z |= this.Q.isFinished();
        }
        if (z) {
            WeakHashMap weakHashMap = ViewCompat.f792a;
            postInvalidateOnAnimation();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x017f, code lost:
    
        if (r5 < 0) goto L136;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x0187, code lost:
    
        if ((r5 * r6) <= 0) goto L118;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x018f, code lost:
    
        if ((r5 * r6) >= 0) goto L118;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0160, code lost:
    
        if (r7 > 0) goto L136;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x0179, code lost:
    
        if (r5 > 0) goto L136;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x017c, code lost:
    
        if (r7 < 0) goto L136;
     */
    /* JADX WARN: Removed duplicated region for block: B:26:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00cc A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0193 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0194  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00db  */
    @Override // android.view.ViewGroup, android.view.ViewParent
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View focusSearch(android.view.View r17, int r18) {
        /*
            Method dump skipped, instructions count: 409
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.focusSearch(android.view.View, int):android.view.View");
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00e1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean g0(int r18, int r19, android.view.MotionEvent r20, int r21) {
        /*
            Method dump skipped, instructions count: 298
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.g0(int, int, android.view.MotionEvent, int):boolean");
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        LayoutManager layoutManager = this.r;
        if (layoutManager != null) {
            return layoutManager.t();
        }
        throw new IllegalStateException(a.i(this, new StringBuilder("RecyclerView has no LayoutManager")));
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        LayoutManager layoutManager = this.r;
        if (layoutManager != null) {
            return layoutManager.u(getContext(), attributeSet);
        }
        throw new IllegalStateException(a.i(this, new StringBuilder("RecyclerView has no LayoutManager")));
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return "androidx.recyclerview.widget.RecyclerView";
    }

    @Nullable
    public Adapter getAdapter() {
        return this.q;
    }

    @Override // android.view.View
    public int getBaseline() {
        LayoutManager layoutManager = this.r;
        if (layoutManager != null) {
            layoutManager.getClass();
            return -1;
        }
        return super.getBaseline();
    }

    @Override // android.view.ViewGroup
    public final int getChildDrawingOrder(int i, int i2) {
        ChildDrawingOrderCallback childDrawingOrderCallback = this.u0;
        if (childDrawingOrderCallback == null) {
            return super.getChildDrawingOrder(i, i2);
        }
        return childDrawingOrderCallback.a(i, i2);
    }

    @Override // android.view.ViewGroup
    public boolean getClipToPadding() {
        return this.l;
    }

    @Nullable
    public RecyclerViewAccessibilityDelegate getCompatAccessibilityDelegate() {
        return this.t0;
    }

    @NonNull
    public EdgeEffectFactory getEdgeEffectFactory() {
        return this.M;
    }

    @Nullable
    public ItemAnimator getItemAnimator() {
        return this.R;
    }

    public int getItemDecorationCount() {
        return this.u.size();
    }

    @Nullable
    public LayoutManager getLayoutManager() {
        return this.r;
    }

    public int getMaxFlingVelocity() {
        return this.f0;
    }

    public int getMinFlingVelocity() {
        return this.e0;
    }

    public long getNanoTime() {
        if (M0) {
            return System.nanoTime();
        }
        return 0L;
    }

    @Nullable
    public OnFlingListener getOnFlingListener() {
        return this.d0;
    }

    public boolean getPreserveFocusAfterLayout() {
        return this.i0;
    }

    @NonNull
    public RecycledViewPool getRecycledViewPool() {
        return this.g.c();
    }

    public int getScrollState() {
        return this.S;
    }

    public final void h(ViewHolder viewHolder) {
        boolean z;
        View view = viewHolder.f1589a;
        if (view.getParent() == this) {
            z = true;
        } else {
            z = false;
        }
        this.g.m(L(view));
        boolean l = viewHolder.l();
        ChildHelper childHelper = this.j;
        if (l) {
            childHelper.a(view, -1, view.getLayoutParams(), true);
            return;
        }
        if (!z) {
            RecyclerView recyclerView = RecyclerView.this;
            int childCount = recyclerView.getChildCount();
            childHelper.b.e(childCount, true);
            childHelper.f1496c.add(view);
            ViewHolder M = M(view);
            if (M != null) {
                View view2 = M.f1589a;
                int i = M.q;
                if (i != -1) {
                    M.p = i;
                } else {
                    WeakHashMap weakHashMap = ViewCompat.f792a;
                    M.p = view2.getImportantForAccessibility();
                }
                if (recyclerView.Q()) {
                    M.q = 4;
                    recyclerView.A0.add(M);
                } else {
                    WeakHashMap weakHashMap2 = ViewCompat.f792a;
                    view2.setImportantForAccessibility(4);
                }
            }
            recyclerView.addView(view, childCount);
            ViewHolder M2 = M(view);
            Adapter adapter = recyclerView.q;
            if (adapter != null && M2 != null) {
                adapter.r(M2);
            }
            ArrayList arrayList = recyclerView.H;
            if (arrayList != null) {
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    ((OnChildAttachStateChangeListener) recyclerView.H.get(size)).c(view);
                }
                return;
            }
            return;
        }
        int indexOfChild = RecyclerView.this.indexOfChild(view);
        if (indexOfChild >= 0) {
            childHelper.b.h(indexOfChild);
            childHelper.f1496c.add(view);
            AnonymousClass5 anonymousClass5 = childHelper.f1495a;
            ViewHolder M3 = M(view);
            if (M3 != null) {
                View view3 = M3.f1589a;
                RecyclerView recyclerView2 = RecyclerView.this;
                int i2 = M3.q;
                if (i2 != -1) {
                    M3.p = i2;
                } else {
                    WeakHashMap weakHashMap3 = ViewCompat.f792a;
                    M3.p = view3.getImportantForAccessibility();
                }
                if (recyclerView2.Q()) {
                    M3.q = 4;
                    recyclerView2.A0.add(M3);
                    return;
                } else {
                    WeakHashMap weakHashMap4 = ViewCompat.f792a;
                    view3.setImportantForAccessibility(4);
                    return;
                }
            }
            return;
        }
        throw new IllegalArgumentException("view is not a child, cannot hide " + view);
    }

    public final void h0(int[] iArr, int i, int i2) {
        int i3;
        int i4;
        ViewHolder viewHolder;
        m0();
        U();
        int i5 = TraceCompat.f712a;
        Trace.beginSection("RV Scroll");
        State state = this.m0;
        D(state);
        Recycler recycler = this.g;
        if (i != 0) {
            i3 = this.r.w0(i, recycler, state);
        } else {
            i3 = 0;
        }
        if (i2 != 0) {
            i4 = this.r.y0(i2, recycler, state);
        } else {
            i4 = 0;
        }
        Trace.endSection();
        ChildHelper childHelper = this.j;
        int c2 = childHelper.c();
        for (int i6 = 0; i6 < c2; i6++) {
            View b = childHelper.b(i6);
            ViewHolder L = L(b);
            if (L != null && (viewHolder = L.i) != null) {
                View view = viewHolder.f1589a;
                int left = b.getLeft();
                int top = b.getTop();
                if (left != view.getLeft() || top != view.getTop()) {
                    view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
                }
            }
        }
        V(true);
        n0(false);
        if (iArr != null) {
            iArr[0] = i3;
            iArr[1] = i4;
        }
    }

    @Override // android.view.View
    public final boolean hasNestedScrollingParent() {
        return getScrollingChildHelper().f(0);
    }

    public final void i(ItemDecoration itemDecoration) {
        LayoutManager layoutManager = this.r;
        if (layoutManager != null) {
            layoutManager.d("Cannot add item decoration during a scroll  or layout");
        }
        ArrayList arrayList = this.u;
        if (arrayList.isEmpty()) {
            setWillNotDraw(false);
        }
        arrayList.add(itemDecoration);
        S();
        requestLayout();
    }

    public final void i0(int i) {
        if (this.C) {
            return;
        }
        p0();
        LayoutManager layoutManager = this.r;
        if (layoutManager == null) {
            Log.e("RecyclerView", "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else {
            layoutManager.x0(i);
            awakenScrollBars();
        }
    }

    @Override // android.view.View
    public final boolean isAttachedToWindow() {
        return this.x;
    }

    @Override // android.view.ViewGroup
    public final boolean isLayoutSuppressed() {
        return this.C;
    }

    @Override // android.view.View
    public final boolean isNestedScrollingEnabled() {
        return getScrollingChildHelper().d;
    }

    public final void j(OnScrollListener onScrollListener) {
        if (this.o0 == null) {
            this.o0 = new ArrayList();
        }
        this.o0.add(onScrollListener);
    }

    public final boolean j0(EdgeEffect edgeEffect, int i, int i2) {
        if (i > 0) {
            return true;
        }
        float a2 = EdgeEffectCompat.a(edgeEffect) * i2;
        float abs = Math.abs(-i) * 0.35f;
        float f = this.f1553c * 0.015f;
        double log = Math.log(abs / f);
        double d = J0;
        if (((float) (Math.exp((d / (d - 1.0d)) * log) * f)) < a2) {
            return true;
        }
        return false;
    }

    public final void k(String str) {
        if (Q()) {
            if (str == null) {
                throw new IllegalStateException(a.i(this, new StringBuilder("Cannot call this method while RecyclerView is computing a layout or scrolling")));
            }
            throw new IllegalStateException(str);
        }
        if (this.L > 0) {
            Log.w("RecyclerView", "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame.", new IllegalStateException(a.i(this, new StringBuilder(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED))));
        }
    }

    public final void k0(int i, int i2, boolean z) {
        LayoutManager layoutManager = this.r;
        if (layoutManager == null) {
            Log.e("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (!this.C) {
            int i3 = 0;
            if (!layoutManager.f()) {
                i = 0;
            }
            if (!this.r.g()) {
                i2 = 0;
            }
            if (i == 0 && i2 == 0) {
                return;
            }
            if (z) {
                if (i != 0) {
                    i3 = 1;
                }
                if (i2 != 0) {
                    i3 |= 2;
                }
                getScrollingChildHelper().h(i3, 1);
            }
            this.j0.c(i, i2, IntCompanionObject.MIN_VALUE, null);
        }
    }

    public final void l0(int i) {
        if (this.C) {
            return;
        }
        LayoutManager layoutManager = this.r;
        if (layoutManager == null) {
            Log.e("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else {
            layoutManager.H0(i, this);
        }
    }

    public final void m() {
        int childCount = RecyclerView.this.getChildCount();
        for (int i = 0; i < childCount; i++) {
            ViewHolder M = M(RecyclerView.this.getChildAt(i));
            if (!M.q()) {
                M.d = -1;
                M.g = -1;
            }
        }
        Recycler recycler = this.g;
        ArrayList arrayList = recycler.f1579a;
        ArrayList arrayList2 = recycler.f1580c;
        int size = arrayList2.size();
        for (int i2 = 0; i2 < size; i2++) {
            ViewHolder viewHolder = (ViewHolder) arrayList2.get(i2);
            viewHolder.d = -1;
            viewHolder.g = -1;
        }
        int size2 = arrayList.size();
        for (int i3 = 0; i3 < size2; i3++) {
            ViewHolder viewHolder2 = (ViewHolder) arrayList.get(i3);
            viewHolder2.d = -1;
            viewHolder2.g = -1;
        }
        ArrayList arrayList3 = recycler.b;
        if (arrayList3 != null) {
            int size3 = arrayList3.size();
            for (int i4 = 0; i4 < size3; i4++) {
                ViewHolder viewHolder3 = (ViewHolder) recycler.b.get(i4);
                viewHolder3.d = -1;
                viewHolder3.g = -1;
            }
        }
    }

    public final void m0() {
        int i = this.A + 1;
        this.A = i;
        if (i == 1 && !this.C) {
            this.B = false;
        }
    }

    public final void n(int i, int i2) {
        boolean z;
        EdgeEffect edgeEffect = this.N;
        if (edgeEffect != null && !edgeEffect.isFinished() && i > 0) {
            this.N.onRelease();
            z = this.N.isFinished();
        } else {
            z = false;
        }
        EdgeEffect edgeEffect2 = this.P;
        if (edgeEffect2 != null && !edgeEffect2.isFinished() && i < 0) {
            this.P.onRelease();
            z |= this.P.isFinished();
        }
        EdgeEffect edgeEffect3 = this.O;
        if (edgeEffect3 != null && !edgeEffect3.isFinished() && i2 > 0) {
            this.O.onRelease();
            z |= this.O.isFinished();
        }
        EdgeEffect edgeEffect4 = this.Q;
        if (edgeEffect4 != null && !edgeEffect4.isFinished() && i2 < 0) {
            this.Q.onRelease();
            z |= this.Q.isFinished();
        }
        if (z) {
            WeakHashMap weakHashMap = ViewCompat.f792a;
            postInvalidateOnAnimation();
        }
    }

    public final void n0(boolean z) {
        if (this.A < 1) {
            if (!G0) {
                this.A = 1;
            } else {
                throw new IllegalStateException(a.i(this, new StringBuilder("stopInterceptRequestLayout was called more times than startInterceptRequestLayout.")));
            }
        }
        if (!z && !this.C) {
            this.B = false;
        }
        if (this.A == 1) {
            if (z && this.B && !this.C && this.r != null && this.q != null) {
                s();
            }
            if (!this.C) {
                this.B = false;
            }
        }
        this.A--;
    }

    public final void o0(int i) {
        getScrollingChildHelper().i(i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0063, code lost:
    
        if (r1 >= 30.0f) goto L22;
     */
    /* JADX WARN: Type inference failed for: r1v6, types: [java.lang.Object, androidx.recyclerview.widget.GapWorker] */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onAttachedToWindow() {
        /*
            r5 = this;
            super.onAttachedToWindow()
            r0 = 0
            r5.K = r0
            r1 = 1
            r5.x = r1
            boolean r2 = r5.z
            if (r2 == 0) goto L15
            boolean r2 = r5.isLayoutRequested()
            if (r2 != 0) goto L15
            r2 = r1
            goto L16
        L15:
            r2 = r0
        L16:
            r5.z = r2
            androidx.recyclerview.widget.RecyclerView$Recycler r2 = r5.g
            r2.e()
            androidx.recyclerview.widget.RecyclerView$LayoutManager r2 = r5.r
            if (r2 == 0) goto L26
            r2.g = r1
            r2.X(r5)
        L26:
            r5.s0 = r0
            boolean r0 = androidx.recyclerview.widget.RecyclerView.M0
            if (r0 == 0) goto L8e
            java.lang.ThreadLocal r0 = androidx.recyclerview.widget.GapWorker.i
            java.lang.Object r1 = r0.get()
            androidx.recyclerview.widget.GapWorker r1 = (androidx.recyclerview.widget.GapWorker) r1
            r5.k0 = r1
            if (r1 != 0) goto L74
            androidx.recyclerview.widget.GapWorker r1 = new androidx.recyclerview.widget.GapWorker
            r1.<init>()
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            r1.f1522c = r2
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            r1.h = r2
            r5.k0 = r1
            java.util.WeakHashMap r1 = androidx.core.view.ViewCompat.f792a
            android.view.Display r1 = r5.getDisplay()
            boolean r2 = r5.isInEditMode()
            if (r2 != 0) goto L66
            if (r1 == 0) goto L66
            float r1 = r1.getRefreshRate()
            r2 = 1106247680(0x41f00000, float:30.0)
            int r2 = (r1 > r2 ? 1 : (r1 == r2 ? 0 : -1))
            if (r2 < 0) goto L66
            goto L68
        L66:
            r1 = 1114636288(0x42700000, float:60.0)
        L68:
            androidx.recyclerview.widget.GapWorker r2 = r5.k0
            r3 = 1315859240(0x4e6e6b28, float:1.0E9)
            float r3 = r3 / r1
            long r3 = (long) r3
            r2.g = r3
            r0.set(r2)
        L74:
            androidx.recyclerview.widget.GapWorker r0 = r5.k0
            java.util.ArrayList r0 = r0.f1522c
            boolean r1 = androidx.recyclerview.widget.RecyclerView.G0
            if (r1 == 0) goto L8b
            boolean r1 = r0.contains(r5)
            if (r1 != 0) goto L83
            goto L8b
        L83:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "RecyclerView already present in worker list!"
            r0.<init>(r1)
            throw r0
        L8b:
            r0.add(r5)
        L8e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onAttachedToWindow():void");
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        GapWorker gapWorker;
        super.onDetachedFromWindow();
        ItemAnimator itemAnimator = this.R;
        if (itemAnimator != null) {
            itemAnimator.j();
        }
        p0();
        this.x = false;
        LayoutManager layoutManager = this.r;
        if (layoutManager != null) {
            layoutManager.g = false;
            layoutManager.Y(this);
        }
        this.A0.clear();
        removeCallbacks(this.B0);
        this.k.getClass();
        do {
        } while (ViewInfoStore.InfoRecord.d.b() != null);
        Recycler recycler = this.g;
        ArrayList arrayList = recycler.f1580c;
        for (int i = 0; i < arrayList.size(); i++) {
            PoolingContainer.a(((ViewHolder) arrayList.get(i)).f1589a);
        }
        recycler.f(RecyclerView.this.q, false);
        PoolingContainer.b(this);
        if (M0 && (gapWorker = this.k0) != null) {
            boolean remove = gapWorker.f1522c.remove(this);
            if (G0 && !remove) {
                throw new IllegalStateException("RecyclerView removal failed!");
            }
            this.k0 = null;
        }
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        ArrayList arrayList = this.u;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((ItemDecoration) arrayList.get(i)).g(canvas, this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0082  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onGenericMotionEvent(android.view.MotionEvent r14) {
        /*
            Method dump skipped, instructions count: 242
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onGenericMotionEvent(android.view.MotionEvent):boolean");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z;
        boolean z2;
        if (!this.C) {
            this.w = null;
            if (F(motionEvent)) {
                f0();
                setScrollState(0);
                return true;
            }
            LayoutManager layoutManager = this.r;
            if (layoutManager != null) {
                boolean f = layoutManager.f();
                boolean g = this.r.g();
                if (this.U == null) {
                    this.U = VelocityTracker.obtain();
                }
                this.U.addMovement(motionEvent);
                int actionMasked = motionEvent.getActionMasked();
                int actionIndex = motionEvent.getActionIndex();
                if (actionMasked != 0) {
                    if (actionMasked != 1) {
                        if (actionMasked != 2) {
                            if (actionMasked != 3) {
                                if (actionMasked != 5) {
                                    if (actionMasked == 6) {
                                        W(motionEvent);
                                    }
                                } else {
                                    this.T = motionEvent.getPointerId(actionIndex);
                                    int x = (int) (motionEvent.getX(actionIndex) + 0.5f);
                                    this.a0 = x;
                                    this.V = x;
                                    int y = (int) (motionEvent.getY(actionIndex) + 0.5f);
                                    this.b0 = y;
                                    this.W = y;
                                }
                            } else {
                                f0();
                                setScrollState(0);
                            }
                        } else {
                            int findPointerIndex = motionEvent.findPointerIndex(this.T);
                            if (findPointerIndex < 0) {
                                Log.e("RecyclerView", "Error processing scroll; pointer index for id " + this.T + " not found. Did any MotionEvents get skipped?");
                                return false;
                            }
                            int x2 = (int) (motionEvent.getX(findPointerIndex) + 0.5f);
                            int y2 = (int) (motionEvent.getY(findPointerIndex) + 0.5f);
                            if (this.S != 1) {
                                int i = x2 - this.V;
                                int i2 = y2 - this.W;
                                if (f != 0 && Math.abs(i) > this.c0) {
                                    this.a0 = x2;
                                    z2 = true;
                                } else {
                                    z2 = false;
                                }
                                if (g && Math.abs(i2) > this.c0) {
                                    this.b0 = y2;
                                    z2 = true;
                                }
                                if (z2) {
                                    setScrollState(1);
                                }
                            }
                        }
                    } else {
                        this.U.clear();
                        o0(0);
                    }
                } else {
                    if (this.D) {
                        this.D = false;
                    }
                    this.T = motionEvent.getPointerId(0);
                    int x3 = (int) (motionEvent.getX() + 0.5f);
                    this.a0 = x3;
                    this.V = x3;
                    int y3 = (int) (motionEvent.getY() + 0.5f);
                    this.b0 = y3;
                    this.W = y3;
                    EdgeEffect edgeEffect = this.N;
                    if (edgeEffect != null && EdgeEffectCompat.a(edgeEffect) != 0.0f && !canScrollHorizontally(-1)) {
                        EdgeEffectCompat.b(this.N, 0.0f, 1.0f - (motionEvent.getY() / getHeight()));
                        z = true;
                    } else {
                        z = false;
                    }
                    EdgeEffect edgeEffect2 = this.P;
                    boolean z3 = z;
                    if (edgeEffect2 != null) {
                        z3 = z;
                        if (EdgeEffectCompat.a(edgeEffect2) != 0.0f) {
                            z3 = z;
                            if (!canScrollHorizontally(1)) {
                                EdgeEffectCompat.b(this.P, 0.0f, motionEvent.getY() / getHeight());
                                z3 = true;
                            }
                        }
                    }
                    EdgeEffect edgeEffect3 = this.O;
                    boolean z4 = z3;
                    if (edgeEffect3 != null) {
                        z4 = z3;
                        if (EdgeEffectCompat.a(edgeEffect3) != 0.0f) {
                            z4 = z3;
                            if (!canScrollVertically(-1)) {
                                EdgeEffectCompat.b(this.O, 0.0f, motionEvent.getX() / getWidth());
                                z4 = true;
                            }
                        }
                    }
                    EdgeEffect edgeEffect4 = this.Q;
                    boolean z5 = z4;
                    if (edgeEffect4 != null) {
                        z5 = z4;
                        if (EdgeEffectCompat.a(edgeEffect4) != 0.0f) {
                            z5 = z4;
                            if (!canScrollVertically(1)) {
                                EdgeEffectCompat.b(this.Q, 0.0f, 1.0f - (motionEvent.getX() / getWidth()));
                                z5 = true;
                            }
                        }
                    }
                    if (z5 || this.S == 2) {
                        getParent().requestDisallowInterceptTouchEvent(true);
                        setScrollState(1);
                        o0(1);
                    }
                    int[] iArr = this.y0;
                    iArr[1] = 0;
                    iArr[0] = 0;
                    int i3 = f;
                    if (g) {
                        i3 = (f ? 1 : 0) | 2;
                    }
                    getScrollingChildHelper().h(i3, 0);
                }
                if (this.S == 1) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5 = TraceCompat.f712a;
        Trace.beginSection("RV OnLayout");
        s();
        Trace.endSection();
        this.z = true;
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        LayoutManager layoutManager = this.r;
        if (layoutManager == null) {
            q(i, i2);
            return;
        }
        boolean R = layoutManager.R();
        boolean z = false;
        State state = this.m0;
        if (R) {
            int mode = View.MeasureSpec.getMode(i);
            int mode2 = View.MeasureSpec.getMode(i2);
            this.r.b.q(i, i2);
            if (mode == 1073741824 && mode2 == 1073741824) {
                z = true;
            }
            this.C0 = z;
            if (!z && this.q != null) {
                if (state.d == 1) {
                    t();
                }
                this.r.A0(i, i2);
                state.i = true;
                u();
                this.r.C0(i, i2);
                if (this.r.F0()) {
                    this.r.A0(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824));
                    state.i = true;
                    u();
                    this.r.C0(i, i2);
                }
                this.D0 = getMeasuredWidth();
                this.E0 = getMeasuredHeight();
                return;
            }
            return;
        }
        if (this.y) {
            this.r.b.q(i, i2);
            return;
        }
        if (this.F) {
            m0();
            U();
            Y();
            V(true);
            if (state.k) {
                state.g = true;
            } else {
                this.i.c();
                state.g = false;
            }
            this.F = false;
            n0(false);
        } else if (state.k) {
            setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight());
            return;
        }
        Adapter adapter = this.q;
        if (adapter != null) {
            state.e = adapter.d();
        } else {
            state.e = 0;
        }
        m0();
        this.r.b.q(i, i2);
        n0(false);
        state.g = false;
    }

    @Override // android.view.ViewGroup
    public final boolean onRequestFocusInDescendants(int i, Rect rect) {
        if (Q()) {
            return false;
        }
        return super.onRequestFocusInDescendants(i, rect);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        this.h = savedState;
        super.onRestoreInstanceState(savedState.f936c);
        requestLayout();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [android.os.Parcelable, androidx.recyclerview.widget.RecyclerView$SavedState, androidx.customview.view.AbsSavedState] */
    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        ?? absSavedState = new AbsSavedState(super.onSaveInstanceState());
        SavedState savedState = this.h;
        if (savedState != null) {
            absSavedState.g = savedState.g;
            return absSavedState;
        }
        LayoutManager layoutManager = this.r;
        if (layoutManager != null) {
            absSavedState.g = layoutManager.m0();
            return absSavedState;
        }
        absSavedState.g = null;
        return absSavedState;
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i == i3 && i2 == i4) {
            return;
        }
        this.Q = null;
        this.O = null;
        this.P = null;
        this.N = null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:138:0x02ae, code lost:
    
        if (r4 == 0) goto L183;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:123:0x024d  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0292 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:136:0x02aa A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:141:0x02b9  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0116  */
    /* JADX WARN: Type inference failed for: r5v4, types: [boolean] */
    /* JADX WARN: Type inference failed for: r5v6 */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r19) {
        /*
            Method dump skipped, instructions count: 807
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public final void p() {
        if (this.z && !this.I) {
            AdapterHelper adapterHelper = this.i;
            if (adapterHelper.g()) {
                int i = adapterHelper.f;
                if ((i & 4) != 0 && (i & 11) == 0) {
                    int i2 = TraceCompat.f712a;
                    Trace.beginSection("RV PartialInvalidate");
                    m0();
                    U();
                    adapterHelper.j();
                    if (!this.B) {
                        ChildHelper childHelper = this.j;
                        int c2 = childHelper.c();
                        int i3 = 0;
                        while (true) {
                            if (i3 < c2) {
                                ViewHolder M = M(childHelper.b(i3));
                                if (M != null && !M.q() && M.m()) {
                                    s();
                                    break;
                                }
                                i3++;
                            } else {
                                adapterHelper.b();
                                break;
                            }
                        }
                    }
                    n0(true);
                    V(true);
                    Trace.endSection();
                    return;
                }
                if (adapterHelper.g()) {
                    int i4 = TraceCompat.f712a;
                    Trace.beginSection("RV FullInvalidate");
                    s();
                    Trace.endSection();
                    return;
                }
                return;
            }
            return;
        }
        int i5 = TraceCompat.f712a;
        Trace.beginSection("RV FullInvalidate");
        s();
        Trace.endSection();
    }

    public final void p0() {
        SmoothScroller smoothScroller;
        setScrollState(0);
        ViewFlinger viewFlinger = this.j0;
        RecyclerView.this.removeCallbacks(viewFlinger);
        viewFlinger.g.abortAnimation();
        LayoutManager layoutManager = this.r;
        if (layoutManager != null && (smoothScroller = layoutManager.e) != null) {
            smoothScroller.f();
        }
    }

    public final void q(int i, int i2) {
        int paddingRight = getPaddingRight() + getPaddingLeft();
        WeakHashMap weakHashMap = ViewCompat.f792a;
        setMeasuredDimension(LayoutManager.i(i, paddingRight, getMinimumWidth()), LayoutManager.i(i2, getPaddingBottom() + getPaddingTop(), getMinimumHeight()));
    }

    public final void r(View view) {
        ViewHolder M = M(view);
        Adapter adapter = this.q;
        if (adapter != null && M != null) {
            adapter.s();
        }
        ArrayList arrayList = this.H;
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((OnChildAttachStateChangeListener) this.H.get(size)).b(view);
            }
        }
    }

    @Override // android.view.ViewGroup
    public final void removeDetachedView(View view, boolean z) {
        ViewHolder M = M(view);
        if (M != null) {
            if (M.l()) {
                M.j &= -257;
            } else if (!M.q()) {
                StringBuilder sb = new StringBuilder("Called removeDetachedView with a view which is not flagged as tmp detached.");
                sb.append(M);
                throw new IllegalArgumentException(a.i(this, sb));
            }
        } else if (G0) {
            StringBuilder sb2 = new StringBuilder("No ViewHolder found for child: ");
            sb2.append(view);
            throw new IllegalArgumentException(a.i(this, sb2));
        }
        view.clearAnimation();
        r(view);
        super.removeDetachedView(view, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestChildFocus(View view, View view2) {
        SmoothScroller smoothScroller = this.r.e;
        if ((smoothScroller == null || !smoothScroller.e) && !Q() && view2 != null) {
            e0(view, view2);
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        return this.r.u0(this, view, rect, z, false);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestDisallowInterceptTouchEvent(boolean z) {
        ArrayList arrayList = this.v;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((OnItemTouchListener) arrayList.get(i)).e(z);
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    @Override // android.view.View, android.view.ViewParent
    public final void requestLayout() {
        if (this.A == 0 && !this.C) {
            super.requestLayout();
        } else {
            this.B = true;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:168:0x034c, code lost:
    
        if (r20.j.f1496c.contains(getFocusedChild()) == false) goto L221;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:196:0x03fd  */
    /* JADX WARN: Type inference failed for: r13v6, types: [java.lang.Object, androidx.recyclerview.widget.RecyclerView$ItemAnimator$ItemHolderInfo] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void s() {
        /*
            Method dump skipped, instructions count: 1051
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.s():void");
    }

    @Override // android.view.View
    public final void scrollBy(int i, int i2) {
        LayoutManager layoutManager = this.r;
        if (layoutManager == null) {
            Log.e("RecyclerView", "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (!this.C) {
            boolean f = layoutManager.f();
            boolean g = this.r.g();
            if (!f && !g) {
                return;
            }
            if (!f) {
                i = 0;
            }
            if (!g) {
                i2 = 0;
            }
            g0(i, i2, null, 0);
        }
    }

    @Override // android.view.View
    public final void scrollTo(int i, int i2) {
        Log.w("RecyclerView", "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead");
    }

    @Override // android.view.View, android.view.accessibility.AccessibilityEventSource
    public final void sendAccessibilityEventUnchecked(AccessibilityEvent accessibilityEvent) {
        int i;
        if (Q()) {
            int i2 = 0;
            if (accessibilityEvent != null) {
                i = accessibilityEvent.getContentChangeTypes();
            } else {
                i = 0;
            }
            if (i != 0) {
                i2 = i;
            }
            this.E |= i2;
            return;
        }
        super.sendAccessibilityEventUnchecked(accessibilityEvent);
    }

    public void setAccessibilityDelegateCompat(@Nullable RecyclerViewAccessibilityDelegate recyclerViewAccessibilityDelegate) {
        this.t0 = recyclerViewAccessibilityDelegate;
        ViewCompat.z(this, recyclerViewAccessibilityDelegate);
    }

    public void setAdapter(@Nullable Adapter adapter) {
        setLayoutFrozen(false);
        Adapter adapter2 = this.q;
        RecyclerViewDataObserver recyclerViewDataObserver = this.f;
        if (adapter2 != null) {
            adapter2.f1560a.unregisterObserver(recyclerViewDataObserver);
            this.q.p(this);
        }
        ItemAnimator itemAnimator = this.R;
        if (itemAnimator != null) {
            itemAnimator.j();
        }
        LayoutManager layoutManager = this.r;
        Recycler recycler = this.g;
        if (layoutManager != null) {
            layoutManager.p0(recycler);
            this.r.q0(recycler);
        }
        recycler.f1579a.clear();
        recycler.g();
        AdapterHelper adapterHelper = this.i;
        adapterHelper.k(adapterHelper.b);
        adapterHelper.k(adapterHelper.f1491c);
        adapterHelper.f = 0;
        Adapter adapter3 = this.q;
        this.q = adapter;
        if (adapter != null) {
            adapter.f1560a.registerObserver(recyclerViewDataObserver);
            adapter.m(this);
        }
        LayoutManager layoutManager2 = this.r;
        if (layoutManager2 != null) {
            layoutManager2.W();
        }
        Adapter adapter4 = this.q;
        recycler.f1579a.clear();
        recycler.g();
        recycler.f(adapter3, true);
        RecycledViewPool c2 = recycler.c();
        if (adapter3 != null) {
            c2.b--;
        }
        if (c2.b == 0) {
            SparseArray sparseArray = c2.f1575a;
            for (int i = 0; i < sparseArray.size(); i++) {
                RecycledViewPool.ScrapData scrapData = (RecycledViewPool.ScrapData) sparseArray.valueAt(i);
                ArrayList arrayList = scrapData.f1577a;
                int size = arrayList.size();
                int i2 = 0;
                while (i2 < size) {
                    Object obj = arrayList.get(i2);
                    i2++;
                    PoolingContainer.a(((ViewHolder) obj).f1589a);
                }
                scrapData.f1577a.clear();
            }
        }
        if (adapter4 != null) {
            c2.b++;
        }
        recycler.e();
        this.m0.f = true;
        Z(false);
        requestLayout();
    }

    public void setChildDrawingOrderCallback(@Nullable ChildDrawingOrderCallback childDrawingOrderCallback) {
        boolean z;
        if (childDrawingOrderCallback == this.u0) {
            return;
        }
        this.u0 = childDrawingOrderCallback;
        if (childDrawingOrderCallback != null) {
            z = true;
        } else {
            z = false;
        }
        setChildrenDrawingOrderEnabled(z);
    }

    @Override // android.view.ViewGroup
    public void setClipToPadding(boolean z) {
        if (z != this.l) {
            this.Q = null;
            this.O = null;
            this.P = null;
            this.N = null;
        }
        this.l = z;
        super.setClipToPadding(z);
        if (this.z) {
            requestLayout();
        }
    }

    public void setEdgeEffectFactory(@NonNull EdgeEffectFactory edgeEffectFactory) {
        edgeEffectFactory.getClass();
        this.M = edgeEffectFactory;
        this.Q = null;
        this.O = null;
        this.P = null;
        this.N = null;
    }

    public void setHasFixedSize(boolean z) {
        this.y = z;
    }

    public void setItemAnimator(@Nullable ItemAnimator itemAnimator) {
        ItemAnimator itemAnimator2 = this.R;
        if (itemAnimator2 != null) {
            itemAnimator2.j();
            this.R.f1563a = null;
        }
        this.R = itemAnimator;
        if (itemAnimator != null) {
            itemAnimator.f1563a = this.r0;
        }
    }

    public void setItemViewCacheSize(int i) {
        Recycler recycler = this.g;
        recycler.e = i;
        recycler.n();
    }

    @Deprecated
    public void setLayoutFrozen(boolean z) {
        suppressLayout(z);
    }

    public void setLayoutManager(@Nullable LayoutManager layoutManager) {
        if (layoutManager == this.r) {
            return;
        }
        p0();
        LayoutManager layoutManager2 = this.r;
        Recycler recycler = this.g;
        if (layoutManager2 != null) {
            ItemAnimator itemAnimator = this.R;
            if (itemAnimator != null) {
                itemAnimator.j();
            }
            this.r.p0(recycler);
            this.r.q0(recycler);
            recycler.f1579a.clear();
            recycler.g();
            if (this.x) {
                LayoutManager layoutManager3 = this.r;
                layoutManager3.g = false;
                layoutManager3.Y(this);
            }
            this.r.D0(null);
            this.r = null;
        } else {
            recycler.f1579a.clear();
            recycler.g();
        }
        ChildHelper childHelper = this.j;
        AnonymousClass5 anonymousClass5 = childHelper.f1495a;
        childHelper.b.g();
        ArrayList arrayList = childHelper.f1496c;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            anonymousClass5.a((View) arrayList.get(size));
            arrayList.remove(size);
        }
        RecyclerView recyclerView = RecyclerView.this;
        int childCount = recyclerView.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = recyclerView.getChildAt(i);
            recyclerView.r(childAt);
            childAt.clearAnimation();
        }
        recyclerView.removeAllViews();
        this.r = layoutManager;
        if (layoutManager != null) {
            if (layoutManager.b == null) {
                layoutManager.D0(this);
                if (this.x) {
                    LayoutManager layoutManager4 = this.r;
                    layoutManager4.g = true;
                    layoutManager4.X(this);
                }
            } else {
                StringBuilder sb = new StringBuilder("LayoutManager ");
                sb.append(layoutManager);
                sb.append(" is already attached to a RecyclerView:");
                throw new IllegalArgumentException(a.i(layoutManager.b, sb));
            }
        }
        recycler.n();
        requestLayout();
    }

    @Override // android.view.ViewGroup
    @Deprecated
    public void setLayoutTransition(LayoutTransition layoutTransition) {
        if (layoutTransition == null) {
            super.setLayoutTransition(null);
            return;
        }
        throw new IllegalArgumentException("Providing a LayoutTransition into RecyclerView is not supported. Please use setItemAnimator() instead for animating changes to the items in this RecyclerView");
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z) {
        getScrollingChildHelper().g(z);
    }

    public void setOnFlingListener(@Nullable OnFlingListener onFlingListener) {
        this.d0 = onFlingListener;
    }

    @Deprecated
    public void setOnScrollListener(@Nullable OnScrollListener onScrollListener) {
        this.n0 = onScrollListener;
    }

    public void setPreserveFocusAfterLayout(boolean z) {
        this.i0 = z;
    }

    public void setRecycledViewPool(@Nullable RecycledViewPool recycledViewPool) {
        Recycler recycler = this.g;
        RecyclerView recyclerView = RecyclerView.this;
        recycler.f(recyclerView.q, false);
        if (recycler.g != null) {
            r2.b--;
        }
        recycler.g = recycledViewPool;
        if (recycledViewPool != null && recyclerView.getAdapter() != null) {
            recycler.g.b++;
        }
        recycler.e();
    }

    @Deprecated
    public void setRecyclerListener(@Nullable RecyclerListener recyclerListener) {
        this.s = recyclerListener;
    }

    public void setScrollState(int i) {
        SmoothScroller smoothScroller;
        if (i != this.S) {
            if (H0) {
                StringBuilder s = a.s(i, "setting scroll state to ", " from ");
                s.append(this.S);
                Log.d("RecyclerView", s.toString(), new Exception());
            }
            this.S = i;
            if (i != 2) {
                ViewFlinger viewFlinger = this.j0;
                RecyclerView.this.removeCallbacks(viewFlinger);
                viewFlinger.g.abortAnimation();
                LayoutManager layoutManager = this.r;
                if (layoutManager != null && (smoothScroller = layoutManager.e) != null) {
                    smoothScroller.f();
                }
            }
            LayoutManager layoutManager2 = this.r;
            if (layoutManager2 != null) {
                layoutManager2.n0(i);
            }
            OnScrollListener onScrollListener = this.n0;
            if (onScrollListener != null) {
                onScrollListener.a(i);
            }
            ArrayList arrayList = this.o0;
            if (arrayList != null) {
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    ((OnScrollListener) this.o0.get(size)).a(i);
                }
            }
        }
    }

    public void setScrollingTouchSlop(int i) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        if (i != 0) {
            if (i != 1) {
                Log.w("RecyclerView", "setScrollingTouchSlop(): bad argument constant " + i + "; using default value");
            } else {
                this.c0 = viewConfiguration.getScaledPagingTouchSlop();
                return;
            }
        }
        this.c0 = viewConfiguration.getScaledTouchSlop();
    }

    public void setViewCacheExtension(@Nullable ViewCacheExtension viewCacheExtension) {
        this.g.h = viewCacheExtension;
    }

    @Override // android.view.View
    public final boolean startNestedScroll(int i) {
        return getScrollingChildHelper().h(i, 0);
    }

    @Override // android.view.View
    public final void stopNestedScroll() {
        getScrollingChildHelper().i(0);
    }

    @Override // android.view.ViewGroup
    public final void suppressLayout(boolean z) {
        if (z != this.C) {
            k("Do not suppressLayout in layout or scroll");
            if (!z) {
                this.C = false;
                if (this.B && this.r != null && this.q != null) {
                    requestLayout();
                }
                this.B = false;
                return;
            }
            long uptimeMillis = SystemClock.uptimeMillis();
            onTouchEvent(MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0));
            this.C = true;
            this.D = true;
            p0();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v5, types: [java.lang.Object, androidx.recyclerview.widget.RecyclerView$ItemAnimator$ItemHolderInfo] */
    /* JADX WARN: Type inference failed for: r9v11, types: [java.lang.Object, androidx.recyclerview.widget.RecyclerView$ItemAnimator$ItemHolderInfo] */
    public final void t() {
        View view;
        int b;
        boolean z;
        ViewInfoStore.InfoRecord infoRecord;
        boolean z2;
        View E;
        State state = this.m0;
        state.a(1);
        D(state);
        state.i = false;
        m0();
        ViewInfoStore viewInfoStore = this.k;
        SimpleArrayMap simpleArrayMap = viewInfoStore.f1605a;
        SimpleArrayMap simpleArrayMap2 = viewInfoStore.f1605a;
        simpleArrayMap.clear();
        LongSparseArray longSparseArray = viewInfoStore.b;
        longSparseArray.b();
        U();
        Y();
        ViewHolder viewHolder = null;
        if (this.i0 && hasFocus() && this.q != null) {
            view = getFocusedChild();
        } else {
            view = null;
        }
        if (view != null && (E = E(view)) != null) {
            viewHolder = L(E);
        }
        long j = -1;
        if (viewHolder == null) {
            state.m = -1L;
            state.l = -1;
            state.n = -1;
        } else {
            if (this.q.b) {
                j = viewHolder.e;
            }
            state.m = j;
            if (this.I) {
                b = -1;
            } else if (viewHolder.j()) {
                b = viewHolder.d;
            } else {
                b = viewHolder.b();
            }
            state.l = b;
            View view2 = viewHolder.f1589a;
            int id = view2.getId();
            while (!view2.isFocused() && (view2 instanceof ViewGroup) && view2.hasFocus()) {
                view2 = ((ViewGroup) view2).getFocusedChild();
                if (view2.getId() != -1) {
                    id = view2.getId();
                }
            }
            state.n = id;
        }
        if (state.j && this.q0) {
            z = true;
        } else {
            z = false;
        }
        state.h = z;
        this.q0 = false;
        this.p0 = false;
        state.g = state.k;
        state.e = this.q.d();
        G(this.v0);
        if (state.j) {
            int c2 = this.j.c();
            for (int i = 0; i < c2; i++) {
                ViewHolder M = M(this.j.b(i));
                if (!M.q() && (!M.h() || this.q.b)) {
                    ItemAnimator itemAnimator = this.R;
                    ItemAnimator.e(M);
                    M.e();
                    itemAnimator.getClass();
                    ?? obj = new Object();
                    obj.a(M);
                    ViewInfoStore.InfoRecord infoRecord2 = (ViewInfoStore.InfoRecord) simpleArrayMap2.get(M);
                    if (infoRecord2 == null) {
                        infoRecord2 = ViewInfoStore.InfoRecord.a();
                        simpleArrayMap2.put(M, infoRecord2);
                    }
                    infoRecord2.b = obj;
                    infoRecord2.f1606a |= 4;
                    if (state.h && M.m() && !M.j() && !M.q() && !M.h()) {
                        longSparseArray.g(K(M), M);
                    }
                }
            }
        }
        if (state.k) {
            int childCount = RecyclerView.this.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                ViewHolder M2 = M(RecyclerView.this.getChildAt(i2));
                if (G0 && M2.f1590c == -1 && !M2.j()) {
                    throw new IllegalStateException(a.i(this, new StringBuilder("view holder cannot have position -1 unless it is removed")));
                }
                if (!M2.q() && M2.d == -1) {
                    M2.d = M2.f1590c;
                }
            }
            boolean z3 = state.f;
            state.f = false;
            this.r.j0(this.g, state);
            state.f = z3;
            for (int i3 = 0; i3 < this.j.c(); i3++) {
                ViewHolder M3 = M(this.j.b(i3));
                if (!M3.q() && ((infoRecord = (ViewInfoStore.InfoRecord) simpleArrayMap2.get(M3)) == null || (infoRecord.f1606a & 4) == 0)) {
                    ItemAnimator.e(M3);
                    if ((M3.j & 8192) != 0) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    ItemAnimator itemAnimator2 = this.R;
                    M3.e();
                    itemAnimator2.getClass();
                    ?? obj2 = new Object();
                    obj2.a(M3);
                    if (z2) {
                        a0(M3, obj2);
                    } else {
                        ViewInfoStore.InfoRecord infoRecord3 = (ViewInfoStore.InfoRecord) simpleArrayMap2.get(M3);
                        if (infoRecord3 == null) {
                            infoRecord3 = ViewInfoStore.InfoRecord.a();
                            simpleArrayMap2.put(M3, infoRecord3);
                        }
                        infoRecord3.f1606a |= 2;
                        infoRecord3.b = obj2;
                    }
                }
            }
            m();
        } else {
            m();
        }
        V(true);
        n0(false);
        state.d = 2;
    }

    public final void u() {
        boolean z;
        m0();
        U();
        State state = this.m0;
        state.a(6);
        this.i.c();
        state.e = this.q.d();
        state.f1587c = 0;
        if (this.h != null) {
            Adapter adapter = this.q;
            int ordinal = adapter.f1561c.ordinal();
            if (ordinal == 1 ? adapter.d() > 0 : ordinal != 2) {
                Parcelable parcelable = this.h.g;
                if (parcelable != null) {
                    this.r.l0(parcelable);
                }
                this.h = null;
            }
        }
        state.g = false;
        this.r.j0(this.g, state);
        state.f = false;
        if (state.j && this.R != null) {
            z = true;
        } else {
            z = false;
        }
        state.j = z;
        state.d = 4;
        V(true);
        n0(false);
    }

    public final boolean v(int[] iArr, int[] iArr2, int i, int i2, int i3) {
        return getScrollingChildHelper().c(iArr, iArr2, i, i2, i3);
    }

    public final void w(int i, int i2, int i3, int i4, int[] iArr, int i5, int[] iArr2) {
        getScrollingChildHelper().d(i, i2, i3, i4, iArr, i5, iArr2);
    }

    public final void x(int i, int i2) {
        this.L++;
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        onScrollChanged(scrollX, scrollY, scrollX - i, scrollY - i2);
        OnScrollListener onScrollListener = this.n0;
        if (onScrollListener != null) {
            onScrollListener.b(this, i, i2);
        }
        ArrayList arrayList = this.o0;
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((OnScrollListener) this.o0.get(size)).b(this, i, i2);
            }
        }
        this.L--;
    }

    public final void y() {
        if (this.Q != null) {
            return;
        }
        EdgeEffect a2 = this.M.a(this);
        this.Q = a2;
        if (this.l) {
            a2.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            a2.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public final void z() {
        if (this.N != null) {
            return;
        }
        EdgeEffect a2 = this.M.a(this);
        this.N = a2;
        if (this.l) {
            a2.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            a2.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [androidx.recyclerview.widget.RecyclerView$ItemAnimator, androidx.recyclerview.widget.DefaultItemAnimator, androidx.recyclerview.widget.SimpleItemAnimator, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r18v0 */
    /* JADX WARN: Type inference failed for: r18v1 */
    /* JADX WARN: Type inference failed for: r18v2 */
    /* JADX WARN: Type inference failed for: r3v17, types: [java.lang.Object, androidx.recyclerview.widget.RecyclerView$State] */
    /* JADX WARN: Type inference failed for: r3v46, types: [java.lang.Object] */
    public RecyclerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        boolean z;
        char c2;
        TypedArray typedArray;
        ClassLoader classLoader;
        Constructor constructor;
        this.f = new RecyclerViewDataObserver();
        this.g = new Recycler();
        this.k = new ViewInfoStore();
        this.m = new Runnable() { // from class: androidx.recyclerview.widget.RecyclerView.1
            @Override // java.lang.Runnable
            public final void run() {
                RecyclerView recyclerView = RecyclerView.this;
                if (recyclerView.z && !recyclerView.isLayoutRequested()) {
                    if (!recyclerView.x) {
                        recyclerView.requestLayout();
                    } else if (recyclerView.C) {
                        recyclerView.B = true;
                    } else {
                        recyclerView.p();
                    }
                }
            }
        };
        this.n = new Rect();
        this.o = new Rect();
        this.p = new RectF();
        this.t = new ArrayList();
        this.u = new ArrayList();
        this.v = new ArrayList();
        this.A = 0;
        this.I = false;
        this.J = false;
        this.K = 0;
        this.L = 0;
        this.M = P0;
        ?? obj = new Object();
        Object[] objArr = null;
        obj.f1563a = null;
        obj.b = new ArrayList();
        obj.f1564c = 120L;
        obj.d = 120L;
        obj.e = 250L;
        obj.f = 250L;
        obj.g = true;
        obj.h = new ArrayList();
        obj.i = new ArrayList();
        obj.j = new ArrayList();
        obj.k = new ArrayList();
        obj.l = new ArrayList();
        obj.m = new ArrayList();
        obj.n = new ArrayList();
        obj.o = new ArrayList();
        obj.p = new ArrayList();
        obj.q = new ArrayList();
        obj.r = new ArrayList();
        this.R = obj;
        this.S = 0;
        this.T = -1;
        this.g0 = Float.MIN_VALUE;
        this.h0 = Float.MIN_VALUE;
        this.i0 = true;
        this.j0 = new ViewFlinger();
        this.l0 = M0 ? new Object() : null;
        ?? obj2 = new Object();
        obj2.f1586a = -1;
        obj2.b = 0;
        obj2.f1587c = 0;
        obj2.d = 1;
        obj2.e = 0;
        obj2.f = false;
        obj2.g = false;
        obj2.h = false;
        obj2.i = false;
        obj2.j = false;
        obj2.k = false;
        this.m0 = obj2;
        this.p0 = false;
        this.q0 = false;
        ItemAnimatorRestoreListener itemAnimatorRestoreListener = new ItemAnimatorRestoreListener();
        this.r0 = itemAnimatorRestoreListener;
        this.s0 = false;
        this.v0 = new int[2];
        this.x0 = new int[2];
        this.y0 = new int[2];
        this.z0 = new int[2];
        this.A0 = new ArrayList();
        this.B0 = new Runnable() { // from class: androidx.recyclerview.widget.RecyclerView.2
            @Override // java.lang.Runnable
            public final void run() {
                RecyclerView recyclerView = RecyclerView.this;
                ItemAnimator itemAnimator = recyclerView.R;
                if (itemAnimator != null) {
                    itemAnimator.l();
                }
                recyclerView.s0 = false;
            }
        };
        this.D0 = 0;
        this.E0 = 0;
        this.F0 = new AnonymousClass4();
        setScrollContainer(true);
        setFocusableInTouchMode(true);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.c0 = viewConfiguration.getScaledTouchSlop();
        this.g0 = ViewConfigurationCompat.b(viewConfiguration, context);
        this.h0 = ViewConfigurationCompat.d(viewConfiguration, context);
        this.e0 = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f0 = viewConfiguration.getScaledMaximumFlingVelocity();
        this.f1553c = context.getResources().getDisplayMetrics().density * 160.0f * 386.0878f * 0.84f;
        setWillNotDraw(getOverScrollMode() == 2);
        this.R.f1563a = itemAnimatorRestoreListener;
        this.i = new AdapterHelper(new AnonymousClass6());
        this.j = new ChildHelper(new AnonymousClass5());
        if (ViewCompat.l(this) == 0) {
            ViewCompat.F(this);
        }
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
        this.G = (AccessibilityManager) getContext().getSystemService("accessibility");
        setAccessibilityDelegateCompat(new RecyclerViewAccessibilityDelegate(this));
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, androidx.recyclerview.R.styleable.RecyclerView, i, 0);
        ViewCompat.y(this, context, androidx.recyclerview.R.styleable.RecyclerView, attributeSet, obtainStyledAttributes, i);
        String string = obtainStyledAttributes.getString(androidx.recyclerview.R.styleable.RecyclerView_layoutManager);
        if (obtainStyledAttributes.getInt(androidx.recyclerview.R.styleable.RecyclerView_android_descendantFocusability, -1) == -1) {
            setDescendantFocusability(MediaHttpUploader.MINIMUM_CHUNK_SIZE);
        }
        this.l = obtainStyledAttributes.getBoolean(androidx.recyclerview.R.styleable.RecyclerView_android_clipToPadding, true);
        if (obtainStyledAttributes.getBoolean(androidx.recyclerview.R.styleable.RecyclerView_fastScrollEnabled, false)) {
            StateListDrawable stateListDrawable = (StateListDrawable) obtainStyledAttributes.getDrawable(androidx.recyclerview.R.styleable.RecyclerView_fastScrollVerticalThumbDrawable);
            Drawable drawable = obtainStyledAttributes.getDrawable(androidx.recyclerview.R.styleable.RecyclerView_fastScrollVerticalTrackDrawable);
            StateListDrawable stateListDrawable2 = (StateListDrawable) obtainStyledAttributes.getDrawable(androidx.recyclerview.R.styleable.RecyclerView_fastScrollHorizontalThumbDrawable);
            Drawable drawable2 = obtainStyledAttributes.getDrawable(androidx.recyclerview.R.styleable.RecyclerView_fastScrollHorizontalTrackDrawable);
            if (stateListDrawable != null && drawable != null && stateListDrawable2 != null && drawable2 != null) {
                Resources resources = getContext().getResources();
                c2 = 2;
                z = 1;
                typedArray = obtainStyledAttributes;
                new FastScroller(this, stateListDrawable, drawable, stateListDrawable2, drawable2, resources.getDimensionPixelSize(androidx.recyclerview.R.dimen.fastscroll_default_thickness), resources.getDimensionPixelSize(androidx.recyclerview.R.dimen.fastscroll_minimum_range), resources.getDimensionPixelOffset(androidx.recyclerview.R.dimen.fastscroll_margin));
            } else {
                throw new IllegalArgumentException(a.i(this, new StringBuilder("Trying to set fast scroller without both required drawables.")));
            }
        } else {
            z = 1;
            c2 = 2;
            typedArray = obtainStyledAttributes;
        }
        typedArray.recycle();
        if (string != null) {
            String trim = string.trim();
            if (!trim.isEmpty()) {
                if (trim.charAt(0) == '.') {
                    trim = context.getPackageName() + trim;
                } else if (!trim.contains(".")) {
                    trim = RecyclerView.class.getPackage().getName() + '.' + trim;
                }
                String str = trim;
                try {
                    if (isInEditMode()) {
                        classLoader = getClass().getClassLoader();
                    } else {
                        classLoader = context.getClassLoader();
                    }
                    Class asSubclass = Class.forName(str, false, classLoader).asSubclass(LayoutManager.class);
                    try {
                        constructor = asSubclass.getConstructor(N0);
                        Object[] objArr2 = new Object[4];
                        objArr2[0] = context;
                        objArr2[z] = attributeSet;
                        objArr2[c2] = Integer.valueOf(i);
                        objArr2[3] = 0;
                        objArr = objArr2;
                    } catch (NoSuchMethodException e) {
                        try {
                            constructor = asSubclass.getConstructor(null);
                        } catch (NoSuchMethodException e2) {
                            e2.initCause(e);
                            throw new IllegalStateException(attributeSet.getPositionDescription() + ": Error creating LayoutManager " + str, e2);
                        }
                    }
                    constructor.setAccessible(z);
                    setLayoutManager((LayoutManager) constructor.newInstance(objArr));
                } catch (ClassCastException e3) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Class is not a LayoutManager " + str, e3);
                } catch (ClassNotFoundException e4) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Unable to find LayoutManager " + str, e4);
                } catch (IllegalAccessException e5) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Cannot access non-public constructor " + str, e5);
                } catch (InstantiationException e6) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + str, e6);
                } catch (InvocationTargetException e7) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + str, e7);
                }
            }
        }
        int[] iArr = I0;
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, iArr, i, 0);
        ViewCompat.y(this, context, iArr, attributeSet, obtainStyledAttributes2, i);
        boolean z2 = obtainStyledAttributes2.getBoolean(0, true);
        obtainStyledAttributes2.recycle();
        setNestedScrollingEnabled(z2);
        int i2 = PoolingContainer.f934a;
        Intrinsics.checkNotNullParameter(this, "<this>");
        setTag(PoolingContainer.b, Boolean.TRUE);
    }

    /* loaded from: classes.dex */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        /* renamed from: a, reason: collision with root package name */
        public ViewHolder f1573a;
        public final Rect b;

        /* renamed from: c, reason: collision with root package name */
        public boolean f1574c;
        public boolean d;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.b = new Rect();
            this.f1574c = true;
            this.d = false;
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.b = new Rect();
            this.f1574c = true;
            this.d = false;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.b = new Rect();
            this.f1574c = true;
            this.d = false;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.b = new Rect();
            this.f1574c = true;
            this.d = false;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.LayoutParams) layoutParams);
            this.b = new Rect();
            this.f1574c = true;
            this.d = false;
        }
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        LayoutManager layoutManager = this.r;
        if (layoutManager != null) {
            return layoutManager.v(layoutParams);
        }
        throw new IllegalStateException(a.i(this, new StringBuilder("RecyclerView has no LayoutManager")));
    }

    /* loaded from: classes.dex */
    public static abstract class Adapter<VH extends ViewHolder> {

        /* renamed from: a, reason: collision with root package name */
        public final AdapterDataObservable f1560a = new Observable();
        public boolean b = false;

        /* renamed from: c, reason: collision with root package name */
        public final StateRestorationPolicy f1561c = StateRestorationPolicy.f1562c;

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        /* loaded from: classes.dex */
        public static final class StateRestorationPolicy {

            /* renamed from: c, reason: collision with root package name */
            public static final StateRestorationPolicy f1562c;
            public static final /* synthetic */ StateRestorationPolicy[] f;

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v0, types: [androidx.recyclerview.widget.RecyclerView$Adapter$StateRestorationPolicy, java.lang.Enum] */
            static {
                ?? r0 = new Enum("ALLOW", 0);
                f1562c = r0;
                f = new StateRestorationPolicy[]{r0, new Enum("PREVENT_WHEN_EMPTY", 1), new Enum("PREVENT", 2)};
            }

            public static StateRestorationPolicy valueOf(String str) {
                return (StateRestorationPolicy) Enum.valueOf(StateRestorationPolicy.class, str);
            }

            public static StateRestorationPolicy[] values() {
                return (StateRestorationPolicy[]) f.clone();
            }
        }

        public int c(Adapter adapter, int i) {
            if (adapter == this) {
                return i;
            }
            return -1;
        }

        public abstract int d();

        public long e(int i) {
            return -1L;
        }

        public int f(int i) {
            return 0;
        }

        public final void g() {
            this.f1560a.b();
        }

        public final void h(int i) {
            this.f1560a.d(i, 1);
        }

        public final void i(int i) {
            this.f1560a.e(i);
        }

        public final void j(int i, int i2) {
            this.f1560a.c(i, i2);
        }

        public final void k(int i, int i2) {
            this.f1560a.d(i, i2);
        }

        public final void l(int i) {
            this.f1560a.f(i);
        }

        public void m(RecyclerView recyclerView) {
        }

        public abstract void n(ViewHolder viewHolder, int i);

        public abstract ViewHolder o(ViewGroup viewGroup, int i);

        public void p(RecyclerView recyclerView) {
        }

        public boolean q(ViewHolder viewHolder) {
            return false;
        }

        public void r(ViewHolder viewHolder) {
        }

        public void t(ViewHolder viewHolder) {
        }

        public final void u() {
            if (!this.f1560a.a()) {
                this.b = true;
                return;
            }
            throw new IllegalStateException("Cannot change whether this adapter has stable IDs while the adapter has registered observers.");
        }

        public void s() {
        }
    }

    /* loaded from: classes.dex */
    public static abstract class AdapterDataObserver {
        public void a() {
        }

        public void c(int i, int i2) {
            b();
        }

        public void b() {
        }

        public void d(int i) {
        }

        public void f(int i) {
        }

        public void e(int i, int i2) {
        }
    }

    /* loaded from: classes.dex */
    public static abstract class LayoutManager {

        /* renamed from: a, reason: collision with root package name */
        public ChildHelper f1567a;
        public RecyclerView b;

        /* renamed from: c, reason: collision with root package name */
        public final ViewBoundsCheck f1568c;
        public final ViewBoundsCheck d;
        public SmoothScroller e;
        public boolean f;
        public boolean g;
        public final boolean h;
        public final boolean i;
        public int j;
        public boolean k;
        public int l;
        public int m;
        public int n;
        public int o;

        /* loaded from: classes.dex */
        public interface LayoutPrefetchRegistry {
        }

        /* loaded from: classes.dex */
        public static class Properties {

            /* renamed from: a, reason: collision with root package name */
            public int f1571a;
            public int b;

            /* renamed from: c, reason: collision with root package name */
            public boolean f1572c;
            public boolean d;
        }

        public LayoutManager() {
            ViewBoundsCheck.Callback callback = new ViewBoundsCheck.Callback() { // from class: androidx.recyclerview.widget.RecyclerView.LayoutManager.1
                @Override // androidx.recyclerview.widget.ViewBoundsCheck.Callback
                public final int a(View view) {
                    return LayoutManager.C(view) - ((ViewGroup.MarginLayoutParams) ((LayoutParams) view.getLayoutParams())).leftMargin;
                }

                @Override // androidx.recyclerview.widget.ViewBoundsCheck.Callback
                public final int b() {
                    return LayoutManager.this.K();
                }

                @Override // androidx.recyclerview.widget.ViewBoundsCheck.Callback
                public final int c() {
                    LayoutManager layoutManager = LayoutManager.this;
                    return layoutManager.n - layoutManager.L();
                }

                @Override // androidx.recyclerview.widget.ViewBoundsCheck.Callback
                public final View d(int i) {
                    return LayoutManager.this.w(i);
                }

                @Override // androidx.recyclerview.widget.ViewBoundsCheck.Callback
                public final int e(View view) {
                    return LayoutManager.F(view) + ((ViewGroup.MarginLayoutParams) ((LayoutParams) view.getLayoutParams())).rightMargin;
                }
            };
            ViewBoundsCheck.Callback callback2 = new ViewBoundsCheck.Callback() { // from class: androidx.recyclerview.widget.RecyclerView.LayoutManager.2
                @Override // androidx.recyclerview.widget.ViewBoundsCheck.Callback
                public final int a(View view) {
                    return LayoutManager.G(view) - ((ViewGroup.MarginLayoutParams) ((LayoutParams) view.getLayoutParams())).topMargin;
                }

                @Override // androidx.recyclerview.widget.ViewBoundsCheck.Callback
                public final int b() {
                    return LayoutManager.this.M();
                }

                @Override // androidx.recyclerview.widget.ViewBoundsCheck.Callback
                public final int c() {
                    LayoutManager layoutManager = LayoutManager.this;
                    return layoutManager.o - layoutManager.J();
                }

                @Override // androidx.recyclerview.widget.ViewBoundsCheck.Callback
                public final View d(int i) {
                    return LayoutManager.this.w(i);
                }

                @Override // androidx.recyclerview.widget.ViewBoundsCheck.Callback
                public final int e(View view) {
                    return LayoutManager.A(view) + ((ViewGroup.MarginLayoutParams) ((LayoutParams) view.getLayoutParams())).bottomMargin;
                }
            };
            this.f1568c = new ViewBoundsCheck(callback);
            this.d = new ViewBoundsCheck(callback2);
            this.f = false;
            this.g = false;
            this.h = true;
            this.i = true;
        }

        public static int A(View view) {
            return view.getBottom() + ((LayoutParams) view.getLayoutParams()).b.bottom;
        }

        public static int C(View view) {
            return view.getLeft() - ((LayoutParams) view.getLayoutParams()).b.left;
        }

        public static int D(View view) {
            Rect rect = ((LayoutParams) view.getLayoutParams()).b;
            return view.getMeasuredHeight() + rect.top + rect.bottom;
        }

        public static int E(View view) {
            Rect rect = ((LayoutParams) view.getLayoutParams()).b;
            return view.getMeasuredWidth() + rect.left + rect.right;
        }

        public static int F(View view) {
            return view.getRight() + ((LayoutParams) view.getLayoutParams()).b.right;
        }

        public static int G(View view) {
            return view.getTop() - ((LayoutParams) view.getLayoutParams()).b.top;
        }

        public static int N(View view) {
            return ((LayoutParams) view.getLayoutParams()).f1573a.d();
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [androidx.recyclerview.widget.RecyclerView$LayoutManager$Properties, java.lang.Object] */
        public static Properties O(Context context, AttributeSet attributeSet, int i, int i2) {
            ?? obj = new Object();
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, androidx.recyclerview.R.styleable.RecyclerView, i, i2);
            obj.f1571a = obtainStyledAttributes.getInt(androidx.recyclerview.R.styleable.RecyclerView_android_orientation, 1);
            obj.b = obtainStyledAttributes.getInt(androidx.recyclerview.R.styleable.RecyclerView_spanCount, 1);
            obj.f1572c = obtainStyledAttributes.getBoolean(androidx.recyclerview.R.styleable.RecyclerView_reverseLayout, false);
            obj.d = obtainStyledAttributes.getBoolean(androidx.recyclerview.R.styleable.RecyclerView_stackFromEnd, false);
            obtainStyledAttributes.recycle();
            return obj;
        }

        public static boolean S(int i, int i2, int i3) {
            int mode = View.MeasureSpec.getMode(i2);
            int size = View.MeasureSpec.getSize(i2);
            if (i3 > 0 && i != i3) {
                return false;
            }
            if (mode != Integer.MIN_VALUE) {
                if (mode == 0) {
                    return true;
                }
                if (mode != 1073741824 || size != i) {
                    return false;
                }
                return true;
            }
            if (size < i) {
                return false;
            }
            return true;
        }

        public static void T(View view, int i, int i2, int i3, int i4) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            Rect rect = layoutParams.b;
            view.layout(i + rect.left + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, i2 + rect.top + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, (i3 - rect.right) - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, (i4 - rect.bottom) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
        }

        public static int i(int i, int i2, int i3) {
            int mode = View.MeasureSpec.getMode(i);
            int size = View.MeasureSpec.getSize(i);
            if (mode != Integer.MIN_VALUE) {
                if (mode != 1073741824) {
                    return Math.max(i2, i3);
                }
                return size;
            }
            return Math.min(size, Math.max(i2, i3));
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x0018, code lost:
        
            if (r6 == 1073741824) goto L14;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static int y(boolean r4, int r5, int r6, int r7, int r8) {
            /*
                int r5 = r5 - r7
                r7 = 0
                int r5 = java.lang.Math.max(r7, r5)
                r0 = -2
                r1 = -1
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = 1073741824(0x40000000, float:2.0)
                if (r4 == 0) goto L1d
                if (r8 < 0) goto L12
            L10:
                r6 = r3
                goto L30
            L12:
                if (r8 != r1) goto L1a
                if (r6 == r2) goto L22
                if (r6 == 0) goto L1a
                if (r6 == r3) goto L22
            L1a:
                r6 = r7
                r8 = r6
                goto L30
            L1d:
                if (r8 < 0) goto L20
                goto L10
            L20:
                if (r8 != r1) goto L24
            L22:
                r8 = r5
                goto L30
            L24:
                if (r8 != r0) goto L1a
                if (r6 == r2) goto L2e
                if (r6 != r3) goto L2b
                goto L2e
            L2b:
                r8 = r5
                r6 = r7
                goto L30
            L2e:
                r8 = r5
                r6 = r2
            L30:
                int r4 = android.view.View.MeasureSpec.makeMeasureSpec(r8, r6)
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.LayoutManager.y(boolean, int, int, int, int):int");
        }

        public final void A0(int i, int i2) {
            this.n = View.MeasureSpec.getSize(i);
            int mode = View.MeasureSpec.getMode(i);
            this.l = mode;
            if (mode == 0 && !RecyclerView.K0) {
                this.n = 0;
            }
            this.o = View.MeasureSpec.getSize(i2);
            int mode2 = View.MeasureSpec.getMode(i2);
            this.m = mode2;
            if (mode2 == 0 && !RecyclerView.K0) {
                this.o = 0;
            }
        }

        public void B(Rect rect, View view) {
            RecyclerView.N(rect, view);
        }

        public void B0(Rect rect, int i, int i2) {
            int L = L() + K() + rect.width();
            int J = J() + M() + rect.height();
            RecyclerView recyclerView = this.b;
            WeakHashMap weakHashMap = ViewCompat.f792a;
            this.b.setMeasuredDimension(i(i, L, recyclerView.getMinimumWidth()), i(i2, J, this.b.getMinimumHeight()));
        }

        public final void C0(int i, int i2) {
            int x = x();
            if (x == 0) {
                this.b.q(i, i2);
                return;
            }
            int i3 = IntCompanionObject.MIN_VALUE;
            int i4 = Integer.MAX_VALUE;
            int i5 = Integer.MIN_VALUE;
            int i6 = Integer.MAX_VALUE;
            for (int i7 = 0; i7 < x; i7++) {
                View w = w(i7);
                Rect rect = this.b.n;
                B(rect, w);
                int i8 = rect.left;
                if (i8 < i6) {
                    i6 = i8;
                }
                int i9 = rect.right;
                if (i9 > i3) {
                    i3 = i9;
                }
                int i10 = rect.top;
                if (i10 < i4) {
                    i4 = i10;
                }
                int i11 = rect.bottom;
                if (i11 > i5) {
                    i5 = i11;
                }
            }
            this.b.n.set(i6, i4, i3, i5);
            B0(this.b.n, i, i2);
        }

        public final void D0(RecyclerView recyclerView) {
            if (recyclerView == null) {
                this.b = null;
                this.f1567a = null;
                this.n = 0;
                this.o = 0;
            } else {
                this.b = recyclerView;
                this.f1567a = recyclerView.j;
                this.n = recyclerView.getWidth();
                this.o = recyclerView.getHeight();
            }
            this.l = 1073741824;
            this.m = 1073741824;
        }

        public final boolean E0(View view, int i, int i2, LayoutParams layoutParams) {
            if (!view.isLayoutRequested() && this.h && S(view.getWidth(), i, ((ViewGroup.MarginLayoutParams) layoutParams).width) && S(view.getHeight(), i2, ((ViewGroup.MarginLayoutParams) layoutParams).height)) {
                return false;
            }
            return true;
        }

        public boolean F0() {
            return false;
        }

        public final boolean G0(View view, int i, int i2, LayoutParams layoutParams) {
            if (this.h && S(view.getMeasuredWidth(), i, ((ViewGroup.MarginLayoutParams) layoutParams).width) && S(view.getMeasuredHeight(), i2, ((ViewGroup.MarginLayoutParams) layoutParams).height)) {
                return false;
            }
            return true;
        }

        public final int H() {
            Adapter adapter;
            RecyclerView recyclerView = this.b;
            if (recyclerView != null) {
                adapter = recyclerView.getAdapter();
            } else {
                adapter = null;
            }
            if (adapter != null) {
                return adapter.d();
            }
            return 0;
        }

        public void H0(int i, RecyclerView recyclerView) {
            Log.e("RecyclerView", "You must override smoothScrollToPosition to support smooth scrolling");
        }

        public final int I() {
            RecyclerView recyclerView = this.b;
            WeakHashMap weakHashMap = ViewCompat.f792a;
            return recyclerView.getLayoutDirection();
        }

        public final void I0(SmoothScroller smoothScroller) {
            SmoothScroller smoothScroller2 = this.e;
            if (smoothScroller2 != null && smoothScroller != smoothScroller2 && smoothScroller2.e) {
                smoothScroller2.f();
            }
            this.e = smoothScroller;
            RecyclerView recyclerView = this.b;
            ViewFlinger viewFlinger = recyclerView.j0;
            RecyclerView.this.removeCallbacks(viewFlinger);
            viewFlinger.g.abortAnimation();
            if (smoothScroller.h) {
                Log.w("RecyclerView", "An instance of " + smoothScroller.getClass().getSimpleName() + " was started more than once. Each instance of" + smoothScroller.getClass().getSimpleName() + " is intended to only be used once. You should create a new instance for each use.");
            }
            smoothScroller.b = recyclerView;
            smoothScroller.f1583c = this;
            int i = smoothScroller.f1582a;
            if (i != -1) {
                recyclerView.m0.f1586a = i;
                smoothScroller.e = true;
                smoothScroller.d = true;
                smoothScroller.f = recyclerView.r.s(i);
                smoothScroller.b.j0.b();
                smoothScroller.h = true;
                return;
            }
            throw new IllegalArgumentException("Invalid target position");
        }

        public final int J() {
            RecyclerView recyclerView = this.b;
            if (recyclerView != null) {
                return recyclerView.getPaddingBottom();
            }
            return 0;
        }

        public boolean J0() {
            return false;
        }

        public final int K() {
            RecyclerView recyclerView = this.b;
            if (recyclerView != null) {
                return recyclerView.getPaddingLeft();
            }
            return 0;
        }

        public final int L() {
            RecyclerView recyclerView = this.b;
            if (recyclerView != null) {
                return recyclerView.getPaddingRight();
            }
            return 0;
        }

        public final int M() {
            RecyclerView recyclerView = this.b;
            if (recyclerView != null) {
                return recyclerView.getPaddingTop();
            }
            return 0;
        }

        public int P(Recycler recycler, State state) {
            return -1;
        }

        public final void Q(Rect rect, View view) {
            Matrix matrix;
            Rect rect2 = ((LayoutParams) view.getLayoutParams()).b;
            rect.set(-rect2.left, -rect2.top, view.getWidth() + rect2.right, view.getHeight() + rect2.bottom);
            if (this.b != null && (matrix = view.getMatrix()) != null && !matrix.isIdentity()) {
                RectF rectF = this.b.p;
                rectF.set(rect);
                matrix.mapRect(rectF);
                rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
            }
            rect.offset(view.getLeft(), view.getTop());
        }

        public boolean R() {
            return false;
        }

        public void U(int i) {
            RecyclerView recyclerView = this.b;
            if (recyclerView != null) {
                int c2 = recyclerView.j.c();
                for (int i2 = 0; i2 < c2; i2++) {
                    recyclerView.j.b(i2).offsetLeftAndRight(i);
                }
            }
        }

        public void V(int i) {
            RecyclerView recyclerView = this.b;
            if (recyclerView != null) {
                int c2 = recyclerView.j.c();
                for (int i2 = 0; i2 < c2; i2++) {
                    recyclerView.j.b(i2).offsetTopAndBottom(i);
                }
            }
        }

        public void X(RecyclerView recyclerView) {
        }

        public View Z(View view, int i, Recycler recycler, State state) {
            return null;
        }

        public void a0(AccessibilityEvent accessibilityEvent) {
            RecyclerView recyclerView = this.b;
            Recycler recycler = recyclerView.g;
            if (accessibilityEvent != null) {
                boolean z = true;
                if (!recyclerView.canScrollVertically(1) && !this.b.canScrollVertically(-1) && !this.b.canScrollHorizontally(-1) && !this.b.canScrollHorizontally(1)) {
                    z = false;
                }
                accessibilityEvent.setScrollable(z);
                Adapter adapter = this.b.q;
                if (adapter != null) {
                    accessibilityEvent.setItemCount(adapter.d());
                }
            }
        }

        public void b0(Recycler recycler, State state, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            if (this.b.canScrollVertically(-1) || this.b.canScrollHorizontally(-1)) {
                accessibilityNodeInfoCompat.a(8192);
                accessibilityNodeInfoCompat.t(true);
            }
            if (this.b.canScrollVertically(1) || this.b.canScrollHorizontally(1)) {
                accessibilityNodeInfoCompat.a(ConstantsKt.DEFAULT_BLOCK_SIZE);
                accessibilityNodeInfoCompat.t(true);
            }
            accessibilityNodeInfoCompat.l(AccessibilityNodeInfoCompat.CollectionInfoCompat.a(P(recycler, state), z(recycler, state), 0));
        }

        public final void c(int i, View view, boolean z) {
            int d;
            int i2;
            ViewHolder M = RecyclerView.M(view);
            if (!z && !M.j()) {
                this.b.k.c(M);
            } else {
                SimpleArrayMap simpleArrayMap = this.b.k.f1605a;
                ViewInfoStore.InfoRecord infoRecord = (ViewInfoStore.InfoRecord) simpleArrayMap.get(M);
                if (infoRecord == null) {
                    infoRecord = ViewInfoStore.InfoRecord.a();
                    simpleArrayMap.put(M, infoRecord);
                }
                infoRecord.f1606a |= 1;
            }
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            if (!M.r() && !M.k()) {
                int i3 = -1;
                if (view.getParent() == this.b) {
                    ChildHelper childHelper = this.f1567a;
                    ChildHelper.Bucket bucket = childHelper.b;
                    int indexOfChild = RecyclerView.this.indexOfChild(view);
                    if (indexOfChild == -1 || bucket.d(indexOfChild)) {
                        i2 = -1;
                    } else {
                        i2 = indexOfChild - bucket.b(indexOfChild);
                    }
                    if (i == -1) {
                        i = this.f1567a.c();
                    }
                    if (i2 != -1) {
                        if (i2 != i) {
                            LayoutManager layoutManager = this.b.r;
                            View w = layoutManager.w(i2);
                            if (w != null) {
                                layoutManager.w(i2);
                                ChildHelper childHelper2 = layoutManager.f1567a;
                                int d2 = childHelper2.d(i2);
                                childHelper2.b.f(d2);
                                RecyclerView recyclerView = RecyclerView.this;
                                View childAt = recyclerView.getChildAt(d2);
                                if (childAt != null) {
                                    ViewHolder M2 = RecyclerView.M(childAt);
                                    if (M2 != null) {
                                        if (M2.l() && !M2.q()) {
                                            StringBuilder sb = new StringBuilder("called detach on an already detached child ");
                                            sb.append(M2);
                                            throw new IllegalArgumentException(a.i(recyclerView, sb));
                                        }
                                        if (RecyclerView.H0) {
                                            Log.d("RecyclerView", "tmpDetach " + M2);
                                        }
                                        M2.a(256);
                                    }
                                } else if (RecyclerView.G0) {
                                    StringBuilder sb2 = new StringBuilder("No view at offset ");
                                    sb2.append(d2);
                                    throw new IllegalArgumentException(a.i(recyclerView, sb2));
                                }
                                recyclerView.detachViewFromParent(d2);
                                LayoutParams layoutParams2 = (LayoutParams) w.getLayoutParams();
                                ViewHolder M3 = RecyclerView.M(w);
                                if (M3.j()) {
                                    SimpleArrayMap simpleArrayMap2 = layoutManager.b.k.f1605a;
                                    ViewInfoStore.InfoRecord infoRecord2 = (ViewInfoStore.InfoRecord) simpleArrayMap2.get(M3);
                                    if (infoRecord2 == null) {
                                        infoRecord2 = ViewInfoStore.InfoRecord.a();
                                        simpleArrayMap2.put(M3, infoRecord2);
                                    }
                                    infoRecord2.f1606a = 1 | infoRecord2.f1606a;
                                } else {
                                    layoutManager.b.k.c(M3);
                                }
                                layoutManager.f1567a.a(w, i, layoutParams2, M3.j());
                            } else {
                                throw new IllegalArgumentException("Cannot move a child from non-existing index:" + i2 + layoutManager.b.toString());
                            }
                        }
                    } else {
                        StringBuilder sb3 = new StringBuilder("Added View has RecyclerView as parent but view is not a real child. Unfiltered index:");
                        sb3.append(this.b.indexOfChild(view));
                        throw new IllegalStateException(a.i(this.b, sb3));
                    }
                } else {
                    ChildHelper childHelper3 = this.f1567a;
                    RecyclerView recyclerView2 = RecyclerView.this;
                    if (i < 0) {
                        d = recyclerView2.getChildCount();
                    } else {
                        d = childHelper3.d(i);
                    }
                    childHelper3.b.e(d, false);
                    recyclerView2.addView(view, d);
                    ViewHolder M4 = RecyclerView.M(view);
                    Adapter adapter = recyclerView2.q;
                    if (adapter != null && M4 != null) {
                        adapter.r(M4);
                    }
                    ArrayList arrayList = recyclerView2.H;
                    if (arrayList != null) {
                        for (int size = arrayList.size() - 1; size >= 0; size--) {
                            ((OnChildAttachStateChangeListener) recyclerView2.H.get(size)).c(view);
                        }
                    }
                    layoutParams.f1574c = true;
                    SmoothScroller smoothScroller = this.e;
                    if (smoothScroller != null && smoothScroller.e) {
                        smoothScroller.b.getClass();
                        ViewHolder M5 = RecyclerView.M(view);
                        if (M5 != null) {
                            i3 = M5.d();
                        }
                        if (i3 == smoothScroller.f1582a) {
                            smoothScroller.f = view;
                            if (RecyclerView.H0) {
                                Log.d("RecyclerView", "smooth scroll target view has been attached");
                            }
                        }
                    }
                }
            } else {
                if (M.k()) {
                    M.n.m(M);
                } else {
                    M.j &= -33;
                }
                this.f1567a.a(view, i, view.getLayoutParams(), false);
            }
            if (layoutParams.d) {
                if (RecyclerView.H0) {
                    Log.d("RecyclerView", "consuming pending invalidate on child " + layoutParams.f1573a);
                }
                M.f1589a.invalidate();
                layoutParams.d = false;
            }
        }

        public final void c0(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            ViewHolder M = RecyclerView.M(view);
            if (M != null && !M.j()) {
                ChildHelper childHelper = this.f1567a;
                if (!childHelper.f1496c.contains(M.f1589a)) {
                    RecyclerView recyclerView = this.b;
                    d0(recyclerView.g, recyclerView.m0, view, accessibilityNodeInfoCompat);
                }
            }
        }

        public void d(String str) {
            RecyclerView recyclerView = this.b;
            if (recyclerView != null) {
                recyclerView.k(str);
            }
        }

        public void d0(Recycler recycler, State state, View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        }

        public final void e(Rect rect, View view) {
            RecyclerView recyclerView = this.b;
            if (recyclerView == null) {
                rect.set(0, 0, 0, 0);
            } else {
                rect.set(recyclerView.O(view));
            }
        }

        public void e0(RecyclerView recyclerView, int i, int i2) {
        }

        public boolean f() {
            return false;
        }

        public boolean g() {
            return false;
        }

        public boolean h(LayoutParams layoutParams) {
            return layoutParams != null;
        }

        public void h0(RecyclerView recyclerView, int i, int i2) {
        }

        public void j(int i, int i2, State state, LayoutPrefetchRegistry layoutPrefetchRegistry) {
        }

        public void j0(Recycler recycler, State state) {
            Log.e("RecyclerView", "You must override onLayoutChildren(Recycler recycler, State state) ");
        }

        public void k(int i, LayoutPrefetchRegistry layoutPrefetchRegistry) {
        }

        public void k0(State state) {
        }

        public int l(State state) {
            return 0;
        }

        public void l0(Parcelable parcelable) {
        }

        public int m(State state) {
            return 0;
        }

        public Parcelable m0() {
            return null;
        }

        public int n(State state) {
            return 0;
        }

        public void n0(int i) {
        }

        public int o(State state) {
            return 0;
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x008d A[ADDED_TO_REGION] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean o0(androidx.recyclerview.widget.RecyclerView.Recycler r3, androidx.recyclerview.widget.RecyclerView.State r4, int r5, android.os.Bundle r6) {
            /*
                r2 = this;
                androidx.recyclerview.widget.RecyclerView r3 = r2.b
                r4 = 0
                if (r3 != 0) goto L7
                goto L8f
            L7:
                int r3 = r2.o
                int r6 = r2.n
                android.graphics.Rect r0 = new android.graphics.Rect
                r0.<init>()
                androidx.recyclerview.widget.RecyclerView r1 = r2.b
                android.graphics.Matrix r1 = r1.getMatrix()
                boolean r1 = r1.isIdentity()
                if (r1 == 0) goto L2c
                androidx.recyclerview.widget.RecyclerView r1 = r2.b
                boolean r1 = r1.getGlobalVisibleRect(r0)
                if (r1 == 0) goto L2c
                int r3 = r0.height()
                int r6 = r0.width()
            L2c:
                r0 = 4096(0x1000, float:5.74E-42)
                r1 = 1
                if (r5 == r0) goto L64
                r0 = 8192(0x2000, float:1.148E-41)
                if (r5 == r0) goto L38
                r3 = r4
                r5 = r3
                goto L8b
            L38:
                androidx.recyclerview.widget.RecyclerView r5 = r2.b
                r0 = -1
                boolean r5 = r5.canScrollVertically(r0)
                if (r5 == 0) goto L4d
                int r5 = r2.M()
                int r3 = r3 - r5
                int r5 = r2.J()
                int r3 = r3 - r5
                int r3 = -r3
                goto L4e
            L4d:
                r3 = r4
            L4e:
                androidx.recyclerview.widget.RecyclerView r5 = r2.b
                boolean r5 = r5.canScrollHorizontally(r0)
                if (r5 == 0) goto L62
                int r5 = r2.K()
                int r6 = r6 - r5
                int r5 = r2.L()
                int r6 = r6 - r5
                int r5 = -r6
                goto L8b
            L62:
                r5 = r4
                goto L8b
            L64:
                androidx.recyclerview.widget.RecyclerView r5 = r2.b
                boolean r5 = r5.canScrollVertically(r1)
                if (r5 == 0) goto L77
                int r5 = r2.M()
                int r3 = r3 - r5
                int r5 = r2.J()
                int r3 = r3 - r5
                goto L78
            L77:
                r3 = r4
            L78:
                androidx.recyclerview.widget.RecyclerView r5 = r2.b
                boolean r5 = r5.canScrollHorizontally(r1)
                if (r5 == 0) goto L62
                int r5 = r2.K()
                int r6 = r6 - r5
                int r5 = r2.L()
                int r5 = r6 - r5
            L8b:
                if (r3 != 0) goto L90
                if (r5 != 0) goto L90
            L8f:
                return r4
            L90:
                androidx.recyclerview.widget.RecyclerView r4 = r2.b
                r4.k0(r5, r3, r1)
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.LayoutManager.o0(androidx.recyclerview.widget.RecyclerView$Recycler, androidx.recyclerview.widget.RecyclerView$State, int, android.os.Bundle):boolean");
        }

        public int p(State state) {
            return 0;
        }

        public final void p0(Recycler recycler) {
            for (int x = x() - 1; x >= 0; x--) {
                if (!RecyclerView.M(w(x)).q()) {
                    s0(x, recycler);
                }
            }
        }

        public int q(State state) {
            return 0;
        }

        public final void q0(Recycler recycler) {
            ArrayList arrayList = recycler.f1579a;
            int size = arrayList.size();
            for (int i = size - 1; i >= 0; i--) {
                View view = ((ViewHolder) arrayList.get(i)).f1589a;
                ViewHolder M = RecyclerView.M(view);
                if (!M.q()) {
                    M.p(false);
                    if (M.l()) {
                        this.b.removeDetachedView(view, false);
                    }
                    ItemAnimator itemAnimator = this.b.R;
                    if (itemAnimator != null) {
                        itemAnimator.i(M);
                    }
                    M.p(true);
                    ViewHolder M2 = RecyclerView.M(view);
                    M2.n = null;
                    M2.o = false;
                    M2.j &= -33;
                    recycler.j(M2);
                }
            }
            arrayList.clear();
            ArrayList arrayList2 = recycler.b;
            if (arrayList2 != null) {
                arrayList2.clear();
            }
            if (size > 0) {
                this.b.invalidate();
            }
        }

        public final void r(Recycler recycler) {
            for (int x = x() - 1; x >= 0; x--) {
                View w = w(x);
                ViewHolder M = RecyclerView.M(w);
                if (M.q()) {
                    if (RecyclerView.H0) {
                        Log.d("RecyclerView", "ignoring view " + M);
                    }
                } else if (M.h() && !M.j() && !this.b.q.b) {
                    t0(x);
                    recycler.j(M);
                } else {
                    w(x);
                    ChildHelper childHelper = this.f1567a;
                    int d = childHelper.d(x);
                    childHelper.b.f(d);
                    RecyclerView recyclerView = RecyclerView.this;
                    View childAt = recyclerView.getChildAt(d);
                    if (childAt != null) {
                        ViewHolder M2 = RecyclerView.M(childAt);
                        if (M2 != null) {
                            if (M2.l() && !M2.q()) {
                                StringBuilder sb = new StringBuilder("called detach on an already detached child ");
                                sb.append(M2);
                                throw new IllegalArgumentException(a.i(recyclerView, sb));
                            }
                            if (RecyclerView.H0) {
                                Log.d("RecyclerView", "tmpDetach " + M2);
                            }
                            M2.a(256);
                        }
                    } else if (RecyclerView.G0) {
                        StringBuilder sb2 = new StringBuilder("No view at offset ");
                        sb2.append(d);
                        throw new IllegalArgumentException(a.i(recyclerView, sb2));
                    }
                    recyclerView.detachViewFromParent(d);
                    recycler.k(w);
                    this.b.k.c(M);
                }
            }
        }

        public final void r0(View view, Recycler recycler) {
            ChildHelper childHelper = this.f1567a;
            AnonymousClass5 anonymousClass5 = childHelper.f1495a;
            int indexOfChild = RecyclerView.this.indexOfChild(view);
            if (indexOfChild >= 0) {
                if (childHelper.b.f(indexOfChild)) {
                    childHelper.e(view);
                }
                anonymousClass5.b(indexOfChild);
            }
            recycler.i(view);
        }

        public View s(int i) {
            int x = x();
            for (int i2 = 0; i2 < x; i2++) {
                View w = w(i2);
                ViewHolder M = RecyclerView.M(w);
                if (M != null && M.d() == i && !M.q() && (this.b.m0.g || !M.j())) {
                    return w;
                }
            }
            return null;
        }

        public final void s0(int i, Recycler recycler) {
            View w = w(i);
            t0(i);
            recycler.i(w);
        }

        public abstract LayoutParams t();

        public final void t0(int i) {
            if (w(i) != null) {
                ChildHelper childHelper = this.f1567a;
                int d = childHelper.d(i);
                AnonymousClass5 anonymousClass5 = childHelper.f1495a;
                View childAt = RecyclerView.this.getChildAt(d);
                if (childAt != null) {
                    if (childHelper.b.f(d)) {
                        childHelper.e(childAt);
                    }
                    anonymousClass5.b(d);
                }
            }
        }

        public LayoutParams u(Context context, AttributeSet attributeSet) {
            return new LayoutParams(context, attributeSet);
        }

        /* JADX WARN: Code restructure failed: missing block: B:18:0x00ab, code lost:
        
            if ((r5.bottom - r10) > r2) goto L28;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean u0(androidx.recyclerview.widget.RecyclerView r9, android.view.View r10, android.graphics.Rect r11, boolean r12, boolean r13) {
            /*
                r8 = this;
                int r0 = r8.K()
                int r1 = r8.M()
                int r2 = r8.n
                int r3 = r8.L()
                int r2 = r2 - r3
                int r3 = r8.o
                int r4 = r8.J()
                int r3 = r3 - r4
                int r4 = r10.getLeft()
                int r5 = r11.left
                int r4 = r4 + r5
                int r5 = r10.getScrollX()
                int r4 = r4 - r5
                int r5 = r10.getTop()
                int r6 = r11.top
                int r5 = r5 + r6
                int r10 = r10.getScrollY()
                int r5 = r5 - r10
                int r10 = r11.width()
                int r10 = r10 + r4
                int r11 = r11.height()
                int r11 = r11 + r5
                int r4 = r4 - r0
                r0 = 0
                int r6 = java.lang.Math.min(r0, r4)
                int r5 = r5 - r1
                int r1 = java.lang.Math.min(r0, r5)
                int r10 = r10 - r2
                int r2 = java.lang.Math.max(r0, r10)
                int r11 = r11 - r3
                int r11 = java.lang.Math.max(r0, r11)
                int r3 = r8.I()
                r7 = 1
                if (r3 != r7) goto L5c
                if (r2 == 0) goto L57
                goto L64
            L57:
                int r2 = java.lang.Math.max(r6, r10)
                goto L64
            L5c:
                if (r6 == 0) goto L5f
                goto L63
            L5f:
                int r6 = java.lang.Math.min(r4, r2)
            L63:
                r2 = r6
            L64:
                if (r1 == 0) goto L67
                goto L6b
            L67:
                int r1 = java.lang.Math.min(r5, r11)
            L6b:
                int[] r10 = new int[]{r2, r1}
                r11 = r10[r0]
                r10 = r10[r7]
                if (r13 == 0) goto Lae
                android.view.View r13 = r9.getFocusedChild()
                if (r13 != 0) goto L7c
                goto Lb3
            L7c:
                int r1 = r8.K()
                int r2 = r8.M()
                int r3 = r8.n
                int r4 = r8.L()
                int r3 = r3 - r4
                int r4 = r8.o
                int r5 = r8.J()
                int r4 = r4 - r5
                androidx.recyclerview.widget.RecyclerView r5 = r8.b
                android.graphics.Rect r5 = r5.n
                r8.B(r5, r13)
                int r13 = r5.left
                int r13 = r13 - r11
                if (r13 >= r3) goto Lb3
                int r13 = r5.right
                int r13 = r13 - r11
                if (r13 <= r1) goto Lb3
                int r13 = r5.top
                int r13 = r13 - r10
                if (r13 >= r4) goto Lb3
                int r13 = r5.bottom
                int r13 = r13 - r10
                if (r13 > r2) goto Lae
                goto Lb3
            Lae:
                if (r11 != 0) goto Lb4
                if (r10 == 0) goto Lb3
                goto Lb4
            Lb3:
                return r0
            Lb4:
                if (r12 == 0) goto Lba
                r9.scrollBy(r11, r10)
                return r7
            Lba:
                r9.k0(r11, r10, r0)
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.LayoutManager.u0(androidx.recyclerview.widget.RecyclerView, android.view.View, android.graphics.Rect, boolean, boolean):boolean");
        }

        public LayoutParams v(ViewGroup.LayoutParams layoutParams) {
            if (layoutParams instanceof LayoutParams) {
                return new LayoutParams((LayoutParams) layoutParams);
            }
            if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                return new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
            }
            return new LayoutParams(layoutParams);
        }

        public final void v0() {
            RecyclerView recyclerView = this.b;
            if (recyclerView != null) {
                recyclerView.requestLayout();
            }
        }

        public final View w(int i) {
            ChildHelper childHelper = this.f1567a;
            if (childHelper != null) {
                return childHelper.b(i);
            }
            return null;
        }

        public int w0(int i, Recycler recycler, State state) {
            return 0;
        }

        public final int x() {
            ChildHelper childHelper = this.f1567a;
            if (childHelper != null) {
                return childHelper.c();
            }
            return 0;
        }

        public void x0(int i) {
            if (RecyclerView.H0) {
                Log.e("RecyclerView", "You MUST implement scrollToPosition. It will soon become abstract");
            }
        }

        public int y0(int i, Recycler recycler, State state) {
            return 0;
        }

        public int z(Recycler recycler, State state) {
            return -1;
        }

        public final void z0(RecyclerView recyclerView) {
            A0(View.MeasureSpec.makeMeasureSpec(recyclerView.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(recyclerView.getHeight(), 1073741824));
        }

        public void W() {
        }

        public void f0() {
        }

        public void Y(RecyclerView recyclerView) {
        }

        public void g0(int i, int i2) {
        }

        public void i0(int i, int i2) {
        }
    }

    /* loaded from: classes.dex */
    public static abstract class OnScrollListener {
        public void b(RecyclerView recyclerView, int i, int i2) {
        }

        public void a(int i) {
        }
    }

    /* loaded from: classes.dex */
    public static class SimpleOnItemTouchListener implements OnItemTouchListener {
        @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
        public final boolean d(MotionEvent motionEvent) {
            return false;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
        public final void e(boolean z) {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
        public final void a(MotionEvent motionEvent) {
        }
    }

    /* loaded from: classes.dex */
    public static abstract class ItemDecoration {
        public void f(Rect rect, View view, RecyclerView recyclerView) {
            ((LayoutParams) view.getLayoutParams()).f1573a.getClass();
            rect.set(0, 0, 0, 0);
        }

        public void g(Canvas canvas, RecyclerView recyclerView) {
        }

        public void h(Canvas canvas, RecyclerView recyclerView) {
        }
    }
}
