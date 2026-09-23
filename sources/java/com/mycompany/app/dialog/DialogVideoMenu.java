package com.mycompany.app.dialog;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefZone;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyRoundLinear;
import com.mycompany.app.view.MyWebBody;
import com.mycompany.app.web.WebViewActivity;

/* loaded from: classes3.dex */
public class DialogVideoMenu {

    /* renamed from: a, reason: collision with root package name */
    public WebViewActivity f15026a;
    public VideoMenuListener b;

    /* renamed from: c, reason: collision with root package name */
    public MyWebBody f15027c;
    public View d;
    public final boolean e;
    public final boolean f;
    public MyRoundLinear g;
    public FrameLayout h;
    public MyRoundLinear i;
    public MyButtonImage j;
    public MyButtonImage k;
    public MyButtonImage l;
    public MyButtonImage m;
    public int n;
    public int o;
    public ValueAnimator p;
    public ValueAnimator q;
    public float r;
    public boolean s;
    public float u;
    public boolean v;
    public final Runnable t = new Runnable() { // from class: com.mycompany.app.dialog.DialogVideoMenu.16
        @Override // java.lang.Runnable
        public final void run() {
            DialogVideoMenu dialogVideoMenu = DialogVideoMenu.this;
            dialogVideoMenu.s = false;
            if (dialogVideoMenu.p == null) {
                return;
            }
            DialogVideoMenu.b(dialogVideoMenu, dialogVideoMenu.r);
        }
    };
    public final Runnable w = new Runnable() { // from class: com.mycompany.app.dialog.DialogVideoMenu.20
        @Override // java.lang.Runnable
        public final void run() {
            DialogVideoMenu dialogVideoMenu = DialogVideoMenu.this;
            dialogVideoMenu.v = false;
            if (dialogVideoMenu.q != null) {
                float f = dialogVideoMenu.u;
                MyRoundLinear myRoundLinear = dialogVideoMenu.g;
                if (myRoundLinear == null) {
                    return;
                }
                myRoundLinear.setAlpha(f);
                dialogVideoMenu.g.setScaleX(f);
                dialogVideoMenu.g.setScaleY(f);
            }
        }
    };

    /* renamed from: com.mycompany.app.dialog.DialogVideoMenu$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass2 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* renamed from: com.mycompany.app.dialog.DialogVideoMenu$7, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass7 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* loaded from: classes3.dex */
    public interface VideoMenuListener {
        void a();

        void b(int i);
    }

    public DialogVideoMenu(WebViewActivity webViewActivity, MyWebBody myWebBody, View view, boolean z, boolean z2, VideoMenuListener videoMenuListener) {
        this.f15026a = webViewActivity;
        this.b = videoMenuListener;
        this.f15027c = myWebBody;
        this.d = view;
        this.e = z;
        this.f = z2;
        if (myWebBody == null) {
            return;
        }
        myWebBody.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogVideoMenu.1
            @Override // java.lang.Runnable
            public final void run() {
                WebViewActivity webViewActivity2;
                MyButtonImage myButtonImage;
                DialogVideoMenu dialogVideoMenu = DialogVideoMenu.this;
                boolean z3 = dialogVideoMenu.e;
                if (dialogVideoMenu.i == null && (webViewActivity2 = dialogVideoMenu.f15026a) != null) {
                    MyRoundLinear myRoundLinear = new MyRoundLinear(webViewActivity2);
                    myRoundLinear.setBaselineAligned(false);
                    myRoundLinear.setOrientation(0);
                    MyButtonImage myButtonImage2 = new MyButtonImage(webViewActivity2);
                    ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_INSIDE;
                    myButtonImage2.setScaleType(scaleType);
                    myButtonImage2.l(MainApp.j1, true);
                    myButtonImage2.setBgPreRadius(MainApp.k1);
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(MainApp.g1, -1);
                    layoutParams.setMarginStart(MainApp.E1);
                    myRoundLinear.addView(myButtonImage2, layoutParams);
                    MyButtonImage myButtonImage3 = new MyButtonImage(webViewActivity2);
                    myButtonImage3.setScaleType(scaleType);
                    myButtonImage3.l(MainApp.j1, true);
                    myButtonImage3.setBgPreRadius(MainApp.k1);
                    LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(MainApp.g1, -1);
                    layoutParams2.setMarginStart(MainApp.E1);
                    myRoundLinear.addView(myButtonImage3, layoutParams2);
                    if (!z3) {
                        myButtonImage = new MyButtonImage(webViewActivity2);
                        myButtonImage.setScaleType(scaleType);
                        myButtonImage.l(MainApp.j1, true);
                        myButtonImage.setBgPreRadius(MainApp.k1);
                        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(MainApp.g1, -1);
                        layoutParams3.setMarginStart(MainApp.E1);
                        myRoundLinear.addView(myButtonImage, layoutParams3);
                    } else {
                        myButtonImage = null;
                    }
                    dialogVideoMenu.i = myRoundLinear;
                    if (z3) {
                        dialogVideoMenu.j = myButtonImage2;
                        dialogVideoMenu.m = myButtonImage3;
                    } else {
                        dialogVideoMenu.j = myButtonImage2;
                        dialogVideoMenu.k = myButtonImage3;
                        dialogVideoMenu.l = myButtonImage;
                    }
                }
                MyWebBody myWebBody2 = dialogVideoMenu.f15027c;
                if (myWebBody2 == null) {
                    return;
                }
                myWebBody2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogVideoMenu.1.1
                    /* JADX WARN: Multi-variable type inference failed */
                    /* JADX WARN: Type inference failed for: r2v10, types: [android.view.View$OnClickListener, java.lang.Object] */
                    /* JADX WARN: Type inference failed for: r2v3, types: [android.view.View$OnClickListener, java.lang.Object] */
                    @Override // java.lang.Runnable
                    public final void run() {
                        int i;
                        int i2;
                        int i3;
                        final DialogVideoMenu dialogVideoMenu2 = DialogVideoMenu.this;
                        int i4 = 0;
                        if (dialogVideoMenu2.e) {
                            MyRoundLinear myRoundLinear2 = dialogVideoMenu2.i;
                            if (myRoundLinear2 != null && dialogVideoMenu2.f15026a != null) {
                                if (MainApp.K1) {
                                    int i5 = MainApp.E1;
                                    myRoundLinear2.n = -16777216;
                                    myRoundLinear2.m = i5;
                                    myRoundLinear2.setBgOutColor(-1066044043);
                                    dialogVideoMenu2.j.setImageResource(R.drawable.outline_picture_in_picture_alt_dark_24);
                                    dialogVideoMenu2.m.setImageResource(R.drawable.outline_slow_motion_video_dark_24);
                                    dialogVideoMenu2.j.setBgNorColor(-11513776);
                                    dialogVideoMenu2.m.setBgNorColor(-11513776);
                                    dialogVideoMenu2.j.setBgPreColor(-12632257);
                                    dialogVideoMenu2.m.setBgPreColor(-12632257);
                                } else {
                                    int i6 = MainApp.E1;
                                    myRoundLinear2.n = -1;
                                    myRoundLinear2.m = i6;
                                    myRoundLinear2.setBgOutColor(-2139785867);
                                    dialogVideoMenu2.j.setImageResource(R.drawable.outline_picture_in_picture_alt_black_24);
                                    dialogVideoMenu2.m.setImageResource(R.drawable.outline_slow_motion_video_black_24);
                                    dialogVideoMenu2.j.setBgNorColor(-460552);
                                    dialogVideoMenu2.m.setBgNorColor(-460552);
                                    dialogVideoMenu2.j.setBgPreColor(-2039584);
                                    dialogVideoMenu2.m.setBgPreColor(-2039584);
                                }
                                MyButtonImage myButtonImage4 = dialogVideoMenu2.j;
                                if (PrefZone.s) {
                                    i3 = 0;
                                } else {
                                    i3 = 8;
                                }
                                myButtonImage4.setVisibility(i3);
                                MyButtonImage myButtonImage5 = dialogVideoMenu2.m;
                                if (!PrefZone.t) {
                                    i4 = 8;
                                }
                                myButtonImage5.setVisibility(i4);
                                dialogVideoMenu2.i.c(true, true);
                                dialogVideoMenu2.i.setVisibility(4);
                                dialogVideoMenu2.i.setElevation(MainApp.H1);
                                dialogVideoMenu2.i.setOnClickListener(new Object());
                                dialogVideoMenu2.j.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogVideoMenu.8
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view2) {
                                        VideoMenuListener videoMenuListener2 = DialogVideoMenu.this.b;
                                        if (videoMenuListener2 != null) {
                                            videoMenuListener2.b(2);
                                        }
                                    }
                                });
                                dialogVideoMenu2.m.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogVideoMenu.9
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view2) {
                                        VideoMenuListener videoMenuListener2 = DialogVideoMenu.this.b;
                                        if (videoMenuListener2 != null) {
                                            videoMenuListener2.b(3);
                                        }
                                    }
                                });
                                MyWebBody myWebBody3 = dialogVideoMenu2.f15027c;
                                if (myWebBody3 != null) {
                                    myWebBody3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogVideoMenu.10
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            DialogVideoMenu.a(DialogVideoMenu.this);
                                        }
                                    });
                                    return;
                                }
                                return;
                            }
                            return;
                        }
                        MyRoundLinear myRoundLinear3 = dialogVideoMenu2.i;
                        if (myRoundLinear3 != null && dialogVideoMenu2.f15026a != null) {
                            if (MainApp.K1) {
                                int i7 = MainApp.E1;
                                myRoundLinear3.n = -16777216;
                                myRoundLinear3.m = i7;
                                myRoundLinear3.setBgOutColor(-1066044043);
                                dialogVideoMenu2.j.setImageResource(R.drawable.outline_picture_in_picture_alt_dark_24);
                                dialogVideoMenu2.k.setImageResource(R.drawable.outline_fullscreen_dark_24);
                                dialogVideoMenu2.l.setImageResource(R.drawable.outline_download_dark_24);
                                dialogVideoMenu2.j.setBgNorColor(-11513776);
                                dialogVideoMenu2.k.setBgNorColor(-11513776);
                                dialogVideoMenu2.l.setBgNorColor(-11513776);
                                dialogVideoMenu2.j.setBgPreColor(-12632257);
                                dialogVideoMenu2.k.setBgPreColor(-12632257);
                                dialogVideoMenu2.l.setBgPreColor(-12632257);
                            } else {
                                int i8 = MainApp.E1;
                                myRoundLinear3.n = -1;
                                myRoundLinear3.m = i8;
                                myRoundLinear3.setBgOutColor(-2139785867);
                                dialogVideoMenu2.j.setImageResource(R.drawable.outline_picture_in_picture_alt_black_24);
                                dialogVideoMenu2.k.setImageResource(R.drawable.outline_fullscreen_black_24);
                                dialogVideoMenu2.l.setImageResource(R.drawable.outline_download_black_24);
                                dialogVideoMenu2.j.setBgNorColor(-460552);
                                dialogVideoMenu2.k.setBgNorColor(-460552);
                                dialogVideoMenu2.l.setBgNorColor(-460552);
                                dialogVideoMenu2.j.setBgPreColor(-2039584);
                                dialogVideoMenu2.k.setBgPreColor(-2039584);
                                dialogVideoMenu2.l.setBgPreColor(-2039584);
                            }
                            MyButtonImage myButtonImage6 = dialogVideoMenu2.j;
                            if (PrefZone.o) {
                                i = 0;
                            } else {
                                i = 8;
                            }
                            myButtonImage6.setVisibility(i);
                            MyButtonImage myButtonImage7 = dialogVideoMenu2.k;
                            if (PrefZone.p) {
                                i2 = 0;
                            } else {
                                i2 = 8;
                            }
                            myButtonImage7.setVisibility(i2);
                            MyButtonImage myButtonImage8 = dialogVideoMenu2.l;
                            if (!PrefZone.q) {
                                i4 = 8;
                            }
                            myButtonImage8.setVisibility(i4);
                            dialogVideoMenu2.i.c(true, true);
                            dialogVideoMenu2.i.setVisibility(4);
                            dialogVideoMenu2.i.setElevation(MainApp.H1);
                            dialogVideoMenu2.i.setOnClickListener(new Object());
                            dialogVideoMenu2.j.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogVideoMenu.3
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view2) {
                                    VideoMenuListener videoMenuListener2 = DialogVideoMenu.this.b;
                                    if (videoMenuListener2 != null) {
                                        videoMenuListener2.b(2);
                                    }
                                }
                            });
                            dialogVideoMenu2.k.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogVideoMenu.4
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view2) {
                                    VideoMenuListener videoMenuListener2 = DialogVideoMenu.this.b;
                                    if (videoMenuListener2 != null) {
                                        videoMenuListener2.b(1);
                                    }
                                }
                            });
                            dialogVideoMenu2.l.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogVideoMenu.5
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view2) {
                                    VideoMenuListener videoMenuListener2 = DialogVideoMenu.this.b;
                                    if (videoMenuListener2 != null) {
                                        videoMenuListener2.b(0);
                                    }
                                }
                            });
                            MyWebBody myWebBody4 = dialogVideoMenu2.f15027c;
                            if (myWebBody4 != null) {
                                myWebBody4.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogVideoMenu.6
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        DialogVideoMenu.a(DialogVideoMenu.this);
                                    }
                                });
                            }
                        }
                    }
                });
            }
        });
    }

    public static void a(DialogVideoMenu dialogVideoMenu) {
        if (dialogVideoMenu.f15027c != null && dialogVideoMenu.d != null) {
            try {
                dialogVideoMenu.g = dialogVideoMenu.i;
                FrameLayout frameLayout = new FrameLayout(dialogVideoMenu.f15026a);
                dialogVideoMenu.h = frameLayout;
                frameLayout.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogVideoMenu.12
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        DialogVideoMenu.this.c();
                    }
                });
                dialogVideoMenu.h.addView(dialogVideoMenu.g, dialogVideoMenu.d());
                dialogVideoMenu.f15027c.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogVideoMenu.13
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogVideoMenu dialogVideoMenu2 = DialogVideoMenu.this;
                        FrameLayout frameLayout2 = dialogVideoMenu2.h;
                        if (frameLayout2 == null) {
                            return;
                        }
                        dialogVideoMenu2.f15027c.addView(frameLayout2, -1, -1);
                        dialogVideoMenu2.f15027c.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogVideoMenu.13.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                MyRoundLinear myRoundLinear;
                                final DialogVideoMenu dialogVideoMenu3 = DialogVideoMenu.this;
                                if (dialogVideoMenu3.f15027c != null && (myRoundLinear = dialogVideoMenu3.g) != null && dialogVideoMenu3.p == null && dialogVideoMenu3.q == null) {
                                    myRoundLinear.setPivotX(dialogVideoMenu3.n);
                                    dialogVideoMenu3.g.setPivotY(dialogVideoMenu3.o);
                                    dialogVideoMenu3.r = 0.0f;
                                    dialogVideoMenu3.s = false;
                                    ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
                                    dialogVideoMenu3.p = ofFloat;
                                    ofFloat.setDuration(200L);
                                    a.v(dialogVideoMenu3.p);
                                    dialogVideoMenu3.p.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.dialog.DialogVideoMenu.14
                                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                                        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                                            DialogVideoMenu dialogVideoMenu4 = DialogVideoMenu.this;
                                            if (dialogVideoMenu4.p != null && dialogVideoMenu4.g != null) {
                                                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                                                if (dialogVideoMenu4.p != null && dialogVideoMenu4.g != null) {
                                                    dialogVideoMenu4.r = floatValue;
                                                    if (!dialogVideoMenu4.s) {
                                                        dialogVideoMenu4.s = true;
                                                        MainApp.N(dialogVideoMenu4.f15026a, dialogVideoMenu4.t);
                                                    }
                                                }
                                            }
                                        }
                                    });
                                    dialogVideoMenu3.p.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.dialog.DialogVideoMenu.15
                                        @Override // android.animation.Animator.AnimatorListener
                                        public final void onAnimationCancel(Animator animator) {
                                            DialogVideoMenu dialogVideoMenu4 = DialogVideoMenu.this;
                                            if (dialogVideoMenu4.p != null) {
                                                dialogVideoMenu4.p = null;
                                                MyRoundLinear myRoundLinear2 = dialogVideoMenu4.g;
                                                if (myRoundLinear2 == null) {
                                                    return;
                                                }
                                                myRoundLinear2.invalidate();
                                            }
                                        }

                                        @Override // android.animation.Animator.AnimatorListener
                                        public final void onAnimationEnd(Animator animator) {
                                            final DialogVideoMenu dialogVideoMenu4 = DialogVideoMenu.this;
                                            if (dialogVideoMenu4.p == null) {
                                                return;
                                            }
                                            MainApp.N(dialogVideoMenu4.f15026a, new Runnable() { // from class: com.mycompany.app.dialog.DialogVideoMenu.17
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    DialogVideoMenu dialogVideoMenu5 = DialogVideoMenu.this;
                                                    if (dialogVideoMenu5.p != null) {
                                                        dialogVideoMenu5.p = null;
                                                        if (dialogVideoMenu5.g == null) {
                                                            return;
                                                        }
                                                        DialogVideoMenu.b(dialogVideoMenu5, 1.0f);
                                                        dialogVideoMenu5.g.invalidate();
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
                                    dialogVideoMenu3.p.start();
                                }
                            }
                        });
                    }
                });
            } catch (Exception unused) {
                MyRoundLinear myRoundLinear = dialogVideoMenu.i;
                if (myRoundLinear != null) {
                    myRoundLinear.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogVideoMenu.11
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogVideoMenu.this.c();
                        }
                    });
                }
            }
        }
    }

    public static void b(DialogVideoMenu dialogVideoMenu, float f) {
        MyRoundLinear myRoundLinear = dialogVideoMenu.g;
        if (myRoundLinear != null) {
            myRoundLinear.setAlpha(f);
            dialogVideoMenu.g.setScaleX(f);
            dialogVideoMenu.g.setScaleY(f);
            if (dialogVideoMenu.g.getVisibility() != 0) {
                dialogVideoMenu.g.setVisibility(0);
            }
        }
    }

    public final boolean c() {
        MyRoundLinear myRoundLinear = this.g;
        if (myRoundLinear == null || this.q != null) {
            return false;
        }
        myRoundLinear.setPivotX(this.n);
        this.g.setPivotY(this.o);
        this.u = 1.0f;
        this.v = false;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
        this.q = ofFloat;
        ofFloat.setDuration(200L);
        a.r(this.q);
        this.q.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.dialog.DialogVideoMenu.18
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                DialogVideoMenu dialogVideoMenu = DialogVideoMenu.this;
                if (dialogVideoMenu.q != null && dialogVideoMenu.g != null) {
                    float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    if (dialogVideoMenu.q != null && dialogVideoMenu.g != null) {
                        dialogVideoMenu.u = floatValue;
                        if (!dialogVideoMenu.v) {
                            dialogVideoMenu.v = true;
                            MainApp.N(dialogVideoMenu.f15026a, dialogVideoMenu.w);
                        }
                    }
                }
            }
        });
        this.q.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.dialog.DialogVideoMenu.19
            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationCancel(Animator animator) {
                DialogVideoMenu dialogVideoMenu = DialogVideoMenu.this;
                if (dialogVideoMenu.q == null) {
                    return;
                }
                dialogVideoMenu.q = null;
                dialogVideoMenu.e();
            }

            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                final DialogVideoMenu dialogVideoMenu = DialogVideoMenu.this;
                if (dialogVideoMenu.q == null) {
                    return;
                }
                MainApp.N(dialogVideoMenu.f15026a, new Runnable() { // from class: com.mycompany.app.dialog.DialogVideoMenu.21
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogVideoMenu dialogVideoMenu2 = DialogVideoMenu.this;
                        if (dialogVideoMenu2.q == null) {
                            return;
                        }
                        dialogVideoMenu2.q = null;
                        dialogVideoMenu2.e();
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
            this.p = null;
        }
        this.q.start();
        return true;
    }

    public final FrameLayout.LayoutParams d() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        boolean z = this.e;
        if (!z && PrefZone.o && PrefZone.p && PrefZone.q) {
            i = 208;
        } else {
            i = 144;
        }
        int[] iArr = new int[2];
        this.f15027c.getLocationOnScreen(iArr);
        int i6 = 0;
        int paddingLeft = this.f15027c.getPaddingLeft() + iArr[0];
        int paddingTop = this.f15027c.getPaddingTop() + iArr[1];
        int rectWidth = this.f15027c.getRectWidth();
        int rectHeight = this.f15027c.getRectHeight();
        this.d.getLocationOnScreen(iArr);
        int i7 = (MainApp.g1 / 2) + (iArr[0] - paddingLeft);
        int i8 = iArr[1] - paddingTop;
        int round = Math.round(MainUtil.G(this.f15026a, i));
        int i9 = MainApp.i1;
        int i10 = i7 - (round / 2);
        int i11 = i10 + round;
        if (z) {
            i2 = PrefZone.r;
        } else {
            i2 = PrefZone.n;
        }
        if (i2 == 1) {
            i5 = i8 + MainApp.g1;
            i3 = i5 + i9;
            i4 = i5;
        } else {
            i3 = MainApp.G1 + i8;
            i4 = i8;
            i5 = i3 - i9;
        }
        if (i10 < 0) {
            i11 = round;
            i10 = 0;
        } else if (i11 > rectWidth) {
            i10 = rectWidth - round;
            i11 = rectWidth;
        }
        if (i5 >= 0) {
            if (i3 > rectHeight) {
                i6 = rectHeight - i9;
            } else {
                i6 = i5;
            }
        }
        this.n = i7 - i10;
        if (i6 == 0) {
            this.o = (MainApp.g1 / 2) + i4;
        } else {
            this.o = i4 - i6;
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(round, i9);
        if (this.f) {
            layoutParams.rightMargin = rectWidth - i11;
        } else {
            layoutParams.leftMargin = i10;
        }
        layoutParams.topMargin = i6;
        return layoutParams;
    }

    public final void e() {
        if (this.f15026a == null) {
            return;
        }
        MyWebBody myWebBody = this.f15027c;
        if (myWebBody != null) {
            myWebBody.removeView(this.h);
            this.f15027c = null;
        }
        this.g = null;
        this.h = null;
        VideoMenuListener videoMenuListener = this.b;
        if (videoMenuListener != null) {
            videoMenuListener.a();
            this.b = null;
        }
        MyRoundLinear myRoundLinear = this.i;
        if (myRoundLinear != null) {
            myRoundLinear.a();
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
        this.f15026a = null;
        this.d = null;
    }
}
