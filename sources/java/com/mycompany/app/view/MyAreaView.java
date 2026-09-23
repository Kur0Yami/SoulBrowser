package com.mycompany.app.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewGroup;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;

/* loaded from: classes3.dex */
public class MyAreaView extends View {
    public boolean A;
    public boolean B;
    public final boolean C;

    /* renamed from: c, reason: collision with root package name */
    public final int f18519c;
    public final int f;
    public final int g;
    public final float h;
    public boolean i;
    public Paint j;
    public Paint k;
    public int l;
    public int m;
    public int n;
    public int o;
    public int p;
    public int q;
    public int r;
    public int s;
    public boolean t;
    public int u;
    public int v;
    public int w;
    public int x;
    public float y;
    public RectF z;

    public MyAreaView(Context context) {
        super(context);
        this.i = true;
        this.f18519c = (int) MainUtil.G(context, 160.0f);
        this.f = MainApp.F1;
        this.h = MainUtil.G(context, 0.5f);
        int i = this.f18519c;
        this.g = (i * i) / 2;
        this.C = MainUtil.O5(context);
        Paint paint = new Paint();
        this.j = paint;
        paint.setAntiAlias(true);
        this.j.setColor(-1);
        this.j.setStyle(Paint.Style.STROKE);
        this.j.setStrokeWidth(this.h * 2.0f);
        Paint paint2 = new Paint();
        this.k = paint2;
        paint2.setAntiAlias(true);
        this.k.setStyle(Paint.Style.FILL);
        this.k.setColor(-1577058305);
    }

    public final boolean a() {
        if (!this.A && b()) {
            return true;
        }
        return false;
    }

    public final boolean b() {
        RectF rectF = this.z;
        if (rectF == null || this.u == 0 || this.v == 0) {
            return false;
        }
        if (((int) rectF.width()) <= this.u && ((int) this.z.height()) <= this.v) {
            return false;
        }
        return true;
    }

    public final void c() {
        this.i = false;
        this.j = null;
        this.k = null;
        this.z = null;
    }

    public final boolean d(int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
        int i7;
        int left = getLeft();
        if (this.C) {
            left = getWidth() - left;
        }
        if (this.l == i && this.m == i2 && this.n == i3 && this.o == i4 && this.p == i5 && this.q == i6 && this.r == getTop() && this.s == left && this.t == z) {
            invalidate();
            return false;
        }
        this.l = i;
        this.m = i2;
        this.n = i3;
        this.o = i4;
        this.p = i5;
        this.q = i6;
        this.r = getTop();
        this.s = left;
        this.t = z;
        int i8 = this.l;
        this.u = i8;
        this.v = this.m;
        int i9 = this.n;
        if (i9 != 0 && (i7 = this.o) != 0) {
            float f = i7 / i9;
            if (z) {
                this.v = Math.max(Math.round(i8 * f), this.v);
            }
            int min = Math.min(this.f18519c, (this.p - this.s) - this.f);
            int round = Math.round(min * f);
            int min2 = Math.min(this.f18519c, (this.q - this.r) - this.f);
            if (round > min2) {
                min = Math.round(min2 / f);
                round = min2;
            }
            if (this.B) {
                int i10 = MainApp.E1;
                if (min < i10 * 2) {
                    min = i10 * 2;
                    round = Math.round(min * f);
                    int i11 = (this.q - this.r) - this.f;
                    if (round > i11) {
                        min = Math.round(i11 / f);
                        round = i11;
                    }
                }
            } else {
                while (min * round > this.g) {
                    int i12 = this.f18519c;
                    if (min < i12 / 2 || round < i12 / 2) {
                        break;
                    }
                    min -= 10;
                    round = Math.round(min * f);
                }
            }
            this.w = min;
            this.x = round;
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            layoutParams.width = min;
            layoutParams.height = round;
            requestLayout();
            this.y = 0.0f;
            setAlpha(0.0f);
            invalidate();
            return true;
        }
        this.w = 0;
        this.x = 0;
        ViewGroup.LayoutParams layoutParams2 = getLayoutParams();
        layoutParams2.width = 0;
        layoutParams2.height = 0;
        this.y = 0.0f;
        setAlpha(0.0f);
        invalidate();
        return true;
    }

    public final void e(int i, int i2) {
        d(this.l, this.m, this.n, this.o, i, i2, this.t);
    }

    public final void f(RectF rectF, int i, int i2) {
        this.z = rectF;
        d(this.l, this.m, this.n, this.o, i, i2, this.t);
    }

    @Override // android.view.View
    public final void invalidate() {
        if (!this.i) {
            return;
        }
        super.invalidate();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        if (this.i) {
            if (this.j != null && this.k != null && this.z != null) {
                if (!a()) {
                    this.y = 0.0f;
                    return;
                }
                int width = getWidth();
                int height = getHeight();
                if (width == this.w && height == this.x) {
                    float f = width;
                    float width2 = f / this.z.width();
                    float f2 = height;
                    float height2 = f2 / this.z.height();
                    RectF rectF = this.z;
                    float f3 = (-rectF.left) * width2;
                    float f4 = this.h;
                    float f5 = f3 + f4;
                    float f6 = ((-rectF.top) * height2) + f4;
                    float f7 = ((this.u * width2) + f5) - f4;
                    float f8 = ((this.v * height2) + f6) - f4;
                    canvas.drawColor(-1593835520);
                    canvas.drawRect(f5, f6, f7, f8, this.k);
                    canvas.drawRect(f5, f6, f7, f8, this.j);
                    float f9 = this.h;
                    canvas.drawLine(f9, f9, f - f9, f9, this.j);
                    float f10 = this.h;
                    float f11 = f2 - f10;
                    canvas.drawLine(f10, f11, f - f10, f11, this.j);
                    float f12 = this.h;
                    canvas.drawLine(f12, f12, f12, f2 - f12, this.j);
                    float f13 = this.h;
                    float f14 = f - f13;
                    canvas.drawLine(f14, f13, f14, f2 - f13, this.j);
                    float f15 = this.y;
                    if (f15 < 1.0f) {
                        float f16 = f15 + 0.1f;
                        this.y = f16;
                        setAlpha(f16);
                        invalidate();
                        return;
                    }
                    return;
                }
                this.y = 0.0f;
                return;
            }
            this.y = 0.0f;
        }
    }

    @Override // android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (z && i2 != this.r && b()) {
            d(this.l, this.m, this.n, this.o, this.p, this.q, this.t);
        }
    }

    public void setFullMode(boolean z) {
        this.B = z;
    }

    public void setJustRect(RectF rectF) {
        this.z = rectF;
    }

    public void setRect2(RectF rectF) {
        if (this.i) {
            this.z = rectF;
            if (!d(this.l, this.m, this.n, this.o, this.p, this.q, this.t) && this.w != 0 && this.x != 0) {
                int width = getWidth();
                int height = getHeight();
                if (width != this.w || height != this.x) {
                    ViewGroup.LayoutParams layoutParams = getLayoutParams();
                    layoutParams.width = this.w;
                    layoutParams.height = this.x;
                    requestLayout();
                    this.y = 0.0f;
                    setAlpha(0.0f);
                    invalidate();
                }
            }
        }
    }

    public void setSkipDraw(boolean z) {
        if (this.A == z) {
            return;
        }
        this.A = z;
        this.y = 0.0f;
        setAlpha(0.0f);
        invalidate();
    }
}
