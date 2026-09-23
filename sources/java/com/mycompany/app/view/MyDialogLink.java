package com.mycompany.app.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.MotionEvent;
import android.view.View;
import android.widget.LinearLayout;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;

/* loaded from: classes3.dex */
public class MyDialogLink extends LinearLayout {

    /* renamed from: c, reason: collision with root package name */
    public boolean f18665c;
    public MyProgressDrawable f;
    public boolean g;
    public final int h;
    public int i;
    public Paint j;
    public RectF k;
    public final int l;
    public boolean m;

    public MyDialogLink(Context context) {
        super(context);
        this.f18665c = true;
        this.h = MainApp.l1;
        this.l = MainUtil.l1();
        setFocusable(true);
        setFocusableInTouchMode(true);
    }

    public final void a(MyProgressDrawable myProgressDrawable, int i, int i2) {
        if (myProgressDrawable == null) {
            return;
        }
        int width = getWidth();
        int height = getHeight();
        int i3 = (width - i) / 2;
        int i4 = (height - i2) / 2;
        if (i3 < 0) {
            i3 = 0;
        }
        if (i4 < 0) {
            i4 = 0;
        }
        int i5 = i + i3;
        int i6 = i2 + i4;
        if (i5 <= width) {
            width = i5;
        }
        if (i6 <= height) {
            height = width;
        }
        myProgressDrawable.d(i3, i4, height, i6);
    }

    public final void b(boolean z) {
        int i;
        if (!this.f18665c) {
            return;
        }
        this.g = z;
        if (z) {
            if (getVisibility() == 0) {
                if (this.f == null) {
                    if (MainApp.K1) {
                        i = -328966;
                    } else {
                        i = -13022805;
                    }
                    MyProgressDrawable myProgressDrawable = new MyProgressDrawable(this, MainApp.y1, i);
                    this.f = myProgressDrawable;
                    int i2 = MainApp.z1;
                    a(myProgressDrawable, i2, i2);
                }
                this.f.f();
            }
        } else {
            MyProgressDrawable myProgressDrawable2 = this.f;
            if (myProgressDrawable2 != null) {
                myProgressDrawable2.f = false;
            }
        }
        invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        MyProgressDrawable myProgressDrawable;
        RectF rectF;
        Paint paint = this.j;
        if (paint != null && (rectF = this.k) != null) {
            float f = this.h;
            canvas.drawRoundRect(rectF, f, f, paint);
        }
        super.dispatchDraw(canvas);
        if (this.g && (myProgressDrawable = this.f) != null) {
            myProgressDrawable.a(canvas);
        }
        int i = this.l;
        if (i != 0) {
            canvas.drawColor(i);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (!this.f18665c) {
            return false;
        }
        if (this.m) {
            return true;
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public final void invalidate() {
        if (!this.f18665c) {
            return;
        }
        super.invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        MyProgressDrawable myProgressDrawable;
        super.onAttachedToWindow();
        if (this.g && getVisibility() == 0 && (myProgressDrawable = this.f) != null) {
            myProgressDrawable.f();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        MyProgressDrawable myProgressDrawable = this.f;
        if (myProgressDrawable != null) {
            myProgressDrawable.f = false;
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        MyProgressDrawable myProgressDrawable = this.f;
        int i5 = MainApp.z1;
        a(myProgressDrawable, i5, i5);
        RectF rectF = this.k;
        if (rectF == null) {
            return;
        }
        rectF.set(0.0f, 0.0f, i, i2 + this.h);
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i) {
        MyProgressDrawable myProgressDrawable;
        super.onVisibilityChanged(view, i);
        if (!this.g || (myProgressDrawable = this.f) == null) {
            return;
        }
        if (i == 0) {
            myProgressDrawable.f();
        } else {
            myProgressDrawable.f = false;
        }
    }

    public void setBackColor(int i) {
        if (this.i != i) {
            this.i = i;
            if (i == 0) {
                this.j = null;
                this.k = null;
                invalidate();
                return;
            }
            if (this.j == null) {
                Paint paint = new Paint();
                this.j = paint;
                paint.setAntiAlias(true);
                this.j.setStyle(Paint.Style.FILL);
            }
            this.j.setColor(this.i);
            if (this.k == null) {
                this.k = new RectF();
            }
            int width = getWidth();
            int height = getHeight();
            if (width != 0 && height != 0) {
                RectF rectF = this.k;
                if (rectF != null) {
                    rectF.set(0.0f, 0.0f, width, height + this.h);
                }
                invalidate();
            }
        }
    }
}
