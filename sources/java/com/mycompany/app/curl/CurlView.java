package com.mycompany.app.curl;

import android.graphics.PointF;
import android.graphics.RectF;
import android.opengl.GLSurfaceView;
import android.support.v4.media.a;
import com.mycompany.app.curl.CurlRenderer;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class CurlView extends GLSurfaceView implements CurlRenderer.RendererListener {
    public float A;

    /* renamed from: c, reason: collision with root package name */
    public boolean f12893c;
    public OnPageChangeListener f;
    public boolean g;
    public CurlRenderer h;
    public int i;
    public int j;
    public RectF k;
    public int l;
    public int m;
    public int n;
    public PointF o;
    public PointF p;
    public PointF q;
    public PointF r;
    public long s;
    public int t;
    public float u;
    public float v;
    public PointF w;
    public PointF x;
    public boolean y;
    public boolean z;

    /* loaded from: classes3.dex */
    public interface OnPageChangeListener {
        void a(int i, int i2);

        void b(CurlMesh curlMesh, int i, int i2);

        boolean c();

        void d(CurlMesh curlMesh, int i, int i2);

        boolean e();

        void f(int i);

        void g(CurlMesh curlMesh, int i);
    }

    private void setTouchTranslate(PointF pointF) {
        if (this.i != 0 && this.j != 0) {
            RectF rectF = this.k;
            pointF.x = ((rectF.width() * pointF.x) / this.i) + rectF.left;
            RectF rectF2 = this.k;
            pointF.y = ((rectF2.height() * pointF.y) / this.j) + rectF2.top;
        }
    }

    public final synchronized void a() {
        if (this.f == null) {
            return;
        }
        if (this.t == 0) {
            return;
        }
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis < this.s + 300) {
            this.x.set(this.q);
            float f = 1.0f - (((float) (currentTimeMillis - this.s)) / 300.0f);
            float f2 = 1.0f - ((3.0f - (f * 2.0f)) * ((f * f) * f));
            PointF pointF = this.x;
            float f3 = pointF.x;
            PointF pointF2 = this.r;
            float f4 = pointF2.x;
            PointF pointF3 = this.q;
            pointF.x = a.a(f4, pointF3.x, f2, f3);
            pointF.y = a.a(pointF2.y, pointF3.y, f2, pointF.y);
            e(true);
            return;
        }
        ArrayList arrayList = this.h.g;
        if (arrayList != null && arrayList.size() >= 3) {
            for (int i = 0; i < 3; i++) {
                CurlMesh curlMesh = (CurlMesh) arrayList.get(i);
                if (curlMesh != null) {
                    curlMesh.e();
                }
            }
        }
        int i2 = this.n;
        char c2 = 2;
        if (i2 == 2 && this.t == 1) {
            this.h.d(this.k);
            this.m++;
            c2 = 1;
        } else if (i2 == 1 && this.t == 2) {
            this.h.e(this.k);
            this.m--;
        } else {
            c2 = 0;
        }
        this.n = 0;
        this.t = 0;
        CurlRenderer curlRenderer = this.h;
        curlRenderer.i = 0;
        if (c2 != 0) {
            this.f.b(curlRenderer.b(1), this.m, this.n);
        } else {
            this.f.b(null, this.m, 0);
        }
    }

    public final void b(int i) {
        if (this.f == null) {
            return;
        }
        this.n = i;
        this.h.i = i;
        e(false);
        this.f.g(this.h.b(1), this.n);
    }

    public final void c(int i, int i2) {
        if (i != 0 && i2 != 0) {
            if (i != this.i || i2 != this.j) {
                float f = i / i2;
                RectF rectF = new RectF();
                rectF.left = -f;
                rectF.right = f;
                rectF.top = 1.0f;
                rectF.bottom = -1.0f;
                this.i = i;
                this.j = i2;
                this.k.set(rectF);
                d();
            }
        }
    }

    public final void d() {
        if (this.f != null) {
            this.n = 0;
            this.t = 0;
            CurlRenderer curlRenderer = this.h;
            curlRenderer.i = 0;
            if (this.m == -1) {
                return;
            }
            RectF rectF = this.k;
            ArrayList arrayList = curlRenderer.g;
            if (arrayList != null && arrayList.size() >= 3) {
                for (int i = 0; i < 3; i++) {
                    CurlRenderer.c((CurlMesh) arrayList.get(i), rectF);
                }
            }
            this.f.d(this.h.b(1), this.m, this.n);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0022, code lost:
    
        if (r0 != 3) goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x007e, code lost:
    
        if (java.lang.Math.abs(r6.u - r7.getX()) < com.mycompany.app.main.MainApp.r1) goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x009d, code lost:
    
        if (r6.y == false) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00a1, code lost:
    
        if (r6.m <= 0) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00ab, code lost:
    
        if (r7.getX() <= r6.u) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00ad, code lost:
    
        r6.w.x = r6.k.left;
        b(1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00b8, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00bb, code lost:
    
        if (r6.y != false) goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00c1, code lost:
    
        if (r6.m >= r6.l) goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00cb, code lost:
    
        if (r7.getX() >= r6.u) goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00cd, code lost:
    
        r6.w.x = r6.k.right;
        b(2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00d8, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0097, code lost:
    
        if (com.mycompany.app.main.MainUtil.I0(r6.u, r7.getX(), r6.v, r7.getY()) < com.mycompany.app.main.MainApp.r1) goto L79;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean dispatchTouchEvent(android.view.MotionEvent r7) {
        /*
            Method dump skipped, instructions count: 372
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.curl.CurlView.dispatchTouchEvent(android.view.MotionEvent):boolean");
    }

    public final void e(boolean z) {
        CurlMesh b;
        if (this.f12893c) {
            if (this.n == 2) {
                b = this.h.b(2);
            } else {
                b = this.h.b(1);
            }
        } else if (this.n == 1) {
            b = this.h.b(0);
        } else {
            b = this.h.b(1);
        }
        if (b != null) {
            this.p.set(this.x);
            double width = (this.k.width() / 3.0f) * Math.max(1.0f - this.A, 0.0f);
            if (this.f12893c) {
                if (this.n == 1) {
                    PointF pointF = this.o;
                    PointF pointF2 = this.p;
                    float f = pointF2.x;
                    PointF pointF3 = this.w;
                    pointF.x = f - pointF3.x;
                    pointF.y = pointF2.y - pointF3.y;
                    float sqrt = (float) Math.sqrt((r3 * r3) + (r6 * r6));
                    double d = width * 3.141592653589793d;
                    double d2 = sqrt;
                    float width2 = this.k.width() * 2.0f;
                    if (d2 > width2 - d) {
                        d = Math.max(width2 - sqrt, 0.0f);
                        width = d / 3.141592653589793d;
                    }
                    if (d2 >= d) {
                        width = Math.max(Math.min(this.p.x - this.k.left, width), 0.0d);
                        this.p.y = (float) (r6.y - ((this.o.y * ((d2 - d) / 2.0d)) / d2));
                    } else {
                        double sin = Math.sin(Math.sqrt(d2 / d) * 3.141592653589793d) * width;
                        PointF pointF4 = this.p;
                        double d3 = pointF4.x;
                        PointF pointF5 = this.o;
                        pointF4.x = (float) (((pointF5.x * sin) / d2) + d3);
                        pointF4.y = (float) (((pointF5.y * sin) / d2) + pointF4.y);
                    }
                } else {
                    width = Math.max(Math.min(this.k.right - this.p.x, width), 0.0d);
                    PointF pointF6 = this.p;
                    pointF6.x = (float) (Math.min(r3 - this.k.left, width) + pointF6.x);
                    PointF pointF7 = this.o;
                    PointF pointF8 = this.p;
                    float f2 = pointF8.x;
                    PointF pointF9 = this.w;
                    pointF7.x = f2 + pointF9.x;
                    pointF7.y = pointF8.y - pointF9.y;
                }
                PointF pointF10 = this.p;
                float f3 = pointF10.x;
                RectF rectF = this.k;
                if (f3 <= rectF.left) {
                    b.e();
                    if (z) {
                        requestRender();
                        return;
                    }
                    return;
                }
                float f4 = rectF.right;
                if (f3 > f4) {
                    pointF10.x = f4;
                }
                if (Float.compare(this.o.y, 0.0f) != 0) {
                    PointF pointF11 = this.p;
                    float f5 = pointF11.x;
                    RectF rectF2 = this.k;
                    float f6 = rectF2.right;
                    float f7 = pointF11.y;
                    PointF pointF12 = this.o;
                    float f8 = (f5 - f6) * pointF12.x;
                    float f9 = pointF12.y;
                    float f10 = (f8 / f9) + f7;
                    if (f9 < 0.0f) {
                        float f11 = rectF2.top;
                        if (f10 < f11) {
                            pointF12.x = f11 - f7;
                            pointF12.y = pointF11.x - f6;
                        }
                    }
                    if (f9 > 0.0f) {
                        float f12 = rectF2.bottom;
                        if (f10 > f12) {
                            pointF12.x = f7 - f12;
                            pointF12.y = f6 - pointF11.x;
                        }
                    }
                }
            } else {
                if (this.n == 2) {
                    PointF pointF13 = this.o;
                    PointF pointF14 = this.p;
                    float f13 = pointF14.x;
                    PointF pointF15 = this.w;
                    pointF13.x = f13 - pointF15.x;
                    pointF13.y = pointF14.y - pointF15.y;
                    float sqrt2 = (float) Math.sqrt((r3 * r3) + (r6 * r6));
                    double d4 = width * 3.141592653589793d;
                    double d5 = sqrt2;
                    float width3 = this.k.width() * 2.0f;
                    if (d5 > width3 - d4) {
                        d4 = Math.max(width3 - sqrt2, 0.0f);
                        width = d4 / 3.141592653589793d;
                    }
                    if (d5 >= d4) {
                        width = Math.max(Math.min(this.p.x - this.k.left, width), 0.0d);
                        this.p.y = (float) (r6.y - ((this.o.y * ((d5 - d4) / 2.0d)) / d5));
                    } else {
                        double sin2 = Math.sin(Math.sqrt(d5 / d4) * 3.141592653589793d) * width;
                        PointF pointF16 = this.p;
                        double d6 = pointF16.x;
                        PointF pointF17 = this.o;
                        pointF16.x = (float) (((pointF17.x * sin2) / d5) + d6);
                        pointF16.y = (float) (((pointF17.y * sin2) / d5) + pointF16.y);
                    }
                } else {
                    double max = Math.max(Math.min(this.p.x - this.k.left, width), 0.0d);
                    PointF pointF18 = this.p;
                    pointF18.x = (float) (pointF18.x - Math.min(this.k.right - r5, max));
                    PointF pointF19 = this.o;
                    PointF pointF20 = this.p;
                    float f14 = pointF20.x;
                    PointF pointF21 = this.w;
                    pointF19.x = f14 + pointF21.x;
                    pointF19.y = pointF20.y - pointF21.y;
                    width = max;
                }
                PointF pointF22 = this.p;
                float f15 = pointF22.x;
                RectF rectF3 = this.k;
                if (f15 >= rectF3.right) {
                    b.e();
                    if (z) {
                        requestRender();
                        return;
                    }
                    return;
                }
                float f16 = rectF3.left;
                if (f15 < f16) {
                    pointF22.x = f16;
                }
                if (Float.compare(this.o.y, 0.0f) != 0) {
                    PointF pointF23 = this.p;
                    float f17 = pointF23.x;
                    RectF rectF4 = this.k;
                    float f18 = rectF4.left;
                    float f19 = pointF23.y;
                    PointF pointF24 = this.o;
                    float f20 = (f17 - f18) * pointF24.x;
                    float f21 = pointF24.y;
                    float f22 = (f20 / f21) + f19;
                    if (f21 < 0.0f) {
                        float f23 = rectF4.top;
                        if (f22 < f23) {
                            pointF24.x = f19 - f23;
                            pointF24.y = f18 - pointF23.x;
                        }
                    }
                    if (f21 > 0.0f) {
                        float f24 = rectF4.bottom;
                        if (f22 > f24) {
                            pointF24.x = f24 - f19;
                            pointF24.y = pointF23.x - f18;
                        }
                    }
                }
            }
            PointF pointF25 = this.o;
            float f25 = pointF25.x;
            float f26 = pointF25.y;
            double sqrt3 = Math.sqrt((f26 * f26) + (f25 * f25));
            if (Double.compare(sqrt3, 0.0d) != 0) {
                PointF pointF26 = this.o;
                pointF26.x = (float) (pointF26.x / sqrt3);
                pointF26.y = (float) (pointF26.y / sqrt3);
                b.b(this.p, pointF26, width);
            } else {
                b.e();
            }
            if (z) {
                requestRender();
            }
        }
    }

    public int getCurrentItem() {
        return this.m;
    }

    public CurlMesh getPageCenter() {
        return this.h.b(1);
    }

    public CurlMesh getPageLeft() {
        return this.h.b(0);
    }

    public List<CurlMesh> getPageList() {
        ArrayList arrayList = this.h.g;
        if (arrayList != null && arrayList.size() >= 3) {
            return arrayList;
        }
        return null;
    }

    public CurlMesh getPageRight() {
        return this.h.b(2);
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        c(i, i2);
        OnPageChangeListener onPageChangeListener = this.f;
        if (onPageChangeListener != null) {
            onPageChangeListener.a(i, i2);
        }
    }

    public void setEnableTouchPressure(boolean z) {
        this.g = z;
        if (!z) {
            this.A = 0.8f;
        }
    }

    public void setPrepared(boolean z) {
        CurlRenderer curlRenderer = this.h;
        if (curlRenderer != null) {
            curlRenderer.j = z;
        }
    }

    public void setReverse(boolean z) {
        this.f12893c = z;
        CurlRenderer curlRenderer = this.h;
        if (curlRenderer != null) {
            curlRenderer.f12892c = z;
        }
    }
}
