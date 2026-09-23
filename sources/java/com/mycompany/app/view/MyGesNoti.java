package com.mycompany.app.view;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.web.WebViewActivity;

/* loaded from: classes3.dex */
public class MyGesNoti extends View {

    /* renamed from: c, reason: collision with root package name */
    public boolean f18784c;
    public RectF f;
    public Paint g;
    public ValueAnimator h;
    public ValueAnimator i;
    public boolean j;
    public int k;
    public Drawable l;
    public boolean m;
    public float n;
    public boolean o;
    public final Runnable p;
    public float q;
    public boolean r;
    public final Runnable s;

    public MyGesNoti(WebViewActivity webViewActivity) {
        super(webViewActivity);
        this.p = new Runnable() { // from class: com.mycompany.app.view.MyGesNoti.4
            @Override // java.lang.Runnable
            public final void run() {
                MyGesNoti myGesNoti = MyGesNoti.this;
                myGesNoti.o = false;
                if (myGesNoti.h != null) {
                    myGesNoti.setValAnimShow(myGesNoti.n);
                }
            }
        };
        this.s = new Runnable() { // from class: com.mycompany.app.view.MyGesNoti.8
            @Override // java.lang.Runnable
            public final void run() {
                MyGesNoti myGesNoti = MyGesNoti.this;
                myGesNoti.r = false;
                if (myGesNoti.i != null) {
                    myGesNoti.setValAnimHide(myGesNoti.q);
                }
            }
        };
        this.f18784c = true;
        this.f = new RectF();
        Paint paint = new Paint();
        this.g = paint;
        paint.setAntiAlias(true);
        this.g.setStyle(Paint.Style.FILL);
        this.g.setColor(-509171222);
        this.k = 4;
        this.l = MainUtil.S(getContext(), R.drawable.outline_subdirectory_arrow_right_white_24);
        this.m = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setOnlyVisibility(int i) {
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
        this.j = false;
        if (this.i != null || getVisibility() != 0) {
            return;
        }
        float alpha = getAlpha();
        this.q = alpha;
        this.r = false;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(alpha, 0.0f);
        this.i = ofFloat;
        ofFloat.setDuration(alpha * 400.0f);
        this.i.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.view.MyGesNoti.6
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                MyGesNoti myGesNoti = MyGesNoti.this;
                if (myGesNoti.i != null) {
                    float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    if (myGesNoti.i != null) {
                        myGesNoti.q = floatValue;
                        if (myGesNoti.r) {
                            return;
                        }
                        myGesNoti.r = true;
                        MainApp.N(myGesNoti.getContext(), myGesNoti.s);
                    }
                }
            }
        });
        this.i.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.view.MyGesNoti.7
            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationCancel(Animator animator) {
                MyGesNoti myGesNoti = MyGesNoti.this;
                if (myGesNoti.i == null) {
                    return;
                }
                myGesNoti.i = null;
                myGesNoti.invalidate();
            }

            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                final MyGesNoti myGesNoti = MyGesNoti.this;
                myGesNoti.j = false;
                if (myGesNoti.i == null) {
                    return;
                }
                MainApp.N(myGesNoti.getContext(), new Runnable() { // from class: com.mycompany.app.view.MyGesNoti.9
                    @Override // java.lang.Runnable
                    public final void run() {
                        MyGesNoti myGesNoti2 = MyGesNoti.this;
                        if (myGesNoti2.i == null) {
                            return;
                        }
                        myGesNoti2.i = null;
                        myGesNoti2.setOnlyVisibility(8);
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
        ValueAnimator valueAnimator = this.h;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.h = null;
        }
        this.i.start();
    }

    public final void e() {
        long j;
        this.j = true;
        Runnable runnable = new Runnable() { // from class: com.mycompany.app.view.MyGesNoti.1
            @Override // java.lang.Runnable
            public final void run() {
                MyGesNoti myGesNoti = MyGesNoti.this;
                if (myGesNoti.j) {
                    myGesNoti.d();
                }
            }
        };
        if (this.h == null) {
            j = 400;
        } else {
            j = 800;
        }
        postDelayed(runnable, j);
    }

    public final void f(int i) {
        float f;
        this.j = false;
        if (this.k != i) {
            this.k = i;
            invalidate();
        }
        if (this.h == null) {
            if (getVisibility() != 0 || this.i != null) {
                if (getVisibility() == 0) {
                    f = getAlpha();
                    if (f >= 1.0f) {
                        return;
                    }
                } else {
                    f = 0.0f;
                }
                this.n = f;
                this.o = false;
                ValueAnimator ofFloat = ValueAnimator.ofFloat(f, 1.0f);
                this.h = ofFloat;
                ofFloat.setDuration((1.0f - f) * 400.0f);
                this.h.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.view.MyGesNoti.2
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        MyGesNoti myGesNoti = MyGesNoti.this;
                        if (myGesNoti.h != null) {
                            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                            if (myGesNoti.h != null) {
                                myGesNoti.n = floatValue;
                                if (myGesNoti.o) {
                                    return;
                                }
                                myGesNoti.o = true;
                                MainApp.N(myGesNoti.getContext(), myGesNoti.p);
                            }
                        }
                    }
                });
                this.h.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.view.MyGesNoti.3
                    @Override // android.animation.Animator.AnimatorListener
                    public final void onAnimationCancel(Animator animator) {
                        MyGesNoti myGesNoti = MyGesNoti.this;
                        if (myGesNoti.h != null) {
                            myGesNoti.h = null;
                            myGesNoti.invalidate();
                            if (myGesNoti.j) {
                                myGesNoti.d();
                            }
                        }
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator) {
                        final MyGesNoti myGesNoti = MyGesNoti.this;
                        if (myGesNoti.h == null) {
                            return;
                        }
                        MainApp.N(myGesNoti.getContext(), new Runnable() { // from class: com.mycompany.app.view.MyGesNoti.5
                            @Override // java.lang.Runnable
                            public final void run() {
                                MyGesNoti myGesNoti2 = MyGesNoti.this;
                                if (myGesNoti2.h != null) {
                                    myGesNoti2.h = null;
                                    myGesNoti2.setValAnimShow(1.0f);
                                    if (myGesNoti2.j) {
                                        myGesNoti2.d();
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
                ValueAnimator valueAnimator = this.i;
                if (valueAnimator != null) {
                    valueAnimator.cancel();
                    this.i = null;
                }
                this.h.start();
            }
        }
    }

    @Override // android.view.View
    public final void invalidate() {
        if (!this.f18784c) {
            return;
        }
        super.invalidate();
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
        Paint paint;
        if (this.f18784c) {
            RectF rectF = this.f;
            if (rectF != null && (paint = this.g) != null) {
                float f = MainApp.E1;
                canvas.drawRoundRect(rectF, f, f, paint);
            }
            Drawable drawable = this.l;
            if (drawable == null) {
                return;
            }
            if (this.m) {
                this.m = false;
                int i = MainApp.g1;
                int width = (getWidth() - i) / 2;
                int height = (getHeight() - i) / 2;
                drawable.setBounds(width, height, width + i, i + height);
            }
            int i2 = this.k;
            if (i2 == 1) {
                canvas.scale(-1.0f, -1.0f, getWidth() / 2, getHeight() / 2);
            } else if (i2 == 2) {
                canvas.scale(1.0f, -1.0f, getWidth() / 2, getHeight() / 2);
            } else if (i2 == 3) {
                canvas.scale(-1.0f, 1.0f, getWidth() / 2, getHeight() / 2);
            }
            this.l.draw(canvas);
        }
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        RectF rectF = this.f;
        if (rectF != null) {
            rectF.set(0.0f, 0.0f, i, i2);
        }
        this.m = true;
    }
}
