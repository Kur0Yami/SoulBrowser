package com.mycompany.app.view;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Shader;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import com.google.api.client.http.HttpStatusCodes;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.quick.QuickView;

/* loaded from: classes3.dex */
public class MyProgressBar extends View {
    public boolean A;
    public boolean B;
    public MyProgressListener C;
    public QuickView D;
    public int E;
    public final Runnable F;
    public final Runnable G;
    public boolean H;
    public float I;
    public boolean J;
    public final Runnable K;

    /* renamed from: c, reason: collision with root package name */
    public boolean f18901c;
    public boolean f;
    public boolean g;
    public boolean h;
    public int i;
    public int j;
    public int k;
    public int l;
    public Paint m;
    public Paint n;
    public int o;
    public int p;
    public int q;
    public float r;
    public float s;
    public float t;
    public boolean u;
    public boolean v;
    public ValueAnimator w;
    public ValueAnimator x;
    public float y;
    public float z;

    /* loaded from: classes3.dex */
    public interface MyProgressListener {
        void a();

        int b();

        boolean c();
    }

    public MyProgressBar(Context context) {
        super(context);
        this.F = new Runnable() { // from class: com.mycompany.app.view.MyProgressBar.1
            @Override // java.lang.Runnable
            public final void run() {
                MyProgressBar myProgressBar = MyProgressBar.this;
                QuickView quickView = myProgressBar.D;
                myProgressBar.D = null;
                if (quickView == null || !quickView.w()) {
                    return;
                }
                myProgressBar.i(quickView, myProgressBar.E);
            }
        };
        this.G = new Runnable() { // from class: com.mycompany.app.view.MyProgressBar.2
            @Override // java.lang.Runnable
            public final void run() {
                MyProgressBar myProgressBar = MyProgressBar.this;
                myProgressBar.k(false, myProgressBar.q, null);
            }
        };
        this.K = new Runnable() { // from class: com.mycompany.app.view.MyProgressBar.4
            @Override // java.lang.Runnable
            public final void run() {
                MyProgressBar myProgressBar = MyProgressBar.this;
                myProgressBar.J = false;
                myProgressBar.setValAnimLoop(myProgressBar.I);
            }
        };
        c(context, false);
    }

    private void setProgress2(float f) {
        this.r = f;
        if (f < 0.0f) {
            this.r = 0.0f;
        } else {
            int i = this.p;
            if (f > i) {
                this.r = i;
            }
        }
        this.t = this.r * this.s;
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValAnimLoop(float f) {
        if (this.H) {
            if (this.w != null) {
                this.y = f;
                if (f >= this.o / 2) {
                    j(false);
                }
            } else {
                return;
            }
        } else if (this.x == null) {
            return;
        } else {
            this.z = f;
        }
        invalidate();
    }

    public final void b() {
        ValueAnimator valueAnimator = this.w;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.w = null;
        }
        ValueAnimator valueAnimator2 = this.x;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
            this.x = null;
        }
        this.y = 0.0f;
        this.z = 0.0f;
    }

    public final void c(Context context, boolean z) {
        this.f18901c = MainUtil.O5(context);
        this.f = true;
        if (z) {
            this.g = true;
            this.h = true;
            this.B = true;
            this.l = MainApp.G1 / 2;
        } else {
            this.j = 0;
            this.l = MainApp.x1;
        }
        this.k = 0;
        this.p = 100;
        this.i = this.j;
        Paint paint = new Paint();
        this.m = paint;
        paint.setAntiAlias(true);
        Paint paint2 = this.m;
        Paint.Style style = Paint.Style.FILL;
        paint2.setStyle(style);
        if (this.g) {
            if (MainApp.K1) {
                this.j = -922746881;
                this.m.setColor(-922746881);
                return;
            } else {
                this.m.setColor(this.j);
                return;
            }
        }
        Paint paint3 = new Paint();
        this.n = paint3;
        paint3.setAntiAlias(true);
        this.n.setStyle(style);
        if (MainApp.K1) {
            this.j = -328966;
            this.k = -12632257;
            this.m.setColor(-328966);
            this.m.setAlpha(HttpStatusCodes.STATUS_CODE_OK);
            this.n.setColor(this.k);
            return;
        }
        this.j = -13022805;
        this.k = -1250068;
        this.m.setColor(-13022805);
        this.m.setAlpha(HttpStatusCodes.STATUS_CODE_OK);
        this.n.setColor(this.k);
    }

    public final void d(int i) {
        this.g = true;
        this.j = -13022805;
        this.l = i;
        this.B = true;
        this.k = 0;
        this.i = -13022805;
        if (MainApp.K1) {
            this.j = -922746881;
            this.m.setColor(-922746881);
        } else {
            this.m.setColor(-13022805);
        }
        this.n = null;
    }

    public final void e() {
        this.B = false;
        this.A = false;
        this.C = null;
        this.r = 0.0f;
        this.t = 0.0f;
        super.setVisibility(0);
    }

    public final void f() {
        this.f = false;
        b();
        this.m = null;
        this.n = null;
        this.C = null;
    }

    public final void g(int i, int i2) {
        boolean z;
        Paint paint;
        if (!this.g && MainApp.K1 && i == -13022805) {
            i = -328966;
        }
        boolean z2 = true;
        if (this.j != i) {
            this.j = i;
            if (this.m == null) {
                Paint paint2 = new Paint();
                this.m = paint2;
                paint2.setAntiAlias(true);
                this.m.setStyle(Paint.Style.FILL);
            }
            this.m.setColor(this.j);
            if (!this.g) {
                this.m.setAlpha(HttpStatusCodes.STATUS_CODE_OK);
            }
            z = true;
        } else {
            z = false;
        }
        if (this.g && this.k != i2) {
            this.k = i2;
            if (this.n == null) {
                Paint paint3 = new Paint();
                this.n = paint3;
                paint3.setAntiAlias(true);
                this.n.setStyle(Paint.Style.FILL);
            }
            if (this.h) {
                int i3 = this.k;
                if (i3 != 0 && (paint = this.n) != null) {
                    paint.setShader(new LinearGradient(0.0f, 0.0f, 0.0f, MainApp.G1, new int[]{i3, i3, 0}, new float[]{0.0f, 0.5f, 1.0f}, Shader.TileMode.REPEAT));
                }
            } else {
                this.n.setColor(this.k);
            }
        } else {
            z2 = z;
        }
        if (z2) {
            invalidate();
        }
    }

    public int getMax() {
        return this.p;
    }

    public float getProgress() {
        return this.r;
    }

    public final void h(boolean z, boolean z2) {
        if (this.u == z && this.v == z2) {
            return;
        }
        this.u = z;
        this.v = z2;
        if (z2) {
            j(true);
        } else {
            b();
        }
        invalidate();
    }

    public final void i(QuickView quickView, int i) {
        if (this.f && i != 0) {
            this.E = i;
            if (Math.round(this.r) < i) {
                setProgress(r0 + 1);
                Runnable runnable = this.F;
                if (runnable != null) {
                    this.D = quickView;
                    removeCallbacks(runnable);
                    post(runnable);
                }
            }
        }
    }

    @Override // android.view.View
    public final void invalidate() {
        if (!this.f) {
            return;
        }
        super.invalidate();
    }

    public final void j(boolean z) {
        ValueAnimator valueAnimator;
        TimeInterpolator accelerateInterpolator;
        int i = this.o;
        if (i != 0) {
            if (z) {
                valueAnimator = this.w;
            } else {
                valueAnimator = this.x;
            }
            if (valueAnimator != null) {
                return;
            }
            this.H = z;
            this.I = 0.0f;
            this.J = false;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, i);
            if (z) {
                this.w = ofFloat;
                this.y = 0.0f;
                this.z = 0.0f;
            } else {
                this.x = ofFloat;
            }
            ofFloat.setDuration(1000L);
            if (z) {
                accelerateInterpolator = new DecelerateInterpolator();
            } else {
                accelerateInterpolator = new AccelerateInterpolator();
            }
            ofFloat.setInterpolator(accelerateInterpolator);
            ofFloat.setRepeatMode(1);
            ofFloat.setRepeatCount(-1);
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.view.MyProgressBar.3
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    float floatValue = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                    MyProgressBar myProgressBar = MyProgressBar.this;
                    myProgressBar.I = floatValue;
                    if (myProgressBar.J) {
                        return;
                    }
                    myProgressBar.J = true;
                    MainApp.N(myProgressBar.getContext(), myProgressBar.K);
                }
            });
            ofFloat.start();
        }
    }

    public final void k(boolean z, int i, MyProgressListener myProgressListener) {
        this.q = i;
        if (z) {
            if (this.C == null) {
                this.A = true;
                this.C = myProgressListener;
                this.r = 0.0f;
            } else {
                return;
            }
        }
        MyProgressListener myProgressListener2 = this.C;
        if (myProgressListener2 == null) {
            this.A = false;
            return;
        }
        if (this.r >= 100.0f) {
            if (!myProgressListener2.c()) {
                this.A = false;
                MyProgressListener myProgressListener3 = this.C;
                if (myProgressListener3 != null) {
                    myProgressListener3.a();
                    setSkipDraw(true);
                    return;
                }
                return;
            }
            this.r = 0.0f;
        }
        int b = this.C.b();
        if (b != 0) {
            setProgress2(b);
        } else {
            setProgress2(this.r + this.q);
        }
        setSkipDraw(false);
        Runnable runnable = this.G;
        if (runnable != null) {
            removeCallbacks(runnable);
            post(runnable);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:64:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:70:? A[RETURN, SYNTHETIC] */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onDraw(android.graphics.Canvas r17) {
        /*
            Method dump skipped, instructions count: 273
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.view.MyProgressBar.onDraw(android.graphics.Canvas):void");
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.o = i;
        if (this.p == 0) {
            this.p = 1;
        }
        float f = i / this.p;
        this.s = f;
        this.t = this.r * f;
        if (this.v) {
            b();
            j(true);
        }
    }

    public void setHeader(boolean z) {
        this.g = z;
        if (z) {
            if (MainApp.K1) {
                this.j = -922746881;
                this.m.setColor(-922746881);
            } else {
                this.m.setColor(this.j);
            }
        }
    }

    public void setIncrease(int i) {
        this.q = i;
    }

    public void setMax(int i) {
        if (this.p == i) {
            return;
        }
        this.p = i;
        if (i == 0) {
            this.p = 1;
        }
        float f = this.o / this.p;
        this.s = f;
        this.t = this.r * f;
        invalidate();
    }

    public void setProgress(float f) {
        this.A = false;
        this.C = null;
        setProgress2(f);
    }

    public void setSkipDraw(boolean z) {
        if (this.B == z) {
            return;
        }
        this.B = z;
        int i = 0;
        if (z) {
            b();
            this.A = false;
            this.C = null;
        }
        if (this.h) {
            if (this.B) {
                i = 8;
            }
            super.setVisibility(i);
        }
        invalidate();
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        if (i != 0) {
            b();
            this.A = false;
            this.C = null;
        }
        super.setVisibility(i);
    }

    public MyProgressBar(Context context, int i) {
        super(context);
        this.F = new Runnable() { // from class: com.mycompany.app.view.MyProgressBar.1
            @Override // java.lang.Runnable
            public final void run() {
                MyProgressBar myProgressBar = MyProgressBar.this;
                QuickView quickView = myProgressBar.D;
                myProgressBar.D = null;
                if (quickView == null || !quickView.w()) {
                    return;
                }
                myProgressBar.i(quickView, myProgressBar.E);
            }
        };
        this.G = new Runnable() { // from class: com.mycompany.app.view.MyProgressBar.2
            @Override // java.lang.Runnable
            public final void run() {
                MyProgressBar myProgressBar = MyProgressBar.this;
                myProgressBar.k(false, myProgressBar.q, null);
            }
        };
        this.K = new Runnable() { // from class: com.mycompany.app.view.MyProgressBar.4
            @Override // java.lang.Runnable
            public final void run() {
                MyProgressBar myProgressBar = MyProgressBar.this;
                myProgressBar.J = false;
                myProgressBar.setValAnimLoop(myProgressBar.I);
            }
        };
        c(context, true);
    }
}
