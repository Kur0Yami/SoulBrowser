package com.mycompany.app.view;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.widget.RelativeLayout;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.setting.CastActivity;

/* loaded from: classes3.dex */
public class MyRoundRelative extends RelativeLayout {

    /* renamed from: c, reason: collision with root package name */
    public int f18943c;
    public RectF f;
    public Paint g;

    public MyRoundRelative(CastActivity castActivity) {
        super(castActivity);
        int i;
        if (MainApp.K1) {
            i = -14606047;
        } else {
            i = -1;
        }
        this.f18943c = i;
        this.f = new RectF();
        Paint paint = new Paint();
        this.g = paint;
        paint.setAntiAlias(true);
        this.g.setStyle(Paint.Style.FILL);
        this.g.setColor(this.f18943c);
    }

    public final void a() {
        int i;
        Paint paint = this.g;
        if (paint != null) {
            if (MainApp.K1) {
                i = -14606047;
            } else {
                i = -1;
            }
            if (this.f18943c == i) {
                return;
            }
            this.f18943c = i;
            paint.setColor(i);
            invalidate();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        Paint paint;
        RectF rectF = this.f;
        if (rectF != null && (paint = this.g) != null) {
            int i = MainApp.m1;
            canvas.drawRoundRect(rectF, i, i, paint);
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        RectF rectF = this.f;
        if (rectF != null) {
            rectF.set(0.0f, 0.0f, i, i2);
        }
    }
}
