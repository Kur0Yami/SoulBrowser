package com.mycompany.app.view;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import com.mycompany.app.db.book.DbBookSearch;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefPdf;
import com.mycompany.app.pref.PrefZtwo;

/* loaded from: classes3.dex */
public class MyIconView extends ImageView {
    public static final /* synthetic */ int k1 = 0;
    public Drawable A;
    public int A0;
    public int B;
    public int B0;
    public int C;
    public Paint C0;
    public Drawable D;
    public ValueAnimator D0;
    public int E;
    public ValueAnimator E0;
    public int F;
    public float F0;
    public String G;
    public Paint G0;
    public int H;
    public float H0;
    public boolean I;
    public float I0;
    public int J;
    public boolean J0;
    public Paint K;
    public float K0;
    public int L;
    public boolean L0;
    public Rect M;
    public boolean M0;
    public String N;
    public boolean N0;
    public boolean O;
    public boolean O0;
    public String P;
    public View.OnClickListener P0;
    public int Q;
    public View.OnLongClickListener Q0;
    public Paint R;
    public AddrIconListener R0;
    public Rect S;
    public float S0;
    public boolean T;
    public boolean T0;
    public float U;
    public final Runnable U0;
    public Paint V;
    public float V0;
    public RectF W;
    public boolean W0;
    public final Runnable X0;
    public float Y0;
    public boolean Z0;
    public String a0;
    public final Runnable a1;
    public int b0;
    public float b1;

    /* renamed from: c, reason: collision with root package name */
    public boolean f18806c;
    public Paint c0;
    public boolean c1;
    public int d0;
    public final Runnable d1;
    public Rect e0;
    public float e1;
    public int f;
    public boolean f0;
    public boolean f1;
    public boolean g;
    public boolean g0;
    public final Runnable g1;
    public boolean h;
    public boolean h0;
    public float h1;
    public boolean i;
    public float i0;
    public boolean i1;
    public float j;
    public RectF j0;
    public final Runnable j1;
    public float k;
    public int k0;
    public int l;
    public int l0;
    public int m;
    public Paint m0;
    public int n;
    public ValueAnimator n0;
    public Bitmap o;
    public ValueAnimator o0;
    public int p;
    public float p0;
    public Paint q;
    public int q0;
    public RectF r;
    public RectF r0;
    public boolean s;
    public int s0;
    public int t;
    public int t0;
    public Drawable u;
    public Paint u0;
    public int v;
    public ValueAnimator v0;
    public int w;
    public ValueAnimator w0;
    public Drawable x;
    public float x0;
    public int y;
    public int y0;
    public int z;
    public RectF z0;

    /* renamed from: com.mycompany.app.view.MyIconView$26, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass26 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* loaded from: classes3.dex */
    public interface AddrIconListener {
        void a(MyIconView myIconView);

        void b(MyIconView myIconView);
    }

    public MyIconView(Context context) {
        super(context);
        this.U0 = new Runnable() { // from class: com.mycompany.app.view.MyIconView.4
            @Override // java.lang.Runnable
            public final void run() {
                MyIconView myIconView = MyIconView.this;
                myIconView.T0 = false;
                if (myIconView.n0 != null) {
                    myIconView.setValPreScaleUp(myIconView.S0);
                }
            }
        };
        this.X0 = new Runnable() { // from class: com.mycompany.app.view.MyIconView.8
            @Override // java.lang.Runnable
            public final void run() {
                MyIconView myIconView = MyIconView.this;
                myIconView.W0 = false;
                if (myIconView.o0 != null) {
                    myIconView.setValPreScaleDn(myIconView.V0);
                }
            }
        };
        this.a1 = new Runnable() { // from class: com.mycompany.app.view.MyIconView.12
            @Override // java.lang.Runnable
            public final void run() {
                MyIconView myIconView = MyIconView.this;
                myIconView.Z0 = false;
                if (myIconView.v0 != null) {
                    myIconView.setValHostScaleUp(myIconView.Y0);
                }
            }
        };
        this.d1 = new Runnable() { // from class: com.mycompany.app.view.MyIconView.16
            @Override // java.lang.Runnable
            public final void run() {
                MyIconView myIconView = MyIconView.this;
                myIconView.c1 = false;
                if (myIconView.w0 != null) {
                    myIconView.setValHostScaleDn(myIconView.b1);
                }
            }
        };
        this.g1 = new Runnable() { // from class: com.mycompany.app.view.MyIconView.20
            @Override // java.lang.Runnable
            public final void run() {
                MyIconView myIconView = MyIconView.this;
                myIconView.f1 = false;
                if (myIconView.D0 != null) {
                    myIconView.setValTrnsScaleUp(myIconView.e1);
                }
            }
        };
        this.j1 = new Runnable() { // from class: com.mycompany.app.view.MyIconView.24
            @Override // java.lang.Runnable
            public final void run() {
                MyIconView myIconView = MyIconView.this;
                myIconView.i1 = false;
                if (myIconView.E0 != null) {
                    myIconView.setValTrnsScaleDn(myIconView.h1);
                }
            }
        };
        this.f18806c = true;
        this.l = 1234;
        this.j0 = new RectF();
        this.K0 = 1.0f;
        this.L0 = true;
    }

    public static float i(int i) {
        return (i == 0 || i == 1) ? 0.7f : 0.8f;
    }

    public static int j(int i, int i2, boolean z) {
        if (i == 0) {
            return -1118482;
        }
        return i == 1 ? z ? -12632257 : -14606047 : i2;
    }

    public static int k(int i, boolean z) {
        return z ? i == 0 ? 1895825408 : 1912602623 : i == 0 ? -1308622848 : -1292174598;
    }

    public static int l(int i, int i2, boolean z) {
        if (z) {
            return j(i, i2, z);
        }
        if (i == 0) {
            return -460552;
        }
        if (i == 1) {
            return -13816531;
        }
        return i2;
    }

    private void setHostPreRect(int i) {
        int i2;
        RectF rectF = this.r0;
        if (rectF != null && (i2 = this.q0) != 0 && i != 0) {
            int i3 = MainApp.g1 / 2;
            rectF.set(i2 - i3, 0.0f, i2 + i3, i);
        }
    }

    private void setTrnsPreRect(int i) {
        int i2;
        RectF rectF = this.z0;
        if (rectF != null && (i2 = this.y0) != 0 && i != 0) {
            int i3 = MainApp.g1 / 2;
            rectF.set(i2 - i3, 0.0f, i2 + i3, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValHostScaleDn(float f) {
        if (this.u0 == null) {
            return;
        }
        this.x0 = f;
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValHostScaleUp(float f) {
        if (this.u0 == null) {
            return;
        }
        this.x0 = f;
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValPreScaleDn(float f) {
        if (this.m0 == null) {
            return;
        }
        this.p0 = f;
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValPreScaleUp(float f) {
        if (this.m0 == null) {
            return;
        }
        this.p0 = f;
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValTrnsScaleDn(float f) {
        if (this.C0 == null) {
            return;
        }
        this.F0 = f;
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValTrnsScaleUp(float f) {
        if (this.C0 == null) {
            return;
        }
        this.F0 = f;
        invalidate();
    }

    public final int A(Drawable drawable, int i, int i2) {
        if (drawable != null && i2 != 0) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            int i3 = (i2 - intrinsicHeight) / 2;
            this.y0 = (intrinsicWidth / 2) + i;
            drawable.setBounds(i, i3, i + intrinsicWidth, intrinsicHeight + i3);
            return intrinsicWidth;
        }
        return 0;
    }

    public final void B() {
        if (this.L0 && this.m0 != null && this.o0 == null) {
            float f = this.p0;
            if (f <= 0.8f) {
                return;
            }
            if (this.f0) {
                this.p0 = 0.8f;
                invalidate();
                return;
            }
            this.V0 = f;
            this.W0 = false;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(f, 0.8f);
            this.o0 = ofFloat;
            ofFloat.setDuration(200L);
            this.o0.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.view.MyIconView.6
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    MyIconView myIconView = MyIconView.this;
                    if (myIconView.m0 != null) {
                        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        if (myIconView.o0 != null) {
                            myIconView.V0 = floatValue;
                            if (myIconView.W0) {
                                return;
                            }
                            myIconView.W0 = true;
                            MainApp.N(myIconView.getContext(), myIconView.X0);
                        }
                    }
                }
            });
            this.o0.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.view.MyIconView.7
                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationCancel(Animator animator) {
                    MyIconView myIconView = MyIconView.this;
                    if (myIconView.o0 == null) {
                        return;
                    }
                    myIconView.o0 = null;
                    myIconView.invalidate();
                }

                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    final MyIconView myIconView = MyIconView.this;
                    if (myIconView.o0 == null) {
                        return;
                    }
                    MainApp.N(myIconView.getContext(), new Runnable() { // from class: com.mycompany.app.view.MyIconView.9
                        @Override // java.lang.Runnable
                        public final void run() {
                            MyIconView myIconView2 = MyIconView.this;
                            if (myIconView2.o0 == null) {
                                return;
                            }
                            myIconView2.o0 = null;
                            myIconView2.setValPreScaleDn(0.8f);
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
            ValueAnimator valueAnimator = this.n0;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            this.o0.start();
        }
    }

    public final void C() {
        if (this.u0 != null && this.w0 == null) {
            float f = this.x0;
            if (f <= 0.8f) {
                return;
            }
            if (this.f0) {
                this.x0 = 0.8f;
                invalidate();
                return;
            }
            this.b1 = f;
            this.c1 = false;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(f, 0.8f);
            this.w0 = ofFloat;
            ofFloat.setDuration(200L);
            this.w0.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.view.MyIconView.14
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    MyIconView myIconView = MyIconView.this;
                    if (myIconView.u0 != null) {
                        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        if (myIconView.w0 != null) {
                            myIconView.b1 = floatValue;
                            if (myIconView.c1) {
                                return;
                            }
                            myIconView.c1 = true;
                            MainApp.N(myIconView.getContext(), myIconView.d1);
                        }
                    }
                }
            });
            this.w0.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.view.MyIconView.15
                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationCancel(Animator animator) {
                    MyIconView myIconView = MyIconView.this;
                    if (myIconView.w0 == null) {
                        return;
                    }
                    myIconView.w0 = null;
                    myIconView.invalidate();
                }

                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    final MyIconView myIconView = MyIconView.this;
                    if (myIconView.w0 == null) {
                        return;
                    }
                    MainApp.N(myIconView.getContext(), new Runnable() { // from class: com.mycompany.app.view.MyIconView.17
                        @Override // java.lang.Runnable
                        public final void run() {
                            MyIconView myIconView2 = MyIconView.this;
                            if (myIconView2.w0 == null) {
                                return;
                            }
                            myIconView2.w0 = null;
                            myIconView2.setValHostScaleDn(0.8f);
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
            ValueAnimator valueAnimator = this.v0;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            this.w0.start();
        }
    }

    public final void D() {
        if (this.C0 != null && this.E0 == null) {
            float f = this.F0;
            if (f <= 0.8f) {
                return;
            }
            if (this.f0) {
                this.F0 = 0.8f;
                invalidate();
                return;
            }
            this.h1 = f;
            this.i1 = false;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(f, 0.8f);
            this.E0 = ofFloat;
            ofFloat.setDuration(200L);
            this.E0.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.view.MyIconView.22
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    MyIconView myIconView = MyIconView.this;
                    if (myIconView.C0 != null) {
                        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        if (myIconView.E0 != null) {
                            myIconView.h1 = floatValue;
                            if (myIconView.i1) {
                                return;
                            }
                            myIconView.i1 = true;
                            MainApp.N(myIconView.getContext(), myIconView.j1);
                        }
                    }
                }
            });
            this.E0.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.view.MyIconView.23
                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationCancel(Animator animator) {
                    MyIconView myIconView = MyIconView.this;
                    if (myIconView.E0 == null) {
                        return;
                    }
                    myIconView.E0 = null;
                    myIconView.invalidate();
                }

                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    final MyIconView myIconView = MyIconView.this;
                    if (myIconView.E0 == null) {
                        return;
                    }
                    MainApp.N(myIconView.getContext(), new Runnable() { // from class: com.mycompany.app.view.MyIconView.25
                        @Override // java.lang.Runnable
                        public final void run() {
                            MyIconView myIconView2 = MyIconView.this;
                            if (myIconView2.E0 == null) {
                                return;
                            }
                            myIconView2.E0 = null;
                            myIconView2.setValTrnsScaleDn(0.8f);
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
            ValueAnimator valueAnimator = this.D0;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            this.E0.start();
        }
    }

    public final void g() {
        ValueAnimator valueAnimator = this.n0;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.n0 = null;
        }
        ValueAnimator valueAnimator2 = this.o0;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
            this.o0 = null;
        }
        ValueAnimator valueAnimator3 = this.v0;
        if (valueAnimator3 != null) {
            valueAnimator3.cancel();
            this.v0 = null;
        }
        ValueAnimator valueAnimator4 = this.w0;
        if (valueAnimator4 != null) {
            valueAnimator4.cancel();
            this.w0 = null;
        }
        ValueAnimator valueAnimator5 = this.D0;
        if (valueAnimator5 != null) {
            valueAnimator5.cancel();
            this.D0 = null;
        }
        ValueAnimator valueAnimator6 = this.E0;
        if (valueAnimator6 != null) {
            valueAnimator6.cancel();
            this.E0 = null;
        }
    }

    public final void h() {
        boolean z = true;
        boolean z2 = false;
        if (this.M0) {
            this.M0 = false;
            z2 = true;
        }
        ValueAnimator valueAnimator = this.n0;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.n0 = null;
            z2 = true;
        }
        ValueAnimator valueAnimator2 = this.o0;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
            this.o0 = null;
            z2 = true;
        }
        ValueAnimator valueAnimator3 = this.v0;
        if (valueAnimator3 != null) {
            valueAnimator3.cancel();
            this.v0 = null;
            z2 = true;
        }
        ValueAnimator valueAnimator4 = this.w0;
        if (valueAnimator4 != null) {
            valueAnimator4.cancel();
            this.w0 = null;
            z2 = true;
        }
        ValueAnimator valueAnimator5 = this.D0;
        if (valueAnimator5 != null) {
            valueAnimator5.cancel();
            this.D0 = null;
            z2 = true;
        }
        ValueAnimator valueAnimator6 = this.E0;
        if (valueAnimator6 != null) {
            valueAnimator6.cancel();
            this.E0 = null;
        } else {
            z = z2;
        }
        if (z) {
            invalidate();
        }
    }

    @Override // android.view.View
    public final void invalidate() {
        if (!this.f18806c) {
            return;
        }
        super.invalidate();
    }

    @Override // android.view.View
    public final boolean isPressed() {
        if (!this.M0 && !super.isPressed()) {
            return false;
        }
        return true;
    }

    public final void m() {
        this.f18806c = false;
        g();
        this.n = 0;
        this.o = null;
        n();
        o();
        this.j0 = null;
        this.m0 = null;
        this.r0 = null;
        this.u0 = null;
        this.z0 = null;
        this.C0 = null;
        this.G0 = null;
        this.P0 = null;
        this.Q0 = null;
        this.R0 = null;
    }

    public final void n() {
        this.p = 0;
        this.q = null;
        this.r = null;
        this.s = false;
        this.t = 0;
        this.u = null;
        this.v = 0;
        this.w = 0;
        this.x = null;
        this.y = 0;
        this.z = 0;
        this.A = null;
        this.B = 0;
        this.C = 0;
        this.D = null;
        this.E = 0;
        this.F = 0;
        this.G = null;
        this.H = 0;
        this.I = false;
        this.J = 0;
        this.K = null;
        this.L = 0;
        this.M = null;
        this.N = null;
        this.O = false;
        this.P = null;
        this.Q = 0;
        this.R = null;
        this.S = null;
        this.T = false;
        this.r0 = null;
        this.u0 = null;
        this.z0 = null;
        this.C0 = null;
        this.R0 = null;
    }

    public final void o() {
        this.V = null;
        this.W = null;
        this.a0 = null;
        this.b0 = 0;
        this.c0 = null;
        this.d0 = 12;
        this.e0 = null;
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onDetachedFromWindow() {
        g();
        super.onDetachedFromWindow();
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onDraw(Canvas canvas) {
        Rect rect;
        Paint paint;
        RectF rectF;
        Drawable drawable;
        Drawable drawable2;
        Rect rect2;
        Drawable drawable3;
        Paint paint2;
        Paint paint3;
        if (this.f18806c) {
            Paint paint4 = this.m0;
            if (paint4 != null && (this.M0 || this.n0 != null || this.o0 != null)) {
                paint4.setAlpha(Math.round((this.p0 - 0.8f) * this.l0 * 5.0f));
                if (this.g0 && this.j0 != null) {
                    canvas.save();
                    float f = this.p0;
                    canvas.scale(f, f, this.j, this.k);
                    RectF rectF2 = this.j0;
                    float f2 = MainApp.v1;
                    canvas.drawRoundRect(rectF2, f2, f2, this.m0);
                    canvas.restore();
                } else {
                    canvas.drawCircle(this.j, this.k, this.i0 * this.p0, this.m0);
                }
            }
            int i = this.f;
            if (i == 0) {
                super.onDraw(canvas);
                if ((this.h || this.g) && (paint3 = this.G0) != null) {
                    if (this.J0) {
                        float f3 = this.j;
                        float f4 = this.I0;
                        canvas.drawCircle(f3 + f4, this.k - f4, this.H0, paint3);
                        return;
                    } else {
                        float f5 = this.j;
                        float f6 = this.I0;
                        canvas.drawCircle(f5 - f6, this.k - f6, this.H0, paint3);
                        return;
                    }
                }
                return;
            }
            boolean z = true;
            if (i == 1) {
                if (!this.T && (paint = this.q) != null && (rectF = this.r) != null) {
                    float f7 = MainApp.F1;
                    canvas.drawRoundRect(rectF, f7, f7, paint);
                    Paint paint5 = this.u0;
                    if (paint5 != null && (this.N0 || this.v0 != null || this.w0 != null)) {
                        paint5.setAlpha(Math.round((this.x0 - 0.8f) * this.t0 * 5.0f));
                        canvas.drawCircle(this.q0, this.k, this.i0 * this.x0, this.u0);
                    } else {
                        Paint paint6 = this.C0;
                        if (paint6 != null && (this.O0 || this.D0 != null || this.E0 != null)) {
                            paint6.setAlpha(Math.round((this.F0 - 0.8f) * this.B0 * 5.0f));
                            canvas.drawCircle(this.y0, this.k, this.i0 * this.F0, this.C0);
                        }
                    }
                    if (this.g && (paint2 = this.G0) != null) {
                        if (this.J0) {
                            float width = getWidth();
                            float f8 = this.I0;
                            canvas.drawCircle(width - f8, this.k - f8, this.H0, this.G0);
                        } else {
                            float f9 = this.I0;
                            canvas.drawCircle(f9, this.k - f9, this.H0, paint2);
                        }
                    }
                    if (!TextUtils.isEmpty(this.G) && this.K != null && this.M != null) {
                        int i2 = MainApp.E1;
                        int i3 = MainApp.G1 + i2;
                        if (this.E != 0) {
                            i3 = MainApp.f1;
                            canvas.save();
                        }
                        canvas.clipRect(i2, 0, getWidth() - i3, getHeight());
                        if (this.t != 0 && (drawable3 = this.u) != null) {
                            drawable3.draw(canvas);
                        }
                        if (this.w != 0) {
                            Drawable drawable4 = this.x;
                            if (drawable4 != null) {
                                drawable4.draw(canvas);
                            }
                        } else if (this.z != 0 && (drawable = this.A) != null) {
                            drawable.draw(canvas);
                        }
                        if (PrefPdf.H != 1 || TextUtils.isEmpty(this.P) || this.R == null) {
                            z = false;
                        }
                        float width2 = this.M.width();
                        if (z && (rect2 = this.S) != null) {
                            width2 += (MainApp.G1 / 2.0f) + rect2.width();
                        }
                        float max = Math.max((this.j - (width2 / 2.0f)) - this.M.left, this.F - r0);
                        float height = (this.k - (this.M.height() / 2.0f)) - this.M.top;
                        String str = this.G;
                        if (!TextUtils.isEmpty(str)) {
                            canvas.drawText(str, max, height, this.K);
                        }
                        if (z) {
                            String str2 = this.P;
                            if (!TextUtils.isEmpty(str2)) {
                                canvas.drawText(str2, (MainApp.G1 / 2.0f) + max + this.M.width(), height, this.R);
                            }
                        }
                        if (this.E != 0) {
                            canvas.restore();
                            if (this.C != 0 && (drawable2 = this.D) != null) {
                                drawable2.draw(canvas);
                                if (this.G0 != null) {
                                    int width3 = getWidth();
                                    int i4 = MainApp.g1;
                                    int i5 = (i4 / 2) + (width3 - i4);
                                    if (this.J0) {
                                        float f10 = i5;
                                        float f11 = this.I0;
                                        canvas.drawCircle(f10 + f11, this.k - f11, this.H0, this.G0);
                                        return;
                                    } else {
                                        float f12 = i5;
                                        float f13 = this.I0;
                                        canvas.drawCircle(f12 - f13, this.k - f13, this.H0, this.G0);
                                        return;
                                    }
                                }
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    return;
                }
                return;
            }
            if (i == 2 && this.V != null && this.W != null) {
                if (this.c0 != null && (rect = this.e0) != null) {
                    float width4 = rect.width() / 2.0f;
                    float height2 = this.e0.height() / 2.0f;
                    String str3 = this.a0;
                    if (!TextUtils.isEmpty(str3)) {
                        float f14 = this.j - width4;
                        Rect rect3 = this.e0;
                        canvas.drawText(str3, f14 - rect3.left, (this.k - height2) - rect3.top, this.c0);
                    }
                }
                RectF rectF3 = this.W;
                float f15 = MainApp.G1;
                canvas.drawRoundRect(rectF3, f15, f15, this.V);
            }
        }
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.j = i / 2.0f;
        this.k = i2 / 2.0f;
        u(i, i2);
        setHostPreRect(i2);
        setTrnsPreRect(i2);
        int i5 = this.f;
        if (i5 == 1) {
            if (this.r != null) {
                this.v = 0;
                this.y = 0;
                this.B = 0;
                this.E = 0;
                q(this.k, i);
                r(i2);
                return;
            }
            return;
        }
        if (i5 == 2) {
            z(this.j, this.k);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0024, code lost:
    
        if (r0 != 3) goto L113;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouchEvent(android.view.MotionEvent r11) {
        /*
            Method dump skipped, instructions count: 514
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.view.MyIconView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public final void p(int i, int i2, boolean z, boolean z2) {
        boolean z3;
        boolean z4 = true;
        this.f = 1;
        boolean z5 = false;
        this.n = 0;
        this.o = null;
        o();
        if (this.q == null) {
            Paint paint = new Paint();
            this.q = paint;
            paint.setAntiAlias(true);
            this.q.setStyle(Paint.Style.FILL);
            z3 = true;
        } else {
            z3 = false;
        }
        if (!PrefPdf.z && z2 && MainUtil.C5(z)) {
            z5 = true;
        }
        if (this.s != z5) {
            this.s = z5;
            this.r = null;
        }
        if (this.r == null) {
            this.r = new RectF();
            int width = getWidth();
            int height = getHeight();
            if (width != 0 && height != 0) {
                q(height / 2.0f, width);
            }
            z3 = true;
        }
        int l = l(i, i2, this.g);
        if (this.p != l) {
            this.p = l;
            this.q.setColor(l);
        } else {
            z4 = z3;
        }
        if (z4) {
            invalidate();
        }
    }

    public final void q(float f, int i) {
        RectF rectF = this.r;
        if (rectF == null) {
            return;
        }
        int i2 = (MainApp.Y0 / 2) - MainApp.F1;
        if (this.s) {
            i2 -= MainApp.G1;
        }
        float f2 = i2;
        rectF.set(MainApp.F1, f - f2, i - r2, f + f2);
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0132  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0135 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00e5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean r(int r11) {
        /*
            Method dump skipped, instructions count: 310
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.view.MyIconView.r(int):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x003d, code lost:
    
        if (r3 != null) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x002a, code lost:
    
        if (r3 != null) goto L17;
     */
    /* JADX WARN: Removed duplicated region for block: B:103:0x020b  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x020f  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0212  */
    /* JADX WARN: Removed duplicated region for block: B:109:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:111:0x01c7  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x01ab  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0181  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x016a  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0158  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0171  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x019e  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01b2  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x01cc  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x01dd  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x01f1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void s(int r9, int r10, android.content.Context r11, java.lang.String r12, java.lang.String r13, boolean r14) {
        /*
            Method dump skipped, instructions count: 534
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.view.MyIconView.s(int, int, android.content.Context, java.lang.String, java.lang.String, boolean):void");
    }

    public void setAddrIconListener(AddrIconListener addrIconListener) {
        this.R0 = addrIconListener;
    }

    public void setAddrSkipDraw(boolean z) {
        if (this.T != z) {
            this.T = z;
            invalidate();
        }
    }

    @Override // android.view.View
    public void setAlpha(float f) {
        float f2 = this.K0;
        if (f > f2) {
            super.setAlpha(f2);
        } else {
            super.setAlpha(f);
        }
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        this.l = 1234;
        this.m = 0;
        super.setBackground(drawable);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        this.m = 0;
        if (this.l != i) {
            this.l = i;
            super.setBackgroundColor(i);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        this.l = 1234;
        if (this.m != i) {
            this.m = i;
            super.setBackgroundResource(i);
        }
    }

    public void setBgPreColor(int i) {
        if (this.k0 != i) {
            this.k0 = i;
            if (i != 0) {
                Paint paint = new Paint();
                this.m0 = paint;
                paint.setAntiAlias(true);
                this.m0.setStyle(Paint.Style.FILL);
                this.m0.setColor(this.k0);
                this.l0 = this.m0.getAlpha();
            } else {
                this.m0 = null;
            }
            invalidate();
        }
    }

    public void setClickEnabled(boolean z) {
        float f;
        this.L0 = z;
        if (z) {
            f = this.K0;
        } else {
            f = 0.4f;
        }
        setAlpha(f);
        if (!z) {
            h();
        }
    }

    @Override // android.view.View
    public void setClickable(boolean z) {
        super.setClickable(z);
        if (!z) {
            h();
        }
    }

    public void setDownIcon(boolean z) {
        this.h = z;
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        float f;
        super.setEnabled(z);
        if (z) {
            f = this.K0;
        } else {
            f = 0.4f;
        }
        setAlpha(f);
        if (!z) {
            h();
        }
    }

    public void setHostPreColor(int i) {
        if (this.s0 != i) {
            this.s0 = i;
            if (i != 0) {
                Paint paint = new Paint();
                this.u0 = paint;
                paint.setAntiAlias(true);
                this.u0.setStyle(Paint.Style.FILL);
                this.u0.setColor(this.s0);
                this.t0 = this.u0.getAlpha();
            } else {
                this.u0 = null;
            }
            invalidate();
        }
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        this.f = 0;
        this.n = 0;
        this.o = null;
        o();
        n();
        super.setImageBitmap(bitmap);
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i) {
        this.f = 0;
        this.o = null;
        o();
        n();
        if (this.n != i) {
            this.n = i;
            super.setImageResource(i);
        }
    }

    public void setMaxAlpha(float f) {
        if (Float.compare(this.K0, f) == 0) {
            return;
        }
        this.K0 = f;
        setAlpha(f);
    }

    public void setNoAnim(boolean z) {
        this.f0 = z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [android.view.View$OnClickListener, java.lang.Object] */
    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.P0 = onClickListener;
        super.setOnClickListener(new Object());
    }

    @Override // android.view.View
    public void setOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.Q0 = onLongClickListener;
        super.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.mycompany.app.view.MyIconView.27
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                View.OnLongClickListener onLongClickListener2;
                MyIconView myIconView = MyIconView.this;
                if (myIconView.N0 || myIconView.O0 || !myIconView.M0 || (onLongClickListener2 = myIconView.Q0) == null) {
                    return false;
                }
                onLongClickListener2.onLongClick(myIconView);
                myIconView.M0 = false;
                myIconView.B();
                return true;
            }
        });
    }

    public void setSetting(boolean z) {
        this.g = z;
    }

    public void setTabColor(int i) {
        int i2;
        Paint paint = this.V;
        if (paint != null) {
            if (i == 0) {
                i2 = -16777216;
            } else if (i == 1) {
                i2 = -328966;
            } else {
                i2 = -1;
            }
            if (this.b0 != i2) {
                this.b0 = i2;
                paint.setColor(i2);
                Paint paint2 = this.c0;
                if (paint2 != null) {
                    paint2.setColor(i2);
                }
                invalidate();
            }
        }
    }

    public void setTrnsPreColor(int i) {
        if (this.A0 != i) {
            this.A0 = i;
            if (i != 0) {
                Paint paint = new Paint();
                this.C0 = paint;
                paint.setAntiAlias(true);
                this.C0.setStyle(Paint.Style.FILL);
                this.C0.setColor(this.A0);
                this.B0 = this.C0.getAlpha();
            } else {
                this.C0 = null;
            }
            invalidate();
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public void setVisibility(int i) {
        float f;
        if (this.L0 && isEnabled()) {
            f = this.K0;
        } else {
            f = 0.4f;
        }
        setAlpha(f);
        super.setVisibility(i);
        if (i != 0) {
            h();
        }
    }

    public void setYouIcon(boolean z) {
        this.i = z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x00a3, code lost:
    
        if (x(r5, false) != false) goto L55;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void t(com.mycompany.app.web.WebViewActivity r5, boolean r6, int r7) {
        /*
            r4 = this;
            int r0 = r4.f
            r1 = 1
            if (r0 == r1) goto L7
            goto Lac
        L7:
            java.lang.String r0 = r4.G
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            r2 = 0
            if (r0 == 0) goto L11
            r6 = r2
        L11:
            boolean r0 = r4.I
            if (r0 == r6) goto L19
            r4.I = r6
            r6 = r1
            goto L1a
        L19:
            r6 = r2
        L1a:
            boolean r0 = r4.I
            if (r0 == 0) goto L2b
            if (r7 != 0) goto L23
            int r7 = com.mycompany.app.soulbrowser.R.drawable.outline_g_translate_black_18
            goto L2e
        L23:
            if (r7 != r1) goto L28
            int r7 = com.mycompany.app.soulbrowser.R.drawable.outline_g_translate_dark_18
            goto L2e
        L28:
            int r7 = com.mycompany.app.soulbrowser.R.drawable.outline_g_translate_white_18
            goto L2e
        L2b:
            r4.E = r2
            r7 = r2
        L2e:
            int r0 = r4.C
            r3 = 0
            if (r0 == r7) goto L43
            r4.C = r7
            r4.E = r2
            if (r7 == 0) goto L40
            android.graphics.drawable.Drawable r6 = com.mycompany.app.main.MainUtil.S(r5, r7)
            r4.D = r6
            goto L42
        L40:
            r4.D = r3
        L42:
            r6 = r1
        L43:
            int r7 = r4.C
            if (r7 == 0) goto L71
            int r7 = r4.E
            if (r7 != 0) goto L71
            r7 = 1099956224(0x41900000, float:18.0)
            float r5 = com.mycompany.app.main.MainUtil.G(r5, r7)
            int r5 = java.lang.Math.round(r5)
            int r7 = com.mycompany.app.main.MainApp.g1
            int r7 = r7 - r5
            int r7 = r7 / 2
            int r5 = r4.getWidth()
            int r0 = com.mycompany.app.main.MainApp.g1
            int r5 = r5 - r0
            int r5 = r5 + r7
            android.graphics.drawable.Drawable r7 = r4.D
            int r0 = r4.getHeight()
            int r5 = r4.A(r7, r5, r0)
            r4.E = r5
            if (r5 == 0) goto L71
            r6 = r1
        L71:
            int r5 = r4.E
            if (r5 == 0) goto L89
            android.graphics.RectF r5 = r4.z0
            if (r5 != 0) goto L81
            android.graphics.RectF r5 = new android.graphics.RectF
            r5.<init>()
            r4.z0 = r5
            r6 = r1
        L81:
            int r5 = r4.getHeight()
            r4.setTrnsPreRect(r5)
            goto L90
        L89:
            android.graphics.RectF r5 = r4.z0
            if (r5 == 0) goto L90
            r4.z0 = r3
            r6 = r1
        L90:
            boolean r5 = r4.g
            if (r5 != 0) goto La6
            int r5 = r4.E
            if (r5 == 0) goto L9e
            boolean r5 = com.mycompany.app.pref.PrefAlbum.x
            if (r5 == 0) goto L9e
            r5 = r1
            goto L9f
        L9e:
            r5 = r2
        L9f:
            boolean r5 = r4.x(r5, r2)
            if (r5 == 0) goto La6
            goto La7
        La6:
            r1 = r6
        La7:
            if (r1 == 0) goto Lac
            r4.invalidate()
        Lac:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.view.MyIconView.t(com.mycompany.app.web.WebViewActivity, boolean, int):void");
    }

    public final void u(int i, int i2) {
        float min = Math.min(this.j, this.k);
        this.i0 = min;
        float min2 = Math.min(min, MainApp.g1);
        this.i0 = min2;
        RectF rectF = this.j0;
        if (rectF == null) {
            return;
        }
        if (this.h0) {
            float f = this.j;
            rectF.set(f - min2, 0.0f, f + min2, i2);
        } else {
            rectF.set(0.0f, 0.0f, i, i2);
        }
    }

    public final void v(boolean z, boolean z2) {
        this.g0 = z;
        this.h0 = z2;
        int width = getWidth();
        int height = getHeight();
        if (width != 0 && height != 0) {
            this.j = width / 2.0f;
            this.k = height / 2.0f;
            u(width, height);
        }
    }

    public final void w() {
        if (PrefZtwo.j < 10) {
            setImageResource(MainConst.E[PrefZtwo.j]);
            return;
        }
        int i = PrefZtwo.m;
        if (i != 0) {
            setImageResource(DbBookSearch.e(i));
            return;
        }
        Bitmap b = DbBookSearch.b(PrefZtwo.k);
        if (MainUtil.f6(b)) {
            setImageBitmap(b);
        } else {
            MainApp.J(getContext(), new Runnable() { // from class: com.mycompany.app.view.MyIconView.1
                @Override // java.lang.Runnable
                public final void run() {
                    MyIconView myIconView = MyIconView.this;
                    Bitmap d = DbBookSearch.d(myIconView.getContext(), PrefZtwo.j - 100);
                    DbBookSearch.j(PrefZtwo.k, d);
                    if (!myIconView.f18806c) {
                        return;
                    }
                    myIconView.o = d;
                    myIconView.post(new Runnable() { // from class: com.mycompany.app.view.MyIconView.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            MyIconView myIconView2 = MyIconView.this;
                            Bitmap bitmap = myIconView2.o;
                            myIconView2.o = null;
                            if (!myIconView2.f18806c) {
                                return;
                            }
                            if (MainUtil.f6(bitmap)) {
                                myIconView2.setImageBitmap(bitmap);
                            } else {
                                myIconView2.setImageResource(DbBookSearch.e(-65536));
                            }
                        }
                    });
                }
            });
        }
    }

    public final boolean x(boolean z, boolean z2) {
        if (z) {
            if (this.G0 == null) {
                Paint paint = new Paint();
                this.G0 = paint;
                paint.setAntiAlias(true);
                this.G0.setStyle(Paint.Style.FILL);
                this.G0.setColor(-65536);
                Context context = getContext();
                this.J0 = MainUtil.O5(context);
                this.H0 = MainUtil.G(context, 3.0f);
                this.I0 = MainUtil.G(context, 9.0f);
                if (z2) {
                    invalidate();
                    return false;
                }
                return true;
            }
            return false;
        }
        if (this.G0 != null) {
            this.G0 = null;
            if (z2) {
                invalidate();
                return false;
            }
            return true;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x011f  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:48:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x012e  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0114  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void y(int r7, int r8, int r9) {
        /*
            Method dump skipped, instructions count: 309
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.view.MyIconView.y(int, int, int):void");
    }

    public final void z(float f, float f2) {
        if (this.e0 != null && this.W != null) {
            float width = (r0.width() / 2.0f) + MainApp.G1;
            float G = MainUtil.G(getContext(), 7.8f);
            if (width < G) {
                width = G;
            } else {
                float f3 = f - this.U;
                if (width > f3) {
                    width = f3;
                }
            }
            this.W.set(f - width, f2 - G, f + width, f2 + G);
        }
    }
}
