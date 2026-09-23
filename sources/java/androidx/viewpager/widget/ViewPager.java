package androidx.viewpager.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.a;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.Scroller;
import androidx.annotation.DrawableRes;
import androidx.annotation.Nullable;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.view.AbsSavedState;
import com.google.api.client.googleapis.media.MediaHttpUploader;
import java.lang.annotation.ElementType;
import java.lang.annotation.Inherited;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.WeakHashMap;
import kotlin.KotlinVersion;
import kotlin.io.ConstantsKt;
import kotlin.jvm.internal.IntCompanionObject;

/* loaded from: classes.dex */
public class ViewPager extends ViewGroup {
    public static final int[] d0 = {R.attr.layout_gravity};
    public static final Comparator e0 = new Object();
    public static final Interpolator f0 = new Object();
    public int A;
    public boolean B;
    public boolean C;
    public final int D;
    public int E;
    public final int F;
    public float G;
    public float H;
    public float I;
    public float J;
    public int K;
    public VelocityTracker L;
    public final int M;
    public final int N;
    public final int O;
    public final int P;
    public final EdgeEffect Q;
    public final EdgeEffect R;
    public boolean S;
    public boolean T;
    public int U;
    public ArrayList V;
    public OnPageChangeListener W;
    public ArrayList a0;
    public final Runnable b0;

    /* renamed from: c, reason: collision with root package name */
    public int f1760c;
    public int c0;
    public final ArrayList f;
    public final ItemInfo g;
    public final Rect h;
    public PagerAdapter i;
    public int j;
    public int k;
    public Parcelable l;
    public ClassLoader m;
    public Scroller n;
    public boolean o;
    public PagerObserver p;
    public int q;
    public Drawable r;
    public int s;
    public int t;
    public float u;
    public float v;
    public int w;
    public boolean x;
    public boolean y;
    public boolean z;

    /* renamed from: androidx.viewpager.widget.ViewPager$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static class AnonymousClass1 implements Comparator<ItemInfo> {
        @Override // java.util.Comparator
        public final int compare(ItemInfo itemInfo, ItemInfo itemInfo2) {
            return itemInfo.b - itemInfo2.b;
        }
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public static class AnonymousClass2 implements Interpolator {
        @Override // android.animation.TimeInterpolator
        public final float getInterpolation(float f) {
            float f2 = f - 1.0f;
            return (f2 * f2 * f2 * f2 * f2) + 1.0f;
        }
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$3, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass3 implements Runnable {
        public AnonymousClass3() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            ViewPager viewPager = ViewPager.this;
            viewPager.setScrollState(0);
            viewPager.p();
        }
    }

    @Target({ElementType.TYPE})
    @Inherited
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes.dex */
    public @interface DecorView {
    }

    /* loaded from: classes.dex */
    public static class ItemInfo {

        /* renamed from: a, reason: collision with root package name */
        public Object f1763a;
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public boolean f1764c;
        public float d;
        public float e;
    }

    /* loaded from: classes.dex */
    public static class LayoutParams extends ViewGroup.LayoutParams {

        /* renamed from: a, reason: collision with root package name */
        public boolean f1765a;
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public float f1766c;
        public boolean d;
        public int e;
    }

    /* loaded from: classes.dex */
    public class MyAccessibilityDelegate extends AccessibilityDelegateCompat {
        public MyAccessibilityDelegate() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public final void c(View view, AccessibilityEvent accessibilityEvent) {
            boolean z;
            super.c(view, accessibilityEvent);
            accessibilityEvent.setClassName(ViewPager.class.getName());
            ViewPager viewPager = ViewPager.this;
            if (viewPager.i != null) {
                z = true;
            } else {
                z = false;
            }
            accessibilityEvent.setScrollable(z);
            if (accessibilityEvent.getEventType() == 4096 && viewPager.i != null) {
                accessibilityEvent.setItemCount(100000);
                accessibilityEvent.setFromIndex(viewPager.j);
                accessibilityEvent.setToIndex(viewPager.j);
            }
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public final void d(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            boolean z;
            this.f760a.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat.f834a);
            accessibilityNodeInfoCompat.k(ViewPager.class.getName());
            ViewPager viewPager = ViewPager.this;
            if (viewPager.i != null) {
                z = true;
            } else {
                z = false;
            }
            accessibilityNodeInfoCompat.t(z);
            if (viewPager.canScrollHorizontally(1)) {
                accessibilityNodeInfoCompat.a(ConstantsKt.DEFAULT_BLOCK_SIZE);
            }
            if (viewPager.canScrollHorizontally(-1)) {
                accessibilityNodeInfoCompat.a(8192);
            }
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public final boolean g(View view, int i, Bundle bundle) {
            if (super.g(view, i, bundle)) {
                return true;
            }
            ViewPager viewPager = ViewPager.this;
            if (i != 4096) {
                if (i != 8192 || !viewPager.canScrollHorizontally(-1)) {
                    return false;
                }
                viewPager.setCurrentItem(viewPager.j - 1);
                return true;
            }
            if (!viewPager.canScrollHorizontally(1)) {
                return false;
            }
            viewPager.setCurrentItem(viewPager.j + 1);
            return true;
        }
    }

    /* loaded from: classes.dex */
    public interface OnAdapterChangeListener {
        void a(ViewPager viewPager, PagerAdapter pagerAdapter);
    }

    /* loaded from: classes.dex */
    public interface OnPageChangeListener {
        void b(float f, int i);

        void c(int i);

        void d(int i);
    }

    /* loaded from: classes.dex */
    public interface PageTransformer {
    }

    /* loaded from: classes.dex */
    public class PagerObserver extends DataSetObserver {
        public PagerObserver() {
        }

        @Override // android.database.DataSetObserver
        public final void onChanged() {
            ViewPager.this.e();
        }

        @Override // android.database.DataSetObserver
        public final void onInvalidated() {
            ViewPager.this.e();
        }
    }

    /* loaded from: classes.dex */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Object();
        public int g;
        public Parcelable h;
        public final ClassLoader i;

        /* renamed from: androidx.viewpager.widget.ViewPager$SavedState$1, reason: invalid class name */
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
            classLoader = classLoader == null ? getClass().getClassLoader() : classLoader;
            this.g = parcel.readInt();
            this.h = parcel.readParcelable(classLoader);
            this.i = classLoader;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("FragmentPager.SavedState{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(" position=");
            return a.g(this.g, "}", sb);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.g);
            parcel.writeParcelable(this.h, i);
        }
    }

    /* loaded from: classes.dex */
    public static class ViewPositionComparator implements Comparator<View> {
        @Override // java.util.Comparator
        public final int compare(View view, View view2) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            LayoutParams layoutParams2 = (LayoutParams) view2.getLayoutParams();
            boolean z = layoutParams.f1765a;
            if (z != layoutParams2.f1765a) {
                if (z) {
                    return 1;
                }
                return -1;
            }
            return layoutParams.e - layoutParams2.e;
        }
    }

    /* JADX WARN: Type inference failed for: r5v2, types: [androidx.viewpager.widget.ViewPager$ItemInfo, java.lang.Object] */
    public ViewPager(Context context) {
        super(context);
        this.f = new ArrayList();
        this.g = new Object();
        this.h = new Rect();
        this.k = -1;
        this.l = null;
        this.m = null;
        this.u = -3.4028235E38f;
        this.v = Float.MAX_VALUE;
        this.A = 1;
        this.K = -1;
        this.S = true;
        this.b0 = new AnonymousClass3();
        this.c0 = 0;
        setWillNotDraw(false);
        setDescendantFocusability(MediaHttpUploader.MINIMUM_CHUNK_SIZE);
        setFocusable(true);
        Context context2 = getContext();
        this.n = new Scroller(context2, f0);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context2);
        float f = context2.getResources().getDisplayMetrics().density;
        this.F = viewConfiguration.getScaledPagingTouchSlop();
        this.M = (int) (400.0f * f);
        this.N = viewConfiguration.getScaledMaximumFlingVelocity();
        this.Q = new EdgeEffect(context2);
        this.R = new EdgeEffect(context2);
        this.O = (int) (25.0f * f);
        this.P = (int) (2.0f * f);
        this.D = (int) (f * 16.0f);
        ViewCompat.z(this, new MyAccessibilityDelegate());
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
        ViewCompat.G(this, new OnApplyWindowInsetsListener() { // from class: androidx.viewpager.widget.ViewPager.4

            /* renamed from: a, reason: collision with root package name */
            public final Rect f1762a = new Rect();

            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat a(View view, WindowInsetsCompat windowInsetsCompat) {
                WindowInsetsCompat t = ViewCompat.t(view, windowInsetsCompat);
                if (t.l()) {
                    return t;
                }
                int g = t.g();
                Rect rect = this.f1762a;
                rect.left = g;
                rect.top = t.i();
                rect.right = t.h();
                rect.bottom = t.f();
                ViewPager viewPager = ViewPager.this;
                int childCount = viewPager.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    WindowInsetsCompat c2 = ViewCompat.c(viewPager.getChildAt(i), t);
                    rect.left = Math.min(c2.g(), rect.left);
                    rect.top = Math.min(c2.i(), rect.top);
                    rect.right = Math.min(c2.h(), rect.right);
                    rect.bottom = Math.min(c2.f(), rect.bottom);
                }
                return t.m(rect.left, rect.top, rect.right, rect.bottom);
            }
        });
    }

    public static boolean c(int i, int i2, int i3, View view, boolean z) {
        int i4;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                int i5 = i2 + scrollX;
                if (i5 >= childAt.getLeft() && i5 < childAt.getRight() && (i4 = i3 + scrollY) >= childAt.getTop() && i4 < childAt.getBottom() && c(i, i5 - childAt.getLeft(), i4 - childAt.getTop(), childAt, true)) {
                    break;
                }
            }
        }
        if (z && view.canScrollHorizontally(-i)) {
            return true;
        }
        return false;
    }

    private int getClientWidth() {
        return (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
    }

    private void setScrollingCacheEnabled(boolean z) {
        if (this.y != z) {
            this.y = z;
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.viewpager.widget.ViewPager$ItemInfo, java.lang.Object] */
    public final ItemInfo a(int i, int i2) {
        ?? obj = new Object();
        obj.b = i;
        obj.f1763a = this.i.d(this, i);
        this.i.getClass();
        obj.d = 1.0f;
        ArrayList arrayList = this.f;
        if (i2 >= 0 && i2 < arrayList.size()) {
            arrayList.add(i2, obj);
            return obj;
        }
        arrayList.add(obj);
        return obj;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void addFocusables(ArrayList arrayList, int i, int i2) {
        ItemInfo h;
        int size = arrayList.size();
        int descendantFocusability = getDescendantFocusability();
        if (descendantFocusability != 393216) {
            for (int i3 = 0; i3 < getChildCount(); i3++) {
                View childAt = getChildAt(i3);
                if (childAt.getVisibility() == 0 && (h = h(childAt)) != null && h.b == this.j) {
                    childAt.addFocusables(arrayList, i, i2);
                }
            }
        }
        if ((descendantFocusability != 262144 || size == arrayList.size()) && isFocusable()) {
            if ((i2 & 1) == 1 && isInTouchMode() && !isFocusableInTouchMode()) {
                return;
            }
            arrayList.add(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void addTouchables(ArrayList arrayList) {
        ItemInfo h;
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 0 && (h = h(childAt)) != null && h.b == this.j) {
                childAt.addTouchables(arrayList);
            }
        }
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        boolean z;
        if (!checkLayoutParams(layoutParams)) {
            layoutParams = generateDefaultLayoutParams();
        }
        LayoutParams layoutParams2 = (LayoutParams) layoutParams;
        boolean z2 = layoutParams2.f1765a;
        if (view.getClass().getAnnotation(DecorView.class) != null) {
            z = true;
        } else {
            z = false;
        }
        boolean z3 = z2 | z;
        layoutParams2.f1765a = z3;
        if (this.x) {
            if (!z3) {
                layoutParams2.d = true;
                addViewInLayout(view, i, layoutParams);
                return;
            }
            throw new IllegalStateException("Cannot add pager decor view during layout");
        }
        super.addView(view, i, layoutParams);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00c4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean b(int r8) {
        /*
            r7 = this;
            android.view.View r0 = r7.findFocus()
            r1 = 0
            if (r0 != r7) goto L9
        L7:
            r0 = r1
            goto L60
        L9:
            if (r0 == 0) goto L60
            android.view.ViewParent r2 = r0.getParent()
        Lf:
            boolean r3 = r2 instanceof android.view.ViewGroup
            if (r3 == 0) goto L1b
            if (r2 != r7) goto L16
            goto L60
        L16:
            android.view.ViewParent r2 = r2.getParent()
            goto Lf
        L1b:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.Class r3 = r0.getClass()
            java.lang.String r3 = r3.getSimpleName()
            r2.append(r3)
            android.view.ViewParent r0 = r0.getParent()
        L2f:
            boolean r3 = r0 instanceof android.view.ViewGroup
            if (r3 == 0) goto L48
            java.lang.String r3 = " => "
            r2.append(r3)
            java.lang.Class r3 = r0.getClass()
            java.lang.String r3 = r3.getSimpleName()
            r2.append(r3)
            android.view.ViewParent r0 = r0.getParent()
            goto L2f
        L48:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r3 = "arrowScroll tried to find focus based on non-child current focused view "
            r0.<init>(r3)
            java.lang.String r2 = r2.toString()
            r0.append(r2)
            java.lang.String r0 = r0.toString()
            java.lang.String r2 = "ViewPager"
            android.util.Log.e(r2, r0)
            goto L7
        L60:
            android.view.FocusFinder r1 = android.view.FocusFinder.getInstance()
            android.view.View r1 = r1.findNextFocus(r7, r0, r8)
            r2 = 1
            r3 = 0
            r4 = 66
            r5 = 17
            if (r1 == 0) goto Lb1
            if (r1 == r0) goto Lb1
            android.graphics.Rect r6 = r7.h
            if (r8 != r5) goto L95
            android.graphics.Rect r4 = r7.g(r6, r1)
            int r4 = r4.left
            android.graphics.Rect r5 = r7.g(r6, r0)
            int r5 = r5.left
            if (r0 == 0) goto L8f
            if (r4 < r5) goto L8f
            int r0 = r7.j
            if (r0 <= 0) goto Lc9
            int r0 = r0 - r2
            r7.u(r0, r2)
            goto Lca
        L8f:
            boolean r0 = r1.requestFocus()
        L93:
            r3 = r0
            goto Lcb
        L95:
            if (r8 != r4) goto Lcb
            android.graphics.Rect r2 = r7.g(r6, r1)
            int r2 = r2.left
            android.graphics.Rect r3 = r7.g(r6, r0)
            int r3 = r3.left
            if (r0 == 0) goto Lac
            if (r2 > r3) goto Lac
            boolean r0 = r7.m()
            goto L93
        Lac:
            boolean r0 = r1.requestFocus()
            goto L93
        Lb1:
            if (r8 == r5) goto Lc0
            if (r8 != r2) goto Lb6
            goto Lc0
        Lb6:
            if (r8 == r4) goto Lbb
            r0 = 2
            if (r8 != r0) goto Lcb
        Lbb:
            boolean r3 = r7.m()
            goto Lcb
        Lc0:
            int r0 = r7.j
            if (r0 <= 0) goto Lc9
            int r0 = r0 - r2
            r7.u(r0, r2)
            goto Lca
        Lc9:
            r2 = r3
        Lca:
            r3 = r2
        Lcb:
            if (r3 == 0) goto Ld4
            int r8 = android.view.SoundEffectConstants.getContantForFocusDirection(r8)
            r7.playSoundEffect(r8)
        Ld4:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.b(int):boolean");
    }

    @Override // android.view.View
    public final boolean canScrollHorizontally(int i) {
        if (this.i == null) {
            return false;
        }
        int clientWidth = getClientWidth();
        int scrollX = getScrollX();
        if (i < 0) {
            if (scrollX <= ((int) (clientWidth * this.u))) {
                return false;
            }
            return true;
        }
        if (i <= 0 || scrollX >= ((int) (clientWidth * this.v))) {
            return false;
        }
        return true;
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if ((layoutParams instanceof LayoutParams) && super.checkLayoutParams(layoutParams)) {
            return true;
        }
        return false;
    }

    @Override // android.view.View
    public final void computeScroll() {
        this.o = true;
        if (!this.n.isFinished() && this.n.computeScrollOffset()) {
            int scrollX = getScrollX();
            int scrollY = getScrollY();
            int currX = this.n.getCurrX();
            int currY = this.n.getCurrY();
            if (scrollX != currX || scrollY != currY) {
                scrollTo(currX, currY);
                if (!n(currX)) {
                    this.n.abortAnimation();
                    scrollTo(0, currY);
                }
            }
            WeakHashMap weakHashMap = ViewCompat.f792a;
            postInvalidateOnAnimation();
            return;
        }
        d(true);
    }

    public final void d(boolean z) {
        boolean z2;
        if (this.c0 == 2) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2) {
            setScrollingCacheEnabled(false);
            if (!this.n.isFinished()) {
                this.n.abortAnimation();
                int scrollX = getScrollX();
                int scrollY = getScrollY();
                int currX = this.n.getCurrX();
                int currY = this.n.getCurrY();
                if (scrollX != currX || scrollY != currY) {
                    scrollTo(currX, currY);
                    if (currX != scrollX) {
                        n(currX);
                    }
                }
            }
        }
        this.z = false;
        int i = 0;
        while (true) {
            ArrayList arrayList = this.f;
            if (i >= arrayList.size()) {
                break;
            }
            ItemInfo itemInfo = (ItemInfo) arrayList.get(i);
            if (itemInfo.f1764c) {
                itemInfo.f1764c = false;
                z2 = true;
            }
            i++;
        }
        if (z2) {
            Runnable runnable = this.b0;
            if (z) {
                WeakHashMap weakHashMap = ViewCompat.f792a;
                postOnAnimation(runnable);
            } else {
                ((AnonymousClass3) runnable).run();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0063 A[RETURN] */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean dispatchKeyEvent(android.view.KeyEvent r6) {
        /*
            r5 = this;
            boolean r0 = super.dispatchKeyEvent(r6)
            r1 = 1
            if (r0 != 0) goto L64
            int r0 = r6.getAction()
            r2 = 0
            if (r0 != 0) goto L5f
            int r0 = r6.getKeyCode()
            r3 = 21
            r4 = 2
            if (r0 == r3) goto L48
            r3 = 22
            if (r0 == r3) goto L36
            r3 = 61
            if (r0 == r3) goto L20
            goto L5f
        L20:
            boolean r0 = r6.hasNoModifiers()
            if (r0 == 0) goto L2b
            boolean r6 = r5.b(r4)
            goto L60
        L2b:
            boolean r6 = r6.hasModifiers(r1)
            if (r6 == 0) goto L5f
            boolean r6 = r5.b(r1)
            goto L60
        L36:
            boolean r6 = r6.hasModifiers(r4)
            if (r6 == 0) goto L41
            boolean r6 = r5.m()
            goto L60
        L41:
            r6 = 66
            boolean r6 = r5.b(r6)
            goto L60
        L48:
            boolean r6 = r6.hasModifiers(r4)
            if (r6 == 0) goto L58
            int r6 = r5.j
            if (r6 <= 0) goto L5f
            int r6 = r6 - r1
            r5.u(r6, r1)
            r6 = r1
            goto L60
        L58:
            r6 = 17
            boolean r6 = r5.b(r6)
            goto L60
        L5f:
            r6 = r2
        L60:
            if (r6 == 0) goto L63
            goto L64
        L63:
            return r2
        L64:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.dispatchKeyEvent(android.view.KeyEvent):boolean");
    }

    @Override // android.view.View
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        ItemInfo h;
        if (accessibilityEvent.getEventType() == 4096) {
            return super.dispatchPopulateAccessibilityEvent(accessibilityEvent);
        }
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 0 && (h = h(childAt)) != null && h.b == this.j && childAt.dispatchPopulateAccessibilityEvent(accessibilityEvent)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        super.draw(canvas);
        int overScrollMode = getOverScrollMode();
        EdgeEffect edgeEffect = this.R;
        EdgeEffect edgeEffect2 = this.Q;
        boolean z = false;
        if (overScrollMode != 0 && (overScrollMode != 1 || this.i == null)) {
            edgeEffect2.finish();
            edgeEffect.finish();
        } else {
            if (!edgeEffect2.isFinished()) {
                int save = canvas.save();
                int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
                int width = getWidth();
                canvas.rotate(270.0f);
                canvas.translate(getPaddingTop() + (-height), this.u * width);
                edgeEffect2.setSize(height, width);
                z = edgeEffect2.draw(canvas);
                canvas.restoreToCount(save);
            }
            if (!edgeEffect.isFinished()) {
                int save2 = canvas.save();
                int width2 = getWidth();
                int height2 = (getHeight() - getPaddingTop()) - getPaddingBottom();
                canvas.rotate(90.0f);
                canvas.translate(-getPaddingTop(), (-(this.v + 1.0f)) * width2);
                edgeEffect.setSize(height2, width2);
                z |= edgeEffect.draw(canvas);
                canvas.restoreToCount(save2);
            }
        }
        if (z) {
            WeakHashMap weakHashMap = ViewCompat.f792a;
            postInvalidateOnAnimation();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.r;
        if (drawable != null && drawable.isStateful()) {
            drawable.setState(getDrawableState());
        }
    }

    public final void e() {
        boolean z;
        this.i.getClass();
        this.f1760c = 100000;
        ArrayList arrayList = this.f;
        if (arrayList.size() < (this.A * 2) + 1 && arrayList.size() < 100000) {
            z = true;
        } else {
            z = false;
        }
        int i = this.j;
        int i2 = 0;
        boolean z2 = false;
        while (i2 < arrayList.size()) {
            ItemInfo itemInfo = (ItemInfo) arrayList.get(i2);
            PagerAdapter pagerAdapter = this.i;
            Object obj = itemInfo.f1763a;
            int c2 = pagerAdapter.c();
            if (c2 != -1) {
                if (c2 == -2) {
                    arrayList.remove(i2);
                    i2--;
                    if (!z2) {
                        this.i.j(this);
                        z2 = true;
                    }
                    this.i.a(itemInfo.f1763a);
                    int i3 = this.j;
                    if (i3 == itemInfo.b) {
                        i = Math.max(0, Math.min(i3, 99999));
                    }
                } else {
                    int i4 = itemInfo.b;
                    if (i4 != c2) {
                        if (i4 == this.j) {
                            i = c2;
                        }
                        itemInfo.b = c2;
                    }
                }
                z = true;
            }
            i2++;
        }
        if (z2) {
            this.i.b();
        }
        Collections.sort(arrayList, e0);
        if (z) {
            int childCount = getChildCount();
            for (int i5 = 0; i5 < childCount; i5++) {
                LayoutParams layoutParams = (LayoutParams) getChildAt(i5).getLayoutParams();
                if (!layoutParams.f1765a) {
                    layoutParams.f1766c = 0.0f;
                }
            }
            v(i, 0, false, true);
            requestLayout();
        }
    }

    public final void f(int i) {
        OnPageChangeListener onPageChangeListener = this.W;
        if (onPageChangeListener != null) {
            onPageChangeListener.d(i);
        }
        ArrayList arrayList = this.V;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                OnPageChangeListener onPageChangeListener2 = (OnPageChangeListener) this.V.get(i2);
                if (onPageChangeListener2 != null) {
                    onPageChangeListener2.d(i);
                }
            }
        }
    }

    public final Rect g(Rect rect, View view) {
        if (rect == null) {
            rect = new Rect();
        }
        if (view == null) {
            rect.set(0, 0, 0, 0);
            return rect;
        }
        rect.left = view.getLeft();
        rect.right = view.getRight();
        rect.top = view.getTop();
        rect.bottom = view.getBottom();
        ViewParent parent = view.getParent();
        while ((parent instanceof ViewGroup) && parent != this) {
            ViewGroup viewGroup = (ViewGroup) parent;
            rect.left = viewGroup.getLeft() + rect.left;
            rect.right = viewGroup.getRight() + rect.right;
            rect.top = viewGroup.getTop() + rect.top;
            rect.bottom = viewGroup.getBottom() + rect.bottom;
            parent = viewGroup.getParent();
        }
        return rect;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.viewpager.widget.ViewPager$LayoutParams, android.view.ViewGroup$LayoutParams] */
    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        ?? layoutParams = new ViewGroup.LayoutParams(-1, -1);
        layoutParams.f1766c = 0.0f;
        return layoutParams;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return generateDefaultLayoutParams();
    }

    @Nullable
    public PagerAdapter getAdapter() {
        return this.i;
    }

    @Override // android.view.ViewGroup
    public final int getChildDrawingOrder(int i, int i2) {
        throw null;
    }

    public int getCurrentItem() {
        return this.j;
    }

    public int getOffscreenPageLimit() {
        return this.A;
    }

    public int getPageMargin() {
        return this.q;
    }

    public final ItemInfo h(View view) {
        int i = 0;
        while (true) {
            ArrayList arrayList = this.f;
            if (i < arrayList.size()) {
                ItemInfo itemInfo = (ItemInfo) arrayList.get(i);
                if (this.i.e(view, itemInfo.f1763a)) {
                    return itemInfo;
                }
                i++;
            } else {
                return null;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0072, code lost:
    
        return r7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.viewpager.widget.ViewPager.ItemInfo i() {
        /*
            r13 = this;
            int r0 = r13.getClientWidth()
            r1 = 0
            if (r0 <= 0) goto Lf
            int r2 = r13.getScrollX()
            float r2 = (float) r2
            float r3 = (float) r0
            float r2 = r2 / r3
            goto L10
        Lf:
            r2 = r1
        L10:
            if (r0 <= 0) goto L18
            int r3 = r13.q
            float r3 = (float) r3
            float r0 = (float) r0
            float r3 = r3 / r0
            goto L19
        L18:
            r3 = r1
        L19:
            r0 = 0
            r4 = -1
            r5 = 1
            r6 = 0
            r8 = r0
            r9 = r5
            r7 = r6
            r6 = r4
            r4 = r1
        L22:
            java.util.ArrayList r10 = r13.f
            int r11 = r10.size()
            if (r8 >= r11) goto L72
            java.lang.Object r11 = r10.get(r8)
            androidx.viewpager.widget.ViewPager$ItemInfo r11 = (androidx.viewpager.widget.ViewPager.ItemInfo) r11
            if (r9 != 0) goto L4c
            int r12 = r11.b
            int r6 = r6 + r5
            if (r12 == r6) goto L4c
            float r1 = r1 + r4
            float r1 = r1 + r3
            androidx.viewpager.widget.ViewPager$ItemInfo r4 = r13.g
            r4.e = r1
            r4.b = r6
            androidx.viewpager.widget.PagerAdapter r1 = r13.i
            r1.getClass()
            r1 = 1065353216(0x3f800000, float:1.0)
            r4.d = r1
            int r8 = r8 + (-1)
            r6 = r4
            goto L4d
        L4c:
            r6 = r11
        L4d:
            float r1 = r6.e
            float r4 = r6.d
            float r4 = r4 + r1
            float r4 = r4 + r3
            if (r9 != 0) goto L59
            int r9 = (r2 > r1 ? 1 : (r2 == r1 ? 0 : -1))
            if (r9 < 0) goto L72
        L59:
            int r4 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r4 < 0) goto L71
            int r4 = r10.size()
            int r4 = r4 - r5
            if (r8 != r4) goto L65
            goto L71
        L65:
            int r4 = r6.b
            float r7 = r6.d
            int r8 = r8 + 1
            r9 = r6
            r6 = r4
            r4 = r7
            r7 = r9
            r9 = r0
            goto L22
        L71:
            return r6
        L72:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.i():androidx.viewpager.widget.ViewPager$ItemInfo");
    }

    public final ItemInfo j(int i) {
        int i2 = 0;
        while (true) {
            ArrayList arrayList = this.f;
            if (i2 < arrayList.size()) {
                ItemInfo itemInfo = (ItemInfo) arrayList.get(i2);
                if (itemInfo.b == i) {
                    return itemInfo;
                }
                i2++;
            } else {
                return null;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0065  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void k(float r12, int r13, int r14) {
        /*
            r11 = this;
            int r14 = r11.U
            r0 = 0
            r1 = 1
            if (r14 <= 0) goto L6c
            int r14 = r11.getScrollX()
            int r2 = r11.getPaddingLeft()
            int r3 = r11.getPaddingRight()
            int r4 = r11.getWidth()
            int r5 = r11.getChildCount()
            r6 = r0
        L1b:
            if (r6 >= r5) goto L6c
            android.view.View r7 = r11.getChildAt(r6)
            android.view.ViewGroup$LayoutParams r8 = r7.getLayoutParams()
            androidx.viewpager.widget.ViewPager$LayoutParams r8 = (androidx.viewpager.widget.ViewPager.LayoutParams) r8
            boolean r9 = r8.f1765a
            if (r9 != 0) goto L2c
            goto L69
        L2c:
            int r8 = r8.b
            r8 = r8 & 7
            if (r8 == r1) goto L50
            r9 = 3
            if (r8 == r9) goto L4a
            r9 = 5
            if (r8 == r9) goto L3a
            r8 = r2
            goto L5d
        L3a:
            int r8 = r4 - r3
            int r9 = r7.getMeasuredWidth()
            int r8 = r8 - r9
            int r9 = r7.getMeasuredWidth()
            int r3 = r3 + r9
        L46:
            r10 = r8
            r8 = r2
            r2 = r10
            goto L5d
        L4a:
            int r8 = r7.getWidth()
            int r8 = r8 + r2
            goto L5d
        L50:
            int r8 = r7.getMeasuredWidth()
            int r8 = r4 - r8
            int r8 = r8 / 2
            int r8 = java.lang.Math.max(r8, r2)
            goto L46
        L5d:
            int r2 = r2 + r14
            int r9 = r7.getLeft()
            int r2 = r2 - r9
            if (r2 == 0) goto L68
            r7.offsetLeftAndRight(r2)
        L68:
            r2 = r8
        L69:
            int r6 = r6 + 1
            goto L1b
        L6c:
            androidx.viewpager.widget.ViewPager$OnPageChangeListener r14 = r11.W
            if (r14 == 0) goto L73
            r14.b(r12, r13)
        L73:
            java.util.ArrayList r14 = r11.V
            if (r14 == 0) goto L8d
            int r14 = r14.size()
        L7b:
            if (r0 >= r14) goto L8d
            java.util.ArrayList r2 = r11.V
            java.lang.Object r2 = r2.get(r0)
            androidx.viewpager.widget.ViewPager$OnPageChangeListener r2 = (androidx.viewpager.widget.ViewPager.OnPageChangeListener) r2
            if (r2 == 0) goto L8a
            r2.b(r12, r13)
        L8a:
            int r0 = r0 + 1
            goto L7b
        L8d:
            r11.T = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.k(float, int, int):void");
    }

    public final void l(MotionEvent motionEvent) {
        int i;
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.K) {
            if (actionIndex == 0) {
                i = 1;
            } else {
                i = 0;
            }
            this.G = motionEvent.getX(i);
            this.K = motionEvent.getPointerId(i);
            VelocityTracker velocityTracker = this.L;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    public final boolean m() {
        int i;
        if (this.i != null && (i = this.j) < 99999) {
            u(i + 1, true);
            return true;
        }
        return false;
    }

    public final boolean n(int i) {
        if (this.f.size() == 0) {
            if (!this.S) {
                this.T = false;
                k(0.0f, 0, 0);
                if (!this.T) {
                    throw new IllegalStateException("onPageScrolled did not call superclass implementation");
                }
            }
            return false;
        }
        ItemInfo i2 = i();
        int clientWidth = getClientWidth();
        int i3 = this.q;
        int i4 = clientWidth + i3;
        float f = clientWidth;
        int i5 = i2.b;
        float f2 = ((i / f) - i2.e) / (i2.d + (i3 / f));
        this.T = false;
        k(f2, i5, (int) (i4 * f2));
        if (this.T) {
            return true;
        }
        throw new IllegalStateException("onPageScrolled did not call superclass implementation");
    }

    public final boolean o(float f) {
        boolean z;
        boolean z2;
        float f2 = this.G - f;
        this.G = f;
        float scrollX = getScrollX() + f2;
        float clientWidth = getClientWidth();
        float f3 = this.u * clientWidth;
        float f4 = this.v * clientWidth;
        ArrayList arrayList = this.f;
        boolean z3 = false;
        ItemInfo itemInfo = (ItemInfo) arrayList.get(0);
        ItemInfo itemInfo2 = (ItemInfo) a.c(1, arrayList);
        if (itemInfo.b != 0) {
            f3 = itemInfo.e * clientWidth;
            z = false;
        } else {
            z = true;
        }
        int i = itemInfo2.b;
        this.i.getClass();
        if (i != 99999) {
            f4 = itemInfo2.e * clientWidth;
            z2 = false;
        } else {
            z2 = true;
        }
        if (scrollX < f3) {
            if (z) {
                this.Q.onPull(Math.abs(f3 - scrollX) / clientWidth);
                z3 = true;
            }
            scrollX = f3;
        } else if (scrollX > f4) {
            if (z2) {
                this.R.onPull(Math.abs(scrollX - f4) / clientWidth);
                z3 = true;
            }
            scrollX = f4;
        }
        int i2 = (int) scrollX;
        this.G = (scrollX - i2) + this.G;
        scrollTo(i2, getScrollY());
        n(i2);
        return z3;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.S = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        removeCallbacks(this.b0);
        Scroller scroller = this.n;
        if (scroller != null && !scroller.isFinished()) {
            this.n.abortAnimation();
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        int i;
        float f;
        ArrayList arrayList;
        int i2;
        super.onDraw(canvas);
        if (this.q > 0 && this.r != null) {
            ArrayList arrayList2 = this.f;
            if (arrayList2.size() > 0 && this.i != null) {
                int scrollX = getScrollX();
                float width = getWidth();
                float f2 = this.q / width;
                int i3 = 0;
                ItemInfo itemInfo = (ItemInfo) arrayList2.get(0);
                float f3 = itemInfo.e;
                int size = arrayList2.size();
                int i4 = itemInfo.b;
                int i5 = ((ItemInfo) arrayList2.get(size - 1)).b;
                while (i4 < i5) {
                    while (true) {
                        i = itemInfo.b;
                        if (i4 <= i || i3 >= size) {
                            break;
                        }
                        i3++;
                        itemInfo = (ItemInfo) arrayList2.get(i3);
                    }
                    if (i4 == i) {
                        float f4 = itemInfo.e;
                        float f5 = itemInfo.d;
                        f = (f4 + f5) * width;
                        f3 = f4 + f5 + f2;
                    } else {
                        this.i.getClass();
                        f = (f3 + 1.0f) * width;
                        f3 = 1.0f + f2 + f3;
                    }
                    if (this.q + f > scrollX) {
                        arrayList = arrayList2;
                        i2 = scrollX;
                        this.r.setBounds(Math.round(f), this.s, Math.round(this.q + f), this.t);
                        this.r.draw(canvas);
                    } else {
                        arrayList = arrayList2;
                        i2 = scrollX;
                    }
                    if (f <= i2 + r3) {
                        i4++;
                        arrayList2 = arrayList;
                        scrollX = i2;
                    } else {
                        return;
                    }
                }
            }
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        float f;
        int action = motionEvent.getAction() & KotlinVersion.MAX_COMPONENT_VALUE;
        if (action != 3 && action != 1) {
            if (action != 0) {
                if (this.B) {
                    return true;
                }
                if (this.C) {
                    return false;
                }
            }
            if (action != 0) {
                if (action != 2) {
                    if (action == 6) {
                        l(motionEvent);
                    }
                } else {
                    int i = this.K;
                    if (i != -1) {
                        int findPointerIndex = motionEvent.findPointerIndex(i);
                        float x = motionEvent.getX(findPointerIndex);
                        float f2 = x - this.G;
                        float abs = Math.abs(f2);
                        float y = motionEvent.getY(findPointerIndex);
                        float abs2 = Math.abs(y - this.J);
                        if (f2 != 0.0f) {
                            float f3 = this.G;
                            if ((f3 >= this.E || f2 <= 0.0f) && ((f3 <= getWidth() - this.E || f2 >= 0.0f) && c((int) f2, (int) x, (int) y, this, false))) {
                                this.G = x;
                                this.H = y;
                                this.C = true;
                                return false;
                            }
                        }
                        int i2 = this.F;
                        float f4 = i2;
                        if (abs > f4 && abs * 0.5f > abs2) {
                            this.B = true;
                            ViewParent parent = getParent();
                            if (parent != null) {
                                parent.requestDisallowInterceptTouchEvent(true);
                            }
                            setScrollState(1);
                            float f5 = this.I;
                            float f6 = i2;
                            if (f2 > 0.0f) {
                                f = f5 + f6;
                            } else {
                                f = f5 - f6;
                            }
                            this.G = f;
                            this.H = y;
                            setScrollingCacheEnabled(true);
                        } else if (abs2 > f4) {
                            this.C = true;
                        }
                        if (this.B && o(x)) {
                            WeakHashMap weakHashMap = ViewCompat.f792a;
                            postInvalidateOnAnimation();
                        }
                    }
                }
            } else {
                float x2 = motionEvent.getX();
                this.I = x2;
                this.G = x2;
                float y2 = motionEvent.getY();
                this.J = y2;
                this.H = y2;
                this.K = motionEvent.getPointerId(0);
                this.C = false;
                this.o = true;
                this.n.computeScrollOffset();
                if (this.c0 == 2 && Math.abs(this.n.getFinalX() - this.n.getCurrX()) > this.P) {
                    this.n.abortAnimation();
                    this.z = false;
                    p();
                    this.B = true;
                    ViewParent parent2 = getParent();
                    if (parent2 != null) {
                        parent2.requestDisallowInterceptTouchEvent(true);
                    }
                    setScrollState(1);
                } else {
                    d(false);
                    this.B = false;
                }
            }
            if (this.L == null) {
                this.L = VelocityTracker.obtain();
            }
            this.L.addMovement(motionEvent);
            return this.B;
        }
        s();
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0094  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onLayout(boolean r19, int r20, int r21, int r22, int r23) {
        /*
            Method dump skipped, instructions count: 286
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.onLayout(boolean, int, int, int, int):void");
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        LayoutParams layoutParams;
        LayoutParams layoutParams2;
        boolean z;
        int i3;
        setMeasuredDimension(View.getDefaultSize(0, i), View.getDefaultSize(0, i2));
        int measuredWidth = getMeasuredWidth();
        this.E = Math.min(measuredWidth / 10, this.D);
        int paddingLeft = (measuredWidth - getPaddingLeft()) - getPaddingRight();
        int measuredHeight = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
        int childCount = getChildCount();
        int i4 = 0;
        while (true) {
            boolean z2 = true;
            int i5 = 1073741824;
            if (i4 >= childCount) {
                break;
            }
            View childAt = getChildAt(i4);
            if (childAt.getVisibility() != 8 && (layoutParams2 = (LayoutParams) childAt.getLayoutParams()) != null && layoutParams2.f1765a) {
                int i6 = layoutParams2.b;
                int i7 = i6 & 7;
                int i8 = i6 & 112;
                if (i8 != 48 && i8 != 80) {
                    z = false;
                } else {
                    z = true;
                }
                if (i7 != 3 && i7 != 5) {
                    z2 = false;
                }
                int i9 = IntCompanionObject.MIN_VALUE;
                if (z) {
                    i3 = Integer.MIN_VALUE;
                    i9 = 1073741824;
                } else if (z2) {
                    i3 = 1073741824;
                } else {
                    i3 = Integer.MIN_VALUE;
                }
                int i10 = ((ViewGroup.LayoutParams) layoutParams2).width;
                if (i10 != -2) {
                    if (i10 == -1) {
                        i10 = paddingLeft;
                    }
                    i9 = 1073741824;
                } else {
                    i10 = paddingLeft;
                }
                int i11 = ((ViewGroup.LayoutParams) layoutParams2).height;
                if (i11 != -2) {
                    if (i11 == -1) {
                        i11 = measuredHeight;
                    }
                } else {
                    i11 = measuredHeight;
                    i5 = i3;
                }
                childAt.measure(View.MeasureSpec.makeMeasureSpec(i10, i9), View.MeasureSpec.makeMeasureSpec(i11, i5));
                if (z) {
                    measuredHeight -= childAt.getMeasuredHeight();
                } else if (z2) {
                    paddingLeft -= childAt.getMeasuredWidth();
                }
            }
            i4++;
        }
        View.MeasureSpec.makeMeasureSpec(paddingLeft, 1073741824);
        this.w = View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824);
        this.x = true;
        p();
        this.x = false;
        int childCount2 = getChildCount();
        for (int i12 = 0; i12 < childCount2; i12++) {
            View childAt2 = getChildAt(i12);
            if (childAt2.getVisibility() != 8 && ((layoutParams = (LayoutParams) childAt2.getLayoutParams()) == null || !layoutParams.f1765a)) {
                childAt2.measure(View.MeasureSpec.makeMeasureSpec((int) (paddingLeft * layoutParams.f1766c), 1073741824), this.w);
            }
        }
    }

    @Override // android.view.ViewGroup
    public final boolean onRequestFocusInDescendants(int i, Rect rect) {
        int i2;
        int i3;
        int i4;
        ItemInfo h;
        int childCount = getChildCount();
        if ((i & 2) != 0) {
            i3 = childCount;
            i2 = 0;
            i4 = 1;
        } else {
            i2 = childCount - 1;
            i3 = -1;
            i4 = -1;
        }
        while (i2 != i3) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() == 0 && (h = h(childAt)) != null && h.b == this.j && childAt.requestFocus(i, rect)) {
                return true;
            }
            i2 += i4;
        }
        return false;
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        ClassLoader classLoader = savedState.i;
        super.onRestoreInstanceState(savedState.f936c);
        PagerAdapter pagerAdapter = this.i;
        if (pagerAdapter != null) {
            pagerAdapter.f(savedState.h, classLoader);
            v(savedState.g, 0, false, true);
        } else {
            this.k = savedState.g;
            this.l = savedState.h;
            this.m = classLoader;
        }
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [androidx.viewpager.widget.ViewPager$SavedState, android.os.Parcelable, androidx.customview.view.AbsSavedState] */
    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        ?? absSavedState = new AbsSavedState(super.onSaveInstanceState());
        absSavedState.g = this.j;
        PagerAdapter pagerAdapter = this.i;
        if (pagerAdapter != null) {
            absSavedState.h = pagerAdapter.g();
        }
        return absSavedState;
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != i3) {
            int i5 = this.q;
            r(i, i3, i5, i5);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        float f;
        float f2;
        boolean z = false;
        if ((motionEvent.getAction() == 0 && motionEvent.getEdgeFlags() != 0) || this.i == null) {
            return false;
        }
        if (this.L == null) {
            this.L = VelocityTracker.obtain();
        }
        this.L.addMovement(motionEvent);
        int action = motionEvent.getAction() & KotlinVersion.MAX_COMPONENT_VALUE;
        if (action != 0) {
            if (action != 1) {
                if (action != 2) {
                    if (action != 3) {
                        if (action != 5) {
                            if (action == 6) {
                                l(motionEvent);
                                this.G = motionEvent.getX(motionEvent.findPointerIndex(this.K));
                            }
                        } else {
                            int actionIndex = motionEvent.getActionIndex();
                            this.G = motionEvent.getX(actionIndex);
                            this.K = motionEvent.getPointerId(actionIndex);
                        }
                    } else if (this.B) {
                        t(this.j, 0, true, false);
                        z = s();
                    }
                } else {
                    if (!this.B) {
                        int findPointerIndex = motionEvent.findPointerIndex(this.K);
                        if (findPointerIndex == -1) {
                            z = s();
                        } else {
                            float x = motionEvent.getX(findPointerIndex);
                            float abs = Math.abs(x - this.G);
                            float y = motionEvent.getY(findPointerIndex);
                            float abs2 = Math.abs(y - this.H);
                            int i = this.F;
                            if (abs > i && abs > abs2) {
                                this.B = true;
                                ViewParent parent = getParent();
                                if (parent != null) {
                                    parent.requestDisallowInterceptTouchEvent(true);
                                }
                                float f3 = this.I;
                                if (x - f3 > 0.0f) {
                                    f2 = f3 + i;
                                } else {
                                    f2 = f3 - i;
                                }
                                this.G = f2;
                                this.H = y;
                                setScrollState(1);
                                setScrollingCacheEnabled(true);
                                ViewParent parent2 = getParent();
                                if (parent2 != null) {
                                    parent2.requestDisallowInterceptTouchEvent(true);
                                }
                            }
                        }
                    }
                    if (this.B) {
                        z = o(motionEvent.getX(motionEvent.findPointerIndex(this.K)));
                    }
                }
            } else if (this.B) {
                VelocityTracker velocityTracker = this.L;
                velocityTracker.computeCurrentVelocity(1000, this.N);
                int xVelocity = (int) velocityTracker.getXVelocity(this.K);
                this.z = true;
                int clientWidth = getClientWidth();
                int scrollX = getScrollX();
                ItemInfo i2 = i();
                float f4 = clientWidth;
                int i3 = i2.b;
                float f5 = ((scrollX / f4) - i2.e) / (i2.d + (this.q / f4));
                if (Math.abs((int) (motionEvent.getX(motionEvent.findPointerIndex(this.K)) - this.I)) > this.O && Math.abs(xVelocity) > this.M) {
                    if (xVelocity <= 0) {
                        i3++;
                    }
                } else {
                    if (i3 >= this.j) {
                        f = 0.4f;
                    } else {
                        f = 0.6f;
                    }
                    i3 += (int) (f5 + f);
                }
                ArrayList arrayList = this.f;
                if (arrayList.size() > 0) {
                    i3 = Math.max(((ItemInfo) arrayList.get(0)).b, Math.min(i3, ((ItemInfo) a.c(1, arrayList)).b));
                }
                v(i3, xVelocity, true, true);
                z = s();
            }
        } else {
            this.n.abortAnimation();
            this.z = false;
            p();
            float x2 = motionEvent.getX();
            this.I = x2;
            this.G = x2;
            float y2 = motionEvent.getY();
            this.J = y2;
            this.H = y2;
            this.K = motionEvent.getPointerId(0);
        }
        if (z) {
            WeakHashMap weakHashMap = ViewCompat.f792a;
            postInvalidateOnAnimation();
        }
        return true;
    }

    public final void p() {
        q(this.j);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x005e, code lost:
    
        if (r11 == r12) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0064, code lost:
    
        r10 = null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void q(int r19) {
        /*
            Method dump skipped, instructions count: 882
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.q(int):void");
    }

    public final void r(int i, int i2, int i3, int i4) {
        float f;
        if (i2 > 0 && !this.f.isEmpty()) {
            if (!this.n.isFinished()) {
                this.n.setFinalX(getCurrentItem() * getClientWidth());
                return;
            }
            scrollTo((int) ((getScrollX() / (((i2 - getPaddingLeft()) - getPaddingRight()) + i4)) * (((i - getPaddingLeft()) - getPaddingRight()) + i3)), getScrollY());
            return;
        }
        ItemInfo j = j(this.j);
        if (j != null) {
            f = Math.min(j.e, this.v);
        } else {
            f = 0.0f;
        }
        int paddingLeft = (int) (f * ((i - getPaddingLeft()) - getPaddingRight()));
        if (paddingLeft != getScrollX()) {
            d(false);
            scrollTo(paddingLeft, getScrollY());
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void removeView(View view) {
        if (this.x) {
            removeViewInLayout(view);
        } else {
            super.removeView(view);
        }
    }

    public final boolean s() {
        this.K = -1;
        this.B = false;
        this.C = false;
        VelocityTracker velocityTracker = this.L;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.L = null;
        }
        this.Q.onRelease();
        this.R.onRelease();
        if (!this.Q.isFinished() && !this.R.isFinished()) {
            return false;
        }
        return true;
    }

    public void setAdapter(@Nullable PagerAdapter pagerAdapter) {
        ArrayList arrayList = this.f;
        PagerAdapter pagerAdapter2 = this.i;
        if (pagerAdapter2 != null) {
            synchronized (pagerAdapter2) {
                pagerAdapter2.b = null;
            }
            this.i.j(this);
            for (int i = 0; i < arrayList.size(); i++) {
                ItemInfo itemInfo = (ItemInfo) arrayList.get(i);
                PagerAdapter pagerAdapter3 = this.i;
                int i2 = itemInfo.b;
                pagerAdapter3.a(itemInfo.f1763a);
            }
            this.i.b();
            arrayList.clear();
            int i3 = 0;
            while (i3 < getChildCount()) {
                if (!((LayoutParams) getChildAt(i3).getLayoutParams()).f1765a) {
                    removeViewAt(i3);
                    i3--;
                }
                i3++;
            }
            this.j = 0;
            scrollTo(0, 0);
        }
        this.i = pagerAdapter;
        this.f1760c = 0;
        if (pagerAdapter != null) {
            if (this.p == null) {
                this.p = new PagerObserver();
            }
            this.i.i(this.p);
            this.z = false;
            boolean z = this.S;
            this.S = true;
            this.i.getClass();
            this.f1760c = 100000;
            if (this.k >= 0) {
                this.i.f(this.l, this.m);
                v(this.k, 0, false, true);
                this.k = -1;
                this.l = null;
                this.m = null;
            } else if (!z) {
                p();
            } else {
                requestLayout();
            }
        }
        ArrayList arrayList2 = this.a0;
        if (arrayList2 != null && !arrayList2.isEmpty()) {
            int size = this.a0.size();
            for (int i4 = 0; i4 < size; i4++) {
                ((OnAdapterChangeListener) this.a0.get(i4)).a(this, pagerAdapter);
            }
        }
    }

    public void setCurrentItem(int i) {
        this.z = false;
        v(i, 0, !this.S, false);
    }

    public void setOffscreenPageLimit(int i) {
        if (i < 1) {
            Log.w("ViewPager", "Requested offscreen page limit " + i + " too small; defaulting to 1");
            i = 1;
        }
        if (i != this.A) {
            this.A = i;
            p();
        }
    }

    @Deprecated
    public void setOnPageChangeListener(OnPageChangeListener onPageChangeListener) {
        this.W = onPageChangeListener;
    }

    public void setPageMargin(int i) {
        int i2 = this.q;
        this.q = i;
        int width = getWidth();
        r(width, width, i, i2);
        requestLayout();
    }

    public void setPageMarginDrawable(@Nullable Drawable drawable) {
        this.r = drawable;
        if (drawable != null) {
            refreshDrawableState();
        }
        setWillNotDraw(drawable == null);
        invalidate();
    }

    public void setScrollState(int i) {
        if (this.c0 == i) {
            return;
        }
        this.c0 = i;
        OnPageChangeListener onPageChangeListener = this.W;
        if (onPageChangeListener != null) {
            onPageChangeListener.c(i);
        }
        ArrayList arrayList = this.V;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                OnPageChangeListener onPageChangeListener2 = (OnPageChangeListener) this.V.get(i2);
                if (onPageChangeListener2 != null) {
                    onPageChangeListener2.c(i);
                }
            }
        }
    }

    public final void t(int i, int i2, boolean z, boolean z2) {
        int i3;
        int scrollX;
        int abs;
        ItemInfo j = j(i);
        if (j != null) {
            i3 = (int) (Math.max(this.u, Math.min(j.e, this.v)) * getClientWidth());
        } else {
            i3 = 0;
        }
        if (z) {
            if (getChildCount() == 0) {
                setScrollingCacheEnabled(false);
            } else {
                Scroller scroller = this.n;
                if (scroller != null && !scroller.isFinished()) {
                    if (this.o) {
                        scrollX = this.n.getCurrX();
                    } else {
                        scrollX = this.n.getStartX();
                    }
                    this.n.abortAnimation();
                    setScrollingCacheEnabled(false);
                } else {
                    scrollX = getScrollX();
                }
                int i4 = scrollX;
                int scrollY = getScrollY();
                int i5 = i3 - i4;
                int i6 = 0 - scrollY;
                if (i5 == 0 && i6 == 0) {
                    d(false);
                    p();
                    setScrollState(0);
                } else {
                    setScrollingCacheEnabled(true);
                    setScrollState(2);
                    int clientWidth = getClientWidth();
                    int i7 = clientWidth / 2;
                    float f = clientWidth;
                    float f2 = i7;
                    float sin = (((float) Math.sin((Math.min(1.0f, (Math.abs(i5) * 1.0f) / f) - 0.5f) * 0.47123894f)) * f2) + f2;
                    int abs2 = Math.abs(i2);
                    if (abs2 > 0) {
                        abs = Math.round(Math.abs(sin / abs2) * 1000.0f) * 4;
                    } else {
                        this.i.getClass();
                        abs = (int) (((Math.abs(i5) / ((f * 1.0f) + this.q)) + 1.0f) * 100.0f);
                    }
                    int min = Math.min(abs, 600);
                    this.o = false;
                    this.n.startScroll(i4, scrollY, i5, i6, min);
                    WeakHashMap weakHashMap = ViewCompat.f792a;
                    postInvalidateOnAnimation();
                }
            }
            if (z2) {
                f(i);
                return;
            }
            return;
        }
        if (z2) {
            f(i);
        }
        d(false);
        scrollTo(i3, 0);
        n(i3);
    }

    public final void u(int i, boolean z) {
        this.z = false;
        v(i, 0, z, false);
    }

    public final void v(int i, int i2, boolean z, boolean z2) {
        boolean z3 = false;
        if (this.i != null) {
            ArrayList arrayList = this.f;
            if (!z2 && this.j == i && arrayList.size() != 0) {
                setScrollingCacheEnabled(false);
                return;
            }
            if (i < 0) {
                i = 0;
            } else {
                this.i.getClass();
                if (i >= 100000) {
                    this.i.getClass();
                    i = 99999;
                }
            }
            int i3 = this.A;
            int i4 = this.j;
            if (i > i4 + i3 || i < i4 - i3) {
                for (int i5 = 0; i5 < arrayList.size(); i5++) {
                    ((ItemInfo) arrayList.get(i5)).f1764c = true;
                }
            }
            if (this.j != i) {
                z3 = true;
            }
            if (this.S) {
                this.j = i;
                if (z3) {
                    f(i);
                }
                requestLayout();
                return;
            }
            q(i);
            t(i, i2, z, z3);
            return;
        }
        setScrollingCacheEnabled(false);
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        if (!super.verifyDrawable(drawable) && drawable != this.r) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.viewpager.widget.ViewPager$LayoutParams, android.view.ViewGroup$LayoutParams] */
    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        Context context = getContext();
        ?? layoutParams = new ViewGroup.LayoutParams(context, attributeSet);
        layoutParams.f1766c = 0.0f;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, d0);
        layoutParams.b = obtainStyledAttributes.getInteger(0, 48);
        obtainStyledAttributes.recycle();
        return layoutParams;
    }

    public void setPageMarginDrawable(@DrawableRes int i) {
        setPageMarginDrawable(getContext().getDrawable(i));
    }

    /* loaded from: classes.dex */
    public static class SimpleOnPageChangeListener implements OnPageChangeListener {
        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public final void c(int i) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public final void d(int i) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public final void b(float f, int i) {
        }
    }
}
