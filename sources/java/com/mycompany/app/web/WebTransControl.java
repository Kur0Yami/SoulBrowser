package com.mycompany.app.web;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.RectF;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.google.android.gms.internal.mlkit_vision_text_common.a;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyProgressDrawable;

/* loaded from: classes3.dex */
public class WebTransControl extends FrameLayout {
    public boolean A;
    public final Runnable B;

    /* renamed from: c, reason: collision with root package name */
    public boolean f19549c;
    public Context f;
    public TransCtrlListener g;
    public int h;
    public boolean i;
    public View j;
    public MyLineText k;
    public MyLineText l;
    public MyButtonImage m;
    public int n;
    public Paint o;
    public RectF p;
    public boolean q;
    public int r;
    public MyProgressDrawable s;
    public int t;
    public int u;
    public ValueAnimator v;
    public boolean w;
    public boolean x;
    public String y;
    public float z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.web.WebTransControl$4, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass4 extends ViewOutlineProvider {
        @Override // android.view.ViewOutlineProvider
        public final void getOutline(View view, Outline outline) {
            if (view != null && outline != null) {
                outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), MainApp.E1);
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface TransCtrlListener {
        void a();

        void b();

        void c(View view);

        void d();
    }

    public WebTransControl(Context context) {
        super(context);
        this.B = new Runnable() { // from class: com.mycompany.app.web.WebTransControl.8
            @Override // java.lang.Runnable
            public final void run() {
                WebTransControl webTransControl = WebTransControl.this;
                webTransControl.A = false;
                if (webTransControl.v != null) {
                    webTransControl.setValAnimShow(webTransControl.z);
                }
            }
        };
        this.f19549c = true;
        this.f = context;
    }

    private void setTransLang(String str) {
        if (this.f != null && this.l != null && !MainUtil.q5(this.y, str)) {
            this.y = str;
            if (TextUtils.isEmpty(str)) {
                str = this.f.getString(R.string.translate);
            }
            this.l.setText(str);
        }
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

    public final void b(int i) {
        int i2;
        float G;
        View view;
        int i3;
        Context context = this.f;
        if (context != null) {
            this.h = i;
            if (i == 3) {
                i2 = MainApp.E1;
                G = MainUtil.G(context, 40.0f);
            } else {
                i2 = MainApp.F1;
                G = MainUtil.G(context, 24.0f);
            }
            int i4 = (int) G;
            if (this.h != 2) {
                view = new View(context);
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) MainUtil.G(context, 176.0f), MainApp.E1);
                layoutParams.gravity = 1;
                layoutParams.topMargin = i2;
                addView(view, layoutParams);
            } else {
                view = null;
            }
            LinearLayout linearLayout = new LinearLayout(context);
            boolean z = false;
            linearLayout.setBaselineAligned(false);
            linearLayout.setOrientation(0);
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, MainApp.g1);
            if (this.h != 2) {
                layoutParams2.topMargin = i4;
            }
            addView(linearLayout, layoutParams2);
            MyLineText myLineText = new MyLineText(context);
            myLineText.setGravity(17);
            myLineText.setMaxLines(2);
            TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
            myLineText.setEllipsize(truncateAt);
            myLineText.setTextSize(1, 16.0f);
            LinearLayout.LayoutParams f = a.f(myLineText, R.string.original, context, 0, -1);
            f.weight = 1.0f;
            linearLayout.addView(myLineText, f);
            MyLineText myLineText2 = new MyLineText(context);
            myLineText2.setGravity(17);
            myLineText2.setMaxLines(2);
            myLineText2.setEllipsize(truncateAt);
            myLineText2.setTextSize(1, 16.0f);
            LinearLayout.LayoutParams f2 = a.f(myLineText2, R.string.translate, context, 0, -1);
            f2.weight = 1.0f;
            linearLayout.addView(myLineText2, f2);
            MyButtonImage myButtonImage = new MyButtonImage(context);
            myButtonImage.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            int i5 = MainApp.g1;
            linearLayout.addView(myButtonImage, i5, i5);
            this.j = view;
            this.k = myLineText;
            this.l = myLineText2;
            this.m = myButtonImage;
            myLineText.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.web.WebTransControl.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    TransCtrlListener transCtrlListener = WebTransControl.this.g;
                    if (transCtrlListener != null) {
                        transCtrlListener.b();
                    }
                }
            });
            this.l.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.web.WebTransControl.2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    TransCtrlListener transCtrlListener = WebTransControl.this.g;
                    if (transCtrlListener != null) {
                        transCtrlListener.d();
                    }
                }
            });
            this.m.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.web.WebTransControl.3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    WebTransControl webTransControl = WebTransControl.this;
                    TransCtrlListener transCtrlListener = webTransControl.g;
                    if (transCtrlListener != null) {
                        transCtrlListener.c(webTransControl.m);
                    }
                }
            });
            if (this.k != null) {
                if (MainApp.K1 || this.i) {
                    z = true;
                }
                e();
                if (this.h == 0) {
                    if (z) {
                        this.m.setImageResource(R.drawable.outline_more_vert_dark_24);
                    } else {
                        this.m.setImageResource(R.drawable.outline_more_vert_black_24);
                    }
                } else if (z) {
                    this.m.setImageResource(R.drawable.outline_language_dark_24);
                } else {
                    this.m.setImageResource(R.drawable.outline_language_black_24);
                }
                if (z) {
                    this.k.setBackgroundResource(R.drawable.selector_normal_dark);
                    this.l.setBackgroundResource(R.drawable.selector_normal_dark);
                    this.m.setBgPreColor(-12632257);
                } else {
                    this.k.setBackgroundResource(R.drawable.selector_normal);
                    this.l.setBackgroundResource(R.drawable.selector_normal);
                    this.m.setBgPreColor(-2039584);
                }
                int i6 = this.h;
                if (i6 == 2) {
                    this.m.setMaxAlpha(0.7f);
                    setBackground(null);
                } else if (this.j != null) {
                    if (i6 == 3) {
                        this.m.setMaxAlpha(0.7f);
                        setBackground(null);
                        if (z) {
                            this.j.setBackgroundResource(R.drawable.trans_logo_regular_white);
                        } else {
                            this.j.setBackgroundResource(R.drawable.trans_logo_regular_color);
                        }
                    } else {
                        if (z) {
                            setBackgroundColor(-16777216);
                            this.j.setBackgroundResource(R.drawable.trans_logo_regular_white);
                        } else {
                            setBackgroundColor(-1);
                            this.j.setBackgroundResource(R.drawable.trans_logo_regular_color);
                        }
                        if (z) {
                            i3 = -1066044043;
                        } else {
                            i3 = -2139785867;
                        }
                        if (this.n != i3) {
                            this.n = i3;
                            if (this.o == null) {
                                Paint paint = new Paint();
                                this.o = paint;
                                paint.setAntiAlias(true);
                                this.o.setStyle(Paint.Style.STROKE);
                                this.o.setStrokeWidth(MainApp.n1);
                            }
                            this.o.setColor(this.n);
                            invalidate();
                        }
                    }
                }
            }
            int i7 = this.h;
            if (i7 != 0 && i7 != 1) {
                return;
            }
            this.p = new RectF();
            setElevation(MainApp.H1);
            setOutlineProvider(new ViewOutlineProvider());
            setClipToOutline(true);
        }
    }

    public final void c() {
        this.f19549c = false;
        MyProgressDrawable myProgressDrawable = this.s;
        if (myProgressDrawable != null) {
            myProgressDrawable.b();
            this.s = null;
        }
        ValueAnimator valueAnimator = this.v;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.v = null;
        }
        MyLineText myLineText = this.k;
        if (myLineText != null) {
            myLineText.u();
            this.k = null;
        }
        MyLineText myLineText2 = this.l;
        if (myLineText2 != null) {
            myLineText2.u();
            this.l = null;
        }
        MyButtonImage myButtonImage = this.m;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.m = null;
        }
        this.f = null;
        this.g = null;
        this.j = null;
        this.p = null;
        this.o = null;
        this.y = null;
    }

    public final void d(int i, int i2) {
        MyProgressDrawable myProgressDrawable = this.s;
        if (myProgressDrawable != null && i != 0 && i2 != 0) {
            int i3 = MainApp.g1;
            int i4 = (i - i3) / 2;
            int i5 = this.r;
            int i6 = ((i4 - i5) / 2) + i4;
            int i7 = i2 - ((i3 - i5) / 2);
            myProgressDrawable.d(i6, i7 - i5, i6 + i5, i7);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        MyProgressDrawable myProgressDrawable;
        RectF rectF;
        if (this.f19549c) {
            super.dispatchDraw(canvas);
            Paint paint = this.o;
            if (paint != null && (rectF = this.p) != null) {
                float f = MainApp.E1;
                canvas.drawRoundRect(rectF, f, f, paint);
            }
            if (this.q && (myProgressDrawable = this.s) != null) {
                myProgressDrawable.a(canvas);
            }
        }
    }

    public final void e() {
        boolean z;
        MyLineText myLineText = this.k;
        if (myLineText == null) {
            return;
        }
        if (!MainApp.K1 && !this.i) {
            z = false;
        } else {
            z = true;
        }
        if (this.x) {
            if (z) {
                myLineText.setTextColor(-4079167);
                this.l.setTextColor(-328966);
                return;
            } else {
                myLineText.setTextColor(-10395295);
                this.l.setTextColor(-14784824);
                return;
            }
        }
        if (z) {
            myLineText.setTextColor(-328966);
            this.l.setTextColor(-4079167);
        } else {
            myLineText.setTextColor(-14784824);
            this.l.setTextColor(-10395295);
        }
    }

    public final void f(String str, int i, boolean z) {
        if (this.x != z) {
            this.x = z;
            e();
        }
        setTransLang(str);
        boolean z2 = true;
        if (i != 1) {
            z2 = false;
        }
        setTransLoad(z2);
    }

    public final void g(boolean z) {
        if (this.v != null) {
            return;
        }
        this.w = !z;
        setPivotX(this.t);
        setPivotY(this.u);
        if (z) {
            this.z = 0.0f;
            this.A = false;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            this.v = ofFloat;
            com.mycompany.app.dialog.a.v(ofFloat);
        } else {
            this.z = 1.0f;
            this.A = false;
            ValueAnimator ofFloat2 = ValueAnimator.ofFloat(1.0f, 0.0f);
            this.v = ofFloat2;
            com.mycompany.app.dialog.a.r(ofFloat2);
        }
        this.v.setDuration(200L);
        this.v.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.web.WebTransControl.6
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                WebTransControl webTransControl = WebTransControl.this;
                if (webTransControl.v != null) {
                    float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    if (webTransControl.v != null) {
                        webTransControl.z = floatValue;
                        if (webTransControl.A) {
                            return;
                        }
                        webTransControl.A = true;
                        MainApp.N(webTransControl.f, webTransControl.B);
                    }
                }
            }
        });
        this.v.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.web.WebTransControl.7
            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationCancel(Animator animator) {
                WebTransControl webTransControl = WebTransControl.this;
                if (webTransControl.v != null) {
                    webTransControl.v = null;
                    if (webTransControl.w) {
                        webTransControl.setVisibility(8);
                        TransCtrlListener transCtrlListener = webTransControl.g;
                        if (transCtrlListener != null) {
                            transCtrlListener.a();
                        }
                    }
                }
            }

            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                final WebTransControl webTransControl = WebTransControl.this;
                if (webTransControl.v == null) {
                    return;
                }
                MainApp.N(webTransControl.f, new Runnable() { // from class: com.mycompany.app.web.WebTransControl.9
                    @Override // java.lang.Runnable
                    public final void run() {
                        WebTransControl webTransControl2 = WebTransControl.this;
                        if (webTransControl2.v != null) {
                            webTransControl2.v = null;
                            if (!webTransControl2.w) {
                                webTransControl2.setValAnimShow(1.0f);
                                return;
                            }
                            webTransControl2.setVisibility(8);
                            TransCtrlListener transCtrlListener = webTransControl2.g;
                            if (transCtrlListener != null) {
                                transCtrlListener.a();
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
        this.v.start();
    }

    @Override // android.view.View
    public final void invalidate() {
        if (!this.f19549c) {
            return;
        }
        super.invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        MyProgressDrawable myProgressDrawable = this.s;
        if (myProgressDrawable != null) {
            myProgressDrawable.b();
            this.s = null;
        }
        ValueAnimator valueAnimator = this.v;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.v = null;
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        RectF rectF = this.p;
        if (rectF != null) {
            float f = MainApp.n1 / 2.0f;
            rectF.set(f, f, i - f, i2 - f);
        }
        d(i, i2);
    }

    public void setDarkUser(boolean z) {
        this.i = z;
    }

    public void setListener(TransCtrlListener transCtrlListener) {
        this.g = transCtrlListener;
    }

    public void setTransLoad(boolean z) {
        int i;
        MyLineText myLineText = this.l;
        if (myLineText == null || this.q == z) {
            return;
        }
        this.q = z;
        if (z) {
            if (!MainApp.K1 && !this.i) {
                i = -13022805;
            } else {
                i = -328966;
            }
            if (this.s == null) {
                float G = MainUtil.G(this.f, 2.0f);
                this.r = Math.round(9.0f * G);
                this.s = new MyProgressDrawable(this, G, i);
                d(getWidth(), getHeight());
            }
            this.s.e(i);
            postDelayed(new Runnable() { // from class: com.mycompany.app.web.WebTransControl.5
                @Override // java.lang.Runnable
                public final void run() {
                    WebTransControl webTransControl = WebTransControl.this;
                    MyLineText myLineText2 = webTransControl.l;
                    if (myLineText2 == null) {
                        return;
                    }
                    if (webTransControl.q) {
                        myLineText2.setVisibility(4);
                        MyProgressDrawable myProgressDrawable = webTransControl.s;
                        if (myProgressDrawable != null) {
                            myProgressDrawable.f();
                        }
                        webTransControl.invalidate();
                        return;
                    }
                    myLineText2.setVisibility(0);
                    MyProgressDrawable myProgressDrawable2 = webTransControl.s;
                    if (myProgressDrawable2 != null) {
                        myProgressDrawable2.f = false;
                    }
                    webTransControl.invalidate();
                }
            }, 200L);
            return;
        }
        myLineText.setVisibility(0);
        MyProgressDrawable myProgressDrawable = this.s;
        if (myProgressDrawable != null) {
            myProgressDrawable.f = false;
        }
        invalidate();
    }
}
