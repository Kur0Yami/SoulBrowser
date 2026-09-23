package com.mycompany.app.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Shader;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.MainUtil;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class MyPaletteView extends View {
    public boolean A;
    public Rect B;
    public ArrayList C;

    /* renamed from: c, reason: collision with root package name */
    public boolean f18864c;
    public PaletteListener f;
    public int g;
    public int h;
    public final int i;
    public int j;
    public final int k;
    public final int l;
    public final int m;
    public final int n;
    public final int o;
    public final int p;
    public float q;
    public Bitmap r;
    public Paint s;
    public Paint t;
    public Paint u;
    public int v;
    public int w;
    public float x;
    public float y;
    public float z;

    /* loaded from: classes3.dex */
    public interface PaletteListener {
        void a(float f, int i);
    }

    public MyPaletteView(Context context) {
        super(context);
        int i;
        if (MainUtil.O5(context)) {
            setRotationY(180.0f);
        }
        this.f18864c = true;
        this.g = 0;
        int i2 = MainApp.E1;
        this.i = i2;
        this.k = i2 * 2;
        this.n = i2;
        int round = Math.round(MainUtil.G(context, 6.0f));
        this.l = round;
        int i3 = this.i;
        this.o = i3;
        this.p = (round * 2) + this.k;
        this.m = i3 / 2;
        int round2 = Math.round(MainApp.G1 / 2.0f);
        Paint paint = new Paint();
        this.s = paint;
        paint.setAntiAlias(true);
        Paint paint2 = this.s;
        Paint.Style style = Paint.Style.STROKE;
        paint2.setStyle(style);
        this.s.setStrokeWidth(2.0f);
        Paint paint3 = this.s;
        if (MainApp.K1) {
            i = -12632257;
        } else {
            i = -16777216;
        }
        paint3.setColor(i);
        Paint paint4 = new Paint();
        this.t = paint4;
        paint4.setAntiAlias(true);
        this.t.setStyle(style);
        this.t.setStrokeWidth(this.l);
        this.t.setColor(-16777216);
        Paint paint5 = new Paint();
        this.u = paint5;
        paint5.setAntiAlias(true);
        this.u.setStyle(style);
        this.u.setStrokeWidth(this.l - round2);
        this.u.setColor(-1);
        if (Build.VERSION.SDK_INT >= 29) {
            this.B = new Rect();
            ArrayList arrayList = new ArrayList();
            this.C = arrayList;
            arrayList.add(this.B);
        }
    }

    private float[] getColor1Poses() {
        int i = this.v;
        if (i == 3) {
            return MainConst.w;
        }
        if (i == 1) {
            return MainConst.p;
        }
        if (i == 2) {
            return MainConst.p;
        }
        return MainConst.p;
    }

    private int[] getColor1Values() {
        int i = this.v;
        if (i == 3) {
            return MainConst.v;
        }
        if (i == 1) {
            return MainConst.q;
        }
        if (i == 2) {
            return MainConst.r;
        }
        return MainConst.o;
    }

    public final void a() {
        this.f18864c = false;
        Bitmap bitmap = this.r;
        if (bitmap != null) {
            bitmap.recycle();
        }
        this.r = null;
        this.f = null;
        this.s = null;
        this.t = null;
        this.u = null;
        this.B = null;
        this.C = null;
    }

    public final void b(float f, int i) {
        if (i != 0) {
            i |= -16777216;
        }
        this.w = i;
        this.x = f;
        int i2 = this.j;
        if (i2 == 0) {
            return;
        }
        this.q = f * i2;
        invalidate();
    }

    public final void c(int i, int i2, int i3, int i4) {
        Rect rect;
        if (Build.VERSION.SDK_INT >= 29 && (rect = this.B) != null && this.C != null) {
            try {
                int i5 = MainApp.F1;
                rect.set(i - i5, i2 - i5, i3 + i5, i4 + i5);
                setSystemGestureExclusionRects(this.C);
            } catch (Exception unused) {
            }
        }
    }

    public final void d(float f, float f2) {
        if (MainUtil.f6(this.r)) {
            float f3 = this.i;
            if (f >= f3 && f < r0 + this.j) {
                if (f2 >= this.n && f2 < r0 + this.k) {
                    this.g = 1;
                }
            }
            if (this.g == 1) {
                float f4 = f - f3;
                this.q = f4;
                if (f4 < 0.0f) {
                    this.q = 0.0f;
                }
                float f5 = this.q;
                float f6 = this.j - 1;
                if (f5 > f6) {
                    this.q = f6;
                }
                int round = Math.round(this.q);
                if (round == 0) {
                    int[] color1Values = getColor1Values();
                    if (color1Values != null) {
                        this.w = color1Values[0];
                    } else {
                        return;
                    }
                } else if (round == this.j - 1) {
                    int[] color1Values2 = getColor1Values();
                    if (color1Values2 != null) {
                        this.w = color1Values2[color1Values2.length - 1];
                    } else {
                        return;
                    }
                } else {
                    this.w = this.r.getPixel(round, 0);
                }
                int i = this.j;
                if (i != 0) {
                    PaletteListener paletteListener = this.f;
                    if (paletteListener != null) {
                        float f7 = this.q / i;
                        this.x = f7;
                        paletteListener.a(f7, this.w);
                    }
                    invalidate();
                }
            }
        }
    }

    @Override // android.view.View
    public final void invalidate() {
        if (!this.f18864c) {
            return;
        }
        super.invalidate();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        if (this.f18864c) {
            super.onDraw(canvas);
            if (!MainUtil.f6(this.r)) {
                return;
            }
            canvas.drawBitmap(this.r, this.i, this.n, (Paint) null);
            canvas.drawRect(this.i, this.n, r0 + this.j, r1 + this.k, this.s);
            if (this.g == 1) {
                this.u.setColor(-2039584);
            } else {
                this.u.setColor(-1);
            }
            int i = this.l / 2;
            int round = Math.round((this.q - this.m) + i + this.i);
            int i2 = this.n;
            int i3 = this.l;
            int i4 = (i2 - i3) + i;
            int i5 = (this.o + round) - i3;
            int i6 = (this.p + i4) - i3;
            float f = round;
            float f2 = i4;
            float f3 = i5;
            float f4 = i6;
            canvas.drawRect(f, f2, f3, f4, this.t);
            canvas.drawRect(f, f2, f3, f4, this.u);
            c(round, i4, i5, i6);
        }
    }

    @Override // android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (!z) {
            return;
        }
        int i5 = this.l / 2;
        int round = Math.round((this.q - this.m) + i5 + this.i);
        int i6 = this.n;
        int i7 = this.l;
        int i8 = (i6 - i7) + i5;
        c(round, i8, (this.o + round) - i7, (this.p + i8) - i7);
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        int i5;
        super.onSizeChanged(i, i2, i3, i4);
        if (this.r == null || this.h != i) {
            int i6 = i - (this.i * 2);
            this.j = i6;
            Bitmap bitmap = null;
            if (i6 != 0 && (i5 = this.k) != 0) {
                int[] color1Values = getColor1Values();
                float[] color1Poses = getColor1Poses();
                if (color1Values != null && color1Poses != null && color1Values.length == color1Poses.length) {
                    try {
                        Paint paint = new Paint();
                        paint.setAntiAlias(true);
                        float f = i6;
                        paint.setShader(new LinearGradient(0.0f, 0.0f, f, 0.0f, color1Values, color1Poses, Shader.TileMode.REPEAT));
                        Bitmap createBitmap = Bitmap.createBitmap(i6, i5, Bitmap.Config.RGB_565);
                        new Canvas(createBitmap).drawRect(0.0f, 0.0f, f, i5, paint);
                        bitmap = createBitmap;
                    } catch (Exception unused) {
                    }
                }
            }
            this.r = bitmap;
            float f2 = this.x;
            if (f2 == -1.0f) {
                setColor(this.w);
            } else {
                b(f2, this.w);
            }
        }
        this.h = i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x000e, code lost:
    
        if (r0 != 3) goto L34;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouchEvent(android.view.MotionEvent r7) {
        /*
            r6 = this;
            int r0 = r7.getActionMasked()
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L89
            r3 = 2
            if (r0 == r2) goto L6a
            if (r0 == r3) goto L12
            r4 = 3
            if (r0 == r4) goto L6a
            goto L88
        L12:
            int r0 = r6.g
            if (r0 != r3) goto L17
            goto L88
        L17:
            boolean r0 = r6.A
            if (r0 != 0) goto L5a
            float r0 = r7.getX()
            float r1 = r6.y
            float r4 = r7.getY()
            float r5 = r6.z
            float r0 = com.mycompany.app.main.MainUtil.I0(r0, r1, r4, r5)
            int r1 = com.mycompany.app.main.MainApp.r1
            float r1 = (float) r1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L5a
            r6.A = r2
            float r0 = r7.getX()
            float r1 = r6.y
            float r0 = r0 - r1
            float r0 = java.lang.Math.abs(r0)
            float r1 = r7.getY()
            float r4 = r6.z
            float r1 = r1 - r4
            float r1 = java.lang.Math.abs(r1)
            int r0 = (r1 > r0 ? 1 : (r1 == r0 ? 0 : -1))
            if (r0 <= 0) goto L51
            r6.g = r3
            return r2
        L51:
            android.view.ViewParent r0 = r6.getParent()
            if (r0 == 0) goto L5a
            r0.requestDisallowInterceptTouchEvent(r2)
        L5a:
            boolean r0 = r6.A
            if (r0 == 0) goto L88
            float r0 = r7.getX()
            float r7 = r7.getY()
            r6.d(r0, r7)
            return r2
        L6a:
            int r0 = r6.g
            if (r0 != r3) goto L6f
            goto L88
        L6f:
            float r0 = r7.getX()
            float r7 = r7.getY()
            r6.d(r0, r7)
            r6.g = r1
            r6.invalidate()
            android.view.ViewParent r7 = r6.getParent()
            if (r7 == 0) goto L88
            r7.requestDisallowInterceptTouchEvent(r1)
        L88:
            return r2
        L89:
            r6.g = r1
            float r0 = r7.getX()
            r6.y = r0
            float r7 = r7.getY()
            r6.z = r7
            r6.A = r1
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.view.MyPaletteView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        this.g = 0;
    }

    public void setBorder(int i) {
        Paint paint = this.s;
        if (paint != null) {
            paint.setColor(i);
        }
    }

    public void setColor(int i) {
        this.w = i;
        this.x = -1.0f;
        if (MainUtil.f6(this.r) && this.j == this.r.getWidth()) {
            int[] color1Values = getColor1Values();
            float[] color1Poses = getColor1Poses();
            if (color1Values != null && color1Poses != null && color1Values.length == color1Poses.length) {
                int length = color1Values.length;
                for (int i2 = 0; i2 < length; i2++) {
                    if (this.w == color1Values[i2]) {
                        float f = color1Poses[i2];
                        int i3 = this.j;
                        float f2 = (int) (f * i3);
                        this.x = f2;
                        this.q = f2 * i3;
                        invalidate();
                        return;
                    }
                }
                for (int i4 = 0; i4 < this.j; i4++) {
                    if (this.w == this.r.getPixel(i4, 0)) {
                        float f3 = i4;
                        this.q = f3;
                        this.x = f3 / this.j;
                        invalidate();
                        return;
                    }
                }
            }
        }
    }

    @Override // android.view.View
    public void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
        layoutParams.height = this.n + this.k + this.i;
        super.setLayoutParams(layoutParams);
    }

    public void setListener(PaletteListener paletteListener) {
        this.f = paletteListener;
    }

    public void setType(int i) {
        this.v = i;
    }
}
