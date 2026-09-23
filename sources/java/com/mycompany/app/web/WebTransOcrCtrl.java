package com.mycompany.app.web;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.google.android.gms.internal.mlkit_vision_text_common.a;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefAlbum;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyButtonText;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyProgressDrawable;
import com.mycompany.app.view.MyRoundFrame;

/* loaded from: classes3.dex */
public class WebTransOcrCtrl extends FrameLayout {
    public boolean A;
    public String B;
    public float C;
    public boolean D;
    public final Runnable E;

    /* renamed from: c, reason: collision with root package name */
    public boolean f19558c;
    public Context f;
    public OcrCtrlListener g;
    public MyRoundFrame h;
    public View i;
    public MyLineText j;
    public MyLineText k;
    public MyButtonImage l;
    public MyButtonText m;
    public MyButtonImage n;
    public MyButtonImage o;
    public MyButtonImage p;
    public MyButtonImage q;
    public MyButtonImage r;
    public MyButtonImage s;
    public boolean t;
    public int u;
    public MyProgressDrawable v;
    public int w;
    public int x;
    public ValueAnimator y;
    public boolean z;

    /* loaded from: classes3.dex */
    public interface OcrCtrlListener {
        void a();

        void b();

        void c(boolean z);

        void d();

        void e(View view);

        void f(View view);

        void g();

        void h();

        void i();
    }

    public WebTransOcrCtrl(Context context) {
        super(context);
        this.E = new Runnable() { // from class: com.mycompany.app.web.WebTransOcrCtrl.14
            @Override // java.lang.Runnable
            public final void run() {
                WebTransOcrCtrl webTransOcrCtrl = WebTransOcrCtrl.this;
                webTransOcrCtrl.D = false;
                if (webTransOcrCtrl.y != null) {
                    webTransOcrCtrl.setValAnimShow(webTransOcrCtrl.C);
                }
            }
        };
        this.f19558c = true;
        this.f = context;
    }

    public static String getTransCap() {
        int i = PrefAlbum.A;
        if (i == 1) {
            return "C";
        }
        if (i == 2) {
            return "D";
        }
        if (i == 3) {
            return "J";
        }
        if (i == 4) {
            return "K";
        }
        return "A";
    }

    private void setTransLang(String str) {
        if (this.f != null && this.k != null && !MainUtil.q5(this.B, str)) {
            this.B = str;
            if (TextUtils.isEmpty(str)) {
                str = this.f.getString(R.string.translate);
            }
            this.k.setText(str);
        }
    }

    private void setTransLoad(boolean z) {
        MyLineText myLineText = this.k;
        if (myLineText == null || this.t == z) {
            return;
        }
        this.t = z;
        if (z) {
            if (this.v == null) {
                float G = MainUtil.G(this.f, 2.0f);
                this.u = Math.round(9.0f * G);
                this.v = new MyProgressDrawable(this, G, -328966);
                e(getWidth(), getHeight());
            }
            this.v.e(-328966);
            postDelayed(new Runnable() { // from class: com.mycompany.app.web.WebTransOcrCtrl.11
                @Override // java.lang.Runnable
                public final void run() {
                    WebTransOcrCtrl webTransOcrCtrl = WebTransOcrCtrl.this;
                    MyLineText myLineText2 = webTransOcrCtrl.k;
                    if (myLineText2 == null) {
                        return;
                    }
                    if (webTransOcrCtrl.t) {
                        myLineText2.setVisibility(4);
                        MyProgressDrawable myProgressDrawable = webTransOcrCtrl.v;
                        if (myProgressDrawable != null) {
                            myProgressDrawable.f();
                        }
                        webTransOcrCtrl.invalidate();
                        return;
                    }
                    myLineText2.setVisibility(0);
                    MyProgressDrawable myProgressDrawable2 = webTransOcrCtrl.v;
                    if (myProgressDrawable2 != null) {
                        myProgressDrawable2.f = false;
                    }
                    webTransOcrCtrl.invalidate();
                }
            }, 200L);
            return;
        }
        myLineText.setVisibility(0);
        MyProgressDrawable myProgressDrawable = this.v;
        if (myProgressDrawable != null) {
            myProgressDrawable.f = false;
        }
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValAnimShow(float f) {
        setAlpha(f);
        setScaleX(f);
        setScaleY(f);
        if (getVisibility() != 0) {
            setVisibility(0);
        }
        invalidate();
    }

    public final void b() {
        MyButtonImage myButtonImage = this.s;
        if (myButtonImage != null) {
            myButtonImage.setVisibility(8);
            int i = MainApp.g1;
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.p.getLayoutParams();
            if (marginLayoutParams != null) {
                marginLayoutParams.setMarginEnd(i * 2);
                ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) this.q.getLayoutParams();
                if (marginLayoutParams2 != null) {
                    marginLayoutParams2.setMarginEnd(i);
                    ViewGroup.MarginLayoutParams marginLayoutParams3 = (ViewGroup.MarginLayoutParams) this.r.getLayoutParams();
                    if (marginLayoutParams3 == null) {
                        return;
                    }
                    marginLayoutParams3.setMarginEnd(0);
                }
            }
        }
    }

    public final void c() {
        Context context = this.f;
        if (context == null) {
            return;
        }
        MyButtonImage myButtonImage = new MyButtonImage(context);
        ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_INSIDE;
        myButtonImage.setScaleType(scaleType);
        myButtonImage.n(MainApp.j1, MainApp.k1);
        myButtonImage.k(-16777216, -12632257);
        int i = MainApp.g1;
        addView(myButtonImage, i, i);
        MyButtonImage myButtonImage2 = new MyButtonImage(context);
        myButtonImage2.setScaleType(scaleType);
        myButtonImage2.n(MainApp.j1, MainApp.k1);
        myButtonImage2.k(-16777216, -12632257);
        myButtonImage2.setVisibility(8);
        int i2 = MainApp.g1;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i2, i2);
        layoutParams.gravity = 8388613;
        layoutParams.setMarginEnd(MainApp.g1 * 3);
        addView(myButtonImage2, layoutParams);
        MyButtonImage p = a.p(context, scaleType);
        p.n(MainApp.j1, MainApp.k1);
        p.k(-16777216, -12632257);
        int i3 = MainApp.g1;
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(i3, i3);
        layoutParams2.gravity = 8388613;
        layoutParams2.setMarginEnd(MainApp.g1 * 2);
        addView(p, layoutParams2);
        MyButtonImage p2 = a.p(context, scaleType);
        p2.n(MainApp.j1, MainApp.k1);
        p2.k(-16777216, -12632257);
        int i4 = MainApp.g1;
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(i4, i4);
        layoutParams3.gravity = 8388613;
        layoutParams3.setMarginEnd(MainApp.g1);
        addView(p2, layoutParams3);
        MyButtonImage p3 = a.p(context, scaleType);
        p3.n(MainApp.j1, MainApp.k1);
        p3.k(-16777216, -12632257);
        int i5 = MainApp.g1;
        FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(i5, i5);
        layoutParams4.gravity = 8388613;
        addView(p3, layoutParams4);
        MyRoundFrame myRoundFrame = new MyRoundFrame(context);
        FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(-1, -2);
        layoutParams5.topMargin = MainApp.g1;
        addView(myRoundFrame, layoutParams5);
        View view = new View(context);
        FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams((int) MainUtil.G(context, 176.0f), MainApp.E1);
        layoutParams6.gravity = 1;
        layoutParams6.topMargin = MainApp.F1;
        myRoundFrame.addView(view, layoutParams6);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setBaselineAligned(false);
        linearLayout.setOrientation(0);
        FrameLayout.LayoutParams layoutParams7 = new FrameLayout.LayoutParams(-1, MainApp.g1);
        layoutParams7.topMargin = (int) MainUtil.G(context, 24.0f);
        myRoundFrame.addView(linearLayout, layoutParams7);
        MyButtonText myButtonText = new MyButtonText(context);
        myButtonText.setGravity(17);
        myButtonText.setTextSize(1, 18.0f);
        myButtonText.setRoundRect(true);
        myButtonText.setRoundRadius((int) (MainApp.g1 / 2.0f));
        int i6 = MainApp.g1;
        linearLayout.addView(myButtonText, i6, i6);
        MyButtonImage myButtonImage3 = new MyButtonImage(context);
        myButtonImage3.setScaleType(scaleType);
        myButtonImage3.setVisibility(8);
        int i7 = MainApp.g1;
        linearLayout.addView(myButtonImage3, i7, i7);
        MyLineText myLineText = new MyLineText(context);
        myLineText.setGravity(17);
        myLineText.setMaxLines(2);
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        myLineText.setEllipsize(truncateAt);
        myLineText.setTextSize(1, 16.0f);
        myLineText.setText(R.string.original);
        myLineText.m = true;
        myLineText.p = true;
        myLineText.q = true;
        myLineText.s = 0.5f;
        Paint paint = new Paint();
        myLineText.t = paint;
        paint.setAntiAlias(true);
        myLineText.t.setStyle(Paint.Style.STROKE);
        myLineText.t.setColor(-9079435);
        myLineText.t.setStrokeWidth(1.0f);
        LinearLayout.LayoutParams layoutParams8 = new LinearLayout.LayoutParams(0, -1);
        layoutParams8.weight = 1.0f;
        linearLayout.addView(myLineText, layoutParams8);
        MyLineText myLineText2 = new MyLineText(context);
        myLineText2.setGravity(17);
        myLineText2.setMaxLines(2);
        myLineText2.setEllipsize(truncateAt);
        myLineText2.setTextSize(1, 16.0f);
        LinearLayout.LayoutParams f = a.f(myLineText2, R.string.translate, context, 0, -1);
        f.weight = 1.0f;
        linearLayout.addView(myLineText2, f);
        MyButtonImage myButtonImage4 = new MyButtonImage(context);
        myButtonImage4.setScaleType(scaleType);
        int i8 = MainApp.g1;
        linearLayout.addView(myButtonImage4, i8, i8);
        this.h = myRoundFrame;
        this.i = view;
        this.j = myLineText;
        this.k = myLineText2;
        this.l = myButtonImage4;
        this.m = myButtonText;
        this.n = myButtonImage3;
        this.o = myButtonImage;
        this.p = myButtonImage2;
        this.q = p;
        this.r = p2;
        this.s = p3;
        myLineText.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.web.WebTransOcrCtrl.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                OcrCtrlListener ocrCtrlListener = WebTransOcrCtrl.this.g;
                if (ocrCtrlListener != null) {
                    ocrCtrlListener.b();
                }
            }
        });
        this.k.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.web.WebTransOcrCtrl.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                OcrCtrlListener ocrCtrlListener = WebTransOcrCtrl.this.g;
                if (ocrCtrlListener != null) {
                    ocrCtrlListener.c(false);
                }
            }
        });
        this.l.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.web.WebTransOcrCtrl.3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                OcrCtrlListener ocrCtrlListener = WebTransOcrCtrl.this.g;
                if (ocrCtrlListener != null) {
                    ocrCtrlListener.i();
                }
            }
        });
        this.m.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.web.WebTransOcrCtrl.4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                WebTransOcrCtrl webTransOcrCtrl = WebTransOcrCtrl.this;
                OcrCtrlListener ocrCtrlListener = webTransOcrCtrl.g;
                if (ocrCtrlListener != null) {
                    ocrCtrlListener.f(webTransOcrCtrl.m);
                }
            }
        });
        this.n.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.web.WebTransOcrCtrl.5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                WebTransOcrCtrl webTransOcrCtrl = WebTransOcrCtrl.this;
                OcrCtrlListener ocrCtrlListener = webTransOcrCtrl.g;
                if (ocrCtrlListener != null) {
                    ocrCtrlListener.f(webTransOcrCtrl.n);
                }
            }
        });
        this.o.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.web.WebTransOcrCtrl.6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                OcrCtrlListener ocrCtrlListener = WebTransOcrCtrl.this.g;
                if (ocrCtrlListener != null) {
                    ocrCtrlListener.g();
                }
            }
        });
        this.p.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.web.WebTransOcrCtrl.7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                OcrCtrlListener ocrCtrlListener = WebTransOcrCtrl.this.g;
                if (ocrCtrlListener != null) {
                    ocrCtrlListener.c(true);
                }
            }
        });
        this.q.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.web.WebTransOcrCtrl.8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                WebTransOcrCtrl webTransOcrCtrl = WebTransOcrCtrl.this;
                OcrCtrlListener ocrCtrlListener = webTransOcrCtrl.g;
                if (ocrCtrlListener != null) {
                    ocrCtrlListener.e(webTransOcrCtrl.q);
                }
            }
        });
        this.r.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.web.WebTransOcrCtrl.9
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                OcrCtrlListener ocrCtrlListener = WebTransOcrCtrl.this.g;
                if (ocrCtrlListener != null) {
                    ocrCtrlListener.d();
                }
            }
        });
        this.s.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.web.WebTransOcrCtrl.10
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                OcrCtrlListener ocrCtrlListener = WebTransOcrCtrl.this.g;
                if (ocrCtrlListener != null) {
                    ocrCtrlListener.h();
                }
            }
        });
        if (this.j != null) {
            f();
            g();
            this.h.c(-16777216, MainApp.E1);
            this.h.setBgOutColor(-1066044043);
            this.i.setBackgroundResource(R.drawable.trans_logo_regular_white);
            this.j.setBackgroundResource(R.drawable.selector_normal_dark);
            this.k.setBackgroundResource(R.drawable.selector_normal_dark);
            this.l.setImageResource(R.drawable.outline_language_dark_24);
            this.o.setImageResource(R.drawable.outline_help_dark_20);
            this.p.setImageResource(R.drawable.outline_refresh_dark_24);
            this.q.setImageResource(R.drawable.outline_format_color_fill_dark_24);
            this.r.setImageResource(R.drawable.outline_center_focus_strong_dark_24);
            this.s.setImageResource(R.drawable.outline_settings_dark_24);
            this.l.setBgPreColor(-12632257);
            this.m.setBgPreColor(-12632257);
            this.n.setBgPreColor(-12632257);
            this.m.setTextColor(-328966);
        }
        this.h.setElevation(MainApp.H1);
    }

    public final void d() {
        this.f19558c = false;
        MyProgressDrawable myProgressDrawable = this.v;
        if (myProgressDrawable != null) {
            myProgressDrawable.b();
            this.v = null;
        }
        ValueAnimator valueAnimator = this.y;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.y = null;
        }
        MyRoundFrame myRoundFrame = this.h;
        if (myRoundFrame != null) {
            myRoundFrame.a();
            this.h = null;
        }
        MyLineText myLineText = this.j;
        if (myLineText != null) {
            myLineText.u();
            this.j = null;
        }
        MyLineText myLineText2 = this.k;
        if (myLineText2 != null) {
            myLineText2.u();
            this.k = null;
        }
        MyButtonImage myButtonImage = this.l;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.l = null;
        }
        MyButtonText myButtonText = this.m;
        if (myButtonText != null) {
            myButtonText.t();
            this.m = null;
        }
        MyButtonImage myButtonImage2 = this.n;
        if (myButtonImage2 != null) {
            myButtonImage2.j();
            this.n = null;
        }
        MyButtonImage myButtonImage3 = this.o;
        if (myButtonImage3 != null) {
            myButtonImage3.j();
            this.o = null;
        }
        MyButtonImage myButtonImage4 = this.p;
        if (myButtonImage4 != null) {
            myButtonImage4.j();
            this.p = null;
        }
        MyButtonImage myButtonImage5 = this.q;
        if (myButtonImage5 != null) {
            myButtonImage5.j();
            this.q = null;
        }
        MyButtonImage myButtonImage6 = this.r;
        if (myButtonImage6 != null) {
            myButtonImage6.j();
            this.r = null;
        }
        MyButtonImage myButtonImage7 = this.s;
        if (myButtonImage7 != null) {
            myButtonImage7.j();
            this.s = null;
        }
        this.f = null;
        this.g = null;
        this.i = null;
        this.B = null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        MyProgressDrawable myProgressDrawable;
        if (this.f19558c) {
            super.dispatchDraw(canvas);
            if (this.t && (myProgressDrawable = this.v) != null) {
                myProgressDrawable.a(canvas);
            }
        }
    }

    public final void e(int i, int i2) {
        MyProgressDrawable myProgressDrawable = this.v;
        if (myProgressDrawable != null && i != 0 && i2 != 0) {
            int i3 = MainApp.g1;
            int i4 = (i - i3) / 2;
            int i5 = this.u;
            int i6 = ((i4 - i5) / 2) + i4;
            int i7 = i2 - ((i3 - i5) / 2);
            myProgressDrawable.d(i6, i7 - i5, i6 + i5, i7);
        }
    }

    public final void f() {
        MyLineText myLineText = this.j;
        if (myLineText == null) {
            return;
        }
        if (this.A) {
            myLineText.setTextColor(-4079167);
            this.k.setTextColor(-328966);
            this.p.setVisibility(0);
        } else {
            myLineText.setTextColor(-328966);
            this.k.setTextColor(-4079167);
            this.p.setVisibility(8);
        }
    }

    public final void g() {
        MyButtonText myButtonText = this.m;
        if (myButtonText == null) {
            return;
        }
        if (PrefAlbum.A == 5) {
            this.n.setImageResource(R.drawable.outline_search_dark_24);
            this.n.setVisibility(0);
            this.m.setVisibility(8);
        } else {
            myButtonText.setText(getTransCap());
            this.m.setVisibility(0);
            this.n.setVisibility(8);
        }
    }

    public final void h(String str, boolean z) {
        if (this.A != z) {
            this.A = z;
            f();
        }
        setTransLang(str);
        setTransLoad(false);
    }

    public final void i(boolean z) {
        if (this.y != null) {
            return;
        }
        this.z = !z;
        setPivotX(this.w);
        setPivotY(this.x);
        if (z) {
            this.C = 0.0f;
            this.D = false;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            this.y = ofFloat;
            com.mycompany.app.dialog.a.v(ofFloat);
        } else {
            this.C = 1.0f;
            this.D = false;
            ValueAnimator ofFloat2 = ValueAnimator.ofFloat(1.0f, 0.0f);
            this.y = ofFloat2;
            com.mycompany.app.dialog.a.r(ofFloat2);
        }
        this.y.setDuration(200L);
        this.y.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.web.WebTransOcrCtrl.12
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                WebTransOcrCtrl webTransOcrCtrl = WebTransOcrCtrl.this;
                if (webTransOcrCtrl.y != null) {
                    float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    if (webTransOcrCtrl.y != null) {
                        webTransOcrCtrl.C = floatValue;
                        if (webTransOcrCtrl.D) {
                            return;
                        }
                        webTransOcrCtrl.D = true;
                        MainApp.N(webTransOcrCtrl.f, webTransOcrCtrl.E);
                    }
                }
            }
        });
        this.y.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.web.WebTransOcrCtrl.13
            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationCancel(Animator animator) {
                WebTransOcrCtrl webTransOcrCtrl = WebTransOcrCtrl.this;
                if (webTransOcrCtrl.y != null) {
                    webTransOcrCtrl.y = null;
                    if (webTransOcrCtrl.z) {
                        webTransOcrCtrl.setVisibility(8);
                        OcrCtrlListener ocrCtrlListener = webTransOcrCtrl.g;
                        if (ocrCtrlListener != null) {
                            ocrCtrlListener.a();
                        }
                    }
                }
            }

            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                final WebTransOcrCtrl webTransOcrCtrl = WebTransOcrCtrl.this;
                if (webTransOcrCtrl.y == null) {
                    return;
                }
                MainApp.N(webTransOcrCtrl.f, new Runnable() { // from class: com.mycompany.app.web.WebTransOcrCtrl.15
                    @Override // java.lang.Runnable
                    public final void run() {
                        WebTransOcrCtrl webTransOcrCtrl2 = WebTransOcrCtrl.this;
                        if (webTransOcrCtrl2.y != null) {
                            webTransOcrCtrl2.y = null;
                            if (!webTransOcrCtrl2.z) {
                                webTransOcrCtrl2.setValAnimShow(1.0f);
                                return;
                            }
                            webTransOcrCtrl2.setVisibility(8);
                            OcrCtrlListener ocrCtrlListener = webTransOcrCtrl2.g;
                            if (ocrCtrlListener != null) {
                                ocrCtrlListener.a();
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
        this.y.start();
    }

    @Override // android.view.View
    public final void invalidate() {
        if (!this.f19558c) {
            return;
        }
        super.invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        MyProgressDrawable myProgressDrawable = this.v;
        if (myProgressDrawable != null) {
            myProgressDrawable.b();
            this.v = null;
        }
        ValueAnimator valueAnimator = this.y;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.y = null;
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        e(i, i2);
    }

    public void setListener(OcrCtrlListener ocrCtrlListener) {
        this.g = ocrCtrlListener;
    }
}
