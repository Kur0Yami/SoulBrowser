package com.mycompany.app.view;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.widget.RelativeLayout;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;

/* loaded from: classes3.dex */
public class MyLineRelative extends RelativeLayout {

    /* renamed from: c, reason: collision with root package name */
    public boolean f18842c;
    public boolean f;
    public boolean g;
    public boolean h;
    public int i;
    public float j;
    public Paint k;
    public Paint l;
    public float m;
    public float n;
    public boolean o;
    public boolean p;
    public AnimatorSet q;
    public int r;
    public int s;
    public int t;
    public boolean u;
    public final Runnable v;

    public MyLineRelative(Context context) {
        super(context);
        this.v = new Runnable() { // from class: com.mycompany.app.view.MyLineRelative.4
            @Override // java.lang.Runnable
            public final void run() {
                MyLineRelative myLineRelative = MyLineRelative.this;
                myLineRelative.u = false;
                if (myLineRelative.q != null) {
                    myLineRelative.setValAnimator(myLineRelative.t);
                }
            }
        };
        this.f18842c = true;
        this.p = MainApp.K1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValAnimator(int i) {
        this.s = i;
        invalidate();
    }

    public final void b(int i) {
        int i2;
        this.f = true;
        this.h = true;
        this.i = i;
        if (MainApp.K1) {
            i2 = -12632257;
        } else {
            i2 = -2434342;
        }
        this.j = 0.5f;
        Paint paint = new Paint();
        this.k = paint;
        paint.setAntiAlias(true);
        this.k.setStyle(Paint.Style.STROKE);
        this.k.setColor(i2);
        this.k.setStrokeWidth(1.0f);
    }

    public final void c(int i) {
        int i2;
        this.f = true;
        this.g = true;
        this.i = i;
        if (MainApp.K1) {
            i2 = -12632257;
        } else {
            i2 = -2434342;
        }
        this.j = 0.5f;
        Paint paint = new Paint();
        this.k = paint;
        paint.setAntiAlias(true);
        this.k.setStyle(Paint.Style.STROKE);
        this.k.setColor(i2);
        this.k.setStrokeWidth(1.0f);
    }

    public final void d(int i) {
        int i2;
        this.f = true;
        this.g = true;
        this.h = true;
        this.i = i;
        if (MainApp.K1) {
            i2 = -12632257;
        } else {
            i2 = -2434342;
        }
        this.j = 0.5f;
        Paint paint = new Paint();
        this.k = paint;
        paint.setAntiAlias(true);
        this.k.setStyle(Paint.Style.STROKE);
        this.k.setColor(i2);
        this.k.setStrokeWidth(1.0f);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        int i;
        if (this.f18842c) {
            super.dispatchDraw(canvas);
            if (this.q != null) {
                canvas.drawColor((this.r & 16777215) | (this.s << 24));
            }
            if (this.f && this.k != null) {
                int width = getWidth();
                int height = getHeight();
                boolean z = this.p;
                boolean z2 = MainApp.K1;
                if (z != z2) {
                    this.p = z2;
                    try {
                        Paint paint = this.k;
                        if (z2) {
                            i = -12632257;
                        } else {
                            i = -2434342;
                        }
                        paint.setColor(i);
                    } catch (Exception unused) {
                    }
                }
                if (this.g) {
                    int i2 = this.i;
                    float f = this.j;
                    canvas.drawLine(i2, f, width - i2, f, this.k);
                }
                if (this.h) {
                    int i3 = this.i;
                    float f2 = height - this.j;
                    canvas.drawLine(i3, f2, width - i3, f2, this.k);
                }
            }
            Paint paint2 = this.l;
            if (paint2 != null) {
                if (this.o) {
                    float width2 = getWidth();
                    float f3 = this.n;
                    canvas.drawCircle(width2 - f3, f3 * 2.0f, this.m, this.l);
                } else {
                    float f4 = this.n;
                    canvas.drawCircle(f4, 2.0f * f4, this.m, paint2);
                }
            }
        }
    }

    public final void e() {
        AnimatorSet animatorSet = this.q;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.q = null;
        }
        this.f18842c = false;
        this.k = null;
        this.l = null;
    }

    public final void f() {
        int i;
        AnimatorSet animatorSet = this.q;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        if (MainApp.K1) {
            i = -10395295;
        } else {
            i = -5854742;
        }
        this.r = i;
        this.s = 0;
        this.t = 0;
        this.u = false;
        ValueAnimator ofInt = ValueAnimator.ofInt(0, 140);
        ValueAnimator ofInt2 = ValueAnimator.ofInt(140, 0);
        ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.view.MyLineRelative.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                MyLineRelative myLineRelative = MyLineRelative.this;
                if (myLineRelative.q != null) {
                    int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                    if (myLineRelative.q != null) {
                        myLineRelative.t = intValue;
                        if (myLineRelative.u) {
                            return;
                        }
                        myLineRelative.u = true;
                        MainApp.N(myLineRelative.getContext(), myLineRelative.v);
                    }
                }
            }
        });
        ofInt2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.view.MyLineRelative.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                MyLineRelative myLineRelative = MyLineRelative.this;
                if (myLineRelative.q != null) {
                    int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                    if (myLineRelative.q != null) {
                        myLineRelative.t = intValue;
                        if (myLineRelative.u) {
                            return;
                        }
                        myLineRelative.u = true;
                        MainApp.N(myLineRelative.getContext(), myLineRelative.v);
                    }
                }
            }
        });
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.q = animatorSet2;
        animatorSet2.setDuration(1400L);
        this.q.playSequentially(ofInt, ofInt2);
        this.q.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.view.MyLineRelative.3
            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationCancel(Animator animator) {
                MyLineRelative myLineRelative = MyLineRelative.this;
                if (myLineRelative.q == null) {
                    return;
                }
                myLineRelative.q = null;
                myLineRelative.invalidate();
            }

            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                final MyLineRelative myLineRelative = MyLineRelative.this;
                if (myLineRelative.q == null) {
                    return;
                }
                MainApp.N(myLineRelative.getContext(), new Runnable() { // from class: com.mycompany.app.view.MyLineRelative.5
                    @Override // java.lang.Runnable
                    public final void run() {
                        MyLineRelative myLineRelative2 = MyLineRelative.this;
                        if (myLineRelative2.q == null) {
                            return;
                        }
                        myLineRelative2.q = null;
                        myLineRelative2.setValAnimator(0);
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
        this.q.start();
    }

    @Override // android.view.View
    public final void invalidate() {
        if (!this.f18842c) {
            return;
        }
        super.invalidate();
    }

    public void setDrawLine(boolean z) {
        if (this.f == z) {
            return;
        }
        this.f = z;
        invalidate();
    }

    public void setLinePad(int i) {
        if (this.i == i) {
            return;
        }
        this.i = i;
        invalidate();
    }

    public void setNoti(boolean z) {
        if (z) {
            if (this.l == null) {
                Paint paint = new Paint();
                this.l = paint;
                paint.setAntiAlias(true);
                this.l.setStyle(Paint.Style.FILL);
                this.l.setColor(-65536);
                Context context = getContext();
                this.o = MainUtil.O5(context);
                this.m = MainUtil.G(context, 3.0f);
                this.n = MainUtil.G(context, 9.0f);
                invalidate();
                return;
            }
            return;
        }
        if (this.l != null) {
            this.l = null;
            invalidate();
        }
    }
}
