package com.mycompany.app.view;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import com.mycompany.app.dialog.a;
import com.mycompany.app.main.MainApp;

/* loaded from: classes3.dex */
public class MyButtonText extends AppCompatTextView {
    public int A;
    public Paint B;
    public ValueAnimator C;
    public ValueAnimator D;
    public float E;
    public boolean F;
    public RectF G;
    public int H;
    public int I;
    public Paint J;
    public float K;
    public float L;
    public boolean M;
    public View.OnClickListener N;
    public View.OnLongClickListener O;
    public float P;
    public boolean Q;
    public final Runnable R;
    public float S;
    public boolean T;
    public final Runnable U;
    public boolean l;
    public boolean m;
    public int n;
    public boolean o;
    public boolean p;
    public float q;
    public int r;
    public RectF s;
    public int t;
    public int u;
    public Paint v;
    public boolean w;
    public float x;
    public RectF y;
    public int z;

    /* renamed from: com.mycompany.app.view.MyButtonText$9, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass9 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    public MyButtonText(Context context) {
        super(context, null);
        this.R = new Runnable() { // from class: com.mycompany.app.view.MyButtonText.3
            @Override // java.lang.Runnable
            public final void run() {
                MyButtonText myButtonText = MyButtonText.this;
                myButtonText.Q = false;
                if (myButtonText.C != null) {
                    myButtonText.setValPreScaleUp(myButtonText.P);
                }
            }
        };
        this.U = new Runnable() { // from class: com.mycompany.app.view.MyButtonText.7
            @Override // java.lang.Runnable
            public final void run() {
                MyButtonText myButtonText = MyButtonText.this;
                myButtonText.T = false;
                if (myButtonText.D != null) {
                    myButtonText.setValPreScaleDn(myButtonText.S);
                }
            }
        };
        this.l = true;
        this.n = MainApp.v1;
        if (this.m) {
            this.s = new RectF();
            this.y = new RectF();
        }
        if (this.t != 0) {
            Paint paint = new Paint();
            this.v = paint;
            paint.setAntiAlias(true);
            this.v.setStyle(Paint.Style.FILL);
            this.v.setColor(this.t);
            this.u = this.v.getAlpha();
        }
        int i = this.z;
        if (i != 0) {
            if (MainApp.K1 && (i == -2039584 || i == 553648128)) {
                this.z = -12632257;
            }
            Paint paint2 = new Paint();
            this.B = paint2;
            paint2.setAntiAlias(true);
            this.B.setStyle(Paint.Style.FILL);
            this.B.setColor(this.z);
            this.A = this.B.getAlpha();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValPreScaleDn(float f) {
        if (this.B == null) {
            return;
        }
        this.E = f;
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValPreScaleUp(float f) {
        if (this.B == null) {
            return;
        }
        this.E = f;
        invalidate();
    }

    @Override // android.view.View
    public final void invalidate() {
        if (!this.l) {
            return;
        }
        super.invalidate();
    }

    @Override // android.view.View
    public final boolean isPressed() {
        if (!this.M && !super.isPressed()) {
            return false;
        }
        return true;
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.view.View
    public final void onDetachedFromWindow() {
        ValueAnimator valueAnimator = this.C;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.C = null;
        }
        ValueAnimator valueAnimator2 = this.D;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
            this.D = null;
        }
        super.onDetachedFromWindow();
    }

    @Override // android.widget.TextView, android.view.View
    public final void onDraw(Canvas canvas) {
        boolean z;
        float f;
        Paint paint;
        if (!this.l) {
            return;
        }
        boolean z2 = true;
        if (!this.M && this.C == null && this.D == null) {
            z = false;
        } else {
            z = true;
        }
        Paint paint2 = this.v;
        if (paint2 != null) {
            if (z && !this.p) {
                int round = Math.round((1.0f - this.E) * this.u * 5.0f);
                int i = this.u;
                if (round > i) {
                    round = i;
                }
                this.v.setAlpha(round);
                RectF rectF = this.s;
                if (rectF != null) {
                    float f2 = this.n;
                    canvas.drawRoundRect(rectF, f2, f2, this.v);
                } else {
                    canvas.drawCircle(this.K, this.L, this.q, this.v);
                }
            } else {
                paint2.setAlpha(this.u);
                RectF rectF2 = this.s;
                if (rectF2 != null) {
                    float f3 = this.n;
                    canvas.drawRoundRect(rectF2, f3, f3, this.v);
                } else {
                    canvas.drawCircle(this.K, this.L, this.q, this.v);
                }
            }
        }
        if (z && (paint = this.B) != null) {
            paint.setAlpha(Math.round((this.E - 0.8f) * this.A * 5.0f));
            canvas.save();
            float f4 = this.E;
            canvas.scale(f4, f4, this.K, this.L);
            RectF rectF3 = this.y;
            if (rectF3 != null) {
                float f5 = this.n;
                canvas.drawRoundRect(rectF3, f5, f5, this.B);
            } else {
                canvas.drawCircle(this.K, this.L, this.x, this.B);
            }
        } else {
            z2 = false;
        }
        if (this.J != null) {
            if (z2 && this.F) {
                canvas.restore();
            }
            RectF rectF4 = this.G;
            if (rectF4 != null) {
                float f6 = this.n;
                canvas.drawRoundRect(rectF4, f6, f6, this.J);
            } else {
                float f7 = this.H / 2.0f;
                float f8 = this.K;
                float f9 = this.L;
                if (z2) {
                    f = this.x;
                } else {
                    f = this.q;
                }
                canvas.drawCircle(f8, f9, f - f7, this.J);
            }
            if (z2 && !this.F) {
                canvas.restore();
            }
        } else if (z2) {
            canvas.restore();
        }
        try {
            super.onDraw(canvas);
        } catch (Exception unused) {
        }
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        float f = i;
        float f2 = f / 2.0f;
        this.K = f2;
        float f3 = i2;
        float f4 = f3 / 2.0f;
        this.L = f4;
        if (!this.o) {
            this.q = f2 - 0.0f;
        }
        if (!this.w) {
            this.x = f2;
        }
        int i5 = this.r;
        if (i5 != 0) {
            float f5 = i5 / 2.0f;
            RectF rectF = this.s;
            if (rectF != null) {
                rectF.set(0.0f, (f4 - f5) + 0.0f, f - 0.0f, (f4 + f5) - 0.0f);
            }
        } else {
            RectF rectF2 = this.s;
            if (rectF2 != null) {
                rectF2.set(0.0f, 0.0f, f - 0.0f, f3 - 0.0f);
            }
        }
        RectF rectF3 = this.y;
        if (rectF3 != null) {
            rectF3.set(0.0f, 0.0f, f, f3);
        }
        RectF rectF4 = this.G;
        if (rectF4 != null) {
            float f6 = this.H / 2.0f;
            rectF4.set(f6, f6, f - f6, f3 - f6);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0024, code lost:
    
        if (r0 != 3) goto L41;
     */
    @Override // android.widget.TextView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouchEvent(android.view.MotionEvent r5) {
        /*
            r4 = this;
            android.view.View$OnClickListener r0 = r4.N
            r1 = 0
            if (r0 == 0) goto Lad
            boolean r0 = r4.isEnabled()
            if (r0 == 0) goto Lad
            boolean r0 = r4.isClickable()
            if (r0 == 0) goto Lad
            android.graphics.Paint r0 = r4.B
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
            boolean r0 = r4.M
            if (r0 == 0) goto La8
            float r0 = r5.getRawX()
            int r0 = (int) r0
            float r2 = r5.getRawY()
            int r2 = (int) r2
            int r3 = com.mycompany.app.main.MainApp.C1
            boolean r0 = com.mycompany.app.main.MainUtil.J5(r0, r2, r3, r4)
            if (r0 != 0) goto La8
            r4.M = r1
            r4.w()
            goto La8
        L44:
            boolean r0 = r4.M
            if (r0 == 0) goto L54
            android.view.View$OnClickListener r0 = r4.N
            if (r0 == 0) goto L54
            com.mycompany.app.view.MyButtonText$11 r0 = new com.mycompany.app.view.MyButtonText$11
            r0.<init>()
            r4.post(r0)
        L54:
            boolean r0 = r4.M
            if (r0 == 0) goto La8
            r4.M = r1
            r4.w()
            goto La8
        L5e:
            r4.M = r3
            android.graphics.Paint r0 = r4.B
            if (r0 != 0) goto L65
            goto La8
        L65:
            android.animation.ValueAnimator r0 = r4.C
            if (r0 == 0) goto L6a
            goto La8
        L6a:
            r0 = 1061997773(0x3f4ccccd, float:0.8)
            r4.E = r0
            r4.P = r0
            r4.Q = r1
            float[] r0 = new float[r2]
            r0 = {x00b4: FILL_ARRAY_DATA , data: [1061997773, 1065353216} // fill-array
            android.animation.ValueAnimator r0 = android.animation.ValueAnimator.ofFloat(r0)
            r4.C = r0
            r1 = 200(0xc8, double:9.9E-322)
            r0.setDuration(r1)
            android.animation.ValueAnimator r0 = r4.C
            com.mycompany.app.dialog.a.v(r0)
            android.animation.ValueAnimator r0 = r4.C
            com.mycompany.app.view.MyButtonText$1 r1 = new com.mycompany.app.view.MyButtonText$1
            r1.<init>()
            r0.addUpdateListener(r1)
            android.animation.ValueAnimator r0 = r4.C
            com.mycompany.app.view.MyButtonText$2 r1 = new com.mycompany.app.view.MyButtonText$2
            r1.<init>()
            r0.addListener(r1)
            android.animation.ValueAnimator r0 = r4.D
            if (r0 == 0) goto La3
            r0.cancel()
        La3:
            android.animation.ValueAnimator r0 = r4.C
            r0.start()
        La8:
            boolean r5 = super.onTouchEvent(r5)
            return r5
        Lad:
            r4.M = r1
            boolean r5 = super.onTouchEvent(r5)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.view.MyButtonText.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public final void s() {
        boolean z = true;
        boolean z2 = false;
        if (this.M) {
            this.M = false;
            z2 = true;
        }
        ValueAnimator valueAnimator = this.C;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.C = null;
            z2 = true;
        }
        ValueAnimator valueAnimator2 = this.D;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
            this.D = null;
        } else {
            z = z2;
        }
        if (z) {
            invalidate();
        }
    }

    public void setBgNorColor(int i) {
        if (this.t != i) {
            this.t = i;
            if (i != 0) {
                Paint paint = new Paint();
                this.v = paint;
                paint.setAntiAlias(true);
                this.v.setStyle(Paint.Style.FILL);
                this.v.setColor(this.t);
                this.u = this.v.getAlpha();
            } else {
                this.v = null;
            }
            invalidate();
        }
    }

    public void setBgNorFixed(boolean z) {
        this.p = z;
    }

    public void setBgPreColor(int i) {
        if (this.z != i) {
            this.z = i;
            if (i != 0) {
                Paint paint = new Paint();
                this.B = paint;
                paint.setAntiAlias(true);
                this.B.setStyle(Paint.Style.FILL);
                this.B.setColor(this.z);
                this.A = this.B.getAlpha();
            } else {
                this.B = null;
            }
            invalidate();
        }
    }

    public void setBgSubHeight(int i) {
        this.r = i;
    }

    @Override // android.view.View
    public void setClickable(boolean z) {
        super.setClickable(z);
        if (!z) {
            s();
        }
    }

    @Override // android.widget.TextView, android.view.View
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
            s();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [android.view.View$OnClickListener, java.lang.Object] */
    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.N = onClickListener;
        super.setOnClickListener(new Object());
    }

    @Override // android.view.View
    public void setOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.O = onLongClickListener;
        super.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.mycompany.app.view.MyButtonText.10
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                View.OnLongClickListener onLongClickListener2;
                MyButtonText myButtonText = MyButtonText.this;
                if (!myButtonText.M || (onLongClickListener2 = myButtonText.O) == null) {
                    return false;
                }
                onLongClickListener2.onLongClick(myButtonText);
                myButtonText.M = false;
                myButtonText.w();
                return true;
            }
        });
    }

    public void setRoundRadius(int i) {
        this.n = i;
    }

    public void setRoundRect(boolean z) {
        this.m = z;
        if (z) {
            this.s = new RectF();
            this.y = new RectF();
        } else {
            this.s = null;
            this.y = null;
        }
    }

    public void setTouch(boolean z) {
        this.M = z;
        if (!z) {
            invalidate();
        }
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        if (i != 0) {
            s();
        }
    }

    public final void t() {
        this.l = false;
        ValueAnimator valueAnimator = this.C;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.C = null;
        }
        ValueAnimator valueAnimator2 = this.D;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
            this.D = null;
        }
        this.s = null;
        this.y = null;
        this.v = null;
        this.B = null;
        this.G = null;
        this.J = null;
        this.N = null;
        this.O = null;
    }

    public final void u(int i, int i2) {
        boolean z;
        boolean z2 = true;
        if (this.t != i) {
            this.t = i;
            if (i != 0) {
                Paint paint = new Paint();
                this.v = paint;
                paint.setAntiAlias(true);
                this.v.setStyle(Paint.Style.FILL);
                this.v.setColor(this.t);
                this.u = this.v.getAlpha();
            } else {
                this.v = null;
            }
            z = true;
        } else {
            z = false;
        }
        if (this.z != i2) {
            this.z = i2;
            if (i2 != 0) {
                Paint paint2 = new Paint();
                this.B = paint2;
                paint2.setAntiAlias(true);
                this.B.setStyle(Paint.Style.FILL);
                this.B.setColor(this.z);
                this.A = this.B.getAlpha();
            } else {
                this.B = null;
            }
        } else {
            z2 = z;
        }
        if (z2) {
            invalidate();
        }
    }

    public final void v(int i, int i2) {
        this.F = true;
        if (this.I == i && this.H == i2) {
            return;
        }
        this.I = i;
        this.H = i2;
        if (i != 0 && i2 != 0) {
            if (this.m && this.G == null) {
                this.G = new RectF();
            }
            Paint paint = new Paint();
            this.J = paint;
            paint.setAntiAlias(true);
            this.J.setStyle(Paint.Style.STROKE);
            this.J.setStrokeWidth(this.H);
            this.J.setColor(this.I);
        } else {
            this.G = null;
            this.J = null;
        }
        invalidate();
    }

    public final void w() {
        if (this.B != null && this.D == null) {
            float f = this.E;
            if (f <= 0.8f) {
                return;
            }
            this.S = f;
            this.T = false;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(f, 0.8f);
            this.D = ofFloat;
            ofFloat.setDuration(200L);
            a.r(this.D);
            this.D.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.view.MyButtonText.5
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    MyButtonText myButtonText = MyButtonText.this;
                    if (myButtonText.B != null) {
                        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        if (myButtonText.D != null) {
                            myButtonText.S = floatValue;
                            if (myButtonText.T) {
                                return;
                            }
                            myButtonText.T = true;
                            MainApp.N(myButtonText.getContext(), myButtonText.U);
                        }
                    }
                }
            });
            this.D.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.view.MyButtonText.6
                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationCancel(Animator animator) {
                    MyButtonText myButtonText = MyButtonText.this;
                    if (myButtonText.D == null) {
                        return;
                    }
                    myButtonText.D = null;
                    myButtonText.invalidate();
                }

                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    final MyButtonText myButtonText = MyButtonText.this;
                    if (myButtonText.D == null) {
                        return;
                    }
                    MainApp.N(myButtonText.getContext(), new Runnable() { // from class: com.mycompany.app.view.MyButtonText.8
                        @Override // java.lang.Runnable
                        public final void run() {
                            MyButtonText myButtonText2 = MyButtonText.this;
                            if (myButtonText2.D == null) {
                                return;
                            }
                            myButtonText2.D = null;
                            myButtonText2.setValPreScaleDn(0.8f);
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
            ValueAnimator valueAnimator = this.C;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            this.D.start();
        }
    }
}
