package com.mycompany.app.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;

/* loaded from: classes3.dex */
public class MyDialogMenu extends FrameLayout {

    /* renamed from: c, reason: collision with root package name */
    public boolean f18666c;
    public final int f;
    public int g;
    public Paint h;
    public RectF i;
    public Paint j;
    public RectF k;

    public MyDialogMenu(Context context) {
        super(context);
        this.f18666c = true;
        this.f = MainApp.l1;
        setFocusable(true);
        setFocusableInTouchMode(true);
        int l1 = MainUtil.l1();
        if (l1 == 0) {
            return;
        }
        Paint paint = new Paint();
        this.j = paint;
        paint.setAntiAlias(true);
        this.j.setStyle(Paint.Style.FILL);
        this.j.setColor(l1);
        this.k = new RectF();
    }

    public final void a(int i, int i2) {
        RectF rectF = this.i;
        if (rectF != null) {
            rectF.set(0.0f, 0.0f, i, this.f + i2);
        }
        RectF rectF2 = this.k;
        if (rectF2 != null) {
            rectF2.set(0.0f, 0.0f, i, i2 + this.f);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        RectF rectF;
        RectF rectF2;
        Paint paint = this.h;
        if (paint != null && (rectF2 = this.i) != null) {
            int i = this.f;
            canvas.drawRoundRect(rectF2, i, i, paint);
        }
        super.dispatchDraw(canvas);
        Paint paint2 = this.j;
        if (paint2 != null && (rectF = this.k) != null) {
            int i2 = this.f;
            canvas.drawRoundRect(rectF, i2, i2, paint2);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (!this.f18666c) {
            return false;
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public final void invalidate() {
        if (!this.f18666c) {
            return;
        }
        super.invalidate();
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        a(i, i2);
    }

    public void setBackColor(int i) {
        if (this.g != i) {
            this.g = i;
            if (i == 0) {
                this.h = null;
                this.i = null;
                invalidate();
                return;
            }
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
            int width = getWidth();
            int height = getHeight();
            if (width != 0 && height != 0) {
                a(width, height);
                invalidate();
            }
        }
    }
}
