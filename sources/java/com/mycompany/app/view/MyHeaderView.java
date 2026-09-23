package com.mycompany.app.view;

import android.content.Context;
import android.graphics.Canvas;
import android.view.View;
import android.widget.RelativeLayout;
import com.mycompany.app.main.MainApp;

/* loaded from: classes3.dex */
public class MyHeaderView extends RelativeLayout {

    /* renamed from: com.mycompany.app.view.MyHeaderView$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [android.view.View$OnClickListener, java.lang.Object] */
    public MyHeaderView(Context context) {
        super(context);
        setOnClickListener(new Object());
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        int i;
        if (MainApp.K1) {
            i = -16777216;
        } else {
            i = -460552;
        }
        canvas.drawColor(i);
        super.dispatchDraw(canvas);
    }
}
