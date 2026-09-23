package com.mycompany.app.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Paint;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.widget.RelativeLayout;
import com.mycompany.app.image.ImageSizeListener;
import com.mycompany.app.main.MainApp;

/* loaded from: classes3.dex */
public class MyRoundItem extends RelativeLayout {

    /* renamed from: c, reason: collision with root package name */
    public ImageSizeListener f18937c;
    public boolean f;
    public boolean g;
    public boolean h;
    public boolean i;
    public int j;
    public float k;
    public int l;
    public Paint m;
    public boolean n;
    public boolean o;
    public boolean p;
    public int q;
    public int r;
    public boolean s;
    public boolean t;
    public long u;
    public int v;
    public int w;
    public final Runnable x;
    public final Runnable y;

    public MyRoundItem(Context context) {
        super(context);
        this.x = new Runnable() { // from class: com.mycompany.app.view.MyRoundItem.2
            @Override // java.lang.Runnable
            public final void run() {
                MyRoundItem myRoundItem = MyRoundItem.this;
                if (myRoundItem.s && myRoundItem.f) {
                    long currentTimeMillis = System.currentTimeMillis() - myRoundItem.u;
                    if (currentTimeMillis > 700) {
                        myRoundItem.s = false;
                        myRoundItem.t = true;
                        myRoundItem.w = 140;
                        myRoundItem.invalidate();
                        myRoundItem.u = System.currentTimeMillis();
                        MainApp.N(myRoundItem.getContext(), myRoundItem.y);
                        return;
                    }
                    myRoundItem.w = (int) (((float) currentTimeMillis) * 0.2f);
                    myRoundItem.invalidate();
                    MainApp.N(myRoundItem.getContext(), myRoundItem.x);
                }
            }
        };
        this.y = new Runnable() { // from class: com.mycompany.app.view.MyRoundItem.3
            @Override // java.lang.Runnable
            public final void run() {
                MyRoundItem myRoundItem = MyRoundItem.this;
                if (myRoundItem.t && myRoundItem.f) {
                    long currentTimeMillis = System.currentTimeMillis() - myRoundItem.u;
                    if (currentTimeMillis > 700) {
                        myRoundItem.s = false;
                        myRoundItem.t = false;
                        myRoundItem.v = 0;
                        myRoundItem.w = 0;
                        myRoundItem.invalidate();
                        return;
                    }
                    myRoundItem.w = 140 - ((int) (((float) currentTimeMillis) * 0.2f));
                    myRoundItem.invalidate();
                    MainApp.N(myRoundItem.getContext(), myRoundItem.y);
                }
            }
        };
        this.f = true;
        this.q = MainApp.m1;
    }

    public final void a(int i) {
        int i2;
        this.g = true;
        this.i = true;
        this.j = i;
        if (MainApp.K1) {
            i2 = -12632257;
        } else {
            i2 = -2434342;
        }
        this.l = i2;
        this.k = 0.5f;
        Paint paint = new Paint();
        this.m = paint;
        paint.setAntiAlias(true);
        this.m.setStyle(Paint.Style.STROKE);
        this.m.setColor(this.l);
        this.m.setStrokeWidth(1.0f);
    }

    public final void b() {
        this.f18937c = null;
        this.f = false;
        this.m = null;
    }

    public final void c() {
        Paint paint;
        int i = this.l;
        if (i != 0 && (paint = this.m) != null) {
            if (MainApp.K1) {
                if (i == -2434342) {
                    this.l = -12632257;
                    paint.setColor(-12632257);
                    invalidate();
                    return;
                }
                return;
            }
            if (i == -12632257) {
                this.l = -2434342;
                paint.setColor(-2434342);
                invalidate();
            }
        }
    }

    public final void d(boolean z, boolean z2) {
        this.n = z;
        this.o = z2;
        e();
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        int i;
        if (this.f) {
            int i2 = this.r;
            if (i2 != 0) {
                canvas.drawColor(i2);
            } else {
                if (MainApp.K1) {
                    i = -14606047;
                } else {
                    i = -1;
                }
                canvas.drawColor(i);
            }
            super.draw(canvas);
            int i3 = this.v;
            if (i3 != 0) {
                canvas.drawColor((i3 & 16777215) | (this.w << 24));
            }
            if ((!this.n || !this.o) && this.g && this.m != null) {
                int width = getWidth();
                int height = getHeight();
                if (!this.n && this.h) {
                    int i4 = this.j;
                    float f = this.k;
                    canvas.drawLine(i4, f, width - i4, f, this.m);
                }
                if (!this.o && this.i) {
                    int i5 = this.j;
                    float f2 = height - this.k;
                    canvas.drawLine(i5, f2, width - i5, f2, this.m);
                }
            }
        }
    }

    public final void e() {
        boolean z;
        boolean z2 = this.n;
        if (!z2 && !this.o) {
            z = false;
        } else {
            z = true;
        }
        if (this.p == z) {
            return;
        }
        this.p = z;
        if (!z2 && !this.o) {
            setClipToOutline(false);
        } else {
            setOutlineProvider(new ViewOutlineProvider() { // from class: com.mycompany.app.view.MyRoundItem.1
                @Override // android.view.ViewOutlineProvider
                public final void getOutline(View view, Outline outline) {
                    if (outline != null) {
                        MyRoundItem myRoundItem = MyRoundItem.this;
                        boolean z3 = myRoundItem.n;
                        if (z3 && myRoundItem.o) {
                            outline.setRoundRect(0, 0, myRoundItem.getWidth(), myRoundItem.getHeight(), myRoundItem.q);
                            return;
                        }
                        if (z3) {
                            int width = myRoundItem.getWidth();
                            int height = myRoundItem.getHeight();
                            int i = myRoundItem.q;
                            outline.setRoundRect(0, 0, width, height + i, i);
                            return;
                        }
                        if (myRoundItem.o) {
                            outline.setRoundRect(0, -myRoundItem.q, myRoundItem.getWidth(), myRoundItem.getHeight(), myRoundItem.q);
                        }
                    }
                }
            });
            setClipToOutline(true);
        }
    }

    @Override // android.view.View
    public final void invalidate() {
        if (!this.f) {
            return;
        }
        super.invalidate();
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        ImageSizeListener imageSizeListener = this.f18937c;
        if (imageSizeListener != null) {
            imageSizeListener.a(this, i, i2);
        }
    }

    public void setBackColor(int i) {
        this.r = i;
    }

    public void setDrawLine(boolean z) {
        if (this.g == z) {
            return;
        }
        this.g = z;
        invalidate();
    }

    public void setLinePad(int i) {
        if (this.j == i) {
            return;
        }
        this.j = i;
        invalidate();
    }

    public void setListener(ImageSizeListener imageSizeListener) {
        this.f18937c = imageSizeListener;
    }

    public void setRound(int i) {
        if (i == 1) {
            d(true, false);
            return;
        }
        if (i == 2) {
            d(false, true);
        } else if (i == 3) {
            d(true, true);
        } else {
            d(false, false);
        }
    }
}
