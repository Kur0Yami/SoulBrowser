package com.mycompany.app.wview;

import android.content.res.Configuration;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import com.mycompany.app.dialog.a;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefZtri;

/* loaded from: classes3.dex */
public class WebCastView extends FrameLayout {

    /* renamed from: c, reason: collision with root package name */
    public boolean f20837c;
    public float f;
    public Paint g;
    public float h;
    public float i;
    public boolean j;
    public int k;
    public int l;
    public int m;
    public int n;
    public int o;
    public int p;
    public int q;
    public int r;
    public int s;
    public int t;
    public boolean u;
    public boolean v;
    public int w;
    public int x;
    public MyCastAvailListener y;
    public GestureDetector z;

    /* loaded from: classes3.dex */
    public interface MyCastAvailListener {
        void b();

        void c(View view);

        boolean d();
    }

    public final void a() {
        int i = this.w;
        if ((i != -1234 || this.x != -1234) && MainUtil.I0(this.k, i, this.l, this.x) >= MainApp.G1) {
            this.w = -1234;
            this.x = -1234;
            MyCastAvailListener myCastAvailListener = this.y;
            if (myCastAvailListener != null) {
                myCastAvailListener.b();
            }
        }
    }

    public final void b(int i, int i2) {
        if (!this.f20837c) {
            return;
        }
        int i3 = this.o;
        int i4 = i + i3;
        int i5 = this.s;
        if (i4 > i5) {
            i = i5 - i3;
        }
        int i6 = this.p;
        int i7 = i2 + i6;
        int i8 = this.t;
        if (i7 > i8) {
            i2 = i8 - i6;
        }
        if (i < 0) {
            i = 0;
        }
        if (i2 < 0) {
            i2 = 0;
        }
        PrefZtri.R = i;
        PrefZtri.S = i5 - (i3 + i);
        PrefZtri.T = i2;
        PrefZtri.U = i8 - (i6 + i2);
        setX(i + this.q);
        setY(i2 + this.r);
    }

    public final void c() {
        Object parent;
        int a2;
        int a3;
        if (this.f20837c && (parent = getParent()) != null && (parent instanceof View)) {
            View view = (View) parent;
            int paddingLeft = view.getPaddingLeft();
            int paddingTop = view.getPaddingTop();
            int width = (view.getWidth() - paddingLeft) - view.getPaddingRight();
            int height = (view.getHeight() - paddingTop) - view.getPaddingBottom();
            if (paddingLeft != this.q || paddingTop != this.r || width != this.s || height != this.t) {
                this.q = paddingLeft;
                this.r = paddingTop;
                this.s = width;
                this.t = height;
                float f = PrefZtri.R;
                float f2 = PrefZtri.S;
                float f3 = PrefZtri.T;
                float f4 = PrefZtri.U;
                if (f < 0.0f && f2 < 0.0f && f3 < 0.0f && f4 < 0.0f) {
                    a2 = width - this.o;
                    a3 = MainUtil.H3() + MainApp.E1;
                } else {
                    a2 = a.a(f, f2, width - this.o, f);
                    float f5 = this.t - this.p;
                    float f6 = PrefZtri.T;
                    a3 = a.a(f6, PrefZtri.U, f5, f6);
                }
                b(a2, a3);
                if (Float.compare(f, PrefZtri.R) != 0 || Float.compare(f2, PrefZtri.S) != 0 || Float.compare(f3, PrefZtri.T) != 0 || Float.compare(f4, PrefZtri.U) != 0) {
                    PrefZtri.s(getContext());
                }
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        Paint paint;
        if (this.f20837c && (paint = this.g) != null) {
            canvas.drawCircle(this.h, this.i, this.f, paint);
        }
        super.dispatchDraw(canvas);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0023, code lost:
    
        if (r0 != 3) goto L87;
     */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean dispatchTouchEvent(android.view.MotionEvent r7) {
        /*
            Method dump skipped, instructions count: 392
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.wview.WebCastView.dispatchTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        c();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        c();
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.h = i / 2.0f;
        this.i = i2 / 2.0f;
        c();
    }

    public void setAvailListener(MyCastAvailListener myCastAvailListener) {
        this.y = myCastAvailListener;
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        if (!z) {
            this.j = false;
        }
    }

    public void setMovable(boolean z) {
        if (this.f20837c != z) {
            this.f20837c = z;
            if (z) {
                this.q = 0;
                this.r = 0;
                this.s = 0;
                this.t = 0;
                int i = MainApp.g1;
                this.o = i;
                this.p = i;
                this.f = MainApp.j1;
                if (this.g == null) {
                    Paint paint = new Paint();
                    this.g = paint;
                    paint.setAntiAlias(true);
                    this.g.setStyle(Paint.Style.FILL);
                    this.g.setColor(-5854742);
                    invalidate();
                }
            } else {
                if (this.g != null) {
                    this.g = null;
                    invalidate();
                }
                setX(this.q);
                setY(this.r);
            }
            if (this.f20837c) {
                if (this.z != null) {
                    return;
                }
                this.z = new GestureDetector(getContext(), new GestureDetector.SimpleOnGestureListener() { // from class: com.mycompany.app.wview.WebCastView.1
                    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
                    public final void onLongPress(MotionEvent motionEvent) {
                        boolean z2;
                        WebCastView webCastView = WebCastView.this;
                        if (webCastView.z != null && webCastView.f20837c && webCastView.j && (z2 = webCastView.u) && !webCastView.v) {
                            if (PrefZtri.t0) {
                                webCastView.v = true;
                                webCastView.w = webCastView.k;
                                webCastView.x = webCastView.l;
                            }
                            if (z2) {
                                webCastView.u = false;
                            }
                            MainUtil.l7(webCastView);
                            MyCastAvailListener myCastAvailListener = webCastView.y;
                            if (myCastAvailListener != null) {
                                myCastAvailListener.c(webCastView);
                            }
                        }
                    }
                });
                return;
            }
            this.z = null;
        }
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        if (i != 0) {
            this.j = false;
            MyCastAvailListener myCastAvailListener = this.y;
            if (myCastAvailListener != null) {
                myCastAvailListener.b();
            }
        }
    }
}
