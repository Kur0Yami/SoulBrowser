package com.mycompany.app.view;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.View;
import android.widget.FrameLayout;
import com.mycompany.app.dialog.a;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;

/* loaded from: classes3.dex */
public class MyTabFrame extends FrameLayout {
    public Paint A;
    public ValueAnimator B;
    public ValueAnimator C;
    public float D;
    public boolean E;
    public View.OnClickListener F;
    public View.OnLongClickListener G;
    public MyFadeListener H;
    public ValueAnimator I;
    public boolean J;
    public float K;
    public boolean L;
    public final Runnable M;
    public float N;
    public boolean O;
    public final Runnable P;
    public float Q;
    public boolean R;
    public final Runnable S;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f19009c;
    public boolean f;
    public final int g;
    public RectF h;
    public int i;
    public Paint j;
    public RectF k;
    public float l;
    public float m;
    public int n;
    public Paint o;
    public int p;
    public int q;
    public RectF r;
    public int s;
    public Paint t;
    public float u;
    public float v;
    public boolean w;
    public RectF x;
    public int y;
    public int z;

    /* renamed from: com.mycompany.app.view.MyTabFrame$13, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass13 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    public MyTabFrame(Context context) {
        super(context);
        this.M = new Runnable() { // from class: com.mycompany.app.view.MyTabFrame.3
            @Override // java.lang.Runnable
            public final void run() {
                MyTabFrame myTabFrame = MyTabFrame.this;
                myTabFrame.L = false;
                if (myTabFrame.B != null) {
                    myTabFrame.setValPreScaleUp(myTabFrame.K);
                }
            }
        };
        this.P = new Runnable() { // from class: com.mycompany.app.view.MyTabFrame.7
            @Override // java.lang.Runnable
            public final void run() {
                MyTabFrame myTabFrame = MyTabFrame.this;
                myTabFrame.O = false;
                if (myTabFrame.C != null) {
                    myTabFrame.setValPreScaleDn(myTabFrame.N);
                }
            }
        };
        this.S = new Runnable() { // from class: com.mycompany.app.view.MyTabFrame.11
            @Override // java.lang.Runnable
            public final void run() {
                MyTabFrame myTabFrame = MyTabFrame.this;
                myTabFrame.R = false;
                if (myTabFrame.I != null) {
                    myTabFrame.setValAnimShow(myTabFrame.Q);
                }
            }
        };
        this.f19009c = MainUtil.O5(context);
        this.f = true;
        this.g = MainApp.a1 / 2;
        float f = MainApp.G1;
        this.l = f / 2.0f;
        this.m = f;
        this.x = new RectF();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValAnimShow(float f) {
        setAlpha(f);
        setScaleX(f);
        setScaleY(f);
        if (getVisibility() != 0) {
            setVisibility(0);
        }
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValPreScaleDn(float f) {
        if (this.A == null) {
            return;
        }
        this.D = f;
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValPreScaleUp(float f) {
        if (this.A == null) {
            return;
        }
        this.D = f;
        invalidate();
    }

    public final void d() {
        ValueAnimator valueAnimator = this.B;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.B = null;
        }
        ValueAnimator valueAnimator2 = this.C;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
            this.C = null;
        }
        ValueAnimator valueAnimator3 = this.I;
        if (valueAnimator3 != null) {
            valueAnimator3.cancel();
            this.I = null;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        Paint paint;
        Paint paint2;
        RectF rectF;
        if (this.f) {
            Paint paint3 = this.j;
            if (paint3 != null && (rectF = this.h) != null) {
                float f = MainApp.F1;
                canvas.drawRoundRect(rectF, f, f, paint3);
            }
            Paint paint4 = this.A;
            if (paint4 != null && (this.E || this.B != null || this.C != null)) {
                paint4.setAlpha(Math.round((this.D - 0.8f) * this.z * 5.0f));
                if (this.x != null) {
                    canvas.save();
                    float f2 = this.D;
                    canvas.scale(f2, f2, this.u, this.v);
                    RectF rectF2 = this.x;
                    float f3 = MainApp.F1;
                    canvas.drawRoundRect(rectF2, f3, f3, this.A);
                    canvas.restore();
                }
            }
            super.dispatchDraw(canvas);
            RectF rectF3 = this.k;
            if (rectF3 != null && (paint2 = this.o) != null) {
                float f4 = MainApp.F1;
                canvas.drawRoundRect(rectF3, f4, f4, paint2);
            }
            RectF rectF4 = this.r;
            if (rectF4 != null && (paint = this.t) != null) {
                float f5 = this.l;
                canvas.drawRoundRect(rectF4, f5, f5, paint);
            }
        }
    }

    public final void e() {
        boolean z = true;
        boolean z2 = false;
        if (this.E) {
            this.E = false;
            z2 = true;
        }
        ValueAnimator valueAnimator = this.B;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.B = null;
            z2 = true;
        }
        ValueAnimator valueAnimator2 = this.C;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
            this.C = null;
        } else {
            z = z2;
        }
        if (z) {
            invalidate();
        }
    }

    public final void f(int i, int i2) {
        float f;
        RectF rectF = this.h;
        if (rectF == null) {
            return;
        }
        if (i2 - this.g >= MainApp.F1) {
            f = MainApp.G1;
        } else {
            f = (i2 - r1) / 2.0f;
        }
        rectF.set(MainApp.G1, f, i - r2, i2 - f);
    }

    public final void g(int i, int i2) {
        float max;
        if (this.k == null) {
            return;
        }
        if (i2 - this.g >= MainApp.F1) {
            max = this.m;
        } else {
            max = Math.max((i2 - r0) / 2.0f, this.l / 2.0f);
        }
        RectF rectF = this.k;
        float f = this.m;
        rectF.set(f, max, i - f, i2 - max);
    }

    public final void h(int i, int i2) {
        float max;
        int i3 = this.q;
        if (i3 != 0 && this.r != null) {
            int i4 = MainApp.G1 + MainApp.E1;
            int round = Math.round((i - (i4 * 2)) / i3);
            int i5 = (this.p * round) + i4;
            if (round < 2) {
                round = 2;
            }
            int i6 = i5 + round;
            int i7 = i - i4;
            if (i6 > i7) {
                i5 = i7 - round;
                i6 = i7;
            }
            if (this.f19009c) {
                i5 = i - i5;
                i6 = i - i6;
            }
            if (i2 - this.g >= MainApp.F1) {
                max = this.m;
            } else {
                max = Math.max((i2 - r5) / 2.0f, this.l / 2.0f);
            }
            float f = i2 - max;
            float f2 = this.l;
            this.r.set(i5, f - f2, i6, f + f2);
        }
    }

    public final boolean i(int i, boolean z, boolean z2) {
        if (this.n == i) {
            return false;
        }
        this.n = i;
        if (z) {
            float f = MainApp.n1;
            this.l = f;
            this.m = f / 2.0f;
        }
        if (i != 0) {
            if (this.k == null) {
                this.k = new RectF();
            }
            int width = getWidth();
            int height = getHeight();
            if (width != 0 && height != 0) {
                this.u = width / 2.0f;
                this.v = height / 2.0f;
                g(width, height);
            }
            if (this.o == null) {
                Paint paint = new Paint();
                this.o = paint;
                paint.setAntiAlias(true);
                this.o.setStyle(Paint.Style.STROKE);
                this.o.setStrokeWidth(this.l);
            }
            this.o.setColor(this.n);
        } else {
            this.k = null;
            this.o = null;
        }
        if (z2) {
            invalidate();
        }
        return true;
    }

    @Override // android.view.View
    public final void invalidate() {
        if (!this.f) {
            return;
        }
        super.invalidate();
    }

    @Override // android.view.View
    public final boolean isPressed() {
        if (!this.E && !super.isPressed()) {
            return false;
        }
        return true;
    }

    public final void j(int i, int i2, boolean z, MyFadeListener myFadeListener) {
        if (this.I != null) {
            return;
        }
        this.J = !z;
        this.H = myFadeListener;
        setPivotX(i);
        setPivotY(i2);
        if (z) {
            this.Q = 0.0f;
            this.R = false;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            this.I = ofFloat;
            a.v(ofFloat);
        } else {
            this.Q = 1.0f;
            this.R = false;
            ValueAnimator ofFloat2 = ValueAnimator.ofFloat(1.0f, 0.0f);
            this.I = ofFloat2;
            a.r(ofFloat2);
        }
        this.I.setDuration(200L);
        this.I.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.view.MyTabFrame.9
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                MyTabFrame myTabFrame = MyTabFrame.this;
                if (myTabFrame.I != null) {
                    float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    if (myTabFrame.I != null) {
                        myTabFrame.Q = floatValue;
                        if (myTabFrame.R) {
                            return;
                        }
                        myTabFrame.R = true;
                        MainApp.N(myTabFrame.getContext(), myTabFrame.S);
                    }
                }
            }
        });
        this.I.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.view.MyTabFrame.10
            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationCancel(Animator animator) {
                MyTabFrame myTabFrame = MyTabFrame.this;
                if (myTabFrame.I != null) {
                    myTabFrame.I = null;
                    if (myTabFrame.J) {
                        myTabFrame.setVisibility(8);
                        MyFadeListener myFadeListener2 = myTabFrame.H;
                        if (myFadeListener2 != null) {
                            myFadeListener2.a(false);
                        }
                    }
                }
            }

            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                final MyTabFrame myTabFrame = MyTabFrame.this;
                if (myTabFrame.I == null) {
                    return;
                }
                MainApp.N(myTabFrame.getContext(), new Runnable() { // from class: com.mycompany.app.view.MyTabFrame.12
                    @Override // java.lang.Runnable
                    public final void run() {
                        MyTabFrame myTabFrame2 = MyTabFrame.this;
                        if (myTabFrame2.I != null) {
                            myTabFrame2.I = null;
                            if (!myTabFrame2.J) {
                                myTabFrame2.setValAnimShow(1.0f);
                                return;
                            }
                            myTabFrame2.setVisibility(8);
                            MyFadeListener myFadeListener2 = myTabFrame2.H;
                            if (myFadeListener2 != null) {
                                myFadeListener2.a(false);
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
        this.I.start();
    }

    public final void k() {
        if (this.A != null && this.C == null) {
            float f = this.D;
            if (f <= 0.8f) {
                return;
            }
            if (this.w) {
                this.D = 0.8f;
                invalidate();
                return;
            }
            this.N = f;
            this.O = false;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(f, 0.8f);
            this.C = ofFloat;
            ofFloat.setDuration(200L);
            this.C.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.view.MyTabFrame.5
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    MyTabFrame myTabFrame = MyTabFrame.this;
                    if (myTabFrame.A != null) {
                        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        if (myTabFrame.C != null) {
                            myTabFrame.N = floatValue;
                            if (myTabFrame.O) {
                                return;
                            }
                            myTabFrame.O = true;
                            MainApp.N(myTabFrame.getContext(), myTabFrame.P);
                        }
                    }
                }
            });
            this.C.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.view.MyTabFrame.6
                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationCancel(Animator animator) {
                    MyTabFrame myTabFrame = MyTabFrame.this;
                    if (myTabFrame.C == null) {
                        return;
                    }
                    myTabFrame.C = null;
                    myTabFrame.invalidate();
                }

                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    final MyTabFrame myTabFrame = MyTabFrame.this;
                    if (myTabFrame.C == null) {
                        return;
                    }
                    MainApp.N(myTabFrame.getContext(), new Runnable() { // from class: com.mycompany.app.view.MyTabFrame.8
                        @Override // java.lang.Runnable
                        public final void run() {
                            MyTabFrame myTabFrame2 = MyTabFrame.this;
                            if (myTabFrame2.C == null) {
                                return;
                            }
                            myTabFrame2.C = null;
                            myTabFrame2.setValPreScaleDn(0.8f);
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
            ValueAnimator valueAnimator = this.B;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            this.C.start();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        d();
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        float f = i;
        this.u = f / 2.0f;
        float f2 = i2;
        this.v = f2 / 2.0f;
        f(i, i2);
        g(i, i2);
        h(i, i2);
        RectF rectF = this.x;
        if (rectF == null) {
            return;
        }
        rectF.set(0.0f, 0.0f, f, f2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0024, code lost:
    
        if (r0 != 3) goto L47;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouchEvent(android.view.MotionEvent r7) {
        /*
            r6 = this;
            android.view.View$OnClickListener r0 = r6.F
            r1 = 0
            if (r0 == 0) goto Lc8
            boolean r0 = r6.isEnabled()
            if (r0 == 0) goto Lc8
            boolean r0 = r6.isClickable()
            if (r0 == 0) goto Lc8
            android.graphics.Paint r0 = r6.A
            if (r0 != 0) goto L17
            goto Lc8
        L17:
            int r0 = r7.getActionMasked()
            r2 = 2
            r3 = 1
            if (r0 == 0) goto L5f
            if (r0 == r3) goto L45
            if (r0 == r2) goto L28
            r2 = 3
            if (r0 == r2) goto L55
            goto Lc3
        L28:
            boolean r0 = r6.E
            if (r0 == 0) goto Lc3
            android.graphics.RectF r0 = r6.x
            float r2 = r7.getX()
            int r2 = (int) r2
            float r3 = r7.getY()
            int r3 = (int) r3
            boolean r0 = com.mycompany.app.main.MainUtil.B5(r0, r2, r3)
            if (r0 != 0) goto Lc3
            r6.E = r1
            r6.k()
            goto Lc3
        L45:
            boolean r0 = r6.E
            if (r0 == 0) goto L55
            android.view.View$OnClickListener r0 = r6.F
            if (r0 == 0) goto L55
            com.mycompany.app.view.MyTabFrame$15 r0 = new com.mycompany.app.view.MyTabFrame$15
            r0.<init>()
            r6.post(r0)
        L55:
            boolean r0 = r6.E
            if (r0 == 0) goto Lc3
            r6.E = r1
            r6.k()
            goto Lc3
        L5f:
            android.graphics.RectF r0 = r6.x
            float r4 = r7.getX()
            int r4 = (int) r4
            float r5 = r7.getY()
            int r5 = (int) r5
            boolean r0 = com.mycompany.app.main.MainUtil.B5(r0, r4, r5)
            if (r0 != 0) goto L72
            goto Lc3
        L72:
            r6.E = r3
            android.graphics.Paint r0 = r6.A
            if (r0 != 0) goto L79
            goto Lc3
        L79:
            android.animation.ValueAnimator r0 = r6.B
            if (r0 == 0) goto L7e
            goto Lc3
        L7e:
            boolean r0 = r6.w
            if (r0 == 0) goto L8a
            r0 = 1065353216(0x3f800000, float:1.0)
            r6.D = r0
            r6.invalidate()
            goto Lc3
        L8a:
            r0 = 1061997773(0x3f4ccccd, float:0.8)
            r6.D = r0
            r6.K = r0
            r6.L = r1
            float[] r0 = new float[r2]
            r0 = {x00d0: FILL_ARRAY_DATA , data: [1061997773, 1065353216} // fill-array
            android.animation.ValueAnimator r0 = android.animation.ValueAnimator.ofFloat(r0)
            r6.B = r0
            r1 = 200(0xc8, double:9.9E-322)
            r0.setDuration(r1)
            android.animation.ValueAnimator r0 = r6.B
            com.mycompany.app.view.MyTabFrame$1 r1 = new com.mycompany.app.view.MyTabFrame$1
            r1.<init>()
            r0.addUpdateListener(r1)
            android.animation.ValueAnimator r0 = r6.B
            com.mycompany.app.view.MyTabFrame$2 r1 = new com.mycompany.app.view.MyTabFrame$2
            r1.<init>()
            r0.addListener(r1)
            android.animation.ValueAnimator r0 = r6.C
            if (r0 == 0) goto Lbe
            r0.cancel()
        Lbe:
            android.animation.ValueAnimator r0 = r6.B
            r0.start()
        Lc3:
            boolean r7 = super.onTouchEvent(r7)
            return r7
        Lc8:
            r6.E = r1
            boolean r7 = super.onTouchEvent(r7)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.view.MyTabFrame.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public void setBgPreColor(int i) {
        if (this.y != i) {
            this.y = i;
            if (i != 0) {
                Paint paint = new Paint();
                this.A = paint;
                paint.setAntiAlias(true);
                this.A.setStyle(Paint.Style.FILL);
                this.A.setColor(this.y);
                this.z = this.A.getAlpha();
            } else {
                this.A = null;
            }
            invalidate();
        }
    }

    @Override // android.view.View
    public void setClickable(boolean z) {
        super.setClickable(z);
        if (!z) {
            e();
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        if (!z) {
            e();
        }
    }

    public void setNoAnim(boolean z) {
        this.w = z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [android.view.View$OnClickListener, java.lang.Object] */
    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.F = onClickListener;
        super.setOnClickListener(new Object());
    }

    @Override // android.view.View
    public void setOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.G = onLongClickListener;
        super.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.mycompany.app.view.MyTabFrame.14
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                View.OnLongClickListener onLongClickListener2;
                MyTabFrame myTabFrame = MyTabFrame.this;
                if (!myTabFrame.E || (onLongClickListener2 = myTabFrame.G) == null) {
                    return false;
                }
                onLongClickListener2.onLongClick(myTabFrame);
                myTabFrame.E = false;
                myTabFrame.k();
                return true;
            }
        });
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        if (i != 0) {
            e();
        }
    }
}
