package com.mycompany.app.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewOutlineProvider;
import androidx.recyclerview.widget.RecyclerView;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;

/* loaded from: classes3.dex */
public class MyPopupList extends RecyclerView {
    public final int Q0;
    public final Paint R0;
    public final RectF S0;

    public MyPopupList(Context context) {
        super(context, null);
        this.Q0 = MainApp.E1;
        setVerticalScrollBarEnabled(true);
        setHorizontalScrollBarEnabled(false);
        setElevation(MainUtil.G(context, 2.0f));
        setOutlineProvider(new ViewOutlineProvider() { // from class: com.mycompany.app.view.MyPopupList.1
            @Override // android.view.ViewOutlineProvider
            public final void getOutline(View view, Outline outline) {
                if (view != null && outline != null) {
                    outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), MyPopupList.this.Q0);
                }
            }
        });
        setClipToOutline(true);
        int l1 = MainUtil.l1();
        if (l1 == 0) {
            return;
        }
        Paint paint = new Paint();
        this.R0 = paint;
        paint.setAntiAlias(true);
        this.R0.setStyle(Paint.Style.FILL);
        this.R0.setColor(l1);
        this.S0 = new RectF();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        RectF rectF;
        super.dispatchDraw(canvas);
        Paint paint = this.R0;
        if (paint != null && (rectF = this.S0) != null) {
            int i = this.Q0;
            canvas.drawRoundRect(rectF, i, i, paint);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        RectF rectF = this.S0;
        if (rectF != null) {
            rectF.set(0.0f, 0.0f, i, i2);
        }
    }
}
