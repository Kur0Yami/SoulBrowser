package com.mycompany.app.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import androidx.appcompat.widget.AppCompatTextView;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;

/* loaded from: classes3.dex */
public class MyLineText extends AppCompatTextView {
    public int A;
    public boolean l;
    public boolean m;
    public boolean n;
    public boolean o;
    public boolean p;
    public boolean q;
    public int r;
    public float s;
    public Paint t;
    public Paint u;
    public float v;
    public float w;
    public boolean x;
    public boolean y;
    public boolean z;

    public MyLineText(Context context) {
        super(context, null);
        this.l = true;
    }

    @Override // android.view.View
    public final void dispatchDraw(Canvas canvas) {
        float f;
        float f2;
        super.dispatchDraw(canvas);
        if (this.m && this.t != null) {
            int width = getWidth();
            int height = getHeight();
            if (this.n) {
                int i = this.r;
                float f3 = this.s;
                canvas.drawLine(i, f3, width - i, f3, this.t);
            }
            if (this.o) {
                int i2 = this.r;
                float f4 = height - this.s;
                canvas.drawLine(i2, f4, width - i2, f4, this.t);
            }
            if (this.p) {
                float f5 = this.s;
                canvas.drawLine(f5, MainApp.E1, f5, height - r0, this.t);
            }
            if (this.q) {
                float f6 = width - this.s;
                canvas.drawLine(f6, MainApp.E1, f6, height - r0, this.t);
            }
        }
        if (this.u != null) {
            if (this.z) {
                canvas.drawCircle(getWidth() / 2.0f, MainApp.F1, MainApp.G1, this.u);
            } else {
                if (this.y) {
                    f = MainApp.G1;
                    f2 = this.v;
                } else {
                    f = this.w;
                    f2 = f;
                }
                if (this.x) {
                    f = getWidth() - f;
                }
                canvas.drawCircle(f, f2, this.v, this.u);
            }
        }
        int i3 = this.A;
        if (i3 != 0) {
            canvas.drawColor(i3);
        }
    }

    @Override // android.view.View
    public final void invalidate() {
        if (!this.l) {
            return;
        }
        super.invalidate();
    }

    public final void q(int i) {
        int i2;
        this.m = true;
        this.o = true;
        this.r = i;
        if (MainApp.K1) {
            i2 = -12632257;
        } else {
            i2 = -2434342;
        }
        this.s = 0.5f;
        Paint paint = new Paint();
        this.t = paint;
        paint.setAntiAlias(true);
        this.t.setStyle(Paint.Style.STROKE);
        this.t.setColor(i2);
        this.t.setStrokeWidth(1.0f);
    }

    public final void r(Context context) {
        this.m = true;
        if (MainUtil.O5(context)) {
            this.q = true;
        } else {
            this.p = true;
        }
        this.s = 0.5f;
        Paint paint = new Paint();
        this.t = paint;
        paint.setAntiAlias(true);
        this.t.setStyle(Paint.Style.STROKE);
        this.t.setColor(-9079435);
        this.t.setStrokeWidth(1.0f);
    }

    public final void s(Context context) {
        this.m = true;
        if (MainUtil.O5(context)) {
            this.p = true;
        } else {
            this.q = true;
        }
        this.s = 0.5f;
        Paint paint = new Paint();
        this.t = paint;
        paint.setAntiAlias(true);
        this.t.setStyle(Paint.Style.STROKE);
        this.t.setColor(-9079435);
        this.t.setStrokeWidth(1.0f);
    }

    public void setDrawLine(boolean z) {
        if (this.m == z) {
            return;
        }
        this.m = z;
        invalidate();
    }

    public void setFilterColor(int i) {
        if (this.A == i) {
            return;
        }
        this.A = i;
        invalidate();
    }

    public void setLineColor(int i) {
        Paint paint = this.t;
        if (paint == null) {
            return;
        }
        paint.setColor(i);
        invalidate();
    }

    public void setLineDn(boolean z) {
        int i;
        if (this.o == z) {
            return;
        }
        this.o = z;
        if (z && !this.m) {
            this.m = true;
            if (MainApp.K1) {
                i = -12632257;
            } else {
                i = -2434342;
            }
            this.s = 0.5f;
            if (this.t == null) {
                Paint paint = new Paint();
                this.t = paint;
                paint.setAntiAlias(true);
                this.t.setStyle(Paint.Style.STROKE);
            }
            this.t.setColor(i);
            this.t.setStrokeWidth(1.0f);
        }
        invalidate();
    }

    public void setLinePad(int i) {
        if (this.r == i) {
            return;
        }
        this.r = i;
        invalidate();
    }

    public void setLineUp(boolean z) {
        int i;
        if (this.n == z) {
            return;
        }
        this.n = z;
        if (z && !this.m) {
            this.m = true;
            if (MainApp.K1) {
                i = -12632257;
            } else {
                i = -2434342;
            }
            this.s = 0.5f;
            if (this.t == null) {
                Paint paint = new Paint();
                this.t = paint;
                paint.setAntiAlias(true);
                this.t.setStyle(Paint.Style.STROKE);
            }
            this.t.setColor(i);
            this.t.setStrokeWidth(1.0f);
        }
        invalidate();
    }

    public void setNoti(boolean z) {
        if (z) {
            if (this.u == null) {
                Paint paint = new Paint();
                this.u = paint;
                paint.setAntiAlias(true);
                this.u.setStyle(Paint.Style.FILL);
                this.u.setColor(-65536);
                Context context = getContext();
                this.x = MainUtil.O5(context);
                this.y = false;
                this.z = false;
                this.v = MainUtil.G(context, 3.0f);
                this.w = MainUtil.G(context, 13.0f);
                invalidate();
                return;
            }
            return;
        }
        if (this.u != null) {
            this.u = null;
            invalidate();
        }
    }

    public void setNotiCenter(boolean z) {
        if (z) {
            if (this.u == null) {
                Paint paint = new Paint();
                this.u = paint;
                paint.setAntiAlias(true);
                this.u.setStyle(Paint.Style.FILL);
                this.u.setColor(-65536);
                this.y = false;
                this.z = true;
                invalidate();
                return;
            }
            return;
        }
        if (this.u != null) {
            this.u = null;
            invalidate();
        }
    }

    public void setNotiTop(boolean z) {
        if (z) {
            if (this.u == null) {
                Paint paint = new Paint();
                this.u = paint;
                paint.setAntiAlias(true);
                this.u.setStyle(Paint.Style.FILL);
                this.u.setColor(-65536);
                Context context = getContext();
                this.x = MainUtil.O5(context);
                this.y = true;
                this.z = false;
                this.v = MainUtil.G(context, 3.0f);
                this.w = 0.0f;
                invalidate();
                return;
            }
            return;
        }
        if (this.u != null) {
            this.u = null;
            invalidate();
        }
    }

    public final void t(int i) {
        int i2;
        this.m = true;
        this.n = true;
        this.r = i;
        if (MainApp.K1) {
            i2 = -12632257;
        } else {
            i2 = -2434342;
        }
        this.s = 0.5f;
        Paint paint = new Paint();
        this.t = paint;
        paint.setAntiAlias(true);
        this.t.setStyle(Paint.Style.STROKE);
        this.t.setColor(i2);
        this.t.setStrokeWidth(1.0f);
    }

    public final void u() {
        this.l = false;
        this.t = null;
        this.u = null;
    }
}
