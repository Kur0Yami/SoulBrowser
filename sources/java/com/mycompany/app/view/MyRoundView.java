package com.mycompany.app.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.View;
import com.mycompany.app.main.MainApp;

/* loaded from: classes3.dex */
public class MyRoundView extends View {

    /* renamed from: c, reason: collision with root package name */
    public int f18944c;
    public RectF f;
    public Paint g;
    public int h;
    public int i;

    public MyRoundView(Context context) {
        super(context);
        int i;
        if (MainApp.K1) {
            i = -14606047;
        } else {
            i = -460552;
        }
        this.f18944c = i;
        this.h = MainApp.E1;
        this.i = MainApp.F1;
        this.f = new RectF();
        Paint paint = new Paint();
        this.g = paint;
        paint.setAntiAlias(true);
        this.g.setStyle(Paint.Style.FILL);
        this.g.setColor(this.f18944c);
    }

    public final void a() {
        this.f = null;
        this.g = null;
    }

    @Override // android.view.View
    public final void dispatchDraw(Canvas canvas) {
        Paint paint;
        RectF rectF = this.f;
        if (rectF != null && (paint = this.g) != null) {
            int i = this.h;
            canvas.drawRoundRect(rectF, i, i, paint);
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        RectF rectF;
        super.onSizeChanged(i, i2, i3, i4);
        if (i != 0 && i2 != 0 && (rectF = this.f) != null) {
            float f = this.i;
            rectF.set(f, f, i - r5, i2 - r5);
        }
    }

    public void setBackColor(int i) {
        Paint paint = this.g;
        if (paint == null || this.f18944c == i) {
            return;
        }
        this.f18944c = i;
        paint.setColor(i);
        invalidate();
    }

    public void setBackPad(int i) {
        RectF rectF;
        if (this.i == i) {
            return;
        }
        this.i = i;
        int width = getWidth();
        int height = getHeight();
        if (width != 0 && height != 0 && (rectF = this.f) != null) {
            float f = this.i;
            rectF.set(f, f, width - r2, height - r2);
        }
        invalidate();
    }
}
