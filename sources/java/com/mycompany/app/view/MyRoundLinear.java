package com.mycompany.app.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.widget.LinearLayout;
import com.mycompany.app.main.MainApp;

/* loaded from: classes3.dex */
public class MyRoundLinear extends LinearLayout {

    /* renamed from: c, reason: collision with root package name */
    public boolean f18941c;
    public boolean f;
    public int g;
    public float h;
    public Paint i;
    public boolean j;
    public boolean k;
    public boolean l;
    public int m;
    public int n;
    public RectF o;
    public boolean p;
    public boolean q;

    public MyRoundLinear(Context context) {
        super(context);
        this.f18941c = true;
        this.m = MainApp.m1;
    }

    public final void a() {
        this.f18941c = false;
        this.i = null;
        this.o = null;
    }

    public final void b() {
        boolean z;
        int i;
        int i2;
        if (this.p) {
            z = this.q;
        } else {
            z = MainApp.K1;
        }
        if (z) {
            i = -14606047;
        } else {
            i = -1;
        }
        int i3 = MainApp.l1;
        this.n = i;
        this.m = i3;
        if (z) {
            i2 = -16777216;
        } else {
            i2 = -460552;
        }
        setBgOutColor(i2);
        c(true, true);
    }

    public final void c(boolean z, boolean z2) {
        boolean z3;
        this.j = z;
        this.k = z2;
        if (!z && !z2) {
            z3 = false;
        } else {
            z3 = true;
        }
        if (this.l == z3) {
            return;
        }
        this.l = z3;
        if (!z && !z2) {
            setClipToOutline(false);
        } else {
            setOutlineProvider(new ViewOutlineProvider() { // from class: com.mycompany.app.view.MyRoundLinear.1
                @Override // android.view.ViewOutlineProvider
                public final void getOutline(View view, Outline outline) {
                    if (outline != null) {
                        MyRoundLinear myRoundLinear = MyRoundLinear.this;
                        boolean z4 = myRoundLinear.j;
                        if (z4 && myRoundLinear.k) {
                            outline.setRoundRect(0, 0, myRoundLinear.getWidth(), myRoundLinear.getHeight(), myRoundLinear.m);
                            return;
                        }
                        if (z4) {
                            int width = myRoundLinear.getWidth();
                            int height = myRoundLinear.getHeight();
                            int i = myRoundLinear.m;
                            outline.setRoundRect(0, 0, width, height + i, i);
                            return;
                        }
                        if (myRoundLinear.k) {
                            outline.setRoundRect(0, -myRoundLinear.m, myRoundLinear.getWidth(), myRoundLinear.getHeight(), myRoundLinear.m);
                        }
                    }
                }
            });
            setClipToOutline(true);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        boolean z;
        int i;
        Paint paint;
        if (this.f18941c) {
            int i2 = this.n;
            if (i2 != 0) {
                canvas.drawColor(i2);
            } else {
                if (this.p) {
                    z = this.q;
                } else {
                    z = MainApp.K1;
                }
                if (z) {
                    i = -14606047;
                } else {
                    i = -1;
                }
                canvas.drawColor(i);
            }
            super.dispatchDraw(canvas);
            if (this.j && this.k) {
                RectF rectF = this.o;
                if (rectF != null && (paint = this.i) != null) {
                    float f = this.m;
                    canvas.drawRoundRect(rectF, f, f, paint);
                    return;
                }
                return;
            }
            if (this.f && this.i != null) {
                getWidth();
                getHeight();
            }
        }
    }

    @Override // android.view.View
    public final void invalidate() {
        if (!this.f18941c) {
            return;
        }
        super.invalidate();
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        RectF rectF = this.o;
        if (rectF != null) {
            float f = this.h;
            rectF.set(f, f, i - f, i2 - f);
        }
    }

    public void setBgOutColor(int i) {
        float f = MainApp.n1;
        this.h = f / 2.0f;
        Paint paint = new Paint();
        this.i = paint;
        paint.setAntiAlias(true);
        this.i.setStyle(Paint.Style.STROKE);
        this.i.setColor(i);
        this.i.setStrokeWidth(f);
        this.o = new RectF();
    }

    public void setColor(int i) {
        if (this.n != i) {
            this.n = i;
            invalidate();
        }
    }

    public void setDarkMode(boolean z) {
        this.p = true;
        this.q = z;
    }

    public void setDrawLine(boolean z) {
        if (this.f == z) {
            return;
        }
        this.f = z;
        invalidate();
    }

    public void setLinePad(int i) {
        if (this.g == i) {
            return;
        }
        this.g = i;
        invalidate();
    }

    public void setRound(int i) {
        if (i == 1) {
            c(true, false);
            return;
        }
        if (i == 2) {
            c(false, true);
        } else if (i == 3) {
            c(true, true);
        } else {
            c(false, false);
        }
    }
}
