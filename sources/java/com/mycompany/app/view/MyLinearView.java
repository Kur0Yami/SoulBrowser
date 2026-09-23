package com.mycompany.app.view;

import android.graphics.Canvas;
import android.widget.LinearLayout;
import com.mycompany.app.main.MainUtil;

/* loaded from: classes3.dex */
public class MyLinearView extends LinearLayout {
    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        int l1 = MainUtil.l1();
        if (l1 != 0) {
            canvas.drawColor(l1);
        }
    }
}
