package com.mycompany.app.view;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.View;
import android.widget.RelativeLayout;
import com.mycompany.app.dialog.a;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;

/* loaded from: classes3.dex */
public class MyButtonRelative extends RelativeLayout {
    public Paint A;
    public float B;
    public float C;
    public boolean D;
    public float E;
    public float F;
    public boolean G;
    public View.OnClickListener H;
    public View.OnLongClickListener I;
    public boolean J;
    public MyDragListener K;
    public int L;
    public int M;
    public int N;
    public float O;
    public boolean P;
    public final Runnable Q;
    public float R;
    public boolean S;
    public final Runnable T;
    public final Runnable U;
    public final Runnable V;

    /* renamed from: c, reason: collision with root package name */
    public boolean f18578c;
    public boolean f;
    public int g;
    public boolean h;
    public float i;
    public RectF j;
    public int k;
    public int l;
    public Paint m;
    public float n;
    public RectF o;
    public int p;
    public int q;
    public Paint r;
    public ValueAnimator s;
    public ValueAnimator t;
    public float u;
    public boolean v;
    public RectF w;
    public int x;
    public int y;
    public Paint z;

    /* renamed from: com.mycompany.app.view.MyButtonRelative$10, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass10 implements Animator.AnimatorListener {
        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
            throw null;
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            throw null;
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator) {
        }
    }

    /* renamed from: com.mycompany.app.view.MyButtonRelative$11, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass11 implements Runnable {
        @Override // java.lang.Runnable
        public final void run() {
        }
    }

    /* renamed from: com.mycompany.app.view.MyButtonRelative$12, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass12 implements Runnable {
        @Override // java.lang.Runnable
        public final void run() {
            throw null;
        }
    }

    /* renamed from: com.mycompany.app.view.MyButtonRelative$13, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass13 implements ValueAnimator.AnimatorUpdateListener {
        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
            throw null;
        }
    }

    /* renamed from: com.mycompany.app.view.MyButtonRelative$14, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass14 implements Animator.AnimatorListener {
        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
            throw null;
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            throw null;
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator) {
        }
    }

    /* renamed from: com.mycompany.app.view.MyButtonRelative$15, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass15 implements Runnable {
        @Override // java.lang.Runnable
        public final void run() {
        }
    }

    /* renamed from: com.mycompany.app.view.MyButtonRelative$16, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass16 implements Runnable {
        @Override // java.lang.Runnable
        public final void run() {
            throw null;
        }
    }

    /* renamed from: com.mycompany.app.view.MyButtonRelative$17, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass17 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* renamed from: com.mycompany.app.view.MyButtonRelative$9, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass9 implements ValueAnimator.AnimatorUpdateListener {
        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public interface MyDragListener {
        void a();

        void b();
    }

    /* JADX WARN: Type inference failed for: r3v3, types: [java.lang.Object, java.lang.Runnable] */
    /* JADX WARN: Type inference failed for: r3v4, types: [java.lang.Object, java.lang.Runnable] */
    public MyButtonRelative(Context context) {
        super(context);
        this.Q = new Runnable() { // from class: com.mycompany.app.view.MyButtonRelative.3
            @Override // java.lang.Runnable
            public final void run() {
                MyButtonRelative myButtonRelative = MyButtonRelative.this;
                myButtonRelative.P = false;
                if (myButtonRelative.s != null) {
                    myButtonRelative.setValPreScaleUp(myButtonRelative.O);
                }
            }
        };
        this.T = new Runnable() { // from class: com.mycompany.app.view.MyButtonRelative.7
            @Override // java.lang.Runnable
            public final void run() {
                MyButtonRelative myButtonRelative = MyButtonRelative.this;
                myButtonRelative.S = false;
                if (myButtonRelative.t != null) {
                    myButtonRelative.setValPreScaleDn(myButtonRelative.R);
                }
            }
        };
        this.U = new Object();
        this.V = new Object();
        this.f18578c = true;
        this.g = MainApp.v1;
        if (this.f) {
            this.j = new RectF();
            this.o = new RectF();
        }
        if (this.k != 0) {
            Paint paint = new Paint();
            this.m = paint;
            paint.setAntiAlias(true);
            this.m.setStyle(Paint.Style.FILL);
            this.m.setColor(this.k);
            this.l = this.m.getAlpha();
        }
        int i = this.p;
        if (i != 0) {
            if (MainApp.K1 && (i == -2039584 || i == 553648128)) {
                this.p = -12632257;
            }
            Paint paint2 = new Paint();
            this.r = paint2;
            paint2.setAntiAlias(true);
            this.r.setStyle(Paint.Style.FILL);
            this.r.setColor(this.p);
            this.q = this.r.getAlpha();
        }
    }

    private void setOnlyVisibility(int i) {
        super.setVisibility(i);
    }

    private void setValAnimHide(float f) {
        setAlpha(f);
    }

    private void setValAnimShow(float f) {
        setAlpha(f);
        if (getVisibility() != 0) {
            setOnlyVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValPreScaleDn(float f) {
        if (this.r == null) {
            return;
        }
        this.u = f;
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValPreScaleUp(float f) {
        if (this.r == null) {
            return;
        }
        this.u = f;
        invalidate();
    }

    public final void c() {
        ValueAnimator valueAnimator = this.s;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.s = null;
        }
        ValueAnimator valueAnimator2 = this.t;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
            this.t = null;
        }
    }

    public final void d() {
        boolean z = true;
        boolean z2 = false;
        if (this.G) {
            this.G = false;
            z2 = true;
        }
        ValueAnimator valueAnimator = this.s;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.s = null;
            z2 = true;
        }
        ValueAnimator valueAnimator2 = this.t;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
            this.t = null;
        } else {
            z = z2;
        }
        if (z) {
            invalidate();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        boolean z;
        float f;
        Paint paint;
        if (this.f18578c) {
            boolean z2 = true;
            if (!this.G && this.s == null && this.t == null) {
                z = false;
            } else {
                z = true;
            }
            Paint paint2 = this.m;
            if (paint2 != null) {
                if (z && !this.h) {
                    int round = Math.round((1.0f - this.u) * this.l * 5.0f);
                    int i = this.l;
                    if (round > i) {
                        round = i;
                    }
                    this.m.setAlpha(round);
                    RectF rectF = this.j;
                    if (rectF != null) {
                        float f2 = this.g;
                        canvas.drawRoundRect(rectF, f2, f2, this.m);
                    } else {
                        canvas.drawCircle(this.E, this.F, this.i, this.m);
                    }
                } else {
                    paint2.setAlpha(this.l);
                    RectF rectF2 = this.j;
                    if (rectF2 != null) {
                        float f3 = this.g;
                        canvas.drawRoundRect(rectF2, f3, f3, this.m);
                    } else {
                        canvas.drawCircle(this.E, this.F, this.i, this.m);
                    }
                }
            }
            if (z && (paint = this.r) != null) {
                paint.setAlpha(Math.round((this.u - 0.8f) * this.q * 5.0f));
                canvas.save();
                float f4 = this.u;
                canvas.scale(f4, f4, this.E, this.F);
                RectF rectF3 = this.o;
                if (rectF3 != null) {
                    float f5 = this.g;
                    canvas.drawRoundRect(rectF3, f5, f5, this.r);
                } else {
                    canvas.drawCircle(this.E, this.F, this.n, this.r);
                }
            } else {
                z2 = false;
            }
            if (this.z != null) {
                if (z2 && this.v) {
                    canvas.restore();
                }
                RectF rectF4 = this.w;
                if (rectF4 != null) {
                    float f6 = this.g;
                    canvas.drawRoundRect(rectF4, f6, f6, this.z);
                } else {
                    float f7 = this.x / 2.0f;
                    float f8 = this.E;
                    float f9 = this.F;
                    if (z2) {
                        f = this.n;
                    } else {
                        f = this.i;
                    }
                    canvas.drawCircle(f8, f9, f - f7, this.z);
                }
                if (z2 && !this.v) {
                    canvas.restore();
                }
            } else if (z2) {
                canvas.restore();
            }
            try {
                super.dispatchDraw(canvas);
            } catch (Exception unused) {
            }
            Paint paint3 = this.A;
            if (paint3 != null) {
                if (this.D) {
                    float f10 = this.E;
                    float f11 = this.C;
                    canvas.drawCircle(f10 + f11, this.F - f11, this.B, paint3);
                } else {
                    float f12 = this.E;
                    float f13 = this.C;
                    canvas.drawCircle(f12 - f13, this.F - f13, this.B, paint3);
                }
            }
        }
    }

    public final void e(int i, boolean z) {
        this.f = true;
        this.g = i;
        this.h = z;
        this.j = new RectF();
        this.o = new RectF();
    }

    public final void f() {
        this.f18578c = false;
        c();
        this.j = null;
        this.o = null;
        this.m = null;
        this.r = null;
        this.w = null;
        this.z = null;
        this.A = null;
        this.H = null;
        this.I = null;
        this.K = null;
    }

    public final void g(int i, int i2) {
        boolean z;
        boolean z2 = true;
        if (this.k != i) {
            this.k = i;
            if (i != 0) {
                Paint paint = new Paint();
                this.m = paint;
                paint.setAntiAlias(true);
                this.m.setStyle(Paint.Style.FILL);
                this.m.setColor(this.k);
                this.l = this.m.getAlpha();
            } else {
                this.m = null;
            }
            z = true;
        } else {
            z = false;
        }
        if (this.p != i2) {
            this.p = i2;
            if (i2 != 0) {
                Paint paint2 = new Paint();
                this.r = paint2;
                paint2.setAntiAlias(true);
                this.r.setStyle(Paint.Style.FILL);
                this.r.setColor(this.p);
                this.q = this.r.getAlpha();
            } else {
                this.r = null;
            }
        } else {
            z2 = z;
        }
        if (z2) {
            invalidate();
        }
    }

    public final void h(int i, int i2) {
        this.v = true;
        if (this.y == i && this.x == i2) {
            return;
        }
        this.y = i;
        this.x = i2;
        if (i != 0 && i2 != 0) {
            if (this.f && this.w == null) {
                this.w = new RectF();
            }
            Paint paint = new Paint();
            this.z = paint;
            paint.setAntiAlias(true);
            this.z.setStyle(Paint.Style.STROKE);
            this.z.setStrokeWidth(this.x);
            this.z.setColor(this.y);
        } else {
            this.w = null;
            this.z = null;
        }
        invalidate();
    }

    public final void i() {
        if (this.r != null && this.t == null) {
            float f = this.u;
            if (f <= 0.8f) {
                return;
            }
            this.R = f;
            this.S = false;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(f, 0.8f);
            this.t = ofFloat;
            ofFloat.setDuration(200L);
            a.r(this.t);
            this.t.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.view.MyButtonRelative.5
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    MyButtonRelative myButtonRelative = MyButtonRelative.this;
                    if (myButtonRelative.r != null) {
                        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        if (myButtonRelative.t != null) {
                            myButtonRelative.R = floatValue;
                            if (myButtonRelative.S) {
                                return;
                            }
                            myButtonRelative.S = true;
                            MainApp.N(myButtonRelative.getContext(), myButtonRelative.T);
                        }
                    }
                }
            });
            this.t.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.view.MyButtonRelative.6
                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationCancel(Animator animator) {
                    MyButtonRelative myButtonRelative = MyButtonRelative.this;
                    if (myButtonRelative.t == null) {
                        return;
                    }
                    myButtonRelative.t = null;
                    myButtonRelative.invalidate();
                }

                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    final MyButtonRelative myButtonRelative = MyButtonRelative.this;
                    if (myButtonRelative.t == null) {
                        return;
                    }
                    MainApp.N(myButtonRelative.getContext(), new Runnable() { // from class: com.mycompany.app.view.MyButtonRelative.8
                        @Override // java.lang.Runnable
                        public final void run() {
                            MyButtonRelative myButtonRelative2 = MyButtonRelative.this;
                            if (myButtonRelative2.t == null) {
                                return;
                            }
                            myButtonRelative2.t = null;
                            myButtonRelative2.setValPreScaleDn(0.8f);
                        }
                    });
                }

                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationRepeat(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationStart(Animator animator) {
                }
            });
            ValueAnimator valueAnimator = this.s;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            this.t.start();
        }
    }

    @Override // android.view.View
    public final void invalidate() {
        if (!this.f18578c) {
            return;
        }
        super.invalidate();
    }

    @Override // android.view.View
    public final boolean isPressed() {
        if (!this.G && !super.isPressed()) {
            return false;
        }
        return true;
    }

    public final void j() {
        if (this.r == null || this.s != null) {
            return;
        }
        this.u = 0.8f;
        this.O = 0.8f;
        this.P = false;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.8f, 1.0f);
        this.s = ofFloat;
        ofFloat.setDuration(200L);
        a.v(this.s);
        this.s.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.view.MyButtonRelative.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                MyButtonRelative myButtonRelative = MyButtonRelative.this;
                if (myButtonRelative.r != null) {
                    float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    if (myButtonRelative.s != null) {
                        myButtonRelative.O = floatValue;
                        if (myButtonRelative.P) {
                            return;
                        }
                        myButtonRelative.P = true;
                        MainApp.N(myButtonRelative.getContext(), myButtonRelative.Q);
                    }
                }
            }
        });
        this.s.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.view.MyButtonRelative.2
            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationCancel(Animator animator) {
                MyButtonRelative myButtonRelative = MyButtonRelative.this;
                if (myButtonRelative.s == null) {
                    return;
                }
                myButtonRelative.s = null;
                myButtonRelative.J = false;
                myButtonRelative.invalidate();
            }

            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                final MyButtonRelative myButtonRelative = MyButtonRelative.this;
                if (myButtonRelative.s == null) {
                    return;
                }
                MainApp.N(myButtonRelative.getContext(), new Runnable() { // from class: com.mycompany.app.view.MyButtonRelative.4
                    @Override // java.lang.Runnable
                    public final void run() {
                        MyButtonRelative myButtonRelative2 = MyButtonRelative.this;
                        if (myButtonRelative2.s != null) {
                            myButtonRelative2.s = null;
                            myButtonRelative2.setValPreScaleUp(1.0f);
                            if (myButtonRelative2.J) {
                                myButtonRelative2.J = false;
                                myButtonRelative2.G = false;
                                myButtonRelative2.i();
                            }
                        }
                    }
                });
            }

            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
            }
        });
        ValueAnimator valueAnimator = this.t;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        this.s.start();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        c();
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        float f = i;
        float f2 = f / 2.0f;
        this.E = f2;
        float f3 = i2;
        this.F = f3 / 2.0f;
        this.i = f2 - 0.0f;
        this.n = f2;
        RectF rectF = this.j;
        if (rectF != null) {
            rectF.set(0.0f, 0.0f, f - 0.0f, f3 - 0.0f);
        }
        RectF rectF2 = this.o;
        if (rectF2 != null) {
            rectF2.set(0.0f, 0.0f, f, f3);
        }
        RectF rectF3 = this.w;
        if (rectF3 != null) {
            float f4 = this.x / 2.0f;
            rectF3.set(f4, f4, f - f4, f3 - f4);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0024, code lost:
    
        if (r0 != 3) goto L56;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouchEvent(android.view.MotionEvent r8) {
        /*
            Method dump skipped, instructions count: 225
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.view.MyButtonRelative.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public void setBgNorColor(int i) {
        if (this.k != i) {
            this.k = i;
            if (i != 0) {
                Paint paint = new Paint();
                this.m = paint;
                paint.setAntiAlias(true);
                this.m.setStyle(Paint.Style.FILL);
                this.m.setColor(this.k);
                this.l = this.m.getAlpha();
            } else {
                this.m = null;
            }
            invalidate();
        }
    }

    public void setBgPreColor(int i) {
        if (this.p != i) {
            this.p = i;
            if (i != 0) {
                Paint paint = new Paint();
                this.r = paint;
                paint.setAntiAlias(true);
                this.r.setStyle(Paint.Style.FILL);
                this.r.setColor(this.p);
                this.q = this.r.getAlpha();
            } else {
                this.r = null;
            }
            invalidate();
        }
    }

    public void setClickSize(int i) {
        this.N = i;
    }

    @Override // android.view.View
    public void setClickable(boolean z) {
        super.setClickable(z);
        if (!z) {
            d();
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        float f;
        super.setEnabled(z);
        if (z) {
            f = 1.0f;
        } else {
            f = 0.4f;
        }
        setAlpha(f);
        if (!z) {
            d();
        }
    }

    public void setMyDragListener(MyDragListener myDragListener) {
        this.K = myDragListener;
    }

    public void setNoti(boolean z) {
        if (z) {
            if (this.A == null) {
                Paint paint = new Paint();
                this.A = paint;
                paint.setAntiAlias(true);
                this.A.setStyle(Paint.Style.FILL);
                this.A.setColor(-65536);
                Context context = getContext();
                this.D = MainUtil.O5(context);
                this.B = MainUtil.G(context, 3.0f);
                this.C = MainUtil.G(context, 13.0f);
                invalidate();
                return;
            }
            return;
        }
        if (this.A != null) {
            this.A = null;
            invalidate();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [android.view.View$OnClickListener, java.lang.Object] */
    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.H = onClickListener;
        super.setOnClickListener(new Object());
    }

    @Override // android.view.View
    public void setOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.I = onLongClickListener;
        super.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.mycompany.app.view.MyButtonRelative.18
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                View.OnLongClickListener onLongClickListener2;
                MyButtonRelative myButtonRelative = MyButtonRelative.this;
                if (!myButtonRelative.G || (onLongClickListener2 = myButtonRelative.I) == null) {
                    return false;
                }
                onLongClickListener2.onLongClick(myButtonRelative);
                myButtonRelative.G = false;
                myButtonRelative.i();
                return true;
            }
        });
    }

    public void setTouched(boolean z) {
        if (this.G == z) {
            return;
        }
        this.G = z;
        if (z) {
            j();
        } else {
            i();
        }
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        float f;
        if (isEnabled()) {
            f = 1.0f;
        } else {
            f = 0.4f;
        }
        setAlpha(f);
        super.setVisibility(i);
        if (i != 0) {
            d();
        }
    }
}
