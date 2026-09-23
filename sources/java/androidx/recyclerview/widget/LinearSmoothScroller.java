package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public class LinearSmoothScroller extends RecyclerView.SmoothScroller {
    public PointF k;
    public final DisplayMetrics l;
    public float n;
    public final LinearInterpolator i = new LinearInterpolator();
    public final DecelerateInterpolator j = new DecelerateInterpolator();
    public boolean m = false;
    public int o = 0;
    public int p = 0;

    public LinearSmoothScroller(Context context) {
        this.l = context.getResources().getDisplayMetrics();
    }

    public static int g(int i, int i2, int i3, int i4, int i5) {
        if (i5 != -1) {
            if (i5 != 0) {
                if (i5 == 1) {
                    return i4 - i2;
                }
                throw new IllegalArgumentException("snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_");
            }
            int i6 = i3 - i;
            if (i6 > 0) {
                return i6;
            }
            int i7 = i4 - i2;
            if (i7 < 0) {
                return i7;
            }
            return 0;
        }
        return i3 - i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.SmoothScroller
    public final void c(int i, int i2, RecyclerView.SmoothScroller.Action action) {
        if (this.b.r.x() == 0) {
            f();
            return;
        }
        int i3 = this.o;
        int i4 = i3 - i;
        int i5 = 0;
        if (i3 * i4 <= 0) {
            i4 = 0;
        }
        this.o = i4;
        int i6 = this.p;
        int i7 = i6 - i2;
        if (i6 * i7 > 0) {
            i5 = i7;
        }
        this.p = i5;
        if (i4 == 0 && i5 == 0) {
            PointF a2 = a(this.f1582a);
            if (a2 != null) {
                if (a2.x != 0.0f || a2.y != 0.0f) {
                    float f = a2.y;
                    float sqrt = (float) Math.sqrt((f * f) + (r4 * r4));
                    float f2 = a2.x / sqrt;
                    a2.x = f2;
                    float f3 = a2.y / sqrt;
                    a2.y = f3;
                    this.k = a2;
                    this.o = (int) (f2 * 10000.0f);
                    this.p = (int) (f3 * 10000.0f);
                    int k = k(10000);
                    action.f1584a = (int) (this.o * 1.2f);
                    action.b = (int) (this.p * 1.2f);
                    action.f1585c = (int) (k * 1.2f);
                    action.e = this.i;
                    action.f = true;
                    return;
                }
            }
            action.d = this.f1582a;
            f();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.SmoothScroller
    public final void d() {
        this.p = 0;
        this.o = 0;
        this.k = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:19:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x001e  */
    @Override // androidx.recyclerview.widget.RecyclerView.SmoothScroller
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void e(android.view.View r7, androidx.recyclerview.widget.RecyclerView.SmoothScroller.Action r8) {
        /*
            r6 = this;
            android.graphics.PointF r0 = r6.k
            r1 = 0
            r2 = -1
            r3 = 1
            r4 = 0
            if (r0 == 0) goto L15
            float r0 = r0.x
            int r0 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r0 != 0) goto Lf
            goto L15
        Lf:
            if (r0 <= 0) goto L13
            r0 = r3
            goto L16
        L13:
            r0 = r2
            goto L16
        L15:
            r0 = r1
        L16:
            int r0 = r6.h(r7, r0)
            android.graphics.PointF r5 = r6.k
            if (r5 == 0) goto L2a
            float r5 = r5.y
            int r4 = (r5 > r4 ? 1 : (r5 == r4 ? 0 : -1))
            if (r4 != 0) goto L25
            goto L2a
        L25:
            if (r4 <= 0) goto L29
            r1 = r3
            goto L2a
        L29:
            r1 = r2
        L2a:
            int r7 = r6.i(r7, r1)
            int r1 = r0 * r0
            int r2 = r7 * r7
            int r2 = r2 + r1
            double r1 = (double) r2
            double r1 = java.lang.Math.sqrt(r1)
            int r1 = (int) r1
            int r1 = r6.k(r1)
            double r1 = (double) r1
            r4 = 4599717252057688074(0x3fd57a786c22680a, double:0.3356)
            double r1 = r1 / r4
            double r1 = java.lang.Math.ceil(r1)
            int r1 = (int) r1
            if (r1 <= 0) goto L59
            int r0 = -r0
            int r7 = -r7
            r8.f1584a = r0
            r8.b = r7
            r8.f1585c = r1
            android.view.animation.DecelerateInterpolator r7 = r6.j
            r8.e = r7
            r8.f = r3
        L59:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.LinearSmoothScroller.e(android.view.View, androidx.recyclerview.widget.RecyclerView$SmoothScroller$Action):void");
    }

    public int h(View view, int i) {
        RecyclerView.LayoutManager layoutManager = this.f1583c;
        if (layoutManager != null && layoutManager.f()) {
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
            return g(RecyclerView.LayoutManager.C(view) - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, RecyclerView.LayoutManager.F(view) + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, layoutManager.K(), layoutManager.n - layoutManager.L(), i);
        }
        return 0;
    }

    public int i(View view, int i) {
        RecyclerView.LayoutManager layoutManager = this.f1583c;
        if (layoutManager != null && layoutManager.g()) {
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
            return g(RecyclerView.LayoutManager.G(view) - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, RecyclerView.LayoutManager.A(view) + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin, layoutManager.M(), layoutManager.o - layoutManager.J(), i);
        }
        return 0;
    }

    public float j(DisplayMetrics displayMetrics) {
        return 25.0f / displayMetrics.densityDpi;
    }

    public int k(int i) {
        float abs = Math.abs(i);
        if (!this.m) {
            this.n = j(this.l);
            this.m = true;
        }
        return (int) Math.ceil(abs * this.n);
    }
}
