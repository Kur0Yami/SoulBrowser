package com.mycompany.app.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Paint;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.widget.RelativeLayout;
import com.mycompany.app.main.MainApp;

/* loaded from: classes3.dex */
public class MyListChild extends RelativeLayout {

    /* renamed from: c, reason: collision with root package name */
    public final boolean f18852c;
    public final Paint f;
    public boolean g;
    public boolean h;
    public boolean i;
    public final int j;
    public boolean k;
    public int l;

    public MyListChild(Context context) {
        super(context);
        int i;
        this.f18852c = true;
        this.k = MainApp.K1;
        Paint paint = new Paint();
        this.f = paint;
        paint.setAntiAlias(true);
        this.f.setStyle(Paint.Style.STROKE);
        Paint paint2 = this.f;
        if (MainApp.K1) {
            i = -12632257;
        } else {
            i = -2434342;
        }
        paint2.setColor(i);
        this.f.setStrokeWidth(0.5f);
        this.j = MainApp.m1;
    }

    public final void a() {
        boolean z;
        boolean z2 = this.g;
        if (!z2 && !this.h) {
            z = false;
        } else {
            z = true;
        }
        if (this.i == z) {
            return;
        }
        this.i = z;
        if (!z2 && !this.h) {
            setClipToOutline(false);
        } else {
            setOutlineProvider(new ViewOutlineProvider() { // from class: com.mycompany.app.view.MyListChild.1
                @Override // android.view.ViewOutlineProvider
                public final void getOutline(View view, Outline outline) {
                    if (outline != null) {
                        MyListChild myListChild = MyListChild.this;
                        boolean z3 = myListChild.g;
                        if (z3 && myListChild.h) {
                            outline.setRoundRect(0, 0, myListChild.getWidth(), myListChild.getHeight(), myListChild.j);
                            return;
                        }
                        if (z3) {
                            int width = myListChild.getWidth();
                            int height = myListChild.getHeight();
                            int i = myListChild.j;
                            outline.setRoundRect(0, 0, width, height + i, i);
                            return;
                        }
                        if (myListChild.h) {
                            outline.setRoundRect(0, -myListChild.j, myListChild.getWidth(), myListChild.getHeight(), myListChild.j);
                        }
                    }
                }
            });
            setClipToOutline(true);
        }
    }

    public final void b(boolean z, boolean z2) {
        if (this.g == z && this.h == z2) {
            return;
        }
        this.g = z;
        this.h = z2;
        a();
        invalidateOutline();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        int i;
        if (this.f18852c) {
            int i2 = this.l;
            if (i2 != 0) {
                canvas.drawColor(i2);
            }
            super.dispatchDraw(canvas);
            Paint paint = this.f;
            if (paint == null) {
                return;
            }
            boolean z = this.k;
            boolean z2 = MainApp.K1;
            if (z != z2) {
                this.k = z2;
                if (z2) {
                    i = -12632257;
                } else {
                    i = -2434342;
                }
                try {
                    paint.setColor(i);
                } catch (Exception unused) {
                }
            }
            int width = getWidth();
            int height = getHeight();
            float f = height - 0.5f;
            canvas.drawLine(MainApp.E1, f, width - r2, f, this.f);
        }
    }

    @Override // android.view.View
    public final void invalidate() {
        if (!this.f18852c) {
            return;
        }
        super.invalidate();
    }

    public void setBackColor(int i) {
        if (this.l == i) {
            return;
        }
        this.l = i;
        invalidate();
    }
}
