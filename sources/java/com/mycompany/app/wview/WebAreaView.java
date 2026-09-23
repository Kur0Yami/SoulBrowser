package com.mycompany.app.wview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefRead;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonImage;

/* loaded from: classes3.dex */
public class WebAreaView extends LinearLayout {
    public int A;
    public int B;
    public boolean C;

    /* renamed from: c, reason: collision with root package name */
    public boolean f20826c;
    public Context f;
    public WebAreaListener g;
    public MyButtonImage h;
    public MyButtonImage i;
    public MyButtonImage j;
    public MyButtonImage k;
    public RectF l;
    public int m;
    public Paint n;
    public boolean o;
    public boolean p;
    public int q;
    public int r;
    public int s;
    public int t;
    public final int u;
    public final int v;
    public int w;
    public int x;
    public int y;
    public int z;

    /* renamed from: com.mycompany.app.wview.WebAreaView$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* renamed from: com.mycompany.app.wview.WebAreaView$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass2 extends ViewOutlineProvider {
        @Override // android.view.ViewOutlineProvider
        public final void getOutline(View view, Outline outline) {
            if (view != null && outline != null) {
                outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), MainApp.E1);
            }
        }
    }

    /* renamed from: com.mycompany.app.wview.WebAreaView$4, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass4 implements View.OnClickListener {
        public AnonymousClass4() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            WebAreaView webAreaView = WebAreaView.this;
            if (webAreaView.C || webAreaView.o) {
                return;
            }
            webAreaView.o = true;
            webAreaView.post(new Runnable() { // from class: com.mycompany.app.wview.WebAreaView.4.1
                @Override // java.lang.Runnable
                public final void run() {
                    WebAreaView webAreaView2 = WebAreaView.this;
                    if (webAreaView2.g == null) {
                        return;
                    }
                    boolean z = !PrefRead.O;
                    PrefRead.O = z;
                    PrefSet.d(8, webAreaView2.f, "mAreaMulti", z);
                    webAreaView2.c();
                    webAreaView2.g.c();
                    webAreaView2.postDelayed(new Runnable() { // from class: com.mycompany.app.wview.WebAreaView.4.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            WebAreaView.this.o = false;
                        }
                    }, 200L);
                }
            });
        }
    }

    /* loaded from: classes3.dex */
    public interface WebAreaListener {
        void a();

        void b();

        void c();

        void d();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v5, types: [android.view.View$OnClickListener, java.lang.Object] */
    public WebAreaView(Context context) {
        super(context);
        this.f20826c = true;
        this.f = context;
        this.u = Math.round(MainUtil.G(context, 208.0f));
        this.v = MainApp.g1;
        this.l = new RectF();
        setOnClickListener(new Object());
        setElevation(MainApp.H1);
        setOutlineProvider(new ViewOutlineProvider());
        setClipToOutline(true);
        this.h = new MyButtonImage(this.f);
        this.i = new MyButtonImage(this.f);
        this.j = new MyButtonImage(this.f);
        this.k = new MyButtonImage(this.f);
        MyButtonImage myButtonImage = this.h;
        ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_INSIDE;
        myButtonImage.setScaleType(scaleType);
        this.i.setScaleType(scaleType);
        this.j.setScaleType(scaleType);
        this.k.setScaleType(scaleType);
        int i = MainApp.F1;
        setPadding(i, 0, i, 0);
        setOrientation(0);
        MyButtonImage myButtonImage2 = this.h;
        int i2 = this.v;
        addView(myButtonImage2, i2, i2);
        MyButtonImage myButtonImage3 = this.i;
        int i3 = this.v;
        addView(myButtonImage3, i3, i3);
        MyButtonImage myButtonImage4 = this.j;
        int i4 = this.v;
        addView(myButtonImage4, i4, i4);
        MyButtonImage myButtonImage5 = this.k;
        int i5 = this.v;
        addView(myButtonImage5, i5, i5);
        if (PrefRead.K) {
            this.h.setNoti(true);
        }
        this.h.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.wview.WebAreaView.3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WebAreaView webAreaView = WebAreaView.this;
                if (!webAreaView.C && !webAreaView.o) {
                    webAreaView.o = true;
                    if (webAreaView.h == null) {
                        return;
                    }
                    if (PrefRead.K) {
                        PrefRead.K = false;
                        PrefSet.d(8, webAreaView.f, "mNotiAre4", false);
                        webAreaView.h.setNoti(false);
                    }
                    webAreaView.post(new Runnable() { // from class: com.mycompany.app.wview.WebAreaView.3.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            WebAreaView webAreaView2 = WebAreaView.this;
                            WebAreaListener webAreaListener = webAreaView2.g;
                            if (webAreaListener != null) {
                                webAreaListener.d();
                            }
                            webAreaView2.o = false;
                        }
                    });
                }
            }
        });
        this.i.setOnClickListener(new AnonymousClass4());
        this.j.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.wview.WebAreaView.5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WebAreaView webAreaView = WebAreaView.this;
                if (webAreaView.C || webAreaView.o) {
                    return;
                }
                webAreaView.o = true;
                webAreaView.post(new Runnable() { // from class: com.mycompany.app.wview.WebAreaView.5.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        WebAreaView webAreaView2 = WebAreaView.this;
                        WebAreaListener webAreaListener = webAreaView2.g;
                        if (webAreaListener != null) {
                            webAreaListener.b();
                        }
                        webAreaView2.o = false;
                    }
                });
            }
        });
        this.k.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.wview.WebAreaView.6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WebAreaView webAreaView = WebAreaView.this;
                if (webAreaView.C || webAreaView.o) {
                    return;
                }
                webAreaView.o = true;
                webAreaView.post(new Runnable() { // from class: com.mycompany.app.wview.WebAreaView.6.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        WebAreaView webAreaView2 = WebAreaView.this;
                        WebAreaListener webAreaListener = webAreaView2.g;
                        if (webAreaListener != null) {
                            webAreaListener.a();
                        }
                        webAreaView2.o = false;
                    }
                });
            }
        });
        a();
    }

    public final void a() {
        if (this.h != null) {
            int i = -16777216;
            if (MainApp.K1) {
                setBackgroundColor(-16777216);
                this.h.setImageResource(R.drawable.outline_help_dark_24);
                this.j.setImageResource(R.drawable.outline_check_dark_24);
                this.k.setImageResource(R.drawable.outline_close_dark_24);
                this.h.setBgPreColor(-12632257);
                this.i.setBgPreColor(-12632257);
                this.j.setBgPreColor(-12632257);
                this.k.setBgPreColor(-12632257);
            } else {
                setBackgroundColor(-1);
                this.h.setImageResource(R.drawable.outline_help_black_24);
                this.j.setImageResource(R.drawable.outline_check_black_24);
                this.k.setImageResource(R.drawable.outline_close_black_24);
                this.h.setBgPreColor(-2039584);
                this.i.setBgPreColor(-2039584);
                this.j.setBgPreColor(-2039584);
                this.k.setBgPreColor(-2039584);
            }
            c();
            if (MainApp.K1) {
                i = -5197648;
            }
            if (this.m != i) {
                this.m = i;
                if (this.n == null) {
                    Paint paint = new Paint();
                    this.n = paint;
                    paint.setAntiAlias(true);
                    this.n.setStyle(Paint.Style.STROKE);
                    this.n.setStrokeWidth(MainApp.n1);
                }
                this.n.setColor(this.m);
                invalidate();
            }
        }
    }

    public final void b() {
        this.f20826c = false;
        if (this.f == null) {
            return;
        }
        MyButtonImage myButtonImage = this.h;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.h = null;
        }
        MyButtonImage myButtonImage2 = this.i;
        if (myButtonImage2 != null) {
            myButtonImage2.j();
            this.i = null;
        }
        MyButtonImage myButtonImage3 = this.j;
        if (myButtonImage3 != null) {
            myButtonImage3.j();
            this.j = null;
        }
        MyButtonImage myButtonImage4 = this.k;
        if (myButtonImage4 != null) {
            myButtonImage4.j();
            this.k = null;
        }
        this.f = null;
        this.g = null;
        this.l = null;
        this.n = null;
    }

    public final void c() {
        MyButtonImage myButtonImage = this.i;
        if (myButtonImage == null) {
            return;
        }
        if (MainApp.K1) {
            if (PrefRead.O) {
                myButtonImage.setImageResource(R.drawable.outline_shadow_add_dark_24);
                return;
            } else {
                myButtonImage.setImageResource(R.drawable.outline_shadow_minus_dark_24);
                return;
            }
        }
        if (PrefRead.O) {
            myButtonImage.setImageResource(R.drawable.outline_shadow_add_black_24);
        } else {
            myButtonImage.setImageResource(R.drawable.outline_shadow_minus_black_24);
        }
    }

    public final void d(int i, int i2) {
        if (!this.f20826c) {
            return;
        }
        int i3 = this.u;
        int i4 = i + i3;
        int i5 = this.y;
        if (i4 > i5) {
            i = i5 - i3;
        }
        int i6 = this.v;
        int i7 = i2 + i6;
        int i8 = this.z;
        if (i7 > i8) {
            i2 = i8 - i6;
        }
        if (i < 0) {
            i = 0;
        }
        if (i2 < 0) {
            i2 = 0;
        }
        this.A = i;
        this.B = i2;
        setX(i + this.w);
        setY(i2 + this.x);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        RectF rectF;
        if (this.f20826c) {
            super.dispatchDraw(canvas);
            Paint paint = this.n;
            if (paint != null && (rectF = this.l) != null) {
                float f = MainApp.E1;
                canvas.drawRoundRect(rectF, f, f, paint);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0017, code lost:
    
        if (r0 != 3) goto L27;
     */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean dispatchTouchEvent(android.view.MotionEvent r8) {
        /*
            r7 = this;
            boolean r0 = r7.f20826c
            if (r0 != 0) goto L9
            boolean r8 = super.dispatchTouchEvent(r8)
            return r8
        L9:
            int r0 = r8.getActionMasked()
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L6d
            if (r0 == r2) goto L68
            r3 = 2
            if (r0 == r3) goto L1b
            r2 = 3
            if (r0 == r2) goto L68
            goto L91
        L1b:
            float r0 = r8.getRawX()
            float r1 = r8.getRawY()
            int r3 = r7.q
            float r3 = (float) r3
            int r4 = r7.r
            float r4 = (float) r4
            float r3 = com.mycompany.app.main.MainUtil.I0(r3, r0, r4, r1)
            boolean r4 = r7.C
            if (r4 != 0) goto L39
            int r5 = com.mycompany.app.main.MainApp.G1
            float r5 = (float) r5
            int r3 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r3 >= 0) goto L44
            goto L91
        L39:
            int r5 = com.mycompany.app.main.MainApp.G1
            float r5 = (float) r5
            r6 = 1073741824(0x40000000, float:2.0)
            float r5 = r5 / r6
            int r3 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r3 >= 0) goto L44
            goto L91
        L44:
            if (r4 != 0) goto L50
            r7.C = r2
            com.mycompany.app.wview.WebAreaView$7 r2 = new com.mycompany.app.wview.WebAreaView$7
            r2.<init>()
            r7.post(r2)
        L50:
            int r0 = java.lang.Math.round(r0)
            r7.q = r0
            int r0 = java.lang.Math.round(r1)
            r7.r = r0
            int r1 = r7.q
            int r2 = r7.s
            int r1 = r1 + r2
            int r2 = r7.t
            int r0 = r0 + r2
            r7.d(r1, r0)
            goto L91
        L68:
            r7.p = r1
            r7.C = r1
            goto L91
        L6d:
            float r0 = r8.getRawX()
            float r3 = r8.getRawY()
            r7.p = r2
            r7.C = r1
            int r0 = java.lang.Math.round(r0)
            r7.q = r0
            int r0 = java.lang.Math.round(r3)
            r7.r = r0
            int r1 = r7.A
            int r2 = r7.q
            int r1 = r1 - r2
            r7.s = r1
            int r1 = r7.B
            int r1 = r1 - r0
            r7.t = r1
        L91:
            boolean r8 = super.dispatchTouchEvent(r8)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.wview.WebAreaView.dispatchTouchEvent(android.view.MotionEvent):boolean");
    }

    public final void e(View view, int i, int i2) {
        int i3;
        int i4;
        if (view == null) {
            return;
        }
        int paddingLeft = view.getPaddingLeft();
        int paddingTop = view.getPaddingTop();
        int width = (view.getWidth() - paddingLeft) - view.getPaddingRight();
        int height = (view.getHeight() - paddingTop) - view.getPaddingBottom();
        this.w = paddingLeft;
        this.x = paddingTop;
        this.y = width;
        this.z = height;
        if (i == -1234 && i2 == -1234) {
            i3 = (width - this.u) / 2;
            i4 = (height - this.v) / 2;
        } else if (i == -5678 && i2 == -5678) {
            i3 = width - this.u;
            i4 = height - this.v;
        } else {
            int i5 = i2 - paddingTop;
            i3 = (i - paddingLeft) - (this.u / 2);
            int i6 = this.v;
            int i7 = i6 * 2;
            if (i5 > i7) {
                i4 = (i5 - i7) - MainApp.G1;
            } else {
                i4 = (i6 / 2) + i5;
            }
        }
        d(i3, i4);
    }

    public int getViewHeight() {
        return this.v;
    }

    public int getViewWidth() {
        return this.u;
    }

    @Override // android.view.View
    public final void invalidate() {
        if (!this.f20826c) {
            return;
        }
        super.invalidate();
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        RectF rectF = this.l;
        if (rectF != null) {
            float f = MainApp.n1 / 2.0f;
            rectF.set(f, f, i - f, i2 - f);
        }
    }

    public void setFltListener(WebAreaListener webAreaListener) {
        this.g = webAreaListener;
    }
}
