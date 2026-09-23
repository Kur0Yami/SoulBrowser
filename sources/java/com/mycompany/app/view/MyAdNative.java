package com.mycompany.app.view;

import android.app.Activity;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Typeface;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdLoader;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.ads.nativead.MediaView;
import com.google.android.gms.ads.nativead.NativeAd;
import com.google.android.gms.ads.nativead.NativeAdOptions;
import com.google.android.gms.ads.nativead.NativeAdView;
import com.google.android.gms.internal.mlkit_vision_text_common.a;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefMain;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.soulbrowser.R;
import java.util.concurrent.ExecutorService;

/* loaded from: classes3.dex */
public class MyAdNative extends FrameLayout {
    public static final /* synthetic */ int D = 0;
    public ExecutorService A;
    public final Runnable B;
    public NativeAd.Image C;

    /* renamed from: c, reason: collision with root package name */
    public boolean f18492c;
    public boolean f;
    public final Context g;
    public Handler h;
    public int i;
    public AdNativeListener j;
    public NativeAdView k;
    public NativeAd l;
    public MediaView m;
    public ImageView n;
    public AppCompatTextView o;
    public RelativeLayout p;
    public AppCompatTextView q;
    public AppCompatTextView r;
    public AdLoader s;
    public int t;
    public long u;
    public boolean v;
    public boolean w;
    public boolean x;
    public boolean y;
    public boolean z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.view.MyAdNative$4, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass4 implements Runnable {
        public AnonymousClass4() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            int i = MyAdNative.D;
            MyAdNative myAdNative = MyAdNative.this;
            myAdNative.n();
            Handler handler = myAdNative.h;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.view.MyAdNative.4.1
                @Override // java.lang.Runnable
                public final void run() {
                    MyAdNative myAdNative2 = MyAdNative.this;
                    int i2 = MyAdNative.D;
                    myAdNative2.o(true);
                    Handler handler2 = myAdNative2.h;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.view.MyAdNative.4.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            Context context;
                            final MyAdNative myAdNative3 = MyAdNative.this;
                            if (myAdNative3.f18492c && (context = myAdNative3.g) != null) {
                                NativeAdView nativeAdView = new NativeAdView(context);
                                nativeAdView.setVisibility(8);
                                myAdNative3.k = nativeAdView;
                                Handler handler3 = myAdNative3.h;
                                if (handler3 == null) {
                                    return;
                                }
                                handler3.post(new Runnable() { // from class: com.mycompany.app.view.MyAdNative.5
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        Context context2;
                                        NativeAdView nativeAdView2;
                                        MediaView mediaView;
                                        MyAdNative myAdNative4 = MyAdNative.this;
                                        if (!myAdNative4.f18492c || (context2 = myAdNative4.g) == null || (nativeAdView2 = myAdNative4.k) == null) {
                                            return;
                                        }
                                        int i3 = R.id.ads_view_head;
                                        LinearLayout linearLayout = new LinearLayout(context2);
                                        linearLayout.setOrientation(1);
                                        nativeAdView2.addView(linearLayout, -1, -2);
                                        View view = new View(context2);
                                        view.setBackgroundResource(R.drawable.ads_noti);
                                        linearLayout.addView(view, (int) MainUtil.G(context2, 25.0f), (int) MainUtil.G(context2, 15.0f));
                                        if (myAdNative4.i != 1) {
                                            FrameLayout frameLayout = new FrameLayout(context2);
                                            int G = (int) MainUtil.G(context2, 172.0f);
                                            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, G);
                                            layoutParams.topMargin = MainApp.F1;
                                            linearLayout.addView(frameLayout, layoutParams);
                                            mediaView = new MediaView(context2);
                                            frameLayout.addView(mediaView, new FrameLayout.LayoutParams(-1, G));
                                        } else {
                                            mediaView = null;
                                        }
                                        int G2 = (int) MainUtil.G(context2, 10.0f);
                                        FrameLayout frameLayout2 = new FrameLayout(context2);
                                        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
                                        layoutParams2.topMargin = G2;
                                        linearLayout.addView(frameLayout2, layoutParams2);
                                        ImageView imageView = new ImageView(context2);
                                        imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
                                        MainUtil.n7(imageView);
                                        int i4 = MainApp.f1;
                                        frameLayout2.addView(imageView, i4, i4);
                                        RelativeLayout relativeLayout = new RelativeLayout(context2);
                                        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, -2);
                                        layoutParams3.setMarginStart(MainApp.g1);
                                        frameLayout2.addView(relativeLayout, layoutParams3);
                                        AppCompatTextView appCompatTextView = new AppCompatTextView(context2, null);
                                        appCompatTextView.setId(i3);
                                        appCompatTextView.setEllipsize(TextUtils.TruncateAt.END);
                                        appCompatTextView.setTextSize(1, 14.0f);
                                        relativeLayout.addView(appCompatTextView, -2, -2);
                                        AppCompatTextView j = a.j(context2, null, 1, 12.0f);
                                        RelativeLayout.LayoutParams h = androidx.work.impl.workers.a.h(-2, -2, 3, i3);
                                        h.topMargin = MainApp.G1;
                                        relativeLayout.addView(j, h);
                                        AppCompatTextView appCompatTextView2 = new AppCompatTextView(context2, null);
                                        int i5 = MainApp.F1;
                                        appCompatTextView2.setPadding(i5, 0, i5, 0);
                                        appCompatTextView2.setGravity(17);
                                        appCompatTextView2.setTextSize(1, 14.0f);
                                        appCompatTextView2.setTextColor(-1);
                                        appCompatTextView2.setTypeface(Typeface.create(Typeface.DEFAULT, 1));
                                        appCompatTextView2.setBackgroundResource(R.drawable.selector_round_theme);
                                        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-1, MainApp.f1);
                                        layoutParams4.topMargin = G2;
                                        linearLayout.addView(appCompatTextView2, layoutParams4);
                                        myAdNative4.m = mediaView;
                                        myAdNative4.n = imageView;
                                        myAdNative4.o = appCompatTextView2;
                                        myAdNative4.p = relativeLayout;
                                        myAdNative4.q = appCompatTextView;
                                        myAdNative4.r = j;
                                        myAdNative4.setDarkMode(false);
                                        if (!myAdNative4.f18492c) {
                                            myAdNative4.n();
                                            myAdNative4.o(true);
                                        } else {
                                            myAdNative4.q();
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

    /* loaded from: classes3.dex */
    public interface AdNativeListener {
        boolean a();

        void b(MyAdNative myAdNative);

        void c(MyAdNative myAdNative);

        void d();

        void e();

        void f(MyAdNative myAdNative);

        void g(boolean z);
    }

    public MyAdNative(Activity activity) {
        super(activity);
        this.B = new Runnable() { // from class: com.mycompany.app.view.MyAdNative.11
            @Override // java.lang.Runnable
            public final void run() {
                MyAdNative myAdNative = MyAdNative.this;
                if (myAdNative.t == 0) {
                    myAdNative.setAdFailed(null);
                }
            }
        };
        this.f18492c = true;
        this.g = activity;
        this.h = new Handler(Looper.getMainLooper());
    }

    public static void a(MyAdNative myAdNative) {
        AdNativeListener adNativeListener;
        Handler handler;
        NativeAdOptions build;
        if (myAdNative.f18492c && myAdNative.k != null && (adNativeListener = myAdNative.j) != null) {
            try {
                if (myAdNative.s != null) {
                    myAdNative.v = false;
                    return;
                }
                if (myAdNative.f && !adNativeListener.a()) {
                    myAdNative.v = false;
                    if (myAdNative.i == 1) {
                        build = new NativeAdOptions.Builder().build();
                    } else {
                        build = new NativeAdOptions.Builder().setVideoOptions(new VideoOptions.Builder().setStartMuted(true).build()).build();
                    }
                    AdLoader build2 = new AdLoader.Builder(myAdNative.g, "ca-app-pub-6463451207091427/9035340663").forNativeAd(new NativeAd.OnNativeAdLoadedListener() { // from class: com.mycompany.app.view.MyAdNative.9
                        @Override // com.google.android.gms.ads.nativead.NativeAd.OnNativeAdLoadedListener
                        public final void onNativeAdLoaded(NativeAd nativeAd) {
                            MyAdNative.this.setAdLoaded(nativeAd);
                        }
                    }).withAdListener(new AdListener() { // from class: com.mycompany.app.view.MyAdNative.8
                        @Override // com.google.android.gms.ads.AdListener, com.google.android.gms.ads.internal.client.zza
                        public final void onAdClicked() {
                            final MyAdNative myAdNative2 = MyAdNative.this;
                            if (myAdNative2.f18492c) {
                                myAdNative2.y = true;
                                Handler handler2 = myAdNative2.h;
                                if (handler2 == null) {
                                    return;
                                }
                                handler2.post(new Runnable() { // from class: com.mycompany.app.view.MyAdNative.13
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        AdNativeListener adNativeListener2 = MyAdNative.this.j;
                                        if (adNativeListener2 != null) {
                                            adNativeListener2.e();
                                        }
                                    }
                                });
                            }
                        }

                        @Override // com.google.android.gms.ads.AdListener
                        public final void onAdFailedToLoad(LoadAdError loadAdError) {
                            MyAdNative.this.setAdFailed(loadAdError);
                        }
                    }).withNativeAdOptions(build).build();
                    myAdNative.s = build2;
                    build2.loadAd(new AdRequest.Builder().build());
                    Handler handler2 = myAdNative.h;
                    if (handler2 != null) {
                        handler2.postDelayed(myAdNative.B, 5000L);
                        return;
                    }
                    return;
                }
                myAdNative.v = true;
                if (myAdNative.f && (handler = myAdNative.h) != null) {
                    handler.postDelayed(new Runnable() { // from class: com.mycompany.app.view.MyAdNative.7
                        @Override // java.lang.Runnable
                        public final void run() {
                            int i = MyAdNative.D;
                            MyAdNative.this.q();
                        }
                    }, 1000L);
                }
            } catch (Exception unused) {
                myAdNative.setAdFailed(null);
            }
        }
    }

    public static void b(MyAdNative myAdNative) {
        AdNativeListener adNativeListener;
        Handler handler;
        if (myAdNative.f18492c && myAdNative.k != null && myAdNative.l != null && (adNativeListener = myAdNative.j) != null) {
            try {
                if (myAdNative.x) {
                    myAdNative.w = false;
                    adNativeListener.g(false);
                    return;
                }
                if (myAdNative.f && !adNativeListener.a()) {
                    myAdNative.w = false;
                    myAdNative.j.g(true);
                    myAdNative.k.setNativeAd(myAdNative.l);
                    myAdNative.x = true;
                    Handler handler2 = myAdNative.h;
                    if (handler2 != null) {
                        handler2.post(new Runnable() { // from class: com.mycompany.app.view.MyAdNative.21
                            @Override // java.lang.Runnable
                            public final void run() {
                                MyAdNative myAdNative2 = MyAdNative.this;
                                AdNativeListener adNativeListener2 = myAdNative2.j;
                                if (adNativeListener2 != null) {
                                    adNativeListener2.b(myAdNative2);
                                    myAdNative2.j.g(false);
                                }
                                myAdNative2.l();
                            }
                        });
                        return;
                    }
                    return;
                }
                myAdNative.w = true;
                myAdNative.j.g(false);
                if (myAdNative.f && (handler = myAdNative.h) != null) {
                    handler.postDelayed(new Runnable() { // from class: com.mycompany.app.view.MyAdNative.20
                        @Override // java.lang.Runnable
                        public final void run() {
                            MyAdNative.b(MyAdNative.this);
                        }
                    }, 1000L);
                }
            } catch (Exception unused) {
                myAdNative.setAdFailed(null);
            }
        }
    }

    public static void e(MyAdNative myAdNative) {
        NativeAd nativeAd;
        NativeAd.Image image = myAdNative.C;
        myAdNative.C = null;
        if (myAdNative.f18492c && myAdNative.k != null && (nativeAd = myAdNative.l) != null) {
            if (image == null) {
                try {
                    image = nativeAd.getIcon();
                } catch (Exception unused) {
                    myAdNative.setAdFailed(null);
                    return;
                }
            }
            if (image != null) {
                myAdNative.n.setImageDrawable(image.getDrawable());
                myAdNative.k.setIconView(myAdNative.n);
            } else {
                myAdNative.n.setVisibility(8);
            }
            Handler handler = myAdNative.h;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.mycompany.app.view.MyAdNative.15
                    @Override // java.lang.Runnable
                    public final void run() {
                        MyAdNative.f(MyAdNative.this);
                    }
                });
            }
        }
    }

    public static void f(MyAdNative myAdNative) {
        NativeAd nativeAd;
        if (myAdNative.f18492c && myAdNative.k != null && (nativeAd = myAdNative.l) != null) {
            try {
                String callToAction = nativeAd.getCallToAction();
                if (callToAction != null) {
                    myAdNative.o.setText(callToAction);
                    myAdNative.k.setCallToActionView(myAdNative.o);
                } else {
                    myAdNative.o.setVisibility(8);
                }
                Handler handler = myAdNative.h;
                if (handler != null) {
                    handler.post(new Runnable() { // from class: com.mycompany.app.view.MyAdNative.16
                        @Override // java.lang.Runnable
                        public final void run() {
                            MyAdNative.g(MyAdNative.this);
                        }
                    });
                }
            } catch (Exception unused) {
                myAdNative.setAdFailed(null);
            }
        }
    }

    public static void g(MyAdNative myAdNative) {
        NativeAd nativeAd;
        if (myAdNative.f18492c && myAdNative.k != null && (nativeAd = myAdNative.l) != null) {
            try {
                String headline = nativeAd.getHeadline();
                if (headline != null) {
                    myAdNative.q.setText(headline);
                    myAdNative.k.setHeadlineView(myAdNative.q);
                } else {
                    myAdNative.q.setVisibility(8);
                }
                Handler handler = myAdNative.h;
                if (handler != null) {
                    handler.post(new Runnable() { // from class: com.mycompany.app.view.MyAdNative.17
                        @Override // java.lang.Runnable
                        public final void run() {
                            MyAdNative.h(MyAdNative.this);
                        }
                    });
                }
            } catch (Exception unused) {
                myAdNative.setAdFailed(null);
            }
        }
    }

    public static void h(MyAdNative myAdNative) {
        NativeAd nativeAd;
        if (myAdNative.f18492c && myAdNative.k != null && (nativeAd = myAdNative.l) != null) {
            try {
                String body = nativeAd.getBody();
                if (body != null) {
                    myAdNative.r.setText(body);
                    myAdNative.k.setBodyView(myAdNative.r);
                } else {
                    myAdNative.r.setVisibility(8);
                }
                Handler handler = myAdNative.h;
                if (handler != null) {
                    handler.post(new Runnable() { // from class: com.mycompany.app.view.MyAdNative.18
                        @Override // java.lang.Runnable
                        public final void run() {
                            MyAdNative.i(MyAdNative.this);
                        }
                    });
                }
            } catch (Exception unused) {
                myAdNative.setAdFailed(null);
            }
        }
    }

    public static void i(MyAdNative myAdNative) {
        NativeAdView nativeAdView;
        if (myAdNative.f18492c && (nativeAdView = myAdNative.k) != null && myAdNative.l != null) {
            try {
                MediaView mediaView = myAdNative.m;
                if (mediaView != null) {
                    nativeAdView.setMediaView(mediaView);
                }
                Handler handler = myAdNative.h;
                if (handler != null) {
                    handler.post(new Runnable() { // from class: com.mycompany.app.view.MyAdNative.19
                        @Override // java.lang.Runnable
                        public final void run() {
                            MyAdNative.b(MyAdNative.this);
                        }
                    });
                }
            } catch (Exception unused) {
                myAdNative.setAdFailed(null);
            }
        }
    }

    public static void j(MyAdNative myAdNative) {
        NativeAd nativeAd;
        FrameLayout.LayoutParams layoutParams;
        if (myAdNative.f18492c && myAdNative.k != null && (nativeAd = myAdNative.l) != null) {
            try {
                NativeAd.Image icon = nativeAd.getIcon();
                if (icon == null && (layoutParams = (FrameLayout.LayoutParams) myAdNative.p.getLayoutParams()) != null) {
                    layoutParams.leftMargin = 0;
                }
                MainUtil.V6(myAdNative.k);
                if (myAdNative.i == 1) {
                    myAdNative.setPadding(MainApp.E1, MainApp.F1, MainApp.E1, MainApp.F1);
                } else {
                    int i = MainApp.E1;
                    myAdNative.setPadding(i, i, i, MainApp.F1);
                }
                FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -2);
                layoutParams2.gravity = 16;
                myAdNative.addView(myAdNative.k, layoutParams2);
                myAdNative.C = icon;
                Handler handler = myAdNative.h;
                if (handler != null) {
                    handler.post(new Runnable() { // from class: com.mycompany.app.view.MyAdNative.14
                        @Override // java.lang.Runnable
                        public final void run() {
                            MyAdNative.e(MyAdNative.this);
                        }
                    });
                }
            } catch (Exception unused) {
                myAdNative.setAdFailed(null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x000c, code lost:
    
        if (r2.getCode() == 3) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setAdFailed(com.google.android.gms.ads.LoadAdError r2) {
        /*
            r1 = this;
            boolean r0 = r1.f18492c
            if (r0 != 0) goto L5
            goto L17
        L5:
            if (r2 == 0) goto Lf
            int r2 = r2.getCode()
            r0 = 3
            if (r2 != r0) goto Lf
            goto L10
        Lf:
            r0 = 2
        L10:
            r1.setAdState(r0)
            android.os.Handler r2 = r1.h
            if (r2 != 0) goto L18
        L17:
            return
        L18:
            com.mycompany.app.view.MyAdNative$12 r0 = new com.mycompany.app.view.MyAdNative$12
            r0.<init>()
            r2.post(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.view.MyAdNative.setAdFailed(com.google.android.gms.ads.LoadAdError):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAdLoaded(NativeAd nativeAd) {
        n();
        this.l = nativeAd;
        if (!this.f18492c) {
            n();
            o(true);
            return;
        }
        setAdState(1);
        AdNativeListener adNativeListener = this.j;
        if (adNativeListener != null) {
            adNativeListener.d();
        }
        if (!PrefMain.k) {
            PrefMain.k = true;
            PrefSet.d(5, this.g, "mAdsSuccess", true);
        }
        Handler handler = this.h;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.view.MyAdNative.10
            @Override // java.lang.Runnable
            public final void run() {
                MyAdNative.j(MyAdNative.this);
            }
        });
    }

    private void setAdState(int i) {
        if (i == 0) {
            this.u = 0L;
        } else {
            this.u = System.currentTimeMillis();
        }
        this.t = i;
        this.v = false;
        this.w = false;
        this.x = false;
        this.y = false;
        Handler handler = this.h;
        if (handler == null) {
            return;
        }
        handler.removeCallbacks(this.B);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        if (this.f18492c && this.f) {
            super.dispatchDraw(canvas);
        }
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        if (this.f18492c && this.f) {
            super.draw(canvas);
        }
    }

    public int getNewsSize() {
        int height = getHeight();
        if (height > 0) {
            return height;
        }
        return 0;
    }

    public final void k() {
        if (this.f) {
            Handler handler = this.h;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.mycompany.app.view.MyAdNative.3
                    @Override // java.lang.Runnable
                    public final void run() {
                        MyAdNative myAdNative = MyAdNative.this;
                        AdNativeListener adNativeListener = myAdNative.j;
                        if (adNativeListener != null) {
                            adNativeListener.c(myAdNative);
                        }
                    }
                });
                return;
            }
            return;
        }
        if (getVisibility() != 8) {
            setVisibility(8);
        }
    }

    public final void l() {
        Handler handler;
        if (this.k != null) {
            if (this.f && this.x && getVisibility() == 0) {
                if (this.k.getVisibility() != 0 && (handler = this.h) != null) {
                    handler.post(new Runnable() { // from class: com.mycompany.app.view.MyAdNative.22
                        @Override // java.lang.Runnable
                        public final void run() {
                            MyAdNative myAdNative = MyAdNative.this;
                            if (myAdNative.k != null) {
                                if (myAdNative.f && myAdNative.x && myAdNative.getVisibility() == 0) {
                                    myAdNative.k.setVisibility(0);
                                } else if (myAdNative.k.getVisibility() != 8) {
                                    myAdNative.k.setVisibility(8);
                                }
                            }
                        }
                    });
                    return;
                }
                return;
            }
            if (this.k.getVisibility() != 8) {
                this.k.setVisibility(8);
            }
        }
    }

    public final void m(int i, AdNativeListener adNativeListener) {
        this.j = adNativeListener;
        this.i = i;
        setAdState(0);
        Handler handler = this.h;
        if (handler == null) {
            return;
        }
        handler.post(new AnonymousClass4());
    }

    public final void n() {
        NativeAd nativeAd = this.l;
        this.l = null;
        if (nativeAd == null) {
            return;
        }
        try {
            nativeAd.destroy();
        } catch (Exception unused) {
        }
    }

    public final void o(boolean z) {
        NativeAdView nativeAdView = this.k;
        this.k = null;
        if (nativeAdView == null) {
            return;
        }
        nativeAdView.setVisibility(8);
        if (z) {
            MainUtil.V6(nativeAdView);
        }
        try {
            nativeAdView.destroy();
        } catch (Exception unused) {
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        this.f = true;
        super.onAttachedToWindow();
        k();
        if (this.v) {
            this.v = false;
            Handler handler = this.h;
            if (handler != null) {
                handler.postDelayed(new Runnable() { // from class: com.mycompany.app.view.MyAdNative.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        int i = MyAdNative.D;
                        MyAdNative.this.q();
                    }
                }, 400L);
                return;
            }
            return;
        }
        if (this.w) {
            this.w = false;
            Handler handler2 = this.h;
            if (handler2 != null) {
                handler2.postDelayed(new Runnable() { // from class: com.mycompany.app.view.MyAdNative.2
                    @Override // java.lang.Runnable
                    public final void run() {
                        MyAdNative.b(MyAdNative.this);
                    }
                }, 400L);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        this.f = false;
        k();
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        if (this.f18492c && this.f) {
            super.onDraw(canvas);
        }
    }

    public final boolean p() {
        boolean A;
        boolean z;
        if (!this.x) {
            return false;
        }
        if (this.t != 1) {
            A = false;
        } else {
            A = MainApp.A(this.g);
        }
        if (A) {
            if (this.u == 0 || System.currentTimeMillis() <= this.u + 3000000) {
                z = false;
            } else {
                z = true;
            }
            if (!z) {
                return true;
            }
        }
        return false;
    }

    public final void q() {
        if (this.f18492c && this.k != null) {
            Runnable runnable = new Runnable() { // from class: com.mycompany.app.view.MyAdNative.6
                @Override // java.lang.Runnable
                public final void run() {
                    MyAdNative.a(MyAdNative.this);
                }
            };
            ExecutorService executorService = this.A;
            if (executorService == null || executorService.isShutdown() || executorService.isTerminated()) {
                executorService = MainApp.i(getContext());
                if (executorService != null) {
                    this.A = executorService;
                } else {
                    return;
                }
            }
            try {
                executorService.execute(runnable);
            } catch (Exception unused) {
            }
        }
    }

    public void setDarkMode(boolean z) {
        AppCompatTextView appCompatTextView = this.q;
        if (appCompatTextView != null) {
            if (z && this.z == MainApp.K1) {
                return;
            }
            boolean z2 = MainApp.K1;
            this.z = z2;
            if (z2) {
                appCompatTextView.setTextColor(-328966);
                this.r.setTextColor(-5197648);
            } else {
                appCompatTextView.setTextColor(-16777216);
                this.r.setTextColor(-12303292);
            }
        }
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        AdNativeListener adNativeListener;
        super.setVisibility(i);
        l();
        if (i != 0 && (adNativeListener = this.j) != null) {
            adNativeListener.g(false);
        }
    }
}
