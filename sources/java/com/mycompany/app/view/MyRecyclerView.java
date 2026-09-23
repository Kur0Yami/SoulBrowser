package com.mycompany.app.view;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewOutlineProvider;
import androidx.recyclerview.widget.RecyclerView;
import com.mycompany.app.dialog.a;
import com.mycompany.app.image.ImageSizeListener;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.soulbrowser.R;

/* loaded from: classes3.dex */
public class MyRecyclerView extends RecyclerView {
    public boolean Q0;
    public Drawable R0;
    public boolean S0;
    public boolean T0;
    public boolean U0;
    public boolean V0;
    public int W0;
    public ImageSizeListener X0;
    public MyFadeListener Y0;
    public ValueAnimator Z0;
    public boolean a1;
    public RectF b1;
    public float c1;
    public float d1;
    public int e1;
    public Paint f1;
    public float g1;
    public Paint h1;
    public boolean i1;
    public float j1;
    public boolean k1;
    public final Runnable l1;

    public MyRecyclerView(Context context) {
        super(context, null);
        this.l1 = new Runnable() { // from class: com.mycompany.app.view.MyRecyclerView.4
            @Override // java.lang.Runnable
            public final void run() {
                MyRecyclerView myRecyclerView = MyRecyclerView.this;
                myRecyclerView.k1 = false;
                if (myRecyclerView.Z0 != null) {
                    myRecyclerView.setValAnimShow(myRecyclerView.j1);
                }
            }
        };
        this.W0 = MainApp.m1;
        if (Build.VERSION.SDK_INT < 31) {
            setOverScrollMode(2);
        }
        v0();
        this.Q0 = true;
    }

    private void setShadowRect(int i) {
        Drawable drawable = this.R0;
        if (drawable == null || i == 0) {
            return;
        }
        drawable.setBounds(0, 0, i, MainApp.e1);
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

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        Canvas canvas2;
        Drawable drawable;
        Paint paint;
        if (this.Q0) {
            if (this.h1 != null) {
                int width = getWidth();
                int height = getHeight();
                float f = this.g1;
                float f2 = width;
                canvas2 = canvas;
                canvas2.drawLine(0.0f, f, f2, f, this.h1);
                float f3 = height - this.g1;
                canvas2.drawLine(0.0f, f3, f2, f3, this.h1);
            } else {
                canvas2 = canvas;
            }
            super.dispatchDraw(canvas2);
            RectF rectF = this.b1;
            if (rectF != null && (paint = this.f1) != null) {
                float f4 = this.W0;
                canvas2.drawRoundRect(rectF, f4, f4, paint);
            }
            if (!this.S0 && (drawable = this.R0) != null) {
                drawable.draw(canvas2);
            }
        }
    }

    @Override // android.view.View
    public final void invalidate() {
        if (!this.Q0) {
            return;
        }
        super.invalidate();
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        RectF rectF = this.b1;
        if (rectF != null) {
            float f = this.d1;
            rectF.set(f, f, i - f, i2 - f);
        }
        setShadowRect(i);
        ImageSizeListener imageSizeListener = this.X0;
        if (imageSizeListener != null) {
            imageSizeListener.a(this, i, i2);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.i1) {
            this.i1 = false;
            motionEvent.setAction(3);
        }
        return super.onTouchEvent(motionEvent);
    }

    public final void r0() {
        if (this.S0) {
            return;
        }
        this.S0 = true;
        invalidate();
    }

    public final void s0() {
        if (!this.Q0) {
            return;
        }
        this.Q0 = false;
        p0();
        ValueAnimator valueAnimator = this.Z0;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.Z0 = null;
        }
        this.R0 = null;
        this.X0 = null;
        this.Y0 = null;
        this.b1 = null;
        this.f1 = null;
        this.h1 = null;
    }

    public void setLineMenu(boolean z) {
        int i;
        if (z) {
            if (MainApp.K1) {
                i = -14606047;
            } else {
                i = -1;
            }
            float f = MainApp.G1;
            this.g1 = f / 2.0f;
            if (this.h1 == null) {
                Paint paint = new Paint();
                this.h1 = paint;
                paint.setAntiAlias(true);
                this.h1.setStyle(Paint.Style.STROKE);
            }
            this.h1.setColor(i);
            this.h1.setStrokeWidth(f);
            return;
        }
        this.h1 = null;
    }

    public void setPullDown(boolean z) {
        this.i1 = z;
    }

    public void setRoundSize(int i) {
        this.W0 = i;
    }

    public void setSizeListener(ImageSizeListener imageSizeListener) {
        this.X0 = imageSizeListener;
    }

    public final void t0(int i) {
        RectF rectF;
        if (this.e1 == i) {
            return;
        }
        this.e1 = i;
        if (i != 0) {
            float f = MainApp.n1;
            this.c1 = f;
            this.d1 = f / 2.0f;
            if (this.b1 == null) {
                this.b1 = new RectF();
            }
            int width = getWidth();
            int height = getHeight();
            if (width != 0 && height != 0 && (rectF = this.b1) != null) {
                float f2 = this.d1;
                rectF.set(f2, f2, width - f2, height - f2);
            }
            if (this.f1 == null) {
                Paint paint = new Paint();
                this.f1 = paint;
                paint.setAntiAlias(true);
                this.f1.setStyle(Paint.Style.STROKE);
                this.f1.setStrokeWidth(this.c1);
            }
            this.f1.setColor(this.e1);
            return;
        }
        this.b1 = null;
        this.f1 = null;
    }

    public final void u0(boolean z, boolean z2) {
        if (this.T0 == z && this.U0 == z2) {
            return;
        }
        this.T0 = z;
        this.U0 = z2;
        v0();
    }

    public final void v0() {
        boolean z;
        boolean z2 = this.T0;
        if (!z2 && !this.U0) {
            z = false;
        } else {
            z = true;
        }
        if (this.V0 == z) {
            return;
        }
        this.V0 = z;
        if (!z2 && !this.U0) {
            setClipToOutline(false);
        } else {
            setOutlineProvider(new ViewOutlineProvider() { // from class: com.mycompany.app.view.MyRecyclerView.1
                @Override // android.view.ViewOutlineProvider
                public final void getOutline(View view, Outline outline) {
                    if (outline != null) {
                        MyRecyclerView myRecyclerView = MyRecyclerView.this;
                        boolean z3 = myRecyclerView.T0;
                        if (z3 && myRecyclerView.U0) {
                            outline.setRoundRect(0, 0, myRecyclerView.getWidth(), myRecyclerView.getHeight(), myRecyclerView.W0);
                            return;
                        }
                        if (z3) {
                            int width = myRecyclerView.getWidth();
                            int height = myRecyclerView.getHeight();
                            int i = myRecyclerView.W0;
                            outline.setRoundRect(0, 0, width, height + i, i);
                            return;
                        }
                        if (myRecyclerView.U0) {
                            outline.setRoundRect(0, -myRecyclerView.W0, myRecyclerView.getWidth(), myRecyclerView.getHeight(), myRecyclerView.W0);
                        }
                    }
                }
            });
            setClipToOutline(true);
        }
    }

    public final void w0() {
        if (this.R0 == null) {
            this.R0 = MainUtil.S(getContext(), R.drawable.shadow_list_up);
        }
        setShadowRect(getWidth());
        this.S0 = false;
        invalidate();
    }

    public final void x0(int i, int i2, boolean z, MyFadeListener myFadeListener) {
        if (this.Z0 != null) {
            return;
        }
        this.a1 = !z;
        this.Y0 = myFadeListener;
        setPivotX(i);
        setPivotY(i2);
        if (z) {
            this.j1 = 0.0f;
            this.k1 = false;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            this.Z0 = ofFloat;
            a.v(ofFloat);
        } else {
            this.j1 = 1.0f;
            this.k1 = false;
            ValueAnimator ofFloat2 = ValueAnimator.ofFloat(1.0f, 0.0f);
            this.Z0 = ofFloat2;
            a.r(ofFloat2);
        }
        this.Z0.setDuration(200L);
        this.Z0.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.view.MyRecyclerView.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                MyRecyclerView myRecyclerView = MyRecyclerView.this;
                if (myRecyclerView.Z0 != null) {
                    float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    if (myRecyclerView.Z0 != null) {
                        myRecyclerView.j1 = floatValue;
                        if (myRecyclerView.k1) {
                            return;
                        }
                        myRecyclerView.k1 = true;
                        MainApp.N(myRecyclerView.getContext(), myRecyclerView.l1);
                    }
                }
            }
        });
        this.Z0.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.view.MyRecyclerView.3
            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationCancel(Animator animator) {
                MyRecyclerView myRecyclerView = MyRecyclerView.this;
                if (myRecyclerView.Z0 != null) {
                    myRecyclerView.Z0 = null;
                    if (myRecyclerView.a1) {
                        myRecyclerView.setVisibility(8);
                        MyFadeListener myFadeListener2 = myRecyclerView.Y0;
                        if (myFadeListener2 != null) {
                            myFadeListener2.a(false);
                        }
                    }
                }
            }

            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                final MyRecyclerView myRecyclerView = MyRecyclerView.this;
                if (myRecyclerView.Z0 == null) {
                    return;
                }
                MainApp.N(myRecyclerView.getContext(), new Runnable() { // from class: com.mycompany.app.view.MyRecyclerView.5
                    @Override // java.lang.Runnable
                    public final void run() {
                        MyRecyclerView myRecyclerView2 = MyRecyclerView.this;
                        if (myRecyclerView2.Z0 != null) {
                            myRecyclerView2.Z0 = null;
                            if (!myRecyclerView2.a1) {
                                myRecyclerView2.setValAnimShow(1.0f);
                                return;
                            }
                            myRecyclerView2.setVisibility(8);
                            MyFadeListener myFadeListener2 = myRecyclerView2.Y0;
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
        this.Z0.start();
    }
}
