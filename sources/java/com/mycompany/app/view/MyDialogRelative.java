package com.mycompany.app.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.widget.RelativeLayout;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;

/* loaded from: classes3.dex */
public class MyDialogRelative extends RelativeLayout {

    /* renamed from: c, reason: collision with root package name */
    public boolean f18683c;
    public MyProgressDrawable f;
    public boolean g;
    public boolean h;
    public boolean i;
    public int j;
    public RectF k;
    public int l;
    public int m;
    public Paint n;
    public boolean o;
    public int p;
    public boolean q;

    public MyDialogRelative(Context context) {
        super(context);
        b(true);
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
        if (MainApp.K1) {
            i = -14606047;
        } else {
            i = -1;
        }
        setBackgroundColor(i);
        this.f18683c = true;
        this.h = true;
        this.i = z;
        this.j = MainApp.l1;
        setOutlineProvider(new ViewOutlineProvider() { // from class: com.mycompany.app.view.MyDialogRelative.1
            @Override // android.view.ViewOutlineProvider
            public final void getOutline(View view, Outline outline) {
                if (outline != null) {
                    MyDialogRelative myDialogRelative = MyDialogRelative.this;
                    boolean z2 = myDialogRelative.h;
                    if (z2 && myDialogRelative.i) {
                        outline.setRoundRect(0, 0, myDialogRelative.getWidth(), myDialogRelative.getHeight(), myDialogRelative.j);
                        return;
                    }
                    if (z2) {
                        int width = myDialogRelative.getWidth();
                        int height = myDialogRelative.getHeight();
                        int i2 = myDialogRelative.j;
                        outline.setRoundRect(0, 0, width, height + i2, i2);
                        return;
                    }
                    if (myDialogRelative.i) {
                        outline.setRoundRect(0, -myDialogRelative.j, myDialogRelative.getWidth(), myDialogRelative.getHeight(), myDialogRelative.j);
                    }
                }
            }
        });
        setClipToOutline(true);
        setFocusable(true);
        setFocusableInTouchMode(true);
    }

    public void c() {
        if (this.g) {
            this.g = false;
            this.q = true;
        } else {
            this.f18683c = false;
            this.k = null;
            this.n = null;
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

    public final void d(int i, int i2) {
        if (this.m == i && this.l == i2) {
            return;
        }
        this.m = i;
        this.l = i2;
        if (i != 0 && i2 != 0) {
            if (this.k == null) {
                this.k = new RectF();
            }
            float f = this.l / 2.0f;
            this.k.set(f, f, getWidth() - f, getHeight() - f);
            Paint paint = new Paint();
            this.n = paint;
            paint.setAntiAlias(true);
            this.n.setStyle(Paint.Style.STROKE);
            this.n.setStrokeWidth(this.l);
            this.n.setColor(this.m);
        } else {
            this.k = null;
            this.n = null;
        }
        invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        int l1;
        super.dispatchDraw(canvas);
        if (this.o) {
            l1 = this.p;
        } else {
            l1 = MainUtil.l1();
        }
        if (l1 != 0) {
            canvas.drawColor(l1);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (!this.f18683c) {
            return false;
        }
        if (this.q) {
            return true;
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        MyProgressDrawable myProgressDrawable;
        Paint paint;
        if (this.f18683c) {
            super.draw(canvas);
            RectF rectF = this.k;
            if (rectF != null && (paint = this.n) != null) {
                float f = this.j;
                canvas.drawRoundRect(rectF, f, f, paint);
            }
            if (this.g && (myProgressDrawable = this.f) != null) {
                myProgressDrawable.a(canvas);
            }
        }
    }

    public final void e(boolean z) {
        int i;
        if (!this.f18683c) {
            return;
        }
        this.g = z;
        if (z) {
            if (getVisibility() == 0) {
                if (this.f == null) {
                    float f = MainApp.y1;
                    if (MainApp.K1) {
                        i = -328966;
                    } else {
                        i = -13022805;
                    }
                    MyProgressDrawable myProgressDrawable = new MyProgressDrawable(this, f, i);
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

    @Override // android.view.View
    public final void invalidate() {
        if (!this.f18683c) {
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
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        MyProgressDrawable myProgressDrawable = this.f;
        int i5 = MainApp.z1;
        a(myProgressDrawable, i5, i5);
        RectF rectF = this.k;
        if (rectF != null) {
            float f = this.l / 2.0f;
            rectF.set(f, f, i - f, i2 - f);
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
        this.q = z;
    }

    public void setFilterColor(int i) {
        if (this.o && this.p == i) {
            return;
        }
        this.o = true;
        this.p = i;
        invalidate();
    }

    public MyDialogRelative(Context context, int i) {
        super(context);
        b(false);
    }
}
