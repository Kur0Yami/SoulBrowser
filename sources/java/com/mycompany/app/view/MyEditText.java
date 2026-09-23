package com.mycompany.app.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.view.DragEvent;
import androidx.appcompat.widget.AppCompatEditText;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;

/* loaded from: classes3.dex */
public class MyEditText extends AppCompatEditText {
    public boolean k;
    public boolean l;
    public boolean m;
    public int n;
    public float o;
    public Paint p;
    public boolean q;
    public final float r;
    public final float s;
    public int t;
    public Paint u;
    public Rect v;

    public MyEditText(Context context) {
        super(context, null);
        int i;
        this.k = true;
        this.q = true;
        this.s = MainUtil.G(context, 2.0f);
        this.r = (this.s / 2.0f) + MainUtil.G(context, 22.0f);
        if (MainApp.K1) {
            i = -328966;
        } else {
            i = -14784824;
        }
        this.t = i;
        Paint paint = new Paint();
        this.u = paint;
        paint.setAntiAlias(true);
        this.u.setStyle(Paint.Style.STROKE);
        this.u.setColor(this.t);
        if (this.t != -2434342 && !MainApp.K1) {
            this.u.setStrokeWidth(this.s);
        } else {
            this.u.setStrokeWidth(this.s / 2.0f);
        }
        this.v = new Rect();
        MainUtil.c5(this);
    }

    public final void b(int i) {
        int i2;
        this.l = true;
        this.m = true;
        this.n = 0;
        if (MainApp.K1) {
            i2 = -12632257;
        } else {
            i2 = -2434342;
        }
        this.o = 0.5f;
        Paint paint = new Paint();
        this.p = paint;
        paint.setAntiAlias(true);
        this.p.setStyle(Paint.Style.STROKE);
        this.p.setColor(i2);
        this.p.setStrokeWidth(1.0f);
    }

    public final void c() {
        this.k = false;
        this.p = null;
        this.u = null;
        this.v = null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x001b, code lost:
    
        if (r1 == (-2434342)) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void d() {
        /*
            r7 = this;
            android.graphics.Paint r0 = r7.u
            if (r0 != 0) goto L5
            goto L29
        L5:
            int r1 = r7.t
            boolean r2 = com.mycompany.app.main.MainApp.K1
            r3 = -12632257(0xffffffffff3f3f3f, float:-2.5421094E38)
            r4 = -328966(0xfffffffffffafafa, float:NaN)
            r5 = -14784824(0xffffffffff1e66c8, float:-2.105517E38)
            r6 = -2434342(0xffffffffffdadada, float:NaN)
            if (r2 == 0) goto L1e
            if (r1 != r5) goto L1b
            r3 = r4
            goto L27
        L1b:
            if (r1 != r6) goto L26
            goto L27
        L1e:
            if (r1 != r4) goto L22
            r3 = r5
            goto L27
        L22:
            if (r1 != r3) goto L26
            r3 = r6
            goto L27
        L26:
            r3 = r1
        L27:
            if (r1 != r3) goto L2a
        L29:
            return
        L2a:
            r7.t = r3
            r0.setColor(r3)
            int r0 = r7.t
            if (r0 == r6) goto L40
            boolean r0 = com.mycompany.app.main.MainApp.K1
            if (r0 == 0) goto L38
            goto L40
        L38:
            android.graphics.Paint r0 = r7.u
            float r1 = r7.s
            r0.setStrokeWidth(r1)
            goto L4a
        L40:
            android.graphics.Paint r0 = r7.u
            float r1 = r7.s
            r2 = 1073741824(0x40000000, float:2.0)
            float r1 = r1 / r2
            r0.setStrokeWidth(r1)
        L4a:
            r7.invalidate()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.view.MyEditText.d():void");
    }

    @Override // android.view.View
    public final void invalidate() {
        if (!this.k) {
            return;
        }
        super.invalidate();
    }

    @Override // androidx.appcompat.widget.AppCompatEditText, android.widget.TextView, android.view.View
    public final boolean onDragEvent(DragEvent dragEvent) {
        try {
            return super.onDragEvent(dragEvent);
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void onDraw(Canvas canvas) {
        int i;
        Paint paint;
        Paint paint2;
        if (this.k) {
            super.onDraw(canvas);
            int width = getWidth();
            int height = getHeight();
            Rect rect = this.v;
            if (rect != null) {
                canvas.getClipBounds(rect);
                i = this.v.left;
            } else {
                i = 0;
            }
            int i2 = i;
            if (i2 != 0) {
                canvas.save();
                canvas.translate(i2, 0.0f);
            }
            if (this.l && (paint2 = this.p) != null && this.m) {
                int i3 = this.n;
                float f = this.o;
                canvas.drawLine(i3, f, width - i3, f, paint2);
            }
            if (this.q && (paint = this.u) != null) {
                float f2 = (height / 2.0f) + this.r;
                canvas.drawLine(0.0f, f2, width, f2, paint);
            }
            if (i2 != 0) {
                canvas.restore();
            }
        }
    }

    public void setDrawEline(boolean z) {
        if (this.q == z) {
            return;
        }
        this.q = z;
        invalidate();
    }

    public void setDrawLine(boolean z) {
        if (this.l == z) {
            return;
        }
        this.l = z;
        invalidate();
    }

    public void setElineColor(int i) {
        Paint paint = this.u;
        if (paint != null) {
            if (MainApp.K1) {
                if (i == -14784824) {
                    i = -328966;
                } else if (i == -2434342) {
                    i = -12632257;
                }
            }
            if (this.t == i) {
                return;
            }
            this.t = i;
            paint.setColor(i);
            if (this.t != -2434342 && !MainApp.K1) {
                this.u.setStrokeWidth(this.s);
            } else {
                this.u.setStrokeWidth(this.s / 2.0f);
            }
            invalidate();
        }
    }

    public void setLinePad(int i) {
        if (this.n == i) {
            return;
        }
        this.n = i;
        invalidate();
    }
}
