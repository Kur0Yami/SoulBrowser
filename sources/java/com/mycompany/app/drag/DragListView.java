package com.mycompany.app.drag;

import android.content.Context;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.support.v4.media.a;
import android.util.SparseIntArray;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.AbsListView;
import android.widget.BaseAdapter;
import android.widget.Checkable;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.mycompany.app.fragment.FragmentDragView;
import com.mycompany.app.soulbrowser.R;
import java.util.ArrayList;
import kotlin.KotlinVersion;

/* loaded from: classes3.dex */
public class DragListView extends ListView {
    public static final /* synthetic */ int m0 = 0;
    public int A;
    public int B;
    public int C;
    public View[] D;
    public final DragScroller E;
    public float F;
    public float G;
    public int H;
    public int I;
    public float J;
    public float K;
    public float L;
    public float M;
    public float N;
    public DragScrollProfile O;
    public int P;
    public int Q;
    public int R;
    public int S;
    public boolean T;
    public boolean U;
    public FloatViewManager V;
    public MotionEvent W;
    public int a0;
    public final float b0;

    /* renamed from: c, reason: collision with root package name */
    public boolean f15598c;
    public float c0;
    public AdapterWrapper d0;
    public boolean e0;
    public View f;
    public boolean f0;
    public final Point g;
    public final HeightCache g0;
    public final Point h;
    public final RemoveAnimator h0;
    public int i;
    public final DropAnimator i0;
    public boolean j;
    public boolean j0;
    public final DataSetObserver k;
    public float k0;
    public final float l;
    public boolean l0;
    public float m;
    public int n;
    public int o;
    public int p;
    public final boolean q;
    public int r;
    public int s;
    public int t;
    public DragListener u;
    public DropListener v;
    public RemoveListener w;
    public boolean x;
    public int y;
    public final int z;

    /* renamed from: com.mycompany.app.drag.DragListView$3, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass3 implements Runnable {
        public AnonymousClass3() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            int i;
            DragListView dragListView = DragListView.this;
            dragListView.y = 2;
            if (dragListView.v != null && (i = dragListView.n) >= 0 && i < dragListView.getCount()) {
                int headerViewsCount = dragListView.getHeaderViewsCount();
                dragListView.v.a(dragListView.r - headerViewsCount, dragListView.n - headerViewsCount);
            }
            dragListView.f();
            dragListView.c();
            dragListView.r = -1;
            dragListView.o = -1;
            dragListView.p = -1;
            dragListView.n = -1;
            dragListView.a();
            if (dragListView.U) {
                dragListView.y = 3;
            } else {
                dragListView.y = 0;
            }
        }
    }

    /* loaded from: classes3.dex */
    public class AdapterWrapper extends BaseAdapter {

        /* renamed from: c, reason: collision with root package name */
        public final ListAdapter f15602c;

        public AdapterWrapper(ListAdapter listAdapter) {
            this.f15602c = listAdapter;
            listAdapter.registerDataSetObserver(new DataSetObserver() { // from class: com.mycompany.app.drag.DragListView.AdapterWrapper.1
                @Override // android.database.DataSetObserver
                public final void onChanged() {
                    AdapterWrapper.this.notifyDataSetChanged();
                }

                @Override // android.database.DataSetObserver
                public final void onInvalidated() {
                    AdapterWrapper.this.notifyDataSetInvalidated();
                }
            });
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public final boolean areAllItemsEnabled() {
            return this.f15602c.areAllItemsEnabled();
        }

        @Override // android.widget.Adapter
        public final int getCount() {
            return this.f15602c.getCount();
        }

        @Override // android.widget.Adapter
        public final Object getItem(int i) {
            return this.f15602c.getItem(i);
        }

        @Override // android.widget.Adapter
        public final long getItemId(int i) {
            return this.f15602c.getItemId(i);
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public final int getItemViewType(int i) {
            return this.f15602c.getItemViewType(i);
        }

        @Override // android.widget.Adapter
        public final View getView(int i, View view, ViewGroup viewGroup) {
            View view2;
            DragListItem dragListItem;
            ListAdapter listAdapter = this.f15602c;
            DragListView dragListView = DragListView.this;
            if (view != null) {
                dragListItem = (DragListItem) view;
                View childAt = dragListItem.getChildAt(0);
                view2 = listAdapter.getView(i, childAt, dragListView);
                if (view2 != childAt) {
                    if (childAt != null) {
                        dragListItem.removeViewAt(0);
                    }
                    dragListItem.addView(view2);
                }
            } else {
                view2 = listAdapter.getView(i, null, dragListView);
                if (view2 instanceof Checkable) {
                    dragListItem = new DragListItem(dragListView.getContext());
                } else {
                    dragListItem = new DragListItem(dragListView.getContext());
                }
                dragListItem.setLayoutParams(new AbsListView.LayoutParams(-1, -2));
                dragListItem.addView(view2);
            }
            if (view2 != null) {
                Object tag = view2.getTag();
                if (tag != null) {
                    dragListItem.setTag(tag);
                }
                dragListItem.setActivated(view2.isActivated());
            }
            int headerViewsCount = dragListView.getHeaderViewsCount() + i;
            int i2 = DragListView.m0;
            dragListView.b(headerViewsCount, dragListItem, true);
            return dragListItem;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public final int getViewTypeCount() {
            return this.f15602c.getViewTypeCount();
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public final boolean hasStableIds() {
            return this.f15602c.hasStableIds();
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public final boolean isEmpty() {
            return this.f15602c.isEmpty();
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public final boolean isEnabled(int i) {
            return this.f15602c.isEnabled(i);
        }
    }

    /* loaded from: classes3.dex */
    public interface DragListener {
        void b();
    }

    /* loaded from: classes3.dex */
    public interface DragScrollProfile {
        float a(float f);
    }

    /* loaded from: classes3.dex */
    public class DragScroller implements Runnable {

        /* renamed from: c, reason: collision with root package name */
        public boolean f15604c;
        public long f;
        public long g;
        public int h;
        public int i;
        public float j;
        public boolean k = false;
        public final /* synthetic */ FragmentDragView l;

        public DragScroller(FragmentDragView fragmentDragView) {
            this.l = fragmentDragView;
        }

        public final void a() {
            this.l.removeCallbacks(this);
            this.k = false;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (this.f15604c) {
                this.k = false;
                return;
            }
            FragmentDragView fragmentDragView = this.l;
            int firstVisiblePosition = fragmentDragView.getFirstVisiblePosition();
            int lastVisiblePosition = fragmentDragView.getLastVisiblePosition();
            int count = fragmentDragView.getCount();
            int paddingTop = fragmentDragView.getPaddingTop();
            int height = (fragmentDragView.getHeight() - paddingTop) - fragmentDragView.getPaddingBottom();
            int min = Math.min(fragmentDragView.Q, fragmentDragView.i + fragmentDragView.B);
            int max = Math.max(fragmentDragView.Q, fragmentDragView.i - fragmentDragView.B);
            if (this.i == 0) {
                View childAt = fragmentDragView.getChildAt(0);
                if (childAt == null) {
                    this.k = false;
                    return;
                } else {
                    if (firstVisiblePosition == 0 && childAt.getTop() == paddingTop) {
                        this.k = false;
                        return;
                    }
                    this.j = fragmentDragView.O.a((fragmentDragView.K - max) / fragmentDragView.L);
                }
            } else {
                View childAt2 = fragmentDragView.getChildAt(lastVisiblePosition - firstVisiblePosition);
                if (childAt2 == null) {
                    this.k = false;
                    return;
                } else {
                    if (lastVisiblePosition == count - 1 && childAt2.getBottom() <= height + paddingTop) {
                        this.k = false;
                        return;
                    }
                    this.j = -fragmentDragView.O.a((min - fragmentDragView.J) / fragmentDragView.M);
                }
            }
            long uptimeMillis = SystemClock.uptimeMillis();
            this.g = uptimeMillis;
            int round = Math.round(this.j * ((float) (uptimeMillis - this.f)));
            this.h = round;
            if (round >= 0) {
                this.h = Math.min(height, round);
                lastVisiblePosition = firstVisiblePosition;
            } else {
                this.h = Math.max(-height, round);
            }
            View childAt3 = fragmentDragView.getChildAt(lastVisiblePosition - firstVisiblePosition);
            int top = childAt3.getTop() + this.h;
            if (lastVisiblePosition == 0 && top > paddingTop) {
                top = paddingTop;
            }
            fragmentDragView.e0 = true;
            fragmentDragView.setSelectionFromTop(lastVisiblePosition, top - paddingTop);
            fragmentDragView.layoutChildren();
            fragmentDragView.invalidate();
            fragmentDragView.e0 = false;
            fragmentDragView.i(lastVisiblePosition, childAt3, false);
            this.f = this.g;
            fragmentDragView.post(this);
        }
    }

    /* loaded from: classes3.dex */
    public interface DragSortListener extends DropListener, DragListener, RemoveListener {
    }

    /* loaded from: classes3.dex */
    public class DropAnimator extends SmoothAnimator {
        public int m;
        public int n;
        public float o;
        public float p;
        public final /* synthetic */ FragmentDragView q;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public DropAnimator(FragmentDragView fragmentDragView) {
            super(fragmentDragView);
            this.q = fragmentDragView;
        }

        @Override // com.mycompany.app.drag.DragListView.SmoothAnimator
        public final void a() {
            int i = DragListView.m0;
            FragmentDragView fragmentDragView = this.q;
            fragmentDragView.post(new AnonymousClass3());
        }

        @Override // com.mycompany.app.drag.DragListView.SmoothAnimator
        public final void b(float f) {
            int c2 = c();
            FragmentDragView fragmentDragView = this.q;
            int paddingLeft = fragmentDragView.getPaddingLeft();
            Point point = fragmentDragView.g;
            float f2 = point.y - c2;
            float f3 = point.x - paddingLeft;
            float f4 = 1.0f - f;
            if (f4 >= Math.abs(f2 / this.o) && f4 >= Math.abs(f3 / this.p)) {
                return;
            }
            point.y = c2 + ((int) (this.o * f4));
            point.x = fragmentDragView.getPaddingLeft() + ((int) (this.p * f4));
            fragmentDragView.h();
        }

        public final int c() {
            FragmentDragView fragmentDragView = this.q;
            int firstVisiblePosition = fragmentDragView.getFirstVisiblePosition();
            int dividerHeight = (fragmentDragView.getDividerHeight() + fragmentDragView.z) / 2;
            View childAt = fragmentDragView.getChildAt(this.m - firstVisiblePosition);
            if (childAt != null) {
                int i = this.m;
                int i2 = this.n;
                if (i == i2) {
                    return childAt.getTop();
                }
                if (i < i2) {
                    return childAt.getTop() - dividerHeight;
                }
                return (childAt.getBottom() + dividerHeight) - fragmentDragView.A;
            }
            this.k = true;
            return -1;
        }
    }

    /* loaded from: classes3.dex */
    public interface DropListener {
        void a(int i, int i2);
    }

    /* loaded from: classes3.dex */
    public interface FloatViewManager {
        void a(Point point);

        void b(View view);

        ImageView c(int i);
    }

    /* loaded from: classes3.dex */
    public static class HeightCache {

        /* renamed from: a, reason: collision with root package name */
        public SparseIntArray f15605a;
        public ArrayList b;

        /* renamed from: c, reason: collision with root package name */
        public int f15606c;
    }

    /* loaded from: classes3.dex */
    public class LiftAnimator extends SmoothAnimator {
        @Override // com.mycompany.app.drag.DragListView.SmoothAnimator
        public final void b(float f) {
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public class RemoveAnimator extends SmoothAnimator {
        public float m;
        public float n;
        public float o;
        public int p;
        public int q;
        public int r;
        public int s;
        public final /* synthetic */ FragmentDragView t;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public RemoveAnimator(FragmentDragView fragmentDragView) {
            super(fragmentDragView);
            this.t = fragmentDragView;
            this.p = -1;
            this.q = -1;
        }

        @Override // com.mycompany.app.drag.DragListView.SmoothAnimator
        public final void a() {
            FragmentDragView fragmentDragView = this.t;
            fragmentDragView.j(fragmentDragView.r - fragmentDragView.getHeaderViewsCount());
        }

        @Override // com.mycompany.app.drag.DragListView.SmoothAnimator
        public final void b(float f) {
            View childAt;
            int i;
            float f2 = 1.0f - f;
            FragmentDragView fragmentDragView = this.t;
            int firstVisiblePosition = fragmentDragView.getFirstVisiblePosition();
            View childAt2 = fragmentDragView.getChildAt(this.r - firstVisiblePosition);
            if (fragmentDragView.j0) {
                float uptimeMillis = ((float) (SystemClock.uptimeMillis() - this.f15607c)) / 1000.0f;
                if (uptimeMillis != 0.0f) {
                    float f3 = fragmentDragView.k0 * uptimeMillis;
                    int width = fragmentDragView.getWidth();
                    float f4 = fragmentDragView.k0;
                    if (f4 > 0.0f) {
                        i = 1;
                    } else {
                        i = -1;
                    }
                    float f5 = i * uptimeMillis;
                    float f6 = width;
                    fragmentDragView.k0 = (f5 * f6) + f4;
                    float f7 = this.m + f3;
                    this.m = f7;
                    fragmentDragView.g.x = (int) f7;
                    if (f7 < f6 && f7 > (-width)) {
                        this.f15607c = SystemClock.uptimeMillis();
                        fragmentDragView.h();
                        return;
                    }
                } else {
                    return;
                }
            }
            if (childAt2 != null) {
                if (this.p == -1) {
                    this.p = fragmentDragView.m(this.r, childAt2, false);
                    this.n = childAt2.getHeight() - this.p;
                }
                int max = Math.max((int) (this.n * f2), 1);
                ViewGroup.LayoutParams layoutParams = childAt2.getLayoutParams();
                layoutParams.height = this.p + max;
                childAt2.setLayoutParams(layoutParams);
            }
            int i2 = this.s;
            if (i2 != this.r && (childAt = fragmentDragView.getChildAt(i2 - firstVisiblePosition)) != null) {
                if (this.q == -1) {
                    this.q = fragmentDragView.m(this.s, childAt, false);
                    this.o = childAt.getHeight() - this.q;
                }
                int max2 = Math.max((int) (f2 * this.o), 1);
                ViewGroup.LayoutParams layoutParams2 = childAt.getLayoutParams();
                layoutParams2.height = this.q + max2;
                childAt.setLayoutParams(layoutParams2);
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface RemoveListener {
        void remove();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v8, types: [com.mycompany.app.drag.DragViewManager, com.mycompany.app.drag.DragListView$FloatViewManager, com.mycompany.app.drag.DragController, android.view.GestureDetector$OnGestureListener, java.lang.Object, android.view.View$OnTouchListener] */
    /* JADX WARN: Type inference failed for: r5v0, types: [com.mycompany.app.drag.DragListView$HeightCache, java.lang.Object] */
    public DragListView(Context context) {
        super(context);
        this.g = new Point();
        this.h = new Point();
        this.j = false;
        this.l = 1.0f;
        this.m = 1.0f;
        this.q = false;
        this.x = true;
        this.y = 0;
        this.z = 1;
        this.C = 0;
        this.D = new View[1];
        this.F = 0.33333334f;
        this.G = 0.33333334f;
        this.N = 0.5f;
        final FragmentDragView fragmentDragView = (FragmentDragView) this;
        this.O = new DragScrollProfile() { // from class: com.mycompany.app.drag.DragListView.1
            @Override // com.mycompany.app.drag.DragListView.DragScrollProfile
            public final float a(float f) {
                return FragmentDragView.this.N * f;
            }
        };
        this.S = 0;
        this.T = false;
        this.U = false;
        this.V = null;
        this.a0 = 0;
        this.b0 = 0.7f;
        this.c0 = 0.0f;
        this.e0 = false;
        this.f0 = false;
        ?? obj = new Object();
        obj.f15605a = new SparseIntArray(3);
        obj.b = new ArrayList(3);
        obj.f15606c = 3;
        this.g0 = obj;
        this.k0 = 0.0f;
        this.l0 = false;
        this.f15598c = true;
        this.q = true;
        setDragScrollStart(0.33f);
        int i = R.id.item_drag;
        ?? obj2 = new Object();
        obj2.g = fragmentDragView;
        obj2.h = true;
        obj2.j = false;
        obj2.m = -1;
        obj2.n = -1;
        obj2.o = new int[2];
        obj2.r = false;
        GestureDetector.SimpleOnGestureListener simpleOnGestureListener = new GestureDetector.SimpleOnGestureListener();
        obj2.u = fragmentDragView;
        obj2.k = new GestureDetector(getContext(), (GestureDetector.OnGestureListener) obj2);
        new GestureDetector(getContext(), simpleOnGestureListener).setIsLongpressEnabled(false);
        obj2.l = ViewConfiguration.get(getContext()).getScaledTouchSlop();
        obj2.s = i;
        obj2.i = 1;
        obj2.h = true;
        this.V = obj2;
        setOnTouchListener(obj2);
        this.E = new DragScroller(fragmentDragView);
        this.h0 = new RemoveAnimator(fragmentDragView);
        this.i0 = new DropAnimator(fragmentDragView);
        this.W = MotionEvent.obtain(0L, 0L, 3, 0.0f, 0.0f, 0.0f, 0.0f, 0, 0.0f, 0.0f, 0, 0);
        this.k = new DataSetObserver() { // from class: com.mycompany.app.drag.DragListView.2
            @Override // android.database.DataSetObserver
            public final void onChanged() {
                FragmentDragView fragmentDragView2 = FragmentDragView.this;
                if (fragmentDragView2.y == 4) {
                    fragmentDragView2.e();
                }
            }

            @Override // android.database.DataSetObserver
            public final void onInvalidated() {
                FragmentDragView fragmentDragView2 = FragmentDragView.this;
                if (fragmentDragView2.y == 4) {
                    fragmentDragView2.e();
                }
            }
        };
    }

    public final void a() {
        int firstVisiblePosition = getFirstVisiblePosition();
        int lastVisiblePosition = getLastVisiblePosition();
        int min = Math.min(lastVisiblePosition - firstVisiblePosition, ((getCount() - 1) - getFooterViewsCount()) - firstVisiblePosition);
        for (int max = Math.max(0, getHeaderViewsCount() - firstVisiblePosition); max <= min; max++) {
            View childAt = getChildAt(max);
            if (childAt != null) {
                b(firstVisiblePosition + max, childAt, false);
            }
        }
    }

    public final void b(int i, View view, boolean z) {
        int d;
        int i2;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (i != this.r && i != this.o && i != this.p) {
            d = -2;
        } else {
            d = d(i, m(i, view, z));
        }
        if (d != layoutParams.height) {
            layoutParams.height = d;
            view.setLayoutParams(layoutParams);
        }
        if (i == this.o || i == this.p) {
            int i3 = this.r;
            if (i < i3) {
                ((DragListItem) view).setGravity(80);
            } else if (i > i3) {
                ((DragListItem) view).setGravity(48);
            }
        }
        int visibility = view.getVisibility();
        if (i == this.r && this.f != null) {
            i2 = 4;
        } else {
            i2 = 0;
        }
        if (i2 != visibility) {
            view.setVisibility(i2);
        }
    }

    public final void c() {
        int firstVisiblePosition = getFirstVisiblePosition();
        if (this.r < firstVisiblePosition) {
            int i = 0;
            View childAt = getChildAt(0);
            if (childAt != null) {
                i = childAt.getTop();
            }
            setSelectionFromTop(firstVisiblePosition - 1, i - getPaddingTop());
        }
    }

    public final int d(int i, int i2) {
        boolean z;
        if (this.q && this.o != this.p) {
            z = true;
        } else {
            z = false;
        }
        int i3 = this.A;
        int i4 = this.z;
        int i5 = i3 - i4;
        int i6 = (int) (this.c0 * i5);
        int i7 = this.r;
        if (i == i7) {
            if (i7 == this.o) {
                if (z) {
                    return i6 + i4;
                }
                return i3;
            }
            if (i7 == this.p) {
                return i3 - i6;
            }
            return i4;
        }
        if (i == this.o) {
            if (z) {
                return i2 + i6;
            }
            return i2 + i5;
        }
        if (i == this.p) {
            return (i2 + i5) - i6;
        }
        return i2;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        float f;
        super.dispatchDraw(canvas);
        if (this.y != 0) {
            int i = this.o;
            if (i != this.r) {
                k(i, canvas);
            }
            int i2 = this.p;
            if (i2 != this.o && i2 != this.r) {
                k(i2, canvas);
            }
        }
        View view = this.f;
        if (view != null) {
            int width = view.getWidth();
            int height = this.f.getHeight();
            int i3 = this.g.x;
            int width2 = getWidth();
            if (i3 < 0) {
                i3 = -i3;
            }
            if (i3 < width2) {
                float f2 = (width2 - i3) / width2;
                f = f2 * f2;
            } else {
                f = 0.0f;
            }
            int i4 = (int) (this.m * 255.0f * f);
            canvas.save();
            canvas.translate(r2.x, r2.y);
            canvas.clipRect(0, 0, width, height);
            canvas.saveLayerAlpha(0.0f, 0.0f, width, height, i4);
            this.f.draw(canvas);
            canvas.restore();
            canvas.restore();
        }
    }

    public final void e() {
        if (this.y == 4) {
            this.E.a();
            f();
            this.r = -1;
            this.o = -1;
            this.p = -1;
            this.n = -1;
            a();
            if (this.U) {
                this.y = 3;
            } else {
                this.y = 0;
            }
        }
    }

    public final void f() {
        View view = this.f;
        if (view != null) {
            view.setVisibility(8);
            FloatViewManager floatViewManager = this.V;
            if (floatViewManager != null) {
                floatViewManager.b(this.f);
            }
            this.f = null;
            invalidate();
        }
    }

    public final void g() {
        this.a0 = 0;
        this.U = false;
        if (this.y == 3) {
            this.y = 0;
        }
        this.m = this.l;
        this.l0 = false;
        HeightCache heightCache = this.g0;
        heightCache.f15605a.clear();
        heightCache.b.clear();
    }

    public float getFloatAlpha() {
        return this.m;
    }

    public ListAdapter getInputAdapter() {
        AdapterWrapper adapterWrapper = this.d0;
        if (adapterWrapper == null) {
            return null;
        }
        return adapterWrapper.f15602c;
    }

    public final void h() {
        int childCount = (getChildCount() / 2) + getFirstVisiblePosition();
        View childAt = getChildAt(getChildCount() / 2);
        if (childAt == null) {
            return;
        }
        i(childCount, childAt, true);
    }

    public final void i(int i, View view, boolean z) {
        int i2;
        int i3;
        boolean z2;
        int i4;
        int i5;
        int i6;
        int i7;
        boolean z3 = true;
        this.e0 = true;
        FloatViewManager floatViewManager = this.V;
        Point point = this.g;
        if (floatViewManager != null) {
            this.h.set(this.P, this.Q);
            this.V.a(point);
        }
        int i8 = point.x;
        int i9 = point.y;
        int paddingLeft = getPaddingLeft();
        int i10 = this.S;
        if ((i10 & 1) == 0 && i8 > paddingLeft) {
            point.x = paddingLeft;
        } else if ((i10 & 2) == 0 && i8 < paddingLeft) {
            point.x = paddingLeft;
        }
        int headerViewsCount = getHeaderViewsCount();
        int footerViewsCount = getFooterViewsCount();
        int firstVisiblePosition = getFirstVisiblePosition();
        int lastVisiblePosition = getLastVisiblePosition();
        int paddingTop = getPaddingTop();
        if (firstVisiblePosition < headerViewsCount) {
            paddingTop = getChildAt((headerViewsCount - firstVisiblePosition) - 1).getBottom();
        }
        if ((this.S & 8) == 0 && firstVisiblePosition <= (i7 = this.r)) {
            paddingTop = Math.max(getChildAt(i7 - firstVisiblePosition).getTop(), paddingTop);
        }
        int height = getHeight() - getPaddingBottom();
        if (lastVisiblePosition >= (getCount() - footerViewsCount) - 1) {
            height = getChildAt(((getCount() - footerViewsCount) - 1) - firstVisiblePosition).getBottom();
        }
        if ((this.S & 4) == 0 && lastVisiblePosition >= (i6 = this.r)) {
            height = Math.min(getChildAt(i6 - firstVisiblePosition).getBottom(), height);
        }
        if (i9 < paddingTop) {
            point.y = paddingTop;
        } else {
            int i11 = this.A;
            if (i9 + i11 > height) {
                point.y = height - i11;
            }
        }
        this.i = point.y + this.B;
        int i12 = this.o;
        int i13 = this.p;
        int firstVisiblePosition2 = getFirstVisiblePosition();
        int i14 = this.o;
        View childAt = getChildAt(i14 - firstVisiblePosition2);
        if (childAt == null) {
            i14 = (getChildCount() / 2) + firstVisiblePosition2;
            childAt = getChildAt(i14 - firstVisiblePosition2);
        }
        int top = childAt.getTop();
        int height2 = childAt.getHeight();
        int o = o(i14, top);
        int dividerHeight = getDividerHeight();
        if (this.i < o) {
            while (i14 >= 0) {
                i14--;
                int n = n(i14);
                if (i14 == 0) {
                    i2 = (top - dividerHeight) - n;
                    int i15 = o;
                    o = i2;
                    i3 = i15;
                    break;
                }
                top -= n + dividerHeight;
                int o2 = o(i14, top);
                if (this.i >= o2) {
                    i3 = o;
                    o = o2;
                    break;
                }
                o = o2;
            }
            i3 = o;
        } else {
            int count = getCount();
            while (i14 < count) {
                if (i14 == count - 1) {
                    i2 = top + dividerHeight + height2;
                    int i152 = o;
                    o = i2;
                    i3 = i152;
                    break;
                }
                top += height2 + dividerHeight;
                int i16 = i14 + 1;
                int n2 = n(i16);
                int o3 = o(i16, top);
                if (this.i < o3) {
                    i3 = o;
                    o = o3;
                    break;
                } else {
                    i14 = i16;
                    height2 = n2;
                    o = o3;
                }
            }
            i3 = o;
        }
        int headerViewsCount2 = getHeaderViewsCount();
        int footerViewsCount2 = getFooterViewsCount();
        int i17 = this.o;
        int i18 = this.p;
        float f = this.c0;
        if (this.q) {
            int abs = Math.abs(o - i3);
            int i19 = this.i;
            if (i19 < o) {
                int i20 = o;
                o = i3;
                i3 = i20;
            }
            int i21 = (int) (this.b0 * 0.5f * abs);
            float f2 = i21;
            int i22 = o + i21;
            int i23 = i3 - i21;
            if (i19 < i22) {
                this.o = i14 - 1;
                this.p = i14;
                this.c0 = ((i22 - i19) * 0.5f) / f2;
            } else if (i19 < i23) {
                this.o = i14;
                this.p = i14;
            } else {
                this.o = i14;
                this.p = i14 + 1;
                this.c0 = (((i3 - i19) / f2) + 1.0f) * 0.5f;
            }
        } else {
            this.o = i14;
            this.p = i14;
        }
        if (this.o < headerViewsCount2) {
            this.o = headerViewsCount2;
            this.p = headerViewsCount2;
            i14 = headerViewsCount2;
        } else if (this.p >= getCount() - footerViewsCount2) {
            i14 = (getCount() - footerViewsCount2) - 1;
            this.o = i14;
            this.p = i14;
        }
        if (this.o == i17 && this.p == i18 && this.c0 == f) {
            z2 = false;
        } else {
            z2 = true;
        }
        if (i14 != this.n) {
            DragListener dragListener = this.u;
            if (dragListener != null) {
                dragListener.b();
            }
            this.n = i14;
        } else {
            z3 = z2;
        }
        if (z3) {
            a();
            int l = l(i);
            int height3 = view.getHeight();
            int d = d(i, l);
            int i24 = this.r;
            if (i != i24) {
                i4 = height3 - l;
                i5 = d - l;
            } else {
                i4 = height3;
                i5 = d;
            }
            int i25 = this.A;
            int i26 = this.o;
            if (i24 != i26 && i24 != this.p) {
                i25 -= this.z;
            }
            if (i <= i12) {
                if (i > i26) {
                    i4 = i25 - i5;
                    setSelectionFromTop(i, (view.getTop() + i4) - getPaddingTop());
                    layoutChildren();
                }
                i4 = 0;
                setSelectionFromTop(i, (view.getTop() + i4) - getPaddingTop());
                layoutChildren();
            } else {
                if (i == i13) {
                    if (i <= i26) {
                        i4 -= i25;
                    } else if (i == this.p) {
                        i4 = height3 - d;
                    }
                } else if (i <= i26) {
                    i4 = 0 - i25;
                } else {
                    if (i == this.p) {
                        i4 = 0 - i5;
                    }
                    i4 = 0;
                }
                setSelectionFromTop(i, (view.getTop() + i4) - getPaddingTop());
                layoutChildren();
            }
        }
        if (z3 || z) {
            invalidate();
        }
        this.e0 = false;
    }

    public final void j(int i) {
        this.y = 1;
        RemoveListener removeListener = this.w;
        if (removeListener != null) {
            removeListener.remove();
        }
        f();
        c();
        this.r = -1;
        this.o = -1;
        this.p = -1;
        this.n = -1;
        if (this.U) {
            this.y = 3;
        } else {
            this.y = 0;
        }
    }

    public final void k(int i, Canvas canvas) {
        ViewGroup viewGroup;
        int i2;
        int i3;
        Drawable divider = getDivider();
        int dividerHeight = getDividerHeight();
        if (divider != null && dividerHeight != 0 && (viewGroup = (ViewGroup) getChildAt(i - getFirstVisiblePosition())) != null) {
            int paddingLeft = getPaddingLeft();
            int width = getWidth() - getPaddingRight();
            int height = viewGroup.getChildAt(0).getHeight();
            if (i > this.r) {
                i3 = viewGroup.getTop() + height;
                i2 = dividerHeight + i3;
            } else {
                int bottom = viewGroup.getBottom() - height;
                int i4 = bottom - dividerHeight;
                i2 = bottom;
                i3 = i4;
            }
            canvas.save();
            canvas.clipRect(paddingLeft, i3, width, i2);
            divider.setBounds(paddingLeft, i3, width, i2);
            divider.draw(canvas);
            canvas.restore();
        }
    }

    public final int l(int i) {
        View view;
        if (i == this.r) {
            return 0;
        }
        View childAt = getChildAt(i - getFirstVisiblePosition());
        if (childAt != null) {
            return m(i, childAt, false);
        }
        HeightCache heightCache = this.g0;
        int i2 = heightCache.f15605a.get(i, -1);
        if (i2 != -1) {
            return i2;
        }
        ListAdapter adapter = getAdapter();
        int itemViewType = adapter.getItemViewType(i);
        int viewTypeCount = adapter.getViewTypeCount();
        if (viewTypeCount != this.D.length) {
            this.D = new View[viewTypeCount];
        }
        if (itemViewType >= 0) {
            View view2 = this.D[itemViewType];
            if (view2 == null) {
                view = adapter.getView(i, null, this);
                this.D[itemViewType] = view;
            } else {
                view = adapter.getView(i, view2, this);
            }
        } else {
            view = adapter.getView(i, null, this);
        }
        int m = m(i, view, true);
        ArrayList arrayList = heightCache.b;
        SparseIntArray sparseIntArray = heightCache.f15605a;
        int i3 = sparseIntArray.get(i, -1);
        if (i3 != m) {
            if (i3 == -1) {
                if (sparseIntArray.size() == heightCache.f15606c) {
                    sparseIntArray.delete(((Integer) arrayList.remove(0)).intValue());
                }
            } else {
                arrayList.remove(Integer.valueOf(i));
            }
            sparseIntArray.put(i, m);
            arrayList.add(Integer.valueOf(i));
        }
        return m;
    }

    @Override // android.widget.ListView, android.widget.AbsListView
    public final void layoutChildren() {
        super.layoutChildren();
        View view = this.f;
        if (view != null) {
            if (view.isLayoutRequested() && !this.j) {
                p();
            }
            View view2 = this.f;
            view2.layout(0, 0, view2.getMeasuredWidth(), this.f.getMeasuredHeight());
            this.j = false;
        }
    }

    public final int m(int i, View view, boolean z) {
        int i2;
        if (i == this.r) {
            return 0;
        }
        if (i >= getHeaderViewsCount() && i < getCount() - getFooterViewsCount()) {
            view = ((ViewGroup) view).getChildAt(0);
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams != null && (i2 = layoutParams.height) > 0) {
            return i2;
        }
        int height = view.getHeight();
        if (height != 0 && !z) {
            return height;
        }
        q(view);
        return view.getMeasuredHeight();
    }

    public final int n(int i) {
        View childAt = getChildAt(i - getFirstVisiblePosition());
        if (childAt != null) {
            return childAt.getHeight();
        }
        return d(i, l(i));
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x003d, code lost:
    
        if (r8 <= r5) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int o(int r8, int r9) {
        /*
            r7 = this;
            int r0 = r7.getHeaderViewsCount()
            int r1 = r7.getFooterViewsCount()
            if (r8 <= r0) goto L68
            int r0 = r7.getCount()
            int r0 = r0 - r1
            if (r8 < r0) goto L12
            goto L68
        L12:
            int r0 = r7.getDividerHeight()
            int r1 = r7.A
            int r2 = r7.z
            int r1 = r1 - r2
            int r2 = r7.l(r8)
            int r3 = r7.n(r8)
            int r4 = r7.p
            int r5 = r7.r
            if (r4 > r5) goto L40
            if (r8 != r4) goto L3b
            int r6 = r7.o
            if (r6 == r4) goto L3b
            if (r8 != r5) goto L36
            int r9 = r9 + r3
            int r1 = r7.A
        L34:
            int r9 = r9 - r1
            goto L50
        L36:
            int r3 = r3 - r2
            int r3 = r3 + r9
            int r9 = r3 - r1
            goto L50
        L3b:
            if (r8 <= r4) goto L50
            if (r8 > r5) goto L50
            goto L34
        L40:
            if (r8 <= r5) goto L48
            int r6 = r7.o
            if (r8 > r6) goto L48
            int r9 = r9 + r1
            goto L50
        L48:
            if (r8 != r4) goto L50
            int r1 = r7.o
            if (r1 == r4) goto L50
            int r3 = r3 - r2
            int r9 = r9 + r3
        L50:
            if (r8 > r5) goto L60
            int r1 = r7.A
            int r1 = r1 - r0
            int r8 = r8 + (-1)
            int r8 = r7.l(r8)
            int r1 = r1 - r8
            int r1 = r1 / 2
            int r1 = r1 + r9
            return r1
        L60:
            int r2 = r2 - r0
            int r8 = r7.A
            int r2 = r2 - r8
            int r2 = r2 / 2
            int r2 = r2 + r9
            return r2
        L68:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.drag.DragListView.o(int, int):int");
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z;
        if (!this.x) {
            return super.onInterceptTouchEvent(motionEvent);
        }
        r(motionEvent);
        this.T = true;
        int action = motionEvent.getAction() & KotlinVersion.MAX_COMPONENT_VALUE;
        if (action == 0) {
            if (this.y != 0) {
                this.f0 = true;
                return true;
            }
            this.U = true;
        }
        if (this.f != null) {
            z = true;
        } else {
            if (super.onInterceptTouchEvent(motionEvent)) {
                this.l0 = true;
                z = true;
            } else {
                z = false;
            }
            if (action != 1 && action != 3) {
                if (z) {
                    this.a0 = 1;
                } else {
                    this.a0 = 2;
                }
            } else {
                g();
            }
        }
        if (action != 1 && action != 3) {
            return z;
        }
        this.U = false;
        return z;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        View view = this.f;
        if (view != null) {
            if (view.isLayoutRequested()) {
                p();
            }
            this.j = true;
        }
        this.C = i;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        t();
    }

    @Override // android.widget.AbsListView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        int i;
        boolean z = false;
        if (this.f0) {
            this.f0 = false;
            return false;
        }
        if (!this.x) {
            return super.onTouchEvent(motionEvent);
        }
        boolean z2 = this.T;
        this.T = false;
        if (!z2) {
            r(motionEvent);
        }
        int i2 = this.y;
        if (i2 == 4) {
            int action = motionEvent.getAction() & KotlinVersion.MAX_COMPONENT_VALUE;
            if (action != 1) {
                if (action != 2) {
                    if (action == 3) {
                        if (this.y == 4) {
                            e();
                        }
                        g();
                        return true;
                    }
                } else {
                    int x = (int) motionEvent.getX();
                    int y = (int) motionEvent.getY();
                    int i3 = x - this.s;
                    Point point = this.g;
                    point.x = i3;
                    point.y = y - this.t;
                    h();
                    int min = Math.min(y, this.i + this.B);
                    int max = Math.max(y, this.i - this.B);
                    DragScroller dragScroller = this.E;
                    boolean z3 = dragScroller.k;
                    if (z3) {
                        i = dragScroller.i;
                    } else {
                        i = -1;
                    }
                    int i4 = this.R;
                    if (min > i4 && min > this.I && i != 1) {
                        if (i != -1) {
                            dragScroller.a();
                        }
                        DragScroller dragScroller2 = this.E;
                        if (!dragScroller2.k) {
                            dragScroller2.f15604c = false;
                            dragScroller2.k = true;
                            dragScroller2.f = SystemClock.uptimeMillis();
                            dragScroller2.i = 1;
                            dragScroller2.l.post(dragScroller2);
                            return true;
                        }
                    } else if (max < i4 && max < this.H && i != 0) {
                        if (i != -1) {
                            dragScroller.a();
                        }
                        DragScroller dragScroller3 = this.E;
                        if (!dragScroller3.k) {
                            dragScroller3.f15604c = false;
                            dragScroller3.k = true;
                            dragScroller3.f = SystemClock.uptimeMillis();
                            dragScroller3.i = 0;
                            dragScroller3.l.post(dragScroller3);
                            return true;
                        }
                    } else if (max >= this.H && min <= this.I && z3) {
                        dragScroller.a();
                    }
                }
                return true;
            }
            if (this.y == 4) {
                this.j0 = false;
                if (this.f != null) {
                    this.E.a();
                    DropAnimator dropAnimator = this.i0;
                    if (dropAnimator != null) {
                        dropAnimator.f15607c = SystemClock.uptimeMillis();
                        dropAnimator.k = false;
                        FragmentDragView fragmentDragView = dropAnimator.q;
                        dropAnimator.m = fragmentDragView.n;
                        dropAnimator.n = fragmentDragView.r;
                        fragmentDragView.y = 2;
                        Point point2 = fragmentDragView.g;
                        dropAnimator.o = point2.y - dropAnimator.c();
                        dropAnimator.p = point2.x - fragmentDragView.getPaddingLeft();
                        dropAnimator.l.post(dropAnimator);
                    } else {
                        post(new AnonymousClass3());
                    }
                }
            }
            g();
            return true;
        }
        if (i2 == 0 && super.onTouchEvent(motionEvent)) {
            z = true;
        }
        int action2 = motionEvent.getAction() & KotlinVersion.MAX_COMPONENT_VALUE;
        if (action2 != 1 && action2 != 3) {
            if (z) {
                this.a0 = 1;
            }
            return z;
        }
        g();
        return z;
    }

    public final void p() {
        View view = this.f;
        if (view != null) {
            q(view);
            int measuredHeight = this.f.getMeasuredHeight();
            this.A = measuredHeight;
            this.B = measuredHeight / 2;
        }
    }

    public final void q(View view) {
        int makeMeasureSpec;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new AbsListView.LayoutParams(-1, -2);
            view.setLayoutParams(layoutParams);
        }
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(this.C, getListPaddingRight() + getListPaddingLeft(), layoutParams.width);
        int i = layoutParams.height;
        if (i > 0) {
            makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i, 1073741824);
        } else {
            makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        }
        view.measure(childMeasureSpec, makeMeasureSpec);
    }

    public final void r(MotionEvent motionEvent) {
        int action = motionEvent.getAction() & KotlinVersion.MAX_COMPONENT_VALUE;
        if (action != 0) {
            this.R = this.Q;
        }
        this.P = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        this.Q = y;
        if (action == 0) {
            this.R = y;
        }
    }

    @Override // android.widget.AbsListView, android.view.View, android.view.ViewParent
    public final void requestLayout() {
        if (!this.e0) {
            super.requestLayout();
        }
    }

    public final boolean s(int i, int i2, int i3, int i4) {
        FloatViewManager floatViewManager;
        ImageView c2;
        if (this.U && (floatViewManager = this.V) != null && (c2 = floatViewManager.c(i)) != null && this.y == 0 && this.U && this.f == null && this.x) {
            ViewParent parent = getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
            int headerViewsCount = getHeaderViewsCount() + i;
            this.o = headerViewsCount;
            this.p = headerViewsCount;
            this.r = headerViewsCount;
            this.n = headerViewsCount;
            this.y = 4;
            this.S = i2;
            this.f = c2;
            p();
            this.s = i3;
            this.t = i4;
            int i5 = this.P - i3;
            Point point = this.g;
            point.x = i5;
            point.y = this.Q - i4;
            View childAt = getChildAt(this.r - getFirstVisiblePosition());
            if (childAt != null) {
                childAt.setVisibility(4);
            }
            int i6 = this.a0;
            if (i6 != 1) {
                if (i6 == 2) {
                    super.onInterceptTouchEvent(this.W);
                }
            } else {
                super.onTouchEvent(this.W);
            }
            requestLayout();
            return true;
        }
        return false;
    }

    public void setDragEnabled(boolean z) {
        this.x = z;
    }

    public void setDragListener(DragListener dragListener) {
        this.u = dragListener;
    }

    public void setDragScrollProfile(DragScrollProfile dragScrollProfile) {
        if (dragScrollProfile != null) {
            this.O = dragScrollProfile;
        }
    }

    public void setDragScrollStart(float f) {
        if (f > 0.5f) {
            this.G = 0.5f;
        } else {
            this.G = f;
        }
        if (f > 0.5f) {
            this.F = 0.5f;
        } else {
            this.F = f;
        }
        if (getHeight() != 0) {
            t();
        }
    }

    public void setDragSortListener(DragSortListener dragSortListener) {
        setDropListener(dragSortListener);
        setDragListener(dragSortListener);
        setRemoveListener(dragSortListener);
    }

    public void setDropListener(DropListener dropListener) {
        this.v = dropListener;
    }

    public void setFloatAlpha(float f) {
        this.m = f;
    }

    public void setFloatViewManager(FloatViewManager floatViewManager) {
        this.V = floatViewManager;
    }

    public void setMaxScrollSpeed(float f) {
        this.N = f;
    }

    public void setRemoveListener(RemoveListener removeListener) {
        this.w = removeListener;
    }

    public final void t() {
        int paddingTop = getPaddingTop();
        float height = (getHeight() - paddingTop) - getPaddingBottom();
        float f = paddingTop;
        float f2 = (this.F * height) + f;
        this.K = f2;
        float a2 = a.a(1.0f, this.G, height, f);
        this.J = a2;
        this.H = (int) f2;
        this.I = (int) a2;
        this.L = f2 - f;
        this.M = (paddingTop + r1) - a2;
    }

    @Override // android.widget.AdapterView
    public void setAdapter(ListAdapter listAdapter) {
        if (listAdapter != null) {
            this.d0 = new AdapterWrapper(listAdapter);
            listAdapter.registerDataSetObserver(this.k);
            if (listAdapter instanceof DropListener) {
                setDropListener((DropListener) listAdapter);
            }
            if (listAdapter instanceof DragListener) {
                setDragListener((DragListener) listAdapter);
            }
            if (listAdapter instanceof RemoveListener) {
                setRemoveListener((RemoveListener) listAdapter);
            }
        } else {
            this.d0 = null;
        }
        super.setAdapter((ListAdapter) this.d0);
    }

    /* loaded from: classes3.dex */
    public class SmoothAnimator implements Runnable {

        /* renamed from: c, reason: collision with root package name */
        public long f15607c;
        public boolean k;
        public final /* synthetic */ FragmentDragView l;
        public final float f = 150;
        public final float j = 2.0f;
        public final float g = 2.0f;
        public final float h = -0.5f;
        public final float i = 2.0f;

        public SmoothAnimator(FragmentDragView fragmentDragView) {
            this.l = fragmentDragView;
        }

        public void a() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            float f;
            if (this.k) {
                return;
            }
            float uptimeMillis = ((float) (SystemClock.uptimeMillis() - this.f15607c)) / this.f;
            if (uptimeMillis >= 1.0f) {
                b(1.0f);
                a();
                return;
            }
            if (uptimeMillis < 0.5f) {
                f = this.g * uptimeMillis * uptimeMillis;
            } else if (uptimeMillis < 0.5f) {
                f = (this.i * uptimeMillis) + this.h;
            } else {
                float f2 = uptimeMillis - 1.0f;
                f = 1.0f - ((this.j * f2) * f2);
            }
            b(f);
            this.l.post(this);
        }

        public void b(float f) {
        }
    }
}
