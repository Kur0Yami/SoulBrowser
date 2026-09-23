package com.mycompany.app.wview;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonImage;

/* loaded from: classes3.dex */
public class WebAreaMenu extends LinearLayout {
    public static final int K = MainApp.i1;
    public float A;
    public int B;
    public float C;
    public final GestureDetector D;
    public float E;
    public boolean F;
    public final Runnable G;
    public float H;
    public boolean I;
    public final Runnable J;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f20795c;
    public final Context f;
    public WebAreaMenuListener g;
    public final MyButtonImage h;
    public final MyButtonImage i;
    public final MyButtonImage j;
    public final RectF k;
    public final Paint l;
    public boolean m;
    public final int n;
    public final int o;
    public int p;
    public int q;
    public int r;
    public int s;
    public int t;
    public boolean u;
    public boolean v;
    public ValueAnimator w;
    public ValueAnimator x;
    public boolean y;
    public float z;

    /* renamed from: com.mycompany.app.wview.WebAreaMenu$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* renamed from: com.mycompany.app.wview.WebAreaMenu$3, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass3 extends ViewOutlineProvider {
        @Override // android.view.ViewOutlineProvider
        public final void getOutline(View view, Outline outline) {
            if (view != null && outline != null) {
                outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), MainApp.E1);
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface WebAreaMenuListener {
        void a();

        void b();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v9, types: [android.view.View$OnClickListener, java.lang.Object] */
    public WebAreaMenu(Context context) {
        super(context);
        this.G = new Runnable() { // from class: com.mycompany.app.wview.WebAreaMenu.11
            @Override // java.lang.Runnable
            public final void run() {
                WebAreaMenu webAreaMenu = WebAreaMenu.this;
                webAreaMenu.F = false;
                if (webAreaMenu.w != null) {
                    webAreaMenu.setValAnimReset(webAreaMenu.E);
                }
            }
        };
        this.J = new Runnable() { // from class: com.mycompany.app.wview.WebAreaMenu.15
            @Override // java.lang.Runnable
            public final void run() {
                WebAreaMenu webAreaMenu = WebAreaMenu.this;
                webAreaMenu.I = false;
                if (webAreaMenu.x != null) {
                    webAreaMenu.setValAnimSwipe(webAreaMenu.H);
                }
            }
        };
        this.f20795c = true;
        this.f = context;
        this.n = Math.round(MainUtil.G(context, 160.0f));
        this.o = MainApp.g1;
        this.k = new RectF();
        Paint paint = new Paint();
        this.l = paint;
        paint.setAntiAlias(true);
        this.l.setStyle(Paint.Style.STROKE);
        this.l.setColor(-9079435);
        this.l.setStrokeWidth(1.0f);
        setOnClickListener(new Object());
        this.D = new GestureDetector(this.f, new GestureDetector.SimpleOnGestureListener() { // from class: com.mycompany.app.wview.WebAreaMenu.2
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public final boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                float f3;
                WebAreaMenu webAreaMenu = WebAreaMenu.this;
                if (webAreaMenu.B == 0) {
                    return super.onFling(motionEvent, motionEvent2, f, f2);
                }
                if (Math.abs(f) > Math.abs(f2)) {
                    if (webAreaMenu.B != 2) {
                        return super.onFling(motionEvent, motionEvent2, f, f2);
                    }
                    f3 = f;
                } else {
                    if (webAreaMenu.B != 1) {
                        return super.onFling(motionEvent, motionEvent2, f, f2);
                    }
                    f3 = f2;
                }
                if (f3 > 100.0f) {
                    if (webAreaMenu.C > MainApp.E1) {
                        webAreaMenu.e();
                    }
                } else if (f3 < -100.0f && webAreaMenu.C < (-MainApp.E1)) {
                    webAreaMenu.e();
                }
                return super.onFling(motionEvent, motionEvent2, f, f2);
            }
        });
        setElevation(MainApp.G1);
        setOutlineProvider(new ViewOutlineProvider());
        setClipToOutline(true);
        this.h = new MyButtonImage(this.f);
        this.i = new MyButtonImage(this.f);
        this.j = new MyButtonImage(this.f);
        MyButtonImage myButtonImage = this.h;
        ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_INSIDE;
        myButtonImage.setScaleType(scaleType);
        this.i.setScaleType(scaleType);
        this.j.setScaleType(scaleType);
        int i = MainApp.F1;
        setPadding(i, 0, i, 0);
        setOrientation(0);
        MyButtonImage myButtonImage2 = this.h;
        int i2 = this.o;
        addView(myButtonImage2, i2, i2);
        MyButtonImage myButtonImage3 = this.i;
        int i3 = this.o;
        addView(myButtonImage3, i3, i3);
        MyButtonImage myButtonImage4 = this.j;
        int i4 = this.o;
        addView(myButtonImage4, i4, i4);
        this.h.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.wview.WebAreaMenu.4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WebAreaMenu webAreaMenu = WebAreaMenu.this;
                if (webAreaMenu.B != 0 || webAreaMenu.m) {
                    return;
                }
                webAreaMenu.m = true;
                webAreaMenu.post(new Runnable() { // from class: com.mycompany.app.wview.WebAreaMenu.4.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        WebAreaMenu webAreaMenu2 = WebAreaMenu.this;
                        webAreaMenu2.setVisibility(8);
                        WebAreaMenuListener webAreaMenuListener = webAreaMenu2.g;
                        if (webAreaMenuListener != null) {
                            webAreaMenuListener.a();
                        }
                        webAreaMenu2.m = false;
                    }
                });
            }
        });
        this.i.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.wview.WebAreaMenu.5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WebAreaMenu webAreaMenu = WebAreaMenu.this;
                if (webAreaMenu.B != 0 || webAreaMenu.m) {
                    return;
                }
                webAreaMenu.m = true;
                webAreaMenu.post(new Runnable() { // from class: com.mycompany.app.wview.WebAreaMenu.5.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        WebAreaMenu webAreaMenu2 = WebAreaMenu.this;
                        webAreaMenu2.setVisibility(8);
                        WebAreaMenuListener webAreaMenuListener = webAreaMenu2.g;
                        if (webAreaMenuListener != null) {
                            webAreaMenuListener.b();
                        }
                        webAreaMenu2.m = false;
                    }
                });
            }
        });
        this.j.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.wview.WebAreaMenu.6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WebAreaMenu webAreaMenu = WebAreaMenu.this;
                if (webAreaMenu.B != 0 || webAreaMenu.m) {
                    return;
                }
                webAreaMenu.m = true;
                webAreaMenu.post(new Runnable() { // from class: com.mycompany.app.wview.WebAreaMenu.6.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        AnonymousClass6 anonymousClass6 = AnonymousClass6.this;
                        WebAreaMenu.this.setVisibility(8);
                        WebAreaMenu.this.m = false;
                    }
                });
            }
        });
        f();
    }

    private void setTransX(float f) {
        setX(this.s + f);
    }

    private void setTransY(float f) {
        setY(this.t + f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValAnimReset(float f) {
        if (this.f20795c) {
            int i = this.B;
            if (i == 2) {
                setTransX(f);
            } else if (i == 1) {
                setTransY(f);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValAnimSwipe(float f) {
        if (!this.f20795c || this.B == 0) {
            return;
        }
        float abs = Math.abs(f - this.C) / K;
        if (this.B == 2) {
            setTransX(f);
        } else {
            setTransY(f);
        }
        setAlpha(1.0f - abs);
    }

    public final void c() {
        if (!this.u || this.m) {
            return;
        }
        this.m = true;
        post(new Runnable() { // from class: com.mycompany.app.wview.WebAreaMenu.7
            @Override // java.lang.Runnable
            public final void run() {
                WebAreaMenu webAreaMenu = WebAreaMenu.this;
                webAreaMenu.setVisibility(8);
                webAreaMenu.m = false;
            }
        });
    }

    public final void d() {
        this.w = null;
        int i = this.B;
        if (i == 2) {
            setTransX(0.0f);
        } else if (i == 1) {
            setTransY(0.0f);
        }
        this.B = 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        RectF rectF;
        if (this.f20795c) {
            super.dispatchDraw(canvas);
            Paint paint = this.l;
            if (paint != null && (rectF = this.k) != null) {
                float f = MainApp.E1;
                canvas.drawRoundRect(rectF, f, f, paint);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0026, code lost:
    
        if (r2 != 3) goto L69;
     */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean dispatchTouchEvent(android.view.MotionEvent r11) {
        /*
            Method dump skipped, instructions count: 334
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.wview.WebAreaMenu.dispatchTouchEvent(android.view.MotionEvent):boolean");
    }

    public final void e() {
        int i;
        int i2;
        int i3;
        float f;
        int i4;
        if (!this.f20795c || (i = this.B) == 0 || this.x != null) {
            return;
        }
        float f2 = this.C;
        if (i == 2) {
            i2 = this.s;
            i3 = this.q;
        } else {
            i2 = this.t;
            i3 = this.r;
        }
        int i5 = K;
        if (f2 < 0.0f) {
            if (i == 2) {
                i4 = this.n;
            } else {
                i4 = this.o;
            }
            int i6 = i2 + i4;
            float f3 = i6;
            if (f3 + f2 <= 0.0f) {
                this.x = null;
                this.B = 0;
                setVisibility(8);
                return;
            } else {
                f = f2 - i5;
                if (f3 + f <= 0.0f) {
                    f = -i6;
                }
            }
        } else {
            float f4 = i2;
            float f5 = i3;
            if (f4 + f2 >= f5) {
                this.x = null;
                this.B = 0;
                setVisibility(8);
                return;
            } else {
                float f6 = i5 + f2;
                if (f4 + f6 >= f5) {
                    f = i3 - i2;
                } else {
                    f = f6;
                }
            }
        }
        long abs = (Math.abs(f - f2) / i5) * 180.0f;
        if (abs <= 0) {
            this.x = null;
            this.B = 0;
            setVisibility(8);
            return;
        }
        this.H = f2;
        this.I = false;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(f2, f);
        this.x = ofFloat;
        ofFloat.setDuration(abs);
        this.x.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.wview.WebAreaMenu.13
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                WebAreaMenu webAreaMenu = WebAreaMenu.this;
                if (webAreaMenu.B != 0 && webAreaMenu.x != null) {
                    float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    if (webAreaMenu.x != null) {
                        webAreaMenu.H = floatValue;
                        if (webAreaMenu.I) {
                            return;
                        }
                        webAreaMenu.I = true;
                        MainApp.N(webAreaMenu.f, webAreaMenu.J);
                    }
                }
            }
        });
        this.x.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.wview.WebAreaMenu.14
            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationCancel(Animator animator) {
                WebAreaMenu webAreaMenu = WebAreaMenu.this;
                if (webAreaMenu.x == null) {
                    return;
                }
                webAreaMenu.x = null;
                webAreaMenu.B = 0;
                webAreaMenu.invalidate();
            }

            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                final WebAreaMenu webAreaMenu = WebAreaMenu.this;
                if (webAreaMenu.x == null) {
                    return;
                }
                MainApp.N(webAreaMenu.f, new Runnable() { // from class: com.mycompany.app.wview.WebAreaMenu.16
                    @Override // java.lang.Runnable
                    public final void run() {
                        WebAreaMenu webAreaMenu2 = WebAreaMenu.this;
                        if (webAreaMenu2.x == null) {
                            return;
                        }
                        webAreaMenu2.x = null;
                        webAreaMenu2.B = 0;
                        webAreaMenu2.setVisibility(8);
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
        this.x.start();
    }

    public final void f() {
        if (!this.f20795c || this.h == null) {
            return;
        }
        boolean z = MainApp.K1;
        this.v = z;
        if (z) {
            setBackgroundColor(-14606047);
            this.h.setImageResource(R.drawable.outline_remove_selection_dark_24);
            this.i.setImageResource(R.drawable.outline_settings_dark_20);
            this.j.setImageResource(R.drawable.outline_close_dark_24);
            this.h.setBgPreColor(-12632257);
            this.i.setBgPreColor(-12632257);
            this.j.setBgPreColor(-12632257);
            return;
        }
        setBackgroundColor(-1);
        this.h.setImageResource(R.drawable.outline_remove_selection_black_24);
        this.i.setImageResource(R.drawable.outline_settings_black_20);
        this.j.setImageResource(R.drawable.outline_close_black_24);
        this.h.setBgPreColor(-2039584);
        this.i.setBgPreColor(-2039584);
        this.j.setBgPreColor(-2039584);
    }

    public final void g(View view, int i, int i2) {
        int i3;
        int i4;
        if (view == null) {
            return;
        }
        int paddingLeft = view.getPaddingLeft();
        int paddingTop = view.getPaddingTop();
        int width = (view.getWidth() - paddingLeft) - view.getPaddingRight();
        int height = (view.getHeight() - paddingTop) - view.getPaddingBottom();
        this.p = paddingTop;
        this.q = width;
        this.r = height;
        if (i == -1234 && i2 == -1234) {
            i3 = (width - this.n) / 2;
            i4 = (height - this.o) / 2;
        } else {
            int i5 = i2 - paddingTop;
            i3 = (i - paddingLeft) - (this.n / 2);
            int i6 = this.o;
            int i7 = i6 * 2;
            if (i5 > i7) {
                i4 = (i5 - i7) - MainApp.G1;
            } else {
                i4 = (i6 / 2) + i5;
            }
        }
        int i8 = this.n;
        if (i3 + i8 > width) {
            i3 = width - i8;
        }
        int i9 = this.o;
        if (i4 + i9 > height) {
            i4 = height - i9;
        }
        if (i3 < 0) {
            i3 = 0;
        }
        if (i4 < 0) {
            i4 = 0;
        }
        this.s = i3;
        this.t = i4;
        setX(i3 + paddingLeft);
        setY(i4 + this.p);
    }

    public int getViewHeight() {
        return this.o;
    }

    public int getViewWidth() {
        return this.n;
    }

    @Override // android.view.View
    public final void invalidate() {
        if (!this.f20795c) {
            return;
        }
        super.invalidate();
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        RectF rectF = this.k;
        if (rectF != null) {
            rectF.set(0.0f, 0.0f, i, i2);
        }
    }

    public void setFltListener(WebAreaMenuListener webAreaMenuListener) {
        this.g = webAreaMenuListener;
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        boolean z;
        if (i == 0) {
            z = true;
        } else {
            z = false;
        }
        this.u = z;
        super.setVisibility(i);
    }
}
