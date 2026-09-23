package com.mycompany.app.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.View;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;

/* loaded from: classes3.dex */
public class MyCircleView extends View {

    /* renamed from: c, reason: collision with root package name */
    public boolean f18610c;
    public Context f;
    public int g;
    public int h;
    public int i;
    public float j;
    public Paint k;
    public RectF l;
    public Paint m;
    public RectF n;
    public float o;
    public float p;
    public float q;

    public MyCircleView(Context context) {
        super(context);
        this.f18610c = true;
        this.f = context;
    }

    public final void a(int i, int i2, int i3, boolean z) {
        int i4;
        this.g = i;
        this.h = i2;
        if (i != 0) {
            Paint paint = new Paint();
            this.k = paint;
            paint.setAntiAlias(true);
            this.k.setStyle(Paint.Style.FILL);
            this.k.setColor(this.g);
            this.k.setAlpha(MainUtil.b3(this.h));
            if (z) {
                this.l = new RectF();
            }
        }
        Paint paint2 = new Paint();
        this.m = paint2;
        paint2.setAntiAlias(true);
        this.m.setStyle(Paint.Style.STROKE);
        this.m.setStrokeWidth(4.0f);
        Paint paint3 = this.m;
        if (this.g == 0) {
            i4 = -1;
        } else {
            i4 = -12632257;
        }
        paint3.setColor(i4);
        if (z) {
            this.n = new RectF();
            this.o = MainApp.G1;
        }
        setSize(i3);
    }

    public final void b(int i, int i2) {
        Paint paint = this.k;
        if (paint != null) {
            if (this.g != i) {
                this.g = i;
                this.h = i2;
                paint.setColor(i);
                this.k.setAlpha(MainUtil.b3(this.h));
                invalidate();
                return;
            }
            if (this.h != i2) {
                this.h = i2;
                paint.setAlpha(MainUtil.b3(i2));
                invalidate();
            }
        }
    }

    @Override // android.view.View
    public final void invalidate() {
        if (!this.f18610c) {
            return;
        }
        super.invalidate();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        if (this.f18610c) {
            Paint paint = this.k;
            if (paint != null) {
                RectF rectF = this.l;
                if (rectF != null) {
                    float f = MainApp.v1;
                    canvas.drawRoundRect(rectF, f, f, paint);
                } else {
                    canvas.drawCircle(this.p, this.q, this.j, paint);
                }
            }
            Paint paint2 = this.m;
            if (paint2 != null) {
                RectF rectF2 = this.n;
                if (rectF2 != null) {
                    float f2 = MainApp.v1;
                    canvas.drawRoundRect(rectF2, f2, f2, paint2);
                } else {
                    canvas.drawCircle(this.p, this.q, this.j + 2.0f, paint2);
                }
            }
        }
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.p = i / 2.0f;
        this.q = i2 / 2.0f;
        setSize(this.i);
    }

    public void setColor(int i) {
        if (this.g == i) {
            return;
        }
        this.g = i;
        if (i != 0) {
            if (this.k == null) {
                Paint paint = new Paint();
                this.k = paint;
                paint.setAntiAlias(true);
                this.k.setStyle(Paint.Style.FILL);
            }
            this.k.setColor(this.g);
        } else {
            this.k = null;
        }
        invalidate();
    }

    public void setSize(int i) {
        if (i == 0) {
            this.j = this.p;
            return;
        }
        this.i = i;
        if (this.p != 0.0f && this.q != 0.0f) {
            float G = MainUtil.G(this.f, i) / 2.0f;
            this.j = G;
            RectF rectF = this.l;
            if (rectF != null) {
                rectF.set(this.o, this.q - G, getWidth() - this.o, this.q + this.j);
            }
            RectF rectF2 = this.n;
            if (rectF2 != null) {
                rectF2.set(this.o - 2.0f, (this.q - this.j) - 2.0f, (getWidth() - this.o) + 2.0f, this.q + this.j + 2.0f);
            }
            invalidate();
        }
    }
}
