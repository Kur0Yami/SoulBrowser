package com.mycompany.app.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.MotionEvent;
import android.view.View;
import android.widget.RelativeLayout;
import com.mycompany.app.main.MainApp;

/* loaded from: classes3.dex */
public class MySnackSub extends RelativeLayout {

    /* renamed from: c, reason: collision with root package name */
    public boolean f18963c;
    public MySnackbar f;
    public final boolean g;
    public boolean h;
    public final int i;
    public RectF j;
    public Paint k;
    public Paint l;

    /* renamed from: com.mycompany.app.view.MySnackSub$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v5, types: [android.view.View$OnClickListener, java.lang.Object] */
    public MySnackSub(Context context) {
        super(context);
        int i;
        this.f18963c = true;
        this.g = MainApp.K1;
        this.i = MainApp.F1;
        this.j = new RectF();
        Paint paint = new Paint();
        this.k = paint;
        paint.setAntiAlias(true);
        this.k.setStyle(Paint.Style.FILL);
        Paint paint2 = this.k;
        if (this.g) {
            i = -14606047;
        } else {
            i = -1;
        }
        paint2.setColor(i);
        Paint paint3 = new Paint();
        this.l = paint3;
        paint3.setAntiAlias(true);
        this.l.setStyle(Paint.Style.STROKE);
        this.l.setColor(-9079435);
        this.l.setStrokeWidth(1.0f);
        setOnClickListener(new Object());
    }

    public final void a(int i, int i2) {
        RectF rectF = this.j;
        if (rectF == null) {
            return;
        }
        if (this.h) {
            float round = Math.round(MainApp.G1 / 2.0f);
            this.j.set(round, round, i - r0, i2 - r0);
            return;
        }
        rectF.set(0.0f, 0.0f, i, i2);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        Paint paint;
        Paint paint2;
        if (this.f18963c) {
            RectF rectF = this.j;
            if (rectF != null && (paint2 = this.k) != null) {
                float f = this.i;
                canvas.drawRoundRect(rectF, f, f, paint2);
            }
            super.dispatchDraw(canvas);
            RectF rectF2 = this.j;
            if (rectF2 != null && (paint = this.l) != null) {
                float f2 = this.i;
                canvas.drawRoundRect(rectF2, f2, f2, paint);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        MySnackbar mySnackbar = this.f;
        if (mySnackbar != null) {
            mySnackbar.setTouchEvent(motionEvent);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        a(i, i2);
    }

    public void setBodyView(MySnackbar mySnackbar) {
        this.f = mySnackbar;
    }

    public void setGuideMode(boolean z) {
        Paint paint = this.l;
        if (paint == null || this.h == z) {
            return;
        }
        this.h = z;
        if (z) {
            paint.setColor(-14983648);
            this.l.setStrokeWidth(MainApp.G1);
        } else {
            paint.setColor(-9079435);
            this.l.setStrokeWidth(1.0f);
        }
        a(getWidth(), getHeight());
        invalidate();
    }
}
