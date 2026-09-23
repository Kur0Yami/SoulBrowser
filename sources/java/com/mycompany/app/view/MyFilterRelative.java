package com.mycompany.app.view;

import android.graphics.Canvas;
import android.widget.RelativeLayout;

/* loaded from: classes3.dex */
public class MyFilterRelative extends RelativeLayout {

    /* renamed from: c, reason: collision with root package name */
    public int f18771c;

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        int i = this.f18771c;
        if (i != 0) {
            canvas.drawColor(i);
        }
    }

    public void setFilterColor(int i) {
        if (this.f18771c == i) {
            return;
        }
        this.f18771c = i;
        invalidate();
    }
}
