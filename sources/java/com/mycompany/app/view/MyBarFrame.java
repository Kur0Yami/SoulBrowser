package com.mycompany.app.view;

import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Paint;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.widget.FrameLayout;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefPdf;
import com.mycompany.app.pref.PrefWeb;
import com.mycompany.app.web.WebViewActivity;

/* loaded from: classes3.dex */
public class MyBarFrame extends FrameLayout {
    public static final /* synthetic */ int q = 0;

    /* renamed from: c, reason: collision with root package name */
    public boolean f18521c;
    public int f;
    public final float g;
    public Paint h;
    public int i;
    public boolean j;
    public boolean k;
    public boolean l;
    public int m;
    public View n;
    public View o;
    public View p;

    public MyBarFrame(WebViewActivity webViewActivity) {
        super(webViewActivity);
        float f = MainApp.n1;
        this.g = f / 2.0f;
        Paint paint = new Paint();
        this.h = paint;
        paint.setAntiAlias(true);
        this.h.setStyle(Paint.Style.STROKE);
        this.h.setStrokeWidth(f);
    }

    private int getBarMgnBot() {
        int i;
        if (PrefWeb.x == 3) {
            i = PrefPdf.F;
        } else {
            i = 0;
        }
        if (PrefPdf.z && !MainActivity.e1) {
            return MainUtil.G3() + i;
        }
        return i;
    }

    private int getBarMgnTab() {
        int i = PrefWeb.x;
        if (i == 2) {
            if (!PrefPdf.z) {
                return MainUtil.G3();
            }
            return 0;
        }
        if (i == 4) {
            if (PrefPdf.z) {
                if (MainActivity.e1) {
                    return Math.max(MainUtil.G3(), MainUtil.i0());
                }
                return MainUtil.i0() + MainUtil.G3();
            }
            return MainUtil.i0();
        }
        return 0;
    }

    private int getBarMgnTop() {
        if (PrefPdf.z) {
            if (PrefWeb.x == 3) {
                return PrefPdf.F;
            }
            return 0;
        }
        if (PrefWeb.x == 1) {
            return PrefPdf.F;
        }
        return 0;
    }

    private void setChildAlpha(float f) {
        int childCount = getChildCount();
        if (childCount != 0) {
            for (int i = 0; i < childCount; i++) {
                View childAt = getChildAt(i);
                if (childAt != null) {
                    childAt.setAlpha(f);
                }
            }
        }
    }

    private void setChildVisible(int i) {
        int childCount = getChildCount();
        if (childCount != 0) {
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                if (childAt != null) {
                    childAt.setVisibility(i);
                }
            }
        }
    }

    private void setRoundClip(boolean z) {
        if (this.f18521c) {
            boolean V4 = MainUtil.V4();
            if (this.k != z || this.l != V4 || this.m != PrefWeb.x) {
                this.k = z;
                this.l = V4;
                this.m = PrefWeb.x;
            } else {
                return;
            }
        } else if (this.k == z) {
            return;
        } else {
            this.k = z;
        }
        if (!this.k) {
            setClipToOutline(false);
        } else {
            setOutlineProvider(new ViewOutlineProvider() { // from class: com.mycompany.app.view.MyBarFrame.1
                @Override // android.view.ViewOutlineProvider
                public final void getOutline(View view, Outline outline) {
                    if (outline != null) {
                        MyBarFrame myBarFrame = MyBarFrame.this;
                        if (myBarFrame.k) {
                            int width = myBarFrame.getWidth();
                            int height = myBarFrame.getHeight();
                            int i = MainApp.G1;
                            if (myBarFrame.f18521c && MainUtil.V4()) {
                                int i2 = PrefWeb.x;
                                if (i2 == 1) {
                                    outline.setRoundRect(i, 0, width - i, height - i, MainApp.E1);
                                    return;
                                } else if (i2 == 2) {
                                    outline.setRoundRect(i, i, width - i, height, MainApp.E1);
                                    return;
                                } else {
                                    int i3 = MainApp.F1;
                                    outline.setRoundRect(i, i3, width - i, height - i3, MainApp.E1);
                                    return;
                                }
                            }
                            outline.setRoundRect(i, 0, width - i, height, MainApp.E1);
                        }
                    }
                }
            });
            setClipToOutline(true);
        }
    }

    public final void a(View view, int i) {
        int i2;
        if (i == 0) {
            this.n = view;
        } else if (i == 1) {
            this.o = view;
        } else if (i == 2) {
            this.p = view;
        }
        e();
        int g = g(i);
        int f = f(i);
        if (i == 0) {
            i2 = getBarMgnTop();
        } else if (i == 1) {
            i2 = getBarMgnBot();
        } else if (i == 2) {
            i2 = getBarMgnTab();
        } else {
            i2 = 0;
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(g, f);
        layoutParams.topMargin = i2;
        if (i == 1) {
            layoutParams.gravity = 8388613;
        } else {
            layoutParams.gravity = 8388611;
        }
        if (i == 3) {
            setChildVisible(8);
        }
        addView(view, layoutParams);
    }

    public final void b() {
        e();
        boolean c2 = c(this.n, 0);
        boolean c3 = c(this.o, 1);
        boolean c4 = c(this.p, 2);
        if (!c2 && !c3 && !c4) {
            return;
        }
        requestLayout();
    }

    public final boolean c(View view, int i) {
        FrameLayout.LayoutParams layoutParams;
        int i2;
        if (view != null && (layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams()) != null) {
            int g = g(i);
            int f = f(i);
            if (i == 0) {
                i2 = getBarMgnTop();
            } else if (i == 1) {
                i2 = getBarMgnBot();
            } else if (i == 2) {
                i2 = getBarMgnTab();
            } else {
                i2 = 0;
            }
            if (layoutParams.width != g || layoutParams.height != f || layoutParams.topMargin != i2) {
                layoutParams.width = g;
                layoutParams.height = f;
                layoutParams.topMargin = i2;
                return true;
            }
        }
        return false;
    }

    public final void d() {
        setRoundClip(this.k);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        Canvas canvas2;
        int height = getHeight();
        if (height == 0) {
            return;
        }
        int i = this.f;
        if (i != 0) {
            canvas.drawColor(i);
        }
        if (this.i != 0 && this.h != null) {
            if (this.f18521c) {
                float f = height;
                canvas2 = canvas;
                canvas2.drawLine(0.0f, f - this.g, getWidth(), f - this.g, this.h);
            } else {
                canvas2 = canvas;
                canvas2.drawLine(0.0f, this.g, getWidth(), this.g, this.h);
            }
        } else {
            canvas2 = canvas;
        }
        super.dispatchDraw(canvas2);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.j) {
            return true;
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public final void e() {
        int j0;
        if (this.f18521c) {
            j0 = MainUtil.H3();
        } else {
            j0 = MainUtil.j0();
        }
        if (j0 == 0) {
            if (this.f18521c) {
                setVisibility(4);
                return;
            } else {
                setVisibility(8);
                return;
            }
        }
        setVisibility(0);
    }

    public final int f(int i) {
        int i0;
        if (i == 0) {
            if (PrefPdf.z && MainActivity.e1) {
                return Math.max(MainUtil.G3(), MainUtil.i0());
            }
            return MainUtil.G3();
        }
        if (i == 1) {
            if (PrefPdf.z && MainActivity.e1) {
                return Math.max(MainUtil.G3(), MainUtil.i0());
            }
            return MainUtil.i0();
        }
        if (i == 2) {
            return PrefPdf.F;
        }
        if (this.f18521c) {
            i0 = MainUtil.G3();
        } else {
            i0 = MainUtil.i0();
        }
        int i2 = MainApp.Y0;
        if (i0 < i2) {
            return i2;
        }
        return i0;
    }

    public final int g(int i) {
        if (i == 0) {
            if (PrefPdf.z && MainActivity.e1) {
                return MyBarView.c(getWidth(), true);
            }
            return -1;
        }
        if (i == 1 && PrefPdf.z && MainActivity.e1) {
            return MyBarView.c(getWidth(), false);
        }
        return -1;
    }

    public final void h(View view) {
        removeView(view);
        setChildVisible(0);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:20:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void i(boolean r5, boolean r6) {
        /*
            r4 = this;
            r0 = 0
            int r6 = com.mycompany.app.main.MainUtil.s0(r0, r6)
            r1 = 1
            if (r6 != 0) goto L10
            r2 = -1
            int r3 = com.mycompany.app.pref.PrefEditor.I
            int r2 = com.mycompany.app.pref.PrefEditor.r(r2, r3)
            goto L21
        L10:
            r2 = -16777216(0xffffffffff000000, float:-1.7014118E38)
            if (r6 != r1) goto L1b
            int r3 = com.mycompany.app.pref.PrefEditor.I
            int r2 = com.mycompany.app.pref.PrefEditor.r(r2, r3)
            goto L21
        L1b:
            int r3 = com.mycompany.app.pref.PrefEditor.I
            int r2 = com.mycompany.app.pref.PrefEditor.r(r2, r3)
        L21:
            int r3 = r4.f
            if (r3 == r2) goto L29
            r4.f = r2
            r2 = r1
            goto L2a
        L29:
            r2 = r0
        L2a:
            android.graphics.Paint r3 = r4.h
            if (r3 == 0) goto L40
            if (r5 == 0) goto L31
            goto L36
        L31:
            if (r6 != 0) goto L36
            r0 = -2115968800(0xffffffff81e0e0e0, float:-8.2607284E-38)
        L36:
            int r6 = r4.i
            if (r6 == r0) goto L40
            r4.i = r0
            r3.setColor(r0)
            goto L41
        L40:
            r1 = r2
        L41:
            r4.setRoundClip(r5)
            if (r1 == 0) goto L49
            r4.invalidate()
        L49:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.view.MyBarFrame.i(boolean, boolean):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:20:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void j(int r4, boolean r5, boolean r6) {
        /*
            r3 = this;
            int r4 = com.mycompany.app.main.MainUtil.s0(r4, r6)
            r6 = 1
            if (r4 != 0) goto L9
            r0 = -1
            goto Lf
        L9:
            if (r4 != r6) goto Le
            r0 = -16777216(0xffffffffff000000, float:-1.7014118E38)
            goto Lf
        Le:
            r0 = r4
        Lf:
            int r1 = r3.f
            r2 = 0
            if (r1 == r0) goto L18
            r3.f = r0
            r0 = r6
            goto L19
        L18:
            r0 = r2
        L19:
            android.graphics.Paint r1 = r3.h
            if (r1 == 0) goto L2f
            if (r5 == 0) goto L20
            goto L25
        L20:
            if (r4 != 0) goto L25
            r2 = -2115968800(0xffffffff81e0e0e0, float:-8.2607284E-38)
        L25:
            int r4 = r3.i
            if (r4 == r2) goto L2f
            r3.i = r2
            r1.setColor(r2)
            goto L30
        L2f:
            r6 = r0
        L30:
            r3.setRoundClip(r5)
            if (r6 == 0) goto L38
            r3.invalidate()
        L38:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.view.MyBarFrame.j(int, boolean, boolean):void");
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (!PrefPdf.z) {
            return;
        }
        post(new Runnable() { // from class: com.mycompany.app.view.MyBarFrame.2
            @Override // java.lang.Runnable
            public final void run() {
                MyBarFrame.this.b();
            }
        });
    }

    public void setDisabled(boolean z) {
        float f;
        if (this.j == z) {
            return;
        }
        this.j = z;
        if (z) {
            f = 0.4f;
        } else {
            f = 1.0f;
        }
        setChildAlpha(f);
        invalidate();
    }

    public void setIsTop(boolean z) {
        this.f18521c = z;
    }
}
