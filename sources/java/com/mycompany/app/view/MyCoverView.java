package com.mycompany.app.view;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefImage;

/* loaded from: classes3.dex */
public class MyCoverView extends View {
    public float A;
    public boolean B;
    public final Runnable C;
    public float D;
    public boolean E;
    public final Runnable F;

    /* renamed from: c, reason: collision with root package name */
    public boolean f18622c;
    public boolean f;
    public int g;
    public ValueAnimator h;
    public ValueAnimator i;
    public float j;
    public MyProgressDrawable k;
    public int l;
    public int m;
    public int n;
    public int o;
    public Paint p;
    public float q;
    public float r;
    public long s;
    public boolean t;
    public boolean u;
    public StaticLayout v;
    public int w;
    public String x;
    public Paint y;
    public MyFadeListener z;

    public MyCoverView(Context context) {
        super(context);
        this.C = new Runnable() { // from class: com.mycompany.app.view.MyCoverView.3
            @Override // java.lang.Runnable
            public final void run() {
                MyCoverView myCoverView = MyCoverView.this;
                myCoverView.B = false;
                if (myCoverView.h != null) {
                    myCoverView.setValAnimShow(myCoverView.A);
                }
            }
        };
        this.F = new Runnable() { // from class: com.mycompany.app.view.MyCoverView.7
            @Override // java.lang.Runnable
            public final void run() {
                MyCoverView myCoverView = MyCoverView.this;
                myCoverView.E = false;
                if (myCoverView.i != null) {
                    myCoverView.setValAnimHide(myCoverView.D);
                }
            }
        };
        g(MainApp.K1 ? -328966 : -13022805, MainApp.y1, MainApp.z1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setOnlyVisibility(int i) {
        this.s = 0L;
        if (i == 0) {
            this.t = false;
        }
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

    public final void d() {
        float f;
        if (this.h == null) {
            ValueAnimator valueAnimator = this.i;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.i = null;
            } else if (getVisibility() == 0) {
                return;
            }
            if (getVisibility() == 0) {
                f = getAlpha();
                if (f >= this.j) {
                    return;
                }
            } else {
                f = 0.0f;
            }
            this.A = f;
            this.B = false;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(f, this.j);
            this.h = ofFloat;
            ofFloat.setDuration((this.j - f) * this.g);
            this.h.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.view.MyCoverView.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    MyCoverView myCoverView = MyCoverView.this;
                    if (myCoverView.h != null) {
                        float floatValue = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                        if (myCoverView.h != null) {
                            myCoverView.A = floatValue;
                            if (myCoverView.B) {
                                return;
                            }
                            myCoverView.B = true;
                            MainApp.N(myCoverView.getContext(), myCoverView.C);
                        }
                    }
                }
            });
            this.h.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.view.MyCoverView.2
                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationCancel(Animator animator) {
                    MyCoverView myCoverView = MyCoverView.this;
                    if (myCoverView.h == null) {
                        return;
                    }
                    myCoverView.h = null;
                    myCoverView.invalidate();
                }

                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    final MyCoverView myCoverView = MyCoverView.this;
                    if (myCoverView.h == null) {
                        return;
                    }
                    MainApp.N(myCoverView.getContext(), new Runnable() { // from class: com.mycompany.app.view.MyCoverView.4
                        @Override // java.lang.Runnable
                        public final void run() {
                            MyCoverView myCoverView2 = MyCoverView.this;
                            if (myCoverView2.h != null) {
                                myCoverView2.h = null;
                                myCoverView2.setValAnimShow(myCoverView2.j);
                                MyFadeListener myFadeListener = myCoverView2.z;
                                if (myFadeListener != null) {
                                    myFadeListener.a(true);
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
                    MyFadeListener myFadeListener = MyCoverView.this.z;
                    if (myFadeListener != null) {
                        myFadeListener.b(true, true);
                    }
                }
            });
            this.h.start();
        }
    }

    @Override // android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.f) {
            return true;
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public final void e(MyProgressDrawable myProgressDrawable, int i, int i2) {
        if (myProgressDrawable == null) {
            return;
        }
        int width = (getWidth() - i) / 2;
        int height = (getHeight() - i2) / 2;
        myProgressDrawable.d(width, height, i + width, i2 + height);
    }

    public final void f(boolean z) {
        this.s = 0L;
        if (!z) {
            this.v = null;
            setVisibility(8);
            return;
        }
        if (this.i != null) {
            return;
        }
        ValueAnimator valueAnimator = this.h;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.h = null;
        }
        if (getVisibility() != 0) {
            this.v = null;
            return;
        }
        float alpha = getAlpha();
        this.D = alpha;
        this.E = false;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(alpha, 0.0f);
        this.i = ofFloat;
        ofFloat.setDuration(alpha * this.g);
        this.i.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.view.MyCoverView.5
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                MyCoverView myCoverView = MyCoverView.this;
                if (myCoverView.i != null) {
                    float floatValue = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                    if (myCoverView.i != null) {
                        myCoverView.D = floatValue;
                        if (myCoverView.E) {
                            return;
                        }
                        myCoverView.E = true;
                        MainApp.N(myCoverView.getContext(), myCoverView.F);
                    }
                }
            }
        });
        this.i.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.view.MyCoverView.6
            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationCancel(Animator animator) {
                MyCoverView myCoverView = MyCoverView.this;
                myCoverView.v = null;
                if (myCoverView.i == null) {
                    return;
                }
                myCoverView.i = null;
                myCoverView.invalidate();
            }

            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                final MyCoverView myCoverView = MyCoverView.this;
                myCoverView.v = null;
                if (myCoverView.i == null) {
                    return;
                }
                MainApp.N(myCoverView.getContext(), new Runnable() { // from class: com.mycompany.app.view.MyCoverView.8
                    @Override // java.lang.Runnable
                    public final void run() {
                        MyCoverView myCoverView2 = MyCoverView.this;
                        if (myCoverView2.i != null) {
                            myCoverView2.i = null;
                            myCoverView2.setOnlyVisibility(8);
                            MyFadeListener myFadeListener = myCoverView2.z;
                            if (myFadeListener != null) {
                                myFadeListener.a(false);
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
                MyFadeListener myFadeListener = MyCoverView.this.z;
                if (myFadeListener != null) {
                    myFadeListener.b(false, true);
                }
            }
        });
        this.i.start();
    }

    public final void g(int i, int i2, int i3) {
        this.f18622c = true;
        this.g = 600;
        this.m = i;
        this.o = i3;
        this.n = Math.round((i3 / 2.0f) + MainApp.G1);
        this.f = false;
        this.k = new MyProgressDrawable(this, i2, this.m);
        if (this.l != 0) {
            Paint paint = new Paint();
            this.p = paint;
            paint.setAntiAlias(true);
            this.p.setStyle(Paint.Style.FILL);
            this.p.setColor(this.l);
        }
    }

    public final boolean h() {
        if (this.i != null) {
            return false;
        }
        if (this.h == null && this.s <= 0 && getVisibility() != 0) {
            return false;
        }
        return true;
    }

    public final void i() {
        this.f18622c = false;
        ValueAnimator valueAnimator = this.h;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.h = null;
        }
        ValueAnimator valueAnimator2 = this.i;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
            this.i = null;
        }
        MyProgressDrawable myProgressDrawable = this.k;
        if (myProgressDrawable != null) {
            myProgressDrawable.b();
            this.k = null;
        }
        this.p = null;
        this.v = null;
        this.x = null;
        this.y = null;
        this.z = null;
    }

    @Override // android.view.View
    public final void invalidate() {
        if (!this.f18622c) {
            return;
        }
        super.invalidate();
    }

    public final void j(int i, String str) {
        int i2;
        if (!TextUtils.isEmpty(str)) {
            int width = getWidth() - MainApp.i1;
            if (width > 0) {
                TextPaint textPaint = new TextPaint();
                textPaint.setAntiAlias(true);
                textPaint.setTextSize(MainApp.i1 / 2);
                if (PrefImage.C > 0.2f) {
                    i2 = -1;
                } else {
                    i2 = -16777216;
                }
                textPaint.setColor(i2);
                textPaint.setTypeface(Typeface.create(Typeface.DEFAULT, 1));
                Layout.Alignment alignment = Layout.Alignment.ALIGN_CENTER;
                this.v = MainUtil.y3(str, textPaint, width);
                this.w = i;
            }
        } else {
            this.v = null;
            this.w = 0;
        }
        invalidate();
    }

    public final void k(int i, int i2, String str) {
        boolean z;
        boolean z2 = true;
        if (!MainUtil.q5(this.x, str)) {
            this.x = str;
            z = true;
        } else {
            z = false;
        }
        if (this.y == null) {
            Paint paint = new Paint();
            this.y = paint;
            paint.setAntiAlias(true);
            this.y.setStyle(Paint.Style.FILL);
            this.y.setTextAlign(Paint.Align.CENTER);
            this.y.setTextSize(MainApp.E1);
            this.y.setColor(i);
            this.y.setTypeface(Typeface.create(Typeface.DEFAULT, 1));
            z = true;
        }
        if (this.o != i2) {
            this.o = i2;
            this.n = Math.round((i2 / 2.0f) + MainApp.G1);
            MyProgressDrawable myProgressDrawable = this.k;
            int i3 = this.o;
            e(myProgressDrawable, i3, i3);
        } else {
            z2 = z;
        }
        if (z2) {
            invalidate();
        }
    }

    public final void l() {
        n(true, 0.5f, 0L);
    }

    public final void m(boolean z) {
        n(z, 1.0f, 0L);
    }

    public final void n(boolean z, float f, long j) {
        final boolean z2 = this.t;
        this.t = false;
        this.j = f;
        this.s = 0L;
        if (!z) {
            setVisibility(0);
            return;
        }
        if (j > 0) {
            if (getVisibility() == 0 && this.i == null) {
                if (z2) {
                    invalidate();
                    return;
                }
                return;
            } else {
                this.s = j;
                postDelayed(new Runnable() { // from class: com.mycompany.app.view.MyCoverView.9
                    @Override // java.lang.Runnable
                    public final void run() {
                        MyCoverView myCoverView = MyCoverView.this;
                        if (myCoverView.s > 0) {
                            myCoverView.s = 0L;
                            myCoverView.d();
                            if (z2) {
                                myCoverView.invalidate();
                            }
                        }
                    }
                }, j);
                return;
            }
        }
        d();
        if (z2) {
            invalidate();
        }
    }

    @Override // android.view.View
    public final void onDetachedFromWindow() {
        ValueAnimator valueAnimator = this.h;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.h = null;
        }
        ValueAnimator valueAnimator2 = this.i;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
            this.i = null;
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        if (this.f18622c && !this.u && this.k != null) {
            if (this.y != null && !TextUtils.isEmpty(this.x)) {
                if (this.q == 0.0f) {
                    this.q = getWidth() / 2.0f;
                }
                if (this.r == 0.0f) {
                    this.r = getHeight() / 2.0f;
                }
                canvas.drawText(this.x, this.q, this.r - ((this.y.ascent() + this.y.descent()) / 2.0f), this.y);
            }
            if (this.v != null) {
                int i = this.w;
                if (i != 0) {
                    canvas.drawColor(i);
                }
                float width = (getWidth() - this.v.getWidth()) / 2.0f;
                float height = (getHeight() - this.v.getHeight()) / 2.0f;
                canvas.translate(width, height);
                this.v.draw(canvas);
                canvas.translate(-width, -height);
                if (this.t) {
                    return;
                }
            } else if (this.t) {
                canvas.drawColor(-14606047);
                return;
            }
            if (this.p != null) {
                if (this.q == 0.0f) {
                    this.q = getWidth() / 2.0f;
                }
                if (this.r == 0.0f) {
                    this.r = getHeight() / 2.0f;
                }
                canvas.drawCircle(this.q, this.r, this.n, this.p);
            }
            this.k.f();
            this.k.a(canvas);
        }
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (this.p != null) {
            this.q = i / 2.0f;
            this.r = i2 / 2.0f;
        }
        MyProgressDrawable myProgressDrawable = this.k;
        int i5 = this.o;
        e(myProgressDrawable, i5, i5);
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        MyProgressDrawable myProgressDrawable = this.k;
        if (myProgressDrawable == null) {
            return;
        }
        if (i == 0) {
            myProgressDrawable.f();
        } else {
            myProgressDrawable.f = false;
        }
    }

    public void setAnimTime(int i) {
        this.g = i;
    }

    public void setBackColor(int i) {
        if (this.l == i) {
            return;
        }
        this.l = i;
        if (i != 0) {
            if (this.p == null) {
                Paint paint = new Paint();
                this.p = paint;
                paint.setAntiAlias(true);
                this.p.setStyle(Paint.Style.FILL);
            }
            this.p.setColor(this.l);
        } else {
            this.p = null;
        }
        invalidate();
    }

    public void setBlockTouch(boolean z) {
        this.f = z;
    }

    public void setColor(int i) {
        MyProgressDrawable myProgressDrawable = this.k;
        if (myProgressDrawable != null) {
            if (MainApp.K1 && i == -13022805) {
                i = -328966;
            }
            if (this.m == i) {
                return;
            }
            this.m = i;
            myProgressDrawable.e(i);
            invalidate();
        }
    }

    public void setForeSize(int i) {
        if (this.o == i) {
            return;
        }
        this.o = i;
        this.n = Math.round((i / 2.0f) + MainApp.G1);
        MyProgressDrawable myProgressDrawable = this.k;
        int i2 = this.o;
        e(myProgressDrawable, i2, i2);
        invalidate();
    }

    public void setListener(MyFadeListener myFadeListener) {
        this.z = myFadeListener;
    }

    public void setSkipDraw(boolean z) {
        if (this.u == z) {
            return;
        }
        this.u = z;
        invalidate();
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        MyFadeListener myFadeListener;
        boolean z;
        this.s = 0L;
        if (i == 0) {
            this.t = false;
        }
        ValueAnimator valueAnimator = this.h;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.h = null;
        }
        ValueAnimator valueAnimator2 = this.i;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
            this.i = null;
        }
        setAlpha(1.0f);
        if (getVisibility() != i && (myFadeListener = this.z) != null) {
            if (i == 0) {
                z = true;
            } else {
                z = false;
            }
            myFadeListener.b(z, false);
        }
        super.setVisibility(i);
    }

    public MyCoverView(Context context, int i, int i2, int i3) {
        super(context);
        this.C = new Runnable() { // from class: com.mycompany.app.view.MyCoverView.3
            @Override // java.lang.Runnable
            public final void run() {
                MyCoverView myCoverView = MyCoverView.this;
                myCoverView.B = false;
                if (myCoverView.h != null) {
                    myCoverView.setValAnimShow(myCoverView.A);
                }
            }
        };
        this.F = new Runnable() { // from class: com.mycompany.app.view.MyCoverView.7
            @Override // java.lang.Runnable
            public final void run() {
                MyCoverView myCoverView = MyCoverView.this;
                myCoverView.E = false;
                if (myCoverView.i != null) {
                    myCoverView.setValAnimHide(myCoverView.D);
                }
            }
        };
        g(i, i2, i3);
    }
}
