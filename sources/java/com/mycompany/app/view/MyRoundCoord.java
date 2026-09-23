package com.mycompany.app.view;

import android.graphics.Canvas;
import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.web.WebViewActivity;

/* loaded from: classes3.dex */
public class MyRoundCoord extends CoordinatorLayout {
    public final boolean C;
    public final int D;
    public int E;

    public MyRoundCoord(WebViewActivity webViewActivity) {
        super(webViewActivity, null);
        this.C = true;
        this.D = MainApp.m1;
        setOutlineProvider(new ViewOutlineProvider() { // from class: com.mycompany.app.view.MyRoundCoord.1
            @Override // android.view.ViewOutlineProvider
            public final void getOutline(View view, Outline outline) {
                if (outline == null) {
                    return;
                }
                MyRoundCoord myRoundCoord = MyRoundCoord.this;
                outline.setRoundRect(0, 0, myRoundCoord.getWidth(), myRoundCoord.getHeight(), myRoundCoord.D);
            }
        });
        setClipToOutline(true);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        if (!this.C) {
            return;
        }
        int i = this.E;
        if (i != 0) {
            canvas.drawColor(i);
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.view.View
    public final void invalidate() {
        if (!this.C) {
            return;
        }
        super.invalidate();
    }

    public void setBackColor(int i) {
        this.E = i;
    }
}
