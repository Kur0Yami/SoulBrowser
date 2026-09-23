package com.mycompany.app.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.widget.FrameLayout;
import com.mycompany.app.main.MainApp;

/* loaded from: classes3.dex */
public class MyRoundFrame extends FrameLayout {

    /* renamed from: c, reason: collision with root package name */
    public boolean f18929c;
    public int f;
    public float g;
    public int h;
    public Paint i;
    public RectF j;
    public boolean k;
    public RectF l;
    public Paint m;

    public MyRoundFrame(Context context) {
        super(context);
        this.f18929c = true;
        this.g = MainApp.v1;
        if (this.h != 0) {
            Paint paint = new Paint();
            this.i = paint;
            paint.setAntiAlias(true);
            this.i.setStyle(Paint.Style.FILL);
            this.i.setColor(this.h);
        }
        this.j = new RectF();
    }

    public final void a() {
        this.f18929c = false;
        this.i = null;
        this.j = null;
        this.l = null;
        this.m = null;
    }

    public final void b(int i, int i2) {
        RectF rectF = this.j;
        if (rectF != null) {
            int i3 = this.f;
            if (i3 == 2) {
                if (this.l != null) {
                    return;
                }
                rectF.set(0.0f, getPaddingTop(), i, i2);
            } else {
                if (i3 == 3) {
                    rectF.set(0.0f, getPaddingTop(), i, i2 + this.g);
                    return;
                }
                if (i3 == 4) {
                    rectF.set(0.0f, -this.g, i, i2);
                    return;
                }
                if (i3 == 5) {
                    if (this.k) {
                        rectF.set(0.0f, -this.g, i, i2 - getPaddingBottom());
                        return;
                    } else {
                        rectF.set(0.0f, 0.0f, i, i2 - getPaddingBottom());
                        return;
                    }
                }
                rectF.set(0.0f, 0.0f, i, i2);
            }
        }
    }

    public final void c(int i, int i2) {
        this.f = 0;
        this.k = false;
        if (this.h == i && this.g == i2) {
            return;
        }
        this.h = i;
        this.g = i2;
        if (i == 0) {
            this.i = null;
            invalidate();
            return;
        }
        if (this.i == null) {
            Paint paint = new Paint();
            this.i = paint;
            paint.setAntiAlias(true);
            this.i.setStyle(Paint.Style.FILL);
        }
        this.i.setColor(this.h);
        invalidate();
    }

    public final void d(int i, boolean z) {
        this.f = 5;
        this.g = MainApp.v1 + MainApp.G1;
        if (this.h != i || this.k != z) {
            this.h = i;
            this.k = z;
            if (i == 0) {
                this.i = null;
                invalidate();
                return;
            }
            if (this.i == null) {
                Paint paint = new Paint();
                this.i = paint;
                paint.setAntiAlias(true);
                this.i.setStyle(Paint.Style.FILL);
            }
            this.i.setColor(this.h);
            int width = getWidth();
            int height = getHeight();
            if (width != 0 && height != 0) {
                b(width, height);
                invalidate();
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        RectF rectF;
        RectF rectF2;
        if (this.f18929c) {
            Paint paint = this.i;
            if (paint != null && (rectF2 = this.j) != null) {
                float f = this.g;
                canvas.drawRoundRect(rectF2, f, f, paint);
            }
            super.dispatchDraw(canvas);
            Paint paint2 = this.m;
            if (paint2 != null && (rectF = this.l) != null) {
                float f2 = this.g;
                canvas.drawRoundRect(rectF, f2, f2, paint2);
            }
        }
    }

    @Override // android.view.View
    public final void invalidate() {
        if (!this.f18929c) {
            return;
        }
        super.invalidate();
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        RectF rectF;
        super.onSizeChanged(i, i2, i3, i4);
        int i5 = this.f;
        if (i5 == 2 && (rectF = this.l) != null) {
            float f = MainApp.n1 / 2.0f;
            rectF.set(f, getPaddingTop() + f, i - f, i2 - f);
            return;
        }
        if (i5 == 1) {
            this.g = i / 2.0f;
        } else {
            b(i, i2);
        }
        RectF rectF2 = this.l;
        if (rectF2 != null) {
            float f2 = MainApp.n1 / 2.0f;
            rectF2.set(f2, f2, i - f2, i2 - f2);
        }
    }

    public void setBgColor(int i) {
        this.f = 0;
        this.g = MainApp.v1;
        this.k = false;
        if (this.h == i) {
            return;
        }
        this.h = i;
        if (i == 0) {
            this.i = null;
            invalidate();
            return;
        }
        if (this.i == null) {
            Paint paint = new Paint();
            this.i = paint;
            paint.setAntiAlias(true);
            this.i.setStyle(Paint.Style.FILL);
        }
        this.i.setColor(this.h);
        invalidate();
    }

    public void setBgOutColor(int i) {
        this.l = new RectF();
        Paint paint = new Paint();
        this.m = paint;
        paint.setAntiAlias(true);
        this.m.setStyle(Paint.Style.STROKE);
        this.m.setStrokeWidth(MainApp.n1);
        this.m.setColor(i);
    }

    public void setCircle(int i) {
        this.f = 1;
        this.g = getWidth() / 2.0f;
        this.k = false;
        if (MainApp.K1 && i == -460552) {
            i = -11513776;
        }
        if (this.h == i) {
            return;
        }
        this.h = i;
        if (this.i == null) {
            Paint paint = new Paint();
            this.i = paint;
            paint.setAntiAlias(true);
            this.i.setStyle(Paint.Style.FILL);
        }
        this.i.setColor(this.h);
        invalidate();
    }

    public void setNewsAllowColor(int i) {
        this.f = 2;
        this.g = MainApp.v1 + MainApp.G1;
        this.k = false;
        if (this.h != i) {
            this.h = i;
            if (i == -2434342) {
                this.i = null;
                if (this.l == null) {
                    setBgOutColor(i);
                    if (this.l == null) {
                        return;
                    }
                }
                int width = getWidth();
                int height = getHeight();
                if (width != 0 && height != 0) {
                    float f = MainApp.n1 / 2.0f;
                    this.l.set(f, getPaddingTop() + f, width - f, height - f);
                    invalidate();
                    return;
                }
                return;
            }
            this.l = null;
            this.m = null;
            if (this.i == null) {
                Paint paint = new Paint();
                this.i = paint;
                paint.setAntiAlias(true);
                this.i.setStyle(Paint.Style.FILL);
            }
            this.i.setColor(this.h);
            int width2 = getWidth();
            int height2 = getHeight();
            if (width2 != 0 && height2 != 0) {
                b(width2, height2);
                invalidate();
            }
        }
    }

    public void setNewsHeadColor(int i) {
        this.f = 3;
        this.g = MainApp.v1 + MainApp.G1;
        this.k = false;
        if (this.h != i) {
            this.h = i;
            if (i == 0) {
                this.i = null;
                invalidate();
                return;
            }
            if (this.i == null) {
                Paint paint = new Paint();
                this.i = paint;
                paint.setAntiAlias(true);
                this.i.setStyle(Paint.Style.FILL);
            }
            this.i.setColor(this.h);
            int width = getWidth();
            int height = getHeight();
            if (width != 0 && height != 0) {
                b(width, height);
                invalidate();
            }
        }
    }

    public void setNewsNotiColor(int i) {
        this.f = 4;
        this.g = MainApp.v1 + MainApp.G1;
        this.k = false;
        if (this.h != i) {
            this.h = i;
            if (i == 0) {
                this.i = null;
                invalidate();
                return;
            }
            if (this.i == null) {
                Paint paint = new Paint();
                this.i = paint;
                paint.setAntiAlias(true);
                this.i.setStyle(Paint.Style.FILL);
            }
            this.i.setColor(this.h);
            int width = getWidth();
            int height = getHeight();
            if (width != 0 && height != 0) {
                b(width, height);
                invalidate();
            }
        }
    }
}
