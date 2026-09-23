package com.mycompany.app.view;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.View;
import android.widget.ImageView;
import com.mycompany.app.dialog.a;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;

/* loaded from: classes3.dex */
public class MyButtonImage extends ImageView {
    public float A;
    public float B;
    public boolean C;
    public float D;
    public float E;
    public boolean F;
    public View.OnClickListener G;
    public View.OnLongClickListener H;
    public ValueAnimator I;
    public ValueAnimator J;
    public boolean K;
    public boolean L;
    public MyProgressDrawable M;
    public float N;
    public float O;
    public boolean P;
    public final Runnable Q;
    public float R;
    public boolean S;
    public final Runnable T;
    public float U;
    public boolean V;
    public final Runnable W;
    public boolean a0;
    public float b0;

    /* renamed from: c, reason: collision with root package name */
    public boolean f18559c;
    public boolean c0;
    public final Runnable d0;
    public boolean f;
    public boolean g;
    public boolean h;
    public float i;
    public int j;
    public int k;
    public Paint l;
    public boolean m;
    public float n;
    public float o;
    public int p;
    public int q;
    public Paint r;
    public ValueAnimator s;
    public ValueAnimator t;
    public float u;
    public int v;
    public int w;
    public Paint x;
    public int y;
    public Paint z;

    /* renamed from: com.mycompany.app.view.MyButtonImage$17, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass17 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    public MyButtonImage(Context context) {
        super(context);
        this.Q = new Runnable() { // from class: com.mycompany.app.view.MyButtonImage.3
            @Override // java.lang.Runnable
            public final void run() {
                MyButtonImage myButtonImage = MyButtonImage.this;
                myButtonImage.P = false;
                if (myButtonImage.s != null) {
                    myButtonImage.setValPreScaleUp(myButtonImage.O);
                }
            }
        };
        this.T = new Runnable() { // from class: com.mycompany.app.view.MyButtonImage.7
            @Override // java.lang.Runnable
            public final void run() {
                MyButtonImage myButtonImage = MyButtonImage.this;
                myButtonImage.S = false;
                if (myButtonImage.t != null) {
                    myButtonImage.setValPreScaleDn(myButtonImage.R);
                }
            }
        };
        this.W = new Runnable() { // from class: com.mycompany.app.view.MyButtonImage.11
            @Override // java.lang.Runnable
            public final void run() {
                MyButtonImage myButtonImage = MyButtonImage.this;
                myButtonImage.V = false;
                if (myButtonImage.I != null) {
                    myButtonImage.setValAnimShow(myButtonImage.U);
                }
            }
        };
        this.d0 = new Runnable() { // from class: com.mycompany.app.view.MyButtonImage.15
            @Override // java.lang.Runnable
            public final void run() {
                MyButtonImage myButtonImage = MyButtonImage.this;
                myButtonImage.c0 = false;
                if (myButtonImage.J != null) {
                    myButtonImage.setValAnimHide(myButtonImage.b0);
                }
            }
        };
        this.f18559c = true;
        this.N = 1.0f;
        int i = MainApp.X0;
        int i2 = this.j;
        if (i2 != 0) {
            if (MainApp.K1 && i2 == -1) {
                this.j = -16777216;
            }
            Paint paint = new Paint();
            this.l = paint;
            paint.setAntiAlias(true);
            this.l.setStyle(Paint.Style.FILL);
            this.l.setColor(this.j);
            this.k = this.l.getAlpha();
        }
        int i3 = this.p;
        if (i3 != 0) {
            if (MainApp.K1 && (i3 == -2039584 || i3 == 553648128)) {
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

    /* JADX INFO: Access modifiers changed from: private */
    public void setOnlyVisibility(int i) {
        super.setVisibility(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValAnimHide(float f) {
        setAlpha(f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValAnimShow(float f) {
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

    public final void f(boolean z) {
        if (this.J == null) {
            ValueAnimator valueAnimator = this.I;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.I = null;
            }
            if (getVisibility() != 0) {
                return;
            }
            float alpha = getAlpha();
            this.a0 = z;
            this.b0 = alpha;
            this.c0 = false;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(alpha, 0.0f);
            this.J = ofFloat;
            ofFloat.setDuration(alpha * 400.0f);
            this.J.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.view.MyButtonImage.13
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    MyButtonImage myButtonImage = MyButtonImage.this;
                    if (myButtonImage.J != null) {
                        float floatValue = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                        if (myButtonImage.J != null) {
                            myButtonImage.b0 = floatValue;
                            if (myButtonImage.c0) {
                                return;
                            }
                            myButtonImage.c0 = true;
                            MainApp.N(myButtonImage.getContext(), myButtonImage.d0);
                        }
                    }
                }
            });
            this.J.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.view.MyButtonImage.14
                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationCancel(Animator animator) {
                    MyButtonImage myButtonImage = MyButtonImage.this;
                    if (myButtonImage.J == null) {
                        return;
                    }
                    myButtonImage.J = null;
                    myButtonImage.invalidate();
                }

                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    final MyButtonImage myButtonImage = MyButtonImage.this;
                    if (myButtonImage.J == null) {
                        return;
                    }
                    MainApp.N(myButtonImage.getContext(), new Runnable() { // from class: com.mycompany.app.view.MyButtonImage.16
                        @Override // java.lang.Runnable
                        public final void run() {
                            int i;
                            MyButtonImage myButtonImage2 = MyButtonImage.this;
                            if (myButtonImage2.J == null) {
                                return;
                            }
                            myButtonImage2.J = null;
                            if (myButtonImage2.a0) {
                                i = 4;
                            } else {
                                i = 8;
                            }
                            myButtonImage2.setOnlyVisibility(i);
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
            this.J.start();
        }
    }

    public final void g() {
        float f;
        float f2;
        if (this.I == null) {
            ValueAnimator valueAnimator = this.J;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.J = null;
            } else if (getVisibility() == 0) {
                return;
            }
            if (getVisibility() == 0) {
                f = getAlpha();
            } else {
                f = 0.0f;
            }
            if (isEnabled()) {
                f2 = this.N;
            } else {
                f2 = 0.4f;
            }
            if (f >= f2) {
                return;
            }
            this.U = f;
            this.V = false;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(f, f2);
            this.I = ofFloat;
            ofFloat.setDuration((this.N - f) * 400.0f);
            this.I.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.view.MyButtonImage.9
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    MyButtonImage myButtonImage = MyButtonImage.this;
                    if (myButtonImage.I != null) {
                        float floatValue = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                        if (myButtonImage.I != null) {
                            myButtonImage.U = floatValue;
                            if (myButtonImage.V) {
                                return;
                            }
                            myButtonImage.V = true;
                            MainApp.N(myButtonImage.getContext(), myButtonImage.W);
                        }
                    }
                }
            });
            this.I.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.view.MyButtonImage.10
                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationCancel(Animator animator) {
                    MyButtonImage myButtonImage = MyButtonImage.this;
                    if (myButtonImage.I == null) {
                        return;
                    }
                    myButtonImage.I = null;
                    myButtonImage.invalidate();
                }

                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    final MyButtonImage myButtonImage = MyButtonImage.this;
                    if (myButtonImage.I == null) {
                        return;
                    }
                    MainApp.N(myButtonImage.getContext(), new Runnable() { // from class: com.mycompany.app.view.MyButtonImage.12
                        @Override // java.lang.Runnable
                        public final void run() {
                            float f3;
                            MyButtonImage myButtonImage2 = MyButtonImage.this;
                            if (myButtonImage2.I == null) {
                                return;
                            }
                            myButtonImage2.I = null;
                            if (myButtonImage2.isEnabled()) {
                                f3 = myButtonImage2.N;
                            } else {
                                f3 = 0.4f;
                            }
                            myButtonImage2.setValAnimShow(f3);
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
            this.I.start();
        }
    }

    public final void h() {
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
        ValueAnimator valueAnimator3 = this.I;
        if (valueAnimator3 != null) {
            valueAnimator3.cancel();
            this.I = null;
        }
        ValueAnimator valueAnimator4 = this.J;
        if (valueAnimator4 != null) {
            valueAnimator4.cancel();
            this.J = null;
        }
        MyProgressDrawable myProgressDrawable = this.M;
        if (myProgressDrawable != null) {
            myProgressDrawable.b();
            this.M = null;
        }
        this.L = false;
    }

    public final boolean i() {
        boolean z = true;
        boolean z2 = false;
        if (this.F) {
            this.F = false;
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
        return z;
    }

    @Override // android.view.View
    public final void invalidate() {
        if (!this.f18559c) {
            return;
        }
        super.invalidate();
    }

    @Override // android.view.View
    public final boolean isPressed() {
        if (!this.F && !super.isPressed()) {
            return false;
        }
        return true;
    }

    public final void j() {
        this.f18559c = false;
        h();
        this.l = null;
        this.r = null;
        this.x = null;
        this.z = null;
        this.G = null;
        this.H = null;
    }

    public final void k(int i, int i2) {
        boolean z;
        boolean z2 = true;
        if (this.j != i) {
            this.j = i;
            if (i != 0) {
                if (this.l == null) {
                    this.l = new Paint();
                }
                this.l.setAntiAlias(true);
                this.l.setStyle(Paint.Style.FILL);
                this.l.setColor(this.j);
                this.k = this.l.getAlpha();
            } else {
                this.l = null;
            }
            z = true;
        } else {
            z = false;
        }
        if (this.p != i2) {
            this.p = i2;
            if (i2 != 0) {
                if (this.r == null) {
                    this.r = new Paint();
                }
                this.r.setAntiAlias(true);
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

    public final void l(float f, boolean z) {
        this.i = f;
        this.g = true;
        this.h = z;
    }

    public final void m(int i, int i2) {
        if (this.w == i && this.v == i2) {
            return;
        }
        this.w = i;
        this.v = i2;
        if (i != 0 && i2 != 0) {
            if (this.x == null) {
                this.x = new Paint();
            }
            this.x.setAntiAlias(true);
            this.x.setStyle(Paint.Style.STROKE);
            this.x.setStrokeWidth(this.v);
            this.x.setColor(this.w);
        } else {
            this.x = null;
        }
        invalidate();
    }

    public final void n(float f, float f2) {
        this.i = f;
        this.g = true;
        this.n = f2;
        this.m = true;
        this.o = f2;
    }

    public final void o(int i, boolean z) {
        if (this.L == z) {
            return;
        }
        this.L = z;
        if (z) {
            if (this.M == null) {
                this.M = new MyProgressDrawable(this, MainUtil.G(getContext(), 2.0f), i);
                int width = getWidth();
                int i2 = MainApp.k1;
                int i3 = (width - i2) / 2;
                int height = getHeight();
                int i4 = MainApp.k1;
                int i5 = (height - i4) / 2;
                this.M.d(i3, i5, i2 + i3, i4 + i5);
            }
            this.M.f();
        } else {
            MyProgressDrawable myProgressDrawable = this.M;
            if (myProgressDrawable != null) {
                myProgressDrawable.f = false;
            }
        }
        invalidate();
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onDetachedFromWindow() {
        h();
        super.onDetachedFromWindow();
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onDraw(Canvas canvas) {
        boolean z;
        float f;
        Paint paint;
        if (this.f18559c) {
            boolean z2 = true;
            if (!this.F && this.s == null && this.t == null) {
                z = false;
            } else {
                z = true;
            }
            Paint paint2 = this.l;
            if (paint2 != null) {
                if (z && !this.h) {
                    int round = Math.round((1.0f - this.u) * this.k * 5.0f);
                    int i = this.k;
                    if (round > i) {
                        round = i;
                    }
                    this.l.setAlpha(round);
                    canvas.drawCircle(this.D, this.E, this.i, this.l);
                } else {
                    paint2.setAlpha(this.k);
                    canvas.drawCircle(this.D, this.E, this.i, this.l);
                }
            }
            if (z && (paint = this.r) != null) {
                paint.setAlpha(Math.round((this.u - 0.8f) * this.q * 5.0f));
                canvas.save();
                float f2 = this.u;
                canvas.scale(f2, f2, this.D, this.E);
                canvas.drawCircle(this.D, this.E, this.n, this.r);
            } else {
                z2 = false;
            }
            Paint paint3 = this.x;
            if (paint3 != null) {
                float f3 = this.v / 2.0f;
                float f4 = this.D;
                float f5 = this.E;
                if (z2) {
                    f = this.n;
                } else {
                    f = this.i;
                }
                canvas.drawCircle(f4, f5, f - f3, paint3);
                if (z2) {
                    canvas.restore();
                }
            } else if (z2) {
                canvas.restore();
            }
            if (this.L) {
                MyProgressDrawable myProgressDrawable = this.M;
                if (myProgressDrawable != null) {
                    myProgressDrawable.a(canvas);
                    return;
                }
                return;
            }
            try {
                super.onDraw(canvas);
            } catch (Exception unused) {
            }
            Paint paint4 = this.z;
            if (paint4 != null) {
                if (this.C) {
                    float f6 = this.D;
                    float f7 = this.B;
                    canvas.drawCircle(f6 + f7, this.E - f7, this.A, paint4);
                } else {
                    float f8 = this.D;
                    float f9 = this.B;
                    canvas.drawCircle(f8 - f9, this.E - f9, this.A, paint4);
                }
            }
        }
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        float f = i / 2.0f;
        this.D = f;
        this.E = i2 / 2.0f;
        if (!this.g) {
            this.i = f - 0.0f;
        }
        if (!this.m) {
            this.n = f;
        } else {
            this.n = Math.min(this.o, f);
        }
        MyProgressDrawable myProgressDrawable = this.M;
        if (myProgressDrawable != null) {
            int i5 = MainApp.k1;
            int i6 = (i - i5) / 2;
            int i7 = (i2 - i5) / 2;
            myProgressDrawable.d(i6, i7, i6 + i5, i5 + i7);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0028, code lost:
    
        if (r0 != 3) goto L47;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouchEvent(android.view.MotionEvent r5) {
        /*
            r4 = this;
            android.view.View$OnClickListener r0 = r4.G
            r1 = 0
            if (r0 == 0) goto Lc2
            boolean r0 = r4.isEnabled()
            if (r0 == 0) goto Lc2
            boolean r0 = r4.isClickable()
            if (r0 == 0) goto Lc2
            boolean r0 = r4.K
            if (r0 != 0) goto Lc2
            android.graphics.Paint r0 = r4.r
            if (r0 != 0) goto L1b
            goto Lc2
        L1b:
            int r0 = r5.getActionMasked()
            r2 = 2
            r3 = 1
            if (r0 == 0) goto L67
            if (r0 == r3) goto L49
            if (r0 == r2) goto L2c
            r2 = 3
            if (r0 == r2) goto L59
            goto Lbd
        L2c:
            boolean r0 = r4.F
            if (r0 == 0) goto Lbd
            float r0 = r5.getRawX()
            int r0 = (int) r0
            float r2 = r5.getRawY()
            int r2 = (int) r2
            int r3 = com.mycompany.app.main.MainApp.C1
            boolean r0 = com.mycompany.app.main.MainUtil.J5(r0, r2, r3, r4)
            if (r0 != 0) goto Lbd
            r4.F = r1
            r4.q()
            goto Lbd
        L49:
            boolean r0 = r4.F
            if (r0 == 0) goto L59
            android.view.View$OnClickListener r0 = r4.G
            if (r0 == 0) goto L59
            com.mycompany.app.view.MyButtonImage$19 r0 = new com.mycompany.app.view.MyButtonImage$19
            r0.<init>()
            r4.post(r0)
        L59:
            boolean r0 = r4.F
            if (r0 == 0) goto L63
            r4.F = r1
            r4.q()
            goto Lbd
        L63:
            r4.invalidate()
            goto Lbd
        L67:
            r4.F = r3
            android.graphics.Paint r0 = r4.r
            if (r0 != 0) goto L6e
            goto Lbd
        L6e:
            android.animation.ValueAnimator r0 = r4.s
            if (r0 == 0) goto L73
            goto Lbd
        L73:
            boolean r0 = r4.f
            if (r0 == 0) goto L7f
            r0 = 1065353216(0x3f800000, float:1.0)
            r4.u = r0
            r4.invalidate()
            goto Lbd
        L7f:
            r0 = 1061997773(0x3f4ccccd, float:0.8)
            r4.u = r0
            r4.O = r0
            r4.P = r1
            float[] r0 = new float[r2]
            r0 = {x00ca: FILL_ARRAY_DATA , data: [1061997773, 1065353216} // fill-array
            android.animation.ValueAnimator r0 = android.animation.ValueAnimator.ofFloat(r0)
            r4.s = r0
            r1 = 200(0xc8, double:9.9E-322)
            r0.setDuration(r1)
            android.animation.ValueAnimator r0 = r4.s
            com.mycompany.app.dialog.a.v(r0)
            android.animation.ValueAnimator r0 = r4.s
            com.mycompany.app.view.MyButtonImage$1 r1 = new com.mycompany.app.view.MyButtonImage$1
            r1.<init>()
            r0.addUpdateListener(r1)
            android.animation.ValueAnimator r0 = r4.s
            com.mycompany.app.view.MyButtonImage$2 r1 = new com.mycompany.app.view.MyButtonImage$2
            r1.<init>()
            r0.addListener(r1)
            android.animation.ValueAnimator r0 = r4.t
            if (r0 == 0) goto Lb8
            r0.cancel()
        Lb8:
            android.animation.ValueAnimator r0 = r4.s
            r0.start()
        Lbd:
            boolean r5 = super.onTouchEvent(r5)
            return r5
        Lc2:
            r4.F = r1
            boolean r5 = super.onTouchEvent(r5)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.view.MyButtonImage.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public final void p() {
        if (this.F) {
            i();
        }
    }

    public final void q() {
        if (this.r != null && this.t == null) {
            float f = this.u;
            if (f <= 0.8f) {
                return;
            }
            if (this.f) {
                this.u = 0.8f;
                invalidate();
                return;
            }
            this.R = f;
            this.S = false;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(f, 0.8f);
            this.t = ofFloat;
            ofFloat.setDuration(200L);
            a.r(this.t);
            this.t.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.view.MyButtonImage.5
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    MyButtonImage myButtonImage = MyButtonImage.this;
                    if (myButtonImage.r != null) {
                        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        if (myButtonImage.t != null) {
                            myButtonImage.R = floatValue;
                            if (myButtonImage.S) {
                                return;
                            }
                            myButtonImage.S = true;
                            MainApp.N(myButtonImage.getContext(), myButtonImage.T);
                        }
                    }
                }
            });
            this.t.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.view.MyButtonImage.6
                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationCancel(Animator animator) {
                    MyButtonImage myButtonImage = MyButtonImage.this;
                    if (myButtonImage.t == null) {
                        return;
                    }
                    myButtonImage.t = null;
                    myButtonImage.invalidate();
                }

                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    final MyButtonImage myButtonImage = MyButtonImage.this;
                    if (myButtonImage.t == null) {
                        return;
                    }
                    MainApp.N(myButtonImage.getContext(), new Runnable() { // from class: com.mycompany.app.view.MyButtonImage.8
                        @Override // java.lang.Runnable
                        public final void run() {
                            MyButtonImage myButtonImage2 = MyButtonImage.this;
                            if (myButtonImage2.t == null) {
                                return;
                            }
                            myButtonImage2.t = null;
                            myButtonImage2.setValPreScaleDn(0.8f);
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

    public final void r(boolean z, boolean z2) {
        if (z) {
            if (z2) {
                g();
                return;
            } else {
                setVisibility(0);
                return;
            }
        }
        if (z2) {
            f(false);
        } else {
            setVisibility(8);
        }
    }

    @Override // android.view.View
    public void setAlpha(float f) {
        float f2 = this.N;
        if (f > f2) {
            super.setAlpha(f2);
        } else {
            super.setAlpha(f);
        }
    }

    public void setBgNorColor(int i) {
        if (this.j != i) {
            this.j = i;
            if (i != 0) {
                if (this.l == null) {
                    this.l = new Paint();
                }
                this.l.setAntiAlias(true);
                this.l.setStyle(Paint.Style.FILL);
                this.l.setColor(this.j);
                this.k = this.l.getAlpha();
            } else {
                this.l = null;
            }
            invalidate();
        }
    }

    public void setBgNorRadius(float f) {
        this.i = f;
        this.g = true;
    }

    public void setBgPreColor(int i) {
        if (this.p != i) {
            this.p = i;
            if (i != 0) {
                if (this.r == null) {
                    this.r = new Paint();
                }
                this.r.setAntiAlias(true);
                this.r.setStyle(Paint.Style.FILL);
                this.r.setColor(this.p);
                this.q = this.r.getAlpha();
            } else {
                this.r = null;
            }
            invalidate();
        }
    }

    public void setBgPreRadius(float f) {
        this.n = f;
        this.m = true;
        this.o = f;
    }

    @Override // android.view.View
    public void setClickable(boolean z) {
        super.setClickable(z);
        if (!z) {
            i();
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        float f;
        super.setEnabled(z);
        if (z) {
            f = this.N;
        } else {
            f = 0.4f;
        }
        setAlpha(f);
        if (!z) {
            i();
        }
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i) {
        if (this.y != i) {
            this.y = i;
            super.setImageResource(i);
        }
    }

    public void setLoad(boolean z) {
        o(-1, z);
    }

    public void setMaxAlpha(float f) {
        if (Float.compare(this.N, f) == 0) {
            return;
        }
        this.N = f;
        setAlpha(f);
    }

    public void setNoAnim(boolean z) {
        this.f = z;
    }

    public void setNoClickable(boolean z) {
        if (this.K != z) {
            this.K = z;
            if (z) {
                i();
            }
        }
    }

    public void setNoti(boolean z) {
        if (z) {
            if (this.z == null) {
                Paint paint = new Paint();
                this.z = paint;
                paint.setAntiAlias(true);
                this.z.setStyle(Paint.Style.FILL);
                this.z.setColor(-65536);
                Context context = getContext();
                this.C = MainUtil.O5(context);
                this.A = MainUtil.G(context, 3.0f);
                this.B = MainUtil.G(context, 9.0f);
                invalidate();
                return;
            }
            return;
        }
        if (this.z != null) {
            this.z = null;
            invalidate();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [android.view.View$OnClickListener, java.lang.Object] */
    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.G = onClickListener;
        super.setOnClickListener(new Object());
    }

    @Override // android.view.View
    public void setOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.H = onLongClickListener;
        super.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.mycompany.app.view.MyButtonImage.18
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                View.OnLongClickListener onLongClickListener2;
                MyButtonImage myButtonImage = MyButtonImage.this;
                if (!myButtonImage.F || (onLongClickListener2 = myButtonImage.H) == null) {
                    return false;
                }
                onLongClickListener2.onLongClick(myButtonImage);
                myButtonImage.F = false;
                myButtonImage.q();
                return true;
            }
        });
    }

    @Override // android.widget.ImageView, android.view.View
    public void setVisibility(int i) {
        float f;
        if (this.L) {
            this.L = false;
            MyProgressDrawable myProgressDrawable = this.M;
            if (myProgressDrawable != null) {
                myProgressDrawable.f = false;
            }
        }
        ValueAnimator valueAnimator = this.I;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.I = null;
        }
        ValueAnimator valueAnimator2 = this.J;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
            this.J = null;
        }
        if (isEnabled()) {
            f = this.N;
        } else {
            f = 0.4f;
        }
        setAlpha(f);
        super.setVisibility(i);
        if (i != 0) {
            i();
        }
    }
}
