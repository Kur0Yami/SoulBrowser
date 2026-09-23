package com.google.android.material.timepicker;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.Pair;
import android.view.View;
import java.util.ArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class ClockHandView extends View {
    public static final /* synthetic */ int z = 0;

    /* renamed from: c, reason: collision with root package name */
    public final int f11994c;
    public final TimeInterpolator f;
    public final ValueAnimator g;
    public boolean h;
    public float i;
    public float j;
    public boolean k;
    public final int l;
    public boolean m;
    public final ArrayList n;
    public final int o;
    public final float p;
    public final Paint q;
    public final RectF r;
    public final int s;
    public float t;
    public boolean u;
    public OnActionUpListener v;
    public double w;
    public int x;
    public int y;

    /* renamed from: com.google.android.material.timepicker.ClockHandView$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 extends AnimatorListenerAdapter {
        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
            animator.end();
        }
    }

    /* loaded from: classes3.dex */
    public interface OnActionUpListener {
    }

    /* loaded from: classes3.dex */
    public interface OnRotateListener {
        void a(float f, boolean z);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ClockHandView(android.content.Context r7, @androidx.annotation.Nullable android.util.AttributeSet r8) {
        /*
            r6 = this;
            int r0 = com.google.android.material.R.attr.materialClockStyle
            r6.<init>(r7, r8, r0)
            android.animation.ValueAnimator r1 = new android.animation.ValueAnimator
            r1.<init>()
            r6.g = r1
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            r6.n = r2
            android.graphics.Paint r2 = new android.graphics.Paint
            r2.<init>()
            r6.q = r2
            android.graphics.RectF r3 = new android.graphics.RectF
            r3.<init>()
            r6.r = r3
            r3 = 1
            r6.y = r3
            int[] r4 = com.google.android.material.R.styleable.ClockHandView
            int r5 = com.google.android.material.R.style.Widget_MaterialComponents_TimePicker_Clock
            android.content.res.TypedArray r8 = r7.obtainStyledAttributes(r8, r4, r0, r5)
            int r0 = com.google.android.material.R.attr.motionDurationLong2
            r4 = 200(0xc8, float:2.8E-43)
            int r0 = com.google.android.material.motion.MotionUtils.c(r7, r0, r4)
            r6.f11994c = r0
            int r0 = com.google.android.material.R.attr.motionEasingEmphasizedInterpolator
            androidx.interpolator.view.animation.FastOutSlowInInterpolator r4 = com.google.android.material.animation.AnimationUtils.b
            android.animation.TimeInterpolator r0 = com.google.android.material.motion.MotionUtils.d(r7, r0, r4)
            r6.f = r0
            int r0 = com.google.android.material.R.styleable.ClockHandView_materialCircleRadius
            r4 = 0
            int r0 = r8.getDimensionPixelSize(r0, r4)
            r6.x = r0
            int r0 = com.google.android.material.R.styleable.ClockHandView_selectorSize
            int r0 = r8.getDimensionPixelSize(r0, r4)
            r6.o = r0
            android.content.res.Resources r0 = r6.getResources()
            int r5 = com.google.android.material.R.dimen.material_clock_hand_stroke_width
            int r5 = r0.getDimensionPixelSize(r5)
            r6.s = r5
            int r5 = com.google.android.material.R.dimen.material_clock_hand_center_dot_radius
            int r0 = r0.getDimensionPixelSize(r5)
            float r0 = (float) r0
            r6.p = r0
            int r0 = com.google.android.material.R.styleable.ClockHandView_clockHandColor
            int r0 = r8.getColor(r0, r4)
            r2.setAntiAlias(r3)
            r2.setColor(r0)
            r0 = 0
            r6.c(r0, r4)
            android.view.ViewConfiguration r7 = android.view.ViewConfiguration.get(r7)
            int r7 = r7.getScaledTouchSlop()
            r6.l = r7
            r7 = 2
            r6.setImportantForAccessibility(r7)
            r8.recycle()
            com.google.android.material.timepicker.a r7 = new com.google.android.material.timepicker.a
            r7.<init>()
            r1.addUpdateListener(r7)
            com.google.android.material.timepicker.ClockHandView$1 r7 = new com.google.android.material.timepicker.ClockHandView$1
            r7.<init>()
            r1.addListener(r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.timepicker.ClockHandView.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    public final int a(float f, float f2) {
        int degrees = (int) Math.toDegrees(Math.atan2(f2 - (getHeight() / 2), f - (getWidth() / 2)));
        int i = degrees + 90;
        if (i < 0) {
            return degrees + 450;
        }
        return i;
    }

    public final int b(int i) {
        if (i == 2) {
            return Math.round(this.x * 0.66f);
        }
        return this.x;
    }

    public final void c(float f, boolean z2) {
        ValueAnimator valueAnimator = this.g;
        valueAnimator.cancel();
        if (!z2) {
            d(f, false);
            return;
        }
        float f2 = this.t;
        if (Math.abs(f2 - f) > 180.0f) {
            if (f2 > 180.0f && f < 180.0f) {
                f += 360.0f;
            }
            if (f2 < 180.0f && f > 180.0f) {
                f2 += 360.0f;
            }
        }
        Pair pair = new Pair(Float.valueOf(f2), Float.valueOf(f));
        valueAnimator.setFloatValues(((Float) pair.first).floatValue(), ((Float) pair.second).floatValue());
        valueAnimator.setDuration(this.f11994c);
        valueAnimator.setInterpolator(this.f);
        valueAnimator.start();
    }

    public final void d(float f, boolean z2) {
        float f2 = f % 360.0f;
        this.t = f2;
        this.w = Math.toRadians(f2 - 90.0f);
        int height = getHeight() / 2;
        int width = getWidth() / 2;
        float b = b(this.y);
        float cos = (((float) Math.cos(this.w)) * b) + width;
        float sin = (b * ((float) Math.sin(this.w))) + height;
        float f3 = this.o;
        this.r.set(cos - f3, sin - f3, cos + f3, sin + f3);
        ArrayList arrayList = this.n;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            ((OnRotateListener) obj).a(f2, z2);
        }
        invalidate();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int height = getHeight() / 2;
        int width = getWidth() / 2;
        float f = width;
        float b = b(this.y);
        float cos = (((float) Math.cos(this.w)) * b) + f;
        float f2 = height;
        float sin = (b * ((float) Math.sin(this.w))) + f2;
        Paint paint = this.q;
        paint.setStrokeWidth(0.0f);
        canvas.drawCircle(cos, sin, this.o, paint);
        double sin2 = Math.sin(this.w);
        paint.setStrokeWidth(this.s);
        canvas.drawLine(f, f2, width + ((int) (Math.cos(this.w) * r2)), height + ((int) (r2 * sin2)), paint);
        canvas.drawCircle(f, f2, this.p, paint);
    }

    @Override // android.view.View
    public final void onLayout(boolean z2, int i, int i2, int i3, int i4) {
        super.onLayout(z2, i, i2, i3, i4);
        if (!this.g.isRunning()) {
            c(this.t, false);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00e4  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouchEvent(android.view.MotionEvent r12) {
        /*
            Method dump skipped, instructions count: 274
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.timepicker.ClockHandView.onTouchEvent(android.view.MotionEvent):boolean");
    }
}
