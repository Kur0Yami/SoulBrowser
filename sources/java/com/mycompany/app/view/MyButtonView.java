package com.mycompany.app.view;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.text.TextUtils;
import android.view.View;
import com.mycompany.app.dialog.a;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;

/* loaded from: classes3.dex */
public class MyButtonView extends View {
    public View.OnLongClickListener A;
    public float B;
    public boolean C;
    public final Runnable D;
    public float E;
    public boolean F;
    public final Runnable G;

    /* renamed from: c, reason: collision with root package name */
    public boolean f18599c;
    public boolean f;
    public float g;
    public int h;
    public int i;
    public Paint j;
    public float k;
    public int l;
    public int m;
    public Paint n;
    public ValueAnimator o;
    public ValueAnimator p;
    public float q;
    public int r;
    public int s;
    public Paint t;
    public String u;
    public Paint v;
    public float w;
    public float x;
    public boolean y;
    public View.OnClickListener z;

    /* renamed from: com.mycompany.app.view.MyButtonView$9, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass9 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    public MyButtonView(Context context) {
        super(context);
        this.D = new Runnable() { // from class: com.mycompany.app.view.MyButtonView.3
            @Override // java.lang.Runnable
            public final void run() {
                MyButtonView myButtonView = MyButtonView.this;
                myButtonView.C = false;
                if (myButtonView.o != null) {
                    myButtonView.setValPreScaleUp(myButtonView.B);
                }
            }
        };
        this.G = new Runnable() { // from class: com.mycompany.app.view.MyButtonView.7
            @Override // java.lang.Runnable
            public final void run() {
                MyButtonView myButtonView = MyButtonView.this;
                myButtonView.F = false;
                if (myButtonView.p != null) {
                    myButtonView.setValPreScaleDn(myButtonView.E);
                }
            }
        };
        this.f18599c = true;
        int i = MainApp.X0;
        if (this.h != 0) {
            Paint paint = new Paint();
            this.j = paint;
            paint.setAntiAlias(true);
            this.j.setStyle(Paint.Style.FILL);
            this.j.setColor(this.h);
            this.i = this.j.getAlpha();
        }
        int i2 = this.l;
        if (i2 != 0) {
            if (MainApp.K1 && (i2 == -2039584 || i2 == 553648128)) {
                this.l = -12632257;
            }
            Paint paint2 = new Paint();
            this.n = paint2;
            paint2.setAntiAlias(true);
            this.n.setStyle(Paint.Style.FILL);
            this.n.setColor(this.l);
            this.m = this.n.getAlpha();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValPreScaleDn(float f) {
        if (this.n == null) {
            return;
        }
        this.q = f;
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValPreScaleUp(float f) {
        if (this.n == null) {
            return;
        }
        this.q = f;
        invalidate();
    }

    public final void c() {
        boolean z = true;
        boolean z2 = false;
        if (this.y) {
            this.y = false;
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

    public final void d(int i) {
        if (this.s == -12632257 && this.r == i) {
            return;
        }
        this.s = -12632257;
        this.r = i;
        if (i != 0) {
            Paint paint = new Paint();
            this.t = paint;
            paint.setAntiAlias(true);
            this.t.setStyle(Paint.Style.STROKE);
            this.t.setStrokeWidth(this.r);
            this.t.setColor(this.s);
        } else {
            this.t = null;
        }
        invalidate();
    }

    public final void e() {
        if (this.n != null && this.p == null) {
            float f = this.q;
            if (f <= 0.8f) {
                return;
            }
            this.E = f;
            this.F = false;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(f, 0.8f);
            this.p = ofFloat;
            ofFloat.setDuration(200L);
            a.r(this.p);
            this.p.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.view.MyButtonView.5
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    MyButtonView myButtonView = MyButtonView.this;
                    if (myButtonView.n != null) {
                        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        if (myButtonView.p != null) {
                            myButtonView.E = floatValue;
                            if (myButtonView.F) {
                                return;
                            }
                            myButtonView.F = true;
                            MainApp.N(myButtonView.getContext(), myButtonView.G);
                        }
                    }
                }
            });
            this.p.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.view.MyButtonView.6
                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationCancel(Animator animator) {
                    MyButtonView myButtonView = MyButtonView.this;
                    if (myButtonView.p == null) {
                        return;
                    }
                    myButtonView.p = null;
                    myButtonView.invalidate();
                }

                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    final MyButtonView myButtonView = MyButtonView.this;
                    if (myButtonView.p == null) {
                        return;
                    }
                    MainApp.N(myButtonView.getContext(), new Runnable() { // from class: com.mycompany.app.view.MyButtonView.8
                        @Override // java.lang.Runnable
                        public final void run() {
                            MyButtonView myButtonView2 = MyButtonView.this;
                            if (myButtonView2.p == null) {
                                return;
                            }
                            myButtonView2.p = null;
                            myButtonView2.setValPreScaleDn(0.8f);
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

    @Override // android.view.View
    public final void invalidate() {
        if (!this.f18599c) {
            return;
        }
        super.invalidate();
    }

    @Override // android.view.View
    public final boolean isPressed() {
        if (!this.y && !super.isPressed()) {
            return false;
        }
        return true;
    }

    @Override // android.view.View
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
    public final void onDraw(Canvas canvas) {
        boolean z;
        float f;
        Paint paint;
        if (this.f18599c) {
            setActivated(this.y);
            boolean z2 = true;
            if (!this.y && this.o == null && this.p == null) {
                z = false;
            } else {
                z = true;
            }
            Paint paint2 = this.j;
            if (paint2 != null) {
                if (z) {
                    int round = Math.round((1.0f - this.q) * this.i * 5.0f);
                    int i = this.i;
                    if (round > i) {
                        round = i;
                    }
                    this.j.setAlpha(round);
                    canvas.drawCircle(this.w, this.x, this.g, this.j);
                } else {
                    paint2.setAlpha(this.i);
                    canvas.drawCircle(this.w, this.x, this.g, this.j);
                }
            }
            if (z && (paint = this.n) != null) {
                paint.setAlpha(Math.round((this.q - 0.8f) * this.m * 5.0f));
                canvas.save();
                float f2 = this.q;
                canvas.scale(f2, f2, this.w, this.x);
                canvas.drawCircle(this.w, this.x, this.k, this.n);
            } else {
                z2 = false;
            }
            Paint paint3 = this.t;
            if (paint3 != null) {
                float f3 = this.r / 2.0f;
                float f4 = this.w;
                float f5 = this.x;
                if (z2) {
                    f = this.k;
                } else {
                    f = this.g;
                }
                canvas.drawCircle(f4, f5, f - f3, paint3);
                if (z2) {
                    canvas.restore();
                }
            } else if (z2) {
                canvas.restore();
            }
            try {
                super.onDraw(canvas);
            } catch (Exception unused) {
            }
            if (this.v != null && !TextUtils.isEmpty(this.u)) {
                canvas.drawText(this.u, this.w, this.x - ((this.v.ascent() + this.v.descent()) / 2.0f), this.v);
            }
        }
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        float f = i / 2.0f;
        this.w = f;
        this.x = i2 / 2.0f;
        if (!this.f) {
            this.g = f - 0.0f;
        }
        this.k = f;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0024, code lost:
    
        if (r0 != 3) goto L41;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouchEvent(android.view.MotionEvent r5) {
        /*
            r4 = this;
            android.view.View$OnClickListener r0 = r4.z
            r1 = 0
            if (r0 == 0) goto Lad
            boolean r0 = r4.isEnabled()
            if (r0 == 0) goto Lad
            boolean r0 = r4.isClickable()
            if (r0 == 0) goto Lad
            android.graphics.Paint r0 = r4.n
            if (r0 != 0) goto L17
            goto Lad
        L17:
            int r0 = r5.getActionMasked()
            r2 = 2
            r3 = 1
            if (r0 == 0) goto L5e
            if (r0 == r3) goto L44
            if (r0 == r2) goto L28
            r2 = 3
            if (r0 == r2) goto L54
            goto La8
        L28:
            boolean r0 = r4.y
            if (r0 == 0) goto La8
            float r0 = r5.getRawX()
            int r0 = (int) r0
            float r2 = r5.getRawY()
            int r2 = (int) r2
            int r3 = com.mycompany.app.main.MainApp.C1
            boolean r0 = com.mycompany.app.main.MainUtil.J5(r0, r2, r3, r4)
            if (r0 != 0) goto La8
            r4.y = r1
            r4.e()
            goto La8
        L44:
            boolean r0 = r4.y
            if (r0 == 0) goto L54
            android.view.View$OnClickListener r0 = r4.z
            if (r0 == 0) goto L54
            com.mycompany.app.view.MyButtonView$11 r0 = new com.mycompany.app.view.MyButtonView$11
            r0.<init>()
            r4.post(r0)
        L54:
            boolean r0 = r4.y
            if (r0 == 0) goto La8
            r4.y = r1
            r4.e()
            goto La8
        L5e:
            r4.y = r3
            android.graphics.Paint r0 = r4.n
            if (r0 != 0) goto L65
            goto La8
        L65:
            android.animation.ValueAnimator r0 = r4.o
            if (r0 == 0) goto L6a
            goto La8
        L6a:
            r0 = 1061997773(0x3f4ccccd, float:0.8)
            r4.q = r0
            r4.B = r0
            r4.C = r1
            float[] r0 = new float[r2]
            r0 = {x00b4: FILL_ARRAY_DATA , data: [1061997773, 1065353216} // fill-array
            android.animation.ValueAnimator r0 = android.animation.ValueAnimator.ofFloat(r0)
            r4.o = r0
            r1 = 200(0xc8, double:9.9E-322)
            r0.setDuration(r1)
            android.animation.ValueAnimator r0 = r4.o
            com.mycompany.app.dialog.a.v(r0)
            android.animation.ValueAnimator r0 = r4.o
            com.mycompany.app.view.MyButtonView$1 r1 = new com.mycompany.app.view.MyButtonView$1
            r1.<init>()
            r0.addUpdateListener(r1)
            android.animation.ValueAnimator r0 = r4.o
            com.mycompany.app.view.MyButtonView$2 r1 = new com.mycompany.app.view.MyButtonView$2
            r1.<init>()
            r0.addListener(r1)
            android.animation.ValueAnimator r0 = r4.p
            if (r0 == 0) goto La3
            r0.cancel()
        La3:
            android.animation.ValueAnimator r0 = r4.o
            r0.start()
        La8:
            boolean r5 = super.onTouchEvent(r5)
            return r5
        Lad:
            r4.y = r1
            boolean r5 = super.onTouchEvent(r5)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.view.MyButtonView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public void setBgNorColor(int i) {
        if (this.h != i) {
            this.h = i;
            if (i != 0) {
                Paint paint = new Paint();
                this.j = paint;
                paint.setAntiAlias(true);
                this.j.setStyle(Paint.Style.FILL);
                this.j.setColor(this.h);
                this.i = this.j.getAlpha();
            } else {
                this.j = null;
            }
            invalidate();
        }
    }

    public void setBgNorRadius(float f) {
        this.g = f;
        this.f = true;
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
        float f;
        super.setEnabled(z);
        if (z) {
            f = 1.0f;
        } else {
            f = 0.4f;
        }
        setAlpha(f);
        if (!z) {
            c();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [android.view.View$OnClickListener, java.lang.Object] */
    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.z = onClickListener;
        super.setOnClickListener(new Object());
    }

    @Override // android.view.View
    public void setOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.A = onLongClickListener;
        super.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.mycompany.app.view.MyButtonView.10
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                View.OnLongClickListener onLongClickListener2;
                MyButtonView myButtonView = MyButtonView.this;
                if (!myButtonView.y || (onLongClickListener2 = myButtonView.A) == null) {
                    return false;
                }
                onLongClickListener2.onLongClick(myButtonView);
                myButtonView.y = false;
                myButtonView.e();
                return true;
            }
        });
    }

    public void setText(String str) {
        if (this.v == null && !TextUtils.isEmpty(str)) {
            Paint paint = new Paint();
            this.v = paint;
            paint.setAntiAlias(true);
            this.v.setStyle(Paint.Style.FILL);
            this.v.setTextAlign(Paint.Align.CENTER);
            this.v.setTextSize(MainUtil.G(getContext(), 28.0f));
            this.v.setColor(-9079435);
            this.v.setTypeface(Typeface.create(Typeface.DEFAULT, 1));
        }
        if ((!TextUtils.isEmpty(this.u) && !this.u.equals(str)) || (!TextUtils.isEmpty(str) && !str.equals(this.u))) {
            this.u = str;
            invalidate();
        }
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        if (i != 0) {
            c();
        }
    }
}
