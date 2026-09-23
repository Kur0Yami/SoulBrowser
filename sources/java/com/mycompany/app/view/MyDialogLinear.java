package com.mycompany.app.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.widget.LinearLayout;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;

/* loaded from: classes3.dex */
public class MyDialogLinear extends LinearLayout {

    /* renamed from: c, reason: collision with root package name */
    public boolean f18663c;
    public MyProgressDrawable f;
    public boolean g;
    public int h;
    public int i;
    public boolean j;
    public final int k;
    public int l;
    public RectF m;
    public int n;
    public Paint o;
    public RectF p;
    public int q;
    public int r;
    public Paint s;
    public boolean t;
    public int u;
    public boolean v;

    public MyDialogLinear(Context context) {
        super(context);
        int i;
        if (MainApp.K1) {
            i = -14606047;
        } else {
            i = -1;
        }
        setBackgroundColor(i);
        this.f18663c = true;
        this.k = MainApp.l1;
        setOutlineProvider(new ViewOutlineProvider() { // from class: com.mycompany.app.view.MyDialogLinear.1
            @Override // android.view.ViewOutlineProvider
            public final void getOutline(View view, Outline outline) {
                if (outline == null) {
                    return;
                }
                MyDialogLinear myDialogLinear = MyDialogLinear.this;
                if (myDialogLinear.j) {
                    int width = myDialogLinear.getWidth();
                    int height = myDialogLinear.getHeight();
                    int i2 = myDialogLinear.k;
                    outline.setRoundRect(0, 0, width, height + i2, i2);
                    return;
                }
                outline.setRoundRect(0, 0, myDialogLinear.getWidth(), myDialogLinear.getHeight(), myDialogLinear.k);
            }
        });
        setClipToOutline(true);
        setFocusable(true);
        setFocusableInTouchMode(true);
    }

    public final void a(MyProgressDrawable myProgressDrawable, int i, int i2) {
        int i3;
        if (myProgressDrawable == null) {
            return;
        }
        int width = getWidth();
        int height = getHeight();
        int i4 = this.h;
        int i5 = 0;
        if (i4 > 0 && i4 < height) {
            i3 = height - i4;
            height = i4;
        } else {
            int i6 = this.i;
            if (i6 > 0 && i6 < height) {
                height -= i6;
            }
            i3 = 0;
        }
        int i7 = (width - i) / 2;
        int i8 = (height - i2) / 2;
        if (i7 < 0) {
            i7 = 0;
        }
        if (i8 >= 0) {
            i5 = i8;
        }
        int i9 = i + i7;
        int i10 = i2 + i5;
        if (i9 <= width) {
            width = i9;
        }
        if (i10 <= height) {
            height = width;
        }
        myProgressDrawable.d(i7, i5 + i3, height, i10 + i3);
    }

    public final void b() {
        if (this.g) {
            this.g = false;
            this.v = true;
        } else {
            this.f18663c = false;
            this.p = null;
            this.s = null;
        }
        MyProgressDrawable myProgressDrawable = this.f;
        if (myProgressDrawable != null) {
            myProgressDrawable.f = false;
        }
        if (myProgressDrawable != null) {
            myProgressDrawable.b();
            this.f = null;
        }
    }

    public final void c(int i, int i2) {
        if (this.r == i && this.q == i2) {
            return;
        }
        this.r = i;
        this.q = i2;
        if (i != 0 && i2 != 0) {
            if (this.p == null) {
                this.p = new RectF();
            }
            float f = this.q / 2.0f;
            this.p.set(f, f, getWidth() - f, getHeight() - f);
            Paint paint = new Paint();
            this.s = paint;
            paint.setAntiAlias(true);
            this.s.setStyle(Paint.Style.STROKE);
            this.s.setStrokeWidth(this.q);
            this.s.setColor(this.r);
        } else {
            this.p = null;
            this.s = null;
        }
        invalidate();
    }

    public final void d(int i, int i2) {
        boolean z = false;
        if (i2 == 0) {
            this.l = 0;
            this.m = null;
            this.n = 0;
            this.o = null;
            setBackgroundColor(i);
            return;
        }
        setBackground(null);
        boolean z2 = true;
        if (this.n != i) {
            this.n = i;
            if (i != 0) {
                if (this.o == null) {
                    Paint paint = new Paint();
                    this.o = paint;
                    paint.setStyle(Paint.Style.FILL);
                }
                this.o.setColor(this.n);
            } else {
                this.o = null;
            }
            z = true;
        }
        if (this.l != i2) {
            this.l = i2;
            if (this.n != 0) {
                if (this.m == null) {
                    this.m = new RectF();
                }
                this.m.set(0.0f, this.l, getWidth(), getHeight() + this.l);
            } else {
                this.m = null;
            }
        } else {
            z2 = z;
        }
        if (z2) {
            invalidate();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        int l1;
        MyProgressDrawable myProgressDrawable;
        Paint paint;
        Paint paint2;
        RectF rectF = this.m;
        if (rectF != null && (paint2 = this.o) != null) {
            canvas.drawRect(rectF, paint2);
        }
        super.dispatchDraw(canvas);
        RectF rectF2 = this.p;
        if (rectF2 != null && (paint = this.s) != null) {
            float f = this.k;
            canvas.drawRoundRect(rectF2, f, f, paint);
        }
        if (this.g && (myProgressDrawable = this.f) != null) {
            myProgressDrawable.a(canvas);
        }
        if (this.t) {
            l1 = this.u;
        } else {
            l1 = MainUtil.l1();
        }
        if (l1 != 0) {
            canvas.drawColor(l1);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (!this.f18663c) {
            return false;
        }
        if (this.v) {
            return true;
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public final void e(int i, int i2, boolean z, boolean z2) {
        boolean z3;
        if (!this.f18663c) {
            return;
        }
        this.g = z;
        if (this.h == i && this.i == i2) {
            z3 = false;
        } else {
            z3 = true;
        }
        this.h = i;
        this.i = i2;
        if (z) {
            if (getVisibility() == 0) {
                MyProgressDrawable myProgressDrawable = this.f;
                if (myProgressDrawable == null) {
                    int i3 = -328966;
                    if (!z2 && !MainApp.K1) {
                        i3 = -13022805;
                    }
                    MyProgressDrawable myProgressDrawable2 = new MyProgressDrawable(this, MainApp.y1, i3);
                    this.f = myProgressDrawable2;
                    int i4 = MainApp.z1;
                    a(myProgressDrawable2, i4, i4);
                } else if (z3) {
                    int i5 = MainApp.z1;
                    a(myProgressDrawable, i5, i5);
                }
                this.f.f();
            }
        } else {
            MyProgressDrawable myProgressDrawable3 = this.f;
            if (myProgressDrawable3 != null) {
                myProgressDrawable3.f = false;
            }
        }
        invalidate();
    }

    @Override // android.view.View
    public final void invalidate() {
        if (!this.f18663c) {
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
        RectF rectF = this.m;
        if (rectF != null) {
            rectF.set(0.0f, this.l, i, r7 + i2);
        }
        RectF rectF2 = this.p;
        if (rectF2 != null) {
            float f = this.q / 2.0f;
            rectF2.set(f, f, i - f, i2 - f);
        }
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

    public void setBlockTouch(boolean z) {
        this.v = z;
    }

    public void setFilterColor(int i) {
        if (this.t && this.u == i) {
            return;
        }
        this.t = true;
        this.u = i;
        invalidate();
    }

    public void setRoundUp(boolean z) {
        this.j = z;
    }
}
