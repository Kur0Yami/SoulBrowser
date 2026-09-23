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
import com.mycompany.app.pref.PrefFloat;
import com.mycompany.app.pref.PrefZtri;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyProgressDrawable;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import kotlin.KotlinVersion;

/* loaded from: classes3.dex */
public class WebFltView extends View {
    public boolean A;
    public int B;
    public MyProgressDrawable C;
    public int D;
    public Drawable E;
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
    public boolean f20861c;
    public boolean c0;
    public int d0;
    public int e0;
    public Context f;
    public Paint f0;
    public FltViewListener g;
    public float g0;
    public FltTouchListener h;
    public float h0;
    public final int i;
    public boolean i0;
    public final int j;
    public Rect j0;
    public int k;
    public ArrayList k0;
    public int l;
    public float l0;
    public Paint m;
    public boolean m0;
    public final int n;
    public final Runnable n0;
    public int o;
    public float o0;
    public int p;
    public boolean p0;
    public Paint q;
    public final Runnable q0;
    public ValueAnimator r;
    public float r0;
    public ValueAnimator s;
    public boolean s0;
    public float t;
    public final Runnable t0;
    public int u;
    public float u0;
    public Paint v;
    public boolean v0;
    public final float w;
    public final Runnable w0;
    public final float x;
    public int y;
    public int z;

    /* renamed from: com.mycompany.app.wview.WebFltView$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* loaded from: classes3.dex */
    public static class EventHandler extends Handler {

        /* renamed from: a, reason: collision with root package name */
        public final WeakReference f20881a;

        public EventHandler(WebFltView webFltView) {
            super(Looper.getMainLooper());
            this.f20881a = new WeakReference(webFltView);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            WebFltView webFltView = (WebFltView) this.f20881a.get();
            if (webFltView == null || message.what != 0 || webFltView.n() || !webFltView.f20861c || webFltView.H) {
                return;
            }
            webFltView.m(true);
        }
    }

    /* loaded from: classes3.dex */
    public interface FltTouchListener {
        void a(boolean z);
    }

    /* loaded from: classes3.dex */
    public interface FltViewListener {
        void a(View view, int i);

        void b();

        void c(View view);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v21, types: [android.view.View$OnClickListener, java.lang.Object] */
    public WebFltView(Context context, int i) {
        super(context);
        int k2;
        this.n0 = new Runnable() { // from class: com.mycompany.app.wview.WebFltView.5
            @Override // java.lang.Runnable
            public final void run() {
                WebFltView webFltView = WebFltView.this;
                webFltView.m0 = false;
                if (webFltView.r != null) {
                    webFltView.setValPreScaleUp(webFltView.l0);
                }
            }
        };
        this.q0 = new Runnable() { // from class: com.mycompany.app.wview.WebFltView.9
            @Override // java.lang.Runnable
            public final void run() {
                WebFltView webFltView = WebFltView.this;
                webFltView.p0 = false;
                if (webFltView.s != null) {
                    webFltView.setValPreScaleDn(webFltView.o0);
                }
            }
        };
        this.t0 = new Runnable() { // from class: com.mycompany.app.wview.WebFltView.13
            @Override // java.lang.Runnable
            public final void run() {
                WebFltView webFltView = WebFltView.this;
                webFltView.s0 = false;
                if (webFltView.F != null) {
                    webFltView.setValAnimShow(webFltView.r0);
                }
            }
        };
        this.w0 = new Runnable() { // from class: com.mycompany.app.wview.WebFltView.17
            @Override // java.lang.Runnable
            public final void run() {
                WebFltView webFltView = WebFltView.this;
                webFltView.v0 = false;
                if (webFltView.G != null) {
                    webFltView.setValAnimHide(webFltView.u0);
                }
            }
        };
        this.i = i;
        this.f20861c = true;
        this.f = context;
        int i2 = MainApp.g1;
        this.M = i2;
        this.N = i2;
        this.j = MainApp.j1;
        this.n = MainApp.k1;
        float f = i2 / 2;
        this.w = f;
        this.x = f;
        this.y = i;
        if (i == 0) {
            k2 = R.drawable.outline_swipe_down_white_24;
        } else if (i == 1) {
            k2 = R.drawable.outline_rss_feed_white_24;
        } else if (i == 2) {
            k2 = R.drawable.outline_lock_white_24;
        } else if (i == 3) {
            k2 = R.drawable.outline_g_translate_white_24;
        } else if (i == 4) {
            k2 = R.drawable.outline_zoom_in_white_24;
        } else if (i == 5) {
            k2 = R.drawable.outline_fullscreen_white_24;
        } else if (i == 6) {
            int i3 = PrefFloat.j;
            this.y = i3;
            k2 = MainUtil.k2(i3, 2);
        } else if (i == 7) {
            int i4 = PrefFloat.k;
            this.y = i4;
            k2 = MainUtil.k2(i4, 2);
        } else {
            int i5 = PrefFloat.l;
            this.y = i5;
            k2 = MainUtil.k2(i5, 2);
        }
        r(k2);
        setOnClickListener(new Object());
        setOnLongClickListener(new View.OnLongClickListener() { // from class: com.mycompany.app.wview.WebFltView.2
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                WebFltView webFltView = WebFltView.this;
                if (!webFltView.f20861c || !webFltView.H || !webFltView.S || webFltView.T) {
                    return false;
                }
                if (PrefZtri.t0) {
                    webFltView.T = true;
                    webFltView.U = webFltView.I;
                    webFltView.V = webFltView.J;
                }
                webFltView.g();
                webFltView.w(false);
                FltViewListener fltViewListener = webFltView.g;
                if (fltViewListener != null) {
                    fltViewListener.c(webFltView);
                }
                return true;
            }
        });
        if (Build.VERSION.SDK_INT >= 29) {
            this.j0 = new Rect();
            ArrayList arrayList = new ArrayList();
            this.k0 = arrayList;
            arrayList.add(this.j0);
        }
    }

    private float getColorPos() {
        int i = this.i;
        if (i == 0) {
            return PrefEditor.Q;
        }
        if (i == 1) {
            return PrefEditor.M;
        }
        if (i == 2) {
            return PrefEditor.U;
        }
        if (i == 3) {
            return PrefEditor.Y;
        }
        if (i == 4) {
            return PrefEditor.t;
        }
        if (i == 5) {
            return 1.0f;
        }
        if (i == 6) {
            return PrefFloat.r;
        }
        if (i == 7) {
            return PrefFloat.v;
        }
        return PrefFloat.z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setOnlyVisibility(int i) {
        FltViewListener fltViewListener;
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
        if (this.q == null) {
            return;
        }
        this.t = f;
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValPreScaleUp(float f) {
        if (this.q == null) {
            return;
        }
        this.t = f;
        invalidate();
    }

    public final void f() {
        ValueAnimator valueAnimator = this.r;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.r = null;
        }
        ValueAnimator valueAnimator2 = this.s;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
            this.s = null;
        }
        MyProgressDrawable myProgressDrawable = this.C;
        if (myProgressDrawable != null) {
            myProgressDrawable.b();
            this.C = null;
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
        if (this.f20861c && this.S) {
            this.S = false;
            if (this.q != null && this.s == null) {
                float f = this.t;
                if (f > 0.8f) {
                    this.o0 = f;
                    this.p0 = false;
                    ValueAnimator ofFloat = ValueAnimator.ofFloat(f, 0.8f);
                    this.s = ofFloat;
                    ofFloat.setDuration(200L);
                    a.r(this.s);
                    this.s.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.wview.WebFltView.7
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                            WebFltView webFltView = WebFltView.this;
                            if (webFltView.q != null) {
                                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                                if (webFltView.s != null) {
                                    webFltView.o0 = floatValue;
                                    if (webFltView.p0) {
                                        return;
                                    }
                                    webFltView.p0 = true;
                                    MainApp.N(webFltView.f, webFltView.q0);
                                }
                            }
                        }
                    });
                    this.s.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.wview.WebFltView.8
                        @Override // android.animation.Animator.AnimatorListener
                        public final void onAnimationCancel(Animator animator) {
                            WebFltView webFltView = WebFltView.this;
                            if (webFltView.s == null) {
                                return;
                            }
                            webFltView.s = null;
                            webFltView.invalidate();
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public final void onAnimationEnd(Animator animator) {
                            final WebFltView webFltView = WebFltView.this;
                            if (webFltView.s == null) {
                                return;
                            }
                            MainApp.N(webFltView.f, new Runnable() { // from class: com.mycompany.app.wview.WebFltView.10
                                @Override // java.lang.Runnable
                                public final void run() {
                                    WebFltView webFltView2 = WebFltView.this;
                                    if (webFltView2.s == null) {
                                        return;
                                    }
                                    webFltView2.s = null;
                                    webFltView2.setValPreScaleDn(0.8f);
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
                    this.s.start();
                }
            }
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
        ValueAnimator valueAnimator = this.r;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.r = null;
            z2 = true;
        }
        ValueAnimator valueAnimator2 = this.s;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
            this.s = null;
        } else {
            z = z2;
        }
        if (z) {
            invalidate();
            p();
        }
    }

    public final boolean i(boolean z) {
        boolean z2;
        int l;
        int l2;
        boolean z3 = true;
        boolean z4 = false;
        if (getColorPos() > 0.9d && MainApp.L1) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (this.C != null && this.B != (l2 = l(z2))) {
            this.B = l2;
            this.C.c(l2);
            z4 = true;
        }
        if (this.E != null && this.D != (l = l(z2))) {
            this.D = l;
            this.E.setAlpha(l);
        } else {
            z3 = z4;
        }
        if (z3 && z) {
            invalidate();
        }
        return z3;
    }

    @Override // android.view.View
    public final void invalidate() {
        if (!this.f20861c) {
            return;
        }
        super.invalidate();
    }

    public final void j() {
        boolean k = k(22, false);
        boolean i = i(false);
        if (!k && !i) {
            return;
        }
        invalidate();
    }

    public final boolean k(int i, boolean z) {
        int k2;
        if (this.y != i || this.z == (k2 = MainUtil.k2(i, 2))) {
            return false;
        }
        boolean r = r(k2);
        if (r && z) {
            invalidate();
        }
        return r;
    }

    public final int l(boolean z) {
        if (this.i != 5 && z) {
            return 176;
        }
        return KotlinVersion.MAX_COMPONENT_VALUE;
    }

    @Override // android.view.View
    public final void layout(int i, int i2, int i3, int i4) {
        super.layout(i, i2, i3, i4);
        u();
    }

    public final void m(boolean z) {
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
                FltViewListener fltViewListener = this.g;
                if (fltViewListener != null) {
                    fltViewListener.b();
                }
                this.u0 = alpha;
                this.v0 = false;
                ValueAnimator ofFloat = ValueAnimator.ofFloat(alpha, 0.0f);
                this.G = ofFloat;
                ofFloat.setDuration(alpha * 400.0f);
                this.G.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.wview.WebFltView.15
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        WebFltView webFltView = WebFltView.this;
                        if (webFltView.G != null) {
                            float floatValue = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                            if (webFltView.G != null) {
                                webFltView.u0 = floatValue;
                                if (webFltView.v0) {
                                    return;
                                }
                                webFltView.v0 = true;
                                MainApp.N(webFltView.f, webFltView.w0);
                            }
                        }
                    }
                });
                this.G.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.wview.WebFltView.16
                    @Override // android.animation.Animator.AnimatorListener
                    public final void onAnimationCancel(Animator animator) {
                        WebFltView webFltView = WebFltView.this;
                        if (webFltView.G == null) {
                            return;
                        }
                        webFltView.G = null;
                        webFltView.invalidate();
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator) {
                        final WebFltView webFltView = WebFltView.this;
                        if (webFltView.G == null) {
                            return;
                        }
                        MainApp.N(webFltView.f, new Runnable() { // from class: com.mycompany.app.wview.WebFltView.18
                            @Override // java.lang.Runnable
                            public final void run() {
                                WebFltView webFltView2 = WebFltView.this;
                                if (webFltView2.G == null) {
                                    return;
                                }
                                webFltView2.G = null;
                                webFltView2.setOnlyVisibility(8);
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

    public final boolean n() {
        if (this.c0) {
            return true;
        }
        int i = this.i;
        if (i == 6) {
            return PrefFloat.m;
        }
        if (i == 7) {
            return PrefFloat.n;
        }
        if (i == 8) {
            return PrefFloat.o;
        }
        return this.a0;
    }

    public final void o() {
        this.f20861c = false;
        f();
        EventHandler eventHandler = this.W;
        if (eventHandler != null) {
            eventHandler.removeMessages(0);
            this.W = null;
        }
        this.f = null;
        this.g = null;
        this.h = null;
        this.m = null;
        this.q = null;
        this.v = null;
        this.E = null;
        this.f0 = null;
        this.j0 = null;
        this.k0 = null;
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        u();
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
        if (this.f20861c) {
            boolean z2 = true;
            if (!this.H && this.r == null && this.s == null) {
                z = false;
            } else {
                z = true;
            }
            Paint paint2 = this.m;
            if (paint2 != null) {
                if (z) {
                    int round = Math.round((1.0f - this.t) * this.l * 5.0f);
                    int i2 = this.l;
                    if (round > i2) {
                        round = i2;
                    }
                    this.m.setAlpha(round);
                } else {
                    paint2.setAlpha(this.l);
                }
                canvas.drawCircle(this.w, this.x, this.j, this.m);
            }
            if (z && (paint = this.q) != null) {
                paint.setAlpha(Math.round((this.t - 0.8f) * this.p * 5.0f));
                canvas.save();
                float f = this.t;
                canvas.scale(f, f, this.w, this.x);
                canvas.drawCircle(this.w, this.x, this.n, this.q);
            } else {
                z2 = false;
            }
            Paint paint3 = this.v;
            if (paint3 != null) {
                float f2 = MainApp.n1 / 2.0f;
                if (z2) {
                    i = this.n;
                } else {
                    i = this.j;
                }
                canvas.drawCircle(this.w, this.x, i - f2, paint3);
            }
            if (z2) {
                canvas.restore();
            }
            if (this.A) {
                MyProgressDrawable myProgressDrawable = this.C;
                if (myProgressDrawable != null) {
                    myProgressDrawable.a(canvas);
                }
            } else {
                Drawable drawable = this.E;
                if (drawable != null) {
                    drawable.draw(canvas);
                }
            }
            Paint paint4 = this.f0;
            if (paint4 != null) {
                if (this.i0) {
                    float f3 = this.h0;
                    canvas.drawCircle(this.w + f3, this.x - f3, this.g0, paint4);
                } else {
                    float f4 = this.h0;
                    canvas.drawCircle(this.w - f4, this.x - f4, this.g0, paint4);
                }
            }
        }
    }

    @Override // android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        Rect rect;
        super.onLayout(z, i, i2, i3, i4);
        u();
        if (z && Build.VERSION.SDK_INT >= 29 && (rect = this.j0) != null && this.k0 != null) {
            try {
                rect.set(0, 0, i3 - i, i4 - i2);
                setSystemGestureExclusionRects(this.k0);
            } catch (Exception unused) {
            }
        }
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        u();
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0017, code lost:
    
        if (r0 != 3) goto L97;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouchEvent(android.view.MotionEvent r10) {
        /*
            Method dump skipped, instructions count: 550
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.wview.WebFltView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public final void p() {
        EventHandler eventHandler;
        if (n()) {
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

    public final void q() {
        int i;
        boolean z;
        boolean z2;
        boolean z3;
        int l;
        int l2;
        boolean z4 = true;
        int i2 = this.i;
        if (i2 == 0) {
            i = PrefEditor.R;
        } else if (i2 == 1) {
            i = PrefEditor.N;
        } else if (i2 == 2) {
            i = PrefEditor.V;
        } else if (i2 == 3) {
            i = PrefEditor.Z;
        } else if (i2 == 4) {
            i = PrefEditor.u;
        } else if (i2 == 5) {
            i = -16777216;
        } else if (i2 == 6) {
            i = PrefFloat.s;
        } else if (i2 == 7) {
            i = PrefFloat.w;
        } else {
            i = PrefFloat.A;
        }
        int i3 = 0;
        if (getColorPos() > 0.9d) {
            z = true;
        } else {
            z = false;
        }
        if (z && MainApp.L1) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (this.k != i) {
            this.k = i;
            if (i != 0) {
                Paint paint = new Paint();
                this.m = paint;
                paint.setAntiAlias(true);
                this.m.setStyle(Paint.Style.FILL);
                this.m.setColor(this.k);
                this.l = this.m.getAlpha();
            } else {
                this.m = null;
            }
            z3 = true;
        } else {
            z3 = false;
        }
        if (this.o != i) {
            this.o = i;
            if (i != 0) {
                Paint paint2 = new Paint();
                this.q = paint2;
                paint2.setAntiAlias(true);
                this.q.setStyle(Paint.Style.FILL);
                this.q.setColor(this.o);
                this.p = this.q.getAlpha();
            } else {
                this.q = null;
            }
            z3 = true;
        }
        if (z) {
            i3 = -1066044043;
        }
        if (this.u != i3) {
            this.u = i3;
            if (i3 != 0) {
                Paint paint3 = new Paint();
                this.v = paint3;
                paint3.setAntiAlias(true);
                this.v.setStyle(Paint.Style.STROKE);
                this.v.setStrokeWidth(MainApp.n1);
                this.v.setColor(this.u);
            } else {
                this.v = null;
            }
            z3 = true;
        }
        if (this.C != null && this.B != (l2 = l(z2))) {
            this.B = l2;
            this.C.c(l2);
            z3 = true;
        }
        if (this.E != null && this.D != (l = l(z2))) {
            this.D = l;
            this.E.setAlpha(l);
        } else {
            z4 = z3;
        }
        if (z4) {
            invalidate();
        }
    }

    public final boolean r(int i) {
        boolean z = false;
        if (i == 0) {
            return false;
        }
        this.z = i;
        Drawable S = MainUtil.S(this.f, i);
        this.E = S;
        if (S == null) {
            return false;
        }
        if (getColorPos() > 0.9d && MainApp.L1) {
            z = true;
        }
        int l = l(z);
        this.D = l;
        if (z) {
            this.E.setAlpha(l);
        }
        int i2 = MainApp.g1;
        int i3 = this.n;
        int i4 = (i2 - i3) / 2;
        int i5 = i3 + i4;
        this.E.setBounds(i4, i4, i5, i5);
        return true;
    }

    public final void s() {
        int i = this.U;
        if ((i != -1234 || this.V != -1234) && MainUtil.I0(this.I, i, this.J, this.V) >= MainApp.G1) {
            this.U = -1234;
            this.V = -1234;
            FltViewListener fltViewListener = this.g;
            if (fltViewListener != null) {
                fltViewListener.b();
            }
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        if (!z) {
            h();
        }
    }

    public void setFltListener(FltViewListener fltViewListener) {
        this.g = fltViewListener;
    }

    public void setHideBlocked(boolean z) {
        if (this.a0 != z) {
            this.a0 = z;
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
                    p();
                }
            }
        }
    }

    public void setHideScrollBlocked(boolean z) {
        this.b0 = z;
    }

    public void setIconView(int i) {
        if (this.y == i) {
            return;
        }
        this.y = i;
        r(MainUtil.k2(i, 2));
        invalidate();
    }

    public void setLoad(boolean z) {
        if (this.A == z) {
            return;
        }
        this.A = z;
        boolean z2 = false;
        if (z) {
            if (this.C == null) {
                this.C = new MyProgressDrawable(this, MainUtil.G(this.f, 2.0f), -1);
                if (getColorPos() > 0.9d && MainApp.L1) {
                    z2 = true;
                }
                int l = l(z2);
                this.B = l;
                if (z2) {
                    this.C.c(l);
                }
                int i = MainApp.g1;
                int i2 = this.n;
                int i3 = (i - i2) / 2;
                int i4 = i2 + i3;
                this.C.d(i3, i3, i4, i4);
            }
            this.C.f();
        } else {
            MyProgressDrawable myProgressDrawable = this.C;
            if (myProgressDrawable != null) {
                myProgressDrawable.f = false;
            }
        }
        invalidate();
    }

    public void setNoti(boolean z) {
        if (z) {
            if (this.f0 == null) {
                Paint paint = new Paint();
                this.f0 = paint;
                paint.setAntiAlias(true);
                this.f0.setStyle(Paint.Style.FILL);
                this.f0.setColor(-65536);
                this.i0 = MainUtil.O5(this.f);
                this.g0 = MainUtil.G(this.f, 3.0f);
                this.h0 = MainUtil.G(this.f, 9.0f);
                invalidate();
                return;
            }
            return;
        }
        if (this.f0 != null) {
            this.f0 = null;
            invalidate();
        }
    }

    public void setPreview(boolean z) {
        this.c0 = z;
        if (z) {
            this.d0 = -1;
            this.e0 = -1;
            EventHandler eventHandler = this.W;
            if (eventHandler != null) {
                eventHandler.removeMessages(0);
                this.W = null;
            }
        }
    }

    public void setTouchListener(FltTouchListener fltTouchListener) {
        this.h = fltTouchListener;
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
            FltViewListener fltViewListener = this.g;
            if (fltViewListener != null) {
                fltViewListener.b();
            }
        }
    }

    public final void t(int i, int i2) {
        if (!this.f20861c) {
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
        if (this.c0) {
            this.d0 = i;
            this.e0 = i2;
            setX(i + this.O);
            setY(i2 + this.P);
            return;
        }
        float f = i5 - (i3 + i);
        float f2 = i8 - (i6 + i2);
        int i9 = this.i;
        if (i9 == 0) {
            PrefZtri.I = i;
            PrefZtri.J = f;
            PrefZtri.K = i2;
            PrefZtri.L = f2;
        } else if (i9 == 1) {
            PrefZtri.D = i;
            PrefZtri.E = f;
            PrefZtri.F = i2;
            PrefZtri.G = f2;
        } else if (i9 == 2) {
            PrefZtri.N = i;
            PrefZtri.O = f;
            PrefZtri.P = i2;
            PrefZtri.Q = f2;
        } else if (i9 == 3) {
            PrefZtri.V = i;
            PrefZtri.W = f;
            PrefZtri.X = i2;
            PrefZtri.Y = f2;
        } else if (i9 == 4) {
            PrefZtri.l = i;
            PrefZtri.m = f;
            PrefZtri.n = i2;
            PrefZtri.o = f2;
        } else if (i9 == 5) {
            PrefZtri.q = i;
            PrefZtri.r = f;
            PrefZtri.s = i2;
            PrefZtri.t = f2;
        } else if (i9 == 6) {
            PrefFloat.B = i;
            PrefFloat.C = f;
            PrefFloat.D = i2;
            PrefFloat.E = f2;
        } else if (i9 == 7) {
            PrefFloat.F = i;
            PrefFloat.G = f;
            PrefFloat.H = i2;
            PrefFloat.I = f2;
        } else {
            PrefFloat.J = i;
            PrefFloat.K = f;
            PrefFloat.L = i2;
            PrefFloat.M = f2;
        }
        setX(i + this.O);
        setY(i2 + this.P);
    }

    public final void u() {
        Object parent;
        float f;
        float f2;
        float f3;
        float f4;
        int a2;
        int a3;
        float f5;
        float f6;
        float f7;
        float f8;
        int H3;
        int i;
        int j0;
        int i2;
        int i3;
        if (this.f20861c && (parent = getParent()) != null && (parent instanceof View)) {
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
                if (this.c0) {
                    int i4 = this.d0;
                    if (i4 < 0 && i4 < 0) {
                        i4 = (width - this.M) / 2;
                        i3 = (height - this.N) / 2;
                        this.d0 = i4;
                        this.e0 = i3;
                    } else {
                        i3 = this.e0;
                    }
                    t(i4, i3);
                    return;
                }
                int i5 = this.i;
                if (i5 == 0) {
                    f = PrefZtri.I;
                    f2 = PrefZtri.J;
                    f3 = PrefZtri.K;
                    f4 = PrefZtri.L;
                } else if (i5 == 1) {
                    f = PrefZtri.D;
                    f2 = PrefZtri.E;
                    f3 = PrefZtri.F;
                    f4 = PrefZtri.G;
                } else if (i5 == 2) {
                    f = PrefZtri.N;
                    f2 = PrefZtri.O;
                    f3 = PrefZtri.P;
                    f4 = PrefZtri.Q;
                } else if (i5 == 3) {
                    f = PrefZtri.V;
                    f2 = PrefZtri.W;
                    f3 = PrefZtri.X;
                    f4 = PrefZtri.Y;
                } else if (i5 == 4) {
                    f = PrefZtri.l;
                    f2 = PrefZtri.m;
                    f3 = PrefZtri.n;
                    f4 = PrefZtri.o;
                } else if (i5 == 5) {
                    f = PrefZtri.q;
                    f2 = PrefZtri.r;
                    f3 = PrefZtri.s;
                    f4 = PrefZtri.t;
                } else if (i5 == 6) {
                    f = PrefFloat.B;
                    f2 = PrefFloat.C;
                    f3 = PrefFloat.D;
                    f4 = PrefFloat.E;
                } else if (i5 == 7) {
                    f = PrefFloat.F;
                    f2 = PrefFloat.G;
                    f3 = PrefFloat.H;
                    f4 = PrefFloat.I;
                } else {
                    f = PrefFloat.J;
                    f2 = PrefFloat.K;
                    f3 = PrefFloat.L;
                    f4 = PrefFloat.M;
                }
                if (f < 0.0f && f2 < 0.0f && f3 < 0.0f && f4 < 0.0f) {
                    if (i5 == 0) {
                        a2 = (width - this.M) - MainApp.E1;
                        H3 = height / 2;
                        i = MainApp.i1;
                    } else {
                        if (i5 == 1) {
                            a2 = (width - this.M) - MainApp.F1;
                            j0 = (height - this.N) - MainUtil.j0();
                            i2 = MainApp.E1;
                        } else if (i5 == 2) {
                            a2 = (width - this.M) - MainApp.E1;
                            H3 = MainUtil.H3();
                            i = MainApp.E1;
                        } else if (i5 == 3) {
                            a2 = ((width - this.M) - MainApp.g1) - MainApp.G1;
                            j0 = ((height - this.N) - MainUtil.j0()) - MainApp.E1;
                            i2 = MainApp.G1;
                        } else if (i5 == 4) {
                            a2 = (width - this.M) / 2;
                            a3 = (height - this.N) / 2;
                        } else if (i5 == 5) {
                            a2 = (width - this.M) - MainApp.E1;
                            H3 = MainUtil.H3();
                            i = MainApp.E1;
                        } else if (i5 == 6) {
                            a2 = (width - this.M) / 2;
                            a3 = (height - this.N) / 2;
                        } else if (i5 == 7) {
                            a2 = (width - this.M) / 2;
                            a3 = (height - this.N) / 2;
                        } else {
                            a2 = (width - this.M) / 2;
                            a3 = (height - this.N) / 2;
                        }
                        a3 = j0 - i2;
                    }
                    a3 = H3 + i;
                } else {
                    a2 = a.a(f, f2, width - this.M, f);
                    a3 = a.a(f3, f4, this.R - this.N, f3);
                }
                t(a2, a3);
                if (i5 == 0) {
                    f5 = PrefZtri.I;
                    f6 = PrefZtri.J;
                    f7 = PrefZtri.K;
                    f8 = PrefZtri.L;
                } else if (i5 == 1) {
                    f5 = PrefZtri.D;
                    f6 = PrefZtri.E;
                    f7 = PrefZtri.F;
                    f8 = PrefZtri.G;
                } else if (i5 == 2) {
                    f5 = PrefZtri.N;
                    f6 = PrefZtri.O;
                    f7 = PrefZtri.P;
                    f8 = PrefZtri.Q;
                } else if (i5 == 3) {
                    f5 = PrefZtri.V;
                    f6 = PrefZtri.W;
                    f7 = PrefZtri.X;
                    f8 = PrefZtri.Y;
                } else if (i5 == 4) {
                    f5 = PrefZtri.l;
                    f6 = PrefZtri.m;
                    f7 = PrefZtri.n;
                    f8 = PrefZtri.o;
                } else if (i5 == 5) {
                    f5 = PrefZtri.q;
                    f6 = PrefZtri.r;
                    f7 = PrefZtri.s;
                    f8 = PrefZtri.t;
                } else if (i5 == 6) {
                    f5 = PrefFloat.B;
                    f6 = PrefFloat.C;
                    f7 = PrefFloat.D;
                    f8 = PrefFloat.E;
                } else if (i5 == 7) {
                    f5 = PrefFloat.F;
                    f6 = PrefFloat.G;
                    f7 = PrefFloat.H;
                    f8 = PrefFloat.I;
                } else {
                    f5 = PrefFloat.J;
                    f6 = PrefFloat.K;
                    f7 = PrefFloat.L;
                    f8 = PrefFloat.M;
                }
                if (Float.compare(f, f5) != 0 || Float.compare(f2, f6) != 0 || Float.compare(f3, f7) != 0 || Float.compare(f4, f8) != 0) {
                    v();
                }
            }
        }
    }

    public final void v() {
        PrefFloat r;
        PrefZtri r2;
        int i = this.i;
        if (i != 6 && i != 7 && i != 8) {
            Context context = this.f;
            if (context != null && (r2 = PrefZtri.r(context)) != null) {
                if (i == 0) {
                    r2.m("mHandLtX", PrefZtri.I);
                    r2.m("mHandRtX", PrefZtri.J);
                    r2.m("mHandUpY", PrefZtri.K);
                    r2.m("mHandDnY", PrefZtri.L);
                } else if (i == 1) {
                    r2.m("mNewsLtX", PrefZtri.D);
                    r2.m("mNewsRtX", PrefZtri.E);
                    r2.m("mNewsUpY", PrefZtri.F);
                    r2.m("mNewsDnY", PrefZtri.G);
                } else if (i == 2) {
                    r2.m("mPassLtX", PrefZtri.N);
                    r2.m("mPassRtX", PrefZtri.O);
                    r2.m("mPassUpY", PrefZtri.P);
                    r2.m("mPassDnY", PrefZtri.Q);
                } else if (i == 3) {
                    r2.m("mTrnsLtX", PrefZtri.V);
                    r2.m("mTrnsRtX", PrefZtri.W);
                    r2.m("mTrnsUpY", PrefZtri.X);
                    r2.m("mTrnsDnY", PrefZtri.Y);
                } else if (i == 4) {
                    r2.m("mZoomLtX", PrefZtri.l);
                    r2.m("mZoomRtX", PrefZtri.m);
                    r2.m("mZoomUpY", PrefZtri.n);
                    r2.m("mZoomDnY", PrefZtri.o);
                } else if (i == 5) {
                    r2.m("mComicLtX", PrefZtri.q);
                    r2.m("mComicRtX", PrefZtri.r);
                    r2.m("mComicUpY", PrefZtri.s);
                    r2.m("mComicDnY", PrefZtri.t);
                }
                r2.a();
                return;
            }
            return;
        }
        Context context2 = this.f;
        if (context2 == null || (r = PrefFloat.r(context2)) == null) {
            return;
        }
        if (i == 7) {
            r.m("mFlt2LtX", PrefFloat.F);
            r.m("mFlt2RtX", PrefFloat.G);
            r.m("mFlt2UpY", PrefFloat.H);
            r.m("mFlt2DnY", PrefFloat.I);
        } else if (i == 8) {
            r.m("mFlt3LtX", PrefFloat.J);
            r.m("mFlt3RtX", PrefFloat.K);
            r.m("mFlt3UpY", PrefFloat.L);
            r.m("mFlt3DnY", PrefFloat.M);
        } else {
            r.m("mFlt1LtX", PrefFloat.B);
            r.m("mFlt1RtX", PrefFloat.C);
            r.m("mFlt1UpY", PrefFloat.D);
            r.m("mFlt1DnY", PrefFloat.E);
        }
        r.a();
    }

    public final void w(boolean z) {
        float f;
        p();
        if (z) {
            if (this.F == null) {
                ValueAnimator valueAnimator = this.G;
                if (valueAnimator != null) {
                    valueAnimator.cancel();
                    this.G = null;
                } else if (getVisibility() == 0) {
                    return;
                }
                if (getVisibility() == 0) {
                    f = getAlpha();
                    if (f >= 1.0f) {
                        return;
                    }
                } else {
                    f = 0.0f;
                }
                this.r0 = f;
                this.s0 = false;
                ValueAnimator ofFloat = ValueAnimator.ofFloat(f, 1.0f);
                this.F = ofFloat;
                ofFloat.setDuration((1.0f - f) * 400.0f);
                this.F.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.wview.WebFltView.11
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        WebFltView webFltView = WebFltView.this;
                        if (webFltView.F != null) {
                            float floatValue = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                            if (webFltView.F != null) {
                                webFltView.r0 = floatValue;
                                if (webFltView.s0) {
                                    return;
                                }
                                webFltView.s0 = true;
                                MainApp.N(webFltView.f, webFltView.t0);
                            }
                        }
                    }
                });
                this.F.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.wview.WebFltView.12
                    @Override // android.animation.Animator.AnimatorListener
                    public final void onAnimationCancel(Animator animator) {
                        WebFltView webFltView = WebFltView.this;
                        if (webFltView.F == null) {
                            return;
                        }
                        webFltView.F = null;
                        webFltView.invalidate();
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator) {
                        final WebFltView webFltView = WebFltView.this;
                        if (webFltView.F == null) {
                            return;
                        }
                        MainApp.N(webFltView.f, new Runnable() { // from class: com.mycompany.app.wview.WebFltView.14
                            @Override // java.lang.Runnable
                            public final void run() {
                                WebFltView webFltView2 = WebFltView.this;
                                if (webFltView2.F == null) {
                                    return;
                                }
                                webFltView2.F = null;
                                webFltView2.setValAnimShow(1.0f);
                                webFltView2.p();
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
                this.F.start();
                return;
            }
            return;
        }
        setVisibility(0);
    }
}
