package androidx.viewpager2.widget;

import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class ScrollEventAdapter extends RecyclerView.OnScrollListener {

    /* renamed from: a, reason: collision with root package name */
    public ViewPager2.OnPageChangeCallback f1773a;
    public final ViewPager2 b;

    /* renamed from: c, reason: collision with root package name */
    public final RecyclerView f1774c;
    public final LinearLayoutManager d;
    public int e;
    public int f;
    public final ScrollEventValues g;
    public int h;
    public int i;
    public boolean j;
    public boolean k;
    public boolean l;

    /* loaded from: classes.dex */
    public static final class ScrollEventValues {

        /* renamed from: a, reason: collision with root package name */
        public int f1775a;
        public float b;

        /* renamed from: c, reason: collision with root package name */
        public int f1776c;
    }

    /* JADX WARN: Type inference failed for: r1v4, types: [java.lang.Object, androidx.viewpager2.widget.ScrollEventAdapter$ScrollEventValues] */
    public ScrollEventAdapter(ViewPager2 viewPager2) {
        this.b = viewPager2;
        RecyclerView recyclerView = viewPager2.n;
        this.f1774c = recyclerView;
        this.d = (LinearLayoutManager) recyclerView.getLayoutManager();
        this.g = new Object();
        e();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
    public final void a(int i) {
        ViewPager2.OnPageChangeCallback onPageChangeCallback;
        int i2 = this.e;
        if ((i2 != 1 || this.f != 1) && i == 1) {
            this.e = 1;
            int i3 = this.i;
            if (i3 != -1) {
                this.h = i3;
                this.i = -1;
            } else if (this.h == -1) {
                this.h = this.d.U0();
            }
            d(1);
            return;
        }
        if ((i2 == 1 || i2 == 4) && i == 2) {
            if (this.k) {
                d(2);
                this.j = true;
                return;
            }
            return;
        }
        ScrollEventValues scrollEventValues = this.g;
        if ((i2 == 1 || i2 == 4) && i == 0) {
            f();
            if (!this.k) {
                int i4 = scrollEventValues.f1775a;
                if (i4 != -1 && (onPageChangeCallback = this.f1773a) != null) {
                    onPageChangeCallback.b(0.0f, i4, 0);
                }
            } else if (scrollEventValues.f1776c == 0) {
                int i5 = this.h;
                int i6 = scrollEventValues.f1775a;
                if (i5 != i6) {
                    c(i6);
                }
            }
            d(0);
            e();
        }
        if (this.e == 2 && i == 0 && this.l) {
            f();
            if (scrollEventValues.f1776c == 0) {
                int i7 = this.i;
                int i8 = scrollEventValues.f1775a;
                if (i7 != i8) {
                    if (i8 == -1) {
                        i8 = 0;
                    }
                    c(i8);
                }
                d(0);
                e();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0026, code lost:
    
        if (r7 == r8) goto L15;
     */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0038  */
    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b(androidx.recyclerview.widget.RecyclerView r6, int r7, int r8) {
        /*
            r5 = this;
            r6 = 1
            r5.k = r6
            r5.f()
            boolean r0 = r5.j
            r1 = -1
            androidx.viewpager2.widget.ScrollEventAdapter$ScrollEventValues r2 = r5.g
            r3 = 0
            if (r0 == 0) goto L3c
            r5.j = r3
            if (r8 > 0) goto L28
            if (r8 != 0) goto L30
            if (r7 >= 0) goto L18
            r7 = r6
            goto L19
        L18:
            r7 = r3
        L19:
            androidx.viewpager2.widget.ViewPager2 r8 = r5.b
            androidx.recyclerview.widget.LinearLayoutManager r8 = r8.k
            int r8 = r8.I()
            if (r8 != r6) goto L25
            r8 = r6
            goto L26
        L25:
            r8 = r3
        L26:
            if (r7 != r8) goto L30
        L28:
            int r7 = r2.f1776c
            if (r7 == 0) goto L30
            int r7 = r2.f1775a
            int r7 = r7 + r6
            goto L32
        L30:
            int r7 = r2.f1775a
        L32:
            r5.i = r7
            int r8 = r5.h
            if (r8 == r7) goto L48
            r5.c(r7)
            goto L48
        L3c:
            int r7 = r5.e
            if (r7 != 0) goto L48
            int r7 = r2.f1775a
            if (r7 != r1) goto L45
            r7 = r3
        L45:
            r5.c(r7)
        L48:
            int r7 = r2.f1775a
            if (r7 != r1) goto L4d
            r7 = r3
        L4d:
            float r8 = r2.b
            int r0 = r2.f1776c
            androidx.viewpager2.widget.ViewPager2$OnPageChangeCallback r4 = r5.f1773a
            if (r4 == 0) goto L58
            r4.b(r8, r7, r0)
        L58:
            int r7 = r2.f1775a
            int r8 = r5.i
            if (r7 == r8) goto L60
            if (r8 != r1) goto L6e
        L60:
            int r7 = r2.f1776c
            if (r7 != 0) goto L6e
            int r7 = r5.f
            if (r7 == r6) goto L6e
            r5.d(r3)
            r5.e()
        L6e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager2.widget.ScrollEventAdapter.b(androidx.recyclerview.widget.RecyclerView, int, int):void");
    }

    public final void c(int i) {
        ViewPager2.OnPageChangeCallback onPageChangeCallback = this.f1773a;
        if (onPageChangeCallback != null) {
            onPageChangeCallback.c(i);
        }
    }

    public final void d(int i) {
        if ((this.e != 3 || this.f != 0) && this.f != i) {
            this.f = i;
            ViewPager2.OnPageChangeCallback onPageChangeCallback = this.f1773a;
            if (onPageChangeCallback != null) {
                onPageChangeCallback.a(i);
            }
        }
    }

    public final void e() {
        this.e = 0;
        this.f = 0;
        ScrollEventValues scrollEventValues = this.g;
        scrollEventValues.f1775a = -1;
        scrollEventValues.b = 0.0f;
        scrollEventValues.f1776c = 0;
        this.h = -1;
        this.i = -1;
        this.j = false;
        this.k = false;
        this.l = false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:55:0x0137, code lost:
    
        r1 = r0.x();
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x013b, code lost:
    
        if (r3 >= r1) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0145, code lost:
    
        if (androidx.viewpager2.widget.AnimateLayoutChangeDetector.a(r0.w(r3)) != false) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0147, code lost:
    
        r3 = r3 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0151, code lost:
    
        throw new java.lang.IllegalStateException("Page(s) contain a ViewGroup with a LayoutTransition (or animateLayoutChanges=\"true\"), which interferes with the scrolling animation. Make sure to call getLayoutTransition().setAnimateParentHierarchy(false) on all ViewGroups with a LayoutTransition before an animation is started.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0152, code lost:
    
        r1 = java.util.Locale.US;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0161, code lost:
    
        throw new java.lang.IllegalStateException(android.support.v4.media.a.e(r2.f1776c, "Page can only be offset by a positive amount, not by "));
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x012e, code lost:
    
        if (r5[r1 - 1][1] >= r6) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0135, code lost:
    
        if (r0.x() <= 1) goto L63;
     */
    /* JADX WARN: Type inference failed for: r4v8, types: [java.lang.Object, java.util.Comparator] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void f() {
        /*
            Method dump skipped, instructions count: 364
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager2.widget.ScrollEventAdapter.f():void");
    }
}
