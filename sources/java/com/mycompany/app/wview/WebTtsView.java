package com.mycompany.app.wview;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.view.View;
import com.mycompany.app.dialog.a;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefEditor;
import com.mycompany.app.pref.PrefTts;
import com.mycompany.app.pref.PrefZtri;
import com.mycompany.app.view.MyProgressDrawable;
import com.mycompany.app.wview.WebFltView;
import java.util.ArrayList;
import kotlin.KotlinVersion;

/* loaded from: classes3.dex */
public class WebTtsView extends View {
    public Paint A;
    public ValueAnimator B;
    public ValueAnimator C;
    public boolean D;
    public boolean E;
    public int F;
    public int G;
    public int H;
    public int I;
    public final int J;
    public final int K;
    public int L;
    public int M;
    public int N;
    public int O;
    public boolean P;
    public boolean Q;
    public int R;
    public int S;
    public Rect T;
    public ArrayList U;
    public float V;
    public boolean W;
    public final Runnable a0;
    public float b0;

    /* renamed from: c, reason: collision with root package name */
    public boolean f20895c;
    public boolean c0;
    public final Runnable d0;
    public float e0;
    public Context f;
    public boolean f0;
    public WebFltView.FltViewListener g;
    public final Runnable g0;
    public final int h;
    public float h0;
    public int i;
    public boolean i0;
    public int j;
    public final Runnable j0;
    public Paint k;
    public final int l;
    public int m;
    public int n;
    public Paint o;
    public ValueAnimator p;
    public ValueAnimator q;
    public float r;
    public int s;
    public Paint t;
    public final float u;
    public final float v;
    public boolean w;
    public int x;
    public MyProgressDrawable y;
    public RectF z;

    /* renamed from: com.mycompany.app.wview.WebTtsView$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v4, types: [android.view.View$OnClickListener, java.lang.Object] */
    public WebTtsView(Context context) {
        super(context);
        this.a0 = new Runnable() { // from class: com.mycompany.app.wview.WebTtsView.5
            @Override // java.lang.Runnable
            public final void run() {
                WebTtsView webTtsView = WebTtsView.this;
                webTtsView.W = false;
                if (webTtsView.p != null) {
                    webTtsView.setValPreScaleUp(webTtsView.V);
                }
            }
        };
        this.d0 = new Runnable() { // from class: com.mycompany.app.wview.WebTtsView.9
            @Override // java.lang.Runnable
            public final void run() {
                WebTtsView webTtsView = WebTtsView.this;
                webTtsView.c0 = false;
                if (webTtsView.q != null) {
                    webTtsView.setValPreScaleDn(webTtsView.b0);
                }
            }
        };
        this.g0 = new Runnable() { // from class: com.mycompany.app.wview.WebTtsView.13
            @Override // java.lang.Runnable
            public final void run() {
                WebTtsView webTtsView = WebTtsView.this;
                webTtsView.f0 = false;
                if (webTtsView.B != null) {
                    webTtsView.setValAnimShow(webTtsView.e0);
                }
            }
        };
        this.j0 = new Runnable() { // from class: com.mycompany.app.wview.WebTtsView.17
            @Override // java.lang.Runnable
            public final void run() {
                WebTtsView webTtsView = WebTtsView.this;
                webTtsView.i0 = false;
                if (webTtsView.C != null) {
                    webTtsView.setValAnimHide(webTtsView.h0);
                }
            }
        };
        this.f20895c = true;
        this.f = context;
        int i = MainApp.g1;
        this.J = i;
        this.K = i;
        this.h = MainApp.j1;
        this.l = MainApp.k1;
        float f = i / 2;
        this.u = f;
        this.v = f;
        setOnClickListener(new Object());
        setOnLongClickListener(new View.OnLongClickListener() { // from class: com.mycompany.app.wview.WebTtsView.2
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                WebTtsView webTtsView = WebTtsView.this;
                if (!webTtsView.f20895c || !webTtsView.E || !webTtsView.P || webTtsView.Q) {
                    return false;
                }
                if (PrefZtri.t0) {
                    webTtsView.Q = true;
                    webTtsView.R = webTtsView.F;
                    webTtsView.S = webTtsView.G;
                }
                webTtsView.g();
                webTtsView.n(false);
                WebFltView.FltViewListener fltViewListener = webTtsView.g;
                if (fltViewListener != null) {
                    fltViewListener.c(webTtsView);
                }
                return true;
            }
        });
        if (Build.VERSION.SDK_INT >= 29) {
            this.T = new Rect();
            ArrayList arrayList = new ArrayList();
            this.U = arrayList;
            arrayList.add(this.T);
        }
    }

    private void setLoad(boolean z) {
        this.w = z;
        if (z) {
            if (this.y == null) {
                MyProgressDrawable myProgressDrawable = new MyProgressDrawable(this, MainUtil.G(this.f, 2.0f), -1);
                this.y = myProgressDrawable;
                if (PrefEditor.p > 0.9d && MainApp.L1) {
                    this.x = 176;
                    myProgressDrawable.c(176);
                } else {
                    this.x = KotlinVersion.MAX_COMPONENT_VALUE;
                }
                int i = MainApp.g1;
                int i2 = this.l;
                int i3 = (i - i2) / 2;
                int i4 = i2 + i3;
                this.y.d(i3, i3, i4, i4);
            }
            this.y.f();
        } else {
            if (this.z == null) {
                int i5 = MainApp.E1;
                int i6 = (MainApp.g1 - i5) / 2;
                int i7 = i5 + i6;
                float f = i6;
                float f2 = i7;
                this.z = new RectF(f, f, f2, f2);
            }
            if (this.A == null) {
                Paint paint = new Paint();
                this.A = paint;
                paint.setAntiAlias(true);
                this.A.setStyle(Paint.Style.FILL);
                this.A.setColor(-1);
            }
            MyProgressDrawable myProgressDrawable2 = this.y;
            if (myProgressDrawable2 != null) {
                myProgressDrawable2.f = false;
            }
        }
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setOnlyVisibility(int i) {
        WebFltView.FltViewListener fltViewListener;
        super.setVisibility(i);
        if (i != 0 && (fltViewListener = this.g) != null) {
            fltViewListener.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValAnimHide(float f) {
        setAlpha(f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValAnimShow(float f) {
        setAlpha(f);
        if (getVisibility() != 0) {
            setOnlyVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValPreScaleDn(float f) {
        if (this.o == null) {
            return;
        }
        this.r = f;
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValPreScaleUp(float f) {
        if (this.o == null) {
            return;
        }
        this.r = f;
        invalidate();
    }

    public final void f() {
        ValueAnimator valueAnimator = this.p;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.p = null;
        }
        ValueAnimator valueAnimator2 = this.q;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
            this.q = null;
        }
        MyProgressDrawable myProgressDrawable = this.y;
        if (myProgressDrawable != null) {
            myProgressDrawable.b();
            this.y = null;
        }
        ValueAnimator valueAnimator3 = this.B;
        if (valueAnimator3 != null) {
            valueAnimator3.cancel();
            this.B = null;
        }
        ValueAnimator valueAnimator4 = this.C;
        if (valueAnimator4 != null) {
            valueAnimator4.cancel();
            this.C = null;
        }
    }

    public final void g() {
        if (this.f20895c && this.P) {
            this.P = false;
            if (this.o != null && this.q == null) {
                float f = this.r;
                if (f > 0.8f) {
                    this.b0 = f;
                    this.c0 = false;
                    ValueAnimator ofFloat = ValueAnimator.ofFloat(f, 0.8f);
                    this.q = ofFloat;
                    ofFloat.setDuration(200L);
                    a.r(this.q);
                    this.q.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.wview.WebTtsView.7
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                            WebTtsView webTtsView = WebTtsView.this;
                            if (webTtsView.o != null) {
                                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                                if (webTtsView.q != null) {
                                    webTtsView.b0 = floatValue;
                                    if (webTtsView.c0) {
                                        return;
                                    }
                                    webTtsView.c0 = true;
                                    MainApp.N(webTtsView.f, webTtsView.d0);
                                }
                            }
                        }
                    });
                    this.q.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.wview.WebTtsView.8
                        @Override // android.animation.Animator.AnimatorListener
                        public final void onAnimationCancel(Animator animator) {
                            WebTtsView webTtsView = WebTtsView.this;
                            if (webTtsView.q == null) {
                                return;
                            }
                            webTtsView.q = null;
                            webTtsView.invalidate();
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public final void onAnimationEnd(Animator animator) {
                            final WebTtsView webTtsView = WebTtsView.this;
                            if (webTtsView.q == null) {
                                return;
                            }
                            MainApp.N(webTtsView.f, new Runnable() { // from class: com.mycompany.app.wview.WebTtsView.10
                                @Override // java.lang.Runnable
                                public final void run() {
                                    WebTtsView webTtsView2 = WebTtsView.this;
                                    if (webTtsView2.q == null) {
                                        return;
                                    }
                                    webTtsView2.q = null;
                                    webTtsView2.setValPreScaleDn(0.8f);
                                }
                            });
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public final void onAnimationRepeat(Animator animator) {
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public final void onAnimationStart(Animator animator) {
                        }
                    });
                    ValueAnimator valueAnimator = this.p;
                    if (valueAnimator != null) {
                        valueAnimator.cancel();
                    }
                    this.q.start();
                }
            }
        }
    }

    public final void h() {
        boolean z;
        boolean z2 = true;
        if (!this.E && !this.P && !this.Q) {
            z = false;
        } else {
            this.E = false;
            this.P = false;
            this.Q = false;
            z = true;
        }
        ValueAnimator valueAnimator = this.p;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.p = null;
            z = true;
        }
        ValueAnimator valueAnimator2 = this.q;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
            this.q = null;
        } else {
            z2 = z;
        }
        if (z2) {
            invalidate();
        }
        if (this.D) {
            this.D = false;
            i();
        }
    }

    public final void i() {
        if (this.C != null || getVisibility() != 0) {
            return;
        }
        if (!this.E && !this.P && !this.Q) {
            ValueAnimator valueAnimator = this.B;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.B = null;
            }
            float alpha = getAlpha();
            if (alpha <= 0.0f) {
                setOnlyVisibility(8);
                return;
            }
            WebFltView.FltViewListener fltViewListener = this.g;
            if (fltViewListener != null) {
                fltViewListener.b();
            }
            this.h0 = alpha;
            this.i0 = false;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(alpha, 0.0f);
            this.C = ofFloat;
            ofFloat.setDuration(alpha * 400.0f);
            this.C.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.wview.WebTtsView.15
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    WebTtsView webTtsView = WebTtsView.this;
                    if (webTtsView.C != null) {
                        float floatValue = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                        if (webTtsView.C != null) {
                            webTtsView.h0 = floatValue;
                            if (webTtsView.i0) {
                                return;
                            }
                            webTtsView.i0 = true;
                            MainApp.N(webTtsView.f, webTtsView.j0);
                        }
                    }
                }
            });
            this.C.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.wview.WebTtsView.16
                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationCancel(Animator animator) {
                    WebTtsView webTtsView = WebTtsView.this;
                    if (webTtsView.C == null) {
                        return;
                    }
                    webTtsView.C = null;
                    webTtsView.invalidate();
                }

                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    final WebTtsView webTtsView = WebTtsView.this;
                    if (webTtsView.C == null) {
                        return;
                    }
                    MainApp.N(webTtsView.f, new Runnable() { // from class: com.mycompany.app.wview.WebTtsView.18
                        @Override // java.lang.Runnable
                        public final void run() {
                            WebTtsView webTtsView2 = WebTtsView.this;
                            if (webTtsView2.C == null) {
                                return;
                            }
                            webTtsView2.C = null;
                            webTtsView2.setOnlyVisibility(8);
                        }
                    });
                }

                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationRepeat(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationStart(Animator animator) {
                }
            });
            this.C.start();
            return;
        }
        this.D = true;
    }

    @Override // android.view.View
    public final void invalidate() {
        if (!this.f20895c) {
            return;
        }
        super.invalidate();
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:41:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void j() {
        /*
            r8 = this;
            int r0 = com.mycompany.app.pref.PrefEditor.q
            float r1 = com.mycompany.app.pref.PrefEditor.p
            double r1 = (double) r1
            r3 = 4606281698874543309(0x3feccccccccccccd, double:0.9)
            int r1 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            r2 = 1
            r3 = 0
            if (r1 <= 0) goto L12
            r1 = r2
            goto L13
        L12:
            r1 = r3
        L13:
            if (r1 == 0) goto L1b
            boolean r4 = com.mycompany.app.main.MainApp.L1
            if (r4 == 0) goto L1b
            r4 = r2
            goto L1c
        L1b:
            r4 = r3
        L1c:
            int r5 = r8.i
            r6 = 0
            if (r5 == r0) goto L4a
            r8.i = r0
            if (r0 == 0) goto L46
            android.graphics.Paint r5 = new android.graphics.Paint
            r5.<init>()
            r8.k = r5
            r5.setAntiAlias(r2)
            android.graphics.Paint r5 = r8.k
            android.graphics.Paint$Style r7 = android.graphics.Paint.Style.FILL
            r5.setStyle(r7)
            android.graphics.Paint r5 = r8.k
            int r7 = r8.i
            r5.setColor(r7)
            android.graphics.Paint r5 = r8.k
            int r5 = r5.getAlpha()
            r8.j = r5
            goto L48
        L46:
            r8.k = r6
        L48:
            r5 = r2
            goto L4b
        L4a:
            r5 = r3
        L4b:
            int r7 = r8.m
            if (r7 == r0) goto L77
            r8.m = r0
            if (r0 == 0) goto L74
            android.graphics.Paint r0 = new android.graphics.Paint
            r0.<init>()
            r8.o = r0
            r0.setAntiAlias(r2)
            android.graphics.Paint r0 = r8.o
            android.graphics.Paint$Style r5 = android.graphics.Paint.Style.FILL
            r0.setStyle(r5)
            android.graphics.Paint r0 = r8.o
            int r5 = r8.m
            r0.setColor(r5)
            android.graphics.Paint r0 = r8.o
            int r0 = r0.getAlpha()
            r8.n = r0
            goto L76
        L74:
            r8.o = r6
        L76:
            r5 = r2
        L77:
            if (r1 == 0) goto L7c
            r3 = -1066044043(0xffffffffc0757575, float:-3.835294)
        L7c:
            int r0 = r8.s
            if (r0 == r3) goto La8
            r8.s = r3
            if (r3 == 0) goto La5
            android.graphics.Paint r0 = new android.graphics.Paint
            r0.<init>()
            r8.t = r0
            r0.setAntiAlias(r2)
            android.graphics.Paint r0 = r8.t
            android.graphics.Paint$Style r1 = android.graphics.Paint.Style.STROKE
            r0.setStyle(r1)
            android.graphics.Paint r0 = r8.t
            int r1 = com.mycompany.app.main.MainApp.n1
            float r1 = (float) r1
            r0.setStrokeWidth(r1)
            android.graphics.Paint r0 = r8.t
            int r1 = r8.s
            r0.setColor(r1)
            goto La7
        La5:
            r8.t = r6
        La7:
            r5 = r2
        La8:
            com.mycompany.app.view.MyProgressDrawable r0 = r8.y
            if (r0 == 0) goto Lbd
            if (r4 == 0) goto Lb1
            r1 = 176(0xb0, float:2.47E-43)
            goto Lb3
        Lb1:
            r1 = 255(0xff, float:3.57E-43)
        Lb3:
            int r3 = r8.x
            if (r3 == r1) goto Lbd
            r8.x = r1
            r0.c(r1)
            goto Lbe
        Lbd:
            r2 = r5
        Lbe:
            if (r2 == 0) goto Lc3
            r8.invalidate()
        Lc3:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.wview.WebTtsView.j():void");
    }

    public final void k() {
        int i = this.R;
        if ((i != -1234 || this.S != -1234) && MainUtil.I0(this.F, i, this.G, this.S) >= MainApp.G1) {
            this.R = -1234;
            this.S = -1234;
            WebFltView.FltViewListener fltViewListener = this.g;
            if (fltViewListener != null) {
                fltViewListener.b();
            }
        }
    }

    public final void l(int i, int i2) {
        if (!this.f20895c) {
            return;
        }
        int i3 = this.J;
        int i4 = i + i3;
        int i5 = this.N;
        if (i4 > i5) {
            i = i5 - i3;
        }
        int i6 = this.K;
        int i7 = i2 + i6;
        int i8 = this.O;
        if (i7 > i8) {
            i2 = i8 - i6;
        }
        if (i < 0) {
            i = 0;
        }
        if (i2 < 0) {
            i2 = 0;
        }
        PrefTts.o = i;
        PrefTts.p = i5 - (i3 + i);
        PrefTts.q = i2;
        PrefTts.r = i8 - (i6 + i2);
        setX(i + this.L);
        setY(i2 + this.M);
    }

    @Override // android.view.View
    public final void layout(int i, int i2, int i3, int i4) {
        super.layout(i, i2, i3, i4);
        m();
    }

    public final void m() {
        Object parent;
        int a2;
        int a3;
        if (this.f20895c && (parent = getParent()) != null && (parent instanceof View)) {
            View view = (View) parent;
            int paddingLeft = view.getPaddingLeft();
            int paddingTop = view.getPaddingTop();
            int width = (view.getWidth() - paddingLeft) - view.getPaddingRight();
            int height = (view.getHeight() - paddingTop) - view.getPaddingBottom();
            if (paddingLeft != this.L || paddingTop != this.M || width != this.N || height != this.O) {
                this.L = paddingLeft;
                this.M = paddingTop;
                this.N = width;
                this.O = height;
                float f = PrefTts.o;
                float f2 = PrefTts.p;
                float f3 = PrefTts.q;
                float f4 = PrefTts.r;
                if (f < 0.0f && f2 < 0.0f && f3 < 0.0f && f4 < 0.0f) {
                    a2 = (width - this.J) / 2;
                    a3 = (height - this.K) / 2;
                    if (width < height) {
                        a3 += MainApp.i1;
                    }
                } else {
                    a2 = a.a(f, f2, width - this.J, f);
                    float f5 = this.O - this.K;
                    float f6 = PrefTts.q;
                    a3 = a.a(f6, PrefTts.r, f5, f6);
                }
                l(a2, a3);
                if (Float.compare(f, PrefTts.o) != 0 || Float.compare(f2, PrefTts.p) != 0 || Float.compare(f3, PrefTts.q) != 0 || Float.compare(f4, PrefTts.r) != 0) {
                    PrefTts.t(this.f);
                }
            }
        }
    }

    public final void n(boolean z) {
        float f;
        this.D = false;
        setLoad(z);
        if (this.B == null) {
            if (getVisibility() != 0 || this.C != null) {
                ValueAnimator valueAnimator = this.C;
                if (valueAnimator != null) {
                    valueAnimator.cancel();
                    this.C = null;
                }
                if (getVisibility() == 0) {
                    f = getAlpha();
                    if (f >= 1.0f) {
                        return;
                    }
                } else {
                    f = 0.0f;
                }
                this.e0 = f;
                this.f0 = false;
                ValueAnimator ofFloat = ValueAnimator.ofFloat(f, 1.0f);
                this.B = ofFloat;
                ofFloat.setDuration((1.0f - f) * 400.0f);
                this.B.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.wview.WebTtsView.11
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        WebTtsView webTtsView = WebTtsView.this;
                        if (webTtsView.B != null) {
                            float floatValue = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                            if (webTtsView.B != null) {
                                webTtsView.e0 = floatValue;
                                if (webTtsView.f0) {
                                    return;
                                }
                                webTtsView.f0 = true;
                                MainApp.N(webTtsView.f, webTtsView.g0);
                            }
                        }
                    }
                });
                this.B.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.wview.WebTtsView.12
                    @Override // android.animation.Animator.AnimatorListener
                    public final void onAnimationCancel(Animator animator) {
                        WebTtsView webTtsView = WebTtsView.this;
                        if (webTtsView.B == null) {
                            return;
                        }
                        webTtsView.B = null;
                        webTtsView.invalidate();
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator) {
                        final WebTtsView webTtsView = WebTtsView.this;
                        if (webTtsView.B == null) {
                            return;
                        }
                        MainApp.N(webTtsView.f, new Runnable() { // from class: com.mycompany.app.wview.WebTtsView.14
                            @Override // java.lang.Runnable
                            public final void run() {
                                WebTtsView webTtsView2 = WebTtsView.this;
                                if (webTtsView2.B == null) {
                                    return;
                                }
                                webTtsView2.B = null;
                                webTtsView2.setValAnimShow(1.0f);
                            }
                        });
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public final void onAnimationRepeat(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public final void onAnimationStart(Animator animator) {
                    }
                });
                this.B.start();
            }
        }
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        m();
    }

    @Override // android.view.View
    public final void onDetachedFromWindow() {
        f();
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        boolean z;
        Paint paint;
        int i;
        Paint paint2;
        if (this.f20895c) {
            boolean z2 = true;
            if (!this.E && this.p == null && this.q == null) {
                z = false;
            } else {
                z = true;
            }
            Paint paint3 = this.k;
            if (paint3 != null) {
                if (z) {
                    int round = Math.round((1.0f - this.r) * this.j * 5.0f);
                    int i2 = this.j;
                    if (round > i2) {
                        round = i2;
                    }
                    this.k.setAlpha(round);
                } else {
                    paint3.setAlpha(this.j);
                }
                canvas.drawCircle(this.u, this.v, this.h, this.k);
            }
            if (z && (paint2 = this.o) != null) {
                paint2.setAlpha(Math.round((this.r - 0.8f) * this.n * 5.0f));
                canvas.save();
                float f = this.r;
                canvas.scale(f, f, this.u, this.v);
                canvas.drawCircle(this.u, this.v, this.l, this.o);
            } else {
                z2 = false;
            }
            Paint paint4 = this.t;
            if (paint4 != null) {
                float f2 = MainApp.n1 / 2.0f;
                if (z2) {
                    i = this.l;
                } else {
                    i = this.h;
                }
                canvas.drawCircle(this.u, this.v, i - f2, paint4);
            }
            if (z2) {
                canvas.restore();
            }
            if (this.w) {
                MyProgressDrawable myProgressDrawable = this.y;
                if (myProgressDrawable != null) {
                    myProgressDrawable.a(canvas);
                    return;
                }
                return;
            }
            RectF rectF = this.z;
            if (rectF != null && (paint = this.A) != null) {
                canvas.drawRect(rectF, paint);
            }
        }
    }

    @Override // android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        Rect rect;
        super.onLayout(z, i, i2, i3, i4);
        m();
        if (z && Build.VERSION.SDK_INT >= 29 && (rect = this.T) != null && this.U != null) {
            try {
                rect.set(0, 0, i3 - i, i4 - i2);
                setSystemGestureExclusionRects(this.U);
            } catch (Exception unused) {
            }
        }
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        m();
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0017, code lost:
    
        if (r0 != 3) goto L67;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouchEvent(android.view.MotionEvent r7) {
        /*
            Method dump skipped, instructions count: 428
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.wview.WebTtsView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        if (!z) {
            h();
        }
    }

    public void setTtsListener(WebFltView.FltViewListener fltViewListener) {
        this.g = fltViewListener;
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        if (this.w) {
            this.w = false;
            MyProgressDrawable myProgressDrawable = this.y;
            if (myProgressDrawable != null) {
                myProgressDrawable.f = false;
            }
        }
        ValueAnimator valueAnimator = this.B;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.B = null;
        }
        ValueAnimator valueAnimator2 = this.C;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
            this.C = null;
        }
        setAlpha(1.0f);
        super.setVisibility(i);
        if (i != 0) {
            h();
            WebFltView.FltViewListener fltViewListener = this.g;
            if (fltViewListener != null) {
                fltViewListener.b();
            }
        }
    }
}
