package com.mycompany.app.view;

import android.content.Context;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.view.View;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;

/* loaded from: classes3.dex */
public class MyArrowView extends View {

    /* renamed from: c, reason: collision with root package name */
    public int f18520c;
    public int f;
    public float g;
    public float h;
    public Paint i;
    public Path j;
    public RectF k;
    public Paint l;
    public Path m;
    public final boolean n;
    public boolean o;

    public MyArrowView(Context context) {
        super(context);
        int i;
        if (MainApp.K1) {
            i = -328966;
        } else {
            i = -16777216;
        }
        this.f = i;
        this.g = MainApp.E1 / 2.0f;
        this.h = Math.round(r0 * 0.75f);
        this.n = MainUtil.O5(context);
        Paint paint = new Paint();
        this.i = paint;
        paint.setAntiAlias(true);
        this.i.setStyle(Paint.Style.STROKE);
        this.i.setStrokeWidth(this.g / 2.0f);
        this.i.setColor(this.f);
        Paint paint2 = new Paint();
        this.l = paint2;
        paint2.setAntiAlias(true);
        this.l.setStyle(Paint.Style.FILL);
        this.l.setStrokeWidth(this.g / 2.0f);
        this.l.setColor(this.f);
        this.m = new Path();
    }

    public final void a() {
        int i = MainApp.F1;
        this.f18520c = 6;
        this.f = -65536;
        this.g = i / 2.0f;
        this.h = Math.round(r0 * 0.75f);
        if (this.i == null) {
            Paint paint = new Paint();
            this.i = paint;
            paint.setAntiAlias(true);
            this.i.setStyle(Paint.Style.STROKE);
        }
        this.i.setStrokeWidth(this.g / 2.0f);
        this.i.setColor(this.f);
        if (this.l == null) {
            Paint paint2 = new Paint();
            this.l = paint2;
            paint2.setAntiAlias(true);
            this.l.setStyle(Paint.Style.FILL);
        }
        this.l.setStrokeWidth(this.g / 2.0f);
        this.l.setColor(this.f);
        if (this.f18520c == 6) {
            this.j = new Path();
            this.k = new RectF();
        } else {
            this.j = null;
            this.k = null;
        }
        invalidate();
    }

    public final void b(int i) {
        if (this.f18520c == i && this.f == -1) {
            return;
        }
        this.f18520c = i;
        this.f = -1;
        if (this.i == null) {
            Paint paint = new Paint();
            this.i = paint;
            paint.setAntiAlias(true);
            this.i.setStyle(Paint.Style.STROKE);
            this.i.setStrokeWidth(this.g / 2.0f);
        }
        this.i.setColor(this.f);
        if (this.l == null) {
            Paint paint2 = new Paint();
            this.l = paint2;
            paint2.setAntiAlias(true);
            this.l.setStyle(Paint.Style.FILL);
            this.l.setStrokeWidth(this.g / 2.0f);
        }
        this.l.setColor(this.f);
        if (this.f18520c == 6) {
            this.j = new Path();
            this.k = new RectF();
        } else {
            this.j = null;
            this.k = null;
        }
        invalidate();
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x010f  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onDraw(android.graphics.Canvas r18) {
        /*
            Method dump skipped, instructions count: 617
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.view.MyArrowView.onDraw(android.graphics.Canvas):void");
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        RectF rectF = this.k;
        if (rectF != null && this.j != null) {
            float f = this.g;
            rectF.set(f, f, i - f, ((i2 + i2) - f) - this.h);
            this.j.addArc(this.k, -180.0f, 180.0f);
        }
    }

    public void setSnack(int i) {
        this.o = true;
        this.f = i;
        if (this.l == null) {
            Paint paint = new Paint();
            this.l = paint;
            paint.setAntiAlias(true);
            this.l.setStyle(Paint.Style.FILL);
        }
        this.l.setStrokeWidth(this.g / 2.0f);
        this.l.setColor(this.f);
    }

    public void setType(int i) {
        if (this.f18520c == i) {
            return;
        }
        this.f18520c = i;
        invalidate();
    }
}
