package com.mycompany.app.view;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.mycompany.app.dialog.DialogSeekAudio;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefWeb;
import com.mycompany.app.pref.PrefZone;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.web.WebViewActivity;

/* loaded from: classes3.dex */
public class MyWebCoord extends CoordinatorLayout {
    public float A0;
    public float B0;
    public MyCaptureListener C;
    public boolean C0;
    public MyTouchListener D;
    public final Runnable D0;
    public int E;
    public boolean F;
    public boolean G;
    public boolean H;
    public boolean I;
    public boolean J;
    public int K;
    public DialogSeekAudio.DialogSeekListener L;
    public int M;
    public int N;
    public Paint O;
    public Paint P;
    public Drawable Q;
    public int R;
    public int S;
    public int T;
    public int U;
    public int V;
    public int W;
    public int a0;
    public int b0;
    public int c0;
    public int d0;
    public int e0;
    public int f0;
    public int g0;
    public int h0;
    public int i0;
    public int j0;
    public int k0;
    public int l0;
    public int m0;
    public ValueAnimator n0;
    public Paint o0;
    public RectF p0;
    public float q0;
    public Paint r0;
    public RectF s0;
    public String t0;
    public Paint u0;
    public Rect v0;
    public float w0;
    public float x0;
    public float y0;
    public float z0;

    /* loaded from: classes3.dex */
    public interface MyCaptureListener {
        void a();
    }

    /* loaded from: classes3.dex */
    public interface MyTouchListener {
        boolean g(float f, float f2, int i);
    }

    public MyWebCoord(WebViewActivity webViewActivity) {
        super(webViewActivity, null);
        this.D0 = new Runnable() { // from class: com.mycompany.app.view.MyWebCoord.5
            @Override // java.lang.Runnable
            public final void run() {
                MyWebCoord myWebCoord = MyWebCoord.this;
                myWebCoord.C0 = false;
                if (myWebCoord.n0 != null) {
                    myWebCoord.setValAnimMove(myWebCoord.B0);
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValAnimMove(float f) {
        float f2 = f / this.A0;
        int round = Math.round(this.e0 - ((r0 - this.c0) * f2));
        int round2 = Math.round(this.f0 - ((r1 - this.d0) * f2));
        if (round == this.i0 && round2 == this.j0) {
            return;
        }
        E(round, round2);
    }

    public final void A() {
        if (this.Q != null) {
            this.Q = null;
            this.O = null;
            this.P = null;
            this.n0 = null;
            invalidate();
            DialogSeekAudio.DialogSeekListener dialogSeekListener = this.L;
            if (dialogSeekListener != null) {
                dialogSeekListener.a(this.m0);
            }
        }
    }

    public final void B() {
        if (this.o0 == null) {
            return;
        }
        this.o0 = null;
        this.p0 = null;
        this.r0 = null;
        this.s0 = null;
        this.t0 = null;
        this.u0 = null;
        this.v0 = null;
        invalidate();
    }

    public final boolean C() {
        if (this.K == 1) {
            return false;
        }
        return this.I;
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x004c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x004d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void D(com.mycompany.app.web.WebNestView r7, long r8, com.mycompany.app.view.MyWebCoord.MyCaptureListener r10) {
        /*
            r6 = this;
            r0 = 0
            if (r7 == 0) goto L47
            int r1 = r7.computeVerticalScrollRange()     // Catch: java.lang.Exception -> L47
            int r7 = r7.getWidth()     // Catch: java.lang.Exception -> L48
            if (r7 != 0) goto L11
            int r7 = r6.getWidth()     // Catch: java.lang.Exception -> L48
        L11:
            r2 = 0
            int r2 = (r8 > r2 ? 1 : (r8 == r2 ? 0 : -1))
            if (r2 <= 0) goto L20
            long r2 = (long) r7     // Catch: java.lang.Exception -> L48
            r4 = 32
            long r2 = r2 * r4
            long r8 = r8 / r2
            int r8 = (int) r8     // Catch: java.lang.Exception -> L48
            if (r1 <= r8) goto L20
            r1 = r8
        L20:
            int r8 = r7 * r1
            int r9 = com.mycompany.app.main.MainUtil.o2()     // Catch: java.lang.Exception -> L48
            int r9 = r9 * r9
            if (r8 < r9) goto L2e
            int r1 = r9 / r7
            int r7 = r1 / 10
            int r1 = r1 - r7
        L2e:
            int r7 = r6.getHeight()     // Catch: java.lang.Exception -> L48
            if (r1 > r7) goto L48
            r6.C = r10     // Catch: java.lang.Exception -> L48
            r6.E = r0     // Catch: java.lang.Exception -> L48
            r6.F = r0     // Catch: java.lang.Exception -> L48
            r6.G = r0     // Catch: java.lang.Exception -> L48
            r6.H = r0     // Catch: java.lang.Exception -> L48
            com.mycompany.app.view.MyWebCoord$1 r7 = new com.mycompany.app.view.MyWebCoord$1     // Catch: java.lang.Exception -> L48
            r7.<init>()     // Catch: java.lang.Exception -> L48
            r6.post(r7)     // Catch: java.lang.Exception -> L48
            return
        L47:
            r1 = r0
        L48:
            int r7 = r6.E
            if (r7 != r1) goto L4d
            return
        L4d:
            r6.E = r1
            if (r1 <= 0) goto L5b
            r6.C = r10
            r7 = 1
            r6.F = r7
            r6.G = r0
            r6.H = r0
            goto L64
        L5b:
            r7 = 0
            r6.C = r7
            r6.F = r0
            r6.G = r0
            r6.H = r0
        L64:
            com.mycompany.app.view.MyWebCoord$2 r7 = new com.mycompany.app.view.MyWebCoord$2
            r7.<init>()
            r6.post(r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.view.MyWebCoord.D(com.mycompany.app.web.WebNestView, long, com.mycompany.app.view.MyWebCoord$MyCaptureListener):void");
    }

    public final void E(int i, int i2) {
        Drawable drawable = this.Q;
        if (drawable == null) {
            return;
        }
        int i3 = this.V;
        int i4 = i + i3;
        int i5 = this.a0;
        if (i4 > i5) {
            i = i5 - i3;
        }
        int i6 = this.W;
        int i7 = i2 + i6;
        int i8 = this.b0;
        if (i7 > i8) {
            i2 = i8 - i6;
        }
        if (i < 0) {
            i = 0;
        }
        if (i2 < 0) {
            i2 = 0;
        }
        this.i0 = i;
        this.j0 = i2;
        int i9 = this.M;
        int i10 = this.g0;
        this.k0 = i + i9 + i10;
        int i11 = this.h0;
        this.l0 = i9 + i2 + i11;
        int i12 = this.N;
        int i13 = (MainApp.g1 - i12) / 2;
        int i14 = i + i13 + i10;
        int i15 = i13 + i2 + i11;
        drawable.setBounds(i14, i15, i14 + i12, i12 + i15);
        invalidate();
    }

    public final void F(float f, boolean z) {
        int i;
        int i2;
        if (z) {
            f = getWidth() - f;
        }
        float f2 = 0.0f;
        if (f < 0.0f) {
            f2 = -1.0f;
        } else {
            int i3 = MainApp.f1;
            if (f < i3) {
                f2 = (f / i3) - 1.0f;
            }
        }
        if (this.o0 != null) {
            float f3 = this.q0 * f2;
            this.y0 = f3;
            if (z) {
                this.y0 = -f3;
            }
            if (Float.compare(this.z0, this.y0) != 0) {
                this.z0 = this.y0;
                invalidate();
                return;
            }
            return;
        }
        Paint paint = new Paint();
        this.o0 = paint;
        paint.setAntiAlias(true);
        this.o0.setStyle(Paint.Style.FILL);
        Paint paint2 = this.o0;
        if (MainApp.L1) {
            i = -14606047;
        } else {
            i = -16777216;
        }
        paint2.setColor(i);
        float f4 = MainApp.n1;
        Paint paint3 = new Paint();
        this.r0 = paint3;
        paint3.setAntiAlias(true);
        this.r0.setStyle(Paint.Style.STROKE);
        this.r0.setStrokeWidth(f4);
        this.r0.setColor(-5197648);
        Paint paint4 = new Paint();
        this.u0 = paint4;
        paint4.setAntiAlias(true);
        Paint paint5 = this.u0;
        if (MainApp.L1) {
            i2 = -328966;
        } else {
            i2 = -1;
        }
        paint5.setColor(i2);
        this.u0.setTextSize(MainApp.E1);
        this.p0 = new RectF();
        this.s0 = new RectF();
        this.v0 = new Rect();
        String string = getContext().getString(R.string.delete_tab);
        this.t0 = string;
        this.u0.getTextBounds(string, 0, string.length(), this.v0);
        float width = this.v0.width() / 2.0f;
        float height = this.v0.height() / 2.0f;
        float f5 = MainApp.E1 + width;
        int i4 = MainApp.F1;
        float f6 = i4 + height;
        float f7 = f5 - i4;
        float height2 = getHeight() / 2.0f;
        if (z) {
            f7 = getWidth() - f7;
            this.p0.set(f7 - f5, height2 - f6, f7 + f5 + MainApp.F1, f6 + height2);
        } else {
            this.p0.set((f7 - f5) - MainApp.F1, height2 - f6, f7 + f5, f6 + height2);
        }
        float f8 = f5 * 2.0f;
        this.q0 = f8;
        RectF rectF = this.s0;
        RectF rectF2 = this.p0;
        rectF.left = rectF2.left + f4;
        rectF.top = rectF2.top + f4;
        rectF.right = rectF2.right + f4;
        rectF.bottom = rectF2.bottom + f4;
        Rect rect = this.v0;
        this.w0 = (f7 - width) - rect.left;
        this.x0 = (height2 - height) - rect.top;
        float f9 = f8 * f2;
        this.y0 = f9;
        if (z) {
            this.y0 = -f9;
        }
        float f10 = this.y0;
        this.z0 = f10;
        if (Math.abs(f10) < this.q0) {
            invalidate();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (this.F && this.G) {
            this.F = false;
            this.G = false;
            this.H = true;
            invalidate();
        } else if (this.H) {
            this.F = false;
            this.G = false;
            this.H = false;
            post(new Runnable() { // from class: com.mycompany.app.view.MyWebCoord.7
                @Override // java.lang.Runnable
                public final void run() {
                    MyWebCoord myWebCoord = MyWebCoord.this;
                    MyCaptureListener myCaptureListener = myWebCoord.C;
                    if (myCaptureListener != null) {
                        myCaptureListener.a();
                        myWebCoord.C = null;
                    }
                }
            });
        }
        if (this.Q != null) {
            Paint paint = this.O;
            if (paint != null) {
                canvas.drawCircle(this.k0, this.l0, this.N, paint);
            }
            Paint paint2 = this.P;
            if (paint2 != null) {
                canvas.drawCircle(this.k0, this.l0, this.N - (MainApp.n1 / 2.0f), paint2);
            }
            this.Q.draw(canvas);
        }
        if (this.o0 != null && this.p0 != null && this.r0 != null && this.s0 != null && this.u0 != null && this.v0 != null && Math.abs(this.y0) < this.q0) {
            canvas.translate(this.y0, 0.0f);
            RectF rectF = this.p0;
            float f = MainApp.E1;
            canvas.drawRoundRect(rectF, f, f, this.o0);
            RectF rectF2 = this.s0;
            float f2 = MainApp.E1;
            canvas.drawRoundRect(rectF2, f2, f2, this.r0);
            canvas.drawText(this.t0, this.w0, this.x0, this.u0);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked != 2) {
                    if (actionMasked != 3) {
                        if (actionMasked == 5) {
                            z();
                        }
                    }
                } else {
                    if (this.Q != null) {
                        float x = motionEvent.getX();
                        float y = motionEvent.getY();
                        if (MainUtil.I0(this.R, x, this.S, y) >= MainApp.G1 / 2.0f) {
                            this.R = Math.round(x);
                            int round = Math.round(y);
                            this.S = round;
                            E(this.R + this.T, round + this.U);
                        }
                    }
                    if (this.I && this.K != 2 && PrefZone.z && this.D != null && this.D.g(motionEvent.getX(), motionEvent.getY(), actionMasked)) {
                        this.K = 1;
                    }
                }
            }
            if (this.Q != null && this.n0 == null) {
                int round2 = Math.round(this.a0 / 3.0f);
                int i = this.i0;
                this.c0 = i;
                this.d0 = this.j0;
                int i2 = i + this.M;
                if (i2 < round2) {
                    this.m0 = 1;
                    this.e0 = MainApp.G1;
                } else {
                    int i3 = this.a0;
                    if (i2 > i3 - round2) {
                        this.m0 = 3;
                        this.e0 = (i3 - this.V) - MainApp.G1;
                    } else {
                        this.m0 = 2;
                        this.e0 = Math.round((i3 - this.V) / 2.0f);
                    }
                }
                int i4 = (this.b0 - this.W) - MainApp.F1;
                this.f0 = i4;
                float I0 = MainUtil.I0(this.c0, this.e0, this.d0, i4);
                if (I0 <= 0.0f) {
                    A();
                } else {
                    this.A0 = I0;
                    this.B0 = I0;
                    this.C0 = false;
                    ValueAnimator ofFloat = ValueAnimator.ofFloat(I0, 0.0f);
                    this.n0 = ofFloat;
                    ofFloat.setDuration((I0 * 400.0f) / Math.min(this.a0, this.b0));
                    this.n0.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.view.MyWebCoord.3
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                            MyWebCoord myWebCoord = MyWebCoord.this;
                            if (myWebCoord.n0 != null) {
                                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                                if (myWebCoord.n0 != null) {
                                    myWebCoord.B0 = floatValue;
                                    if (myWebCoord.C0) {
                                        return;
                                    }
                                    myWebCoord.C0 = true;
                                    MainApp.N(myWebCoord.getContext(), myWebCoord.D0);
                                }
                            }
                        }
                    });
                    this.n0.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.view.MyWebCoord.4
                        @Override // android.animation.Animator.AnimatorListener
                        public final void onAnimationCancel(Animator animator) {
                            MyWebCoord myWebCoord = MyWebCoord.this;
                            if (myWebCoord.n0 == null) {
                                return;
                            }
                            myWebCoord.n0 = null;
                            myWebCoord.A();
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public final void onAnimationEnd(Animator animator) {
                            final MyWebCoord myWebCoord = MyWebCoord.this;
                            if (myWebCoord.n0 == null) {
                                return;
                            }
                            MainApp.N(myWebCoord.getContext(), new Runnable() { // from class: com.mycompany.app.view.MyWebCoord.6
                                @Override // java.lang.Runnable
                                public final void run() {
                                    MyWebCoord myWebCoord2 = MyWebCoord.this;
                                    if (myWebCoord2.n0 == null) {
                                        return;
                                    }
                                    myWebCoord2.n0 = null;
                                    myWebCoord2.A();
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
                    this.n0.start();
                }
            }
            if (this.I && this.K != 2 && PrefZone.z && this.D != null) {
                this.D.g(motionEvent.getX(), motionEvent.getY(), actionMasked);
            }
            this.I = false;
            this.J = false;
            this.K = 0;
        } else {
            float x2 = motionEvent.getX();
            float y2 = motionEvent.getY();
            this.R = Math.round(x2);
            this.S = Math.round(y2);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        int i3 = this.E;
        if (i3 > 0) {
            this.G = true;
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(i3, 1073741824));
        } else {
            this.G = false;
            super.onMeasure(i, i2);
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            if (PrefWeb.t) {
                this.J = true;
            } else {
                if (motionEvent.getY() > MainApp.E1) {
                    z = true;
                } else {
                    z = false;
                }
                this.J = z;
            }
            if (this.J && !this.I) {
                this.I = true;
                this.K = 0;
                return true;
            }
        } else if (actionMasked == 2 && this.J && !this.I) {
            this.I = true;
            this.K = 0;
        }
        return true;
    }

    public void setMoveListener(DialogSeekAudio.DialogSeekListener dialogSeekListener) {
        this.L = dialogSeekListener;
    }

    public void setTouchListener(MyTouchListener myTouchListener) {
        this.D = myTouchListener;
    }

    public final void z() {
        MyTouchListener myTouchListener;
        if (!this.I) {
            return;
        }
        if (this.K == 1 && PrefZone.z && (myTouchListener = this.D) != null) {
            myTouchListener.g(0.0f, 0.0f, 3);
        }
        this.K = 2;
    }
}
