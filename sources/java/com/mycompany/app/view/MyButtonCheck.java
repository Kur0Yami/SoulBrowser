package com.mycompany.app.view;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.google.api.client.http.HttpStatusCodes;
import com.mycompany.app.dialog.a;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.soulbrowser.R;

/* loaded from: classes3.dex */
public class MyButtonCheck extends View {
    public Drawable A;
    public boolean B;
    public boolean C;
    public boolean D;
    public ValueAnimator E;
    public ValueAnimator F;
    public float G;
    public Paint H;
    public float I;
    public float J;
    public boolean K;
    public float L;
    public float M;
    public boolean N;
    public View.OnClickListener O;
    public View.OnLongClickListener P;
    public ValueAnimator Q;
    public ValueAnimator R;
    public boolean S;
    public float T;
    public boolean U;
    public final Runnable V;
    public float W;
    public boolean a0;
    public final Runnable b0;

    /* renamed from: c, reason: collision with root package name */
    public boolean f18532c;
    public float c0;
    public boolean d0;
    public final Runnable e0;
    public final Context f;
    public float f0;
    public boolean g;
    public boolean g0;
    public float h;
    public final Runnable h0;
    public int i;
    public float i0;
    public int j;
    public boolean j0;
    public Paint k;
    public final Runnable k0;
    public boolean l;
    public float l0;
    public float m;
    public boolean m0;
    public int n;
    public final Runnable n0;
    public int o;
    public Paint p;
    public ValueAnimator q;
    public ValueAnimator r;
    public float s;
    public int t;
    public int u;
    public Paint v;
    public int w;
    public Drawable x;
    public boolean y;
    public int z;

    /* renamed from: com.mycompany.app.view.MyButtonCheck$25, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass25 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    public MyButtonCheck(Context context) {
        super(context);
        this.V = new Runnable() { // from class: com.mycompany.app.view.MyButtonCheck.3
            @Override // java.lang.Runnable
            public final void run() {
                MyButtonCheck myButtonCheck = MyButtonCheck.this;
                myButtonCheck.U = false;
                if (myButtonCheck.q != null) {
                    myButtonCheck.setValPreScaleUp(myButtonCheck.T);
                }
            }
        };
        this.b0 = new Runnable() { // from class: com.mycompany.app.view.MyButtonCheck.7
            @Override // java.lang.Runnable
            public final void run() {
                MyButtonCheck myButtonCheck = MyButtonCheck.this;
                myButtonCheck.a0 = false;
                if (myButtonCheck.r != null) {
                    myButtonCheck.setValPreScaleDn(myButtonCheck.W);
                }
            }
        };
        this.e0 = new Runnable() { // from class: com.mycompany.app.view.MyButtonCheck.11
            @Override // java.lang.Runnable
            public final void run() {
                MyButtonCheck myButtonCheck = MyButtonCheck.this;
                myButtonCheck.d0 = false;
                if (myButtonCheck.E != null) {
                    myButtonCheck.setValCheckScaleUp(myButtonCheck.c0);
                }
            }
        };
        this.h0 = new Runnable() { // from class: com.mycompany.app.view.MyButtonCheck.15
            @Override // java.lang.Runnable
            public final void run() {
                MyButtonCheck myButtonCheck = MyButtonCheck.this;
                myButtonCheck.g0 = false;
                if (myButtonCheck.F != null) {
                    myButtonCheck.setValCheckScaleDn(myButtonCheck.f0);
                }
            }
        };
        this.k0 = new Runnable() { // from class: com.mycompany.app.view.MyButtonCheck.19
            @Override // java.lang.Runnable
            public final void run() {
                MyButtonCheck myButtonCheck = MyButtonCheck.this;
                myButtonCheck.j0 = false;
                if (myButtonCheck.Q != null) {
                    myButtonCheck.setValAnimShow(myButtonCheck.i0);
                }
            }
        };
        this.n0 = new Runnable() { // from class: com.mycompany.app.view.MyButtonCheck.23
            @Override // java.lang.Runnable
            public final void run() {
                MyButtonCheck myButtonCheck = MyButtonCheck.this;
                myButtonCheck.m0 = false;
                if (myButtonCheck.R != null) {
                    myButtonCheck.setValAnimHide(myButtonCheck.l0);
                }
            }
        };
        this.f18532c = true;
        this.f = context;
        int i = MainApp.X0;
        int i2 = this.i;
        if (i2 != 0) {
            if (MainApp.K1 && i2 == -1) {
                this.i = -16777216;
            }
            Paint paint = new Paint();
            this.k = paint;
            paint.setAntiAlias(true);
            this.k.setStyle(Paint.Style.FILL);
            this.k.setColor(this.i);
            this.j = this.k.getAlpha();
        }
        int i3 = this.n;
        if (i3 != 0) {
            if (MainApp.K1 && (i3 == -2039584 || i3 == 553648128)) {
                this.n = -12632257;
            }
            Paint paint2 = new Paint();
            this.p = paint2;
            paint2.setAntiAlias(true);
            this.p.setStyle(Paint.Style.FILL);
            this.p.setColor(this.n);
            this.o = this.p.getAlpha();
        }
        int i4 = this.w;
        if (i4 != 0) {
            if (MainApp.K1) {
                if (i4 == R.drawable.outline_check_black_24) {
                    i4 = R.drawable.outline_check_dark_24;
                } else if (i4 == R.drawable.baseline_check_circle_black_24) {
                    i4 = R.drawable.baseline_check_circle_dark_24;
                } else if (i4 == R.drawable.outline_radio_button_unchecked_black_24) {
                    i4 = R.drawable.outline_radio_button_unchecked_dark_24;
                }
            }
            this.w = i4;
            this.x = MainUtil.S(this.f, i4);
        }
        int i5 = this.z;
        if (i5 != 0) {
            if (MainApp.K1) {
                if (i5 == R.drawable.outline_check_black_24) {
                    i5 = R.drawable.outline_check_dark_24;
                } else if (i5 == R.drawable.baseline_check_circle_black_24) {
                    i5 = R.drawable.baseline_check_circle_dark_24;
                } else if (i5 == R.drawable.outline_radio_button_unchecked_black_24) {
                    i5 = R.drawable.outline_radio_button_unchecked_dark_24;
                }
            }
            this.z = i5;
            this.A = MainUtil.S(this.f, i5);
        }
        this.y = true;
        this.B = true;
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
    public void setValCheckScaleDn(float f) {
        if (this.x == null) {
            return;
        }
        this.G = f;
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValCheckScaleUp(float f) {
        if (this.x == null) {
            return;
        }
        this.G = f;
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValPreScaleDn(float f) {
        if (this.p == null) {
            return;
        }
        this.s = f;
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValPreScaleUp(float f) {
        if (this.p == null) {
            return;
        }
        this.s = f;
        invalidate();
    }

    public int getDuration() {
        return HttpStatusCodes.STATUS_CODE_OK;
    }

    public final void h() {
        if (this.R == null) {
            ValueAnimator valueAnimator = this.Q;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.Q = null;
            }
            if (getVisibility() != 0) {
                return;
            }
            float alpha = getAlpha();
            this.l0 = alpha;
            this.m0 = false;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(alpha, 0.0f);
            this.R = ofFloat;
            ofFloat.setDuration(alpha * 400.0f);
            this.R.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.view.MyButtonCheck.21
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    MyButtonCheck myButtonCheck = MyButtonCheck.this;
                    if (myButtonCheck.R != null) {
                        float floatValue = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                        if (myButtonCheck.R != null) {
                            myButtonCheck.l0 = floatValue;
                            if (myButtonCheck.m0) {
                                return;
                            }
                            myButtonCheck.m0 = true;
                            MainApp.N(myButtonCheck.f, myButtonCheck.n0);
                        }
                    }
                }
            });
            this.R.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.view.MyButtonCheck.22
                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationCancel(Animator animator) {
                    MyButtonCheck myButtonCheck = MyButtonCheck.this;
                    if (myButtonCheck.R == null) {
                        return;
                    }
                    myButtonCheck.R = null;
                    myButtonCheck.invalidate();
                }

                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    final MyButtonCheck myButtonCheck = MyButtonCheck.this;
                    if (myButtonCheck.R == null) {
                        return;
                    }
                    MainApp.N(myButtonCheck.f, new Runnable() { // from class: com.mycompany.app.view.MyButtonCheck.24
                        @Override // java.lang.Runnable
                        public final void run() {
                            MyButtonCheck myButtonCheck2 = MyButtonCheck.this;
                            if (myButtonCheck2.R == null) {
                                return;
                            }
                            myButtonCheck2.R = null;
                            myButtonCheck2.setAlpha(0.0f);
                            myButtonCheck2.setOnlyVisibility(8);
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
            this.R.start();
        }
    }

    public final void i() {
        float f;
        float f2;
        if (this.Q == null) {
            ValueAnimator valueAnimator = this.R;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.R = null;
            } else if (getVisibility() == 0) {
                return;
            }
            if (getVisibility() == 0) {
                f = getAlpha();
            } else {
                f = 0.0f;
            }
            if (isEnabled()) {
                f2 = 1.0f;
            } else {
                f2 = 0.4f;
            }
            if (f >= f2) {
                return;
            }
            this.i0 = f;
            this.j0 = false;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(f, f2);
            this.Q = ofFloat;
            ofFloat.setDuration((1.0f - f) * 400.0f);
            this.Q.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.view.MyButtonCheck.17
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    MyButtonCheck myButtonCheck = MyButtonCheck.this;
                    if (myButtonCheck.Q != null) {
                        float floatValue = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                        if (myButtonCheck.Q != null) {
                            myButtonCheck.i0 = floatValue;
                            if (myButtonCheck.j0) {
                                return;
                            }
                            myButtonCheck.j0 = true;
                            MainApp.N(myButtonCheck.f, myButtonCheck.k0);
                        }
                    }
                }
            });
            this.Q.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.view.MyButtonCheck.18
                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationCancel(Animator animator) {
                    MyButtonCheck myButtonCheck = MyButtonCheck.this;
                    if (myButtonCheck.Q == null) {
                        return;
                    }
                    myButtonCheck.Q = null;
                    myButtonCheck.invalidate();
                }

                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    final MyButtonCheck myButtonCheck = MyButtonCheck.this;
                    if (myButtonCheck.Q == null) {
                        return;
                    }
                    MainApp.N(myButtonCheck.f, new Runnable() { // from class: com.mycompany.app.view.MyButtonCheck.20
                        @Override // java.lang.Runnable
                        public final void run() {
                            float f3;
                            MyButtonCheck myButtonCheck2 = MyButtonCheck.this;
                            if (myButtonCheck2.Q != null) {
                                myButtonCheck2.Q = null;
                                if (myButtonCheck2.isEnabled()) {
                                    f3 = 1.0f;
                                } else {
                                    f3 = 0.4f;
                                }
                                myButtonCheck2.setAlpha(f3);
                                if (myButtonCheck2.getVisibility() != 0) {
                                    myButtonCheck2.setOnlyVisibility(0);
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
            this.Q.start();
        }
    }

    @Override // android.view.View
    public final void invalidate() {
        if (!this.f18532c) {
            return;
        }
        super.invalidate();
    }

    @Override // android.view.View
    public final boolean isPressed() {
        if (!this.N && !super.isPressed()) {
            return false;
        }
        return true;
    }

    public final void j() {
        ValueAnimator valueAnimator = this.q;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.q = null;
        }
        ValueAnimator valueAnimator2 = this.r;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
            this.r = null;
        }
        ValueAnimator valueAnimator3 = this.E;
        if (valueAnimator3 != null) {
            valueAnimator3.cancel();
            this.E = null;
        }
        ValueAnimator valueAnimator4 = this.F;
        if (valueAnimator4 != null) {
            valueAnimator4.cancel();
            this.F = null;
        }
        ValueAnimator valueAnimator5 = this.Q;
        if (valueAnimator5 != null) {
            valueAnimator5.cancel();
            this.Q = null;
        }
        ValueAnimator valueAnimator6 = this.R;
        if (valueAnimator6 != null) {
            valueAnimator6.cancel();
            this.R = null;
        }
    }

    public final void k(Drawable drawable) {
        if (drawable == null) {
            return;
        }
        if (this.C) {
            drawable.setBounds(0, 0, getWidth(), getHeight());
            return;
        }
        int width = getWidth();
        int height = getHeight();
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        int i = (width - intrinsicWidth) / 2;
        int i2 = (height - intrinsicHeight) / 2;
        drawable.setBounds(Math.max(i, getPaddingLeft()), Math.max(i2, getPaddingTop()), Math.min(intrinsicWidth + i, width - getPaddingRight()), Math.min(intrinsicHeight + i2, height - getPaddingBottom()));
    }

    public final void l() {
        this.f18532c = false;
        j();
        this.k = null;
        this.p = null;
        this.v = null;
        this.x = null;
        this.A = null;
        this.H = null;
        this.O = null;
        this.P = null;
    }

    public final void m(int i, int i2) {
        boolean z;
        boolean z2 = true;
        if (this.i != i) {
            this.i = i;
            if (i != 0) {
                Paint paint = new Paint();
                this.k = paint;
                paint.setAntiAlias(true);
                this.k.setStyle(Paint.Style.FILL);
                this.k.setColor(this.i);
                this.j = this.k.getAlpha();
            } else {
                this.k = null;
            }
            z = true;
        } else {
            z = false;
        }
        if (this.n != i2) {
            this.n = i2;
            if (i2 != 0) {
                Paint paint2 = new Paint();
                this.p = paint2;
                paint2.setAntiAlias(true);
                this.p.setStyle(Paint.Style.FILL);
                this.p.setColor(this.n);
                this.o = this.p.getAlpha();
            } else {
                this.p = null;
            }
        } else {
            z2 = z;
        }
        if (z2) {
            invalidate();
        }
    }

    public final void n(int i, int i2) {
        if (this.u == i && this.t == i2) {
            return;
        }
        this.u = i;
        this.t = i2;
        if (i != 0 && i2 != 0) {
            Paint paint = new Paint();
            this.v = paint;
            paint.setAntiAlias(true);
            this.v.setStyle(Paint.Style.STROKE);
            this.v.setStrokeWidth(this.t);
            this.v.setColor(this.u);
        } else {
            this.v = null;
        }
        invalidate();
    }

    public final void o(float f, float f2) {
        this.h = f;
        this.g = true;
        this.m = f2;
        this.l = true;
    }

    @Override // android.view.View
    public final void onDetachedFromWindow() {
        j();
        super.onDetachedFromWindow();
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:57:? A[RETURN, SYNTHETIC] */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onDraw(android.graphics.Canvas r10) {
        /*
            Method dump skipped, instructions count: 280
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.view.MyButtonCheck.onDraw(android.graphics.Canvas):void");
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.y = true;
        this.B = true;
        float f = i / 2.0f;
        this.L = f;
        this.M = i2 / 2.0f;
        if (!this.g) {
            this.h = f - 0.0f;
        }
        if (!this.l) {
            this.m = f;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0024, code lost:
    
        if (r0 != 3) goto L46;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouchEvent(android.view.MotionEvent r7) {
        /*
            r6 = this;
            android.view.View$OnClickListener r0 = r6.O
            r1 = 0
            if (r0 == 0) goto Lc5
            boolean r0 = r6.isEnabled()
            if (r0 == 0) goto Lc5
            boolean r0 = r6.isClickable()
            if (r0 == 0) goto Lc5
            android.graphics.Paint r0 = r6.p
            if (r0 != 0) goto L17
            goto Lc5
        L17:
            int r0 = r7.getActionMasked()
            r2 = 2
            r3 = 1
            if (r0 == 0) goto L5f
            if (r0 == r3) goto L45
            if (r0 == r2) goto L28
            r2 = 3
            if (r0 == r2) goto L55
            goto Lc0
        L28:
            boolean r0 = r6.N
            if (r0 == 0) goto Lc0
            float r0 = r7.getRawX()
            int r0 = (int) r0
            float r2 = r7.getRawY()
            int r2 = (int) r2
            int r3 = com.mycompany.app.main.MainApp.C1
            boolean r0 = com.mycompany.app.main.MainUtil.J5(r0, r2, r3, r6)
            if (r0 != 0) goto Lc0
            r6.N = r1
            r6.s()
            goto Lc0
        L45:
            boolean r0 = r6.N
            if (r0 == 0) goto L55
            android.view.View$OnClickListener r0 = r6.O
            if (r0 == 0) goto L55
            com.mycompany.app.view.MyButtonCheck$27 r0 = new com.mycompany.app.view.MyButtonCheck$27
            r0.<init>()
            r6.post(r0)
        L55:
            boolean r0 = r6.N
            if (r0 == 0) goto Lc0
            r6.N = r1
            r6.s()
            goto Lc0
        L5f:
            boolean r0 = r6.S
            if (r0 == 0) goto L76
            float r0 = r7.getRawX()
            int r0 = (int) r0
            float r4 = r7.getRawY()
            int r4 = (int) r4
            int r5 = com.mycompany.app.main.MainApp.C1
            boolean r0 = com.mycompany.app.main.MainUtil.J5(r0, r4, r5, r6)
            if (r0 != 0) goto L76
            goto Lc0
        L76:
            r6.N = r3
            android.graphics.Paint r0 = r6.p
            if (r0 != 0) goto L7d
            goto Lc0
        L7d:
            android.animation.ValueAnimator r0 = r6.q
            if (r0 == 0) goto L82
            goto Lc0
        L82:
            r0 = 1061997773(0x3f4ccccd, float:0.8)
            r6.s = r0
            r6.T = r0
            r6.U = r1
            float[] r0 = new float[r2]
            r0 = {x00cc: FILL_ARRAY_DATA , data: [1061997773, 1065353216} // fill-array
            android.animation.ValueAnimator r0 = android.animation.ValueAnimator.ofFloat(r0)
            r6.q = r0
            r1 = 200(0xc8, double:9.9E-322)
            r0.setDuration(r1)
            android.animation.ValueAnimator r0 = r6.q
            com.mycompany.app.dialog.a.v(r0)
            android.animation.ValueAnimator r0 = r6.q
            com.mycompany.app.view.MyButtonCheck$1 r1 = new com.mycompany.app.view.MyButtonCheck$1
            r1.<init>()
            r0.addUpdateListener(r1)
            android.animation.ValueAnimator r0 = r6.q
            com.mycompany.app.view.MyButtonCheck$2 r1 = new com.mycompany.app.view.MyButtonCheck$2
            r1.<init>()
            r0.addListener(r1)
            android.animation.ValueAnimator r0 = r6.r
            if (r0 == 0) goto Lbb
            r0.cancel()
        Lbb:
            android.animation.ValueAnimator r0 = r6.q
            r0.start()
        Lc0:
            boolean r7 = super.onTouchEvent(r7)
            return r7
        Lc5:
            r6.N = r1
            boolean r7 = super.onTouchEvent(r7)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.view.MyButtonCheck.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public final void p(int i, int i2) {
        if (i == 0 && this.x != null) {
            this.w = 0;
            this.x = null;
            this.y = true;
        } else if (this.w != i) {
            this.w = i;
            if (i == 0) {
                this.x = null;
            } else {
                this.x = MainUtil.S(this.f, i);
            }
            this.y = true;
        }
        if (i2 == 0 && this.A != null) {
            this.z = 0;
            this.A = null;
            this.B = true;
        } else if (this.z != i2) {
            this.z = i2;
            if (i2 == 0) {
                this.A = null;
            } else {
                this.A = MainUtil.S(this.f, i2);
            }
            this.B = true;
        }
        if (!this.y && !this.B) {
            return;
        }
        invalidate();
    }

    public final void q(boolean z, boolean z2) {
        if (this.D == z) {
            return;
        }
        this.D = z;
        if (z2) {
            if (z) {
                if (this.x != null && this.E == null) {
                    float f = this.G;
                    this.c0 = f;
                    this.d0 = false;
                    ValueAnimator ofFloat = ValueAnimator.ofFloat(f, 1.0f);
                    this.E = ofFloat;
                    ofFloat.setDuration(200L);
                    a.v(this.E);
                    this.E.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.view.MyButtonCheck.9
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                            MyButtonCheck myButtonCheck = MyButtonCheck.this;
                            if (myButtonCheck.x != null) {
                                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                                if (myButtonCheck.E != null) {
                                    myButtonCheck.c0 = floatValue;
                                    if (myButtonCheck.d0) {
                                        return;
                                    }
                                    myButtonCheck.d0 = true;
                                    MainApp.N(myButtonCheck.f, myButtonCheck.e0);
                                }
                            }
                        }
                    });
                    this.E.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.view.MyButtonCheck.10
                        @Override // android.animation.Animator.AnimatorListener
                        public final void onAnimationCancel(Animator animator) {
                            MyButtonCheck myButtonCheck = MyButtonCheck.this;
                            if (myButtonCheck.E == null) {
                                return;
                            }
                            myButtonCheck.E = null;
                            myButtonCheck.invalidate();
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public final void onAnimationEnd(Animator animator) {
                            final MyButtonCheck myButtonCheck = MyButtonCheck.this;
                            if (myButtonCheck.E == null) {
                                return;
                            }
                            MainApp.N(myButtonCheck.f, new Runnable() { // from class: com.mycompany.app.view.MyButtonCheck.12
                                @Override // java.lang.Runnable
                                public final void run() {
                                    MyButtonCheck myButtonCheck2 = MyButtonCheck.this;
                                    if (myButtonCheck2.E == null) {
                                        return;
                                    }
                                    myButtonCheck2.E = null;
                                    myButtonCheck2.setValCheckScaleUp(1.0f);
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
                    ValueAnimator valueAnimator = this.F;
                    if (valueAnimator != null) {
                        valueAnimator.cancel();
                    }
                    this.E.start();
                }
            } else if (this.x != null && this.F == null) {
                float f2 = this.G;
                this.f0 = f2;
                this.g0 = false;
                ValueAnimator ofFloat2 = ValueAnimator.ofFloat(f2, 0.0f);
                this.F = ofFloat2;
                ofFloat2.setDuration(200L);
                a.r(this.F);
                this.F.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.view.MyButtonCheck.13
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        MyButtonCheck myButtonCheck = MyButtonCheck.this;
                        if (myButtonCheck.x != null) {
                            float floatValue = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                            if (myButtonCheck.F != null) {
                                myButtonCheck.f0 = floatValue;
                                if (myButtonCheck.g0) {
                                    return;
                                }
                                myButtonCheck.g0 = true;
                                MainApp.N(myButtonCheck.f, myButtonCheck.h0);
                            }
                        }
                    }
                });
                this.F.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.view.MyButtonCheck.14
                    @Override // android.animation.Animator.AnimatorListener
                    public final void onAnimationCancel(Animator animator) {
                        MyButtonCheck myButtonCheck = MyButtonCheck.this;
                        if (myButtonCheck.F == null) {
                            return;
                        }
                        myButtonCheck.F = null;
                        myButtonCheck.invalidate();
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator) {
                        final MyButtonCheck myButtonCheck = MyButtonCheck.this;
                        if (myButtonCheck.F == null) {
                            return;
                        }
                        MainApp.N(myButtonCheck.f, new Runnable() { // from class: com.mycompany.app.view.MyButtonCheck.16
                            @Override // java.lang.Runnable
                            public final void run() {
                                MyButtonCheck myButtonCheck2 = MyButtonCheck.this;
                                if (myButtonCheck2.F == null) {
                                    return;
                                }
                                myButtonCheck2.F = null;
                                myButtonCheck2.setValCheckScaleDn(0.0f);
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
                ValueAnimator valueAnimator2 = this.E;
                if (valueAnimator2 != null) {
                    valueAnimator2.cancel();
                }
                this.F.start();
            }
        }
        invalidate();
    }

    public final void r(int i, int i2, int i3) {
        boolean z;
        if (this.i != i) {
            this.i = i;
            if (i != 0) {
                Paint paint = new Paint();
                this.k = paint;
                paint.setAntiAlias(true);
                this.k.setStyle(Paint.Style.FILL);
                this.k.setColor(this.i);
                this.j = this.k.getAlpha();
            } else {
                this.k = null;
            }
            z = true;
        } else {
            z = false;
        }
        if (this.n != 0) {
            this.n = 0;
            this.p = null;
            z = true;
        }
        if (i2 == 0 && this.x != null) {
            this.w = 0;
            this.x = null;
            this.y = true;
        } else if (this.w != i2) {
            this.w = i2;
            if (i2 == 0) {
                this.x = null;
            } else {
                this.x = MainUtil.S(this.f, i2);
            }
            this.y = true;
        }
        if (i3 == 0 && this.A != null) {
            this.z = 0;
            this.A = null;
            this.B = true;
        } else if (this.z != i3) {
            this.z = i3;
            if (i3 == 0) {
                this.A = null;
            } else {
                this.A = MainUtil.S(this.f, i3);
            }
            this.B = true;
        }
        if (!z && !this.y && !this.B) {
            return;
        }
        invalidate();
    }

    public final void s() {
        if (this.p != null && this.r == null) {
            float f = this.s;
            if (f <= 0.8f) {
                return;
            }
            this.W = f;
            this.a0 = false;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(f, 0.8f);
            this.r = ofFloat;
            ofFloat.setDuration(200L);
            a.r(this.r);
            this.r.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.view.MyButtonCheck.5
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    MyButtonCheck myButtonCheck = MyButtonCheck.this;
                    if (myButtonCheck.p != null) {
                        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        if (myButtonCheck.r != null) {
                            myButtonCheck.W = floatValue;
                            if (myButtonCheck.a0) {
                                return;
                            }
                            myButtonCheck.a0 = true;
                            MainApp.N(myButtonCheck.f, myButtonCheck.b0);
                        }
                    }
                }
            });
            this.r.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.view.MyButtonCheck.6
                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationCancel(Animator animator) {
                    MyButtonCheck myButtonCheck = MyButtonCheck.this;
                    if (myButtonCheck.r == null) {
                        return;
                    }
                    myButtonCheck.r = null;
                    myButtonCheck.invalidate();
                }

                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    final MyButtonCheck myButtonCheck = MyButtonCheck.this;
                    if (myButtonCheck.r == null) {
                        return;
                    }
                    MainApp.N(myButtonCheck.f, new Runnable() { // from class: com.mycompany.app.view.MyButtonCheck.8
                        @Override // java.lang.Runnable
                        public final void run() {
                            MyButtonCheck myButtonCheck2 = MyButtonCheck.this;
                            if (myButtonCheck2.r == null) {
                                return;
                            }
                            myButtonCheck2.r = null;
                            myButtonCheck2.setValPreScaleDn(0.8f);
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
            ValueAnimator valueAnimator = this.q;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            this.r.start();
        }
    }

    public void setBgNorColor(int i) {
        if (this.i != i) {
            this.i = i;
            if (i != 0) {
                Paint paint = new Paint();
                this.k = paint;
                paint.setAntiAlias(true);
                this.k.setStyle(Paint.Style.FILL);
                this.k.setColor(this.i);
                this.j = this.k.getAlpha();
            } else {
                this.k = null;
            }
            invalidate();
        }
    }

    public void setBgNorRadius(float f) {
        this.h = f;
        this.g = true;
    }

    public void setBgPreColor(int i) {
        if (this.n != i) {
            this.n = i;
            if (i != 0) {
                Paint paint = new Paint();
                this.p = paint;
                paint.setAntiAlias(true);
                this.p.setStyle(Paint.Style.FILL);
                this.p.setColor(this.n);
                this.o = this.p.getAlpha();
            } else {
                this.p = null;
            }
            invalidate();
        }
    }

    public void setCheckArea(boolean z) {
        this.S = z;
    }

    @Override // android.view.View
    public void setClickable(boolean z) {
        super.setClickable(z);
        if (!z && this.N) {
            this.N = false;
            invalidate();
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
        if (!z && this.N) {
            this.N = false;
            invalidate();
        }
    }

    public void setFullSize(boolean z) {
        if (this.C == z) {
            return;
        }
        this.C = z;
        this.y = true;
        this.B = true;
        invalidate();
    }

    public void setNoti(boolean z) {
        if (z) {
            if (this.H == null) {
                Paint paint = new Paint();
                this.H = paint;
                paint.setAntiAlias(true);
                this.H.setStyle(Paint.Style.FILL);
                this.H.setColor(-65536);
                Context context = getContext();
                this.K = MainUtil.O5(context);
                this.I = MainUtil.G(context, 3.0f);
                this.J = MainUtil.G(context, 9.0f);
                invalidate();
                return;
            }
            return;
        }
        if (this.H != null) {
            this.H = null;
            invalidate();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [android.view.View$OnClickListener, java.lang.Object] */
    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.O = onClickListener;
        super.setOnClickListener(new Object());
    }

    @Override // android.view.View
    public void setOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.P = onLongClickListener;
        super.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.mycompany.app.view.MyButtonCheck.26
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                View.OnLongClickListener onLongClickListener2;
                MyButtonCheck myButtonCheck = MyButtonCheck.this;
                if (!myButtonCheck.N || (onLongClickListener2 = myButtonCheck.P) == null) {
                    return false;
                }
                onLongClickListener2.onLongClick(myButtonCheck);
                myButtonCheck.N = false;
                myButtonCheck.s();
                return true;
            }
        });
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        float f;
        ValueAnimator valueAnimator = this.Q;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.Q = null;
        }
        ValueAnimator valueAnimator2 = this.R;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
            this.R = null;
        }
        if (isEnabled()) {
            f = 1.0f;
        } else {
            f = 0.4f;
        }
        setAlpha(f);
        super.setVisibility(i);
        if (i != 0 && this.N) {
            this.N = false;
            invalidate();
        }
    }

    public final void t(boolean z, boolean z2) {
        if (z) {
            if (z2) {
                i();
                return;
            } else {
                setVisibility(0);
                return;
            }
        }
        if (z2) {
            h();
        } else {
            setVisibility(8);
        }
    }
}
