package com.google.android.material.carousel;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.core.graphics.ColorUtils;
import androidx.core.math.MathUtils;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.carousel.KeylineState;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes3.dex */
public class CarouselLayoutManager extends RecyclerView.LayoutManager implements Carousel, RecyclerView.SmoothScroller.ScrollVectorProvider {
    public int A;
    public int B;
    public final int C;
    public int p;
    public int q;
    public int r;
    public final DebugItemDecoration s;
    public final MultiBrowseCarouselStrategy t;
    public KeylineStateList u;
    public KeylineState v;
    public int w;
    public HashMap x;
    public CarouselOrientationHelper y;
    public final View.OnLayoutChangeListener z;

    /* loaded from: classes3.dex */
    public static final class ChildCalculations {

        /* renamed from: a, reason: collision with root package name */
        public final View f11706a;
        public final float b;

        /* renamed from: c, reason: collision with root package name */
        public final float f11707c;
        public final KeylineRange d;

        public ChildCalculations(View view, float f, float f2, KeylineRange keylineRange) {
            this.f11706a = view;
            this.b = f;
            this.f11707c = f2;
            this.d = keylineRange;
        }
    }

    /* loaded from: classes3.dex */
    public static class DebugItemDecoration extends RecyclerView.ItemDecoration {

        /* renamed from: a, reason: collision with root package name */
        public final Paint f11708a;
        public List b;

        public DebugItemDecoration() {
            Paint paint = new Paint();
            this.f11708a = paint;
            this.b = DesugarCollections.unmodifiableList(new ArrayList());
            paint.setStrokeWidth(5.0f);
            paint.setColor(-65281);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public final void h(Canvas canvas, RecyclerView recyclerView) {
            Canvas canvas2;
            float dimension = recyclerView.getResources().getDimension(R.dimen.m3_carousel_debug_keyline_width);
            Paint paint = this.f11708a;
            paint.setStrokeWidth(dimension);
            for (KeylineState.Keyline keyline : this.b) {
                paint.setColor(ColorUtils.e(keyline.f11718c, -65281, -16776961));
                if (((CarouselLayoutManager) recyclerView.getLayoutManager()).Z0()) {
                    canvas2 = canvas;
                    canvas2.drawLine(keyline.b, ((CarouselLayoutManager) recyclerView.getLayoutManager()).y.g(), keyline.b, ((CarouselLayoutManager) recyclerView.getLayoutManager()).y.c(), paint);
                } else {
                    float d = ((CarouselLayoutManager) recyclerView.getLayoutManager()).y.d();
                    float f = keyline.b;
                    float e = ((CarouselLayoutManager) recyclerView.getLayoutManager()).y.e();
                    float f2 = keyline.b;
                    canvas2 = canvas;
                    canvas2.drawLine(d, f, e, f2, paint);
                }
                canvas = canvas2;
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class KeylineRange {

        /* renamed from: a, reason: collision with root package name */
        public final KeylineState.Keyline f11709a;
        public final KeylineState.Keyline b;

        public KeylineRange(KeylineState.Keyline keyline, KeylineState.Keyline keyline2) {
            if (keyline.f11717a <= keyline2.f11717a) {
                this.f11709a = keyline;
                this.b = keyline2;
                return;
            }
            throw new IllegalArgumentException();
        }
    }

    /* loaded from: classes3.dex */
    public static class LayoutDirection {
    }

    public CarouselLayoutManager() {
        MultiBrowseCarouselStrategy multiBrowseCarouselStrategy = new MultiBrowseCarouselStrategy();
        this.s = new DebugItemDecoration();
        this.w = 0;
        this.z = new a(0, this);
        this.B = -1;
        this.C = 0;
        this.t = multiBrowseCarouselStrategy;
        f1();
        h1(0);
    }

    public static KeylineRange Y0(List list, float f, boolean z) {
        float f2;
        float f3 = Float.MAX_VALUE;
        int i = -1;
        int i2 = -1;
        int i3 = -1;
        int i4 = -1;
        float f4 = -3.4028235E38f;
        float f5 = Float.MAX_VALUE;
        float f6 = Float.MAX_VALUE;
        for (int i5 = 0; i5 < list.size(); i5++) {
            KeylineState.Keyline keyline = (KeylineState.Keyline) list.get(i5);
            if (z) {
                f2 = keyline.b;
            } else {
                f2 = keyline.f11717a;
            }
            float abs = Math.abs(f2 - f);
            if (f2 <= f && abs <= f3) {
                i = i5;
                f3 = abs;
            }
            if (f2 > f && abs <= f5) {
                i3 = i5;
                f5 = abs;
            }
            if (f2 <= f6) {
                i2 = i5;
                f6 = f2;
            }
            if (f2 > f4) {
                i4 = i5;
                f4 = f2;
            }
        }
        if (i == -1) {
            i = i2;
        }
        if (i3 == -1) {
            i3 = i4;
        }
        return new KeylineRange((KeylineState.Keyline) list.get(i), (KeylineState.Keyline) list.get(i3));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void B(Rect rect, View view) {
        float f;
        RecyclerView.N(rect, view);
        float centerY = rect.centerY();
        if (Z0()) {
            centerY = rect.centerX();
        }
        KeylineRange Y0 = Y0(this.v.f11714c, centerY, true);
        KeylineState.Keyline keyline = Y0.f11709a;
        float f2 = keyline.d;
        KeylineState.Keyline keyline2 = Y0.b;
        float b = AnimationUtils.b(f2, keyline2.d, keyline.b, keyline2.b, centerY);
        float f3 = 0.0f;
        if (Z0()) {
            f = (rect.width() - b) / 2.0f;
        } else {
            f = 0.0f;
        }
        if (!Z0()) {
            f3 = (rect.height() - b) / 2.0f;
        }
        rect.set((int) (rect.left + f), (int) (rect.top + f3), (int) (rect.right - f), (int) (rect.bottom - f3));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void H0(int i, RecyclerView recyclerView) {
        LinearSmoothScroller linearSmoothScroller = new LinearSmoothScroller(recyclerView.getContext()) { // from class: com.google.android.material.carousel.CarouselLayoutManager.1
            @Override // androidx.recyclerview.widget.RecyclerView.SmoothScroller
            public final PointF a(int i2) {
                return CarouselLayoutManager.this.a(i2);
            }

            @Override // androidx.recyclerview.widget.LinearSmoothScroller
            public final int h(View view, int i2) {
                CarouselLayoutManager carouselLayoutManager = CarouselLayoutManager.this;
                if (carouselLayoutManager.u != null && carouselLayoutManager.Z0()) {
                    int N = RecyclerView.LayoutManager.N(view);
                    return (int) (carouselLayoutManager.p - carouselLayoutManager.W0(N, carouselLayoutManager.U0(N)));
                }
                return 0;
            }

            @Override // androidx.recyclerview.widget.LinearSmoothScroller
            public final int i(View view, int i2) {
                CarouselLayoutManager carouselLayoutManager = CarouselLayoutManager.this;
                if (carouselLayoutManager.u != null && !carouselLayoutManager.Z0()) {
                    int N = RecyclerView.LayoutManager.N(view);
                    return (int) (carouselLayoutManager.p - carouselLayoutManager.W0(N, carouselLayoutManager.U0(N)));
                }
                return 0;
            }
        };
        linearSmoothScroller.f1582a = i;
        I0(linearSmoothScroller);
    }

    public final void K0(View view, int i, ChildCalculations childCalculations) {
        float f = this.v.f11713a / 2.0f;
        c(i, view, false);
        d1(view);
        float f2 = childCalculations.f11707c;
        this.y.h(view, (int) (f2 - f), (int) (f2 + f));
        i1(view, childCalculations.b, childCalculations.d);
    }

    public final float L0(float f, float f2) {
        if (a1()) {
            return f - f2;
        }
        return f + f2;
    }

    public final void M0(RecyclerView.Recycler recycler, int i, int i2) {
        if (i >= 0 && i < H()) {
            float Q0 = Q0(i);
            View d = recycler.d(i);
            d1(d);
            float L0 = L0(Q0, this.v.f11713a / 2.0f);
            KeylineRange Y0 = Y0(this.v.f11714c, L0, false);
            K0(d, i2, new ChildCalculations(d, L0, P0(L0, Y0), Y0));
        }
    }

    public final void N0(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        float Q0 = Q0(i);
        while (i < state.b()) {
            float L0 = L0(Q0, this.v.f11713a / 2.0f);
            KeylineRange Y0 = Y0(this.v.f11714c, L0, false);
            float P0 = P0(L0, Y0);
            if (!b1(P0, Y0)) {
                Q0 = L0(Q0, this.v.f11713a);
                if (!c1(P0, Y0)) {
                    View d = recycler.d(i);
                    K0(d, -1, new ChildCalculations(d, L0, P0, Y0));
                }
                i++;
            } else {
                return;
            }
        }
    }

    public final void O0(int i, RecyclerView.Recycler recycler) {
        float Q0 = Q0(i);
        while (i >= 0) {
            float L0 = L0(Q0, this.v.f11713a / 2.0f);
            KeylineRange Y0 = Y0(this.v.f11714c, L0, false);
            float P0 = P0(L0, Y0);
            if (!c1(P0, Y0)) {
                float f = this.v.f11713a;
                if (a1()) {
                    Q0 += f;
                } else {
                    Q0 -= f;
                }
                if (!b1(P0, Y0)) {
                    View d = recycler.d(i);
                    K0(d, 0, new ChildCalculations(d, L0, P0, Y0));
                }
                i--;
            } else {
                return;
            }
        }
    }

    public final float P0(float f, KeylineRange keylineRange) {
        KeylineState.Keyline keyline = keylineRange.f11709a;
        float f2 = keyline.b;
        KeylineState.Keyline keyline2 = keylineRange.b;
        float f3 = keyline2.b;
        float f4 = keyline.f11717a;
        float f5 = keyline2.f11717a;
        float b = AnimationUtils.b(f2, f3, f4, f5, f);
        if (keyline2 != this.v.b() && keyline != this.v.d()) {
            return b;
        }
        return android.support.v4.media.a.a(1.0f, keyline2.f11718c, f - f5, b);
    }

    public final float Q0(int i) {
        return L0(this.y.f() - this.p, this.v.f11713a * i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean R() {
        return true;
    }

    public final void R0(RecyclerView.Recycler recycler, RecyclerView.State state) {
        while (x() > 0) {
            View w = w(0);
            float T0 = T0(w);
            if (!c1(T0, Y0(this.v.f11714c, T0, true))) {
                break;
            } else {
                r0(w, recycler);
            }
        }
        while (x() - 1 >= 0) {
            View w2 = w(x() - 1);
            float T02 = T0(w2);
            if (!b1(T02, Y0(this.v.f11714c, T02, true))) {
                break;
            } else {
                r0(w2, recycler);
            }
        }
        if (x() == 0) {
            O0(this.w - 1, recycler);
            N0(this.w, recycler, state);
        } else {
            int N = RecyclerView.LayoutManager.N(w(0));
            int N2 = RecyclerView.LayoutManager.N(w(x() - 1));
            O0(N - 1, recycler);
            N0(N2 + 1, recycler, state);
        }
    }

    public final int S0() {
        if (Z0()) {
            return this.n;
        }
        return this.o;
    }

    public final float T0(View view) {
        int centerY;
        Rect rect = new Rect();
        RecyclerView.N(rect, view);
        if (Z0()) {
            centerY = rect.centerX();
        } else {
            centerY = rect.centerY();
        }
        return centerY;
    }

    public final KeylineState U0(int i) {
        KeylineState keylineState;
        HashMap hashMap = this.x;
        if (hashMap != null && (keylineState = (KeylineState) hashMap.get(Integer.valueOf(MathUtils.b(i, 0, Math.max(0, H() - 1))))) != null) {
            return keylineState;
        }
        return this.u.f11719a;
    }

    public final int V0(int i) {
        int W0 = W0(i, this.u.b(this.p, this.q, this.r, true)) - this.p;
        if (this.x != null) {
            W0(i, U0(i));
        }
        return W0;
    }

    public final int W0(int i, KeylineState keylineState) {
        if (a1()) {
            float S0 = S0() - keylineState.c().f11717a;
            float f = keylineState.f11713a;
            return (int) ((S0 - (i * f)) - (f / 2.0f));
        }
        return (int) ((keylineState.f11713a / 2.0f) + ((i * keylineState.f11713a) - keylineState.a().f11717a));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void X(RecyclerView recyclerView) {
        Context context = recyclerView.getContext();
        MultiBrowseCarouselStrategy multiBrowseCarouselStrategy = this.t;
        float f = multiBrowseCarouselStrategy.f11711a;
        if (f <= 0.0f) {
            f = context.getResources().getDimension(R.dimen.m3_carousel_small_item_size_min);
        }
        multiBrowseCarouselStrategy.f11711a = f;
        float f2 = multiBrowseCarouselStrategy.b;
        if (f2 <= 0.0f) {
            f2 = context.getResources().getDimension(R.dimen.m3_carousel_small_item_size_max);
        }
        multiBrowseCarouselStrategy.b = f2;
        f1();
        recyclerView.addOnLayoutChangeListener(this.z);
    }

    public final int X0(int i, KeylineState keylineState) {
        int i2;
        int i3 = Integer.MAX_VALUE;
        for (KeylineState.Keyline keyline : keylineState.f11714c.subList(keylineState.d, keylineState.e + 1)) {
            float f = keylineState.f11713a;
            float f2 = (f / 2.0f) + (i * f);
            if (a1()) {
                i2 = (int) ((S0() - keyline.f11717a) - f2);
            } else {
                i2 = (int) (f2 - keyline.f11717a);
            }
            int i4 = i2 - this.p;
            if (Math.abs(i3) > Math.abs(i4)) {
                i3 = i4;
            }
        }
        return i3;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void Y(RecyclerView recyclerView) {
        recyclerView.removeOnLayoutChangeListener(this.z);
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x003a, code lost:
    
        if (r8 == 1) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0044, code lost:
    
        if (a1() != false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0048, code lost:
    
        if (r8 == 1) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0051, code lost:
    
        if (a1() != false) goto L20;
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:37:? A[RETURN, SYNTHETIC] */
    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View Z(android.view.View r5, int r6, androidx.recyclerview.widget.RecyclerView.Recycler r7, androidx.recyclerview.widget.RecyclerView.State r8) {
        /*
            r4 = this;
            int r8 = r4.x()
            if (r8 != 0) goto L8
            goto L89
        L8:
            com.google.android.material.carousel.CarouselOrientationHelper r8 = r4.y
            int r8 = r8.f11710a
            r0 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = -1
            r2 = 1
            if (r6 == r2) goto L46
            r3 = 2
            if (r6 == r3) goto L3c
            r3 = 17
            if (r6 == r3) goto L4b
            r3 = 33
            if (r6 == r3) goto L48
            r3 = 66
            if (r6 == r3) goto L3e
            r3 = 130(0x82, float:1.82E-43)
            if (r6 == r3) goto L3a
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            java.lang.String r3 = "Unknown focus request:"
            r8.<init>(r3)
            r8.append(r6)
            java.lang.String r6 = r8.toString()
            java.lang.String r8 = "CarouselLayoutManager"
            android.util.Log.d(r8, r6)
        L38:
            r6 = r0
            goto L54
        L3a:
            if (r8 != r2) goto L38
        L3c:
            r6 = r2
            goto L54
        L3e:
            if (r8 != 0) goto L38
            boolean r6 = r4.a1()
            if (r6 == 0) goto L3c
        L46:
            r6 = r1
            goto L54
        L48:
            if (r8 != r2) goto L38
            goto L46
        L4b:
            if (r8 != 0) goto L38
            boolean r6 = r4.a1()
            if (r6 == 0) goto L46
            goto L3c
        L54:
            if (r6 != r0) goto L57
            goto L89
        L57:
            r8 = 0
            if (r6 != r1) goto L7e
            int r5 = androidx.recyclerview.widget.RecyclerView.LayoutManager.N(r5)
            if (r5 != 0) goto L61
            goto L89
        L61:
            android.view.View r5 = r4.w(r8)
            int r5 = androidx.recyclerview.widget.RecyclerView.LayoutManager.N(r5)
            int r5 = r5 - r2
            r4.M0(r7, r5, r8)
            boolean r5 = r4.a1()
            if (r5 == 0) goto L79
            int r5 = r4.x()
            int r8 = r5 + (-1)
        L79:
            android.view.View r5 = r4.w(r8)
            return r5
        L7e:
            int r5 = androidx.recyclerview.widget.RecyclerView.LayoutManager.N(r5)
            int r6 = r4.H()
            int r6 = r6 - r2
            if (r5 != r6) goto L8b
        L89:
            r5 = 0
            return r5
        L8b:
            int r5 = r4.x()
            int r5 = r5 - r2
            android.view.View r5 = r4.w(r5)
            int r5 = androidx.recyclerview.widget.RecyclerView.LayoutManager.N(r5)
            int r5 = r5 + r2
            r4.M0(r7, r5, r1)
            boolean r5 = r4.a1()
            if (r5 == 0) goto La3
            goto La9
        La3:
            int r5 = r4.x()
            int r8 = r5 + (-1)
        La9:
            android.view.View r5 = r4.w(r8)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.carousel.CarouselLayoutManager.Z(android.view.View, int, androidx.recyclerview.widget.RecyclerView$Recycler, androidx.recyclerview.widget.RecyclerView$State):android.view.View");
    }

    public final boolean Z0() {
        if (this.y.f11710a == 0) {
            return true;
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.SmoothScroller.ScrollVectorProvider
    public final PointF a(int i) {
        if (this.u == null) {
            return null;
        }
        int W0 = W0(i, U0(i)) - this.p;
        if (Z0()) {
            return new PointF(W0, 0.0f);
        }
        return new PointF(0.0f, W0);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void a0(AccessibilityEvent accessibilityEvent) {
        super.a0(accessibilityEvent);
        if (x() > 0) {
            accessibilityEvent.setFromIndex(RecyclerView.LayoutManager.N(w(0)));
            accessibilityEvent.setToIndex(RecyclerView.LayoutManager.N(w(x() - 1)));
        }
    }

    public final boolean a1() {
        if (Z0() && I() == 1) {
            return true;
        }
        return false;
    }

    public final boolean b1(float f, KeylineRange keylineRange) {
        float f2;
        KeylineState.Keyline keyline = keylineRange.f11709a;
        float f3 = keyline.d;
        KeylineState.Keyline keyline2 = keylineRange.b;
        float b = AnimationUtils.b(f3, keyline2.d, keyline.b, keyline2.b, f) / 2.0f;
        if (a1()) {
            f2 = f + b;
        } else {
            f2 = f - b;
        }
        if (a1()) {
            if (f2 < 0.0f) {
                return true;
            }
            return false;
        }
        if (f2 > S0()) {
            return true;
        }
        return false;
    }

    public final boolean c1(float f, KeylineRange keylineRange) {
        KeylineState.Keyline keyline = keylineRange.f11709a;
        float f2 = keyline.d;
        KeylineState.Keyline keyline2 = keylineRange.b;
        float L0 = L0(f, AnimationUtils.b(f2, keyline2.d, keyline.b, keyline2.b, f) / 2.0f);
        if (a1()) {
            if (L0 > S0()) {
                return true;
            }
            return false;
        }
        if (L0 < 0.0f) {
            return true;
        }
        return false;
    }

    public final void d1(View view) {
        float f;
        float f2;
        if (view instanceof Maskable) {
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
            Rect rect = new Rect();
            e(rect, view);
            int i = rect.left + rect.right;
            int i2 = rect.top + rect.bottom;
            KeylineStateList keylineStateList = this.u;
            if (keylineStateList != null && this.y.f11710a == 0) {
                f = keylineStateList.f11719a.f11713a;
            } else {
                f = ((ViewGroup.MarginLayoutParams) layoutParams).width;
            }
            if (keylineStateList != null && this.y.f11710a == 1) {
                f2 = keylineStateList.f11719a.f11713a;
            } else {
                f2 = ((ViewGroup.MarginLayoutParams) layoutParams).height;
            }
            view.measure(RecyclerView.LayoutManager.y(Z0(), this.n, this.l, L() + K() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + i, (int) f), RecyclerView.LayoutManager.y(g(), this.o, this.m, J() + M() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin + i2, (int) f2));
            return;
        }
        throw new IllegalStateException("All children of a RecyclerView using CarouselLayoutManager must use MaskableFrameLayout as their root ViewGroup.");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void e0(RecyclerView recyclerView, int i, int i2) {
        k1();
    }

    /* JADX WARN: Code restructure failed: missing block: B:142:0x05c3, code lost:
    
        if (r3 == r7) goto L198;
     */
    /* JADX WARN: Removed duplicated region for block: B:119:0x044f  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x056a  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x057f  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x058f  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x05a5  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x05cd  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x05dc  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x0584  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x0578 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:186:0x0464  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void e1(androidx.recyclerview.widget.RecyclerView.Recycler r33) {
        /*
            Method dump skipped, instructions count: 1717
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.carousel.CarouselLayoutManager.e1(androidx.recyclerview.widget.RecyclerView$Recycler):void");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean f() {
        return Z0();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void f0() {
        k1();
    }

    public final void f1() {
        this.u = null;
        v0();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean g() {
        return !Z0();
    }

    public final int g1(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        KeylineState c2;
        float f;
        if (x() != 0 && i != 0) {
            if (this.u == null) {
                e1(recycler);
            }
            int H = H();
            KeylineStateList keylineStateList = this.u;
            if (a1()) {
                c2 = keylineStateList.a();
            } else {
                c2 = keylineStateList.c();
            }
            if (H > c2.b) {
                int i2 = this.p;
                int i3 = this.q;
                int i4 = this.r;
                int i5 = i2 + i;
                if (i5 < i3) {
                    i = i3 - i2;
                } else if (i5 > i4) {
                    i = i4 - i2;
                }
                this.p = i2 + i;
                j1(this.u);
                float f2 = this.v.f11713a / 2.0f;
                float Q0 = Q0(RecyclerView.LayoutManager.N(w(0)));
                Rect rect = new Rect();
                if (a1()) {
                    f = this.v.c().b;
                } else {
                    f = this.v.a().b;
                }
                float f3 = Float.MAX_VALUE;
                for (int i6 = 0; i6 < x(); i6++) {
                    View w = w(i6);
                    float L0 = L0(Q0, f2);
                    KeylineRange Y0 = Y0(this.v.f11714c, L0, false);
                    float P0 = P0(L0, Y0);
                    RecyclerView.N(rect, w);
                    i1(w, L0, Y0);
                    this.y.j(w, rect, f2, P0);
                    float abs = Math.abs(f - P0);
                    if (abs < f3) {
                        this.B = RecyclerView.LayoutManager.N(w);
                        f3 = abs;
                    }
                    Q0 = L0(Q0, this.v.f11713a);
                }
                R0(recycler, state);
                return i;
            }
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void h0(RecyclerView recyclerView, int i, int i2) {
        k1();
    }

    public final void h1(int i) {
        CarouselOrientationHelper carouselOrientationHelper;
        if (i != 0 && i != 1) {
            throw new IllegalArgumentException(android.support.v4.media.a.e(i, "invalid orientation:"));
        }
        d(null);
        CarouselOrientationHelper carouselOrientationHelper2 = this.y;
        if (carouselOrientationHelper2 != null && i == carouselOrientationHelper2.f11710a) {
            return;
        }
        if (i != 0) {
            if (i == 1) {
                carouselOrientationHelper = new CarouselOrientationHelper() { // from class: com.google.android.material.carousel.CarouselOrientationHelper.1
                    {
                        super(1);
                    }

                    @Override // com.google.android.material.carousel.CarouselOrientationHelper
                    public final void a(RectF rectF, RectF rectF2, RectF rectF3) {
                        float f = rectF2.top;
                        float f2 = rectF3.top;
                        if (f < f2 && rectF2.bottom > f2) {
                            float f3 = f2 - f;
                            rectF.top += f3;
                            rectF3.top += f3;
                        }
                        float f4 = rectF2.bottom;
                        float f5 = rectF3.bottom;
                        if (f4 > f5 && rectF2.top < f5) {
                            float f6 = f4 - f5;
                            rectF.bottom = Math.max(rectF.bottom - f6, rectF.top);
                            rectF2.bottom = Math.max(rectF2.bottom - f6, rectF2.top);
                        }
                    }

                    @Override // com.google.android.material.carousel.CarouselOrientationHelper
                    public final RectF b(float f, float f2, float f3, float f4) {
                        return new RectF(0.0f, f3, f2, f - f3);
                    }

                    @Override // com.google.android.material.carousel.CarouselOrientationHelper
                    public final int c() {
                        return CarouselLayoutManager.this.o;
                    }

                    @Override // com.google.android.material.carousel.CarouselOrientationHelper
                    public final int d() {
                        return CarouselLayoutManager.this.K();
                    }

                    @Override // com.google.android.material.carousel.CarouselOrientationHelper
                    public final int e() {
                        CarouselLayoutManager carouselLayoutManager = CarouselLayoutManager.this;
                        return carouselLayoutManager.n - carouselLayoutManager.L();
                    }

                    @Override // com.google.android.material.carousel.CarouselOrientationHelper
                    public final int f() {
                        return 0;
                    }

                    @Override // com.google.android.material.carousel.CarouselOrientationHelper
                    public final int g() {
                        return 0;
                    }

                    @Override // com.google.android.material.carousel.CarouselOrientationHelper
                    public final void h(View view, int i2, int i3) {
                        int K = CarouselLayoutManager.this.K();
                        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                        RecyclerView.LayoutManager.T(view, K, i2, RecyclerView.LayoutManager.E(view) + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + K, i3);
                    }

                    @Override // com.google.android.material.carousel.CarouselOrientationHelper
                    public final void i(RectF rectF, RectF rectF2, RectF rectF3) {
                        if (rectF2.bottom <= rectF3.top) {
                            float floor = ((float) Math.floor(rectF.bottom)) - 1.0f;
                            rectF.bottom = floor;
                            rectF.top = Math.min(rectF.top, floor);
                        }
                        if (rectF2.top >= rectF3.bottom) {
                            float ceil = ((float) Math.ceil(rectF.top)) + 1.0f;
                            rectF.top = ceil;
                            rectF.bottom = Math.max(ceil, rectF.bottom);
                        }
                    }

                    @Override // com.google.android.material.carousel.CarouselOrientationHelper
                    public final void j(View view, Rect rect, float f, float f2) {
                        view.offsetTopAndBottom((int) (f2 - (rect.top + f)));
                    }
                };
            } else {
                throw new IllegalArgumentException("invalid orientation");
            }
        } else {
            carouselOrientationHelper = new CarouselOrientationHelper() { // from class: com.google.android.material.carousel.CarouselOrientationHelper.2
                {
                    super(0);
                }

                @Override // com.google.android.material.carousel.CarouselOrientationHelper
                public final void a(RectF rectF, RectF rectF2, RectF rectF3) {
                    float f = rectF2.left;
                    float f2 = rectF3.left;
                    if (f < f2 && rectF2.right > f2) {
                        float f3 = f2 - f;
                        rectF.left += f3;
                        rectF2.left += f3;
                    }
                    float f4 = rectF2.right;
                    float f5 = rectF3.right;
                    if (f4 > f5 && rectF2.left < f5) {
                        float f6 = f4 - f5;
                        rectF.right = Math.max(rectF.right - f6, rectF.left);
                        rectF2.right = Math.max(rectF2.right - f6, rectF2.left);
                    }
                }

                @Override // com.google.android.material.carousel.CarouselOrientationHelper
                public final RectF b(float f, float f2, float f3, float f4) {
                    return new RectF(f4, 0.0f, f2 - f4, f);
                }

                @Override // com.google.android.material.carousel.CarouselOrientationHelper
                public final int c() {
                    CarouselLayoutManager carouselLayoutManager = CarouselLayoutManager.this;
                    return carouselLayoutManager.o - carouselLayoutManager.J();
                }

                @Override // com.google.android.material.carousel.CarouselOrientationHelper
                public final int d() {
                    return 0;
                }

                @Override // com.google.android.material.carousel.CarouselOrientationHelper
                public final int e() {
                    return CarouselLayoutManager.this.n;
                }

                @Override // com.google.android.material.carousel.CarouselOrientationHelper
                public final int f() {
                    CarouselLayoutManager carouselLayoutManager = CarouselLayoutManager.this;
                    if (carouselLayoutManager.a1()) {
                        return carouselLayoutManager.n;
                    }
                    return 0;
                }

                @Override // com.google.android.material.carousel.CarouselOrientationHelper
                public final int g() {
                    return CarouselLayoutManager.this.M();
                }

                @Override // com.google.android.material.carousel.CarouselOrientationHelper
                public final void h(View view, int i2, int i3) {
                    int M = CarouselLayoutManager.this.M();
                    RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                    RecyclerView.LayoutManager.T(view, i2, M, i3, RecyclerView.LayoutManager.D(view) + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin + M);
                }

                @Override // com.google.android.material.carousel.CarouselOrientationHelper
                public final void i(RectF rectF, RectF rectF2, RectF rectF3) {
                    if (rectF2.right <= rectF3.left) {
                        float floor = ((float) Math.floor(rectF.right)) - 1.0f;
                        rectF.right = floor;
                        rectF.left = Math.min(rectF.left, floor);
                    }
                    if (rectF2.left >= rectF3.right) {
                        float ceil = ((float) Math.ceil(rectF.left)) + 1.0f;
                        rectF.left = ceil;
                        rectF.right = Math.max(ceil, rectF.right);
                    }
                }

                @Override // com.google.android.material.carousel.CarouselOrientationHelper
                public final void j(View view, Rect rect, float f, float f2) {
                    view.offsetLeftAndRight((int) (f2 - (rect.left + f)));
                }
            };
        }
        this.y = carouselOrientationHelper;
        f1();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void i1(View view, float f, KeylineRange keylineRange) {
        if (!(view instanceof Maskable)) {
            return;
        }
        KeylineState.Keyline keyline = keylineRange.f11709a;
        float f2 = keyline.f11718c;
        KeylineState.Keyline keyline2 = keylineRange.b;
        float b = AnimationUtils.b(f2, keyline2.f11718c, keyline.f11717a, keyline2.f11717a, f);
        float height = view.getHeight();
        float width = view.getWidth();
        RectF b2 = this.y.b(height, width, AnimationUtils.b(0.0f, height / 2.0f, 0.0f, 1.0f, b), AnimationUtils.b(0.0f, width / 2.0f, 0.0f, 1.0f, b));
        float P0 = P0(f, keylineRange);
        RectF rectF = new RectF(P0 - (b2.width() / 2.0f), P0 - (b2.height() / 2.0f), (b2.width() / 2.0f) + P0, (b2.height() / 2.0f) + P0);
        RectF rectF2 = new RectF(this.y.d(), this.y.g(), this.y.e(), this.y.c());
        this.t.getClass();
        this.y.a(b2, rectF, rectF2);
        this.y.i(b2, rectF, rectF2);
        ((Maskable) view).setMaskRectF(b2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void j0(RecyclerView.Recycler recycler, RecyclerView.State state) {
        boolean z;
        KeylineState c2;
        KeylineState.Keyline a2;
        float f;
        KeylineState a3;
        KeylineState.Keyline c3;
        float f2;
        int i;
        int max;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        if (state.b() > 0 && S0() > 0.0f) {
            boolean a1 = a1();
            KeylineStateList keylineStateList = this.u;
            int i7 = 1;
            if (keylineStateList == null) {
                z = true;
            } else {
                z = false;
            }
            if (z || keylineStateList.f11719a.f != S0()) {
                e1(recycler);
            }
            KeylineStateList keylineStateList2 = this.u;
            boolean a12 = a1();
            if (a12) {
                c2 = keylineStateList2.a();
            } else {
                c2 = keylineStateList2.c();
            }
            if (a12) {
                a2 = c2.c();
            } else {
                a2 = c2.a();
            }
            float f3 = a2.f11717a;
            float f4 = c2.f11713a / 2.0f;
            if (a1()) {
                f = f3 + f4;
            } else {
                f = f3 - f4;
            }
            int f5 = (int) (this.y.f() - f);
            KeylineStateList keylineStateList3 = this.u;
            boolean a13 = a1();
            if (a13) {
                a3 = keylineStateList3.c();
            } else {
                a3 = keylineStateList3.a();
            }
            if (a13) {
                c3 = a3.a();
            } else {
                c3 = a3.c();
            }
            float b = (state.b() - 1) * a3.f11713a;
            if (a13) {
                f2 = -1.0f;
            } else {
                f2 = 1.0f;
            }
            float f6 = (b * f2) - (c3.f11717a - this.y.f());
            if (a13) {
                i = -1;
            } else {
                i = 1;
            }
            int i8 = (int) (((i * c3.d) / 2.0f) + f6);
            if (a13) {
                max = Math.min(0, i8);
            } else {
                max = Math.max(0, i8);
            }
            if (a1) {
                i2 = max;
            } else {
                i2 = f5;
            }
            this.q = i2;
            if (a1) {
                max = f5;
            }
            this.r = max;
            if (z) {
                this.p = f5;
                KeylineStateList keylineStateList4 = this.u;
                int H = H();
                int i9 = this.q;
                int i10 = this.r;
                boolean a14 = a1();
                List list = keylineStateList4.b;
                List list2 = keylineStateList4.f11720c;
                float f7 = keylineStateList4.f11719a.f11713a;
                HashMap hashMap = new HashMap();
                int i11 = 0;
                int i12 = 0;
                while (i11 < H) {
                    if (a14) {
                        i5 = (H - i11) - i7;
                    } else {
                        i5 = i11;
                    }
                    int i13 = i7;
                    float f8 = i5 * f7;
                    if (a14) {
                        i6 = -1;
                    } else {
                        i6 = i13;
                    }
                    if (f8 * i6 > i10 - keylineStateList4.g || i11 >= H - list2.size()) {
                        hashMap.put(Integer.valueOf(i5), (KeylineState) list2.get(MathUtils.b(i12, 0, list2.size() - 1)));
                        i12++;
                    }
                    i11++;
                    i7 = i13;
                }
                int i14 = i7;
                int i15 = 0;
                for (int i16 = H - 1; i16 >= 0; i16--) {
                    int i17 = a14 ? (H - i16) - 1 : i16;
                    float f9 = i17 * f7;
                    if (a14) {
                        i4 = -1;
                    } else {
                        i4 = i14;
                    }
                    if (f9 * i4 < i9 + keylineStateList4.f || i16 < list.size()) {
                        hashMap.put(Integer.valueOf(i17), (KeylineState) list.get(MathUtils.b(i15, 0, list.size() - 1)));
                        i15++;
                    }
                }
                this.x = hashMap;
                int i18 = this.B;
                if (i18 != -1) {
                    this.p = W0(i18, U0(i18));
                }
            }
            int i19 = this.p;
            int i20 = this.q;
            int i21 = this.r;
            if (i19 < i20) {
                i3 = i20 - i19;
            } else if (i19 > i21) {
                i3 = i21 - i19;
            } else {
                i3 = 0;
            }
            this.p = i3 + i19;
            this.w = MathUtils.b(this.w, 0, state.b());
            j1(this.u);
            r(recycler);
            R0(recycler, state);
            this.A = H();
            return;
        }
        p0(recycler);
        this.w = 0;
    }

    public final void j1(KeylineStateList keylineStateList) {
        KeylineState c2;
        int i = this.r;
        int i2 = this.q;
        if (i <= i2) {
            if (a1()) {
                c2 = keylineStateList.a();
            } else {
                c2 = keylineStateList.c();
            }
            this.v = c2;
        } else {
            this.v = keylineStateList.b(this.p, i2, i, false);
        }
        List list = this.v.f11714c;
        DebugItemDecoration debugItemDecoration = this.s;
        debugItemDecoration.getClass();
        debugItemDecoration.b = DesugarCollections.unmodifiableList(list);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void k0(RecyclerView.State state) {
        if (x() == 0) {
            this.w = 0;
        } else {
            this.w = RecyclerView.LayoutManager.N(w(0));
        }
    }

    public final void k1() {
        int H = H();
        int i = this.A;
        if (H != i && this.u != null) {
            MultiBrowseCarouselStrategy multiBrowseCarouselStrategy = this.t;
            if ((i < multiBrowseCarouselStrategy.f11722c && H() >= multiBrowseCarouselStrategy.f11722c) || (i >= multiBrowseCarouselStrategy.f11722c && H() < multiBrowseCarouselStrategy.f11722c)) {
                f1();
            }
            this.A = H;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int l(RecyclerView.State state) {
        if (x() != 0 && this.u != null && H() > 1) {
            return (int) (this.n * (this.u.f11719a.f11713a / n(state)));
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int m(RecyclerView.State state) {
        return this.p;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int n(RecyclerView.State state) {
        return this.r - this.q;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int o(RecyclerView.State state) {
        if (x() != 0 && this.u != null && H() > 1) {
            return (int) (this.o * (this.u.f11719a.f11713a / q(state)));
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int p(RecyclerView.State state) {
        return this.p;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int q(RecyclerView.State state) {
        return this.r - this.q;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final RecyclerView.LayoutParams t() {
        return new RecyclerView.LayoutParams(-2, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean u0(RecyclerView recyclerView, View view, Rect rect, boolean z, boolean z2) {
        int X0;
        if (this.u == null || (X0 = X0(RecyclerView.LayoutManager.N(view), U0(RecyclerView.LayoutManager.N(view)))) == 0) {
            return false;
        }
        int i = this.p;
        int i2 = this.q;
        int i3 = this.r;
        int i4 = i + X0;
        if (i4 < i2) {
            X0 = i2 - i;
        } else if (i4 > i3) {
            X0 = i3 - i;
        }
        int X02 = X0(RecyclerView.LayoutManager.N(view), this.u.b(i + X0, i2, i3, false));
        if (Z0()) {
            recyclerView.scrollBy(X02, 0);
            return true;
        }
        recyclerView.scrollBy(0, X02);
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int w0(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (Z0()) {
            return g1(i, recycler, state);
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void x0(int i) {
        this.B = i;
        if (this.u == null) {
            return;
        }
        this.p = W0(i, U0(i));
        this.w = MathUtils.b(i, 0, Math.max(0, H() - 1));
        j1(this.u);
        v0();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int y0(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (g()) {
            return g1(i, recycler, state);
        }
        return 0;
    }

    @SuppressLint({"UnknownNullness"})
    public CarouselLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        this.s = new DebugItemDecoration();
        this.w = 0;
        this.z = new a(0, this);
        this.B = -1;
        this.C = 0;
        this.t = new MultiBrowseCarouselStrategy();
        f1();
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.Carousel);
            this.C = obtainStyledAttributes.getInt(R.styleable.Carousel_carousel_alignment, 0);
            f1();
            h1(obtainStyledAttributes.getInt(androidx.recyclerview.R.styleable.RecyclerView_android_orientation, 0));
            obtainStyledAttributes.recycle();
        }
    }
}
