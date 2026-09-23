package com.mycompany.app.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.View;
import com.mycompany.app.main.MainApp;

/* loaded from: classes3.dex */
public class MyLineView extends View {

    /* renamed from: c, reason: collision with root package name */
    public boolean f18848c;
    public boolean f;
    public boolean g;
    public boolean h;
    public boolean i;
    public boolean j;
    public int k;
    public float l;
    public Paint m;

    public MyLineView(Context context) {
        super(context);
        this.f18848c = true;
    }

    public final void a(float f) {
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

    public final void b() {
        this.f18848c = false;
        this.m = null;
    }

    public final void c(float f, int i) {
        if (this.m == null) {
            return;
        }
        this.l = f / 2.0f;
        Paint paint = new Paint();
        this.m = paint;
        paint.setAntiAlias(true);
        this.m.setStyle(Paint.Style.STROKE);
        this.m.setColor(i);
        this.m.setStrokeWidth(f);
        invalidate();
    }

    public final void d(float f, int i) {
        if (i != 0 && f != 0.0f) {
            this.h = true;
            this.f = true;
            this.l = f / 2.0f;
            if (this.m == null) {
                Paint paint = new Paint();
                this.m = paint;
                paint.setAntiAlias(true);
                this.m.setStyle(Paint.Style.STROKE);
            }
            this.m.setColor(i);
            this.m.setStrokeWidth(f);
            invalidate();
        }
    }

    @Override // android.view.View
    public final void dispatchDraw(Canvas canvas) {
        if (this.f18848c) {
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

    @Override // android.view.View
    public final void invalidate() {
        if (!this.f18848c) {
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

    public void setLinePad(int i) {
        if (this.k == i) {
            return;
        }
        this.k = i;
        invalidate();
    }
}
