package androidx.viewpager2.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.annotation.IntRange;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.PagerSnapHelper;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.adapter.StatefulAdapter;
import androidx.viewpager2.widget.ScrollEventAdapter;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import kotlin.io.ConstantsKt;

/* loaded from: classes.dex */
public final class ViewPager2 extends ViewGroup {

    /* renamed from: c, reason: collision with root package name */
    public final Rect f1777c;
    public final Rect f;
    public final CompositeOnPageChangeCallback g;
    public int h;
    public boolean i;
    public final RecyclerView.AdapterDataObserver j;
    public LinearLayoutManager k;
    public int l;
    public Parcelable m;
    public RecyclerView n;
    public PagerSnapHelper o;
    public ScrollEventAdapter p;
    public CompositeOnPageChangeCallback q;
    public FakeDrag r;
    public PageTransformerAdapter s;
    public RecyclerView.ItemAnimator t;
    public boolean u;
    public boolean v;
    public int w;
    public PageAwareAccessibilityProvider x;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.viewpager2.widget.ViewPager2$4, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass4 implements RecyclerView.OnChildAttachStateChangeListener {
        @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
        public final void b(View view) {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
        public final void c(View view) {
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
            if (((ViewGroup.MarginLayoutParams) layoutParams).width == -1 && ((ViewGroup.MarginLayoutParams) layoutParams).height == -1) {
            } else {
                throw new IllegalStateException("Pages must fill the whole ViewPager2 (use match_parent)");
            }
        }
    }

    /* loaded from: classes.dex */
    public abstract class AccessibilityProvider {
    }

    /* loaded from: classes.dex */
    public class BasicAccessibilityProvider extends AccessibilityProvider {
    }

    /* loaded from: classes.dex */
    public static abstract class DataSetChangeObserver extends RecyclerView.AdapterDataObserver {
        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public abstract void a();

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void b() {
            a();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void c(int i, int i2) {
            a();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void d(int i) {
            a();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void e(int i, int i2) {
            a();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void f(int i) {
            a();
        }
    }

    /* loaded from: classes.dex */
    public class LinearLayoutManagerImpl extends LinearLayoutManager {
        public LinearLayoutManagerImpl() {
            super(1);
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager
        public final void K0(RecyclerView.State state, int[] iArr) {
            ViewPager2 viewPager2 = ViewPager2.this;
            int offscreenPageLimit = viewPager2.getOffscreenPageLimit();
            if (offscreenPageLimit == -1) {
                super.K0(state, iArr);
                return;
            }
            int pageSize = viewPager2.getPageSize() * offscreenPageLimit;
            iArr[0] = pageSize;
            iArr[1] = pageSize;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
        public final void b0(RecyclerView.Recycler recycler, RecyclerView.State state, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.b0(recycler, state, accessibilityNodeInfoCompat);
            ViewPager2.this.x.getClass();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
        public final void d0(RecyclerView.Recycler recycler, RecyclerView.State state, View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            int i;
            int i2;
            ViewPager2 viewPager2 = ViewPager2.this;
            if (viewPager2.getOrientation() == 1) {
                viewPager2.k.getClass();
                i = RecyclerView.LayoutManager.N(view);
            } else {
                i = 0;
            }
            if (viewPager2.getOrientation() == 0) {
                viewPager2.k.getClass();
                i2 = RecyclerView.LayoutManager.N(view);
            } else {
                i2 = 0;
            }
            accessibilityNodeInfoCompat.m(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.a(false, i, 1, i2, 1));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
        public final boolean o0(RecyclerView.Recycler recycler, RecyclerView.State state, int i, Bundle bundle) {
            ViewPager2.this.x.getClass();
            return super.o0(recycler, state, i, bundle);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
        public final boolean u0(RecyclerView recyclerView, View view, Rect rect, boolean z, boolean z2) {
            return false;
        }
    }

    @IntRange
    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes.dex */
    public @interface OffscreenPageLimit {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes.dex */
    public @interface Orientation {
    }

    /* loaded from: classes.dex */
    public class PageAwareAccessibilityProvider extends AccessibilityProvider {

        /* renamed from: a, reason: collision with root package name */
        public final AccessibilityViewCommand f1781a = new AccessibilityViewCommand() { // from class: androidx.viewpager2.widget.ViewPager2.PageAwareAccessibilityProvider.1
            @Override // androidx.core.view.accessibility.AccessibilityViewCommand
            public final boolean a(View view) {
                int currentItem = ((ViewPager2) view).getCurrentItem() + 1;
                ViewPager2 viewPager2 = ViewPager2.this;
                if (viewPager2.v) {
                    viewPager2.e(currentItem, true);
                }
                return true;
            }
        };
        public final AccessibilityViewCommand b = new AccessibilityViewCommand() { // from class: androidx.viewpager2.widget.ViewPager2.PageAwareAccessibilityProvider.2
            @Override // androidx.core.view.accessibility.AccessibilityViewCommand
            public final boolean a(View view) {
                int currentItem = ((ViewPager2) view).getCurrentItem() - 1;
                ViewPager2 viewPager2 = ViewPager2.this;
                if (viewPager2.v) {
                    viewPager2.e(currentItem, true);
                }
                return true;
            }
        };

        /* renamed from: c, reason: collision with root package name */
        public RecyclerView.AdapterDataObserver f1782c;

        public PageAwareAccessibilityProvider() {
        }

        public final void a() {
            int d;
            int i;
            ViewPager2 viewPager2 = ViewPager2.this;
            int i2 = R.id.accessibilityActionPageLeft;
            ViewCompat.v(viewPager2, R.id.accessibilityActionPageLeft);
            boolean z = false;
            ViewCompat.s(viewPager2, 0);
            ViewCompat.v(viewPager2, R.id.accessibilityActionPageRight);
            ViewCompat.s(viewPager2, 0);
            ViewCompat.v(viewPager2, R.id.accessibilityActionPageUp);
            ViewCompat.s(viewPager2, 0);
            ViewCompat.v(viewPager2, R.id.accessibilityActionPageDown);
            ViewCompat.s(viewPager2, 0);
            if (viewPager2.getAdapter() != null && (d = viewPager2.getAdapter().d()) != 0 && viewPager2.v) {
                int orientation = viewPager2.getOrientation();
                AccessibilityViewCommand accessibilityViewCommand = this.b;
                AccessibilityViewCommand accessibilityViewCommand2 = this.f1781a;
                if (orientation == 0) {
                    if (viewPager2.k.I() == 1) {
                        z = true;
                    }
                    if (z) {
                        i = 16908360;
                    } else {
                        i = 16908361;
                    }
                    if (z) {
                        i2 = 16908361;
                    }
                    if (viewPager2.h < d - 1) {
                        ViewCompat.w(viewPager2, new AccessibilityNodeInfoCompat.AccessibilityActionCompat(i, (String) null), accessibilityViewCommand2);
                    }
                    if (viewPager2.h > 0) {
                        ViewCompat.w(viewPager2, new AccessibilityNodeInfoCompat.AccessibilityActionCompat(i2, (String) null), accessibilityViewCommand);
                        return;
                    }
                    return;
                }
                if (viewPager2.h < d - 1) {
                    ViewCompat.w(viewPager2, new AccessibilityNodeInfoCompat.AccessibilityActionCompat(R.id.accessibilityActionPageDown, (String) null), accessibilityViewCommand2);
                }
                if (viewPager2.h > 0) {
                    ViewCompat.w(viewPager2, new AccessibilityNodeInfoCompat.AccessibilityActionCompat(R.id.accessibilityActionPageUp, (String) null), accessibilityViewCommand);
                }
            }
        }
    }

    /* loaded from: classes.dex */
    public interface PageTransformer {
        void a(View view, float f);
    }

    /* loaded from: classes.dex */
    public class PagerSnapHelperImpl extends PagerSnapHelper {
        public PagerSnapHelperImpl() {
        }

        @Override // androidx.recyclerview.widget.PagerSnapHelper, androidx.recyclerview.widget.SnapHelper
        public final View e(RecyclerView.LayoutManager layoutManager) {
            ScrollEventAdapter scrollEventAdapter = ViewPager2.this.r.f1771a;
            return super.e(layoutManager);
        }
    }

    /* loaded from: classes.dex */
    public class RecyclerViewImpl extends RecyclerView {
        public RecyclerViewImpl(Context context) {
            super(context, null);
        }

        @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
        public final CharSequence getAccessibilityClassName() {
            ViewPager2.this.x.getClass();
            return super.getAccessibilityClassName();
        }

        @Override // android.view.View
        public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            ViewPager2 viewPager2 = ViewPager2.this;
            accessibilityEvent.setFromIndex(viewPager2.h);
            accessibilityEvent.setToIndex(viewPager2.h);
            accessibilityEvent.setSource(ViewPager2.this);
            accessibilityEvent.setClassName("androidx.viewpager.widget.ViewPager");
        }

        @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
        public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            if (ViewPager2.this.v && super.onInterceptTouchEvent(motionEvent)) {
                return true;
            }
            return false;
        }

        @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
        public final boolean onTouchEvent(MotionEvent motionEvent) {
            if (ViewPager2.this.v && super.onTouchEvent(motionEvent)) {
                return true;
            }
            return false;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes.dex */
    public @interface ScrollState {
    }

    /* loaded from: classes.dex */
    public static class SmoothScrollToPosition implements Runnable {

        /* renamed from: c, reason: collision with root package name */
        public final int f1787c;
        public final RecyclerView f;

        public SmoothScrollToPosition(int i, RecyclerView recyclerView) {
            this.f1787c = i;
            this.f = recyclerView;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f.l0(this.f1787c);
        }
    }

    public ViewPager2(Context context) {
        super(context);
        this.f1777c = new Rect();
        this.f = new Rect();
        this.g = new CompositeOnPageChangeCallback();
        this.i = false;
        this.j = new DataSetChangeObserver() { // from class: androidx.viewpager2.widget.ViewPager2.1
            @Override // androidx.viewpager2.widget.ViewPager2.DataSetChangeObserver, androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
            public final void a() {
                ViewPager2 viewPager2 = ViewPager2.this;
                viewPager2.i = true;
                viewPager2.p.l = true;
            }
        };
        this.l = -1;
        this.t = null;
        this.u = false;
        this.v = true;
        this.w = -1;
        a(context);
    }

    public final void a(Context context) {
        this.x = new PageAwareAccessibilityProvider();
        RecyclerViewImpl recyclerViewImpl = new RecyclerViewImpl(context);
        this.n = recyclerViewImpl;
        recyclerViewImpl.setId(View.generateViewId());
        this.n.setDescendantFocusability(131072);
        LinearLayoutManagerImpl linearLayoutManagerImpl = new LinearLayoutManagerImpl();
        this.k = linearLayoutManagerImpl;
        this.n.setLayoutManager(linearLayoutManagerImpl);
        this.n.setScrollingTouchSlop(1);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes((AttributeSet) null, androidx.viewpager2.R.styleable.ViewPager2);
        ViewCompat.y(this, context, androidx.viewpager2.R.styleable.ViewPager2, null, obtainStyledAttributes, 0);
        try {
            setOrientation(obtainStyledAttributes.getInt(androidx.viewpager2.R.styleable.ViewPager2_android_orientation, 0));
            obtainStyledAttributes.recycle();
            this.n.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
            RecyclerView recyclerView = this.n;
            Object obj = new Object();
            if (recyclerView.H == null) {
                recyclerView.H = new ArrayList();
            }
            recyclerView.H.add(obj);
            ScrollEventAdapter scrollEventAdapter = new ScrollEventAdapter(this);
            this.p = scrollEventAdapter;
            this.r = new FakeDrag(scrollEventAdapter);
            PagerSnapHelperImpl pagerSnapHelperImpl = new PagerSnapHelperImpl();
            this.o = pagerSnapHelperImpl;
            pagerSnapHelperImpl.b(this.n);
            this.n.j(this.p);
            CompositeOnPageChangeCallback compositeOnPageChangeCallback = new CompositeOnPageChangeCallback();
            this.q = compositeOnPageChangeCallback;
            this.p.f1773a = compositeOnPageChangeCallback;
            OnPageChangeCallback onPageChangeCallback = new OnPageChangeCallback() { // from class: androidx.viewpager2.widget.ViewPager2.2
                @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
                public final void a(int i) {
                    if (i == 0) {
                        ViewPager2.this.g();
                    }
                }

                @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
                public final void c(int i) {
                    ViewPager2 viewPager2 = ViewPager2.this;
                    if (viewPager2.h != i) {
                        viewPager2.h = i;
                        viewPager2.x.a();
                    }
                }
            };
            OnPageChangeCallback onPageChangeCallback2 = new OnPageChangeCallback() { // from class: androidx.viewpager2.widget.ViewPager2.3
                @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
                public final void c(int i) {
                    ViewPager2 viewPager2 = ViewPager2.this;
                    viewPager2.clearFocus();
                    if (viewPager2.hasFocus()) {
                        viewPager2.n.requestFocus(2);
                    }
                }
            };
            compositeOnPageChangeCallback.f1770a.add(onPageChangeCallback);
            this.q.f1770a.add(onPageChangeCallback2);
            final PageAwareAccessibilityProvider pageAwareAccessibilityProvider = this.x;
            RecyclerView recyclerView2 = this.n;
            pageAwareAccessibilityProvider.getClass();
            recyclerView2.setImportantForAccessibility(2);
            pageAwareAccessibilityProvider.f1782c = new DataSetChangeObserver() { // from class: androidx.viewpager2.widget.ViewPager2.PageAwareAccessibilityProvider.3
                @Override // androidx.viewpager2.widget.ViewPager2.DataSetChangeObserver, androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
                public final void a() {
                    PageAwareAccessibilityProvider.this.a();
                }
            };
            ViewPager2 viewPager2 = ViewPager2.this;
            if (viewPager2.getImportantForAccessibility() == 0) {
                viewPager2.setImportantForAccessibility(1);
            }
            CompositeOnPageChangeCallback compositeOnPageChangeCallback2 = this.q;
            compositeOnPageChangeCallback2.f1770a.add(this.g);
            PageTransformerAdapter pageTransformerAdapter = new PageTransformerAdapter(this.k);
            this.s = pageTransformerAdapter;
            this.q.f1770a.add(pageTransformerAdapter);
            RecyclerView recyclerView3 = this.n;
            attachViewToParent(recyclerView3, 0, recyclerView3.getLayoutParams());
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    public final void b(OnPageChangeCallback onPageChangeCallback) {
        this.g.f1770a.add(onPageChangeCallback);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void c() {
        RecyclerView.Adapter adapter;
        if (this.l == -1 || (adapter = getAdapter()) == 0) {
            return;
        }
        if (this.m != null) {
            if (!(adapter instanceof StatefulAdapter)) {
                this.m = null;
            } else {
                ((StatefulAdapter) adapter).b();
                throw null;
            }
        }
        int max = Math.max(0, Math.min(this.l, adapter.d() - 1));
        this.h = max;
        this.l = -1;
        this.n.i0(max);
        this.x.a();
    }

    @Override // android.view.View
    public final boolean canScrollHorizontally(int i) {
        return this.n.canScrollHorizontally(i);
    }

    @Override // android.view.View
    public final boolean canScrollVertically(int i) {
        return this.n.canScrollVertically(i);
    }

    public final void d(int i, boolean z) {
        ScrollEventAdapter scrollEventAdapter = this.r.f1771a;
        e(i, z);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchRestoreInstanceState(SparseArray sparseArray) {
        Parcelable parcelable = (Parcelable) sparseArray.get(getId());
        if (parcelable instanceof SavedState) {
            int i = ((SavedState) parcelable).f1786c;
            sparseArray.put(this.n.getId(), (Parcelable) sparseArray.get(i));
            sparseArray.remove(i);
        }
        super.dispatchRestoreInstanceState(sparseArray);
        c();
    }

    public final void e(int i, boolean z) {
        int i2;
        int i3;
        RecyclerView.Adapter adapter = getAdapter();
        boolean z2 = false;
        if (adapter == null) {
            if (this.l != -1) {
                this.l = Math.max(i, 0);
                return;
            }
            return;
        }
        if (adapter.d() > 0) {
            int min = Math.min(Math.max(i, 0), adapter.d() - 1);
            int i4 = this.h;
            if (min == i4 && this.p.f == 0) {
                return;
            }
            if (min == i4 && z) {
                return;
            }
            double d = i4;
            this.h = min;
            this.x.a();
            ScrollEventAdapter scrollEventAdapter = this.p;
            if (scrollEventAdapter.f != 0) {
                scrollEventAdapter.f();
                ScrollEventAdapter.ScrollEventValues scrollEventValues = scrollEventAdapter.g;
                d = scrollEventValues.f1775a + scrollEventValues.b;
            }
            ScrollEventAdapter scrollEventAdapter2 = this.p;
            scrollEventAdapter2.getClass();
            if (z) {
                i2 = 2;
            } else {
                i2 = 3;
            }
            scrollEventAdapter2.e = i2;
            if (scrollEventAdapter2.i != min) {
                z2 = true;
            }
            scrollEventAdapter2.i = min;
            scrollEventAdapter2.d(2);
            if (z2) {
                scrollEventAdapter2.c(min);
            }
            if (!z) {
                this.n.i0(min);
                return;
            }
            double d2 = min;
            if (Math.abs(d2 - d) > 3.0d) {
                RecyclerView recyclerView = this.n;
                if (d2 > d) {
                    i3 = min - 3;
                } else {
                    i3 = min + 3;
                }
                recyclerView.i0(i3);
                RecyclerView recyclerView2 = this.n;
                recyclerView2.post(new SmoothScrollToPosition(min, recyclerView2));
                return;
            }
            this.n.l0(min);
        }
    }

    public final void f(OnPageChangeCallback onPageChangeCallback) {
        this.g.f1770a.remove(onPageChangeCallback);
    }

    public final void g() {
        PagerSnapHelper pagerSnapHelper = this.o;
        if (pagerSnapHelper != null) {
            View e = pagerSnapHelper.e(this.k);
            if (e == null) {
                return;
            }
            this.k.getClass();
            int N = RecyclerView.LayoutManager.N(e);
            if (N != this.h && getScrollState() == 0) {
                this.q.c(N);
            }
            this.i = false;
            return;
        }
        throw new IllegalStateException("Design assumption violated.");
    }

    @Override // android.view.ViewGroup, android.view.View
    @RequiresApi
    public CharSequence getAccessibilityClassName() {
        this.x.getClass();
        this.x.getClass();
        return "androidx.viewpager.widget.ViewPager";
    }

    @Nullable
    public RecyclerView.Adapter getAdapter() {
        return this.n.getAdapter();
    }

    public int getCurrentItem() {
        return this.h;
    }

    public int getItemDecorationCount() {
        return this.n.getItemDecorationCount();
    }

    public int getOffscreenPageLimit() {
        return this.w;
    }

    public int getOrientation() {
        if (this.k.p == 1) {
            return 1;
        }
        return 0;
    }

    public int getPageSize() {
        int height;
        int paddingBottom;
        RecyclerView recyclerView = this.n;
        if (getOrientation() == 0) {
            height = recyclerView.getWidth() - recyclerView.getPaddingLeft();
            paddingBottom = recyclerView.getPaddingRight();
        } else {
            height = recyclerView.getHeight() - recyclerView.getPaddingTop();
            paddingBottom = recyclerView.getPaddingBottom();
        }
        return height - paddingBottom;
    }

    public int getScrollState() {
        return this.p.f;
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        int i;
        int i2;
        int d;
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        PageAwareAccessibilityProvider pageAwareAccessibilityProvider = this.x;
        pageAwareAccessibilityProvider.getClass();
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompat = new AccessibilityNodeInfoCompat(accessibilityNodeInfo);
        ViewPager2 viewPager2 = ViewPager2.this;
        if (viewPager2.getAdapter() != null) {
            if (viewPager2.getOrientation() == 1) {
                i = viewPager2.getAdapter().d();
                i2 = 1;
            } else {
                i2 = viewPager2.getAdapter().d();
                i = 1;
            }
        } else {
            i = 0;
            i2 = 0;
        }
        accessibilityNodeInfoCompat.l(AccessibilityNodeInfoCompat.CollectionInfoCompat.a(i, i2, 0));
        RecyclerView.Adapter adapter = viewPager2.getAdapter();
        if (adapter != null && (d = adapter.d()) != 0 && viewPager2.v) {
            if (viewPager2.h > 0) {
                accessibilityNodeInfoCompat.a(8192);
            }
            if (viewPager2.h < d - 1) {
                accessibilityNodeInfoCompat.a(ConstantsKt.DEFAULT_BLOCK_SIZE);
            }
            accessibilityNodeInfoCompat.t(true);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int measuredWidth = this.n.getMeasuredWidth();
        int measuredHeight = this.n.getMeasuredHeight();
        int paddingLeft = getPaddingLeft();
        Rect rect = this.f1777c;
        rect.left = paddingLeft;
        rect.right = (i3 - i) - getPaddingRight();
        rect.top = getPaddingTop();
        rect.bottom = (i4 - i2) - getPaddingBottom();
        Rect rect2 = this.f;
        Gravity.apply(8388659, measuredWidth, measuredHeight, rect, rect2);
        this.n.layout(rect2.left, rect2.top, rect2.right, rect2.bottom);
        if (this.i) {
            g();
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        measureChild(this.n, i, i2);
        int measuredWidth = this.n.getMeasuredWidth();
        int measuredHeight = this.n.getMeasuredHeight();
        int measuredState = this.n.getMeasuredState();
        int paddingRight = getPaddingRight() + getPaddingLeft() + measuredWidth;
        int paddingBottom = getPaddingBottom() + getPaddingTop() + measuredHeight;
        setMeasuredDimension(View.resolveSizeAndState(Math.max(paddingRight, getSuggestedMinimumWidth()), i, measuredState), View.resolveSizeAndState(Math.max(paddingBottom, getSuggestedMinimumHeight()), i2, measuredState << 16));
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.l = savedState.f;
        this.m = savedState.g;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [android.view.View$BaseSavedState, android.os.Parcelable, androidx.viewpager2.widget.ViewPager2$SavedState] */
    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        ?? baseSavedState = new View.BaseSavedState(super.onSaveInstanceState());
        baseSavedState.f1786c = this.n.getId();
        int i = this.l;
        if (i == -1) {
            i = this.h;
        }
        baseSavedState.f = i;
        Parcelable parcelable = this.m;
        if (parcelable != null) {
            baseSavedState.g = parcelable;
            return baseSavedState;
        }
        Object adapter = this.n.getAdapter();
        if (!(adapter instanceof StatefulAdapter)) {
            return baseSavedState;
        }
        ((StatefulAdapter) adapter).a();
        throw null;
    }

    @Override // android.view.ViewGroup
    public final void onViewAdded(View view) {
        throw new IllegalStateException("ViewPager2 does not support direct child views");
    }

    @Override // android.view.View
    public final boolean performAccessibilityAction(int i, Bundle bundle) {
        int currentItem;
        this.x.getClass();
        if (i != 8192 && i != 4096) {
            return super.performAccessibilityAction(i, bundle);
        }
        PageAwareAccessibilityProvider pageAwareAccessibilityProvider = this.x;
        ViewPager2 viewPager2 = ViewPager2.this;
        if (i != 8192 && i != 4096) {
            throw new IllegalStateException();
        }
        if (i == 8192) {
            currentItem = viewPager2.getCurrentItem() - 1;
        } else {
            currentItem = viewPager2.getCurrentItem() + 1;
        }
        ViewPager2 viewPager22 = ViewPager2.this;
        if (viewPager22.v) {
            viewPager22.e(currentItem, true);
        }
        return true;
    }

    public void setAdapter(@Nullable RecyclerView.Adapter adapter) {
        RecyclerView.Adapter adapter2 = this.n.getAdapter();
        PageAwareAccessibilityProvider pageAwareAccessibilityProvider = this.x;
        if (adapter2 != null) {
            adapter2.f1560a.unregisterObserver(pageAwareAccessibilityProvider.f1782c);
        } else {
            pageAwareAccessibilityProvider.getClass();
        }
        RecyclerView.AdapterDataObserver adapterDataObserver = this.j;
        if (adapter2 != null) {
            adapter2.f1560a.unregisterObserver(adapterDataObserver);
        }
        this.n.setAdapter(adapter);
        this.h = 0;
        c();
        PageAwareAccessibilityProvider pageAwareAccessibilityProvider2 = this.x;
        pageAwareAccessibilityProvider2.a();
        if (adapter != null) {
            adapter.f1560a.registerObserver(pageAwareAccessibilityProvider2.f1782c);
        }
        if (adapter != null) {
            adapter.f1560a.registerObserver(adapterDataObserver);
        }
    }

    public void setCurrentItem(int i) {
        d(i, true);
    }

    @Override // android.view.View
    public void setLayoutDirection(int i) {
        super.setLayoutDirection(i);
        this.x.a();
    }

    public void setOffscreenPageLimit(int i) {
        if (i < 1 && i != -1) {
            throw new IllegalArgumentException("Offscreen page limit must be OFFSCREEN_PAGE_LIMIT_DEFAULT or a number > 0");
        }
        this.w = i;
        this.n.requestLayout();
    }

    public void setOrientation(int i) {
        this.k.l1(i);
        this.x.a();
    }

    public void setPageTransformer(@Nullable PageTransformer pageTransformer) {
        if (pageTransformer != null) {
            if (!this.u) {
                this.t = this.n.getItemAnimator();
                this.u = true;
            }
            this.n.setItemAnimator(null);
        } else if (this.u) {
            this.n.setItemAnimator(this.t);
            this.t = null;
            this.u = false;
        }
        PageTransformerAdapter pageTransformerAdapter = this.s;
        if (pageTransformer != pageTransformerAdapter.b) {
            pageTransformerAdapter.b = pageTransformer;
            if (pageTransformer == null) {
                return;
            }
            ScrollEventAdapter scrollEventAdapter = this.p;
            scrollEventAdapter.f();
            ScrollEventAdapter.ScrollEventValues scrollEventValues = scrollEventAdapter.g;
            double d = scrollEventValues.f1775a + scrollEventValues.b;
            int i = (int) d;
            float f = (float) (d - i);
            this.s.b(f, i, Math.round(getPageSize() * f));
        }
    }

    public void setUserInputEnabled(boolean z) {
        this.v = z;
        this.x.a();
    }

    /* loaded from: classes.dex */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Object();

        /* renamed from: c, reason: collision with root package name */
        public int f1786c;
        public int f;
        public Parcelable g;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f1786c = parcel.readInt();
            this.f = parcel.readInt();
            this.g = parcel.readParcelable(classLoader);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f1786c);
            parcel.writeInt(this.f);
            parcel.writeParcelable(this.g, i);
        }

        /* renamed from: androidx.viewpager2.widget.ViewPager2$SavedState$1, reason: invalid class name */
        /* loaded from: classes.dex */
        public class AnonymousClass1 implements Parcelable.ClassLoaderCreator<SavedState> {
            /* JADX WARN: Type inference failed for: r0v1, types: [android.view.View$BaseSavedState, androidx.viewpager2.widget.ViewPager2$SavedState, java.lang.Object] */
            @Override // android.os.Parcelable.Creator
            public final Object createFromParcel(Parcel parcel) {
                if (Build.VERSION.SDK_INT >= 24) {
                    return new SavedState(parcel, null);
                }
                ?? baseSavedState = new View.BaseSavedState(parcel);
                baseSavedState.f1786c = parcel.readInt();
                baseSavedState.f = parcel.readInt();
                baseSavedState.g = parcel.readParcelable(null);
                return baseSavedState;
            }

            @Override // android.os.Parcelable.Creator
            public final Object[] newArray(int i) {
                return new SavedState[i];
            }

            /* JADX WARN: Type inference failed for: r4v1, types: [android.view.View$BaseSavedState, androidx.viewpager2.widget.ViewPager2$SavedState] */
            @Override // android.os.Parcelable.ClassLoaderCreator
            public final SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                if (Build.VERSION.SDK_INT >= 24) {
                    return new SavedState(parcel, classLoader);
                }
                ?? baseSavedState = new View.BaseSavedState(parcel);
                baseSavedState.f1786c = parcel.readInt();
                baseSavedState.f = parcel.readInt();
                baseSavedState.g = parcel.readParcelable(null);
                return baseSavedState;
            }
        }
    }

    /* loaded from: classes.dex */
    public static abstract class OnPageChangeCallback {
        public void a(int i) {
        }

        public void c(int i) {
        }

        public void b(float f, int i, int i2) {
        }
    }
}
