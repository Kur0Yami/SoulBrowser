package com.mycompany.app.view;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.View;
import android.widget.FrameLayout;
import com.mycompany.app.main.MainApp;

/* loaded from: classes3.dex */
public class MyIconFrame extends FrameLayout {
    public boolean A;
    public final Runnable B;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f18795c;
    public float f;
    public float g;
    public boolean h;
    public boolean i;
    public float j;
    public final RectF k;
    public int l;
    public int m;
    public Paint n;
    public ValueAnimator o;
    public ValueAnimator p;
    public float q;
    public boolean r;
    public Paint s;
    public boolean t;
    public View.OnClickListener u;
    public View.OnLongClickListener v;
    public float w;
    public boolean x;
    public final Runnable y;
    public float z;

    /* renamed from: com.mycompany.app.view.MyIconFrame$9, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass9 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    public MyIconFrame(Context context) {
        super(context);
        this.y = new Runnable() { // from class: com.mycompany.app.view.MyIconFrame.3
            @Override // java.lang.Runnable
            public final void run() {
                MyIconFrame myIconFrame = MyIconFrame.this;
                myIconFrame.x = false;
                if (myIconFrame.o != null) {
                    myIconFrame.setValPreScaleUp(myIconFrame.w);
                }
            }
        };
        this.B = new Runnable() { // from class: com.mycompany.app.view.MyIconFrame.7
            @Override // java.lang.Runnable
            public final void run() {
                MyIconFrame myIconFrame = MyIconFrame.this;
                myIconFrame.A = false;
                if (myIconFrame.p != null) {
                    myIconFrame.setValPreScaleDn(myIconFrame.z);
                }
            }
        };
        this.f18795c = true;
        this.k = new RectF();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValPreScaleDn(float f) {
        this.q = f;
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValPreScaleUp(float f) {
        this.q = f;
        invalidate();
    }

    public final void c() {
        boolean z = true;
        boolean z2 = false;
        if (this.t) {
            this.t = false;
            z2 = true;
        }
        ValueAnimator valueAnimator = this.o;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.o = null;
            z2 = true;
        }
        ValueAnimator valueAnimator2 = this.p;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
            this.p = null;
        } else {
            z = z2;
        }
        if (z) {
            invalidate();
        }
    }

    public final void d(int i, int i2) {
        float min = Math.min(this.f, this.g);
        this.j = min;
        RectF rectF = this.k;
        if (rectF == null) {
            return;
        }
        if (this.i) {
            float f = this.f;
            rectF.set(f - min, 0.0f, f + min, i2);
        } else {
            rectF.set(0.0f, 0.0f, i, i2);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        if (!this.f18795c) {
            return;
        }
        if (this.r) {
            Paint paint = this.s;
            if (paint != null && (this.t || this.o != null || this.p != null)) {
                paint.setAlpha(Math.round((this.q - 0.8f) * 128.0f * 5.0f));
                if (this.h && this.k != null) {
                    canvas.save();
                    float f = this.q;
                    canvas.scale(f, f, this.f, this.g);
                    float f2 = MainApp.v1;
                    canvas.drawRoundRect(this.k, f2, f2, this.s);
                    canvas.restore();
                } else {
                    canvas.drawCircle(this.f, this.g, this.j * this.q, this.s);
                }
            }
        } else {
            Paint paint2 = this.n;
            if (paint2 != null && (this.t || this.o != null || this.p != null)) {
                paint2.setAlpha(Math.round((this.q - 0.8f) * this.m * 5.0f));
                if (this.h && this.k != null) {
                    canvas.save();
                    float f3 = this.q;
                    canvas.scale(f3, f3, this.f, this.g);
                    float f4 = MainApp.v1;
                    canvas.drawRoundRect(this.k, f4, f4, this.n);
                    canvas.restore();
                } else {
                    canvas.drawCircle(this.f, this.g, this.j * this.q, this.n);
                }
            }
        }
        super.dispatchDraw(canvas);
    }

    public final void e(boolean z, boolean z2) {
        this.h = z;
        this.i = z2;
        int width = getWidth();
        int height = getHeight();
        if (width != 0 && height != 0) {
            this.f = width / 2.0f;
            this.g = height / 2.0f;
            d(width, height);
        }
    }

    public final void f() {
        int i;
        if (this.r) {
            return;
        }
        this.r = true;
        this.t = false;
        if (this.s == null) {
            Paint paint = new Paint();
            this.s = paint;
            paint.setAntiAlias(true);
            this.s.setStyle(Paint.Style.FILL);
        }
        Paint paint2 = this.s;
        if (MainApp.K1) {
            i = -2141101727;
        } else {
            i = -2136561174;
        }
        paint2.setColor(i);
        h();
    }

    public final void g() {
        long j;
        if (this.f18795c && this.p == null) {
            float f = this.q;
            if (f <= 0.8f) {
                return;
            }
            this.z = f;
            this.A = false;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(f, 0.8f);
            this.p = ofFloat;
            if (this.r) {
                j = 400;
            } else {
                j = 200;
            }
            ofFloat.setDuration(j);
            this.p.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.view.MyIconFrame.5
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    MyIconFrame myIconFrame = MyIconFrame.this;
                    if (myIconFrame.f18795c) {
                        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        if (myIconFrame.p != null) {
                            myIconFrame.z = floatValue;
                            if (myIconFrame.A) {
                                return;
                            }
                            myIconFrame.A = true;
                            MainApp.N(myIconFrame.getContext(), myIconFrame.B);
                        }
                    }
                }
            });
            this.p.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.view.MyIconFrame.6
                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationCancel(Animator animator) {
                    MyIconFrame myIconFrame = MyIconFrame.this;
                    if (myIconFrame.p == null) {
                        return;
                    }
                    myIconFrame.p = null;
                    myIconFrame.r = false;
                    myIconFrame.invalidate();
                }

                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    final MyIconFrame myIconFrame = MyIconFrame.this;
                    myIconFrame.r = false;
                    if (myIconFrame.p == null) {
                        return;
                    }
                    MainApp.N(myIconFrame.getContext(), new Runnable() { // from class: com.mycompany.app.view.MyIconFrame.8
                        @Override // java.lang.Runnable
                        public final void run() {
                            MyIconFrame myIconFrame2 = MyIconFrame.this;
                            if (myIconFrame2.p == null) {
                                return;
                            }
                            myIconFrame2.p = null;
                            myIconFrame2.setValPreScaleDn(0.8f);
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
            ValueAnimator valueAnimator = this.o;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            this.p.start();
        }
    }

    public final void h() {
        long j;
        if (!this.f18795c || this.o != null) {
            return;
        }
        this.q = 0.8f;
        this.w = 0.8f;
        this.x = false;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.8f, 1.0f);
        this.o = ofFloat;
        if (this.r) {
            j = 400;
        } else {
            j = 200;
        }
        ofFloat.setDuration(j);
        this.o.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.view.MyIconFrame.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                MyIconFrame myIconFrame = MyIconFrame.this;
                if (myIconFrame.f18795c) {
                    float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    if (myIconFrame.o != null) {
                        myIconFrame.w = floatValue;
                        if (myIconFrame.x) {
                            return;
                        }
                        myIconFrame.x = true;
                        MainApp.N(myIconFrame.getContext(), myIconFrame.y);
                    }
                }
            }
        });
        this.o.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.view.MyIconFrame.2
            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationCancel(Animator animator) {
                MyIconFrame myIconFrame = MyIconFrame.this;
                if (myIconFrame.o == null) {
                    return;
                }
                myIconFrame.o = null;
                myIconFrame.invalidate();
            }

            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                final MyIconFrame myIconFrame = MyIconFrame.this;
                if (myIconFrame.o == null) {
                    return;
                }
                MainApp.N(myIconFrame.getContext(), new Runnable() { // from class: com.mycompany.app.view.MyIconFrame.4
                    @Override // java.lang.Runnable
                    public final void run() {
                        MyIconFrame myIconFrame2 = MyIconFrame.this;
                        if (myIconFrame2.o != null) {
                            myIconFrame2.o = null;
                            myIconFrame2.setValPreScaleUp(1.0f);
                            if (myIconFrame2.r) {
                                myIconFrame2.t = false;
                                myIconFrame2.g();
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
        ValueAnimator valueAnimator = this.p;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        this.o.start();
    }

    @Override // android.view.View
    public final void invalidate() {
        if (!this.f18795c) {
            return;
        }
        super.invalidate();
    }

    @Override // android.view.View
    public final boolean isPressed() {
        if (!this.t && !super.isPressed()) {
            return false;
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        ValueAnimator valueAnimator = this.o;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.o = null;
        }
        ValueAnimator valueAnimator2 = this.p;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
            this.p = null;
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f = i / 2.0f;
        this.g = i2 / 2.0f;
        d(i, i2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0023, code lost:
    
        if (r0 != 3) goto L36;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouchEvent(android.view.MotionEvent r6) {
        /*
            r5 = this;
            android.view.View$OnClickListener r0 = r5.u
            r1 = 0
            if (r0 == 0) goto L7b
            boolean r0 = r5.isEnabled()
            if (r0 == 0) goto L7b
            boolean r0 = r5.isClickable()
            if (r0 == 0) goto L7b
            android.graphics.Paint r0 = r5.n
            if (r0 != 0) goto L16
            goto L7b
        L16:
            int r0 = r6.getActionMasked()
            r2 = 1
            if (r0 == 0) goto L5c
            if (r0 == r2) goto L42
            r2 = 2
            if (r0 == r2) goto L26
            r2 = 3
            if (r0 == r2) goto L52
            goto L76
        L26:
            boolean r0 = r5.t
            if (r0 == 0) goto L76
            float r0 = r6.getX()
            int r0 = (int) r0
            float r2 = r6.getY()
            int r2 = (int) r2
            android.graphics.RectF r3 = r5.k
            boolean r0 = com.mycompany.app.main.MainUtil.B5(r3, r0, r2)
            if (r0 != 0) goto L76
            r5.t = r1
            r5.g()
            goto L76
        L42:
            boolean r0 = r5.t
            if (r0 == 0) goto L52
            android.view.View$OnClickListener r0 = r5.u
            if (r0 == 0) goto L52
            com.mycompany.app.view.MyIconFrame$11 r0 = new com.mycompany.app.view.MyIconFrame$11
            r0.<init>()
            r5.post(r0)
        L52:
            boolean r0 = r5.t
            if (r0 == 0) goto L76
            r5.t = r1
            r5.g()
            goto L76
        L5c:
            float r0 = r6.getX()
            int r0 = (int) r0
            float r3 = r6.getY()
            int r3 = (int) r3
            android.graphics.RectF r4 = r5.k
            boolean r0 = com.mycompany.app.main.MainUtil.B5(r4, r0, r3)
            if (r0 != 0) goto L6f
            goto L76
        L6f:
            r5.r = r1
            r5.t = r2
            r5.h()
        L76:
            boolean r6 = super.onTouchEvent(r6)
            return r6
        L7b:
            r5.t = r1
            boolean r6 = super.onTouchEvent(r6)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.view.MyIconFrame.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public void setBgPreColor(int i) {
        if (this.l != i) {
            this.l = i;
            if (i != 0) {
                Paint paint = new Paint();
                this.n = paint;
                paint.setAntiAlias(true);
                this.n.setStyle(Paint.Style.FILL);
                this.n.setColor(this.l);
                this.m = this.n.getAlpha();
            } else {
                this.n = null;
            }
            invalidate();
        }
    }

    @Override // android.view.View
    public void setClickable(boolean z) {
        super.setClickable(z);
        if (!z) {
            c();
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        if (!z) {
            c();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [android.view.View$OnClickListener, java.lang.Object] */
    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.u = onClickListener;
        super.setOnClickListener(new Object());
    }

    @Override // android.view.View
    public void setOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.v = onLongClickListener;
        super.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.mycompany.app.view.MyIconFrame.10
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                View.OnLongClickListener onLongClickListener2;
                MyIconFrame myIconFrame = MyIconFrame.this;
                if (!myIconFrame.t || (onLongClickListener2 = myIconFrame.v) == null) {
                    return false;
                }
                onLongClickListener2.onLongClick(myIconFrame);
                myIconFrame.t = false;
                myIconFrame.g();
                return true;
            }
        });
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        if (i != 0) {
            c();
        }
    }
}
