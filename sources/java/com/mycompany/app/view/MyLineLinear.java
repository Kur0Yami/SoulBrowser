package com.mycompany.app.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.widget.LinearLayout;
import com.mycompany.app.main.MainApp;

/* loaded from: classes3.dex */
public class MyLineLinear extends LinearLayout {

    /* renamed from: c, reason: collision with root package name */
    public boolean f18841c;
    public boolean f;
    public boolean g;
    public boolean h;
    public int i;
    public float j;
    public Paint k;
    public int l;

    public MyLineLinear(Context context) {
        super(context);
        this.f18841c = true;
    }

    public final void a() {
        this.f18841c = false;
        this.k = null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        if (this.f18841c) {
            super.dispatchDraw(canvas);
            if (this.f && this.k != null) {
                int width = getWidth();
                int height = getHeight();
                if (this.g) {
                    int i = this.i;
                    float f = this.j;
                    canvas.drawLine(i, f, width - i, f, this.k);
                }
                if (this.h) {
                    int i2 = this.i;
                    float f2 = height - this.j;
                    canvas.drawLine(i2, f2, width - i2, f2, this.k);
                }
            }
            int i3 = this.l;
            if (i3 != 0) {
                canvas.drawColor(i3);
            }
        }
    }

    @Override // android.view.View
    public final void invalidate() {
        if (!this.f18841c) {
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

    public void setFilterColor(int i) {
        if (this.l == i) {
            return;
        }
        this.l = i;
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
            this.j = 0.5f;
            if (this.k == null) {
                Paint paint = new Paint();
                this.k = paint;
                paint.setAntiAlias(true);
                this.k.setStyle(Paint.Style.STROKE);
            }
            this.k.setColor(i);
            this.k.setStrokeWidth(1.0f);
        }
        invalidate();
    }

    public void setLinePad(int i) {
        if (this.i == i) {
            return;
        }
        this.i = i;
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
            this.j = 0.5f;
            if (this.k == null) {
                Paint paint = new Paint();
                this.k = paint;
                paint.setAntiAlias(true);
                this.k.setStyle(Paint.Style.STROKE);
            }
            this.k.setColor(i);
            this.k.setStrokeWidth(1.0f);
        }
        invalidate();
    }
}
