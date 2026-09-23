package com.mycompany.app.view;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.mycompany.app.dialog.a;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.soulbrowser.R;

/* loaded from: classes3.dex */
public class MyScrollNavi extends View {

    /* renamed from: c, reason: collision with root package name */
    public boolean f18953c;
    public int f;
    public Paint g;
    public Drawable h;
    public boolean i;
    public int j;
    public float k;
    public float l;
    public int m;
    public int n;
    public int o;
    public ValueAnimator p;
    public float q;
    public float r;
    public float s;
    public boolean t;
    public final Runnable u;

    public MyScrollNavi(Context context) {
        super(context);
        this.u = new Runnable() { // from class: com.mycompany.app.view.MyScrollNavi.3
            @Override // java.lang.Runnable
            public final void run() {
                MyScrollNavi myScrollNavi = MyScrollNavi.this;
                myScrollNavi.t = false;
                if (myScrollNavi.p != null) {
                    myScrollNavi.setValAnimNormal(myScrollNavi.s);
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setOnlyVisibility(int i) {
        super.setVisibility(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValAnimNormal(float f) {
        float f2 = this.q;
        setAlpha(1.0f - (Math.abs(f - f2) / this.r));
        setTranslationX(f);
    }

    public final void c() {
        float f;
        if (this.p == null && getVisibility() == 0) {
            int i = this.m;
            float translationX = getTranslationX();
            if (this.i) {
                f = -i;
            } else {
                f = i;
            }
            float abs = Math.abs(f - translationX);
            if (Float.compare(abs, 0.0f) == 0) {
                setOnlyVisibility(4);
                return;
            }
            this.q = translationX;
            this.r = abs;
            this.s = translationX;
            this.t = false;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(translationX, f);
            this.p = ofFloat;
            ofFloat.setDuration((abs * 200.0f) / i);
            a.v(this.p);
            this.p.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.view.MyScrollNavi.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    MyScrollNavi myScrollNavi = MyScrollNavi.this;
                    if (myScrollNavi.p != null) {
                        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        if (myScrollNavi.p != null) {
                            myScrollNavi.s = floatValue;
                            if (myScrollNavi.t) {
                                return;
                            }
                            myScrollNavi.t = true;
                            MainApp.N(myScrollNavi.getContext(), myScrollNavi.u);
                        }
                    }
                }
            });
            this.p.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.view.MyScrollNavi.2
                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationCancel(Animator animator) {
                    MyScrollNavi myScrollNavi = MyScrollNavi.this;
                    if (myScrollNavi.p == null) {
                        return;
                    }
                    myScrollNavi.p = null;
                    myScrollNavi.invalidate();
                }

                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    final MyScrollNavi myScrollNavi = MyScrollNavi.this;
                    if (myScrollNavi.p == null) {
                        return;
                    }
                    MainApp.N(myScrollNavi.getContext(), new Runnable() { // from class: com.mycompany.app.view.MyScrollNavi.4
                        @Override // java.lang.Runnable
                        public final void run() {
                            MyScrollNavi myScrollNavi2 = MyScrollNavi.this;
                            if (myScrollNavi2.p == null) {
                                return;
                            }
                            myScrollNavi2.p = null;
                            myScrollNavi2.setOnlyVisibility(4);
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
            setOnlyVisibility(0);
            this.p.start();
        }
    }

    public final void d(boolean z, boolean z2) {
        this.i = z2;
        this.f18953c = true;
        this.j = MainApp.G1;
        this.l = MainApp.E1;
        this.m = MainApp.i1;
        Paint paint = new Paint();
        this.g = paint;
        paint.setAntiAlias(true);
        this.g.setStyle(Paint.Style.FILL);
        this.g.setColor(-509171222);
        if (z) {
            if (this.i) {
                this.f = R.drawable.outline_chevron_right_white_24;
            } else {
                this.f = R.drawable.outline_chevron_left_white_24;
            }
        } else if (this.i) {
            this.f = R.drawable.outline_chevron_left_white_24;
        } else {
            this.f = R.drawable.outline_chevron_right_white_24;
        }
        this.h = MainUtil.S(getContext(), this.f);
    }

    public final boolean e() {
        if (f()) {
            if (this.i) {
                if ((-getTranslationX()) < this.j) {
                    return true;
                }
                return false;
            }
            if (getTranslationX() < this.j) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final boolean f() {
        if (this.p != null || getVisibility() != 0) {
            return false;
        }
        return true;
    }

    public final void g() {
        this.f18953c = false;
        ValueAnimator valueAnimator = this.p;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.p = null;
        }
        this.g = null;
        this.h = null;
    }

    public final void h(float f, float f2) {
        boolean z;
        float f3;
        if (getVisibility() == 0) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            this.k = f;
        }
        int i = this.m;
        float f4 = 0.0f;
        if (this.i) {
            float f5 = i;
            f3 = (f2 - this.k) - f5;
            if (f3 > 0.0f) {
                this.k = f2 - f5;
            } else {
                f4 = -i;
                if (f3 < f4) {
                    this.k = f2;
                }
                f4 = f3;
            }
        } else {
            float f6 = i;
            f3 = (f2 - this.k) + f6;
            if (f3 < 0.0f) {
                this.k = f2 + f6;
            } else {
                if (f3 > f6) {
                    this.k = f2;
                    f4 = f6;
                }
                f4 = f3;
            }
        }
        setTranslationX(f4);
        if (!z) {
            setVisibility(0);
        }
    }

    @Override // android.view.View
    public final void invalidate() {
        if (!this.f18953c) {
            return;
        }
        super.invalidate();
    }

    @Override // android.view.View
    public final void onDetachedFromWindow() {
        ValueAnimator valueAnimator = this.p;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.p = null;
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        Paint paint;
        if (this.f18953c && (paint = this.g) != null && this.h != null) {
            canvas.drawCircle(this.n, this.o, this.l, paint);
            this.h.draw(canvas);
        }
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.n = Math.round(i / 2.0f);
        int round = Math.round(i2 / 2.0f);
        this.o = round;
        Drawable drawable = this.h;
        if (drawable == null) {
            return;
        }
        int i5 = MainApp.E1;
        int i6 = this.n;
        drawable.setBounds(i6 - i5, round - i5, i6 + i5, round + i5);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        ValueAnimator valueAnimator = this.p;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.p = null;
        }
        setAlpha(1.0f);
        super.setVisibility(i);
    }
}
