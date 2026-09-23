package com.mycompany.app.wview;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.View;
import com.mycompany.app.dialog.a;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefEditor;
import com.mycompany.app.soulbrowser.R;
import java.lang.ref.WeakReference;

/* loaded from: classes3.dex */
public class WebUpView extends View {
    public boolean A;
    public EventHandler B;
    public float C;
    public boolean D;
    public final Runnable E;
    public float F;
    public boolean G;
    public final Runnable H;

    /* renamed from: c, reason: collision with root package name */
    public boolean f20915c;
    public Context f;
    public UpViewListener g;
    public boolean h;
    public final int i;
    public int j;
    public int k;
    public Paint l;
    public final int m;
    public int n;
    public int o;
    public Paint p;
    public ValueAnimator q;
    public ValueAnimator r;
    public float s;
    public int t;
    public Paint u;
    public final int v;
    public final int w;
    public int x;
    public Drawable y;
    public boolean z;

    /* renamed from: com.mycompany.app.wview.WebUpView$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* loaded from: classes3.dex */
    public static class EventHandler extends Handler {

        /* renamed from: a, reason: collision with root package name */
        public final WeakReference f20926a;

        public EventHandler(WebUpView webUpView) {
            super(Looper.getMainLooper());
            this.f20926a = new WeakReference(webUpView);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            WebUpView webUpView = (WebUpView) this.f20926a.get();
            if (webUpView == null || message.what != 0 || !webUpView.f20915c || webUpView.z) {
                return;
            }
            webUpView.d();
        }
    }

    /* loaded from: classes3.dex */
    public interface UpViewListener {
        void a();

        void b();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v3, types: [android.view.View$OnClickListener, java.lang.Object] */
    public WebUpView(Context context) {
        super(context);
        this.E = new Runnable() { // from class: com.mycompany.app.wview.WebUpView.5
            @Override // java.lang.Runnable
            public final void run() {
                WebUpView webUpView = WebUpView.this;
                webUpView.D = false;
                if (webUpView.q != null) {
                    webUpView.setValPreScaleUp(webUpView.C);
                }
            }
        };
        this.H = new Runnable() { // from class: com.mycompany.app.wview.WebUpView.9
            @Override // java.lang.Runnable
            public final void run() {
                WebUpView webUpView = WebUpView.this;
                webUpView.G = false;
                if (webUpView.r != null) {
                    webUpView.setValPreScaleDn(webUpView.F);
                }
            }
        };
        this.f20915c = true;
        this.f = context;
        int i = MainApp.g1 / 2;
        this.i = MainApp.j1;
        this.m = MainApp.k1;
        this.v = i;
        this.w = i;
        setOnClickListener(new Object());
        setOnLongClickListener(new View.OnLongClickListener() { // from class: com.mycompany.app.wview.WebUpView.2
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                WebUpView webUpView = WebUpView.this;
                if (!webUpView.f20915c || !webUpView.z || !webUpView.A || !webUpView.h) {
                    return false;
                }
                webUpView.A = false;
                webUpView.d();
                UpViewListener upViewListener = webUpView.g;
                if (upViewListener != null) {
                    upViewListener.b();
                    return true;
                }
                return true;
            }
        });
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

    public final void c() {
        boolean z = true;
        boolean z2 = false;
        if (this.z || this.A) {
            this.z = false;
            this.A = false;
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
            f();
        }
    }

    public final void d() {
        EventHandler eventHandler = this.B;
        if (eventHandler != null) {
            eventHandler.removeMessages(0);
        }
        setVisibility(8);
    }

    public final void e() {
        this.f20915c = false;
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
        EventHandler eventHandler = this.B;
        if (eventHandler != null) {
            eventHandler.removeMessages(0);
            this.B = null;
        }
        this.f = null;
        this.g = null;
        this.l = null;
        this.p = null;
        this.u = null;
        this.y = null;
    }

    public final void f() {
        EventHandler eventHandler;
        EventHandler eventHandler2 = this.B;
        if (eventHandler2 != null) {
            eventHandler2.removeMessages(0);
        } else if (!this.z) {
            this.B = new EventHandler(this);
        }
        if (!this.z && (eventHandler = this.B) != null) {
            eventHandler.sendEmptyMessageDelayed(0, 2000L);
        }
    }

    public final void g() {
        if (this.p != null && this.r == null) {
            float f = this.s;
            if (f <= 0.8f) {
                return;
            }
            this.F = f;
            this.G = false;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(f, 0.8f);
            this.r = ofFloat;
            ofFloat.setDuration(200L);
            a.r(this.r);
            this.r.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.wview.WebUpView.7
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    WebUpView webUpView = WebUpView.this;
                    if (webUpView.p != null) {
                        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        if (webUpView.r != null) {
                            webUpView.F = floatValue;
                            if (webUpView.G) {
                                return;
                            }
                            webUpView.G = true;
                            MainApp.N(webUpView.f, webUpView.H);
                        }
                    }
                }
            });
            this.r.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.wview.WebUpView.8
                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationCancel(Animator animator) {
                    WebUpView webUpView = WebUpView.this;
                    if (webUpView.r == null) {
                        return;
                    }
                    webUpView.r = null;
                    webUpView.invalidate();
                }

                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    final WebUpView webUpView = WebUpView.this;
                    if (webUpView.r == null) {
                        return;
                    }
                    MainApp.N(webUpView.f, new Runnable() { // from class: com.mycompany.app.wview.WebUpView.10
                        @Override // java.lang.Runnable
                        public final void run() {
                            WebUpView webUpView2 = WebUpView.this;
                            if (webUpView2.r == null) {
                                return;
                            }
                            webUpView2.r = null;
                            webUpView2.setValPreScaleDn(0.8f);
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

    @Override // android.view.View
    public final void invalidate() {
        if (!this.f20915c) {
            return;
        }
        super.invalidate();
    }

    @Override // android.view.View
    public final void onDetachedFromWindow() {
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
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        boolean z;
        int i;
        Paint paint;
        if (this.f20915c) {
            boolean z2 = true;
            if (!this.z && this.q == null && this.r == null) {
                z = false;
            } else {
                z = true;
            }
            int i2 = this.k;
            if (z) {
                i2 = Math.round((1.0f - this.s) * i2 * 5.0f);
                int i3 = this.k;
                if (i2 > i3) {
                    i2 = i3;
                }
            }
            Paint paint2 = this.l;
            if (paint2 != null) {
                paint2.setAlpha(i2);
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
                float f3 = this.v;
                float f4 = this.w;
                if (z2) {
                    i = this.m;
                } else {
                    i = this.i;
                }
                canvas.drawCircle(f3, f4, i - f2, paint3);
            }
            if (z2) {
                canvas.restore();
            }
            Drawable drawable = this.y;
            if (drawable != null) {
                drawable.draw(canvas);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0017, code lost:
    
        if (r0 != 3) goto L52;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouchEvent(android.view.MotionEvent r5) {
        /*
            r4 = this;
            boolean r0 = r4.f20915c
            if (r0 != 0) goto L9
            boolean r5 = super.onTouchEvent(r5)
            return r5
        L9:
            int r0 = r5.getActionMasked()
            r1 = 2
            r2 = 1
            r3 = 0
            if (r0 == 0) goto L82
            if (r0 == r2) goto L4f
            if (r0 == r1) goto L1b
            r1 = 3
            if (r0 == r1) goto L5f
            goto Ld5
        L1b:
            boolean r0 = r4.z
            if (r0 != 0) goto L2d
            boolean r0 = r4.A
            if (r0 == 0) goto L28
            r4.A = r3
            r4.g()
        L28:
            r4.f()
            goto Ld5
        L2d:
            boolean r0 = r4.A
            if (r0 == 0) goto Ld5
            float r0 = r5.getRawX()
            int r0 = (int) r0
            float r1 = r5.getRawY()
            int r1 = (int) r1
            int r2 = com.mycompany.app.main.MainApp.C1
            boolean r0 = com.mycompany.app.main.MainUtil.J5(r0, r1, r2, r4)
            if (r0 != 0) goto Ld5
            r4.z = r3
            r4.A = r3
            r4.g()
            r4.f()
            goto Ld5
        L4f:
            boolean r0 = r4.A
            if (r0 == 0) goto L5f
            com.mycompany.app.wview.WebUpView$UpViewListener r0 = r4.g
            if (r0 == 0) goto L5f
            com.mycompany.app.wview.WebUpView$11 r0 = new com.mycompany.app.wview.WebUpView$11
            r0.<init>()
            r4.post(r0)
        L5f:
            boolean r0 = r4.z
            if (r0 != 0) goto L70
            boolean r0 = r4.A
            if (r0 == 0) goto L6c
            r4.A = r3
            r4.g()
        L6c:
            r4.f()
            goto Ld5
        L70:
            r4.z = r3
            boolean r0 = r4.A
            if (r0 == 0) goto L7b
            r4.A = r3
            r4.g()
        L7b:
            r4.f()
            r4.invalidate()
            goto Ld5
        L82:
            r4.z = r2
            r4.A = r2
            android.graphics.Paint r0 = r4.p
            if (r0 != 0) goto L8b
            goto Lce
        L8b:
            android.animation.ValueAnimator r0 = r4.q
            if (r0 == 0) goto L90
            goto Lce
        L90:
            r0 = 1061997773(0x3f4ccccd, float:0.8)
            r4.s = r0
            r4.C = r0
            r4.D = r3
            float[] r0 = new float[r1]
            r0 = {x00da: FILL_ARRAY_DATA , data: [1061997773, 1065353216} // fill-array
            android.animation.ValueAnimator r0 = android.animation.ValueAnimator.ofFloat(r0)
            r4.q = r0
            r1 = 200(0xc8, double:9.9E-322)
            r0.setDuration(r1)
            android.animation.ValueAnimator r0 = r4.q
            com.mycompany.app.dialog.a.v(r0)
            android.animation.ValueAnimator r0 = r4.q
            com.mycompany.app.wview.WebUpView$3 r1 = new com.mycompany.app.wview.WebUpView$3
            r1.<init>()
            r0.addUpdateListener(r1)
            android.animation.ValueAnimator r0 = r4.q
            com.mycompany.app.wview.WebUpView$4 r1 = new com.mycompany.app.wview.WebUpView$4
            r1.<init>()
            r0.addListener(r1)
            android.animation.ValueAnimator r0 = r4.r
            if (r0 == 0) goto Lc9
            r0.cancel()
        Lc9:
            android.animation.ValueAnimator r0 = r4.q
            r0.start()
        Lce:
            com.mycompany.app.wview.WebUpView$EventHandler r0 = r4.B
            if (r0 == 0) goto Ld5
            r0.removeMessages(r3)
        Ld5:
            boolean r5 = super.onTouchEvent(r5)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.wview.WebUpView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public void setBgColors(boolean z) {
        int r;
        int i;
        int i2;
        int i3;
        boolean z2;
        if (MainUtil.k5(z)) {
            r = PrefEditor.r(-16777216, PrefEditor.J);
            i = R.drawable.outline_arrow_upward_dark_24;
            i2 = -12632257;
            i3 = -1066044043;
        } else {
            r = PrefEditor.r(-1, PrefEditor.J);
            i = R.drawable.outline_arrow_upward_black_24;
            i2 = -2039584;
            i3 = -2139785867;
        }
        boolean z3 = true;
        if (this.j != r) {
            this.j = r;
            if (r != 0) {
                Paint paint = new Paint();
                this.l = paint;
                paint.setAntiAlias(true);
                this.l.setStyle(Paint.Style.FILL);
                this.l.setColor(this.j);
                this.k = this.l.getAlpha();
            } else {
                this.l = null;
            }
            z2 = true;
        } else {
            z2 = false;
        }
        if (this.n != i2) {
            this.n = i2;
            Paint paint2 = new Paint();
            this.p = paint2;
            paint2.setAntiAlias(true);
            this.p.setStyle(Paint.Style.FILL);
            this.p.setColor(this.n);
            this.o = this.p.getAlpha();
            z2 = true;
        }
        if (this.t != i3) {
            this.t = i3;
            Paint paint3 = new Paint();
            this.u = paint3;
            paint3.setAntiAlias(true);
            this.u.setStyle(Paint.Style.STROKE);
            this.u.setStrokeWidth(MainApp.n1);
            this.u.setColor(this.t);
            z2 = true;
        }
        if (this.x != i) {
            this.x = i;
            Drawable S = MainUtil.S(this.f, i);
            this.y = S;
            int i4 = MainApp.g1;
            int i5 = this.m;
            int i6 = (i4 - i5) / 2;
            int i7 = i5 + i6;
            S.setBounds(i6, i6, i7, i7);
        } else {
            z3 = z2;
        }
        if (z3) {
            invalidate();
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        if (!z) {
            c();
        }
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        if (i != 0) {
            c();
        }
    }
}
