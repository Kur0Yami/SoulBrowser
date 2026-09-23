package com.mycompany.app.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.widget.FrameLayout;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;

/* loaded from: classes3.dex */
public class MyLineFrame extends FrameLayout {

    /* renamed from: c, reason: collision with root package name */
    public boolean f18839c;
    public boolean f;
    public boolean g;
    public boolean h;
    public boolean i;
    public boolean j;
    public int k;
    public float l;
    public Paint m;
    public boolean n;

    public MyLineFrame(Context context) {
        super(context);
        this.f18839c = true;
        this.n = MainApp.K1;
    }

    public final void a(int i) {
        int i2;
        this.f = true;
        this.h = true;
        this.k = i;
        if (MainApp.K1) {
            i2 = -12632257;
        } else {
            i2 = -2434342;
        }
        this.l = 0.5f;
        Paint paint = new Paint();
        this.m = paint;
        paint.setAntiAlias(true);
        this.m.setStyle(Paint.Style.STROKE);
        this.m.setColor(i2);
        this.m.setStrokeWidth(1.0f);
    }

    public final void b() {
        int i;
        this.f = true;
        this.i = true;
        this.k = 0;
        if (MainUtil.O5(getContext())) {
            this.j = true;
        }
        if (MainApp.K1) {
            i = -12632257;
        } else {
            i = -2434342;
        }
        this.l = 0.5f;
        Paint paint = new Paint();
        this.m = paint;
        paint.setAntiAlias(true);
        this.m.setStyle(Paint.Style.STROKE);
        this.m.setColor(i);
        this.m.setStrokeWidth(1.0f);
    }

    public final void c() {
        int i;
        this.f = true;
        this.j = true;
        this.k = 0;
        if (MainUtil.O5(getContext())) {
            this.i = true;
        }
        if (MainApp.K1) {
            i = -12632257;
        } else {
            i = -2434342;
        }
        this.l = 0.5f;
        Paint paint = new Paint();
        this.m = paint;
        paint.setAntiAlias(true);
        this.m.setStyle(Paint.Style.STROKE);
        this.m.setColor(i);
        this.m.setStrokeWidth(1.0f);
    }

    public final void d(int i) {
        e(i, MainApp.K1);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        if (this.f18839c) {
            super.dispatchDraw(canvas);
            if (this.f && this.m != null) {
                int width = getWidth();
                int height = getHeight();
                if (this.g) {
                    int i = this.k;
                    float f = this.l;
                    canvas.drawLine(i, f, width - i, f, this.m);
                }
                if (this.h) {
                    int i2 = this.k;
                    float f2 = height - this.l;
                    canvas.drawLine(i2, f2, width - i2, f2, this.m);
                }
                if (this.i) {
                    float f3 = this.l;
                    canvas.drawLine(f3, 0.0f, f3, height, this.m);
                }
                if (this.j) {
                    float f4 = width - this.l;
                    canvas.drawLine(f4, 0.0f, f4, height, this.m);
                }
            }
        }
    }

    public final void e(int i, boolean z) {
        int i2;
        this.f = true;
        this.g = true;
        this.k = i;
        if (z) {
            i2 = -12632257;
        } else {
            i2 = -2434342;
        }
        this.l = 0.5f;
        Paint paint = new Paint();
        this.m = paint;
        paint.setAntiAlias(true);
        this.m.setStyle(Paint.Style.STROKE);
        this.m.setColor(i2);
        this.m.setStrokeWidth(1.0f);
    }

    public final void f(float f) {
        int i;
        this.g = true;
        this.h = true;
        this.i = true;
        this.j = true;
        this.f = true;
        if (MainApp.K1) {
            i = -12632257;
        } else {
            i = -2434342;
        }
        this.l = f / 2.0f;
        Paint paint = new Paint();
        this.m = paint;
        paint.setAntiAlias(true);
        this.m.setStyle(Paint.Style.STROKE);
        this.m.setColor(i);
        this.m.setStrokeWidth(f);
    }

    public final void g() {
        this.f18839c = false;
        this.m = null;
    }

    public final void h() {
        int i;
        Paint paint = this.m;
        if (paint != null) {
            boolean z = this.n;
            boolean z2 = MainApp.K1;
            if (z != z2) {
                this.n = z2;
                if (z2) {
                    i = -12632257;
                } else {
                    i = -2434342;
                }
                paint.setColor(i);
                invalidate();
            }
        }
    }

    @Override // android.view.View
    public final void invalidate() {
        if (!this.f18839c) {
            return;
        }
        super.invalidate();
    }

    public void setDrawLine(boolean z) {
        if (this.f == z) {
            return;
        }
        this.f = z;
        invalidate();
    }

    public void setLineColor(int i) {
        Paint paint = this.m;
        if (paint == null) {
            return;
        }
        paint.setColor(i);
        invalidate();
    }

    public void setLineDn(boolean z) {
        int i;
        if (this.h == z) {
            return;
        }
        this.h = z;
        if (z && !this.f) {
            this.f = true;
            if (MainApp.K1) {
                i = -12632257;
            } else {
                i = -2434342;
            }
            this.l = 0.5f;
            if (this.m == null) {
                Paint paint = new Paint();
                this.m = paint;
                paint.setAntiAlias(true);
                this.m.setStyle(Paint.Style.STROKE);
            }
            this.m.setColor(i);
            this.m.setStrokeWidth(1.0f);
        }
        invalidate();
    }

    public void setLinePad(int i) {
        if (this.k == i) {
            return;
        }
        this.k = i;
        invalidate();
    }

    public void setLineUp(boolean z) {
        int i;
        if (this.g == z) {
            return;
        }
        this.g = z;
        if (z && !this.f) {
            this.f = true;
            if (MainApp.K1) {
                i = -12632257;
            } else {
                i = -2434342;
            }
            this.l = 0.5f;
            if (this.m == null) {
                Paint paint = new Paint();
                this.m = paint;
                paint.setAntiAlias(true);
                this.m.setStyle(Paint.Style.STROKE);
            }
            this.m.setColor(i);
            this.m.setStrokeWidth(1.0f);
        }
        invalidate();
    }
}
