package com.mycompany.app.view;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.SystemClock;
import android.view.View;
import com.mycompany.app.pref.PrefImage;
import kotlin.KotlinVersion;

/* loaded from: classes3.dex */
public class MyProgressDrawable {

    /* renamed from: a, reason: collision with root package name */
    public View f18906a;
    public Paint b;

    /* renamed from: c, reason: collision with root package name */
    public int f18907c;
    public RectF e;
    public boolean f;
    public long g;
    public long h;
    public double i;
    public boolean j;
    public float k;
    public float l;
    public boolean m;
    public final Runnable n = new Runnable() { // from class: com.mycompany.app.view.MyProgressDrawable.1
        @Override // java.lang.Runnable
        public final void run() {
            View view;
            MyProgressDrawable myProgressDrawable = MyProgressDrawable.this;
            if (myProgressDrawable.f && (view = myProgressDrawable.f18906a) != null) {
                view.invalidate();
            }
        }
    };
    public int d = KotlinVersion.MAX_COMPONENT_VALUE;

    public MyProgressDrawable(View view, float f, int i) {
        this.f18906a = view;
        this.f18907c = i;
        Paint paint = new Paint();
        this.b = paint;
        paint.setAntiAlias(true);
        this.b.setStyle(Paint.Style.STROKE);
        this.b.setStrokeWidth(f);
        this.b.setColor(this.f18907c);
        this.e = new RectF();
    }

    public final void a(Canvas canvas) {
        float f;
        int i;
        if (this.f && this.e != null && this.b != null) {
            long uptimeMillis = SystemClock.uptimeMillis();
            long j = uptimeMillis - this.g;
            long j2 = this.h;
            if (j2 < 200) {
                this.h = j2 + j;
            } else {
                double d = this.i + j;
                this.i = d;
                if (d > 460.0d) {
                    this.i = d - 460.0d;
                    this.h = 0L;
                    this.j = !this.j;
                }
                float cos = (((float) Math.cos(((this.i / 460.0d) + 1.0d) * 3.141592653589793d)) / 2.0f) + 0.5f;
                if (this.j) {
                    f = (1.0f - cos) * 254.0f;
                    this.l = (this.k - f) + this.l;
                } else {
                    f = cos * 254.0f;
                }
                this.k = f;
            }
            float f2 = ((((float) j) * 230.0f) / 1000.0f) + this.l;
            this.l = f2;
            if (f2 > 360.0f) {
                this.l = f2 - 360.0f;
            }
            this.g = uptimeMillis;
            if (this.m) {
                if (PrefImage.C > 0.2f) {
                    i = -1577058305;
                } else {
                    i = -1593835520;
                }
                e(i);
            }
            canvas.drawArc(this.e, this.l - 90.0f, this.k + 16.0f, false, this.b);
            View view = this.f18906a;
            if (view != null) {
                view.post(this.n);
            }
        }
    }

    public final void b() {
        this.f = false;
        this.f18906a = null;
        this.b = null;
        this.e = null;
    }

    public final void c(int i) {
        Paint paint = this.b;
        if (paint == null || this.d == i) {
            return;
        }
        this.d = i;
        paint.setAlpha(i);
    }

    public final void d(int i, int i2, int i3, int i4) {
        RectF rectF = this.e;
        if (rectF != null) {
            rectF.set(i, i2, i3, i4);
        }
    }

    public final void e(int i) {
        Paint paint = this.b;
        if (paint == null || this.f18907c == i) {
            return;
        }
        this.f18907c = i;
        paint.setColor(i);
    }

    public final void f() {
        if (this.f) {
            return;
        }
        this.f = true;
        this.g = SystemClock.uptimeMillis();
    }
}
