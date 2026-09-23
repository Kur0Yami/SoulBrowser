package com.mycompany.app.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.widget.ImageView;
import com.mycompany.app.main.MainApp;

/* loaded from: classes3.dex */
public class MyLineImage extends ImageView {

    /* renamed from: c, reason: collision with root package name */
    public boolean f18840c;
    public boolean f;
    public boolean g;
    public boolean h;
    public float i;
    public Paint j;

    public MyLineImage(Context context) {
        super(context);
        this.f18840c = true;
    }

    public final void a() {
        int i;
        this.f = true;
        this.h = true;
        if (MainApp.K1) {
            i = -12632257;
        } else {
            i = -2434342;
        }
        this.i = 0.5f;
        Paint paint = new Paint();
        this.j = paint;
        paint.setAntiAlias(true);
        this.j.setStyle(Paint.Style.STROKE);
        this.j.setColor(i);
        this.j.setStrokeWidth(1.0f);
    }

    public final void b() {
        int i;
        this.f = true;
        this.g = true;
        if (MainApp.K1) {
            i = -12632257;
        } else {
            i = -2434342;
        }
        this.i = 0.5f;
        Paint paint = new Paint();
        this.j = paint;
        paint.setAntiAlias(true);
        this.j.setStyle(Paint.Style.STROKE);
        this.j.setColor(i);
        this.j.setStrokeWidth(1.0f);
    }

    public final void c() {
        this.f18840c = false;
        this.j = null;
    }

    public final void d(boolean z) {
        int i;
        if (this.f && this.g == z) {
            return;
        }
        this.f = true;
        this.g = z;
        this.h = !z;
        if (this.j != null) {
            return;
        }
        if (MainApp.K1) {
            i = -12632257;
        } else {
            i = -2434342;
        }
        this.i = 0.5f;
        Paint paint = new Paint();
        this.j = paint;
        paint.setAntiAlias(true);
        this.j.setStyle(Paint.Style.STROKE);
        this.j.setColor(i);
        this.j.setStrokeWidth(1.0f);
    }

    @Override // android.view.View
    public final void dispatchDraw(Canvas canvas) {
        if (this.f18840c) {
            super.dispatchDraw(canvas);
            if (this.f && this.j != null) {
                int width = getWidth();
                int height = getHeight();
                if (this.g) {
                    float f = this.i;
                    canvas.drawLine(0, f, width, f, this.j);
                }
                if (this.h) {
                    float f2 = height - this.i;
                    canvas.drawLine(0, f2, width, f2, this.j);
                }
            }
        }
    }

    @Override // android.view.View
    public final void invalidate() {
        if (!this.f18840c) {
            return;
        }
        super.invalidate();
    }
}
