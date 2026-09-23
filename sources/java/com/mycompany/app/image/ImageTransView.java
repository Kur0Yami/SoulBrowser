package com.mycompany.app.image;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import com.mycompany.app.dialog.a;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefAlbum;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.pref.PrefZone;
import com.mycompany.app.pref.PrefZtri;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyArrowView;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyButtonText;
import com.mycompany.app.view.MyRoundFrame;
import com.mycompany.app.web.WebTransOcrCtrl;

/* loaded from: classes3.dex */
public class ImageTransView extends FrameLayout {
    public static final /* synthetic */ int J = 0;
    public int A;
    public int B;
    public int C;
    public int D;
    public int E;
    public int F;
    public int G;
    public int H;
    public boolean I;

    /* renamed from: c, reason: collision with root package name */
    public boolean f15767c;
    public Context f;
    public ImageTransListener g;
    public FrameLayout h;
    public MyButtonText i;
    public MyButtonImage j;
    public MyButtonImage k;
    public MyButtonImage l;
    public MyButtonImage m;
    public MyButtonImage n;
    public int o;
    public boolean p;
    public boolean q;
    public MyRoundFrame r;
    public MyButtonImage s;
    public AppCompatTextView t;
    public MyArrowView u;
    public int v;
    public RectF w;
    public Paint x;
    public final int y;
    public final int z;

    /* renamed from: com.mycompany.app.image.ImageTransView$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* renamed from: com.mycompany.app.image.ImageTransView$7, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass7 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* loaded from: classes3.dex */
    public interface ImageTransListener {
        void b();

        void c(boolean z);

        void d();

        void e(View view);

        void f(View view);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v3, types: [android.view.View$OnClickListener, java.lang.Object] */
    public ImageTransView(Context context) {
        super(context);
        this.f15767c = true;
        this.f = context;
        int i = MainApp.E1;
        this.y = i;
        this.z = i * 2;
        setOnClickListener(new Object());
        setOnLongClickListener(new View.OnLongClickListener() { // from class: com.mycompany.app.image.ImageTransView.2
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                ImageTransView imageTransView = ImageTransView.this;
                imageTransView.I = true;
                if (imageTransView.q) {
                    ImageTransView.a(imageTransView);
                }
                return true;
            }
        });
    }

    public static void a(ImageTransView imageTransView) {
        imageTransView.q = false;
        if (PrefZone.t0) {
            PrefZone.t0 = false;
            PrefSet.d(15, imageTransView.f, "mOcrGuide", false);
        }
        imageTransView.f();
    }

    public final void b(View view, int i) {
        int i2;
        view.setTag(Integer.valueOf(i));
        view.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.image.ImageTransView.4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                Object tag;
                ImageTransView imageTransView = ImageTransView.this;
                if (!imageTransView.I && imageTransView.g != null && view2 != null && (tag = view2.getTag()) != null && (tag instanceof Integer)) {
                    int intValue = ((Integer) tag).intValue();
                    if (intValue == 0) {
                        imageTransView.g.f(view2);
                        return;
                    }
                    if (intValue == 1) {
                        imageTransView.g.c(true);
                        return;
                    }
                    if (intValue == 2) {
                        if (imageTransView.p) {
                            imageTransView.g.b();
                            return;
                        } else {
                            imageTransView.g.c(false);
                            return;
                        }
                    }
                    if (intValue == 3) {
                        imageTransView.g.e(view2);
                    } else if (intValue == 4) {
                        imageTransView.g.d();
                    }
                }
            }
        });
        view.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.mycompany.app.image.ImageTransView.5
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view2) {
                ImageTransView imageTransView = ImageTransView.this;
                imageTransView.I = true;
                if (imageTransView.q) {
                    ImageTransView.a(imageTransView);
                }
                return true;
            }
        });
        int i3 = this.y;
        if (i == 1) {
            if (PrefZone.o0) {
                i2 = MainApp.g1;
                i3 += i2;
            }
        } else if (i == 2) {
            if (PrefZone.o0) {
                i3 += MainApp.g1;
            }
            if (PrefZone.p0) {
                i2 = MainApp.g1;
                i3 += i2;
            }
        } else if (i == 3) {
            if (PrefZone.o0) {
                i3 += MainApp.g1;
            }
            if (PrefZone.p0) {
                i3 += MainApp.g1;
            }
            if (PrefZone.q0) {
                i2 = MainApp.g1;
                i3 += i2;
            }
        } else if (i == 4) {
            if (PrefZone.o0) {
                i3 += MainApp.g1;
            }
            if (PrefZone.p0) {
                i3 += MainApp.g1;
            }
            if (PrefZone.q0) {
                i3 += MainApp.g1;
            }
            if (PrefZone.r0) {
                i2 = MainApp.g1;
                i3 += i2;
            }
        }
        int i4 = MainApp.g1;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i4, i4);
        layoutParams.topMargin = this.y;
        layoutParams.setMarginStart(i3);
        addView(view, layoutParams);
    }

    public final void c() {
        if (this.h == null) {
            return;
        }
        MyButtonText myButtonText = this.i;
        boolean z = PrefZone.o0;
        MyButtonText myButtonText2 = null;
        if (this.f15767c) {
            if (!z) {
                if (myButtonText != null) {
                    myButtonText.t();
                }
            } else {
                if (myButtonText == null) {
                    myButtonText = new MyButtonText(this.f);
                    float f = MainApp.j1;
                    float f2 = MainApp.k1;
                    myButtonText.q = f;
                    myButtonText.o = true;
                    myButtonText.x = f2;
                    myButtonText.w = true;
                    myButtonText.u(-1593835520, -1586137739);
                    myButtonText.setGravity(17);
                    myButtonText.setTextSize(1, 18.0f);
                    myButtonText.setTextColor(-328966);
                }
                b(myButtonText, 0);
                myButtonText2 = myButtonText;
            }
        }
        this.i = myButtonText2;
        this.j = h(0, this.j, PrefZone.o0);
        this.k = h(1, this.k, PrefZone.p0);
        this.l = h(2, this.l, PrefZone.q0);
        this.m = h(3, this.m, PrefZone.r0);
        this.n = h(4, this.n, PrefZone.s0);
        o();
        this.h.post(new Runnable() { // from class: com.mycompany.app.image.ImageTransView.3
            @Override // java.lang.Runnable
            public final void run() {
                FrameLayout frameLayout;
                int i;
                ImageTransView imageTransView = ImageTransView.this;
                if (imageTransView.f15767c && (frameLayout = imageTransView.h) != null) {
                    if (PrefZone.o0) {
                        i = MainApp.g1;
                    } else {
                        i = 0;
                    }
                    if (PrefZone.p0) {
                        i += MainApp.g1;
                    }
                    if (PrefZone.q0) {
                        i += MainApp.g1;
                    }
                    if (PrefZone.r0) {
                        i += MainApp.g1;
                    }
                    if (PrefZone.s0) {
                        i += MainApp.g1;
                    }
                    int i2 = imageTransView.z;
                    int i3 = i + i2;
                    imageTransView.E = i3;
                    int i4 = i2 + MainApp.g1;
                    imageTransView.F = i4;
                    imageTransView.G = 0;
                    imageTransView.H = 0;
                    int i5 = imageTransView.o;
                    if (i5 != -1) {
                        frameLayout.addView(imageTransView, i5, new FrameLayout.LayoutParams(imageTransView.E, imageTransView.F));
                    } else {
                        frameLayout.addView(imageTransView, i3, i4);
                    }
                }
            }
        });
    }

    public final int d(int i) {
        if (i == 2) {
            if (this.p) {
                return R.drawable.outline_g_translate_color_24;
            }
            return R.drawable.outline_g_translate_white_24;
        }
        if (i == 0) {
            return R.drawable.outline_search_white_24;
        }
        if (i == 1) {
            return R.drawable.outline_refresh_white_24;
        }
        if (i == 3) {
            return R.drawable.outline_format_color_fill_white_24;
        }
        if (i == 4) {
            return R.drawable.outline_center_focus_strong_white_24;
        }
        return 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        Paint paint;
        if (this.f15767c) {
            super.dispatchDraw(canvas);
            RectF rectF = this.w;
            if (rectF != null && (paint = this.x) != null) {
                float f = this.v;
                canvas.drawRoundRect(rectF, f, f, paint);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0017, code lost:
    
        if (r0 != 3) goto L27;
     */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean dispatchTouchEvent(android.view.MotionEvent r7) {
        /*
            r6 = this;
            boolean r0 = r6.f15767c
            if (r0 != 0) goto L9
            boolean r7 = super.dispatchTouchEvent(r7)
            return r7
        L9:
            int r0 = r7.getActionMasked()
            r1 = 0
            if (r0 == 0) goto L61
            r2 = 1
            if (r0 == r2) goto L56
            r2 = 2
            if (r0 == r2) goto L1b
            r2 = 3
            if (r0 == r2) goto L56
            goto L9d
        L1b:
            boolean r0 = r6.I
            if (r0 != 0) goto L21
            goto L9d
        L21:
            float r0 = r7.getRawX()
            float r1 = r7.getRawY()
            int r2 = r6.A
            float r2 = (float) r2
            int r3 = r6.B
            float r3 = (float) r3
            float r2 = com.mycompany.app.main.MainUtil.I0(r2, r0, r3, r1)
            int r3 = com.mycompany.app.main.MainApp.G1
            float r3 = (float) r3
            r4 = 1073741824(0x40000000, float:2.0)
            float r3 = r3 / r4
            int r2 = (r2 > r3 ? 1 : (r2 == r3 ? 0 : -1))
            if (r2 >= 0) goto L3e
            goto L9d
        L3e:
            int r0 = java.lang.Math.round(r0)
            r6.A = r0
            int r0 = java.lang.Math.round(r1)
            r6.B = r0
            int r1 = r6.A
            int r2 = r6.C
            int r1 = r1 + r2
            int r2 = r6.D
            int r0 = r0 + r2
            r6.k(r1, r0)
            goto L9d
        L56:
            boolean r0 = r6.I
            if (r0 != 0) goto L5b
            goto L9d
        L5b:
            r6.I = r1
            r6.m()
            goto L9d
        L61:
            float r0 = r7.getRawX()
            float r2 = r7.getRawY()
            r6.I = r1
            int r0 = java.lang.Math.round(r0)
            r6.A = r0
            int r0 = java.lang.Math.round(r2)
            r6.B = r0
            float r0 = com.mycompany.app.pref.PrefZtri.Z
            float r1 = com.mycompany.app.pref.PrefZtri.a0
            float r2 = com.mycompany.app.pref.PrefZtri.b0
            float r3 = com.mycompany.app.pref.PrefZtri.c0
            int r4 = r6.G
            int r5 = r6.E
            int r4 = r4 - r5
            float r4 = (float) r4
            int r0 = com.mycompany.app.dialog.a.a(r0, r1, r4, r0)
            int r1 = r6.H
            int r4 = r6.F
            int r1 = r1 - r4
            float r1 = (float) r1
            int r1 = com.mycompany.app.dialog.a.a(r2, r3, r1, r2)
            int r2 = r6.A
            int r0 = r0 - r2
            r6.C = r0
            int r0 = r6.B
            int r1 = r1 - r0
            r6.D = r1
        L9d:
            boolean r7 = super.dispatchTouchEvent(r7)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.image.ImageTransView.dispatchTouchEvent(android.view.MotionEvent):boolean");
    }

    public final void e() {
        this.f15767c = false;
        if (this.f == null) {
            return;
        }
        if (this.h != null) {
            f();
            FrameLayout frameLayout = this.h;
            this.h = null;
            frameLayout.removeView(this);
        }
        MyButtonText myButtonText = this.i;
        if (myButtonText != null) {
            myButtonText.t();
            this.i = null;
        }
        MyButtonImage myButtonImage = this.j;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.j = null;
        }
        MyButtonImage myButtonImage2 = this.k;
        if (myButtonImage2 != null) {
            myButtonImage2.j();
            this.k = null;
        }
        MyButtonImage myButtonImage3 = this.l;
        if (myButtonImage3 != null) {
            myButtonImage3.j();
            this.l = null;
        }
        MyButtonImage myButtonImage4 = this.m;
        if (myButtonImage4 != null) {
            myButtonImage4.j();
            this.m = null;
        }
        MyButtonImage myButtonImage5 = this.n;
        if (myButtonImage5 != null) {
            myButtonImage5.j();
            this.n = null;
        }
        this.f = null;
        this.g = null;
    }

    public final void f() {
        MyRoundFrame myRoundFrame = this.r;
        if (myRoundFrame != null) {
            FrameLayout frameLayout = this.h;
            if (frameLayout != null) {
                try {
                    frameLayout.removeView(myRoundFrame);
                } catch (Exception unused) {
                }
            }
            this.r = null;
        }
        MyArrowView myArrowView = this.u;
        if (myArrowView != null) {
            FrameLayout frameLayout2 = this.h;
            if (frameLayout2 != null) {
                try {
                    frameLayout2.removeView(myArrowView);
                } catch (Exception unused2) {
                }
            }
            this.u = null;
        }
        this.s = null;
        this.t = null;
        if (this.w != null || this.x != null) {
            this.w = null;
            this.x = null;
            invalidate();
        }
    }

    public final void g() {
        if (this.h == null) {
            return;
        }
        f();
        this.h.removeView(this);
        removeAllViews();
        c();
    }

    public final MyButtonImage h(int i, MyButtonImage myButtonImage, boolean z) {
        if (this.f15767c) {
            if (!z) {
                if (myButtonImage != null) {
                    myButtonImage.j();
                }
            } else {
                if (myButtonImage == null) {
                    myButtonImage = new MyButtonImage(this.f);
                    myButtonImage.n(MainApp.j1, MainApp.k1);
                    myButtonImage.k(-1593835520, -1586137739);
                    myButtonImage.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                    myButtonImage.setImageResource(d(i));
                }
                b(myButtonImage, i);
                return myButtonImage;
            }
        }
        return null;
    }

    public final void i() {
        MyRoundFrame myRoundFrame = this.r;
        if (myRoundFrame != null && this.u != null) {
            try {
                int height = myRoundFrame.getHeight();
                if (height != 0) {
                    float f = PrefZtri.b0 - this.y;
                    this.r.setY(f - height);
                    this.u.setY(f);
                    this.r.setVisibility(0);
                    this.u.setVisibility(0);
                    j();
                }
            } catch (Exception unused) {
            }
        }
    }

    @Override // android.view.View
    public final void invalidate() {
        if (!this.f15767c) {
            return;
        }
        super.invalidate();
    }

    public final void j() {
        this.v = MainApp.F1;
        this.w = new RectF();
        Paint paint = new Paint();
        this.x = paint;
        paint.setAntiAlias(true);
        this.x.setStyle(Paint.Style.STROKE);
        this.x.setColor(-14983648);
        this.x.setStrokeWidth(MainApp.G1);
        n(getWidth(), getHeight());
        invalidate();
    }

    public final void k(int i, int i2) {
        if (this.f15767c) {
            int i3 = this.E;
            int i4 = i + i3;
            int i5 = this.G;
            if (i4 > i5) {
                i = i5 - i3;
            }
            int i6 = this.F;
            int i7 = i2 + i6;
            int i8 = this.H;
            if (i7 > i8) {
                i2 = i8 - i6;
            }
            if (i < 0) {
                i = 0;
            }
            if (i2 < 0) {
                i2 = 0;
            }
            PrefZtri.Z = i;
            PrefZtri.a0 = i5 - (i3 + i);
            PrefZtri.b0 = i2;
            PrefZtri.c0 = i8 - (i6 + i2);
            setX(i - this.y);
            setY(i2 - this.y);
            if (this.q) {
                if (this.r == null) {
                    this.h.post(new Runnable() { // from class: com.mycompany.app.image.ImageTransView.10
                        /* JADX WARN: Multi-variable type inference failed */
                        /* JADX WARN: Type inference failed for: r2v15, types: [android.view.View$OnClickListener, java.lang.Object] */
                        @Override // java.lang.Runnable
                        public final void run() {
                            if (!PrefZone.t0) {
                                int i9 = ImageTransView.J;
                                return;
                            }
                            final ImageTransView imageTransView = ImageTransView.this;
                            if (imageTransView.h != null && imageTransView.r == null) {
                                imageTransView.r = new MyRoundFrame(imageTransView.f);
                                imageTransView.t = new AppCompatTextView(imageTransView.f, null);
                                imageTransView.u = new MyArrowView(imageTransView.f);
                                imageTransView.r.setVisibility(4);
                                imageTransView.u.setVisibility(4);
                                imageTransView.t.setTextColor(-1);
                                imageTransView.t.setText(R.string.long_move_guide);
                                imageTransView.t.setPaddingRelative(MainApp.E1, MainApp.F1, MainApp.E1, MainApp.F1);
                                imageTransView.t.setGravity(17);
                                imageTransView.t.setTextSize(1, 14.0f);
                                imageTransView.r.setBgColor(-14983648);
                                imageTransView.u.setSnack(-14983648);
                                MyButtonImage myButtonImage = new MyButtonImage(imageTransView.f);
                                imageTransView.s = myButtonImage;
                                myButtonImage.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                                imageTransView.s.setBgPreColor(1155588320);
                                imageTransView.s.setImageResource(R.drawable.outline_close_white_18);
                                imageTransView.s.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.image.ImageTransView.6
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        ImageTransView.a(ImageTransView.this);
                                    }
                                });
                                imageTransView.r.setOnClickListener(new Object());
                                imageTransView.h.post(new Runnable() { // from class: com.mycompany.app.image.ImageTransView.8
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        final ImageTransView imageTransView2 = ImageTransView.this;
                                        if (imageTransView2.h != null && imageTransView2.r != null) {
                                            try {
                                                int i10 = MainApp.f1;
                                                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i10, i10);
                                                layoutParams.gravity = 8388629;
                                                imageTransView2.r.addView(imageTransView2.s, layoutParams);
                                                int round = Math.round(MainUtil.G(imageTransView2.f, 36.0f));
                                                AppCompatTextView appCompatTextView = imageTransView2.t;
                                                int i11 = MainApp.E1;
                                                appCompatTextView.setPaddingRelative(i11, i11, round, i11);
                                                imageTransView2.r.addView(imageTransView2.t, new FrameLayout.LayoutParams(-2, -2));
                                                FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -2);
                                                layoutParams2.gravity = 1;
                                                imageTransView2.h.addView(imageTransView2.r, layoutParams2);
                                                int round2 = Math.round(MainUtil.G(imageTransView2.f, 14.0f));
                                                FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(round2, round2);
                                                layoutParams3.gravity = 1;
                                                imageTransView2.h.addView(imageTransView2.u, layoutParams3);
                                                imageTransView2.h.post(new Runnable() { // from class: com.mycompany.app.image.ImageTransView.9
                                                    @Override // java.lang.Runnable
                                                    public final void run() {
                                                        int i12 = ImageTransView.J;
                                                        ImageTransView.this.i();
                                                    }
                                                });
                                            } catch (Exception unused) {
                                            }
                                        }
                                    }
                                });
                            }
                        }
                    });
                } else {
                    i();
                }
            }
        }
    }

    public final void l() {
        FrameLayout frameLayout;
        int a2;
        int a3;
        if (this.f15767c && (frameLayout = this.h) != null) {
            int width = frameLayout.getWidth() + this.z;
            int height = this.h.getHeight() + this.z;
            if (width != this.G || height != this.H) {
                this.G = width;
                this.H = height;
                float f = PrefZtri.Z;
                float f2 = PrefZtri.a0;
                float f3 = PrefZtri.b0;
                float f4 = PrefZtri.c0;
                if (f < 0.0f && f2 < 0.0f && f3 < 0.0f && f4 < 0.0f) {
                    a2 = (width - this.E) / 2;
                    a3 = ((height - this.F) / 2) - MainApp.g1;
                    this.q = PrefZone.t0;
                } else {
                    a2 = a.a(f, f2, width - this.E, f);
                    a3 = a.a(f3, f4, this.H - this.F, f3);
                }
                if (!this.q && PrefZone.t0) {
                    PrefZone.t0 = false;
                    PrefSet.d(15, this.f, "mOcrGuide", false);
                }
                k(a2, a3);
                float f5 = PrefZtri.Z;
                float f6 = PrefZtri.a0;
                float f7 = PrefZtri.b0;
                float f8 = PrefZtri.c0;
                if (Float.compare(f, f5) != 0 || Float.compare(f2, f6) != 0 || Float.compare(f3, f7) != 0 || Float.compare(f4, f8) != 0) {
                    m();
                }
            }
        }
    }

    public final void m() {
        PrefZtri r;
        Context context = this.f;
        if (context == null || (r = PrefZtri.r(context)) == null) {
            return;
        }
        r.m("mItrsLtX", PrefZtri.Z);
        r.m("mItrsRtX", PrefZtri.a0);
        r.m("mItrsUpY", PrefZtri.b0);
        r.m("mItrsDnY", PrefZtri.c0);
        r.a();
    }

    public final void n(int i, int i2) {
        if (this.w == null) {
            return;
        }
        int i3 = i / 2;
        int i4 = i2 / 2;
        int i5 = this.E;
        int i6 = this.z;
        int i7 = (i5 - i6) / 2;
        int i8 = (this.F - i6) / 2;
        int round = Math.round(MainApp.G1 / 2.0f);
        this.w.set((i3 - i7) + round, (i4 - i8) + round, (i3 + i7) - round, (i4 + i8) - round);
    }

    public final void o() {
        MyButtonText myButtonText = this.i;
        if (myButtonText == null) {
            return;
        }
        if (PrefAlbum.A == 5) {
            this.j.setImageResource(d(0));
            this.j.setVisibility(0);
            this.i.setVisibility(8);
        } else {
            myButtonText.setText(WebTransOcrCtrl.getTransCap());
            this.i.setVisibility(0);
            this.j.setVisibility(8);
        }
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        l();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        l();
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        l();
        n(i, i2);
    }

    public void setFltListener(ImageTransListener imageTransListener) {
        this.g = imageTransListener;
    }

    public void setIconTrans(boolean z) {
        MyButtonImage myButtonImage = this.l;
        if (myButtonImage == null || this.p == z) {
            return;
        }
        this.p = z;
        myButtonImage.setImageResource(d(2));
    }
}
