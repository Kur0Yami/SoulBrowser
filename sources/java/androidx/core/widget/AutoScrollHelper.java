package androidx.core.widget;

import android.content.res.Resources;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import androidx.core.view.ViewCompat;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public abstract class AutoScrollHelper implements View.OnTouchListener {
    public static final int u = ViewConfiguration.getTapTimeout();

    /* renamed from: c, reason: collision with root package name */
    public final ClampedScroller f854c;
    public final AccelerateInterpolator f;
    public final View g;
    public Runnable h;
    public final float[] i;
    public final float[] j;
    public final int k;
    public final int l;
    public final float[] m;
    public final float[] n;
    public final float[] o;
    public boolean p;
    public boolean q;
    public boolean r;
    public boolean s;
    public boolean t;

    /* loaded from: classes.dex */
    public static class ClampedScroller {

        /* renamed from: a, reason: collision with root package name */
        public int f855a;
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public float f856c;
        public float d;
        public long e;
        public long f;
        public long g;
        public float h;
        public int i;

        public final float a(long j) {
            long j2 = this.e;
            if (j < j2) {
                return 0.0f;
            }
            long j3 = this.g;
            if (j3 >= 0 && j >= j3) {
                float f = this.h;
                return (AutoScrollHelper.c(((float) (j - j3)) / this.i, 0.0f, 1.0f) * f) + (1.0f - f);
            }
            return AutoScrollHelper.c(((float) (j - j2)) / this.f855a, 0.0f, 1.0f) * 0.5f;
        }
    }

    /* loaded from: classes.dex */
    public class ScrollAnimationRunnable implements Runnable {
        public ScrollAnimationRunnable() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            AutoScrollHelper autoScrollHelper = AutoScrollHelper.this;
            View view = autoScrollHelper.g;
            ClampedScroller clampedScroller = autoScrollHelper.f854c;
            if (!autoScrollHelper.s) {
                return;
            }
            if (autoScrollHelper.q) {
                autoScrollHelper.q = false;
                long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
                clampedScroller.e = currentAnimationTimeMillis;
                clampedScroller.g = -1L;
                clampedScroller.f = currentAnimationTimeMillis;
                clampedScroller.h = 0.5f;
            }
            if ((clampedScroller.g > 0 && AnimationUtils.currentAnimationTimeMillis() > clampedScroller.g + clampedScroller.i) || !autoScrollHelper.g()) {
                autoScrollHelper.s = false;
                return;
            }
            if (autoScrollHelper.r) {
                autoScrollHelper.r = false;
                long uptimeMillis = SystemClock.uptimeMillis();
                MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                view.onTouchEvent(obtain);
                obtain.recycle();
            }
            if (clampedScroller.f != 0) {
                long currentAnimationTimeMillis2 = AnimationUtils.currentAnimationTimeMillis();
                float a2 = clampedScroller.a(currentAnimationTimeMillis2);
                long j = currentAnimationTimeMillis2 - clampedScroller.f;
                clampedScroller.f = currentAnimationTimeMillis2;
                autoScrollHelper.f((int) (((float) j) * ((a2 * 4.0f) + ((-4.0f) * a2 * a2)) * clampedScroller.d));
                WeakHashMap weakHashMap = ViewCompat.f792a;
                view.postOnAnimation(this);
                return;
            }
            throw new RuntimeException("Cannot compute scroll delta before calling start()");
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, androidx.core.widget.AutoScrollHelper$ClampedScroller] */
    public AutoScrollHelper(View view) {
        ?? obj = new Object();
        obj.e = Long.MIN_VALUE;
        obj.g = -1L;
        obj.f = 0L;
        this.f854c = obj;
        this.f = new AccelerateInterpolator();
        float[] fArr = {0.0f, 0.0f};
        this.i = fArr;
        float[] fArr2 = {Float.MAX_VALUE, Float.MAX_VALUE};
        this.j = fArr2;
        float[] fArr3 = {0.0f, 0.0f};
        this.m = fArr3;
        float[] fArr4 = {0.0f, 0.0f};
        this.n = fArr4;
        float[] fArr5 = {Float.MAX_VALUE, Float.MAX_VALUE};
        this.o = fArr5;
        this.g = view;
        float f = Resources.getSystem().getDisplayMetrics().density;
        float f2 = ((int) ((1575.0f * f) + 0.5f)) / 1000.0f;
        fArr5[0] = f2;
        fArr5[1] = f2;
        float f3 = ((int) ((f * 315.0f) + 0.5f)) / 1000.0f;
        fArr4[0] = f3;
        fArr4[1] = f3;
        this.k = 1;
        fArr2[0] = Float.MAX_VALUE;
        fArr2[1] = Float.MAX_VALUE;
        fArr[0] = 0.2f;
        fArr[1] = 0.2f;
        fArr3[0] = 0.001f;
        fArr3[1] = 0.001f;
        this.l = u;
        obj.f855a = 500;
        obj.b = 500;
    }

    public static float c(float f, float f2, float f3) {
        return f > f3 ? f3 : f < f2 ? f2 : f;
    }

    public abstract boolean a(int i);

    /* JADX WARN: Removed duplicated region for block: B:7:0x003b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x003c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final float b(float r4, float r5, float r6, int r7) {
        /*
            r3 = this;
            float[] r0 = r3.i
            r0 = r0[r7]
            float[] r1 = r3.j
            r1 = r1[r7]
            float r0 = r0 * r5
            r2 = 0
            float r0 = c(r0, r2, r1)
            float r1 = r3.d(r4, r0)
            float r5 = r5 - r4
            float r4 = r3.d(r5, r0)
            float r4 = r4 - r1
            int r5 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            android.view.animation.AccelerateInterpolator r0 = r3.f
            if (r5 >= 0) goto L25
            float r4 = -r4
            float r4 = r0.getInterpolation(r4)
            float r4 = -r4
            goto L2d
        L25:
            int r5 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r5 <= 0) goto L36
            float r4 = r0.getInterpolation(r4)
        L2d:
            r5 = -1082130432(0xffffffffbf800000, float:-1.0)
            r0 = 1065353216(0x3f800000, float:1.0)
            float r4 = c(r4, r5, r0)
            goto L37
        L36:
            r4 = r2
        L37:
            int r5 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r5 != 0) goto L3c
            return r2
        L3c:
            float[] r0 = r3.m
            r0 = r0[r7]
            float[] r1 = r3.n
            r1 = r1[r7]
            float[] r2 = r3.o
            r7 = r2[r7]
            float r0 = r0 * r6
            if (r5 <= 0) goto L51
            float r4 = r4 * r0
            float r4 = c(r4, r1, r7)
            return r4
        L51:
            float r4 = -r4
            float r4 = r4 * r0
            float r4 = c(r4, r1, r7)
            float r4 = -r4
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.AutoScrollHelper.b(float, float, float, int):float");
    }

    public final float d(float f, float f2) {
        if (f2 != 0.0f) {
            int i = this.k;
            if (i != 0 && i != 1) {
                if (i == 2 && f < 0.0f) {
                    return f / (-f2);
                }
            } else if (f < f2) {
                if (f >= 0.0f) {
                    return 1.0f - (f / f2);
                }
                if (this.s && i == 1) {
                    return 1.0f;
                }
            }
        }
        return 0.0f;
    }

    public final void e() {
        int i = 0;
        if (this.q) {
            this.s = false;
            return;
        }
        long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        ClampedScroller clampedScroller = this.f854c;
        int i2 = (int) (currentAnimationTimeMillis - clampedScroller.e);
        int i3 = clampedScroller.b;
        if (i2 > i3) {
            i = i3;
        } else if (i2 >= 0) {
            i = i2;
        }
        clampedScroller.i = i;
        clampedScroller.h = clampedScroller.a(currentAnimationTimeMillis);
        clampedScroller.g = currentAnimationTimeMillis;
    }

    public abstract void f(int i);

    public final boolean g() {
        ClampedScroller clampedScroller = this.f854c;
        float f = clampedScroller.d;
        int abs = (int) (f / Math.abs(f));
        Math.abs(clampedScroller.f856c);
        if (abs != 0 && a(abs)) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0014, code lost:
    
        if (r0 != 3) goto L30;
     */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouch(android.view.View r8, android.view.MotionEvent r9) {
        /*
            r7 = this;
            boolean r0 = r7.t
            r1 = 0
            if (r0 != 0) goto L7
            goto L7e
        L7:
            int r0 = r9.getActionMasked()
            r2 = 1
            if (r0 == 0) goto L1b
            if (r0 == r2) goto L17
            r3 = 2
            if (r0 == r3) goto L1f
            r8 = 3
            if (r0 == r8) goto L17
            goto L7e
        L17:
            r7.e()
            return r1
        L1b:
            r7.r = r2
            r7.p = r1
        L1f:
            float r0 = r9.getX()
            int r3 = r8.getWidth()
            float r3 = (float) r3
            android.view.View r4 = r7.g
            int r5 = r4.getWidth()
            float r5 = (float) r5
            float r0 = r7.b(r0, r3, r5, r1)
            float r9 = r9.getY()
            int r8 = r8.getHeight()
            float r8 = (float) r8
            int r3 = r4.getHeight()
            float r3 = (float) r3
            float r8 = r7.b(r9, r8, r3, r2)
            androidx.core.widget.AutoScrollHelper$ClampedScroller r9 = r7.f854c
            r9.f856c = r0
            r9.d = r8
            boolean r8 = r7.s
            if (r8 != 0) goto L7e
            boolean r8 = r7.g()
            if (r8 == 0) goto L7e
            java.lang.Runnable r8 = r7.h
            if (r8 != 0) goto L60
            androidx.core.widget.AutoScrollHelper$ScrollAnimationRunnable r8 = new androidx.core.widget.AutoScrollHelper$ScrollAnimationRunnable
            r8.<init>()
            r7.h = r8
        L60:
            r7.s = r2
            r7.q = r2
            boolean r8 = r7.p
            if (r8 != 0) goto L75
            int r8 = r7.l
            if (r8 <= 0) goto L75
            java.lang.Runnable r9 = r7.h
            long r5 = (long) r8
            java.util.WeakHashMap r8 = androidx.core.view.ViewCompat.f792a
            r4.postOnAnimationDelayed(r9, r5)
            goto L7c
        L75:
            java.lang.Runnable r8 = r7.h
            androidx.core.widget.AutoScrollHelper$ScrollAnimationRunnable r8 = (androidx.core.widget.AutoScrollHelper.ScrollAnimationRunnable) r8
            r8.run()
        L7c:
            r7.p = r2
        L7e:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.AutoScrollHelper.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }
}
