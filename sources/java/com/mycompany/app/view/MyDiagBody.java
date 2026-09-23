package com.mycompany.app.view;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.widget.FrameLayout;

/* loaded from: classes3.dex */
public class MyDiagBody extends FrameLayout {

    /* renamed from: c, reason: collision with root package name */
    public int f18632c;
    public Paint f;
    public Rect g;
    public int h;
    public int i;

    public final void a(int i, int i2) {
        int i3;
        if (this.h != 0 && this.i != 0 && i != 0 && i2 != 0) {
            if (this.g == null) {
                this.g = new Rect();
            }
            int i4 = this.h;
            if (i4 > 0 && i4 < i) {
                i3 = (int) ((i - i4) / 2.0f);
            } else {
                i3 = 0;
            }
            this.g.set(i3, i2 - this.i, i - i3, i2);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        Rect rect;
        Paint paint;
        if (this.i != 0 && (rect = this.g) != null && (paint = this.f) != null) {
            canvas.drawRect(rect, paint);
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        a(i, i2);
    }
}
