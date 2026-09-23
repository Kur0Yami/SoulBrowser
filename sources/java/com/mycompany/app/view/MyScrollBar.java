package com.mycompany.app.view;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefZone;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyFadeView;
import com.mycompany.app.web.WebViewActivity;

/* loaded from: classes3.dex */
public class MyScrollBar extends MyFadeView {
    public int A;
    public float B;
    public int C;
    public float D;
    public float E;
    public int F;
    public float G;
    public float H;
    public float I;
    public float J;
    public float K;
    public boolean L;
    public boolean M;
    public boolean N;
    public int O;
    public int P;
    public boolean Q;
    public boolean R;
    public boolean S;
    public ScrollBarListener T;
    public Drawable U;
    public int V;
    public int W;
    public boolean a0;
    public int b0;
    public int c0;
    public float d0;
    public int e0;
    public boolean f0;
    public int g0;
    public int h0;
    public Paint i0;
    public RectF j0;
    public int k0;
    public int l0;
    public Paint m0;
    public ValueAnimator n0;
    public ValueAnimator o0;
    public float p0;
    public RectF q0;
    public boolean r0;
    public float s0;
    public boolean t0;
    public final Runnable u0;
    public float v0;
    public boolean w0;
    public int x;
    public final Runnable x0;
    public int y;
    public int z;

    /* loaded from: classes3.dex */
    public interface ScrollBarListener {
        void c(int i);

        int d();

        void e();

        int f();

        int g();
    }

    public MyScrollBar(Context context) {
        super(context);
        this.u0 = new Runnable() { // from class: com.mycompany.app.view.MyScrollBar.3
            @Override // java.lang.Runnable
            public final void run() {
                MyScrollBar myScrollBar = MyScrollBar.this;
                myScrollBar.t0 = false;
                if (myScrollBar.n0 != null) {
                    myScrollBar.setValPreScaleUp(myScrollBar.s0);
                }
            }
        };
        this.x0 = new Runnable() { // from class: com.mycompany.app.view.MyScrollBar.7
            @Override // java.lang.Runnable
            public final void run() {
                MyScrollBar myScrollBar = MyScrollBar.this;
                myScrollBar.w0 = false;
                if (myScrollBar.o0 != null) {
                    myScrollBar.setValPreScaleDn(myScrollBar.v0);
                }
            }
        };
        i(context, false);
    }

    private void setScrollPos(float f) {
        float f2;
        int height;
        if (this.a0) {
            this.a0 = false;
            return;
        }
        boolean z = this.Q;
        if (z) {
            f2 = this.B;
        } else {
            f2 = this.G;
        }
        if (z) {
            height = getWidth();
        } else {
            height = getHeight();
        }
        int min = Math.min(Math.max(Math.round(this.O + f2), Math.round(f)), Math.round((height - this.P) - f2));
        this.c0 = min;
        if (min == this.b0) {
            f(true);
            return;
        }
        this.b0 = min;
        this.f0 = true;
        invalidate();
        f(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValPreScaleDn(float f) {
        if (this.T == null) {
            return;
        }
        this.p0 = f;
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValPreScaleUp(float f) {
        if (this.T == null) {
            return;
        }
        this.p0 = f;
        invalidate();
    }

    public final void i(Context context, boolean z) {
        boolean z2;
        this.M = true;
        if (z) {
            this.f = true;
            this.O = MainUtil.H3();
            if (PrefZone.x == 1) {
                this.N = true;
            }
            z2 = true;
        } else {
            z2 = false;
        }
        setShowTime(1000);
        setTouchable(true);
        setAutoHide(true);
        setInvisible(true);
        this.b0 = -1;
        this.e0 = -1;
        if (z2) {
            this.R = true;
            this.S = true;
        } else {
            this.L = MainUtil.O5(context);
        }
    }

    @Override // com.mycompany.app.view.MyFadeView, android.view.View
    public final void invalidate() {
        if (!this.M) {
            return;
        }
        super.invalidate();
    }

    public final boolean j() {
        return this.r0;
    }

    public final void k() {
        this.M = false;
        this.f18761c = false;
        ValueAnimator valueAnimator = this.i;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.i = null;
        }
        ValueAnimator valueAnimator2 = this.j;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
            this.j = null;
        }
        this.q = null;
        MyFadeView.EventHandler eventHandler = this.k;
        if (eventHandler != null) {
            eventHandler.removeMessages(0);
            this.k = null;
        }
        ValueAnimator valueAnimator3 = this.n0;
        if (valueAnimator3 != null) {
            valueAnimator3.cancel();
            this.n0 = null;
        }
        ValueAnimator valueAnimator4 = this.o0;
        if (valueAnimator4 != null) {
            valueAnimator4.cancel();
            this.o0 = null;
        }
        this.T = null;
        this.U = null;
        this.i0 = null;
        this.m0 = null;
        this.j0 = null;
        this.q0 = null;
    }

    public final void l() {
        int i;
        int i2;
        Paint paint = this.i0;
        if (paint != null && this.m0 != null) {
            boolean z = MainApp.K1;
            if (z) {
                i = -328966;
            } else {
                i = -5854742;
            }
            this.g0 = i;
            if (z) {
                i2 = -12632257;
            } else {
                i2 = -2434342;
            }
            this.k0 = i2;
            paint.setColor(i);
            this.m0.setColor(this.k0);
            this.m0.setAlpha(this.l0);
        }
    }

    public final void m(float f, boolean z) {
        int i;
        int i2;
        float f2;
        int height;
        float f3;
        int min;
        ScrollBarListener scrollBarListener = this.T;
        if (scrollBarListener != null) {
            if (this.R) {
                i = scrollBarListener.f() - this.T.g();
            } else {
                i = (this.W - this.V) + 1;
            }
            if (i > 0) {
                boolean z2 = this.Q;
                if (z2) {
                    i2 = this.A;
                } else {
                    i2 = this.F;
                }
                if (z2) {
                    f2 = this.B;
                } else {
                    f2 = this.G;
                }
                if (z2) {
                    height = getWidth();
                } else {
                    height = getHeight();
                }
                int i3 = this.O;
                int i4 = height - ((this.P + i3) + i2);
                if (i4 > 0) {
                    float f4 = f - (i3 + f2);
                    if (f4 <= 0.0f) {
                        f3 = 0.0f;
                    } else {
                        float f5 = i4;
                        if (f4 >= f5) {
                            f3 = 1.0f;
                        } else {
                            f3 = f4 / f5;
                        }
                    }
                    if (this.R) {
                        min = Math.round(i * f3);
                    } else {
                        float f6 = i;
                        min = Math.min(Math.max(Math.round(0.0f), Math.round(f6 * f3)), Math.round(f6));
                    }
                    float f7 = this.d0;
                    if (f3 >= f7 || min <= this.e0) {
                        if (f3 <= f7 || min >= this.e0) {
                            this.d0 = f3;
                            if (min != this.e0) {
                                this.e0 = min;
                                if (z) {
                                    this.T.c(min);
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    public final void n() {
        this.R = true;
        this.S = true;
        this.L = false;
    }

    public final void o() {
        p(this.V, this.W);
    }

    @Override // com.mycompany.app.view.MyFadeView, android.view.View
    public final void onDetachedFromWindow() {
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
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        float f;
        float f2;
        float f3;
        float f4;
        float f5;
        if (this.M && this.T != null) {
            boolean z = false;
            if (this.f0) {
                this.f0 = false;
                Drawable drawable = this.U;
                int i = this.c0;
                if (drawable != null) {
                    if (this.Q) {
                        int round = Math.round(i - this.B);
                        int i2 = this.A + round;
                        int height = getHeight();
                        int i3 = this.C;
                        int i4 = (height - i3) / 2;
                        drawable.setBounds(round, i4, i2, i3 + i4);
                    } else {
                        int width = getWidth();
                        int round2 = Math.round(i - this.G);
                        drawable.setBounds(0, round2, width, this.F + round2);
                    }
                }
            }
            if (this.n0 != null || this.o0 != null) {
                z = true;
            }
            if (this.Q) {
                Paint paint = this.i0;
                if (paint != null) {
                    if (!this.r0 && !z) {
                        paint.setAlpha(this.h0);
                        canvas.drawCircle(this.c0, getHeight() / 2.0f, this.D, this.i0);
                    } else if (z) {
                        int round3 = Math.round((1.0f - this.p0) * this.h0 * 5.0f);
                        int i5 = this.h0;
                        if (round3 > i5) {
                            round3 = i5;
                        }
                        this.i0.setAlpha(round3);
                        canvas.drawCircle(this.c0, getHeight() / 2.0f, this.D, this.i0);
                    }
                }
                Paint paint2 = this.m0;
                if (paint2 != null && (this.r0 || z)) {
                    paint2.setAlpha(Math.round((this.p0 - 0.8f) * this.l0 * 5.0f));
                    float f6 = this.c0;
                    float height2 = getHeight() / 2.0f;
                    canvas.save();
                    float f7 = this.p0;
                    canvas.scale(f7, f7, f6, height2);
                    canvas.drawCircle(f6, height2, MainApp.k1, this.m0);
                    canvas.restore();
                }
            } else {
                Paint paint3 = this.i0;
                if (paint3 != null && this.j0 != null) {
                    if (!this.r0 && !z) {
                        paint3.setAlpha(this.h0);
                        if (!this.N && !this.L) {
                            f4 = getWidth();
                            f5 = this.J;
                        } else {
                            f4 = this.J;
                            f5 = this.y;
                        }
                        float f8 = f4 - f5;
                        float f9 = this.c0 - this.H;
                        this.j0.set(f8, f9, this.y + f8, this.z + f9);
                        RectF rectF = this.j0;
                        float f10 = this.x;
                        canvas.drawRoundRect(rectF, f10, f10, this.i0);
                    } else if (z) {
                        int round4 = Math.round((1.0f - this.p0) * this.h0 * 5.0f);
                        int i6 = this.h0;
                        if (round4 > i6) {
                            round4 = i6;
                        }
                        this.i0.setAlpha(round4);
                        if (!this.N && !this.L) {
                            f2 = getWidth();
                            f3 = this.J;
                        } else {
                            f2 = this.J;
                            f3 = this.y;
                        }
                        float f11 = f2 - f3;
                        float f12 = this.c0 - this.H;
                        this.j0.set(f11, f12, this.y + f11, this.z + f12);
                        RectF rectF2 = this.j0;
                        float f13 = this.x;
                        canvas.drawRoundRect(rectF2, f13, f13, this.i0);
                    }
                }
                Paint paint4 = this.m0;
                if (paint4 != null && this.q0 != null && (this.r0 || z)) {
                    paint4.setAlpha(Math.round((this.p0 - 0.8f) * this.l0 * 5.0f));
                    float width2 = getWidth();
                    if (!this.N && !this.L) {
                        f = width2;
                    } else {
                        f = 0.0f;
                    }
                    float f14 = this.c0;
                    canvas.save();
                    float f15 = this.p0;
                    canvas.scale(f15, f15, f, f14);
                    float f16 = this.K;
                    this.q0.set(f - width2, f14 - f16, f + width2, f14 + f16);
                    canvas.drawOval(this.q0, this.m0);
                    canvas.restore();
                }
            }
            Drawable drawable2 = this.U;
            if (drawable2 != null) {
                drawable2.draw(canvas);
            }
        }
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        p(this.V, this.W);
        super.onSizeChanged(i, i2, i3, i4);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x001a, code lost:
    
        if (r0 != 3) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00a9, code lost:
    
        if (r10 > (r0 + r7)) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00e3, code lost:
    
        r9.r0 = true;
        f(true);
        setScrollPos(r10);
        m(r10, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00f0, code lost:
    
        if (r9.T != null) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00f5, code lost:
    
        if (r9.n0 == null) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00f8, code lost:
    
        r9.p0 = 0.8f;
        r9.s0 = 0.8f;
        r9.t0 = false;
        r10 = android.animation.ValueAnimator.ofFloat(0.8f, 1.0f);
        r9.n0 = r10;
        r10.setDuration(200L);
        com.mycompany.app.dialog.a.v(r9.n0);
        r9.n0.addUpdateListener(new com.mycompany.app.view.MyScrollBar.AnonymousClass1(r9));
        r9.n0.addListener(new com.mycompany.app.view.MyScrollBar.AnonymousClass2(r9));
        r10 = r9.o0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0127, code lost:
    
        if (r10 == null) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0129, code lost:
    
        r10.cancel();
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x012c, code lost:
    
        r9.n0.start();
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0131, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00e0, code lost:
    
        if (r10 > (r0 + r7)) goto L63;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouchEvent(android.view.MotionEvent r10) {
        /*
            Method dump skipped, instructions count: 314
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.view.MyScrollBar.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public final void p(int i, int i2) {
        int i3;
        float f;
        int height;
        float f2;
        if (this.T != null) {
            if (!this.R) {
                this.V = i;
                this.W = i2;
                if (i2 == 0) {
                    d(false);
                    return;
                }
            }
            boolean z = this.Q;
            if (z) {
                i3 = this.A;
            } else {
                i3 = this.F;
            }
            if (z) {
                f = this.B;
            } else {
                f = this.G;
            }
            if (z) {
                height = getWidth();
            } else {
                height = getHeight();
            }
            int i4 = height - ((this.O + this.P) + i3);
            if (i4 <= 0) {
                d(false);
                return;
            }
            int f3 = this.T.f() - this.T.g();
            if (f3 <= 0) {
                d(false);
                return;
            }
            if (this.r0) {
                return;
            }
            int d = this.T.d();
            if (d <= 0) {
                f2 = 0.0f;
            } else if (d >= f3) {
                f2 = 1.0f;
            } else {
                f2 = d / f3;
            }
            setScrollPos((i4 * f2) + this.O + f);
            e();
        }
    }

    public void setListener(ScrollBarListener scrollBarListener) {
        int i;
        int i2;
        int i3;
        Context context = getContext();
        this.T = scrollBarListener;
        if (this.Q) {
            int i4 = MainApp.g1;
            this.A = i4;
            float f = i4 / 2.0f;
            this.B = f;
            int i5 = MainApp.j1;
            this.C = i5 * 2;
            this.D = i5;
            this.E = f + MainApp.C1;
            this.U = MainUtil.S(context, R.drawable.outline_integration_instructions_2_white_24);
            this.g0 = -1593835520;
            this.k0 = -1586137739;
            Paint paint = new Paint();
            this.i0 = paint;
            paint.setAntiAlias(true);
            Paint paint2 = this.i0;
            Paint.Style style = Paint.Style.FILL;
            paint2.setStyle(style);
            this.i0.setColor(this.g0);
            Paint paint3 = new Paint();
            this.m0 = paint3;
            paint3.setAntiAlias(true);
            this.m0.setStyle(style);
            this.m0.setColor(this.k0);
            this.h0 = this.i0.getAlpha();
            this.l0 = this.m0.getAlpha();
            return;
        }
        this.x = MainApp.F1;
        this.y = MainApp.G1 * 3;
        this.z = MainApp.E1 * 2;
        if (this.S) {
            i = (int) MainUtil.G(context, 32.0f);
        } else {
            i = MainApp.g1;
        }
        int i6 = MainApp.f1;
        this.F = i6;
        float f2 = i6 / 2.0f;
        this.G = f2;
        this.H = this.z / 2.0f;
        float f3 = f2 + MainApp.C1;
        this.I = f3;
        this.J = ((i - r4) / 2.0f) + this.y;
        this.K = f3 * 2.0f;
        this.U = MainUtil.S(context, R.drawable.outline_unfold_more_2_white_36);
        if (this.S) {
            this.g0 = -1582979675;
        } else {
            if (MainApp.K1) {
                i2 = -328966;
            } else {
                i2 = -5854742;
            }
            this.g0 = i2;
        }
        if (MainApp.K1) {
            i3 = -12632257;
        } else {
            i3 = -2434342;
        }
        this.k0 = i3;
        this.h0 = 161;
        this.l0 = 161;
        Paint paint4 = new Paint();
        this.i0 = paint4;
        paint4.setAntiAlias(true);
        Paint paint5 = this.i0;
        Paint.Style style2 = Paint.Style.FILL;
        paint5.setStyle(style2);
        this.i0.setColor(this.g0);
        Paint paint6 = new Paint();
        this.m0 = paint6;
        paint6.setAntiAlias(true);
        this.m0.setStyle(style2);
        this.m0.setColor(this.k0);
        this.m0.setAlpha(this.l0);
        this.j0 = new RectF();
        this.q0 = new RectF();
    }

    public void setNorColor(int i) {
        Paint paint = this.i0;
        if (paint != null) {
            if (MainApp.K1 && i == -5854742) {
                i = -328966;
            }
            if (this.g0 == i) {
                return;
            }
            this.g0 = i;
            paint.setColor(i);
            invalidate();
        }
    }

    public void setOneItem(boolean z) {
        this.R = z;
    }

    public void setPadBot(int i) {
        this.P = i;
    }

    public void setPadTop(int i) {
        this.O = i;
    }

    public void setPosLeft(boolean z) {
        if (this.N == z) {
            return;
        }
        this.N = z;
        requestLayout();
    }

    public void setPreColor(int i) {
        Paint paint;
        if (this.k0 != i && (paint = this.m0) != null) {
            this.k0 = i;
            paint.setColor(i);
            this.m0.setAlpha(this.l0);
            invalidate();
        }
    }

    @Override // com.mycompany.app.view.MyFadeView, android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        if (i != 0) {
            boolean z = true;
            boolean z2 = false;
            if (this.r0) {
                this.r0 = false;
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
            } else {
                z = z2;
            }
            if (z) {
                invalidate();
            }
        }
    }

    public MyScrollBar(WebViewActivity webViewActivity) {
        super(webViewActivity);
        this.u0 = new Runnable() { // from class: com.mycompany.app.view.MyScrollBar.3
            @Override // java.lang.Runnable
            public final void run() {
                MyScrollBar myScrollBar = MyScrollBar.this;
                myScrollBar.t0 = false;
                if (myScrollBar.n0 != null) {
                    myScrollBar.setValPreScaleUp(myScrollBar.s0);
                }
            }
        };
        this.x0 = new Runnable() { // from class: com.mycompany.app.view.MyScrollBar.7
            @Override // java.lang.Runnable
            public final void run() {
                MyScrollBar myScrollBar = MyScrollBar.this;
                myScrollBar.w0 = false;
                if (myScrollBar.o0 != null) {
                    myScrollBar.setValPreScaleDn(myScrollBar.v0);
                }
            }
        };
        i(webViewActivity, true);
    }
}
