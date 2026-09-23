package com.mycompany.app.web;

import android.app.PendingIntent;
import android.app.PictureInPictureParams;
import android.app.RemoteAction;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Typeface;
import android.graphics.drawable.Icon;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Rational;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebChromeClient;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.content.ContextCompat;
import androidx.work.impl.workers.a;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.dialog.DialogSeekAudio;
import com.mycompany.app.dialog.DialogSeekBright;
import com.mycompany.app.image.ImageSizeListener;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefPdf;
import com.mycompany.app.pref.PrefSecret;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.pref.PrefVideo;
import com.mycompany.app.pref.PrefZtwo;
import com.mycompany.app.setting.SettingVideo;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.video.VideoActivity;
import com.mycompany.app.view.MyButtonCheck;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyCoverView;
import com.mycompany.app.view.MyFadeFrame;
import com.mycompany.app.view.MyFadeLinear;
import com.mycompany.app.view.MyFadeListener;
import com.mycompany.app.view.MyFadeRelative;
import com.mycompany.app.view.MyPopupAdapter;
import com.mycompany.app.view.MyPopupMenu;
import com.mycompany.app.view.MyProgressVideo;
import com.mycompany.app.view.MySizeFrame;
import com.mycompany.app.view.MyTextView;
import com.mycompany.app.view.MyWebBody;
import com.mycompany.app.view.MyWebSafe;
import com.mycompany.app.web.WebVideoFrame;
import com.mycompany.app.web.WebVideoProgress;
import com.mycompany.app.web.WebViewActivity;
import java.util.ArrayList;
import java.util.concurrent.ExecutorService;

/* loaded from: classes3.dex */
public class WebVideoFull extends WebVideoFrame {
    public static final float[] o1 = {0.25f, 0.5f, 0.75f, 1.0f, 1.25f, 1.5f, 1.75f, 2.0f};
    public MyButtonCheck A;
    public boolean A0;
    public MyButtonImage B;
    public boolean B0;
    public MyButtonImage C;
    public boolean C0;
    public MyButtonImage D;
    public boolean D0;
    public MyButtonCheck E;
    public int E0;
    public MyButtonImage F;
    public int F0;
    public MyButtonImage G;
    public float G0;
    public MyTextView H;
    public boolean H0;
    public MyButtonImage I;
    public boolean I0;
    public MyTextView J;
    public boolean J0;
    public WebVideoProgress K;
    public boolean K0;
    public WebVideoProgress L;
    public ExecutorService L0;
    public WebVideoProgress M;
    public boolean M0;
    public View N;
    public boolean N0;
    public View O;
    public boolean O0;
    public View P;
    public boolean P0;
    public boolean Q;
    public int Q0;
    public MyFadeFrame R;
    public int R0;
    public MyFadeFrame S;
    public int S0;
    public int T;
    public int T0;
    public String U;
    public int U0;
    public boolean V;
    public boolean V0;
    public boolean W;
    public boolean W0;
    public boolean X0;
    public boolean Y0;
    public boolean Z0;
    public boolean a0;
    public float a1;
    public boolean b0;
    public int b1;

    /* renamed from: c, reason: collision with root package name */
    public MainActivity f19574c;
    public long c0;
    public boolean c1;
    public boolean d0;
    public final Runnable d1;
    public long e0;
    public boolean e1;
    public Context f;
    public long f0;
    public float f1;
    public boolean g;
    public long g0;
    public float g1;
    public boolean h;
    public boolean h0;
    public String h1;
    public boolean i;
    public GestureDetector i0;
    public final Runnable i1;
    public ViewGroup j;
    public boolean j0;
    public MotionEvent j1;
    public WebNestView k;
    public float k0;
    public final Runnable k1;
    public String l;
    public float l0;
    public int l1;
    public View m;
    public int m0;
    public long m1;
    public WebChromeClient.CustomViewCallback n;
    public boolean n0;
    public long n1;
    public WebVideoFrame.VideoFrameListener o;
    public boolean o0;
    public MySizeFrame p;
    public boolean p0;
    public MyFadeRelative q;
    public boolean q0;
    public AppCompatTextView r;
    public boolean r0;
    public MyButtonImage s;
    public boolean s0;
    public LinearLayout t;
    public MyPopupMenu t0;
    public MyButtonImage u;
    public MyPopupMenu u0;
    public MyButtonImage v;
    public MyPopupMenu v0;
    public MyButtonImage w;
    public boolean w0;
    public MyButtonImage x;
    public DialogSeekBright x0;
    public MyButtonImage y;
    public DialogSeekAudio y0;
    public MyButtonImage z;
    public PictureInPictureParams.Builder z0;

    /* renamed from: com.mycompany.app.web.WebVideoFull$28, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass28 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* renamed from: com.mycompany.app.web.WebVideoFull$32, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass32 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* renamed from: com.mycompany.app.web.WebVideoFull$39, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass39 implements Runnable {

        /* renamed from: com.mycompany.app.web.WebVideoFull$39$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 implements Runnable {
            public AnonymousClass1() {
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r10v0, types: [android.widget.LinearLayout, com.mycompany.app.web.WebVideoProgress, android.view.View, com.mycompany.app.view.MyFadeLinear, android.view.ViewGroup] */
            /* JADX WARN: Type inference failed for: r13v4, types: [android.widget.LinearLayout, com.mycompany.app.web.WebVideoProgress, android.view.View, com.mycompany.app.view.MyFadeLinear, android.view.ViewGroup] */
            /* JADX WARN: Type inference failed for: r6v5, types: [android.widget.LinearLayout, com.mycompany.app.web.WebVideoProgress, android.view.View, com.mycompany.app.view.MyFadeLinear, android.view.ViewGroup] */
            @Override // java.lang.Runnable
            public final void run() {
                MySizeFrame mySizeFrame;
                MainActivity mainActivity;
                int i;
                int min;
                WebVideoFull webVideoFull = WebVideoFull.this;
                if (webVideoFull.K == null && (mySizeFrame = webVideoFull.p) != 0 && (mainActivity = webVideoFull.f19574c) != null) {
                    int G = (int) MainUtil.G(mainActivity, 20.0f);
                    int G2 = (int) MainUtil.G(mainActivity, 36.0f);
                    int G3 = (int) MainUtil.G(mainActivity, 90.0f);
                    int G4 = (int) MainUtil.G(mainActivity, 10.0f);
                    int G5 = (int) MainUtil.G(mainActivity, 10.0f);
                    int G6 = (int) MainUtil.G(mainActivity, 160.0f);
                    ?? myFadeLinear = new MyFadeLinear(mainActivity);
                    myFadeLinear.setPadding(G, G, G, G);
                    myFadeLinear.setGravity(16);
                    myFadeLinear.setBaselineAligned(false);
                    myFadeLinear.setOrientation(0);
                    myFadeLinear.setTouchable(true);
                    myFadeLinear.setAutoHide(true);
                    myFadeLinear.setVisibility(8);
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
                    layoutParams.gravity = 17;
                    mySizeFrame.addView((View) myFadeLinear, layoutParams);
                    ImageView imageView = new ImageView(mainActivity);
                    imageView.setImageResource(R.drawable.outline_brightness_6_white_36);
                    LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(G2, G2);
                    layoutParams2.gravity = 8388627;
                    myFadeLinear.addView(imageView, layoutParams2);
                    MyTextView myTextView = new MyTextView(mainActivity);
                    myTextView.setGravity(1);
                    myTextView.setTextSize(1, 40.0f);
                    myTextView.setTextColor(-1);
                    Typeface typeface = Typeface.DEFAULT;
                    myTextView.setTypeface(Typeface.create(typeface, 1));
                    myTextView.setIncludeFontPadding(false);
                    myTextView.setOutlineColor(-16777216);
                    myTextView.setMinWidth(G3);
                    LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams3.gravity = 8388627;
                    layoutParams3.setMarginStart(G4);
                    myFadeLinear.addView(myTextView, layoutParams3);
                    MyProgressVideo myProgressVideo = new MyProgressVideo(mainActivity);
                    LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(G5, G6);
                    layoutParams4.setMarginStart(G);
                    myFadeLinear.addView(myProgressVideo, layoutParams4);
                    ?? myFadeLinear2 = new MyFadeLinear(mainActivity);
                    myFadeLinear2.setPadding(G, G, G, G);
                    myFadeLinear2.setGravity(16);
                    myFadeLinear2.setBaselineAligned(false);
                    myFadeLinear2.setOrientation(0);
                    myFadeLinear2.setTouchable(true);
                    myFadeLinear2.setAutoHide(true);
                    myFadeLinear2.setVisibility(8);
                    FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(-2, -2);
                    layoutParams5.gravity = 17;
                    mySizeFrame.addView((View) myFadeLinear2, layoutParams5);
                    ImageView imageView2 = new ImageView(mainActivity);
                    imageView2.setImageResource(R.drawable.ic_volume);
                    LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(G2, G2);
                    layoutParams6.gravity = 8388627;
                    myFadeLinear2.addView(imageView2, layoutParams6);
                    MyTextView myTextView2 = new MyTextView(mainActivity);
                    myTextView2.setGravity(1);
                    myTextView2.setTextSize(1, 40.0f);
                    myTextView2.setTextColor(-1);
                    myTextView2.setTypeface(Typeface.create(typeface, 1));
                    myTextView2.setIncludeFontPadding(false);
                    myTextView2.setOutlineColor(-16777216);
                    myTextView2.setMinWidth(G3);
                    LinearLayout.LayoutParams layoutParams7 = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams7.gravity = 8388627;
                    layoutParams7.setMarginStart(G4);
                    myFadeLinear2.addView(myTextView2, layoutParams7);
                    MyProgressVideo myProgressVideo2 = new MyProgressVideo(mainActivity);
                    LinearLayout.LayoutParams layoutParams8 = new LinearLayout.LayoutParams(G5, G6);
                    layoutParams8.setMarginStart(G);
                    myFadeLinear2.addView(myProgressVideo2, layoutParams8);
                    ?? myFadeLinear3 = new MyFadeLinear(mainActivity);
                    myFadeLinear3.setPadding(0, G, 0, G);
                    myFadeLinear3.setOrientation(1);
                    myFadeLinear3.setTouchable(true);
                    myFadeLinear3.setAutoHide(true);
                    myFadeLinear3.setVisibility(8);
                    FrameLayout.LayoutParams layoutParams9 = new FrameLayout.LayoutParams(-1, -2);
                    layoutParams9.gravity = 8388627;
                    mySizeFrame.addView((View) myFadeLinear3, layoutParams9);
                    MyTextView myTextView3 = new MyTextView(mainActivity);
                    myTextView3.setGravity(1);
                    myTextView3.setSingleLine(true);
                    myTextView3.setTextSize(1, 40.0f);
                    myTextView3.setTextColor(-1);
                    myTextView3.setTypeface(Typeface.create(typeface, 1));
                    myTextView3.setIncludeFontPadding(false);
                    myTextView3.setOutlineColor(-16777216);
                    LinearLayout.LayoutParams layoutParams10 = new LinearLayout.LayoutParams(-1, -2);
                    layoutParams10.setMarginStart(MainApp.i1);
                    layoutParams10.setMarginEnd(MainApp.i1);
                    myFadeLinear3.addView(myTextView3, layoutParams10);
                    int width = mySizeFrame.getWidth();
                    int height = mySizeFrame.getHeight();
                    if (width == 0 || height == 0 || (min = Math.min(width, height) - (MainApp.i1 * 2)) <= 0) {
                        i = -1;
                    } else {
                        myFadeLinear3.I = MainApp.f1 + min;
                        i = min;
                    }
                    MyProgressVideo myProgressVideo3 = new MyProgressVideo(mainActivity);
                    LinearLayout.LayoutParams layoutParams11 = new LinearLayout.LayoutParams(i, G5);
                    layoutParams11.gravity = 1;
                    layoutParams11.topMargin = G;
                    myFadeLinear3.addView(myProgressVideo3, layoutParams11);
                    webVideoFull.K = myFadeLinear;
                    webVideoFull.L = myFadeLinear2;
                    webVideoFull.M = myFadeLinear3;
                    myFadeLinear.l(imageView, myTextView, myProgressVideo);
                    webVideoFull.L.l(imageView2, myTextView2, myProgressVideo2);
                    webVideoFull.M.l(null, myTextView3, myProgressVideo3);
                }
                ViewGroup viewGroup = webVideoFull.j;
                if (viewGroup == null) {
                    return;
                }
                viewGroup.post(new Runnable() { // from class: com.mycompany.app.web.WebVideoFull.39.1.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        AnonymousClass39 anonymousClass39 = AnonymousClass39.this;
                        WebVideoFull.C(WebVideoFull.this);
                        ViewGroup viewGroup2 = WebVideoFull.this.j;
                        if (viewGroup2 == null) {
                            return;
                        }
                        viewGroup2.post(new Runnable() { // from class: com.mycompany.app.web.WebVideoFull.39.1.1.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                final WebVideoFull webVideoFull2 = WebVideoFull.this;
                                if (webVideoFull2.f19574c != null) {
                                    webVideoFull2.c0(new Runnable() { // from class: com.mycompany.app.web.WebVideoFull.40
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            WebVideoFull webVideoFull3 = WebVideoFull.this;
                                            WebVideoFull.D(webVideoFull3);
                                            webVideoFull3.M0 = false;
                                        }
                                    });
                                    ViewGroup viewGroup3 = webVideoFull2.j;
                                    if (viewGroup3 == null) {
                                        return;
                                    }
                                    viewGroup3.postDelayed(new Runnable() { // from class: com.mycompany.app.web.WebVideoFull.41
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            WebVideoFull.this.K0 = false;
                                        }
                                    }, 1000L);
                                }
                            }
                        });
                    }
                });
            }
        }

        public AnonymousClass39() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            MyFadeRelative myFadeRelative;
            MainActivity mainActivity;
            WebVideoFull webVideoFull = WebVideoFull.this;
            if (webVideoFull.A == null && (myFadeRelative = webVideoFull.q) != null && (mainActivity = webVideoFull.f19574c) != null) {
                int G = (int) MainUtil.G(mainActivity, 14.0f);
                int G2 = (int) MainUtil.G(mainActivity, 14.0f);
                int G3 = (int) MainUtil.G(mainActivity, 1.0f);
                int G4 = (int) MainUtil.G(mainActivity, 80.0f);
                int G5 = (int) MainUtil.G(mainActivity, 64.0f);
                int i = R.id.wv_align_1;
                int i2 = R.id.wv_align_2;
                int i3 = R.id.wv_icon_play;
                MyButtonCheck myButtonCheck = new MyButtonCheck(mainActivity);
                myButtonCheck.setPadding(G2, G2, G2, G2);
                myButtonCheck.p(R.drawable.outline_lock_red_24, R.drawable.outline_lock_white_24);
                float f = G;
                myButtonCheck.o(f, MainApp.k1);
                myButtonCheck.m(-16777216, -1586137739);
                int i4 = MainApp.g1;
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i4, i4);
                layoutParams.addRule(21);
                layoutParams.topMargin = (MainApp.g1 * 2) + MainApp.F1;
                layoutParams.setMarginEnd(MainApp.G1);
                myFadeRelative.addView(myButtonCheck, layoutParams);
                FrameLayout frameLayout = new FrameLayout(mainActivity);
                frameLayout.setId(i);
                frameLayout.setVisibility(4);
                RelativeLayout.LayoutParams g = a.g(G3, -2, 12);
                g.bottomMargin = G4;
                myFadeRelative.addView(frameLayout, g);
                View view = new View(mainActivity);
                view.setVisibility(8);
                frameLayout.addView(view, G3, G5);
                View view2 = new View(mainActivity);
                view2.setVisibility(8);
                frameLayout.addView(view2, G3, (int) MainUtil.G(mainActivity, 12.0f));
                FrameLayout frameLayout2 = new FrameLayout(mainActivity);
                frameLayout2.setId(i2);
                frameLayout2.setVisibility(4);
                RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(G3, -2);
                layoutParams2.addRule(12);
                layoutParams2.bottomMargin = G4;
                myFadeRelative.addView(frameLayout2, layoutParams2);
                View view3 = new View(mainActivity);
                view3.setVisibility(8);
                frameLayout2.addView(view3, G3, G5);
                MyButtonImage myButtonImage = new MyButtonImage(mainActivity);
                myButtonImage.setId(i3);
                myButtonImage.setPadding(G2, G2, G2, G2);
                ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_INSIDE;
                myButtonImage.setScaleType(scaleType);
                myButtonImage.setImageResource(R.drawable.baseline_pause_white_24);
                myButtonImage.n(f, MainApp.k1);
                myButtonImage.k(-16777216, -1586137739);
                myButtonImage.setVisibility(8);
                int i5 = MainApp.g1;
                RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(i5, i5);
                layoutParams3.addRule(2, i);
                layoutParams3.addRule(14);
                myFadeRelative.addView(myButtonImage, layoutParams3);
                MyButtonImage myButtonImage2 = new MyButtonImage(mainActivity);
                myButtonImage2.setPadding(G2, G2, G2, G2);
                myButtonImage2.setScaleType(scaleType);
                myButtonImage2.setImageResource(R.drawable.baseline_fast_rewind_white_24);
                myButtonImage2.n(f, MainApp.k1);
                myButtonImage2.k(-16777216, -1586137739);
                myButtonImage2.setVisibility(8);
                int i6 = MainApp.g1;
                RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(i6, i6);
                layoutParams4.addRule(2, i);
                layoutParams4.addRule(16, i3);
                layoutParams4.setMarginEnd((int) MainUtil.G(mainActivity, 32.0f));
                myFadeRelative.addView(myButtonImage2, layoutParams4);
                MyButtonImage myButtonImage3 = new MyButtonImage(mainActivity);
                myButtonImage3.setPadding(G2, G2, G2, G2);
                myButtonImage3.setScaleType(scaleType);
                myButtonImage3.setImageResource(R.drawable.baseline_fast_forward_white_24);
                myButtonImage3.n(f, MainApp.k1);
                myButtonImage3.k(-16777216, -1586137739);
                myButtonImage3.setVisibility(8);
                int i7 = MainApp.g1;
                RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(i7, i7);
                layoutParams5.addRule(2, i);
                layoutParams5.addRule(17, i3);
                layoutParams5.setMarginStart((int) MainUtil.G(mainActivity, 32.0f));
                myFadeRelative.addView(myButtonImage3, layoutParams5);
                MyButtonCheck myButtonCheck2 = new MyButtonCheck(mainActivity);
                myButtonCheck2.setPadding(G2, G2, G2, G2);
                myButtonCheck2.p(R.drawable.outline_radio_button_checked_white_24, R.drawable.outline_radio_button_unchecked_dark_24);
                myButtonCheck2.o(f, MainApp.k1);
                myButtonCheck2.m(-16777216, -1586137739);
                int i8 = MainApp.g1;
                RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(i8, i8);
                layoutParams6.addRule(2, i2);
                layoutParams6.setMarginStart(MainApp.G1);
                myFadeRelative.addView(myButtonCheck2, layoutParams6);
                MyButtonImage myButtonImage4 = new MyButtonImage(mainActivity);
                myButtonImage4.setPadding(G2, G2, G2, G2);
                myButtonImage4.setScaleType(scaleType);
                myButtonImage4.setImageResource(R.drawable.outline_download_white_24);
                myButtonImage4.n(f, MainApp.k1);
                myButtonImage4.k(-16777216, -1586137739);
                myButtonImage4.setVisibility(8);
                int i9 = MainApp.g1;
                RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(i9, i9);
                layoutParams7.addRule(2, i);
                layoutParams7.addRule(21);
                layoutParams7.setMarginEnd(MainApp.G1);
                myFadeRelative.addView(myButtonImage4, layoutParams7);
                MyButtonImage myButtonImage5 = new MyButtonImage(mainActivity);
                myButtonImage5.setPadding(G2, G2, G2, G2);
                myButtonImage5.setScaleType(scaleType);
                myButtonImage5.setImageResource(R.drawable.outline_brightness_6_white_24);
                myButtonImage5.n(f, MainApp.k1);
                myButtonImage5.k(-16777216, -1586137739);
                int i10 = MainApp.g1;
                RelativeLayout.LayoutParams layoutParams8 = new RelativeLayout.LayoutParams(i10, i10);
                layoutParams8.addRule(2, i2);
                layoutParams8.setMarginStart(MainApp.G1);
                layoutParams8.bottomMargin = (int) MainUtil.G(mainActivity, 52.0f);
                myFadeRelative.addView(myButtonImage5, layoutParams8);
                MyTextView myTextView = new MyTextView(mainActivity);
                myTextView.setGravity(16);
                myTextView.setTextSize(1, 16.0f);
                myTextView.setTextColor(-1);
                myTextView.setIncludeFontPadding(false);
                myTextView.setOutlineColor(-16777216);
                RelativeLayout.LayoutParams layoutParams9 = new RelativeLayout.LayoutParams(-2, MainApp.g1);
                layoutParams9.addRule(2, i2);
                layoutParams9.setMarginStart(MainApp.h1);
                layoutParams9.bottomMargin = (int) MainUtil.G(mainActivity, 52.0f);
                myFadeRelative.addView(myTextView, layoutParams9);
                MyButtonImage myButtonImage6 = new MyButtonImage(mainActivity);
                myButtonImage6.setPadding(G2, G2, G2, G2);
                myButtonImage6.setScaleType(scaleType);
                myButtonImage6.setImageResource(R.drawable.outline_volume_up_white_24);
                myButtonImage6.n(f, MainApp.k1);
                myButtonImage6.k(-16777216, -1586137739);
                int i11 = MainApp.g1;
                RelativeLayout.LayoutParams layoutParams10 = new RelativeLayout.LayoutParams(i11, i11);
                layoutParams10.addRule(2, i);
                layoutParams10.addRule(21);
                layoutParams10.setMarginEnd(MainApp.G1);
                layoutParams10.bottomMargin = (int) MainUtil.G(mainActivity, 52.0f);
                myFadeRelative.addView(myButtonImage6, layoutParams10);
                MyTextView myTextView2 = new MyTextView(mainActivity);
                myTextView2.setGravity(16);
                myTextView2.setTextSize(1, 16.0f);
                myTextView2.setTextColor(-1);
                myTextView2.setIncludeFontPadding(false);
                myTextView2.setOutlineColor(-16777216);
                RelativeLayout.LayoutParams layoutParams11 = new RelativeLayout.LayoutParams(-2, MainApp.g1);
                layoutParams11.addRule(2, i);
                layoutParams11.addRule(21);
                layoutParams11.setMarginEnd(MainApp.h1);
                layoutParams11.bottomMargin = (int) MainUtil.G(mainActivity, 52.0f);
                myFadeRelative.addView(myTextView2, layoutParams11);
                webVideoFull.A = myButtonCheck;
                webVideoFull.B = myButtonImage2;
                webVideoFull.C = myButtonImage;
                webVideoFull.D = myButtonImage3;
                webVideoFull.E = myButtonCheck2;
                webVideoFull.F = myButtonImage4;
                webVideoFull.G = myButtonImage5;
                webVideoFull.H = myTextView;
                webVideoFull.I = myButtonImage6;
                webVideoFull.J = myTextView2;
                webVideoFull.N = view;
                webVideoFull.O = view2;
                webVideoFull.P = view3;
            }
            ViewGroup viewGroup = webVideoFull.j;
            if (viewGroup == null) {
                return;
            }
            viewGroup.post(new AnonymousClass1());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.web.WebVideoFull$49, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass49 implements Runnable {
        public AnonymousClass49() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            WebVideoFull webVideoFull = WebVideoFull.this;
            if (webVideoFull.N == null) {
                return;
            }
            webVideoFull.l0();
            webVideoFull.P.setVisibility(0);
        }
    }

    /* renamed from: com.mycompany.app.web.WebVideoFull$73, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass73 implements Runnable {
        public AnonymousClass73() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            WebVideoFull webVideoFull = WebVideoFull.this;
            webVideoFull.setIconPlay(webVideoFull.b0);
            if (webVideoFull.z0 != null) {
                webVideoFull.g0(false, false);
            }
        }
    }

    public WebVideoFull(Context context) {
        super(context);
        this.d1 = new Runnable() { // from class: com.mycompany.app.web.WebVideoFull.65
            @Override // java.lang.Runnable
            public final void run() {
                WebVideoFull webVideoFull = WebVideoFull.this;
                webVideoFull.c1 = false;
                WebVideoFull.K(webVideoFull);
            }
        };
        this.i1 = new Runnable() { // from class: com.mycompany.app.web.WebVideoFull.83
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    WebVideoFull.M(WebVideoFull.this);
                } catch (Exception unused) {
                }
            }
        };
        this.k1 = new Runnable() { // from class: com.mycompany.app.web.WebVideoFull.84
            @Override // java.lang.Runnable
            public final void run() {
                WebVideoFull webVideoFull = WebVideoFull.this;
                webVideoFull.N0 = false;
                WebVideoFull.N(webVideoFull);
            }
        };
        this.f = context;
    }

    public static void B(WebVideoFull webVideoFull) {
        if (PrefVideo.k) {
            PrefVideo.k = false;
            PrefSet.d(13, webVideoFull.f, "mGuideLong2", false);
        }
        MyFadeFrame myFadeFrame = webVideoFull.S;
        if (myFadeFrame != null) {
            myFadeFrame.d(true);
        }
    }

    public static void C(WebVideoFull webVideoFull) {
        float f;
        ViewGroup viewGroup;
        if (webVideoFull.p != null) {
            webVideoFull.setTitle(webVideoFull.U);
            webVideoFull.p.setListener(new ImageSizeListener() { // from class: com.mycompany.app.web.WebVideoFull.1
                @Override // com.mycompany.app.image.ImageSizeListener
                public final void a(View view, int i, int i2) {
                    WebVideoFull webVideoFull2 = WebVideoFull.this;
                    webVideoFull2.P0 = true;
                    webVideoFull2.Q0 = 0;
                    webVideoFull2.R0 = 0;
                    webVideoFull2.S0 = 0;
                    webVideoFull2.T0 = 0;
                    webVideoFull2.Q();
                    WebVideoProgress webVideoProgress = webVideoFull2.M;
                    if (webVideoProgress != null) {
                        webVideoProgress.h(i, i2);
                    }
                }
            });
            webVideoFull.q.setVisibleListener(new MyFadeLinear.MyVisibleListener() { // from class: com.mycompany.app.web.WebVideoFull.2
                @Override // com.mycompany.app.view.MyFadeLinear.MyVisibleListener
                public final void a(boolean z) {
                    ViewGroup viewGroup2;
                    if (!z || (viewGroup2 = WebVideoFull.this.j) == null) {
                        return;
                    }
                    viewGroup2.post(new Runnable() { // from class: com.mycompany.app.web.WebVideoFull.2.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            LinearLayout linearLayout;
                            int width;
                            int height;
                            WebVideoFull webVideoFull2 = WebVideoFull.this;
                            if (!webVideoFull2.P0 || (linearLayout = webVideoFull2.t) == null || (width = linearLayout.getWidth()) == 0 || (height = linearLayout.getHeight()) == 0) {
                                return;
                            }
                            webVideoFull2.P0 = false;
                            int[] iArr = new int[2];
                            linearLayout.getLocationOnScreen(iArr);
                            int i = iArr[0];
                            int i2 = iArr[1];
                            int i3 = MainApp.C1;
                            webVideoFull2.Q0 = i - i3;
                            webVideoFull2.R0 = i2 - i3;
                            webVideoFull2.S0 = width + i + i3;
                            webVideoFull2.T0 = height + i2 + i3;
                        }
                    });
                }
            });
            webVideoFull.K.i(1, new WebVideoProgress.WebVidProgListener() { // from class: com.mycompany.app.web.WebVideoFull.3
                @Override // com.mycompany.app.web.WebVideoProgress.WebVidProgListener
                public final void a(int i) {
                    WebVideoFull.K(WebVideoFull.this);
                }
            });
            webVideoFull.L.i(2, null);
            webVideoFull.M.i(3, new WebVideoProgress.WebVidProgListener() { // from class: com.mycompany.app.web.WebVideoFull.4
                @Override // com.mycompany.app.web.WebVideoProgress.WebVidProgListener
                public final void a(int i) {
                    WebVideoFull.this.c0 = i;
                }
            });
            webVideoFull.s.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.web.WebVideoFull.5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    WebVideoFull webVideoFull2 = WebVideoFull.this;
                    if (!webVideoFull2.O0) {
                        webVideoFull2.O0 = true;
                        ViewGroup viewGroup2 = webVideoFull2.j;
                        if (viewGroup2 == null) {
                            return;
                        }
                        viewGroup2.postDelayed(new Runnable() { // from class: com.mycompany.app.web.WebVideoFull.5.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                WebVideoFull webVideoFull3 = WebVideoFull.this;
                                WebVideoFrame.VideoFrameListener videoFrameListener = webVideoFull3.o;
                                if (videoFrameListener != null) {
                                    WebViewActivity webViewActivity = WebViewActivity.this;
                                    int i = WebViewActivity.Fo;
                                    webViewActivity.b5();
                                }
                                WebVideoFull.E(webVideoFull3);
                            }
                        }, 100L);
                    }
                }
            });
            webVideoFull.f0();
            webVideoFull.u.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.web.WebVideoFull.6
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    WebVideoFull webVideoFull2 = WebVideoFull.this;
                    if (!webVideoFull2.O0) {
                        webVideoFull2.O0 = true;
                        ViewGroup viewGroup2 = webVideoFull2.j;
                        if (viewGroup2 == null) {
                            return;
                        }
                        viewGroup2.postDelayed(new Runnable() { // from class: com.mycompany.app.web.WebVideoFull.6.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                boolean z;
                                boolean z2;
                                final WebVideoFull webVideoFull3 = WebVideoFull.this;
                                MyButtonImage myButtonImage = webVideoFull3.u;
                                if (myButtonImage == null) {
                                    return;
                                }
                                if (webVideoFull3.t0 == null) {
                                    webVideoFull3.V();
                                    MyFadeRelative myFadeRelative = webVideoFull3.q;
                                    boolean z3 = false;
                                    if (myFadeRelative != null) {
                                        myFadeRelative.setAutoHide(false);
                                    }
                                    ArrayList arrayList = new ArrayList();
                                    int i = R.string.rotation;
                                    if (PrefVideo.o == 0) {
                                        z = true;
                                    } else {
                                        z = false;
                                    }
                                    arrayList.add(new MyPopupAdapter.PopMenuItem(0, i, z));
                                    int i2 = R.string.view_port;
                                    if (PrefVideo.o == 1) {
                                        z2 = true;
                                    } else {
                                        z2 = false;
                                    }
                                    arrayList.add(new MyPopupAdapter.PopMenuItem(1, i2, z2));
                                    int i3 = R.string.view_land;
                                    if (PrefVideo.o == 2) {
                                        z3 = true;
                                    }
                                    arrayList.add(new MyPopupAdapter.PopMenuItem(2, i3, z3));
                                    MyPopupMenu myPopupMenu = new MyPopupMenu(webVideoFull3.f19574c, webVideoFull3.j, myButtonImage, arrayList, true, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.web.WebVideoFull.57
                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                        public final void a() {
                                            float[] fArr = WebVideoFull.o1;
                                            WebVideoFull.this.V();
                                        }

                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                        public final boolean b(View view2, int i4) {
                                            if (PrefVideo.o == i4) {
                                                return true;
                                            }
                                            PrefVideo.o = i4;
                                            WebVideoFull webVideoFull4 = WebVideoFull.this;
                                            PrefSet.f(webVideoFull4.f, 13, i4, "mRotate");
                                            MainUtil.S7(webVideoFull4.f19574c);
                                            webVideoFull4.f0();
                                            return true;
                                        }
                                    });
                                    webVideoFull3.t0 = myPopupMenu;
                                    myPopupMenu.q = true;
                                    MainActivity mainActivity = webVideoFull3.f19574c;
                                    if (mainActivity != null) {
                                        mainActivity.Z0 = myPopupMenu;
                                    }
                                    ViewGroup viewGroup3 = webVideoFull3.j;
                                    if (viewGroup3 != null) {
                                        viewGroup3.post(new Runnable() { // from class: com.mycompany.app.web.WebVideoFull.58
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                WebVideoFull webVideoFull4 = WebVideoFull.this;
                                                if (webVideoFull4.t0 != null) {
                                                    WebVideoFull.J(webVideoFull4);
                                                }
                                            }
                                        });
                                    }
                                }
                                WebVideoFull.E(webVideoFull3);
                            }
                        }, 100L);
                    }
                }
            });
            webVideoFull.v.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.web.WebVideoFull.7
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    WebVideoFull webVideoFull2 = WebVideoFull.this;
                    if (!webVideoFull2.O0) {
                        webVideoFull2.O0 = true;
                        ViewGroup viewGroup2 = webVideoFull2.j;
                        if (viewGroup2 == null) {
                            return;
                        }
                        viewGroup2.postDelayed(new Runnable() { // from class: com.mycompany.app.web.WebVideoFull.7.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                final WebVideoFull webVideoFull3 = WebVideoFull.this;
                                MyButtonImage myButtonImage = webVideoFull3.v;
                                if (myButtonImage == null) {
                                    return;
                                }
                                if (webVideoFull3.I0) {
                                    MainUtil.e8(webVideoFull3.f19574c, R.string.not_support_video);
                                } else if (webVideoFull3.u0 == null) {
                                    webVideoFull3.W();
                                    MyFadeRelative myFadeRelative = webVideoFull3.q;
                                    if (myFadeRelative != null) {
                                        myFadeRelative.setAutoHide(false);
                                    }
                                    ArrayList arrayList = new ArrayList();
                                    int length = MainConst.P.length;
                                    int i = 0;
                                    while (true) {
                                        boolean z = true;
                                        if (i >= length) {
                                            break;
                                        }
                                        int i2 = MainConst.P[i];
                                        if (i != PrefVideo.w) {
                                            z = false;
                                        }
                                        arrayList.add(new MyPopupAdapter.PopMenuItem(i, i2, z));
                                        i++;
                                    }
                                    MyPopupMenu myPopupMenu = new MyPopupMenu(webVideoFull3.f19574c, webVideoFull3.j, myButtonImage, arrayList, true, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.web.WebVideoFull.59
                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                        public final void a() {
                                            float[] fArr = WebVideoFull.o1;
                                            WebVideoFull.this.W();
                                        }

                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                        public final boolean b(View view2, int i3) {
                                            int length2 = i3 % MainConst.P.length;
                                            int i4 = PrefVideo.w;
                                            WebVideoFull webVideoFull4 = WebVideoFull.this;
                                            if (i4 == length2) {
                                                MyFadeRelative myFadeRelative2 = webVideoFull4.q;
                                                if (myFadeRelative2 != null) {
                                                    myFadeRelative2.d(false);
                                                    return true;
                                                }
                                            } else {
                                                PrefVideo.w = length2;
                                                PrefSet.f(webVideoFull4.f, 13, length2, "mRatio2");
                                                WebVideoFull.P(webVideoFull4);
                                                MyFadeRelative myFadeRelative3 = webVideoFull4.q;
                                                if (myFadeRelative3 != null) {
                                                    myFadeRelative3.d(false);
                                                }
                                            }
                                            return true;
                                        }
                                    });
                                    webVideoFull3.u0 = myPopupMenu;
                                    myPopupMenu.q = true;
                                    MainActivity mainActivity = webVideoFull3.f19574c;
                                    if (mainActivity != null) {
                                        mainActivity.Z0 = myPopupMenu;
                                    }
                                    ViewGroup viewGroup3 = webVideoFull3.j;
                                    if (viewGroup3 != null) {
                                        viewGroup3.post(new Runnable() { // from class: com.mycompany.app.web.WebVideoFull.60
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                WebVideoFull webVideoFull4 = WebVideoFull.this;
                                                if (webVideoFull4.u0 != null) {
                                                    WebVideoFull.J(webVideoFull4);
                                                }
                                            }
                                        });
                                    }
                                }
                                WebVideoFull.E(webVideoFull3);
                            }
                        }, 100L);
                    }
                }
            });
            webVideoFull.e0();
            webVideoFull.w.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.web.WebVideoFull.8
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    WebVideoFull webVideoFull2 = WebVideoFull.this;
                    if (!webVideoFull2.O0) {
                        webVideoFull2.O0 = true;
                        ViewGroup viewGroup2 = webVideoFull2.j;
                        if (viewGroup2 == null) {
                            return;
                        }
                        viewGroup2.postDelayed(new Runnable() { // from class: com.mycompany.app.web.WebVideoFull.8.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                WebVideoFull webVideoFull3 = WebVideoFull.this;
                                Context context = webVideoFull3.f;
                                if (context == null) {
                                    return;
                                }
                                if (webVideoFull3.W) {
                                    MainUtil.e8(webVideoFull3.f19574c, R.string.not_support_video);
                                    WebVideoFull.E(webVideoFull3);
                                    return;
                                }
                                boolean z = !PrefVideo.p;
                                PrefVideo.p = z;
                                PrefSet.d(13, context, "mLoop", z);
                                webVideoFull3.e0();
                                if (PrefVideo.p) {
                                    MainUtil.e8(webVideoFull3.f19574c, R.string.repeat_on);
                                } else {
                                    MainUtil.e8(webVideoFull3.f19574c, R.string.repeat_off);
                                }
                                webVideoFull3.setVideoLoop(PrefVideo.p);
                                WebVideoFull.E(webVideoFull3);
                            }
                        }, 100L);
                    }
                }
            });
            webVideoFull.x.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.web.WebVideoFull.9
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    WebVideoFull webVideoFull2 = WebVideoFull.this;
                    if (!webVideoFull2.O0) {
                        webVideoFull2.O0 = true;
                        ViewGroup viewGroup2 = webVideoFull2.j;
                        if (viewGroup2 == null) {
                            return;
                        }
                        viewGroup2.postDelayed(new Runnable() { // from class: com.mycompany.app.web.WebVideoFull.9.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                WebVideoFull webVideoFull3 = WebVideoFull.this;
                                if (!webVideoFull3.W) {
                                    webVideoFull3.getVideoRate();
                                } else {
                                    MainUtil.e8(webVideoFull3.f19574c, R.string.not_support_video);
                                }
                                WebVideoFull.E(webVideoFull3);
                            }
                        }, 100L);
                    }
                }
            });
            webVideoFull.y.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.web.WebVideoFull.10
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    WebVideoFull webVideoFull2 = WebVideoFull.this;
                    if (!webVideoFull2.O0) {
                        webVideoFull2.O0 = true;
                        ViewGroup viewGroup2 = webVideoFull2.j;
                        if (viewGroup2 == null) {
                            return;
                        }
                        viewGroup2.postDelayed(new Runnable() { // from class: com.mycompany.app.web.WebVideoFull.10.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                WebVideoFull webVideoFull3 = WebVideoFull.this;
                                if (webVideoFull3.f19574c == null) {
                                    return;
                                }
                                webVideoFull3.d(true);
                                WebVideoFull.E(webVideoFull3);
                            }
                        }, 100L);
                    }
                }
            });
            webVideoFull.z.setNoti(PrefVideo.x);
            webVideoFull.z.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.web.WebVideoFull.11
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    WebVideoFull webVideoFull2 = WebVideoFull.this;
                    if (!webVideoFull2.O0) {
                        webVideoFull2.O0 = true;
                        ViewGroup viewGroup2 = webVideoFull2.j;
                        if (viewGroup2 == null) {
                            return;
                        }
                        viewGroup2.postDelayed(new Runnable() { // from class: com.mycompany.app.web.WebVideoFull.11.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                AnonymousClass11 anonymousClass11 = AnonymousClass11.this;
                                WebVideoFull webVideoFull3 = WebVideoFull.this;
                                if (webVideoFull3.f19574c == null) {
                                    return;
                                }
                                if (PrefVideo.x) {
                                    PrefVideo.x = false;
                                    PrefSet.d(13, webVideoFull3.f, "mNotiSet2", false);
                                    MyButtonImage myButtonImage = WebVideoFull.this.z;
                                    if (myButtonImage != null) {
                                        myButtonImage.setNoti(false);
                                    }
                                }
                                WebVideoFull.this.A0 = true;
                                Intent intent = new Intent(WebVideoFull.this.f, (Class<?>) SettingVideo.class);
                                intent.putExtra("EXTRA_WEB", true);
                                WebVideoFull.this.f19574c.startActivity(intent);
                                WebVideoFull.E(WebVideoFull.this);
                            }
                        }, 100L);
                    }
                }
            });
            webVideoFull.A.setCheckArea(true);
            webVideoFull.A.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.web.WebVideoFull.12
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    WebVideoFull webVideoFull2 = WebVideoFull.this;
                    if (!webVideoFull2.O0) {
                        webVideoFull2.O0 = true;
                        ViewGroup viewGroup2 = webVideoFull2.j;
                        if (viewGroup2 == null) {
                            return;
                        }
                        viewGroup2.postDelayed(new Runnable() { // from class: com.mycompany.app.web.WebVideoFull.12.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                WebVideoFull webVideoFull3 = WebVideoFull.this;
                                MyButtonCheck myButtonCheck = webVideoFull3.A;
                                if (myButtonCheck != null) {
                                    if (!myButtonCheck.D) {
                                        webVideoFull3.setTouchLock(true);
                                        WebVideoFull.E(webVideoFull3);
                                        return;
                                    }
                                    int i = PrefSecret.D;
                                    if (i == 0) {
                                        webVideoFull3.setTouchLock(false);
                                        WebVideoFull.E(webVideoFull3);
                                    } else {
                                        if (webVideoFull3.f19574c == null) {
                                            return;
                                        }
                                        webVideoFull3.A0 = true;
                                        Intent i2 = MainUtil.i2(webVideoFull3.f, i);
                                        i2.putExtra("EXTRA_PASS", 3);
                                        i2.putExtra("EXTRA_TYPE", 3);
                                        webVideoFull3.f19574c.t0(i2, 2);
                                        WebVideoFull.E(webVideoFull3);
                                    }
                                }
                            }
                        }, 100L);
                    }
                }
            });
            webVideoFull.B.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.web.WebVideoFull.13
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    WebVideoFull webVideoFull2 = WebVideoFull.this;
                    if (webVideoFull2.W) {
                        MainUtil.e8(webVideoFull2.f19574c, R.string.not_support_video);
                    } else if (webVideoFull2.g) {
                        webVideoFull2.i0();
                    } else {
                        webVideoFull2.j0();
                    }
                }
            });
            webVideoFull.C.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.web.WebVideoFull.14
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    WebVideoFull webVideoFull2 = WebVideoFull.this;
                    if (webVideoFull2.W) {
                        MainUtil.e8(webVideoFull2.f19574c, R.string.not_support_video);
                    } else {
                        webVideoFull2.k0();
                    }
                }
            });
            webVideoFull.D.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.web.WebVideoFull.15
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    WebVideoFull webVideoFull2 = WebVideoFull.this;
                    if (webVideoFull2.W) {
                        MainUtil.e8(webVideoFull2.f19574c, R.string.not_support_video);
                    } else if (webVideoFull2.g) {
                        webVideoFull2.j0();
                    } else {
                        webVideoFull2.i0();
                    }
                }
            });
            webVideoFull.E.setNoti(PrefVideo.y);
            MyButtonCheck myButtonCheck = webVideoFull.E;
            if (PrefPdf.u) {
                f = 1.0f;
            } else {
                f = 0.4f;
            }
            myButtonCheck.setAlpha(f);
            webVideoFull.E.q(PrefPdf.u, false);
            webVideoFull.E.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.web.WebVideoFull.16
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    WebVideoFull webVideoFull2 = WebVideoFull.this;
                    if (!webVideoFull2.O0) {
                        webVideoFull2.O0 = true;
                        ViewGroup viewGroup2 = webVideoFull2.j;
                        if (viewGroup2 == null) {
                            return;
                        }
                        viewGroup2.postDelayed(new Runnable() { // from class: com.mycompany.app.web.WebVideoFull.16.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                float f2;
                                WebVideoFull webVideoFull3 = WebVideoFull.this;
                                if (webVideoFull3.E == null) {
                                    return;
                                }
                                if (PrefVideo.y) {
                                    PrefVideo.y = false;
                                    PrefSet.d(13, webVideoFull3.f, "mNotiShow2", false);
                                    webVideoFull3.E.setNoti(false);
                                }
                                boolean z = !PrefPdf.u;
                                PrefPdf.u = z;
                                PrefSet.d(7, webVideoFull3.f, "mVideoIcon2", z);
                                MyButtonCheck myButtonCheck2 = webVideoFull3.E;
                                if (PrefPdf.u) {
                                    f2 = 1.0f;
                                } else {
                                    f2 = 0.4f;
                                }
                                myButtonCheck2.setAlpha(f2);
                                webVideoFull3.E.q(PrefPdf.u, true);
                                webVideoFull3.setIconShow(PrefPdf.u);
                                webVideoFull3.q.i(false);
                                WebVideoFull.E(webVideoFull3);
                            }
                        }, 100L);
                    }
                }
            });
            webVideoFull.F.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.web.WebVideoFull.17
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    WebVideoFull webVideoFull2 = WebVideoFull.this;
                    if (!webVideoFull2.O0) {
                        webVideoFull2.O0 = true;
                        ViewGroup viewGroup2 = webVideoFull2.j;
                        if (viewGroup2 == null) {
                            return;
                        }
                        viewGroup2.postDelayed(new Runnable() { // from class: com.mycompany.app.web.WebVideoFull.17.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                AnonymousClass17 anonymousClass17 = AnonymousClass17.this;
                                WebVideoFrame.VideoFrameListener videoFrameListener = WebVideoFull.this.o;
                                if (videoFrameListener != null) {
                                    videoFrameListener.a();
                                }
                                WebVideoFull.E(WebVideoFull.this);
                            }
                        }, 100L);
                    }
                }
            });
            webVideoFull.G.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.web.WebVideoFull.18
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    WebVideoFull webVideoFull2 = WebVideoFull.this;
                    if (!webVideoFull2.O0) {
                        webVideoFull2.O0 = true;
                        ViewGroup viewGroup2 = webVideoFull2.j;
                        if (viewGroup2 == null) {
                            return;
                        }
                        viewGroup2.postDelayed(new Runnable() { // from class: com.mycompany.app.web.WebVideoFull.18.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                final WebVideoFull webVideoFull3 = WebVideoFull.this;
                                if (webVideoFull3.f19574c != null && webVideoFull3.x0 == null && webVideoFull3.y0 == null) {
                                    webVideoFull3.T();
                                    MyFadeRelative myFadeRelative = webVideoFull3.q;
                                    if (myFadeRelative != null) {
                                        myFadeRelative.d(false);
                                    }
                                    webVideoFull3.J0 = true;
                                    MainApp.K1 = true;
                                    MainActivity mainActivity = webVideoFull3.f19574c;
                                    DialogSeekBright dialogSeekBright = new DialogSeekBright(mainActivity, mainActivity.getWindow(), 1, new DialogSeekAudio.DialogSeekListener() { // from class: com.mycompany.app.web.WebVideoFull.63
                                        @Override // com.mycompany.app.dialog.DialogSeekAudio.DialogSeekListener
                                        public final void a(int i) {
                                            WebVideoProgress webVideoProgress = WebVideoFull.this.K;
                                            if (webVideoProgress != null) {
                                                webVideoProgress.setProgress(i);
                                            }
                                        }
                                    });
                                    webVideoFull3.x0 = dialogSeekBright;
                                    dialogSeekBright.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.web.WebVideoFull.64
                                        @Override // android.content.DialogInterface.OnDismissListener
                                        public final void onDismiss(DialogInterface dialogInterface) {
                                            float[] fArr = WebVideoFull.o1;
                                            WebVideoFull.this.T();
                                        }
                                    });
                                    webVideoFull3.x0.E = true;
                                }
                                WebVideoFull.E(webVideoFull3);
                            }
                        }, 100L);
                    }
                }
            });
            webVideoFull.I.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.web.WebVideoFull.19
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    WebVideoFull webVideoFull2 = WebVideoFull.this;
                    if (!webVideoFull2.O0) {
                        webVideoFull2.O0 = true;
                        ViewGroup viewGroup2 = webVideoFull2.j;
                        if (viewGroup2 == null) {
                            return;
                        }
                        viewGroup2.postDelayed(new Runnable() { // from class: com.mycompany.app.web.WebVideoFull.19.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                final WebVideoFull webVideoFull3 = WebVideoFull.this;
                                if (webVideoFull3.f19574c != null && webVideoFull3.x0 == null && webVideoFull3.y0 == null) {
                                    webVideoFull3.S();
                                    MyFadeRelative myFadeRelative = webVideoFull3.q;
                                    if (myFadeRelative != null) {
                                        myFadeRelative.d(false);
                                    }
                                    webVideoFull3.J0 = true;
                                    MainApp.K1 = true;
                                    DialogSeekAudio dialogSeekAudio = new DialogSeekAudio(webVideoFull3.f19574c, new DialogSeekAudio.DialogSeekListener() { // from class: com.mycompany.app.web.WebVideoFull.66
                                        @Override // com.mycompany.app.dialog.DialogSeekAudio.DialogSeekListener
                                        public final void a(int i) {
                                            WebVideoProgress webVideoProgress = WebVideoFull.this.L;
                                            if (webVideoProgress != null) {
                                                webVideoProgress.setProgress(i);
                                            }
                                        }
                                    });
                                    webVideoFull3.y0 = dialogSeekAudio;
                                    dialogSeekAudio.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.web.WebVideoFull.67
                                        @Override // android.content.DialogInterface.OnDismissListener
                                        public final void onDismiss(DialogInterface dialogInterface) {
                                            float[] fArr = WebVideoFull.o1;
                                            WebVideoFull.this.S();
                                        }
                                    });
                                    webVideoFull3.y0.E = true;
                                }
                                WebVideoFull.E(webVideoFull3);
                            }
                        }, 100L);
                    }
                }
            });
            webVideoFull.i0 = new GestureDetector(webVideoFull.f, new GestureDetector.SimpleOnGestureListener() { // from class: com.mycompany.app.web.WebVideoFull.20
                @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
                public final boolean onDoubleTap(MotionEvent motionEvent) {
                    MyButtonCheck myButtonCheck2;
                    boolean h0;
                    int i;
                    int i2;
                    int i3;
                    float[] fArr = WebVideoFull.o1;
                    WebVideoFull webVideoFull2 = WebVideoFull.this;
                    boolean z = false;
                    if (!webVideoFull2.Y(false) && webVideoFull2.q != null && (myButtonCheck2 = webVideoFull2.A) != null && webVideoFull2.z0 == null && !myButtonCheck2.D) {
                        MainActivity mainActivity = webVideoFull2.f19574c;
                        if (mainActivity == null) {
                            h0 = MainUtil.N5(webVideoFull2.f);
                        } else {
                            h0 = mainActivity.h0();
                        }
                        if (h0) {
                            i = PrefVideo.F;
                            i2 = PrefVideo.G;
                        } else {
                            i = PrefVideo.D;
                            i2 = PrefVideo.E;
                        }
                        float x = motionEvent.getX();
                        if (x < i) {
                            i3 = PrefVideo.A;
                        } else if (x > webVideoFull2.getWidth() - i2) {
                            i3 = PrefVideo.B;
                        } else {
                            i3 = PrefVideo.C;
                        }
                        z = true;
                        if (i3 == 0) {
                            if (webVideoFull2.W) {
                                MainUtil.e8(webVideoFull2.f19574c, R.string.not_support_video);
                                return true;
                            }
                            webVideoFull2.j0();
                            webVideoFull2.s0 = true;
                            return true;
                        }
                        if (i3 == 1) {
                            if (webVideoFull2.W) {
                                MainUtil.e8(webVideoFull2.f19574c, R.string.not_support_video);
                                return true;
                            }
                            webVideoFull2.i0();
                            webVideoFull2.s0 = true;
                            return true;
                        }
                        if (i3 == 2) {
                            if (webVideoFull2.W) {
                                MainUtil.e8(webVideoFull2.f19574c, R.string.not_support_video);
                                return true;
                            }
                            webVideoFull2.k0();
                            webVideoFull2.s0 = true;
                        }
                    }
                    return z;
                }

                @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
                public final void onLongPress(MotionEvent motionEvent) {
                    WebVideoFull webVideoFull2 = WebVideoFull.this;
                    webVideoFull2.r0 = true;
                    WebVideoFull.F(webVideoFull2, true, false);
                }

                @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
                public final boolean onSingleTapUp(MotionEvent motionEvent) {
                    return WebVideoFull.F(WebVideoFull.this, false, false);
                }
            });
            webVideoFull.setIconShow(PrefPdf.u);
            if (webVideoFull.T == 2 && !webVideoFull.Q && webVideoFull.N != null) {
                webVideoFull.Q = true;
                ViewGroup viewGroup2 = webVideoFull.j;
                if (viewGroup2 != null) {
                    viewGroup2.post(new AnonymousClass49());
                }
            }
            webVideoFull.addView(webVideoFull.p, -1, -1);
            boolean z = PrefVideo.j;
            if (z) {
                if (z && webVideoFull.R == null && webVideoFull.p != null && (viewGroup = webVideoFull.j) != null) {
                    viewGroup.post(new Runnable() { // from class: com.mycompany.app.web.WebVideoFull.21
                        @Override // java.lang.Runnable
                        public final void run() {
                            MyFadeFrame Y0;
                            if (PrefVideo.j) {
                                final WebVideoFull webVideoFull2 = WebVideoFull.this;
                                if (webVideoFull2.R == null && webVideoFull2.p != null && (Y0 = VideoActivity.Y0(webVideoFull2.f19574c)) != null) {
                                    webVideoFull2.R = Y0;
                                    Y0.setListener(new MyFadeListener() { // from class: com.mycompany.app.web.WebVideoFull.22
                                        @Override // com.mycompany.app.view.MyFadeListener
                                        public final void a(boolean z2) {
                                            ViewGroup viewGroup3;
                                            if (z2 || (viewGroup3 = WebVideoFull.this.j) == null) {
                                                return;
                                            }
                                            viewGroup3.post(new Runnable() { // from class: com.mycompany.app.web.WebVideoFull.22.1
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    AnonymousClass22 anonymousClass22 = AnonymousClass22.this;
                                                    MyFadeFrame myFadeFrame = WebVideoFull.this.R;
                                                    if (myFadeFrame != null) {
                                                        myFadeFrame.f();
                                                        WebVideoFull webVideoFull3 = WebVideoFull.this;
                                                        webVideoFull3.removeView(webVideoFull3.R);
                                                        WebVideoFull.this.R = null;
                                                    }
                                                    if (PrefVideo.k && PrefPdf.v) {
                                                        WebVideoFull.this.n0(true);
                                                    }
                                                }
                                            });
                                        }

                                        @Override // com.mycompany.app.view.MyFadeListener
                                        public final void b(boolean z2, boolean z3) {
                                        }
                                    });
                                    webVideoFull2.R.setOnTouchListener(new View.OnTouchListener() { // from class: com.mycompany.app.web.WebVideoFull.23
                                        @Override // android.view.View.OnTouchListener
                                        public final boolean onTouch(View view, MotionEvent motionEvent) {
                                            boolean z2 = PrefVideo.j;
                                            WebVideoFull webVideoFull3 = WebVideoFull.this;
                                            if (z2) {
                                                PrefVideo.j = false;
                                                PrefSet.d(13, webVideoFull3.f, "mGuidePlayer", false);
                                            }
                                            MyFadeFrame myFadeFrame = webVideoFull3.R;
                                            if (myFadeFrame != null) {
                                                myFadeFrame.d(true);
                                            }
                                            return true;
                                        }
                                    });
                                    ViewGroup viewGroup3 = webVideoFull2.j;
                                    if (viewGroup3 == null) {
                                        return;
                                    }
                                    viewGroup3.post(new Runnable() { // from class: com.mycompany.app.web.WebVideoFull.24
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            boolean z2 = PrefVideo.j;
                                            WebVideoFull webVideoFull3 = WebVideoFull.this;
                                            if (z2) {
                                                MyFadeFrame myFadeFrame = webVideoFull3.R;
                                                if (myFadeFrame == null) {
                                                    return;
                                                }
                                                webVideoFull3.addView(myFadeFrame, -1, -1);
                                                return;
                                            }
                                            float[] fArr = WebVideoFull.o1;
                                            webVideoFull3.getClass();
                                        }
                                    });
                                    return;
                                }
                                return;
                            }
                            float[] fArr = WebVideoFull.o1;
                        }
                    });
                    return;
                }
                return;
            }
            if (PrefVideo.k && PrefPdf.v) {
                webVideoFull.n0(false);
            }
        }
    }

    public static void D(WebVideoFull webVideoFull) {
        if (webVideoFull.k == null) {
            return;
        }
        StringBuilder sb = new StringBuilder("var vdEle=null;var vdSeek=false;");
        int i = webVideoFull.T;
        if (i == 2 || i == 3) {
            sb.append("var youConEle=null;var youConVal=null;var youConOsb=null;var youExpEle=null;var youExpVal=null;var youExpOsb=null;function myYouCon(name){return (name&&name.endsWith('fadein'))?1:0;}");
        }
        sb.append("function myVidPlaying(){android.onVidResult('onVidPaused',0);}function myVidPaused(){android.onVidResult('onVidPaused',1);}function myVidSeeking(){vdSeek=true;android.onVidResult('onVidSeek',1);}function myVidSeeked(){vdSeek=false;android.onVidResult('onVidSeek',0);}function myVidPlay(){if(vdEle){vdEle.play();}}function myChkPlay(){if(vdEle){if(vdEle.paused){vdEle.play();}}}function myVidPause(){if(vdEle){vdEle.pause();}}function myVidToggle(){if(vdEle){if(vdEle.paused){vdEle.play();}else{vdEle.pause();}}}function myVidDur(){if(vdEle){var val=vdEle.duration;if(val){vdEle.removeEventListener('timeupdate',myVidDur);android.onVidResult('onVidDur',val);}}}function myVidPos(){var val='undefined';if(vdEle){val=vdEle.currentTime;}android.onVidResult('onVidPos',val);}function myVidTime(){var val='undefined';var va2='undefined';if(vdEle){val=vdEle.duration;va2=vdEle.currentTime;}android.onVidTime(val,va2);}function myVidFrwd(){if(vdEle&&!vdSeek){var pos=vdEle.currentTime;if(pos>10){vdEle.currentTime=pos-10;}else{vdEle.currentTime=0;}}}function myVidFfwd(){if(vdEle&&!vdSeek){var pos=vdEle.currentTime;if(pos+10<vdEle.duration){vdEle.currentTime=pos+10;}else{vdEle.currentTime=vdEle.duration;}}}function myVidSeekPos(time){if(vdEle&&!vdSeek){vdEle.currentTime=time;}}function myVidLoop(loop){if(vdEle){vdEle.loop=loop;}}function myVidRate(){var val=1;if(vdEle){val=vdEle.playbackRate;}android.onVidResult('onVidRate',val);}function myVidRat2(rate){var val=0;if(vdEle){vdEle.playbackRate=rate;val=rate;}android.onVidResult('onVidRat2',val);}function myVidSize(){var val=0;if(vdEle){var vst=vdEle.style;val=vst.width+'/'+vst.height;}android.onVidResult('onVidSize',val);}(function(){if(vdEle)return;var eles=document.querySelectorAll(\"video\");if(eles&&(eles.length>0)){if(eles.length==1){vdEle=eles[0];}else{for(var i=0;i<eles.length;i++){if(!eles[i].paused&&eles[i].duration){vdEle=eles[i];break;}}if(!vdEle){vdEle=eles[0];}}}if(!vdEle){eles=document.querySelectorAll(\"source[type*='video']\");if(eles&&(eles.length>0)){if(eles.length==1){vdEle=eles[0].parentNode;}else{for(var i=0;i<eles.length;i++){if(!eles[i].parentNode.paused&&eles[i].parentNode.duration){vdEle=eles[i].parentNode;break;}}if(!vdEle){vdEle=eles[0].parentNode;}}}}if(!vdEle){android.onVidFound(false,false,null);return;}vdEle.addEventListener('playing',myVidPlaying);vdEle.addEventListener('pause',myVidPaused);vdEle.addEventListener('seeking',myVidSeeking);vdEle.addEventListener('seeked',myVidSeeked);");
        int i2 = webVideoFull.T;
        if (i2 == 2 || i2 == 3) {
            sb.append("youConEle=document.querySelector(\"div[id='player-control-overlay']\");if(youConEle){youConVal=myYouCon(youConEle.className);android.onVidResult('onYouCon',youConVal);youConOsb=new MutationObserver(function(){var val=myYouCon(youConEle.className);if(val!=youConVal){youConVal=val;android.onVidResult('onYouCon',youConVal);}});youConOsb.observe(youConEle,{attributes:true,childList:true});}youExpEle=document.querySelector(\"player-fullscreen-top-controls\");if(youExpEle){youExpVal=youExpEle.style.visibility;android.onVidResult('onYouExp',youExpVal);youExpOsb=new MutationObserver(function(){var val=youExpEle.style.visibility;if(youExpVal!=val){youExpVal=val;android.onVidResult('onYouExp',youExpVal);}});youExpOsb.observe(youExpEle,{attributes:true,childList:true});}");
        }
        sb.append("var psd=vdEle.paused;var dur=vdEle.duration;if(!dur){vdEle.addEventListener('timeupdate',myVidDur);}android.onVidFound(true,psd,dur);vdEle.loop=");
        sb.append(PrefVideo.p);
        sb.append(";");
        if (webVideoFull.T == 2) {
            sb.append("if(psd){vdEle.play();}");
        }
        sb.append("})();");
        MainUtil.I(webVideoFull.k, sb.toString(), true);
    }

    public static void E(WebVideoFull webVideoFull) {
        ViewGroup viewGroup = webVideoFull.j;
        if (viewGroup == null) {
            return;
        }
        viewGroup.postDelayed(new Runnable() { // from class: com.mycompany.app.web.WebVideoFull.48
            @Override // java.lang.Runnable
            public final void run() {
                WebVideoFull.this.O0 = false;
            }
        }, 100L);
    }

    public static boolean F(WebVideoFull webVideoFull, boolean z, boolean z2) {
        MyFadeRelative myFadeRelative;
        MyButtonCheck myButtonCheck;
        if (webVideoFull.Y(false) || ((!z2 && (webVideoFull.R != null || webVideoFull.S != null)) || (myFadeRelative = webVideoFull.q) == null || (myButtonCheck = webVideoFull.A) == null)) {
            return false;
        }
        if (webVideoFull.z0 != null) {
            ViewGroup viewGroup = webVideoFull.j;
            if (viewGroup != null) {
                viewGroup.post(new Runnable() { // from class: com.mycompany.app.web.WebVideoFull.50
                    @Override // java.lang.Runnable
                    public final void run() {
                        MyFadeRelative myFadeRelative2 = WebVideoFull.this.q;
                        if (myFadeRelative2 != null) {
                            myFadeRelative2.d(false);
                        }
                    }
                });
                return true;
            }
        } else if (myButtonCheck.D) {
            ViewGroup viewGroup2 = webVideoFull.j;
            if (viewGroup2 != null) {
                viewGroup2.post(new Runnable() { // from class: com.mycompany.app.web.WebVideoFull.51
                    @Override // java.lang.Runnable
                    public final void run() {
                        WebVideoFull webVideoFull2 = WebVideoFull.this;
                        MyFadeRelative myFadeRelative2 = webVideoFull2.q;
                        if (myFadeRelative2 == null) {
                            return;
                        }
                        if (myFadeRelative2.f()) {
                            webVideoFull2.q.d(false);
                        } else {
                            webVideoFull2.q.i(false);
                        }
                    }
                });
                return true;
            }
        } else if (!webVideoFull.p0 && !webVideoFull.q0 && !myFadeRelative.f()) {
            if (webVideoFull.o0 && !z) {
                ViewGroup viewGroup3 = webVideoFull.j;
                if (viewGroup3 != null) {
                    viewGroup3.post(new Runnable() { // from class: com.mycompany.app.web.WebVideoFull.53
                        @Override // java.lang.Runnable
                        public final void run() {
                            MyFadeRelative myFadeRelative2 = WebVideoFull.this.q;
                            if (myFadeRelative2 != null) {
                                myFadeRelative2.d(false);
                            }
                        }
                    });
                    return true;
                }
            } else if (PrefPdf.v == z) {
                if (!webVideoFull.V && !webVideoFull.W && !webVideoFull.M0) {
                    webVideoFull.c0(new Runnable() { // from class: com.mycompany.app.web.WebVideoFull.54
                        @Override // java.lang.Runnable
                        public final void run() {
                            WebVideoFull.D(WebVideoFull.this);
                        }
                    });
                }
                ViewGroup viewGroup4 = webVideoFull.j;
                if (viewGroup4 != null) {
                    viewGroup4.post(new Runnable() { // from class: com.mycompany.app.web.WebVideoFull.55
                        @Override // java.lang.Runnable
                        public final void run() {
                            ViewGroup viewGroup5;
                            WebVideoFull webVideoFull2 = WebVideoFull.this;
                            if (webVideoFull2.q != null) {
                                webVideoFull2.f0();
                                webVideoFull2.e0();
                                if (webVideoFull2.B != null) {
                                    webVideoFull2.l0();
                                    if (PrefPdf.u && webVideoFull2.V && !webVideoFull2.W) {
                                        webVideoFull2.B.setVisibility(0);
                                        webVideoFull2.C.setVisibility(0);
                                        webVideoFull2.D.setVisibility(0);
                                    } else {
                                        webVideoFull2.B.setVisibility(8);
                                        webVideoFull2.C.setVisibility(8);
                                        webVideoFull2.D.setVisibility(8);
                                    }
                                    if (PrefVideo.u) {
                                        webVideoFull2.H.setText(PrefVideo.v + "%");
                                    } else {
                                        webVideoFull2.H.setText("S");
                                    }
                                    int progress = webVideoFull2.L.getProgress();
                                    webVideoFull2.J.setText(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED + progress);
                                    if (progress == 0) {
                                        webVideoFull2.I.setImageResource(R.drawable.outline_volume_off_white_24);
                                    } else {
                                        webVideoFull2.I.setImageResource(R.drawable.outline_volume_up_white_24);
                                    }
                                }
                                webVideoFull2.q.i(false);
                                int i = webVideoFull2.T;
                                if ((i != 2 && i != 3) || (viewGroup5 = webVideoFull2.j) == null) {
                                    return;
                                }
                                viewGroup5.postDelayed(new Runnable() { // from class: com.mycompany.app.web.WebVideoFull.55.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        WebVideoFull webVideoFull3 = WebVideoFull.this;
                                        float[] fArr = WebVideoFull.o1;
                                        webVideoFull3.R();
                                    }
                                }, 200L);
                            }
                        }
                    });
                    return true;
                }
            }
        } else {
            ViewGroup viewGroup5 = webVideoFull.j;
            if (viewGroup5 != null) {
                viewGroup5.post(new Runnable() { // from class: com.mycompany.app.web.WebVideoFull.52
                    @Override // java.lang.Runnable
                    public final void run() {
                        MyFadeRelative myFadeRelative2 = WebVideoFull.this.q;
                        if (myFadeRelative2 != null) {
                            myFadeRelative2.d(false);
                        }
                    }
                });
                return true;
            }
        }
        return true;
    }

    public static void J(WebVideoFull webVideoFull) {
        ViewGroup viewGroup = webVideoFull.j;
        if (viewGroup == null) {
            return;
        }
        webVideoFull.h = true;
        viewGroup.postDelayed(new Runnable() { // from class: com.mycompany.app.web.WebVideoFull.42
            @Override // java.lang.Runnable
            public final void run() {
                WebVideoFull.this.h = false;
            }
        }, 800L);
    }

    public static void K(WebVideoFull webVideoFull) {
        MainActivity mainActivity;
        Runnable runnable = webVideoFull.d1;
        if (webVideoFull.j != null && (mainActivity = webVideoFull.f19574c) != null && !webVideoFull.c1) {
            int i = webVideoFull.b1;
            int i2 = PrefVideo.v;
            if (i != i2) {
                webVideoFull.c1 = true;
                webVideoFull.b1 = i2;
                MainUtil.g7(mainActivity.getWindow(), PrefVideo.v, PrefVideo.u);
                webVideoFull.j.removeCallbacks(runnable);
                webVideoFull.j.postDelayed(runnable, 100L);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x00c8, code lost:
    
        if (r1 >= 0) goto L53;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void M(com.mycompany.app.web.WebVideoFull r10) {
        /*
            Method dump skipped, instructions count: 587
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.web.WebVideoFull.M(com.mycompany.app.web.WebVideoFull):void");
    }

    public static void N(WebVideoFull webVideoFull) {
        int i = webVideoFull.l1;
        long j = webVideoFull.m1;
        MyFadeRelative myFadeRelative = webVideoFull.q;
        if (myFadeRelative != null) {
            myFadeRelative.h();
        }
        if (i == 1) {
            WebVideoProgress webVideoProgress = webVideoFull.K;
            if (webVideoProgress != null) {
                webVideoProgress.d(true, false);
                return;
            }
            return;
        }
        if (i == 2) {
            WebVideoProgress webVideoProgress2 = webVideoFull.L;
            if (webVideoProgress2 != null) {
                webVideoProgress2.d(true, false);
                return;
            }
            return;
        }
        if (i == 3) {
            WebVideoProgress webVideoProgress3 = webVideoFull.M;
            if (webVideoProgress3 != null) {
                webVideoProgress3.d(true, false);
                webVideoFull.setSeekTouchUp(j);
                return;
            }
            return;
        }
        int i2 = webVideoFull.T;
        if (i2 != 2 && i2 != 3) {
            return;
        }
        webVideoFull.R();
    }

    public static void P(WebVideoFull webVideoFull) {
        boolean z;
        int i;
        String str;
        int i2;
        if (!webVideoFull.I0 && webVideoFull.k != null) {
            int round = Math.round(MainUtil.K6(webVideoFull.f, webVideoFull.getWidth()));
            int round2 = Math.round(MainUtil.K6(webVideoFull.f, webVideoFull.getHeight()));
            float f = webVideoFull.G0;
            int i3 = 0;
            if (f > 0.0f) {
                z = true;
            } else {
                z = false;
            }
            if (PrefVideo.w == 0 && z) {
                int round3 = Math.round(round * f);
                if (round3 > round2) {
                    i2 = Math.round(round2 / f);
                    round3 = round2;
                } else {
                    i2 = round;
                }
                int i4 = (round - i2) / 2;
                int i5 = (round2 - round3) / 2;
                if (i4 < 0) {
                    i4 = 0;
                }
                if (i5 >= 0) {
                    i3 = i5;
                }
                int i6 = i3;
                i3 = i4;
                round = i2;
                i = i6;
                round2 = round3;
            } else {
                i = 0;
            }
            int i7 = PrefVideo.w;
            if (i7 == 1) {
                str = "fill";
            } else if (i7 == 2) {
                str = "cover";
            } else {
                str = "contain";
            }
            StringBuilder sb = new StringBuilder("(function(){if(!vdEle)return;var vst=vdEle.style;");
            if (z) {
                a.A(sb, "vst.left='", i3, "px';vst.top='", i);
                a.A(sb, "px';vst.width='", round, "px';vst.height='", round2);
                sb.append("px';");
            }
            android.support.v4.media.a.y(sb, "vst.objectFit='", str, "';})();");
            MainUtil.I(webVideoFull.k, sb.toString(), true);
        }
    }

    public static int b0(String str) {
        if (!TextUtils.isEmpty(str)) {
            if (!str.endsWith("px")) {
                return MainUtil.G6(str);
            }
            if (str.length() >= 3) {
                return MainUtil.G6(str.substring(0, str.length() - 2));
            }
        }
        return 0;
    }

    private void getPosition() {
        WebNestView webNestView;
        if (this.W || this.f0 >= 0 || (webNestView = this.k) == null || this.h0) {
            return;
        }
        this.h0 = true;
        if (this.e0 > 0) {
            MainUtil.I(webNestView, "myVidPos();", true);
        } else {
            MainUtil.I(webNestView, "myVidTime();", true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getVideoRate() {
        WebNestView webNestView = this.k;
        if (webNestView == null || this.w0) {
            return;
        }
        this.w0 = true;
        MainUtil.I(webNestView, "myVidRate();", false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getVideoSize() {
        WebNestView webNestView;
        if (this.z0 == null && (webNestView = this.k) != null) {
            MainUtil.I(webNestView, "myVidSize();", false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setIconPlay(boolean z) {
        MyButtonImage myButtonImage = this.C;
        if (myButtonImage == null) {
            return;
        }
        if (z) {
            myButtonImage.setImageResource(R.drawable.baseline_play_arrow_white_24);
        } else {
            myButtonImage.setImageResource(R.drawable.baseline_pause_white_24);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setIconShow(boolean z) {
        if (this.s == null) {
            return;
        }
        int i = 8;
        if (z) {
            l0();
            if (this.T == 2) {
                this.r.setVisibility(0);
            }
            this.s.setVisibility(0);
            this.t.setVisibility(0);
            this.A.setVisibility(0);
            if (this.V && !this.W) {
                this.B.setVisibility(0);
                this.C.setVisibility(0);
                this.D.setVisibility(0);
            } else {
                this.B.setVisibility(8);
                this.C.setVisibility(8);
                this.D.setVisibility(8);
            }
            int i2 = this.T;
            if (i2 != 2 && i2 != 3) {
                boolean z2 = this.B0;
                this.C0 = z2;
                MyButtonImage myButtonImage = this.F;
                if (z2) {
                    i = 0;
                }
                myButtonImage.setVisibility(i);
            } else {
                this.C0 = false;
                this.F.setVisibility(8);
            }
            this.G.setVisibility(0);
            this.H.setVisibility(0);
            this.I.setVisibility(0);
            this.J.setVisibility(0);
        } else {
            this.r.setVisibility(8);
            this.s.setVisibility(8);
            this.t.setVisibility(8);
            this.A.setVisibility(8);
            this.B.setVisibility(8);
            this.C.setVisibility(8);
            this.D.setVisibility(8);
            this.C0 = false;
            this.F.setVisibility(8);
            this.G.setVisibility(8);
            this.H.setVisibility(8);
            this.I.setVisibility(8);
            this.J.setVisibility(8);
        }
        d0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPipParam2(boolean z) {
        Context context;
        int i;
        String str;
        int i2;
        int i3;
        if (Build.VERSION.SDK_INT >= 26 && (context = this.f) != null && this.z0 != null) {
            try {
                if (this.V && !this.W) {
                    boolean z2 = this.b0;
                    String packageName = context.getPackageName();
                    Intent intent = new Intent("com.mycompany.app.soulbrowser.ACTION_PIP_FRWD");
                    intent.setPackage(packageName);
                    PendingIntent broadcast = PendingIntent.getBroadcast(this.f, 0, intent, 201326592);
                    Intent intent2 = new Intent("com.mycompany.app.soulbrowser.ACTION_PIP_PLAY");
                    intent2.setPackage(packageName);
                    PendingIntent broadcast2 = PendingIntent.getBroadcast(this.f, 1, intent2, 201326592);
                    Intent intent3 = new Intent("com.mycompany.app.soulbrowser.ACTION_PIP_FFWD");
                    intent3.setPackage(packageName);
                    PendingIntent broadcast3 = PendingIntent.getBroadcast(this.f, 2, intent3, 201326592);
                    if (z2) {
                        i = R.drawable.baseline_play_arrow_white_24;
                        str = "play";
                    } else {
                        i = R.drawable.baseline_pause_white_24;
                        str = "pause";
                    }
                    if (this.g) {
                        i2 = R.drawable.baseline_fast_forward_white_24;
                        i3 = R.drawable.baseline_fast_rewind_white_24;
                    } else {
                        i2 = R.drawable.baseline_fast_rewind_white_24;
                        i3 = R.drawable.baseline_fast_forward_white_24;
                    }
                    Icon createWithResource = Icon.createWithResource(this.f, i2);
                    Icon createWithResource2 = Icon.createWithResource(this.f, i);
                    Icon createWithResource3 = Icon.createWithResource(this.f, i3);
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(new RemoteAction(createWithResource, "frwd", "frwd", broadcast));
                    arrayList.add(new RemoteAction(createWithResource2, str, str, broadcast2));
                    arrayList.add(new RemoteAction(createWithResource3, "ffwd", "ffwd", broadcast3));
                    this.z0.setActions(arrayList);
                }
                if (z) {
                    this.f19574c.enterPictureInPictureMode(this.z0.build());
                    ViewGroup viewGroup = this.j;
                    if (viewGroup != null) {
                        viewGroup.post(new Runnable() { // from class: com.mycompany.app.web.WebVideoFull.47
                            @Override // java.lang.Runnable
                            public final void run() {
                                MainActivity mainActivity = WebVideoFull.this.f19574c;
                                if (mainActivity == null) {
                                    return;
                                }
                                MainUtil.g7(mainActivity.getWindow(), PrefPdf.o, PrefPdf.n);
                            }
                        });
                        return;
                    }
                    return;
                }
                this.f19574c.setPictureInPictureParams(this.z0.build());
            } catch (Exception unused) {
            }
        }
    }

    private void setSeekTouchUp(long j) {
        if (j >= 0) {
            this.n1 = j;
            ViewGroup viewGroup = this.j;
            if (viewGroup == null) {
                return;
            }
            viewGroup.postDelayed(new Runnable() { // from class: com.mycompany.app.web.WebVideoFull.85
                @Override // java.lang.Runnable
                public final void run() {
                    WebVideoFull webVideoFull = WebVideoFull.this;
                    long j2 = webVideoFull.n1;
                    long j3 = 0;
                    if (j2 >= 0) {
                        long j4 = webVideoFull.e0;
                        float f = (((float) j2) / 1000.0f) * ((float) j4);
                        float f2 = f / 1000.0f;
                        long j5 = f;
                        if (j5 <= j4) {
                            j4 = j5;
                        }
                        if (j4 >= 0) {
                            j3 = j4;
                        }
                        webVideoFull.g0 = j3;
                        if (webVideoFull.d0 || webVideoFull.k == null) {
                            return;
                        }
                        MainUtil.I(webVideoFull.k, "myVidSeekPos(" + f2 + ");", false);
                    }
                }
            }, 100L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setTouchLock(boolean z) {
        MyButtonCheck myButtonCheck = this.A;
        if (myButtonCheck == null || z == myButtonCheck.D) {
            return;
        }
        if (z) {
            setIconShow(false);
            this.A.setVisibility(0);
            this.A.q(true, true);
            this.E.setVisibility(8);
            MainUtil.e8(this.f19574c, R.string.touch_locked);
            return;
        }
        setIconShow(PrefPdf.u);
        this.A.setVisibility(0);
        this.A.q(false, true);
        this.E.setVisibility(0);
        MainUtil.e8(this.f19574c, R.string.touch_unlocked);
    }

    private void setTouchMove(MotionEvent motionEvent) {
        this.j1 = motionEvent;
        ViewGroup viewGroup = this.j;
        if (viewGroup == null) {
            return;
        }
        Runnable runnable = this.i1;
        viewGroup.removeCallbacks(runnable);
        this.j.post(runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setVideoLoop(boolean z) {
        if (this.k == null) {
            return;
        }
        MainUtil.I(this.k, "myVidLoop(" + z + ");", true);
    }

    private void setVideoPaused(boolean z) {
        if (!this.O0) {
            this.O0 = true;
            this.e1 = z;
            ViewGroup viewGroup = this.j;
            if (viewGroup == null) {
                return;
            }
            viewGroup.postDelayed(new Runnable() { // from class: com.mycompany.app.web.WebVideoFull.71
                @Override // java.lang.Runnable
                public final void run() {
                    WebVideoFull webVideoFull = WebVideoFull.this;
                    if (webVideoFull.e1) {
                        MainUtil.I(webVideoFull.k, "myVidPause();", false);
                    } else {
                        MainUtil.I(webVideoFull.k, "myVidPlay();", false);
                    }
                    WebVideoFull.E(webVideoFull);
                }
            }, 100L);
        }
    }

    public final void Q() {
        if (!this.I0 && this.z0 == null && this.k != null) {
            if (!this.V) {
                this.D0 = true;
                return;
            }
            ViewGroup viewGroup = this.j;
            if (viewGroup != null) {
                viewGroup.postDelayed(new Runnable() { // from class: com.mycompany.app.web.WebVideoFull.78
                    @Override // java.lang.Runnable
                    public final void run() {
                        WebVideoFull webVideoFull = WebVideoFull.this;
                        if (!webVideoFull.I0 && webVideoFull.z0 == null && webVideoFull.k != null) {
                            if (!webVideoFull.H0) {
                                webVideoFull.getVideoSize();
                            } else {
                                WebVideoFull.P(webVideoFull);
                            }
                        }
                    }
                }, 200L);
            }
        }
    }

    public final void R() {
        if (!this.p0 && !this.q0) {
            return;
        }
        m0();
    }

    public final void S() {
        DialogSeekAudio dialogSeekAudio = this.y0;
        if (dialogSeekAudio != null) {
            dialogSeekAudio.dismiss();
            this.y0 = null;
            this.J0 = false;
            MainUtil.K7(this.f19574c, false);
        }
    }

    public final void T() {
        DialogSeekBright dialogSeekBright = this.x0;
        if (dialogSeekBright != null) {
            dialogSeekBright.dismiss();
            this.x0 = null;
            this.J0 = false;
            MainUtil.K7(this.f19574c, false);
        }
    }

    public final void U() {
        if (this.v0 != null) {
            MainActivity mainActivity = this.f19574c;
            if (mainActivity != null) {
                mainActivity.Z0 = null;
            }
            h0();
            this.v0.a();
            this.v0 = null;
        }
        MyFadeRelative myFadeRelative = this.q;
        if (myFadeRelative != null) {
            myFadeRelative.setAutoHide(true);
        }
    }

    public final void V() {
        if (this.t0 != null) {
            MainActivity mainActivity = this.f19574c;
            if (mainActivity != null) {
                mainActivity.Z0 = null;
            }
            h0();
            this.t0.a();
            this.t0 = null;
        }
        MyFadeRelative myFadeRelative = this.q;
        if (myFadeRelative != null) {
            myFadeRelative.setAutoHide(true);
        }
    }

    public final void W() {
        if (this.u0 != null) {
            MainActivity mainActivity = this.f19574c;
            if (mainActivity != null) {
                mainActivity.Z0 = null;
            }
            h0();
            this.u0.a();
            this.u0 = null;
        }
        MyFadeRelative myFadeRelative = this.q;
        if (myFadeRelative != null) {
            myFadeRelative.setAutoHide(true);
        }
    }

    public final void X() {
        this.j0 = false;
        this.m0 = 0;
        this.n0 = false;
        this.r0 = false;
        this.c0 = -1L;
    }

    public final boolean Y(boolean z) {
        MyButtonImage myButtonImage = this.s;
        if (myButtonImage != null) {
            if (!myButtonImage.isPressed() && !this.A.isPressed() && !this.B.isPressed() && !this.C.isPressed() && !this.D.isPressed() && !this.E.isPressed() && !this.F.isPressed()) {
                if (!z) {
                    if (!this.u.isPressed() && !this.v.isPressed() && !this.w.isPressed() && !this.x.isPressed() && !this.y.isPressed() && !this.z.isPressed()) {
                        return false;
                    }
                    return true;
                }
                return false;
            }
            return true;
        }
        return false;
    }

    public final boolean Z(int i, int i2) {
        if (!this.P0) {
            int i3 = this.Q0;
            int i4 = this.R0;
            int i5 = this.S0;
            int i6 = this.T0;
            if (i3 < i5 && i4 < i6 && i >= i3 && i < i5 && i2 >= i4 && i2 < i6) {
                return true;
            }
            return false;
        }
        return false;
    }

    @Override // com.mycompany.app.web.WebVideoFrame
    public final void a(String str, boolean z, WebVideoFrame.VideoFrameListener videoFrameListener) {
        this.U = str;
        this.o = videoFrameListener;
        setTitle(str);
        setVideoDown(z);
        ViewGroup viewGroup = this.j;
        if (viewGroup == null) {
            return;
        }
        viewGroup.post(new Runnable() { // from class: com.mycompany.app.web.WebVideoFull.31
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r1v4, types: [android.view.View$OnClickListener, java.lang.Object] */
            @Override // java.lang.Runnable
            public final void run() {
                final WebVideoFull webVideoFull = WebVideoFull.this;
                if (webVideoFull.f19574c == null) {
                    return;
                }
                webVideoFull.g = MainUtil.O5(webVideoFull.f);
                webVideoFull.setBackgroundColor(-16777216);
                webVideoFull.setOnClickListener(new Object());
                webVideoFull.c0(new Runnable() { // from class: com.mycompany.app.web.WebVideoFull.33
                    @Override // java.lang.Runnable
                    public final void run() {
                        final WebVideoFull webVideoFull2 = WebVideoFull.this;
                        MainActivity mainActivity = webVideoFull2.f19574c;
                        if (mainActivity != null) {
                            int i = PrefVideo.o;
                            if (i == 1) {
                                MainUtil.B7(mainActivity, 7);
                            } else if (i == 2) {
                                MainUtil.B7(mainActivity, 6);
                            } else {
                                MainUtil.B7(mainActivity, 4);
                            }
                            ViewGroup viewGroup2 = webVideoFull2.j;
                            if (viewGroup2 == null) {
                                return;
                            }
                            viewGroup2.post(new Runnable() { // from class: com.mycompany.app.web.WebVideoFull.34
                                @Override // java.lang.Runnable
                                public final void run() {
                                    final WebVideoFull webVideoFull3 = WebVideoFull.this;
                                    MainActivity mainActivity2 = webVideoFull3.f19574c;
                                    if (mainActivity2 != null) {
                                        mainActivity2.s0(webVideoFull3, true);
                                        ViewGroup viewGroup3 = webVideoFull3.j;
                                        if (viewGroup3 == null) {
                                            return;
                                        }
                                        viewGroup3.post(new Runnable() { // from class: com.mycompany.app.web.WebVideoFull.35
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                final WebVideoFull webVideoFull4 = WebVideoFull.this;
                                                MainActivity mainActivity3 = webVideoFull4.f19574c;
                                                if (mainActivity3 != null) {
                                                    webVideoFull4.b1 = PrefVideo.v;
                                                    MainUtil.g7(mainActivity3.getWindow(), PrefVideo.v, PrefVideo.u);
                                                    ViewGroup viewGroup4 = webVideoFull4.j;
                                                    if (viewGroup4 == null) {
                                                        return;
                                                    }
                                                    viewGroup4.post(new Runnable() { // from class: com.mycompany.app.web.WebVideoFull.36
                                                        @Override // java.lang.Runnable
                                                        public final void run() {
                                                            final WebVideoFull webVideoFull5 = WebVideoFull.this;
                                                            if (webVideoFull5.f19574c == null) {
                                                                return;
                                                            }
                                                            WebNestView webNestView = webVideoFull5.k;
                                                            if (webNestView != null && !webNestView.C) {
                                                                int i2 = webVideoFull5.T;
                                                                if (i2 != 2 && i2 != 3) {
                                                                    if (i2 == 0) {
                                                                        MainUtil.I(webNestView, "(function(){var val=0;var ele=document.querySelector(\"iframe[src*='youtube']\");if(ele){val=1;}android.onVidResult('onYouType',val);})();", false);
                                                                    }
                                                                } else if (i2 == 2 && !webVideoFull5.Q && webVideoFull5.N != null) {
                                                                    webVideoFull5.Q = true;
                                                                    ViewGroup viewGroup5 = webVideoFull5.j;
                                                                    if (viewGroup5 != null) {
                                                                        viewGroup5.post(new AnonymousClass49());
                                                                    }
                                                                }
                                                            }
                                                            webVideoFull5.c0(new Runnable() { // from class: com.mycompany.app.web.WebVideoFull.37
                                                                @Override // java.lang.Runnable
                                                                public final void run() {
                                                                    final WebVideoFull webVideoFull6 = WebVideoFull.this;
                                                                    if (webVideoFull6.f19574c != null) {
                                                                        MainUtil.T7(webVideoFull6.k, webVideoFull6.T, webVideoFull6.l, true);
                                                                        ViewGroup viewGroup6 = webVideoFull6.j;
                                                                        if (viewGroup6 == null) {
                                                                            return;
                                                                        }
                                                                        viewGroup6.post(new Runnable() { // from class: com.mycompany.app.web.WebVideoFull.38
                                                                            /* JADX WARN: Type inference failed for: r3v1, types: [com.mycompany.app.view.MySizeFrame, android.widget.FrameLayout, android.view.ViewGroup] */
                                                                            @Override // java.lang.Runnable
                                                                            public final void run() {
                                                                                WebVideoFull webVideoFull7 = WebVideoFull.this;
                                                                                MainActivity mainActivity4 = webVideoFull7.f19574c;
                                                                                if (mainActivity4 != null) {
                                                                                    if (webVideoFull7.p == null) {
                                                                                        ?? frameLayout = new FrameLayout(mainActivity4);
                                                                                        MyFadeRelative myFadeRelative = new MyFadeRelative(mainActivity4);
                                                                                        myFadeRelative.setAnimTime(100);
                                                                                        myFadeRelative.setTouchable(true);
                                                                                        myFadeRelative.setAutoHide(true);
                                                                                        myFadeRelative.setVisibility(8);
                                                                                        frameLayout.addView(myFadeRelative, -1, -1);
                                                                                        AppCompatTextView appCompatTextView = new AppCompatTextView(mainActivity4, null);
                                                                                        appCompatTextView.setGravity(16);
                                                                                        appCompatTextView.setSingleLine(true);
                                                                                        appCompatTextView.setTextSize(1, 16.0f);
                                                                                        appCompatTextView.setTextColor(-1);
                                                                                        appCompatTextView.setVisibility(8);
                                                                                        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, MainApp.g1);
                                                                                        layoutParams.setMarginStart((int) MainUtil.G(mainActivity4, 24.0f));
                                                                                        layoutParams.setMarginEnd((int) MainUtil.G(mainActivity4, 150.0f));
                                                                                        myFadeRelative.addView(appCompatTextView, layoutParams);
                                                                                        int G = (int) MainUtil.G(mainActivity4, 14.0f);
                                                                                        int G2 = (int) MainUtil.G(mainActivity4, 14.0f);
                                                                                        MyButtonImage myButtonImage = new MyButtonImage(mainActivity4);
                                                                                        ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_INSIDE;
                                                                                        myButtonImage.setScaleType(scaleType);
                                                                                        myButtonImage.setImageResource(R.drawable.outline_chevron_left_white_24);
                                                                                        float f = G;
                                                                                        myButtonImage.n(f, MainApp.k1);
                                                                                        myButtonImage.k(-16777216, -1586137739);
                                                                                        int i3 = MainApp.g1;
                                                                                        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(i3, i3);
                                                                                        layoutParams2.topMargin = MainApp.g1;
                                                                                        layoutParams2.setMarginStart(MainApp.G1);
                                                                                        myFadeRelative.addView(myButtonImage, layoutParams2);
                                                                                        LinearLayout linearLayout = new LinearLayout(mainActivity4);
                                                                                        linearLayout.setBaselineAligned(false);
                                                                                        linearLayout.setOrientation(0);
                                                                                        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, MainApp.g1);
                                                                                        layoutParams3.topMargin = MainApp.g1;
                                                                                        layoutParams3.setMarginStart(MainApp.G1 + MainApp.g1);
                                                                                        myFadeRelative.addView(linearLayout, layoutParams3);
                                                                                        MyButtonImage myButtonImage2 = new MyButtonImage(mainActivity4);
                                                                                        myButtonImage2.setPadding(G2, G2, G2, G2);
                                                                                        myButtonImage2.setScaleType(scaleType);
                                                                                        myButtonImage2.setImageResource(R.drawable.outline_screen_rotation_white_24);
                                                                                        myButtonImage2.n(f, MainApp.k1);
                                                                                        myButtonImage2.k(-16777216, -1586137739);
                                                                                        int i4 = MainApp.g1;
                                                                                        linearLayout.addView(myButtonImage2, i4, i4);
                                                                                        MyButtonImage myButtonImage3 = new MyButtonImage(mainActivity4);
                                                                                        myButtonImage3.setPadding(G2, G2, G2, G2);
                                                                                        myButtonImage3.setScaleType(scaleType);
                                                                                        myButtonImage3.setImageResource(R.drawable.outline_zoom_out_map_white_24);
                                                                                        myButtonImage3.n(f, MainApp.k1);
                                                                                        myButtonImage3.k(-16777216, -1586137739);
                                                                                        int i5 = MainApp.g1;
                                                                                        linearLayout.addView(myButtonImage3, i5, i5);
                                                                                        MyButtonImage myButtonImage4 = new MyButtonImage(mainActivity4);
                                                                                        myButtonImage4.setPadding(G2, G2, G2, G2);
                                                                                        myButtonImage4.setScaleType(scaleType);
                                                                                        myButtonImage4.setImageResource(R.drawable.outline_arrow_right_alt_white_24);
                                                                                        myButtonImage4.n(f, MainApp.k1);
                                                                                        myButtonImage4.k(-16777216, -1586137739);
                                                                                        int i6 = MainApp.g1;
                                                                                        linearLayout.addView(myButtonImage4, i6, i6);
                                                                                        MyButtonImage myButtonImage5 = new MyButtonImage(mainActivity4);
                                                                                        myButtonImage5.setPadding(G2, G2, G2, G2);
                                                                                        myButtonImage5.setScaleType(scaleType);
                                                                                        myButtonImage5.setImageResource(R.drawable.outline_slow_motion_video_white_24);
                                                                                        myButtonImage5.n(f, MainApp.k1);
                                                                                        myButtonImage5.k(-16777216, -1586137739);
                                                                                        int i7 = MainApp.g1;
                                                                                        linearLayout.addView(myButtonImage5, i7, i7);
                                                                                        MyButtonImage myButtonImage6 = new MyButtonImage(mainActivity4);
                                                                                        myButtonImage6.setPadding(G2, G2, G2, G2);
                                                                                        myButtonImage6.setScaleType(scaleType);
                                                                                        myButtonImage6.setImageResource(R.drawable.outline_picture_in_picture_alt_white_24);
                                                                                        myButtonImage6.n(f, MainApp.k1);
                                                                                        myButtonImage6.k(-16777216, -1586137739);
                                                                                        int i8 = MainApp.g1;
                                                                                        linearLayout.addView(myButtonImage6, i8, i8);
                                                                                        MyButtonImage myButtonImage7 = new MyButtonImage(mainActivity4);
                                                                                        myButtonImage7.setPadding(G2, G2, G2, G2);
                                                                                        myButtonImage7.setScaleType(scaleType);
                                                                                        myButtonImage7.setImageResource(R.drawable.outline_settings_white_24);
                                                                                        myButtonImage7.n(f, MainApp.k1);
                                                                                        myButtonImage7.k(-16777216, -1586137739);
                                                                                        int i9 = MainApp.g1;
                                                                                        linearLayout.addView(myButtonImage7, i9, i9);
                                                                                        webVideoFull7.p = frameLayout;
                                                                                        webVideoFull7.q = myFadeRelative;
                                                                                        webVideoFull7.r = appCompatTextView;
                                                                                        webVideoFull7.s = myButtonImage;
                                                                                        webVideoFull7.t = linearLayout;
                                                                                        webVideoFull7.u = myButtonImage2;
                                                                                        webVideoFull7.v = myButtonImage3;
                                                                                        webVideoFull7.w = myButtonImage4;
                                                                                        webVideoFull7.x = myButtonImage5;
                                                                                        webVideoFull7.y = myButtonImage6;
                                                                                        webVideoFull7.z = myButtonImage7;
                                                                                    }
                                                                                    ViewGroup viewGroup7 = webVideoFull7.j;
                                                                                    if (viewGroup7 == null) {
                                                                                        return;
                                                                                    }
                                                                                    viewGroup7.post(new AnonymousClass39());
                                                                                }
                                                                            }
                                                                        });
                                                                    }
                                                                }
                                                            });
                                                        }
                                                    });
                                                }
                                            }
                                        });
                                    }
                                }
                            });
                        }
                    }
                });
            }
        });
    }

    public final void a0() {
        if (this.z0 != null) {
            return;
        }
        this.W = true;
        this.e0 = -1L;
        this.f0 = -1L;
        this.g0 = -1L;
    }

    @Override // com.mycompany.app.web.WebVideoFrame
    public final void b(MainActivity mainActivity, ViewGroup viewGroup, WebNestView webNestView, String str, int i, View view, WebChromeClient.CustomViewCallback customViewCallback) {
        if (viewGroup != null && webNestView != null) {
            this.M0 = true;
            this.f19574c = mainActivity;
            this.j = viewGroup;
            this.k = webNestView;
            this.l = str;
            this.T = i;
            this.m = view;
            this.n = customViewCallback;
            this.K0 = true;
            this.P0 = true;
            this.e0 = -1L;
            this.f0 = -1L;
            this.g0 = -1L;
            if (i == 2) {
                this.U0 = MainApp.i1 + MainApp.E1;
            } else {
                this.U0 = MainApp.i1;
            }
            this.V0 = PrefVideo.n;
            viewGroup.addView(this, -1, -1);
            addView(this.m, -1, -1);
        }
    }

    @Override // com.mycompany.app.web.WebVideoFrame
    public final void c() {
        boolean z;
        int i = this.T;
        boolean z2 = false;
        if (i != 2 && i != 3) {
            z = true;
        } else {
            z = false;
        }
        if (this.F != null && z && PrefPdf.u && !this.A.D) {
            z2 = true;
        }
        if (z != this.B0 || z2 != this.C0) {
            this.Z0 = true;
            ViewGroup viewGroup = this.j;
            if (viewGroup == null) {
                return;
            }
            viewGroup.post(new Runnable() { // from class: com.mycompany.app.web.WebVideoFull.56
                @Override // java.lang.Runnable
                public final void run() {
                    WebVideoFull webVideoFull = WebVideoFull.this;
                    webVideoFull.setVideoDown(webVideoFull.Z0);
                }
            });
        }
    }

    public final void c0(Runnable runnable) {
        ExecutorService executorService = this.L0;
        if (executorService == null || executorService.isShutdown() || executorService.isTerminated()) {
            executorService = MainApp.i(this.f);
            if (executorService == null) {
                return;
            } else {
                this.L0 = executorService;
            }
        }
        try {
            executorService.execute(runnable);
        } catch (Exception unused) {
        }
    }

    /* JADX WARN: Type inference failed for: r5v1, types: [com.mycompany.app.web.WebVideoPip, android.widget.FrameLayout] */
    @Override // com.mycompany.app.web.WebVideoFrame
    public final void d(boolean z) {
        WebVideoFrame.VideoFrameListener videoFrameListener;
        MainActivity mainActivity = this.f19574c;
        if (mainActivity != null) {
            if ((z || PrefVideo.m) && !this.A0) {
                if (Build.VERSION.SDK_INT < 26) {
                    if (z) {
                        MainUtil.e8(mainActivity, R.string.pip_info);
                        return;
                    }
                    return;
                }
                if (MainUtil.T5(this.f, 6)) {
                    if (z) {
                        MainUtil.N4(this.f19574c, 6);
                        return;
                    }
                    return;
                }
                if (this.T == 2 && (videoFrameListener = this.o) != null) {
                    int i = this.E0;
                    int i2 = this.F0;
                    final WebViewActivity.AnonymousClass270 anonymousClass270 = (WebViewActivity.AnonymousClass270) videoFrameListener;
                    WebViewActivity webViewActivity = WebViewActivity.this;
                    if (webViewActivity.S5 == null) {
                        ?? frameLayout = new FrameLayout(webViewActivity);
                        frameLayout.f = webViewActivity;
                        if (i != 0 && i2 != 0) {
                            frameLayout.t = i;
                            frameLayout.u = i2;
                            frameLayout.s = true;
                        }
                        webViewActivity.S5 = frameLayout;
                        Handler handler = webViewActivity.O0;
                        if (handler != null) {
                            handler.post(new Runnable() { // from class: com.mycompany.app.web.WebViewActivity.270.1
                                public AnonymousClass1() {
                                }

                                @Override // java.lang.Runnable
                                public final void run() {
                                    WebViewActivity webViewActivity2 = WebViewActivity.this;
                                    WebVideoPip webVideoPip = webViewActivity2.S5;
                                    if (webVideoPip != null) {
                                        MyWebBody myWebBody = webViewActivity2.e2;
                                        String str = webViewActivity2.A8;
                                        if (myWebBody != null) {
                                            webVideoPip.g = MainUtil.O5(webVideoPip.f);
                                            webVideoPip.f19693c = webViewActivity2;
                                            webVideoPip.h = myWebBody;
                                            webVideoPip.k = str;
                                            webVideoPip.p = MainUtil.x4(str);
                                            webVideoPip.r = 0;
                                            webVideoPip.setBackgroundColor(-16777216);
                                            webVideoPip.h.addView(webVideoPip, -1, -1);
                                            if (webVideoPip.f == null) {
                                                return;
                                            }
                                            webVideoPip.post(new Runnable() { // from class: com.mycompany.app.web.WebVideoPip.1
                                                public AnonymousClass1() {
                                                }

                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    WebVideoPip webVideoPip2 = WebVideoPip.this;
                                                    MainActivity mainActivity2 = webVideoPip2.f19693c;
                                                    if (mainActivity2 == null) {
                                                        return;
                                                    }
                                                    MyWebSafe myWebSafe = new MyWebSafe(mainActivity2);
                                                    MainApp.I(webVideoPip2.f, myWebSafe);
                                                    myWebSafe.setBackgroundColor(-16777216);
                                                    webVideoPip2.addView(myWebSafe, -1, -1);
                                                    MyCoverView myCoverView = new MyCoverView(mainActivity2, -1, (int) MainUtil.G(mainActivity2, 2.0f), MainApp.z1);
                                                    myCoverView.setBackColor(-1593835520);
                                                    myCoverView.setBackgroundColor(-16777216);
                                                    myCoverView.setVisibility(8);
                                                    webVideoPip2.addView(myCoverView, -1, -1);
                                                    webVideoPip2.m = myWebSafe;
                                                    webVideoPip2.i = myCoverView;
                                                    webVideoPip2.post(new Runnable() { // from class: com.mycompany.app.web.WebVideoPip.2
                                                        public AnonymousClass2() {
                                                        }

                                                        @Override // java.lang.Runnable
                                                        public final void run() {
                                                            WebVideoPip webVideoPip3 = WebVideoPip.this;
                                                            if (webVideoPip3.f == null) {
                                                                return;
                                                            }
                                                            if (webVideoPip3.f19693c != null && webVideoPip3.j == null) {
                                                                webVideoPip3.j = new EventReceiver();
                                                                IntentFilter intentFilter = new IntentFilter();
                                                                intentFilter.addAction("com.mycompany.app.soulbrowser.ACTION_VIDEO_FRWD");
                                                                intentFilter.addAction("com.mycompany.app.soulbrowser.ACTION_VIDEO_PLAY");
                                                                intentFilter.addAction("com.mycompany.app.soulbrowser.ACTION_VIDEO_FFWD");
                                                                intentFilter.addAction("com.mycompany.app.soulbrowser.ACTION_MUSIC_PAUSE");
                                                                ContextCompat.f(webVideoPip3.f19693c, webVideoPip3.j, intentFilter, null, 4);
                                                            }
                                                            webVideoPip3.post(new Runnable() { // from class: com.mycompany.app.web.WebVideoPip.3
                                                                public AnonymousClass3() {
                                                                }

                                                                @Override // java.lang.Runnable
                                                                public final void run() {
                                                                    WebVideoPip.c(WebVideoPip.this);
                                                                }
                                                            });
                                                        }
                                                    });
                                                }
                                            });
                                        }
                                    }
                                }
                            });
                        }
                    }
                    this.W0 = true;
                    this.f0 = -1L;
                    getPosition();
                }
                MyFadeRelative myFadeRelative = this.q;
                if (myFadeRelative != null) {
                    myFadeRelative.d(false);
                }
                T();
                S();
                V();
                W();
                U();
                g0(true, z);
            }
        }
    }

    public final void d0() {
        MyFadeRelative myFadeRelative = this.q;
        if (myFadeRelative == null) {
            return;
        }
        int i = this.T;
        if (i != 2 && i != 3) {
            if (!PrefPdf.u) {
                myFadeRelative.setShowTime(1000);
                return;
            } else {
                myFadeRelative.setShowTime(2000);
                return;
            }
        }
        myFadeRelative.setShowTime(2000);
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x0067, code lost:
    
        if (r0 != 3) goto L84;
     */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean dispatchTouchEvent(android.view.MotionEvent r5) {
        /*
            Method dump skipped, instructions count: 274
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.web.WebVideoFull.dispatchTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // com.mycompany.app.web.WebVideoFrame
    public final void e() {
        this.z0 = null;
        Q();
        ViewGroup viewGroup = this.j;
        if (viewGroup == null) {
            return;
        }
        viewGroup.post(new Runnable() { // from class: com.mycompany.app.web.WebVideoFull.45
            @Override // java.lang.Runnable
            public final void run() {
                WebVideoFull webVideoFull = WebVideoFull.this;
                MainActivity mainActivity = webVideoFull.f19574c;
                if (mainActivity == null) {
                    return;
                }
                webVideoFull.b1 = PrefVideo.v;
                MainUtil.g7(mainActivity.getWindow(), PrefVideo.v, PrefVideo.u);
            }
        });
    }

    public final void e0() {
        MyButtonImage myButtonImage = this.w;
        if (myButtonImage == null) {
            return;
        }
        if (PrefVideo.p) {
            myButtonImage.setImageResource(R.drawable.outline_repeat_white_24);
        } else {
            myButtonImage.setImageResource(R.drawable.outline_arrow_right_alt_white_24);
        }
    }

    @Override // com.mycompany.app.web.WebVideoFrame
    public final boolean f(int i, int i2) {
        if (i != 2) {
            return false;
        }
        if (i2 == -1) {
            setTouchLock(false);
            return true;
        }
        return true;
    }

    public final void f0() {
        MyButtonImage myButtonImage = this.u;
        if (myButtonImage == null) {
            return;
        }
        int i = PrefVideo.o;
        if (i == 1) {
            myButtonImage.setImageResource(R.drawable.outline_screen_lock_portrait_white_24);
        } else if (i == 2) {
            myButtonImage.setImageResource(R.drawable.outline_screen_lock_landscape_white_24);
        } else {
            myButtonImage.setImageResource(R.drawable.outline_screen_rotation_white_24);
        }
    }

    @Override // com.mycompany.app.web.WebVideoFrame
    public final boolean g(int i) {
        if (i != 79 && i != 85) {
            if (i != 86) {
                if (i != 126) {
                    if (i != 127) {
                        return false;
                    }
                } else if (this.q != null && this.m0 != 3) {
                    if (this.W) {
                        MainUtil.e8(this.f19574c, R.string.not_support_video);
                        return true;
                    }
                    setVideoPaused(false);
                    return true;
                }
            }
            if (this.q != null && this.m0 != 3) {
                if (this.W) {
                    MainUtil.e8(this.f19574c, R.string.not_support_video);
                    return true;
                }
                setVideoPaused(true);
                return true;
            }
        } else if (this.q != null && this.m0 != 3) {
            if (this.W) {
                MainUtil.e8(this.f19574c, R.string.not_support_video);
                return true;
            }
            k0();
            return true;
        }
        return true;
    }

    public final void g0(final boolean z, boolean z2) {
        if (Build.VERSION.SDK_INT < 26 || this.f == null) {
            return;
        }
        int i = this.E0;
        int i2 = this.F0;
        if (i == 0 || i2 == 0) {
            i = 1280;
            i2 = 720;
        }
        PictureInPictureParams.Builder builder = new PictureInPictureParams.Builder();
        this.z0 = builder;
        builder.setAspectRatio(new Rational(i, i2));
        if (z && !z2) {
            setPipParam2(z);
        } else {
            c0(new Runnable() { // from class: com.mycompany.app.web.WebVideoFull.46
                @Override // java.lang.Runnable
                public final void run() {
                    WebVideoFull.this.setPipParam2(z);
                }
            });
        }
    }

    @Override // com.mycompany.app.web.WebVideoFrame
    public int getVideoType() {
        return this.T;
    }

    @Override // com.mycompany.app.web.WebVideoFrame
    public final boolean h() {
        if (!this.h && !this.i) {
            DialogSeekBright dialogSeekBright = this.x0;
            if (dialogSeekBright == null || !dialogSeekBright.j()) {
                DialogSeekAudio dialogSeekAudio = this.y0;
                if (dialogSeekAudio == null || !dialogSeekAudio.j()) {
                    return false;
                }
                return true;
            }
            return true;
        }
        return true;
    }

    public final void h0() {
        ViewGroup viewGroup = this.j;
        if (viewGroup == null) {
            return;
        }
        this.i = true;
        viewGroup.postDelayed(new Runnable() { // from class: com.mycompany.app.web.WebVideoFull.43
            @Override // java.lang.Runnable
            public final void run() {
                WebVideoFull.this.i = false;
            }
        }, 800L);
    }

    @Override // com.mycompany.app.web.WebVideoFrame
    public final void i() {
        this.M0 = false;
    }

    public final void i0() {
        if (!this.O0 && !this.d0) {
            this.O0 = true;
            ViewGroup viewGroup = this.j;
            if (viewGroup == null) {
                return;
            }
            viewGroup.postDelayed(new Runnable() { // from class: com.mycompany.app.web.WebVideoFull.75
                @Override // java.lang.Runnable
                public final void run() {
                    WebVideoFull webVideoFull = WebVideoFull.this;
                    MainUtil.I(webVideoFull.k, "myVidFfwd();", false);
                    WebVideoFull.E(webVideoFull);
                }
            }, 100L);
        }
    }

    @Override // com.mycompany.app.web.WebVideoFrame
    public final boolean j() {
        return this.K0;
    }

    public final void j0() {
        if (!this.O0 && !this.d0) {
            this.O0 = true;
            ViewGroup viewGroup = this.j;
            if (viewGroup == null) {
                return;
            }
            viewGroup.postDelayed(new Runnable() { // from class: com.mycompany.app.web.WebVideoFull.74
                @Override // java.lang.Runnable
                public final void run() {
                    WebVideoFull webVideoFull = WebVideoFull.this;
                    MainUtil.I(webVideoFull.k, "myVidFrwd();", false);
                    WebVideoFull.E(webVideoFull);
                }
            }, 100L);
        }
    }

    @Override // com.mycompany.app.web.WebVideoFrame
    public final boolean k() {
        return this.J0;
    }

    public final void k0() {
        if (!this.O0) {
            this.O0 = true;
            ViewGroup viewGroup = this.j;
            if (viewGroup == null) {
                return;
            }
            viewGroup.postDelayed(new Runnable() { // from class: com.mycompany.app.web.WebVideoFull.72
                @Override // java.lang.Runnable
                public final void run() {
                    WebVideoFull webVideoFull = WebVideoFull.this;
                    MainUtil.I(webVideoFull.k, "myVidToggle();", false);
                    WebVideoFull.E(webVideoFull);
                }
            }, 100L);
        }
    }

    @Override // com.mycompany.app.web.WebVideoFrame
    public final boolean l() {
        DialogSeekBright dialogSeekBright = this.x0;
        if (dialogSeekBright == null || !dialogSeekBright.o()) {
            DialogSeekAudio dialogSeekAudio = this.y0;
            if (dialogSeekAudio != null && dialogSeekAudio.o()) {
                return true;
            }
            return this.M0;
        }
        return true;
    }

    public final void l0() {
        boolean h0;
        if (this.N == null) {
            return;
        }
        MainActivity mainActivity = this.f19574c;
        if (mainActivity == null) {
            h0 = MainUtil.N5(this.f);
        } else {
            h0 = mainActivity.h0();
        }
        if (h0) {
            this.N.setVisibility(8);
            this.O.setVisibility(0);
        } else {
            this.N.setVisibility(0);
            this.O.setVisibility(8);
        }
    }

    @Override // com.mycompany.app.web.WebVideoFrame
    public final boolean m() {
        if (this.x0 != null || this.y0 != null) {
            return true;
        }
        return false;
    }

    public final void m0() {
        if (this.q == null) {
            return;
        }
        X();
        this.q.d(false);
        this.K.d(false, false);
        this.L.d(false, false);
        this.M.d(false, false);
    }

    @Override // com.mycompany.app.web.WebVideoFrame
    public final boolean n() {
        if (this.z0 != null) {
            return true;
        }
        return false;
    }

    public final void n0(boolean z) {
        if (PrefVideo.k && PrefPdf.v && this.R == null && this.S == null && this.p != null && this.f != null) {
            this.X0 = z;
            ViewGroup viewGroup = this.j;
            if (viewGroup != null) {
                viewGroup.post(new Runnable() { // from class: com.mycompany.app.web.WebVideoFull.25
                    /* JADX WARN: Multi-variable type inference failed */
                    /* JADX WARN: Type inference failed for: r3v4, types: [android.view.View$OnClickListener, java.lang.Object] */
                    @Override // java.lang.Runnable
                    public final void run() {
                        MainActivity mainActivity;
                        final WebVideoFull webVideoFull = WebVideoFull.this;
                        boolean z2 = webVideoFull.X0;
                        if (PrefVideo.k && PrefPdf.v && webVideoFull.R == null && webVideoFull.S == null && webVideoFull.p != null && (mainActivity = webVideoFull.f19574c) != null) {
                            MyFadeFrame myFadeFrame = new MyFadeFrame(mainActivity);
                            int i = MainApp.f1;
                            myFadeFrame.setPadding(i, i, i, i);
                            FrameLayout frameLayout = new FrameLayout(mainActivity);
                            frameLayout.setBackgroundResource(R.drawable.round_guide_16);
                            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
                            layoutParams.gravity = 17;
                            myFadeFrame.addView(frameLayout, layoutParams);
                            int G = (int) MainUtil.G(mainActivity, 32.0f);
                            View view = new View(mainActivity);
                            view.setBackgroundResource(R.drawable.outline_touch_long_dark_20);
                            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(G, G);
                            layoutParams2.gravity = 1;
                            layoutParams2.topMargin = G;
                            frameLayout.addView(view, layoutParams2);
                            AppCompatTextView appCompatTextView = new AppCompatTextView(mainActivity, null);
                            appCompatTextView.setPadding(G, G, G, G);
                            appCompatTextView.setLineSpacing(MainApp.F1, 1.0f);
                            appCompatTextView.setTextSize(1, 16.0f);
                            appCompatTextView.setTextColor(-1);
                            FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-2, -2);
                            layoutParams3.gravity = 1;
                            layoutParams3.topMargin = MainApp.g1;
                            frameLayout.addView(appCompatTextView, layoutParams3);
                            MyButtonImage myButtonImage = new MyButtonImage(mainActivity);
                            myButtonImage.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                            myButtonImage.setImageResource(R.drawable.outline_close_white_24);
                            myButtonImage.setBgNorRadius(MainApp.f1 / 2.0f);
                            myButtonImage.k(-1593835520, -1586137739);
                            int i2 = MainApp.g1;
                            FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(i2, i2);
                            layoutParams4.gravity = 8388613;
                            frameLayout.addView(myButtonImage, layoutParams4);
                            webVideoFull.S = myFadeFrame;
                            MyFadeRelative myFadeRelative = webVideoFull.q;
                            if (myFadeRelative != null) {
                                myFadeRelative.d(false);
                            }
                            webVideoFull.T();
                            webVideoFull.S();
                            webVideoFull.V();
                            webVideoFull.W();
                            webVideoFull.U();
                            appCompatTextView.setText(mainActivity.getString(R.string.video_icon_guide) + "\n" + mainActivity.getString(R.string.change_in_setting));
                            myButtonImage.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.web.WebVideoFull.26
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view2) {
                                    WebVideoFull.B(WebVideoFull.this);
                                }
                            });
                            if (z2) {
                                webVideoFull.S.setVisibility(4);
                            }
                            webVideoFull.S.setListener(new MyFadeListener() { // from class: com.mycompany.app.web.WebVideoFull.27
                                @Override // com.mycompany.app.view.MyFadeListener
                                public final void a(boolean z3) {
                                    ViewGroup viewGroup2;
                                    if (z3 || (viewGroup2 = WebVideoFull.this.j) == null) {
                                        return;
                                    }
                                    viewGroup2.post(new Runnable() { // from class: com.mycompany.app.web.WebVideoFull.27.1
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            AnonymousClass27 anonymousClass27 = AnonymousClass27.this;
                                            MyFadeFrame myFadeFrame2 = WebVideoFull.this.S;
                                            if (myFadeFrame2 != null) {
                                                myFadeFrame2.f();
                                                WebVideoFull webVideoFull2 = WebVideoFull.this;
                                                webVideoFull2.removeView(webVideoFull2.S);
                                                WebVideoFull.this.S = null;
                                            }
                                        }
                                    });
                                }

                                @Override // com.mycompany.app.view.MyFadeListener
                                public final void b(boolean z3, boolean z4) {
                                }
                            });
                            webVideoFull.S.setOnClickListener(new Object());
                            webVideoFull.S.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.mycompany.app.web.WebVideoFull.29
                                @Override // android.view.View.OnLongClickListener
                                public final boolean onLongClick(View view2) {
                                    WebVideoFull webVideoFull2 = WebVideoFull.this;
                                    WebVideoFull.B(webVideoFull2);
                                    webVideoFull2.r0 = true;
                                    WebVideoFull.F(webVideoFull2, true, true);
                                    return true;
                                }
                            });
                            webVideoFull.Y0 = z2;
                            ViewGroup viewGroup2 = webVideoFull.j;
                            if (viewGroup2 != null) {
                                viewGroup2.post(new Runnable() { // from class: com.mycompany.app.web.WebVideoFull.30
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        MyFadeFrame myFadeFrame2;
                                        WebVideoFull webVideoFull2 = WebVideoFull.this;
                                        boolean z3 = webVideoFull2.Y0;
                                        if (PrefVideo.k && PrefPdf.v && (myFadeFrame2 = webVideoFull2.S) != null) {
                                            webVideoFull2.addView(myFadeFrame2, -1, -1);
                                            if (z3) {
                                                webVideoFull2.S.h(true);
                                            }
                                        }
                                    }
                                });
                            }
                        }
                    }
                });
            }
        }
    }

    @Override // com.mycompany.app.web.WebVideoFrame
    public final void o() {
        V();
        W();
        U();
        MyFadeRelative myFadeRelative = this.q;
        if (myFadeRelative != null) {
            myFadeRelative.d(false);
        }
    }

    @Override // com.mycompany.app.web.WebVideoFrame
    public final void p() {
        if (this.A0) {
            this.A0 = false;
            ViewGroup viewGroup = this.j;
            if (viewGroup != null) {
                viewGroup.postDelayed(new Runnable() { // from class: com.mycompany.app.web.WebVideoFull.68
                    @Override // java.lang.Runnable
                    public final void run() {
                        MainUtil.I(WebVideoFull.this.k, "myChkPlay();", false);
                    }
                }, 500L);
            } else {
                return;
            }
        }
        d0();
        if (PrefVideo.k && PrefPdf.v) {
            n0(false);
        }
        boolean z = this.V0;
        boolean z2 = PrefVideo.n;
        if (z != z2) {
            this.V0 = z2;
            ViewGroup viewGroup2 = this.j;
            if (viewGroup2 == null) {
                return;
            }
            viewGroup2.post(new Runnable() { // from class: com.mycompany.app.web.WebVideoFull.69
                @Override // java.lang.Runnable
                public final void run() {
                    WebVideoFull webVideoFull = WebVideoFull.this;
                    MainActivity mainActivity = webVideoFull.f19574c;
                    if (mainActivity == null) {
                        return;
                    }
                    if (Build.VERSION.SDK_INT < 30) {
                        MainUtil.G7(mainActivity.getWindow(), webVideoFull.f19574c.a0(), false, false, false, PrefVideo.n);
                    } else {
                        MainUtil.F7(mainActivity.getWindow(), false, PrefVideo.n);
                    }
                }
            });
        }
    }

    @Override // com.mycompany.app.web.WebVideoFrame
    public final void q(boolean z, boolean z2, String str) {
        this.V = true;
        if (z && !TextUtils.isEmpty(str) && !AdError.UNDEFINED_DOMAIN.equals(str)) {
            long E6 = MainUtil.E6(str) * 1000.0f;
            if (E6 < 0) {
                E6 = 0;
            }
            this.e0 = E6;
        } else {
            a0();
        }
        this.b0 = z2;
        ViewGroup viewGroup = this.j;
        if (viewGroup != null) {
            viewGroup.post(new AnonymousClass73());
        }
        if (this.D0) {
            this.D0 = false;
            Q();
        }
    }

    @Override // com.mycompany.app.web.WebVideoFrame
    public final void r(String str, String str2) {
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        WebVideoFrame.VideoFrameListener videoFrameListener;
        ViewGroup viewGroup3;
        if (!TextUtils.isEmpty(str)) {
            if (str.equals("onYouType")) {
                if ("1".equals(str2)) {
                    this.T = 3;
                    WebVideoFrame.VideoFrameListener videoFrameListener2 = this.o;
                    if (videoFrameListener2 != null) {
                        WebViewActivity webViewActivity = WebViewActivity.this;
                        if (webViewActivity.R5 != null) {
                            webViewActivity.Q5 = 3;
                        }
                    }
                    if (this.B0) {
                        this.B0 = false;
                        if (this.F != null && (viewGroup3 = this.j) != null) {
                            viewGroup3.post(new Runnable() { // from class: com.mycompany.app.web.WebVideoFull.70
                                @Override // java.lang.Runnable
                                public final void run() {
                                    WebVideoFull webVideoFull = WebVideoFull.this;
                                    MyButtonImage myButtonImage = webVideoFull.F;
                                    if (myButtonImage == null) {
                                        return;
                                    }
                                    webVideoFull.C0 = false;
                                    myButtonImage.setVisibility(8);
                                }
                            });
                            return;
                        }
                        return;
                    }
                    return;
                }
                return;
            }
            if (str.equals("onVidPaused")) {
                this.b0 = "1".equals(str2);
                ViewGroup viewGroup4 = this.j;
                if (viewGroup4 != null) {
                    viewGroup4.post(new AnonymousClass73());
                    return;
                }
                return;
            }
            long j = 0;
            if (str.equals("onVidDur")) {
                if (!this.W) {
                    if (!TextUtils.isEmpty(str2) && !AdError.UNDEFINED_DOMAIN.equals(str2)) {
                        long E6 = MainUtil.E6(str2) * 1000.0f;
                        if (E6 >= 0) {
                            j = E6;
                        }
                        this.e0 = j;
                        return;
                    }
                    a0();
                    return;
                }
                return;
            }
            if (str.equals("onVidPos")) {
                boolean z = this.W0;
                this.W0 = false;
                this.h0 = false;
                if (!this.W) {
                    if (!TextUtils.isEmpty(str2) && !AdError.UNDEFINED_DOMAIN.equals(str2)) {
                        long E62 = MainUtil.E6(str2) * 1000.0f;
                        long j2 = this.e0;
                        if (E62 > j2) {
                            E62 = j2;
                        }
                        if (E62 >= 0) {
                            j = E62;
                        }
                        this.f0 = j;
                        this.g0 = -1L;
                        if (z && (videoFrameListener = this.o) != null) {
                            ((WebViewActivity.AnonymousClass270) videoFrameListener).b(j);
                            return;
                        }
                        return;
                    }
                    a0();
                    return;
                }
                return;
            }
            if (str.equals("onVidRate")) {
                if (this.x != null) {
                    float F6 = MainUtil.F6(str2, 1.0f);
                    this.f1 = F6;
                    ViewGroup viewGroup5 = this.j;
                    if (viewGroup5 != null) {
                        viewGroup5.post(new Runnable() { // from class: com.mycompany.app.web.WebVideoFull.77
                            @Override // java.lang.Runnable
                            public final void run() {
                                final WebVideoFull webVideoFull = WebVideoFull.this;
                                MyButtonImage myButtonImage = webVideoFull.x;
                                float f = webVideoFull.f1;
                                webVideoFull.f1 = 0.0f;
                                if (webVideoFull.v0 == null) {
                                    webVideoFull.U();
                                    if (myButtonImage != null) {
                                        MyFadeRelative myFadeRelative = webVideoFull.q;
                                        if (myFadeRelative != null) {
                                            myFadeRelative.setAutoHide(false);
                                        }
                                        ArrayList arrayList = new ArrayList();
                                        int i = 0;
                                        while (true) {
                                            float[] fArr = WebVideoFull.o1;
                                            boolean z2 = true;
                                            if (i >= 8) {
                                                break;
                                            }
                                            float f2 = fArr[i];
                                            if (i == 3) {
                                                int i2 = R.string.normal_rate;
                                                if (Float.compare(f2, f) != 0) {
                                                    z2 = false;
                                                }
                                                arrayList.add(new MyPopupAdapter.PopMenuItem(i, i2, z2));
                                            } else {
                                                String str3 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED + f2;
                                                if (Float.compare(f2, f) != 0) {
                                                    z2 = false;
                                                }
                                                arrayList.add(new MyPopupAdapter.PopMenuItem(str3, i, z2));
                                            }
                                            i++;
                                        }
                                        webVideoFull.a1 = f;
                                        MyPopupMenu myPopupMenu = new MyPopupMenu(webVideoFull.f19574c, webVideoFull.j, myButtonImage, arrayList, true, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.web.WebVideoFull.61
                                            @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                            public final void a() {
                                                float[] fArr2 = WebVideoFull.o1;
                                                WebVideoFull.this.U();
                                            }

                                            @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                            public final boolean b(View view, int i3) {
                                                WebVideoFull webVideoFull2 = WebVideoFull.this;
                                                float f3 = webVideoFull2.a1;
                                                webVideoFull2.a1 = 0.0f;
                                                float f4 = WebVideoFull.o1[i3 % 8];
                                                if (Float.compare(f4, f3) != 0) {
                                                    webVideoFull2.g1 = f4;
                                                    ViewGroup viewGroup6 = webVideoFull2.j;
                                                    if (viewGroup6 != null) {
                                                        viewGroup6.postDelayed(new Runnable() { // from class: com.mycompany.app.web.WebVideoFull.61.1
                                                            @Override // java.lang.Runnable
                                                            public final void run() {
                                                                WebVideoFull webVideoFull3 = WebVideoFull.this;
                                                                float f5 = webVideoFull3.g1;
                                                                webVideoFull3.g1 = 0.0f;
                                                                if (Float.compare(f5, 0.0f) == 0 || webVideoFull3.k == null) {
                                                                    return;
                                                                }
                                                                MainUtil.I(webVideoFull3.k, "myVidRat2(" + f5 + ");", false);
                                                            }
                                                        }, 500L);
                                                        return true;
                                                    }
                                                }
                                                return true;
                                            }
                                        });
                                        webVideoFull.v0 = myPopupMenu;
                                        myPopupMenu.q = true;
                                        MainActivity mainActivity = webVideoFull.f19574c;
                                        if (mainActivity != null) {
                                            mainActivity.Z0 = myPopupMenu;
                                        }
                                        ViewGroup viewGroup6 = webVideoFull.j;
                                        if (viewGroup6 != null) {
                                            viewGroup6.post(new Runnable() { // from class: com.mycompany.app.web.WebVideoFull.62
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    WebVideoFull webVideoFull2 = WebVideoFull.this;
                                                    if (webVideoFull2.v0 != null) {
                                                        WebVideoFull.J(webVideoFull2);
                                                    }
                                                }
                                            });
                                        }
                                    }
                                }
                                webVideoFull.w0 = false;
                            }
                        });
                        int i = this.T;
                        if ((i == 2 || i == 3) && MainUtil.m8() && Float.compare(PrefZtwo.W, F6) != 0) {
                            PrefZtwo.W = F6;
                            PrefSet.e(this.f, F6);
                            return;
                        }
                        return;
                    }
                    return;
                }
                return;
            }
            if (str.equals("onVidRat2")) {
                if (!TextUtils.isEmpty(str2) && !"0".equals(str2)) {
                    int i2 = this.T;
                    if ((i2 == 2 || i2 == 3) && MainUtil.m8()) {
                        float F62 = MainUtil.F6(str2, 1.0f);
                        if (Float.compare(PrefZtwo.W, F62) != 0) {
                            PrefZtwo.W = F62;
                            PrefSet.e(this.f, F62);
                            return;
                        }
                        return;
                    }
                    return;
                }
                a0();
                return;
            }
            if (str.equals("onVidSize")) {
                this.h1 = str2;
                c0(new Runnable() { // from class: com.mycompany.app.web.WebVideoFull.79
                    @Override // java.lang.Runnable
                    public final void run() {
                        float f;
                        String[] split2;
                        WebVideoFull webVideoFull = WebVideoFull.this;
                        String str3 = webVideoFull.h1;
                        webVideoFull.h1 = null;
                        boolean z2 = false;
                        webVideoFull.E0 = 0;
                        webVideoFull.F0 = 0;
                        if (TextUtils.isEmpty(str3) || str3.equals("0")) {
                            f = -1.0f;
                        } else {
                            if (!str3.equals("/") && (split2 = str3.split("/")) != null && split2.length == 2) {
                                int b0 = WebVideoFull.b0(split2[0]);
                                int b02 = WebVideoFull.b0(split2[1]);
                                if (b0 != 0 && b02 != 0) {
                                    webVideoFull.E0 = b0;
                                    webVideoFull.F0 = b02;
                                    f = b02 / b0;
                                }
                            }
                            f = 0.0f;
                        }
                        webVideoFull.G0 = f;
                        webVideoFull.H0 = true;
                        if (f < 0.0f) {
                            z2 = true;
                        }
                        webVideoFull.I0 = z2;
                        if (z2) {
                            return;
                        }
                        WebVideoFull.P(webVideoFull);
                    }
                });
                return;
            }
            if (str.equals("onYouCon")) {
                int i3 = this.T;
                if (i3 != 2 && i3 != 3) {
                    this.o0 = false;
                    return;
                }
                if (PrefPdf.v) {
                    this.o0 = false;
                    return;
                }
                boolean equals = "1".equals(str2);
                this.o0 = equals;
                if (!equals && (viewGroup2 = this.j) != null) {
                    viewGroup2.post(new Runnable() { // from class: com.mycompany.app.web.WebVideoFull.80
                        @Override // java.lang.Runnable
                        public final void run() {
                            MyFadeRelative myFadeRelative;
                            WebVideoFull webVideoFull = WebVideoFull.this;
                            if (!webVideoFull.o0 && (myFadeRelative = webVideoFull.q) != null) {
                                myFadeRelative.d(false);
                            }
                        }
                    });
                    return;
                }
                return;
            }
            if (str.equals("onYouExp")) {
                boolean equals2 = "visible".equals(str2);
                this.p0 = equals2;
                if (equals2 && (viewGroup = this.j) != null) {
                    viewGroup.post(new Runnable() { // from class: com.mycompany.app.web.WebVideoFull.81
                        @Override // java.lang.Runnable
                        public final void run() {
                            float[] fArr = WebVideoFull.o1;
                            WebVideoFull.this.R();
                        }
                    });
                    return;
                }
                return;
            }
            if (str.equals("onVidSeek")) {
                if ("1".equals(str2)) {
                    this.d0 = true;
                    return;
                }
                ViewGroup viewGroup6 = this.j;
                if (viewGroup6 != null) {
                    viewGroup6.postDelayed(new Runnable() { // from class: com.mycompany.app.web.WebVideoFull.76
                        @Override // java.lang.Runnable
                        public final void run() {
                            WebVideoFull webVideoFull = WebVideoFull.this;
                            webVideoFull.d0 = false;
                            webVideoFull.g0 = -1L;
                        }
                    }, 100L);
                }
            }
        }
    }

    @Override // com.mycompany.app.web.WebVideoFrame
    public final void s(String str, String str2) {
        WebVideoFrame.VideoFrameListener videoFrameListener;
        boolean z = this.W0;
        this.W0 = false;
        this.h0 = false;
        if (!this.W) {
            if (!TextUtils.isEmpty(str) && !AdError.UNDEFINED_DOMAIN.equals(str)) {
                long E6 = MainUtil.E6(str) * 1000.0f;
                long j = 0;
                if (E6 < 0) {
                    E6 = 0;
                }
                this.e0 = E6;
                long E62 = MainUtil.E6(str2) * 1000.0f;
                long j2 = this.e0;
                if (E62 > j2) {
                    E62 = j2;
                }
                if (E62 >= 0) {
                    j = E62;
                }
                this.f0 = j;
                this.g0 = -1L;
                if (z && (videoFrameListener = this.o) != null) {
                    ((WebViewActivity.AnonymousClass270) videoFrameListener).b(j);
                    return;
                }
                return;
            }
            a0();
        }
    }

    @Override // com.mycompany.app.web.WebVideoFrame
    public void setTitle(String str) {
        AppCompatTextView appCompatTextView;
        this.U = str;
        if (this.T != 2 || (appCompatTextView = this.r) == null) {
            return;
        }
        appCompatTextView.setText(str);
        if (PrefPdf.u && !this.A.D) {
            this.r.setVisibility(0);
        } else {
            this.r.setVisibility(8);
        }
    }

    @Override // com.mycompany.app.web.WebVideoFrame
    public void setUrl(String str) {
        if (!MainUtil.q5(this.l, str)) {
            this.l = str;
            this.e0 = -1L;
            this.f0 = -1L;
            this.g0 = -1L;
            ViewGroup viewGroup = this.j;
            if (viewGroup == null) {
                return;
            }
            viewGroup.postDelayed(new Runnable() { // from class: com.mycompany.app.web.WebVideoFull.44
                @Override // java.lang.Runnable
                public final void run() {
                    WebVideoFull.this.getVideoSize();
                }
            }, 800L);
        }
    }

    @Override // com.mycompany.app.web.WebVideoFrame
    public void setVideoDown(boolean z) {
        int i = this.T;
        if (i != 2 && i != 3) {
            this.B0 = z;
        } else {
            this.B0 = false;
        }
        MyButtonImage myButtonImage = this.F;
        if (myButtonImage == null) {
            return;
        }
        if (this.B0 && PrefPdf.u && !this.A.D) {
            this.C0 = true;
            myButtonImage.setVisibility(0);
        } else {
            this.C0 = false;
            myButtonImage.setVisibility(8);
        }
    }

    @Override // com.mycompany.app.web.WebVideoFrame
    public void setYouDialog(boolean z) {
        ViewGroup viewGroup;
        this.q0 = z;
        if (!z || (viewGroup = this.j) == null) {
            return;
        }
        viewGroup.post(new Runnable() { // from class: com.mycompany.app.web.WebVideoFull.82
            @Override // java.lang.Runnable
            public final void run() {
                float[] fArr = WebVideoFull.o1;
                WebVideoFull.this.R();
            }
        });
    }

    @Override // com.mycompany.app.web.WebVideoFrame
    public final void t() {
        T();
        S();
        V();
        W();
        U();
        MainActivity mainActivity = this.f19574c;
        if (mainActivity != null) {
            mainActivity.s0(this, false);
            this.f19574c = null;
        }
        MySizeFrame mySizeFrame = this.p;
        if (mySizeFrame != null) {
            mySizeFrame.f18961c = null;
            this.p = null;
        }
        MyFadeRelative myFadeRelative = this.q;
        if (myFadeRelative != null) {
            myFadeRelative.g();
            this.q = null;
        }
        MyButtonImage myButtonImage = this.s;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.s = null;
        }
        MyButtonImage myButtonImage2 = this.u;
        if (myButtonImage2 != null) {
            myButtonImage2.j();
            this.u = null;
        }
        MyButtonImage myButtonImage3 = this.v;
        if (myButtonImage3 != null) {
            myButtonImage3.j();
            this.v = null;
        }
        MyButtonImage myButtonImage4 = this.w;
        if (myButtonImage4 != null) {
            myButtonImage4.j();
            this.w = null;
        }
        MyButtonImage myButtonImage5 = this.x;
        if (myButtonImage5 != null) {
            myButtonImage5.j();
            this.x = null;
        }
        MyButtonImage myButtonImage6 = this.y;
        if (myButtonImage6 != null) {
            myButtonImage6.j();
            this.y = null;
        }
        MyButtonImage myButtonImage7 = this.z;
        if (myButtonImage7 != null) {
            myButtonImage7.j();
            this.z = null;
        }
        MyButtonCheck myButtonCheck = this.A;
        if (myButtonCheck != null) {
            myButtonCheck.l();
            this.A = null;
        }
        MyButtonImage myButtonImage8 = this.B;
        if (myButtonImage8 != null) {
            myButtonImage8.j();
            this.B = null;
        }
        MyButtonImage myButtonImage9 = this.C;
        if (myButtonImage9 != null) {
            myButtonImage9.j();
            this.C = null;
        }
        MyButtonImage myButtonImage10 = this.D;
        if (myButtonImage10 != null) {
            myButtonImage10.j();
            this.D = null;
        }
        MyButtonCheck myButtonCheck2 = this.E;
        if (myButtonCheck2 != null) {
            myButtonCheck2.l();
            this.E = null;
        }
        MyButtonImage myButtonImage11 = this.F;
        if (myButtonImage11 != null) {
            myButtonImage11.j();
            this.F = null;
        }
        MyButtonImage myButtonImage12 = this.G;
        if (myButtonImage12 != null) {
            myButtonImage12.j();
            this.G = null;
        }
        MyButtonImage myButtonImage13 = this.I;
        if (myButtonImage13 != null) {
            myButtonImage13.j();
            this.I = null;
        }
        WebVideoProgress webVideoProgress = this.K;
        if (webVideoProgress != null) {
            webVideoProgress.f();
            this.K = null;
        }
        WebVideoProgress webVideoProgress2 = this.L;
        if (webVideoProgress2 != null) {
            webVideoProgress2.f();
            this.L = null;
        }
        WebVideoProgress webVideoProgress3 = this.M;
        if (webVideoProgress3 != null) {
            webVideoProgress3.f();
            this.M = null;
        }
        MyFadeFrame myFadeFrame = this.R;
        if (myFadeFrame != null) {
            myFadeFrame.f();
            this.R = null;
        }
        MyFadeFrame myFadeFrame2 = this.S;
        if (myFadeFrame2 != null) {
            myFadeFrame2.f();
            this.S = null;
        }
        this.f = null;
        this.k = null;
        this.l = null;
        this.o = null;
        this.r = null;
        this.t = null;
        this.H = null;
        this.N = null;
        this.O = null;
        this.P = null;
        this.J = null;
        this.U = null;
        this.i0 = null;
        this.z0 = null;
        this.L0 = null;
        ViewGroup viewGroup = this.j;
        if (viewGroup != null) {
            viewGroup.removeView(this);
            this.j = null;
        }
    }

    @Override // com.mycompany.app.web.WebVideoFrame
    public final void u() {
        WebChromeClient.CustomViewCallback customViewCallback = this.n;
        if (customViewCallback != null) {
            customViewCallback.onCustomViewHidden();
            this.n = null;
        }
        View view = this.m;
        if (view != null) {
            removeView(view);
            this.m = null;
        }
        StringBuilder sb = new StringBuilder("(function(){");
        int i = this.T;
        if (i == 2 || i == 3) {
            sb.append("if(youConOsb){youConOsb.disconnect();youConOsb=null;}if(youExpOsb){youExpOsb.disconnect();youExpOsb=null;}");
        }
        sb.append("if(vdEle){vdEle.removeEventListener('playing',myVidPlaying);vdEle.removeEventListener('pause',myVidPaused);vdEle.removeEventListener('seeking',myVidSeeking);vdEle.removeEventListener('seeked',myVidSeeked);vdEle.removeEventListener('timeupdate',myVidDur);vdEle=null;}})();");
        MainUtil.I(this.k, sb.toString(), true);
    }

    @Override // com.mycompany.app.web.WebVideoFrame
    public final void v() {
        this.h = false;
        this.i = false;
    }

    @Override // com.mycompany.app.web.WebVideoFrame
    public final void w() {
        if (this.z0 == null) {
            return;
        }
        if (this.W) {
            MainUtil.e8(this.f19574c, R.string.not_support_video);
        } else {
            i0();
        }
    }

    @Override // com.mycompany.app.web.WebVideoFrame
    public final void x() {
        if (this.z0 == null) {
            return;
        }
        if (this.W) {
            MainUtil.e8(this.f19574c, R.string.not_support_video);
        } else {
            j0();
        }
    }

    @Override // com.mycompany.app.web.WebVideoFrame
    public final void y() {
        if (this.z0 == null) {
            return;
        }
        if (this.W) {
            MainUtil.e8(this.f19574c, R.string.not_support_video);
        } else {
            k0();
        }
    }
}
