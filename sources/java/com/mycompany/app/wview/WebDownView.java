package com.mycompany.app.wview;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.View;
import com.mycompany.app.dialog.a;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefEditor;
import com.mycompany.app.pref.PrefZtri;
import com.mycompany.app.wview.WebFltView;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import kotlin.KotlinVersion;

/* loaded from: classes3.dex */
public class WebDownView extends View {
    public Drawable A;
    public Paint B;
    public float C;
    public float D;
    public boolean E;
    public ValueAnimator F;
    public ValueAnimator G;
    public boolean H;
    public int I;
    public int J;
    public int K;
    public int L;
    public final int M;
    public final int N;
    public int O;
    public int P;
    public int Q;
    public int R;
    public boolean S;
    public boolean T;
    public int U;
    public int V;
    public EventHandler W;
    public boolean a0;
    public boolean b0;

    /* renamed from: c, reason: collision with root package name */
    public boolean f20841c;
    public Rect c0;
    public ArrayList d0;
    public float e0;
    public Context f;
    public boolean f0;
    public final boolean g;
    public final Runnable g0;
    public WebFltView.FltViewListener h;
    public float h0;
    public final int i;
    public boolean i0;
    public int j;
    public final Runnable j0;
    public int k;
    public float k0;
    public Paint l;
    public boolean l0;
    public final int m;
    public final Runnable m0;
    public int n;
    public float n0;
    public int o;
    public boolean o0;
    public Paint p;
    public final Runnable p0;
    public ValueAnimator q;
    public ValueAnimator r;
    public float s;
    public int t;
    public Paint u;
    public final float v;
    public final float w;
    public int x;
    public boolean y;
    public int z;

    /* renamed from: com.mycompany.app.wview.WebDownView$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* renamed from: com.mycompany.app.wview.WebDownView$12, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass12 implements ValueAnimator.AnimatorUpdateListener {
        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
            throw null;
        }
    }

    /* renamed from: com.mycompany.app.wview.WebDownView$13, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass13 implements Animator.AnimatorListener {
        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
            throw null;
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            throw null;
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator) {
        }
    }

    /* renamed from: com.mycompany.app.wview.WebDownView$15, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass15 implements Runnable {
        public AnonymousClass15() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            WebDownView webDownView = WebDownView.this;
            if (webDownView.F == null) {
                return;
            }
            webDownView.F = null;
            webDownView.setValAnimShow(1.0f);
            webDownView.k();
        }
    }

    /* loaded from: classes3.dex */
    public static class EventHandler extends Handler {

        /* renamed from: a, reason: collision with root package name */
        public final WeakReference f20860a;

        public EventHandler(WebDownView webDownView) {
            super(Looper.getMainLooper());
            this.f20860a = new WeakReference(webDownView);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            WebDownView webDownView = (WebDownView) this.f20860a.get();
            if (webDownView == null || message.what != 0 || webDownView.a0 || !webDownView.f20841c || webDownView.H) {
                return;
            }
            webDownView.i(true);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v7, types: [android.view.View$OnClickListener, java.lang.Object] */
    public WebDownView(Context context, boolean z) {
        super(context);
        this.g0 = new Runnable() { // from class: com.mycompany.app.wview.WebDownView.5
            @Override // java.lang.Runnable
            public final void run() {
                WebDownView webDownView = WebDownView.this;
                webDownView.f0 = false;
                if (webDownView.q != null) {
                    webDownView.setValPreScaleUp(webDownView.e0);
                }
            }
        };
        this.j0 = new Runnable() { // from class: com.mycompany.app.wview.WebDownView.9
            @Override // java.lang.Runnable
            public final void run() {
                WebDownView webDownView = WebDownView.this;
                webDownView.i0 = false;
                if (webDownView.r != null) {
                    webDownView.setValPreScaleDn(webDownView.h0);
                }
            }
        };
        this.m0 = new Runnable() { // from class: com.mycompany.app.wview.WebDownView.14
            @Override // java.lang.Runnable
            public final void run() {
                WebDownView webDownView = WebDownView.this;
                webDownView.l0 = false;
                if (webDownView.F != null) {
                    webDownView.setValAnimShow(webDownView.k0);
                }
            }
        };
        this.p0 = new Runnable() { // from class: com.mycompany.app.wview.WebDownView.18
            @Override // java.lang.Runnable
            public final void run() {
                WebDownView webDownView = WebDownView.this;
                webDownView.o0 = false;
                if (webDownView.G != null) {
                    webDownView.setValAnimHide(webDownView.n0);
                }
            }
        };
        this.g = z;
        this.f20841c = true;
        this.f = context;
        int i = MainApp.g1;
        this.M = i;
        this.N = i;
        this.i = MainApp.j1;
        this.m = MainApp.k1;
        float f = i / 2;
        this.v = f;
        this.w = f;
        if (z) {
            this.x = MainUtil.t4(0, true);
        } else {
            this.x = MainUtil.d4(0, true);
        }
        setDrawIcon(this.x);
        setOnClickListener(new Object());
        setOnLongClickListener(new View.OnLongClickListener() { // from class: com.mycompany.app.wview.WebDownView.2
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                WebDownView webDownView = WebDownView.this;
                if (webDownView.f20841c && webDownView.H && webDownView.S && !webDownView.T) {
                    if (PrefZtri.t0) {
                        webDownView.T = true;
                        webDownView.U = webDownView.I;
                        webDownView.V = webDownView.J;
                    }
                    webDownView.g();
                    webDownView.r();
                    WebFltView.FltViewListener fltViewListener = webDownView.h;
                    if (fltViewListener != null) {
                        fltViewListener.c(webDownView);
                    }
                    return true;
                }
                return false;
            }
        });
        if (Build.VERSION.SDK_INT >= 29) {
            this.c0 = new Rect();
            ArrayList arrayList = new ArrayList();
            this.d0 = arrayList;
            arrayList.add(this.c0);
        }
    }

    private void setDrawIcon(int i) {
        float f;
        if (i != 0) {
            Drawable S = MainUtil.S(this.f, i);
            this.A = S;
            if (S == null) {
                return;
            }
            if (this.g) {
                f = PrefEditor.x;
            } else {
                f = PrefEditor.l;
            }
            if (f > 0.9d && MainApp.L1) {
                this.z = 176;
                S.setAlpha(176);
            } else {
                this.z = KotlinVersion.MAX_COMPONENT_VALUE;
            }
            int i2 = MainApp.g1;
            int i3 = this.m;
            int i4 = (i2 - i3) / 2;
            int i5 = i3 + i4;
            this.A.setBounds(i4, i4, i5, i5);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setOnlyVisibility(int i) {
        WebFltView.FltViewListener fltViewListener;
        super.setVisibility(i);
        if (i != 0 && (fltViewListener = this.h) != null) {
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
        if (this.p == null) {
            return;
        }
        this.s = f;
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValPreScaleUp(float f) {
        if (this.p == null) {
            return;
        }
        this.s = f;
        invalidate();
    }

    public final void f() {
        ValueAnimator valueAnimator = this.q;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.q = null;
        }
        ValueAnimator valueAnimator2 = this.r;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
            this.r = null;
        }
        ValueAnimator valueAnimator3 = this.F;
        if (valueAnimator3 != null) {
            valueAnimator3.cancel();
            this.F = null;
        }
        ValueAnimator valueAnimator4 = this.G;
        if (valueAnimator4 != null) {
            valueAnimator4.cancel();
            this.G = null;
        }
    }

    public final void g() {
        if (this.f20841c && this.S) {
            this.S = false;
            t();
        }
    }

    public final void h() {
        boolean z = true;
        boolean z2 = false;
        if (this.H || this.S || this.T) {
            this.H = false;
            this.S = false;
            this.T = false;
            z2 = true;
        }
        ValueAnimator valueAnimator = this.q;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.q = null;
            z2 = true;
        }
        ValueAnimator valueAnimator2 = this.r;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
            this.r = null;
        } else {
            z = z2;
        }
        if (z) {
            invalidate();
            k();
        }
    }

    public final void i(boolean z) {
        this.a0 = false;
        EventHandler eventHandler = this.W;
        if (eventHandler != null) {
            eventHandler.removeMessages(0);
        }
        if (z) {
            if (this.G == null) {
                ValueAnimator valueAnimator = this.F;
                if (valueAnimator != null) {
                    valueAnimator.cancel();
                    this.F = null;
                }
                if (getVisibility() != 0) {
                    return;
                }
                float alpha = getAlpha();
                if (alpha <= 0.0f) {
                    setOnlyVisibility(8);
                    return;
                }
                WebFltView.FltViewListener fltViewListener = this.h;
                if (fltViewListener != null) {
                    fltViewListener.b();
                }
                this.n0 = alpha;
                this.o0 = false;
                ValueAnimator ofFloat = ValueAnimator.ofFloat(alpha, 0.0f);
                this.G = ofFloat;
                ofFloat.setDuration(alpha * 400.0f);
                this.G.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.wview.WebDownView.16
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        WebDownView webDownView = WebDownView.this;
                        if (webDownView.G != null) {
                            float floatValue = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                            if (webDownView.G != null) {
                                webDownView.n0 = floatValue;
                                if (webDownView.o0) {
                                    return;
                                }
                                webDownView.o0 = true;
                                MainApp.N(webDownView.f, webDownView.p0);
                            }
                        }
                    }
                });
                this.G.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.wview.WebDownView.17
                    @Override // android.animation.Animator.AnimatorListener
                    public final void onAnimationCancel(Animator animator) {
                        WebDownView webDownView = WebDownView.this;
                        if (webDownView.G == null) {
                            return;
                        }
                        webDownView.G = null;
                        webDownView.invalidate();
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator) {
                        final WebDownView webDownView = WebDownView.this;
                        if (webDownView.G == null) {
                            return;
                        }
                        MainApp.N(webDownView.f, new Runnable() { // from class: com.mycompany.app.wview.WebDownView.19
                            @Override // java.lang.Runnable
                            public final void run() {
                                WebDownView webDownView2 = WebDownView.this;
                                if (webDownView2.G == null) {
                                    return;
                                }
                                webDownView2.G = null;
                                webDownView2.setOnlyVisibility(8);
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
                this.G.start();
                return;
            }
            return;
        }
        setVisibility(8);
    }

    @Override // android.view.View
    public final void invalidate() {
        if (!this.f20841c) {
            return;
        }
        super.invalidate();
    }

    public final void j() {
        this.f20841c = false;
        f();
        EventHandler eventHandler = this.W;
        if (eventHandler != null) {
            eventHandler.removeMessages(0);
            this.W = null;
        }
        this.f = null;
        this.h = null;
        this.l = null;
        this.p = null;
        this.u = null;
        this.A = null;
        this.B = null;
        this.c0 = null;
        this.d0 = null;
    }

    public final void k() {
        EventHandler eventHandler;
        if (this.a0) {
            EventHandler eventHandler2 = this.W;
            if (eventHandler2 != null) {
                eventHandler2.removeMessages(0);
                this.W = null;
                return;
            }
            return;
        }
        EventHandler eventHandler3 = this.W;
        if (eventHandler3 != null) {
            eventHandler3.removeMessages(0);
        } else if (!this.H) {
            this.W = new EventHandler(this);
        }
        if (!this.H && (eventHandler = this.W) != null) {
            eventHandler.sendEmptyMessageDelayed(0, 2000L);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:44:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void l() {
        /*
            Method dump skipped, instructions count: 205
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.wview.WebDownView.l():void");
    }

    @Override // android.view.View
    public final void layout(int i, int i2, int i3, int i4) {
        super.layout(i, i2, i3, i4);
        q();
    }

    public final void m() {
        int d4;
        if (this.g) {
            d4 = MainUtil.t4(0, true);
        } else {
            d4 = MainUtil.d4(0, true);
        }
        if (this.x == d4) {
            return;
        }
        this.x = d4;
        setDrawIcon(d4);
        invalidate();
    }

    public final void n() {
        int i = this.U;
        if ((i != -1234 || this.V != -1234) && MainUtil.I0(this.I, i, this.J, this.V) >= MainApp.G1) {
            this.U = -1234;
            this.V = -1234;
            WebFltView.FltViewListener fltViewListener = this.h;
            if (fltViewListener != null) {
                fltViewListener.b();
            }
        }
    }

    public final void o(int i, int i2) {
        if (!this.f20841c) {
            return;
        }
        int i3 = this.M;
        int i4 = i + i3;
        int i5 = this.Q;
        if (i4 > i5) {
            i = i5 - i3;
        }
        int i6 = this.N;
        int i7 = i2 + i6;
        int i8 = this.R;
        if (i7 > i8) {
            i2 = i8 - i6;
        }
        if (i < 0) {
            i = 0;
        }
        if (i2 < 0) {
            i2 = 0;
        }
        if (this.g) {
            PrefZtri.u = i;
            PrefZtri.v = i5 - (i3 + i);
            PrefZtri.w = i2;
            PrefZtri.x = i8 - (i6 + i2);
        } else {
            PrefZtri.y = i;
            PrefZtri.z = i5 - (i3 + i);
            PrefZtri.A = i2;
            PrefZtri.B = i8 - (i6 + i2);
        }
        setX(i + this.O);
        setY(i2 + this.P);
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        q();
    }

    @Override // android.view.View
    public final void onDetachedFromWindow() {
        f();
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        boolean z;
        int i;
        Paint paint;
        if (this.f20841c) {
            boolean z2 = true;
            if (!this.H && this.q == null && this.r == null) {
                z = false;
            } else {
                z = true;
            }
            Paint paint2 = this.l;
            if (paint2 != null) {
                if (z) {
                    int round = Math.round((1.0f - this.s) * this.k * 5.0f);
                    int i2 = this.k;
                    if (round > i2) {
                        round = i2;
                    }
                    this.l.setAlpha(round);
                } else {
                    paint2.setAlpha(this.k);
                }
                canvas.drawCircle(this.v, this.w, this.i, this.l);
            }
            if (z && (paint = this.p) != null) {
                paint.setAlpha(Math.round((this.s - 0.8f) * this.o * 5.0f));
                canvas.save();
                float f = this.s;
                canvas.scale(f, f, this.v, this.w);
                canvas.drawCircle(this.v, this.w, this.m, this.p);
            } else {
                z2 = false;
            }
            Paint paint3 = this.u;
            if (paint3 != null) {
                float f2 = MainApp.n1 / 2.0f;
                if (z2) {
                    i = this.m;
                } else {
                    i = this.i;
                }
                canvas.drawCircle(this.v, this.w, i - f2, paint3);
            }
            if (z2) {
                canvas.restore();
            }
            Drawable drawable = this.A;
            if (drawable != null) {
                drawable.draw(canvas);
            }
            Paint paint4 = this.B;
            if (paint4 != null) {
                if (this.E) {
                    float f3 = this.D;
                    canvas.drawCircle(this.v + f3, this.w - f3, this.C, paint4);
                } else {
                    float f4 = this.D;
                    canvas.drawCircle(this.v - f4, this.w - f4, this.C, paint4);
                }
            }
        }
    }

    @Override // android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        Rect rect;
        super.onLayout(z, i, i2, i3, i4);
        q();
        if (z && Build.VERSION.SDK_INT >= 29 && (rect = this.c0) != null && this.d0 != null) {
            try {
                rect.set(0, 0, i3 - i, i4 - i2);
                setSystemGestureExclusionRects(this.d0);
            } catch (Exception unused) {
            }
        }
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        q();
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0019, code lost:
    
        if (r0 != 3) goto L63;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouchEvent(android.view.MotionEvent r7) {
        /*
            Method dump skipped, instructions count: 389
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.wview.WebDownView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public final void p(boolean z) {
        if (z) {
            if (this.B == null) {
                Paint paint = new Paint();
                this.B = paint;
                paint.setAntiAlias(true);
                this.B.setStyle(Paint.Style.FILL);
                this.B.setColor(-65536);
                Context context = getContext();
                this.E = MainUtil.O5(context);
                this.C = MainUtil.G(context, 3.0f);
                this.D = MainUtil.G(context, 11.0f);
                invalidate();
                return;
            }
            return;
        }
        if (this.B != null) {
            this.B = null;
            invalidate();
        }
    }

    public final void q() {
        Object parent;
        int a2;
        int a3;
        int a4;
        int a5;
        if (this.f20841c && (parent = getParent()) != null && (parent instanceof View)) {
            View view = (View) parent;
            int paddingLeft = view.getPaddingLeft();
            int paddingTop = view.getPaddingTop();
            int width = (view.getWidth() - paddingLeft) - view.getPaddingRight();
            int height = (view.getHeight() - paddingTop) - view.getPaddingBottom();
            if (paddingLeft != this.O || paddingTop != this.P || width != this.Q || height != this.R) {
                this.O = paddingLeft;
                this.P = paddingTop;
                this.Q = width;
                this.R = height;
                if (this.g) {
                    float f = PrefZtri.u;
                    float f2 = PrefZtri.v;
                    float f3 = PrefZtri.w;
                    float f4 = PrefZtri.x;
                    if (f < 0.0f && f2 < 0.0f && f3 < 0.0f && f4 < 0.0f) {
                        a4 = (width - this.M) - MainApp.F1;
                        a5 = Math.round(MainUtil.G(this.f, 320.0f));
                    } else {
                        a4 = a.a(f, f2, width - this.M, f);
                        float f5 = this.R - this.N;
                        float f6 = PrefZtri.w;
                        a5 = a.a(f6, PrefZtri.x, f5, f6);
                    }
                    o(a4, a5);
                    if (Float.compare(f, PrefZtri.u) != 0 || Float.compare(f2, PrefZtri.v) != 0 || Float.compare(f3, PrefZtri.w) != 0 || Float.compare(f4, PrefZtri.x) != 0) {
                        PrefZtri.u(this.f);
                        return;
                    }
                    return;
                }
                float f7 = PrefZtri.y;
                float f8 = PrefZtri.z;
                float f9 = PrefZtri.A;
                float f10 = PrefZtri.B;
                if (f7 < 0.0f && f8 < 0.0f && f9 < 0.0f && f10 < 0.0f) {
                    a2 = width - this.M;
                    a3 = (((height - this.N) - MainUtil.j0()) - MainApp.E1) - MainApp.G1;
                } else {
                    a2 = a.a(f7, f8, width - this.M, f7);
                    float f11 = this.R - this.N;
                    float f12 = PrefZtri.A;
                    a3 = a.a(f12, PrefZtri.B, f11, f12);
                }
                o(a2, a3);
                if (Float.compare(f7, PrefZtri.y) != 0 || Float.compare(f8, PrefZtri.z) != 0 || Float.compare(f9, PrefZtri.A) != 0 || Float.compare(f10, PrefZtri.B) != 0) {
                    PrefZtri.t(this.f);
                }
            }
        }
    }

    public final void r() {
        k();
        setVisibility(0);
    }

    public final void s() {
        if (this.b0) {
            if (this.y) {
                this.y = false;
                t();
                return;
            }
            return;
        }
        this.a0 = true;
        EventHandler eventHandler = this.W;
        if (eventHandler != null) {
            eventHandler.removeMessages(0);
        }
        setVisibility(0);
        if (this.y) {
            return;
        }
        this.y = true;
        u();
        postDelayed(new Runnable() { // from class: com.mycompany.app.wview.WebDownView.11
            @Override // java.lang.Runnable
            public final void run() {
                WebDownView webDownView = WebDownView.this;
                if (webDownView.b0) {
                    if (webDownView.y) {
                        webDownView.y = false;
                        webDownView.t();
                        return;
                    }
                    return;
                }
                webDownView.a0 = false;
                webDownView.k();
            }
        }, 2000L);
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        if (!z) {
            h();
        }
    }

    public void setHideBlocked(boolean z) {
        if (this.a0 != z) {
            this.a0 = z;
            this.b0 = z;
            if (z) {
                EventHandler eventHandler = this.W;
                if (eventHandler != null) {
                    eventHandler.removeMessages(0);
                }
                setVisibility(0);
                return;
            }
            if (this.G == null) {
                if (this.F != null || getVisibility() == 0) {
                    k();
                }
            }
        }
    }

    public void setListener(WebFltView.FltViewListener fltViewListener) {
        this.h = fltViewListener;
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        ValueAnimator valueAnimator = this.F;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.F = null;
        }
        ValueAnimator valueAnimator2 = this.G;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
            this.G = null;
        }
        setAlpha(1.0f);
        super.setVisibility(i);
        if (i != 0) {
            h();
            WebFltView.FltViewListener fltViewListener = this.h;
            if (fltViewListener != null) {
                fltViewListener.b();
            }
        }
    }

    public final void t() {
        if (this.p != null && this.r == null) {
            float f = this.s;
            if (f <= 0.8f) {
                return;
            }
            this.h0 = f;
            this.i0 = false;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(f, 0.8f);
            this.r = ofFloat;
            ofFloat.setDuration(200L);
            a.r(this.r);
            this.r.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.wview.WebDownView.7
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    WebDownView webDownView = WebDownView.this;
                    if (webDownView.p != null) {
                        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        if (webDownView.r != null) {
                            webDownView.h0 = floatValue;
                            if (webDownView.i0) {
                                return;
                            }
                            webDownView.i0 = true;
                            MainApp.N(webDownView.f, webDownView.j0);
                        }
                    }
                }
            });
            this.r.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.wview.WebDownView.8
                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationCancel(Animator animator) {
                    WebDownView webDownView = WebDownView.this;
                    if (webDownView.r == null) {
                        return;
                    }
                    webDownView.r = null;
                    webDownView.invalidate();
                }

                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    final WebDownView webDownView = WebDownView.this;
                    if (webDownView.r == null) {
                        return;
                    }
                    MainApp.N(webDownView.f, new Runnable() { // from class: com.mycompany.app.wview.WebDownView.10
                        @Override // java.lang.Runnable
                        public final void run() {
                            WebDownView webDownView2 = WebDownView.this;
                            if (webDownView2.r == null) {
                                return;
                            }
                            webDownView2.r = null;
                            webDownView2.setValPreScaleDn(0.8f);
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
            ValueAnimator valueAnimator = this.q;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            this.r.start();
        }
    }

    public final void u() {
        if (this.p == null || this.q != null) {
            return;
        }
        this.s = 0.8f;
        this.e0 = 0.8f;
        this.f0 = false;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.8f, 1.0f);
        this.q = ofFloat;
        ofFloat.setDuration(200L);
        a.v(this.q);
        this.q.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.wview.WebDownView.3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                WebDownView webDownView = WebDownView.this;
                if (webDownView.p != null) {
                    float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    if (webDownView.q != null) {
                        webDownView.e0 = floatValue;
                        if (webDownView.f0) {
                            return;
                        }
                        webDownView.f0 = true;
                        MainApp.N(webDownView.f, webDownView.g0);
                    }
                }
            }
        });
        this.q.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.wview.WebDownView.4
            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationCancel(Animator animator) {
                WebDownView webDownView = WebDownView.this;
                if (webDownView.q == null) {
                    return;
                }
                webDownView.q = null;
                webDownView.invalidate();
            }

            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                final WebDownView webDownView = WebDownView.this;
                if (webDownView.q == null) {
                    return;
                }
                MainApp.N(webDownView.f, new Runnable() { // from class: com.mycompany.app.wview.WebDownView.6
                    @Override // java.lang.Runnable
                    public final void run() {
                        WebDownView webDownView2 = WebDownView.this;
                        if (webDownView2.q != null) {
                            webDownView2.q = null;
                            webDownView2.setValPreScaleUp(1.0f);
                            if (webDownView2.y) {
                                webDownView2.y = false;
                                webDownView2.t();
                            }
                        }
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
        ValueAnimator valueAnimator = this.r;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        this.q.start();
    }
}
