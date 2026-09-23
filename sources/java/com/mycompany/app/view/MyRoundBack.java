package com.mycompany.app.view;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.View;
import com.mycompany.app.main.MainApp;

/* loaded from: classes3.dex */
public class MyRoundBack extends View {

    /* renamed from: c, reason: collision with root package name */
    public boolean f18927c;
    public int f;
    public int g;
    public Paint h;
    public RectF i;
    public RectF j;

    public final void a(int i, boolean z) {
        if (this.g == i && this.f18927c == z) {
            return;
        }
        this.g = i;
        this.f18927c = z;
        if (i != 0) {
            this.f = MainApp.F1;
            if (this.h == null) {
                Paint paint = new Paint();
                this.h = paint;
                paint.setAntiAlias(true);
                this.h.setStyle(Paint.Style.FILL);
            }
            this.h.setColor(this.g);
            if (this.i == null) {
                this.i = new RectF();
            }
            if (this.j == null) {
                this.j = new RectF();
            }
            b(getWidth(), getHeight());
        } else {
            this.h = null;
            this.i = null;
            this.j = null;
        }
        invalidate();
    }

    public final void b(int i, int i2) {
        RectF rectF;
        if (i != 0 && i2 != 0 && (rectF = this.i) != null && this.j != null) {
            if (this.f18927c) {
                int i3 = this.f;
                float f = i;
                rectF.set(0.0f, -i3, f, i2 - (i3 * 3));
                RectF rectF2 = this.j;
                int i4 = this.f;
                rectF2.set(0.0f, i2 - i4, f, i2 + i4);
                return;
            }
            float f2 = i;
            rectF.set(0.0f, -r1, f2, this.f);
            RectF rectF3 = this.j;
            int i5 = this.f;
            rectF3.set(0.0f, i5 * 3, f2, i2 + i5);
        }
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        Paint paint = this.h;
        if (paint != null) {
            RectF rectF = this.i;
            if (rectF != null) {
                int i = this.f;
                canvas.drawRoundRect(rectF, i, i, paint);
            }
            RectF rectF2 = this.j;
            if (rectF2 != null) {
                int i2 = this.f;
                canvas.drawRoundRect(rectF2, i2, i2, this.h);
            }
        }
        super.onDraw(canvas);
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        b(i, i2);
    }
}
