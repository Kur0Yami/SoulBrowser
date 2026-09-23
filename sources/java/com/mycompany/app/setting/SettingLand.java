package com.mycompany.app.setting;

import android.content.DialogInterface;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Outline;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.Window;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.URLUtil;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.work.impl.workers.a;
import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.data.book.DataBookAds;
import com.mycompany.app.dialog.DialogSaveConfirm;
import com.mycompany.app.dialog.DialogSeekAudio;
import com.mycompany.app.dialog.DialogSetFull;
import com.mycompany.app.dialog.DialogSetMsg;
import com.mycompany.app.image.ImageSizeListener;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefTts;
import com.mycompany.app.pref.PrefWeb;
import com.mycompany.app.pref.PrefZone;
import com.mycompany.app.pref.PrefZtwo;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyEditPure;
import com.mycompany.app.view.MyHeaderView;
import com.mycompany.app.view.MyMainRelative;
import com.mycompany.app.view.MyProgressBar;
import com.mycompany.app.view.MyRoundImage;
import com.mycompany.app.view.MyRoundItem;
import com.mycompany.app.view.MyRoundView;
import com.mycompany.app.web.WebClean;
import com.mycompany.app.web.WebNestView;

/* loaded from: classes3.dex */
public class SettingLand extends CastActivity {
    public static final /* synthetic */ int y2 = 0;
    public MyMainRelative C1;
    public MyButtonImage D1;
    public MyButtonImage E1;
    public MyButtonImage F1;
    public MyRoundItem G1;
    public MyRoundImage H1;
    public MyRoundImage I1;
    public MyRoundImage J1;
    public View K1;
    public View L1;
    public View M1;
    public AppCompatTextView N1;
    public AppCompatTextView O1;
    public DialogSetMsg P1;
    public DialogSaveConfirm Q1;
    public boolean R1;
    public RelativeLayout.LayoutParams S1;
    public int T1;
    public int U1;
    public int V1;
    public int W1;
    public int X1;
    public int Y1;
    public int Z1;
    public int a2;
    public int b2;
    public int c2;
    public int d2;
    public boolean e2;
    public int f2;
    public String g2;
    public String h2;
    public String i2;
    public boolean j2;
    public MyRoundView k2;
    public MyEditPure l2;
    public MyButtonImage m2;
    public MyButtonImage n2;
    public FrameLayout o2;
    public WebNestView p2;
    public MyProgressBar q2;
    public boolean r2;
    public boolean s2;
    public WebClean t2;
    public boolean u2;
    public String v2;
    public int w2;
    public final Runnable x2 = new Runnable() { // from class: com.mycompany.app.setting.SettingLand.17
        @Override // java.lang.Runnable
        public final void run() {
            SettingLand settingLand = SettingLand.this;
            settingLand.J0(settingLand.w2);
        }
    };

    /* renamed from: com.mycompany.app.setting.SettingLand$12, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass12 implements Runnable {

        /* renamed from: com.mycompany.app.setting.SettingLand$12$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 implements Runnable {
            public AnonymousClass1() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                SettingLand settingLand = SettingLand.this;
                WebNestView webNestView = settingLand.p2;
                if (webNestView != null) {
                    MainUtil.X7(webNestView.getSettings(), MainApp.L1);
                    Handler handler = settingLand.O0;
                    if (handler == null) {
                        return;
                    }
                    handler.post(new Runnable() { // from class: com.mycompany.app.setting.SettingLand.12.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            AnonymousClass12 anonymousClass12 = AnonymousClass12.this;
                            SettingLand settingLand2 = SettingLand.this;
                            WebNestView webNestView2 = settingLand2.p2;
                            if (webNestView2 != null) {
                                webNestView2.setWebViewClient(new LocalWebViewClient());
                                webNestView2.setWebChromeClient(new LocalChromeClient());
                                Handler handler2 = SettingLand.this.O0;
                                if (handler2 == null) {
                                    return;
                                }
                                handler2.post(new Runnable() { // from class: com.mycompany.app.setting.SettingLand.12.1.1.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        RunnableC02141 runnableC02141 = RunnableC02141.this;
                                        SettingLand settingLand3 = SettingLand.this;
                                        WebNestView webNestView3 = settingLand3.p2;
                                        if (webNestView3 == null) {
                                            return;
                                        }
                                        webNestView3.z(settingLand3.g2, null);
                                        SettingLand.this.J0(0);
                                    }
                                });
                            }
                        }
                    });
                }
            }
        }

        public AnonymousClass12() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            SettingLand settingLand = SettingLand.this;
            WebNestView webNestView = settingLand.p2;
            if (webNestView != null) {
                int i = PrefZone.w;
                if (i < 50 || i > 500) {
                    PrefZone.w = 100;
                }
                WebSettings settings = webNestView.getSettings();
                settings.setTextZoom(PrefZone.w);
                settings.setSupportZoom(true);
                settings.setBuiltInZoomControls(true);
                settings.setDisplayZoomControls(false);
                settings.setUseWideViewPort(true);
                settings.setLoadWithOverviewMode(true);
                settings.setDomStorageEnabled(true);
                settings.setJavaScriptCanOpenWindowsAutomatically(false);
                settings.setSupportMultipleWindows(false);
                settings.setMediaPlaybackRequiresUserGesture(false);
                settings.setDatabaseEnabled(true);
                settings.setMixedContentMode(0);
                if (Build.VERSION.SDK_INT < 30) {
                    settings.setAllowFileAccessFromFileURLs(true);
                    settings.setAllowUniversalAccessFromFileURLs(true);
                }
                settings.setAllowFileAccess(true);
                if (PrefZone.u) {
                    settings.setLoadsImagesAutomatically(false);
                }
                if (webNestView.C) {
                    MainUtil.Q7(settings, MainUtil.F0(settingLand.f1));
                } else {
                    webNestView.K(settingLand.f1, PrefZtwo.p, settings);
                }
                webNestView.setEnableJs(PrefWeb.H);
                webNestView.setViewCookie(settingLand.f1);
                webNestView.setOverScrollMode(2);
                webNestView.setVerticalScrollBarEnabled(false);
                Handler handler = settingLand.O0;
                if (handler == null) {
                    return;
                }
                handler.post(new AnonymousClass1());
            }
        }
    }

    /* renamed from: com.mycompany.app.setting.SettingLand$13, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass13 extends ViewOutlineProvider {
        @Override // android.view.ViewOutlineProvider
        public final void getOutline(View view, Outline outline) {
            if (outline == null) {
                return;
            }
            int i = MainApp.g1;
            int i2 = MainApp.F1;
            outline.setRoundRect(0, 0, i, i2 * 4, i2);
        }
    }

    /* renamed from: com.mycompany.app.setting.SettingLand$14, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass14 extends ViewOutlineProvider {
        @Override // android.view.ViewOutlineProvider
        public final void getOutline(View view, Outline outline) {
            if (outline == null) {
                return;
            }
            int i = MainApp.g1;
            int i2 = MainApp.F1;
            outline.setRoundRect(0, 0, i, i2 * 4, i2);
        }
    }

    /* renamed from: com.mycompany.app.setting.SettingLand$6, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass6 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* renamed from: com.mycompany.app.setting.SettingLand$7, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass7 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* renamed from: com.mycompany.app.setting.SettingLand$8, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass8 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* loaded from: classes3.dex */
    public class LocalChromeClient extends WebChromeClient {
        public LocalChromeClient() {
        }

        @Override // android.webkit.WebChromeClient
        public final void onProgressChanged(WebView webView, int i) {
            SettingLand settingLand = SettingLand.this;
            if (settingLand.p2 == null) {
                return;
            }
            settingLand.J0(i);
        }
    }

    /* loaded from: classes3.dex */
    public class LocalWebViewClient extends WebViewClient {
        public LocalWebViewClient() {
        }

        @Override // android.webkit.WebViewClient
        public final void doUpdateVisitedHistory(WebView webView, String str, boolean z) {
            SettingLand settingLand = SettingLand.this;
            settingLand.g2 = str;
            settingLand.h2 = MainUtil.I1(str, true);
            MyEditPure myEditPure = settingLand.l2;
            if (myEditPure != null && !myEditPure.isFocused()) {
                settingLand.l2.setText(settingLand.g2);
            }
            settingLand.m0(new Runnable() { // from class: com.mycompany.app.setting.SettingLand.LocalWebViewClient.3
                @Override // java.lang.Runnable
                public final void run() {
                    WebNestView webNestView = SettingLand.this.p2;
                    if (webNestView == null) {
                        return;
                    }
                    webNestView.j(true, -1, null);
                }
            });
        }

        @Override // android.webkit.WebViewClient
        public final void onPageFinished(WebView webView, String str) {
            final SettingLand settingLand = SettingLand.this;
            WebNestView webNestView = settingLand.p2;
            if (webNestView != null) {
                webNestView.setWebLoading(false);
                if (!settingLand.u2 && !TextUtils.isEmpty(str) && !str.equals(settingLand.v2)) {
                    settingLand.u2 = true;
                    settingLand.v2 = str;
                    Handler handler = settingLand.O0;
                    if (handler != null) {
                        handler.post(new Runnable() { // from class: com.mycompany.app.setting.SettingLand.15
                            @Override // java.lang.Runnable
                            public final void run() {
                                SettingLand settingLand2 = SettingLand.this;
                                MainUtil.l(settingLand2.p2);
                                settingLand2.u2 = false;
                            }
                        });
                    }
                }
                settingLand.g2 = str;
                settingLand.h2 = MainUtil.I1(str, true);
                settingLand.m0(new Runnable() { // from class: com.mycompany.app.setting.SettingLand.LocalWebViewClient.2
                    @Override // java.lang.Runnable
                    public final void run() {
                        WebNestView webNestView2;
                        SettingLand settingLand2 = SettingLand.this;
                        WebNestView webNestView3 = settingLand2.p2;
                        if (webNestView3 != null) {
                            webNestView3.j(true, -1, null);
                        }
                        if (PrefWeb.o && (webNestView2 = settingLand2.p2) != null) {
                            webNestView2.L(settingLand2.g2, settingLand2.h2, false);
                        }
                    }
                });
                if (PrefWeb.H) {
                    settingLand.p2.i(settingLand.g2, settingLand.h2, true);
                }
                MyEditPure myEditPure = settingLand.l2;
                if (myEditPure != null && !myEditPure.isFocused()) {
                    settingLand.l2.setText(settingLand.g2);
                }
            }
        }

        @Override // android.webkit.WebViewClient
        public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            SettingLand settingLand = SettingLand.this;
            WebNestView webNestView = settingLand.p2;
            if (webNestView != null) {
                webNestView.setWebLoading(true);
                settingLand.g2 = str;
                settingLand.h2 = MainUtil.I1(str, true);
                settingLand.m0(new Runnable() { // from class: com.mycompany.app.setting.SettingLand.LocalWebViewClient.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        WebNestView webNestView2;
                        SettingLand settingLand2 = SettingLand.this;
                        WebNestView webNestView3 = settingLand2.p2;
                        if (webNestView3 != null) {
                            webNestView3.j(true, -1, null);
                        }
                        if (PrefWeb.o && (webNestView2 = settingLand2.p2) != null) {
                            webNestView2.L(settingLand2.g2, settingLand2.h2, false);
                        }
                    }
                });
                if (PrefWeb.H) {
                    settingLand.p2.i(settingLand.g2, settingLand.h2, false);
                }
                MyEditPure myEditPure = settingLand.l2;
                if (myEditPure != null && !myEditPure.isFocused()) {
                    settingLand.l2.setText(settingLand.g2);
                }
            }
        }

        @Override // android.webkit.WebViewClient
        public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            final SettingLand settingLand = SettingLand.this;
            settingLand.p2 = null;
            MainUtil.D(webView, renderProcessGoneDetail);
            Handler handler = settingLand.O0;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.mycompany.app.setting.SettingLand.16
                    @Override // java.lang.Runnable
                    public final void run() {
                        SettingLand.this.finish();
                    }
                });
                return true;
            }
            return true;
        }

        @Override // android.webkit.WebViewClient
        public final WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
            WebClean webClean;
            WebResourceResponse j;
            WebResourceResponse v1;
            SettingLand settingLand = SettingLand.this;
            if (settingLand.p2 != null && webResourceRequest != null && webResourceRequest.getUrl() != null) {
                String uri = webResourceRequest.getUrl().toString();
                if (PrefZone.k && (v1 = MainUtil.v1(settingLand.f1, uri)) != null) {
                    return v1;
                }
                if (PrefWeb.o) {
                    if (!MainUtil.q5(settingLand.i2, settingLand.g2)) {
                        settingLand.i2 = settingLand.g2;
                        settingLand.j2 = DataBookAds.l(settingLand.f1).n(settingLand.g2, settingLand.h2);
                    }
                    if (!settingLand.j2 && (webClean = settingLand.t2) != null && (j = webClean.j(settingLand.f1, webView, webResourceRequest, settingLand.g2, settingLand.h2, uri, 0)) != null) {
                        return j;
                    }
                }
            }
            return null;
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            return false;
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
            SettingLand settingLand = SettingLand.this;
            if (settingLand.p2 == null || TextUtils.isEmpty(str)) {
                return true;
            }
            settingLand.p2.z(str, null);
            return true;
        }
    }

    public static void D0(SettingLand settingLand) {
        MyEditPure myEditPure = settingLand.l2;
        if (myEditPure != null && settingLand.p2 != null) {
            String a7 = MainUtil.a7(MainUtil.Q0(myEditPure, false));
            if (TextUtils.isEmpty(a7)) {
                a7 = settingLand.g2;
                if (TextUtils.isEmpty(a7)) {
                    MainUtil.e8(settingLand, R.string.empty);
                    settingLand.m2.setVisibility(0);
                    settingLand.n2.setVisibility(8);
                    return;
                }
            }
            settingLand.l2.clearFocus();
            if (MainUtil.q5(a7, settingLand.g2)) {
                settingLand.p2.F();
            } else {
                settingLand.p2.z(MainUtil.q4(null, a7), null);
            }
            MainUtil.X4(settingLand.f1, settingLand.l2);
        }
    }

    public final void E0() {
        DialogSetMsg dialogSetMsg = this.P1;
        if (dialogSetMsg != null) {
            dialogSetMsg.dismiss();
            this.P1 = null;
        }
    }

    public final void F0() {
        DialogSaveConfirm dialogSaveConfirm = this.Q1;
        if (dialogSaveConfirm != null) {
            dialogSaveConfirm.dismiss();
            this.Q1 = null;
        }
    }

    public final boolean G0() {
        if (this.W1 == PrefTts.F && this.X1 == PrefTts.G) {
            return false;
        }
        return true;
    }

    public final void H0(boolean z) {
        if (this.R1) {
            return;
        }
        this.R1 = true;
        if (G0()) {
            PrefTts.F = this.W1;
            PrefTts.G = this.X1;
            PrefTts r = PrefTts.r(this.f1, false);
            if (z) {
                r.n(PrefTts.F, "mWebLand1");
                r.n(PrefTts.G, "mWebLand2");
            } else {
                r.q("mWebLand1");
                r.q("mWebLand2");
            }
            r.a();
        }
        if (z) {
            finish();
        } else {
            this.R1 = false;
        }
    }

    public final void I0(int i, int i2, int i3) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        int i4;
        int i5;
        FrameLayout frameLayout = this.o2;
        if (frameLayout != null) {
            if (this.S1 == null) {
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) frameLayout.getLayoutParams();
                this.S1 = layoutParams;
                if (layoutParams == null) {
                    return;
                }
            }
            int i6 = 0;
            if (i < 0 && i2 < 0) {
                i = 0;
                i2 = 0;
            } else if (i < 0) {
                if (i3 == 3 && (i2 = i2 + i) < 0) {
                    i2 = 0;
                }
                i = 0;
            } else if (i2 < 0) {
                if (i3 == 3 && (i = i + i2) < 0) {
                    i = 0;
                }
                i2 = 0;
            }
            int i7 = i + i2;
            int i8 = this.T1 - this.U1;
            boolean z5 = true;
            if (i7 > i8) {
                if (i3 == 1) {
                    i = i8 - i2;
                } else if (i3 == 2) {
                    i2 = i8 - i;
                }
            }
            RelativeLayout.LayoutParams layoutParams2 = this.S1;
            if (layoutParams2.leftMargin != i) {
                layoutParams2.leftMargin = i;
                z = true;
            } else {
                z = false;
            }
            if (layoutParams2.rightMargin != i2) {
                layoutParams2.rightMargin = i2;
                z2 = true;
            } else {
                z2 = false;
            }
            this.W1 = i;
            this.X1 = i2;
            int round = Math.round((i / this.V1) * 100.0f);
            int round2 = Math.round((this.X1 / this.V1) * 100.0f);
            while (round + round2 > 200) {
                if (round > round2) {
                    round--;
                } else {
                    round2--;
                }
            }
            if (i3 == 1) {
                if (round == 100) {
                    if (this.d2 == 0) {
                        this.d2 = this.c2;
                    }
                } else {
                    this.d2 = 0;
                }
            } else if (i3 == 2) {
                if (round2 == 100) {
                    if (this.d2 == 0) {
                        this.d2 = this.c2;
                    }
                } else {
                    this.d2 = 0;
                }
            } else if (i3 == 3) {
                if (round != round2 && Math.abs(round - round2) != 1) {
                    this.d2 = 0;
                } else if (this.d2 == 0) {
                    this.d2 = this.c2;
                }
            }
            if (i3 == 0) {
                this.N1.setText(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED + round);
                this.O1.setText(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED + round2);
            } else if (z || z2) {
                if (z) {
                    this.N1.setText(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED + round);
                }
                if (z2) {
                    this.O1.setText(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED + round2);
                }
                this.o2.requestLayout();
            }
            if (round == 0 && round2 == 0) {
                z3 = false;
                z4 = true;
                z5 = false;
            } else if (round == 0) {
                if (round2 != 200) {
                    z5 = false;
                }
                z3 = false;
                z4 = false;
            } else {
                if (round2 == 0) {
                    if (round != 200) {
                        z5 = false;
                    }
                    z4 = false;
                    z3 = z5;
                } else {
                    z3 = false;
                    z4 = false;
                }
                z5 = z4;
            }
            MyRoundImage myRoundImage = this.H1;
            if (z5) {
                i4 = 8;
            } else {
                i4 = 0;
            }
            myRoundImage.setVisibility(i4);
            MyRoundImage myRoundImage2 = this.I1;
            if (z3) {
                i5 = 8;
            } else {
                i5 = 0;
            }
            myRoundImage2.setVisibility(i5);
            MyRoundImage myRoundImage3 = this.J1;
            if (z4) {
                i6 = 8;
            }
            myRoundImage3.setVisibility(i6);
        }
    }

    public final void J0(int i) {
        this.w2 = i;
        MyProgressBar myProgressBar = this.q2;
        if (myProgressBar != null) {
            int round = Math.round(myProgressBar.getProgress());
            if (i == 100 && round == 100) {
                this.q2.setSkipDraw(true);
                this.m2.setVisibility(0);
                this.n2.setVisibility(8);
                return;
            }
            this.m2.setVisibility(8);
            this.n2.setVisibility(0);
            MyProgressBar myProgressBar2 = this.q2;
            if (myProgressBar2.B) {
                myProgressBar2.setProgress(0.0f);
                this.q2.setSkipDraw(false);
                J0(Math.max(i, 50));
            } else if (round < i) {
                myProgressBar2.setProgress(round + 3);
                Runnable runnable = this.x2;
                if (runnable != null) {
                    this.q2.removeCallbacks(runnable);
                    this.q2.post(runnable);
                }
            }
        }
    }

    public final void K0() {
        MyButtonImage myButtonImage = this.D1;
        if (myButtonImage == null) {
            return;
        }
        if (MainApp.K1) {
            myButtonImage.setImageResource(R.drawable.outline_chevron_left_dark_24);
            this.E1.setImageResource(R.drawable.outline_replay_dark_20);
            this.F1.setImageResource(R.drawable.outline_check_dark_20);
            this.G1.setBackgroundColor(-12632257);
            this.k2.setBackColor(-14606047);
            this.l2.setTextColor(-328966);
            this.m2.setImageResource(R.drawable.outline_refresh_dark_24);
            this.n2.setImageResource(R.drawable.outline_close_dark_24);
            this.m2.setBgPreColor(-12632257);
            this.n2.setBgPreColor(-12632257);
            this.q2.g(-922746881, -16777216);
            this.N1.setBackgroundColor(-16777216);
            this.O1.setBackgroundColor(-16777216);
            this.N1.setTextColor(-328966);
            this.O1.setTextColor(-328966);
            this.D1.setBgPreColor(-12632257);
            this.E1.setBgPreColor(-12632257);
            this.F1.setBgPreColor(-12632257);
            return;
        }
        myButtonImage.setImageResource(R.drawable.outline_chevron_left_black_24);
        this.E1.setImageResource(R.drawable.outline_replay_black_20);
        this.F1.setImageResource(R.drawable.outline_check_black_20);
        this.G1.setBackgroundColor(-2434342);
        this.k2.setBackColor(-1);
        this.l2.setTextColor(-16777216);
        this.m2.setImageResource(R.drawable.outline_refresh_black_24);
        this.n2.setImageResource(R.drawable.outline_close_black_24);
        this.m2.setBgPreColor(-2039584);
        this.n2.setBgPreColor(-2039584);
        this.q2.g(-13022805, -460552);
        this.N1.setBackgroundColor(-460552);
        this.O1.setBackgroundColor(-460552);
        this.N1.setTextColor(-16777216);
        this.O1.setTextColor(-16777216);
        this.D1.setBgPreColor(553648128);
        this.E1.setBgPreColor(553648128);
        this.F1.setBgPreColor(553648128);
    }

    public final void L0() {
        if (this.P1 != null || this.Q1 != null) {
            return;
        }
        F0();
        DialogSaveConfirm dialogSaveConfirm = new DialogSaveConfirm(this, new DialogSeekAudio.DialogSeekListener() { // from class: com.mycompany.app.setting.SettingLand.20
            @Override // com.mycompany.app.dialog.DialogSeekAudio.DialogSeekListener
            public final void a(int i) {
                int i2 = SettingLand.y2;
                SettingLand settingLand = SettingLand.this;
                settingLand.F0();
                if (i == 0) {
                    settingLand.H0(true);
                } else {
                    settingLand.finish();
                }
            }
        });
        this.Q1 = dialogSaveConfirm;
        dialogSaveConfirm.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingLand.21
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                int i = SettingLand.y2;
                SettingLand.this.F0();
            }
        });
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0011, code lost:
    
        if (r1 != 3) goto L53;
     */
    @Override // com.mycompany.app.main.MainActivity, android.app.Activity, android.view.Window.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean dispatchTouchEvent(android.view.MotionEvent r9) {
        /*
            Method dump skipped, instructions count: 221
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.setting.SettingLand.dispatchTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // com.mycompany.app.main.MainActivity
    public final void l0() {
        if (this.R1) {
            return;
        }
        if (G0()) {
            L0();
        } else {
            finish();
        }
    }

    @Override // com.mycompany.app.main.MainActivity, androidx.activity.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        if (Y()) {
            return;
        }
        l0();
    }

    @Override // com.mycompany.app.main.MainActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        int i;
        super.onConfigurationChanged(configuration);
        MainApp.K1 = MainUtil.i5(true, configuration);
        MainApp.L1 = MainUtil.i5(false, configuration);
        boolean z = this.r2;
        boolean z2 = MainApp.K1;
        if (z != z2) {
            this.r2 = z2;
            MyMainRelative myMainRelative = this.C1;
            if (myMainRelative != null) {
                try {
                    Window window = getWindow();
                    if (MainApp.K1) {
                        i = -16777216;
                    } else {
                        i = -460552;
                    }
                    myMainRelative.b(window, i);
                    K0();
                    A0();
                } catch (Exception unused) {
                }
            } else {
                return;
            }
        }
        boolean z3 = this.s2;
        boolean z4 = MainApp.L1;
        if (z3 != z4) {
            this.s2 = z4;
            FrameLayout frameLayout = this.o2;
            if (frameLayout != null) {
                if (z4) {
                    frameLayout.setBackgroundColor(-14606047);
                } else {
                    frameLayout.setBackgroundColor(-1);
                }
            }
            m0(new Runnable() { // from class: com.mycompany.app.setting.SettingLand.22
                @Override // java.lang.Runnable
                public final void run() {
                    WebNestView webNestView = SettingLand.this.p2;
                    if (webNestView == null) {
                        return;
                    }
                    webNestView.j(true, -1, null);
                }
            });
        }
    }

    @Override // com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        String stringExtra = getIntent().getStringExtra("EXTRA_PATH");
        if (URLUtil.isNetworkUrl(stringExtra)) {
            this.g2 = stringExtra;
        } else {
            this.g2 = "https://www.google.com";
        }
        this.h2 = MainUtil.I1(this.g2, true);
        this.t2 = MainApp.v(this.f1, false);
        this.W1 = PrefTts.F;
        this.X1 = PrefTts.G;
        this.r2 = MainApp.K1;
        this.s2 = MainApp.L1;
        MainUtil.v7(this, 6);
        int i = R.id.set_icon_reset;
        int i2 = R.id.set_icon_apply;
        int i3 = R.id.set_cast_icon;
        int i4 = R.id.set_cast_ctrl;
        MyMainRelative myMainRelative = new MyMainRelative(this);
        myMainRelative.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        MyHeaderView myHeaderView = new MyHeaderView(this);
        myMainRelative.addView(myHeaderView, -1, MainApp.b1);
        MyButtonImage myButtonImage = new MyButtonImage(this);
        ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_INSIDE;
        myButtonImage.setScaleType(scaleType);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(MainApp.g1, MainApp.b1);
        layoutParams.setMarginStart(MainApp.F1);
        myHeaderView.addView(myButtonImage, layoutParams);
        int G = (int) MainUtil.G(this, 144.0f);
        FrameLayout frameLayout = new FrameLayout(this);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, MainApp.b1);
        layoutParams2.setMarginStart(G);
        layoutParams2.setMarginEnd(G);
        myHeaderView.addView(frameLayout, layoutParams2);
        MyRoundView myRoundView = new MyRoundView(this);
        frameLayout.addView(myRoundView, -1, MainApp.b1);
        MyEditPure myEditPure = new MyEditPure(this);
        myEditPure.setGravity(16);
        myEditPure.setSingleLine(true);
        myEditPure.setTextDirection(3);
        myEditPure.setTextSize(1, 16.0f);
        if (Build.VERSION.SDK_INT >= 29) {
            myEditPure.setTextCursorDrawable(R.drawable.edit_cursor);
        }
        myEditPure.setHintTextColor(-8289919);
        myEditPure.setInputType(16);
        myEditPure.setImeOptions(268435459);
        myEditPure.setSelectAllOnFocus(true);
        myEditPure.setBackground(null);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, MainApp.b1);
        layoutParams3.setMarginStart(MainApp.E1);
        layoutParams3.setMarginEnd(MainApp.g1);
        frameLayout.addView(myEditPure, layoutParams3);
        int G2 = (int) MainUtil.G(this, 14.0f);
        MyButtonImage myButtonImage2 = new MyButtonImage(this);
        myButtonImage2.setPadding(G2, G2, G2, G2);
        myButtonImage2.setScaleType(scaleType);
        FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(MainApp.g1, MainApp.b1);
        layoutParams4.gravity = 8388613;
        frameLayout.addView(myButtonImage2, layoutParams4);
        MyButtonImage myButtonImage3 = new MyButtonImage(this);
        myButtonImage3.setPadding(G2, G2, G2, G2);
        myButtonImage3.setScaleType(scaleType);
        myButtonImage3.setVisibility(8);
        FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(MainApp.g1, MainApp.b1);
        layoutParams5.gravity = 8388613;
        frameLayout.addView(myButtonImage3, layoutParams5);
        MyButtonImage myButtonImage4 = new MyButtonImage(this);
        myButtonImage4.setId(i);
        myButtonImage4.setPadding(G2, G2, G2, G2);
        myButtonImage4.setScaleType(scaleType);
        int i5 = MainApp.g1;
        RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(i5, i5);
        layoutParams6.addRule(16, i2);
        layoutParams6.topMargin = MainApp.G1;
        myHeaderView.addView(myButtonImage4, layoutParams6);
        MyButtonImage myButtonImage5 = new MyButtonImage(this);
        myButtonImage5.setId(i2);
        myButtonImage5.setPadding(G2, G2, G2, G2);
        myButtonImage5.setScaleType(scaleType);
        int i6 = MainApp.g1;
        RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(i6, i6);
        layoutParams7.addRule(16, i3);
        layoutParams7.topMargin = MainApp.G1;
        myHeaderView.addView(myButtonImage5, layoutParams7);
        FrameLayout frameLayout2 = new FrameLayout(this);
        frameLayout2.setId(i3);
        frameLayout2.setVisibility(4);
        RelativeLayout.LayoutParams layoutParams8 = new RelativeLayout.LayoutParams(-2, MainApp.b1);
        layoutParams8.addRule(21);
        myHeaderView.addView(frameLayout2, layoutParams8);
        MyRoundItem myRoundItem = new MyRoundItem(this);
        myRoundItem.d(true, true);
        myRoundItem.setLayoutDirection(0);
        RelativeLayout.LayoutParams h = a.h(-1, -1, 2, i4);
        h.topMargin = MainApp.b1;
        myMainRelative.addView(myRoundItem, h);
        FrameLayout frameLayout3 = new FrameLayout(this);
        myRoundItem.addView(frameLayout3, -1, -1);
        int G3 = (int) MainUtil.G(this, 12.0f);
        MyRoundImage myRoundImage = new MyRoundImage(this);
        myRoundImage.setScaleType(scaleType);
        myRoundImage.setCircleRadius(MainApp.j1);
        myRoundImage.setVisibility(8);
        int i7 = MainApp.g1;
        FrameLayout.LayoutParams layoutParams9 = new FrameLayout.LayoutParams(i7, i7);
        layoutParams9.gravity = 8388627;
        layoutParams9.setMarginStart(G3);
        frameLayout3.addView(myRoundImage, layoutParams9);
        MyRoundImage myRoundImage2 = new MyRoundImage(this);
        myRoundImage2.setScaleType(scaleType);
        myRoundImage2.setCircleRadius(MainApp.j1);
        myRoundImage2.setVisibility(8);
        int i8 = MainApp.g1;
        FrameLayout.LayoutParams layoutParams10 = new FrameLayout.LayoutParams(i8, i8);
        layoutParams10.gravity = 8388629;
        layoutParams10.setMarginEnd(G3);
        frameLayout3.addView(myRoundImage2, layoutParams10);
        MyRoundImage myRoundImage3 = new MyRoundImage(this);
        myRoundImage3.setScaleType(scaleType);
        myRoundImage3.setCircleRadius(MainApp.j1);
        myRoundImage3.setVisibility(8);
        int i9 = MainApp.g1;
        FrameLayout.LayoutParams layoutParams11 = new FrameLayout.LayoutParams(i9, i9);
        layoutParams11.gravity = 17;
        frameLayout3.addView(myRoundImage3, layoutParams11);
        MyProgressBar myProgressBar = new MyProgressBar(this);
        myProgressBar.d((int) MainUtil.G(this, 1.5f));
        myProgressBar.setVisibility(8);
        myRoundItem.addView(myProgressBar, -1, (int) MainUtil.G(this, 2.0f));
        int G4 = (int) MainUtil.G(this, 2.0f);
        int G5 = (int) MainUtil.G(this, 200.0f);
        View view = new View(this);
        view.setVisibility(8);
        RelativeLayout.LayoutParams layoutParams12 = new RelativeLayout.LayoutParams(G4, G5);
        layoutParams12.addRule(15);
        myRoundItem.addView(view, layoutParams12);
        View view2 = new View(this);
        view2.setVisibility(8);
        RelativeLayout.LayoutParams layoutParams13 = new RelativeLayout.LayoutParams(G4, G5);
        layoutParams13.addRule(21);
        layoutParams13.addRule(15);
        myRoundItem.addView(view2, layoutParams13);
        View view3 = new View(this);
        view3.setVisibility(8);
        RelativeLayout.LayoutParams layoutParams14 = new RelativeLayout.LayoutParams(G4, G5);
        layoutParams14.addRule(14);
        layoutParams14.addRule(15);
        myRoundItem.addView(view3, layoutParams14);
        int G6 = (int) MainUtil.G(this, 32.0f);
        int G7 = (int) MainUtil.G(this, 20.0f);
        AppCompatTextView appCompatTextView = new AppCompatTextView(this, null);
        appCompatTextView.setGravity(17);
        appCompatTextView.setTextSize(1, 18.0f);
        RelativeLayout.LayoutParams layoutParams15 = new RelativeLayout.LayoutParams(MainApp.g1, G6);
        layoutParams15.topMargin = G7;
        layoutParams15.setMarginStart(G7);
        myRoundItem.addView(appCompatTextView, layoutParams15);
        AppCompatTextView appCompatTextView2 = new AppCompatTextView(this, null);
        appCompatTextView2.setGravity(17);
        appCompatTextView2.setTextSize(1, 18.0f);
        RelativeLayout.LayoutParams layoutParams16 = new RelativeLayout.LayoutParams(MainApp.g1, G6);
        layoutParams16.addRule(21);
        layoutParams16.topMargin = G7;
        layoutParams16.setMarginEnd(G7);
        myRoundItem.addView(appCompatTextView2, layoutParams16);
        FrameLayout frameLayout4 = new FrameLayout(this);
        frameLayout4.setId(i4);
        frameLayout4.setVisibility(8);
        RelativeLayout.LayoutParams layoutParams17 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams17.addRule(12);
        myMainRelative.addView(frameLayout4, layoutParams17);
        this.C1 = myMainRelative;
        this.D1 = myButtonImage;
        this.E1 = myButtonImage4;
        this.F1 = myButtonImage5;
        this.G1 = myRoundItem;
        this.H1 = myRoundImage;
        this.I1 = myRoundImage2;
        this.J1 = myRoundImage3;
        this.K1 = view;
        this.L1 = view2;
        this.M1 = view3;
        this.N1 = appCompatTextView;
        this.O1 = appCompatTextView2;
        this.k2 = myRoundView;
        this.l2 = myEditPure;
        this.m2 = myButtonImage2;
        this.n2 = myButtonImage3;
        this.o2 = frameLayout3;
        this.q2 = myProgressBar;
        myMainRelative.setListener(new ImageSizeListener() { // from class: com.mycompany.app.setting.SettingLand.1
            @Override // com.mycompany.app.image.ImageSizeListener
            public final void a(View view4, int i10, int i11) {
                SettingLand settingLand = SettingLand.this;
                if (settingLand.o2 != null && i10 != 0 && i11 != 0 && i10 >= i11) {
                    settingLand.T1 = i10;
                    settingLand.U1 = i11;
                    settingLand.V1 = (i10 - i11) / 2;
                    RelativeLayout.LayoutParams layoutParams18 = (RelativeLayout.LayoutParams) settingLand.K1.getLayoutParams();
                    if (layoutParams18 != null) {
                        layoutParams18.leftMargin = settingLand.V1;
                    }
                    RelativeLayout.LayoutParams layoutParams19 = (RelativeLayout.LayoutParams) settingLand.L1.getLayoutParams();
                    if (layoutParams19 != null) {
                        layoutParams19.rightMargin = settingLand.V1;
                    }
                    settingLand.I0(settingLand.W1, settingLand.X1, 0);
                    Handler handler = settingLand.O0;
                    if (handler != null) {
                        handler.post(new Runnable() { // from class: com.mycompany.app.setting.SettingLand.1.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                SettingLand settingLand2 = SettingLand.this;
                                if (settingLand2.o2 != null) {
                                    WebNestView webNestView = new WebNestView(settingLand2);
                                    settingLand2.p2 = webNestView;
                                    webNestView.setNoAutofill(false);
                                    settingLand2.o2.addView(settingLand2.p2, 0, new ViewGroup.LayoutParams(-1, -1));
                                    Handler handler2 = settingLand2.O0;
                                    if (handler2 == null) {
                                        return;
                                    }
                                    handler2.post(new AnonymousClass12());
                                }
                            }
                        });
                    }
                }
            }
        });
        B0(this.C1, frameLayout2, frameLayout4);
        this.C1.setWindow(getWindow());
        initMainScreenOn(this.C1);
        Handler handler = this.O0;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.setting.SettingLand.2
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r2v5, types: [android.view.View$OnClickListener, java.lang.Object] */
            /* JADX WARN: Type inference failed for: r2v6, types: [android.view.View$OnClickListener, java.lang.Object] */
            /* JADX WARN: Type inference failed for: r2v7, types: [android.view.View$OnClickListener, java.lang.Object] */
            @Override // java.lang.Runnable
            public final void run() {
                final SettingLand settingLand = SettingLand.this;
                if (settingLand.C1 == null) {
                    return;
                }
                AppCompatTextView appCompatTextView3 = settingLand.N1;
                if (appCompatTextView3 != null) {
                    appCompatTextView3.setOutlineProvider(new ViewOutlineProvider());
                    settingLand.N1.setClipToOutline(true);
                    settingLand.O1.setOutlineProvider(new ViewOutlineProvider());
                    settingLand.O1.setClipToOutline(true);
                }
                settingLand.K0();
                FrameLayout frameLayout5 = settingLand.o2;
                if (frameLayout5 != null) {
                    if (MainApp.L1) {
                        frameLayout5.setBackgroundColor(-14606047);
                    } else {
                        frameLayout5.setBackgroundColor(-1);
                    }
                }
                if (MainUtil.O5(settingLand.f1)) {
                    settingLand.H1.o(-509171222, R.drawable.outline_chevron_left_white_24);
                    settingLand.I1.o(-509171222, R.drawable.outline_chevron_right_white_24);
                } else {
                    settingLand.H1.o(-509171222, R.drawable.outline_chevron_right_white_24);
                    settingLand.I1.o(-509171222, R.drawable.outline_chevron_left_white_24);
                }
                settingLand.J1.o(-509171222, R.drawable.outline_swipe_hori);
                settingLand.K1.setBackgroundColor(-769226);
                settingLand.L1.setBackgroundColor(-769226);
                settingLand.M1.setBackgroundColor(-769226);
                settingLand.D1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingLand.3
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view4) {
                        int i10 = SettingLand.y2;
                        SettingLand settingLand2 = SettingLand.this;
                        if (settingLand2.G0()) {
                            settingLand2.L0();
                        } else {
                            settingLand2.finish();
                        }
                    }
                });
                settingLand.E1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingLand.4
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view4) {
                        int i10 = SettingLand.y2;
                        final SettingLand settingLand2 = SettingLand.this;
                        if (settingLand2.P1 != null || settingLand2.Q1 != null) {
                            return;
                        }
                        settingLand2.E0();
                        DialogSetMsg dialogSetMsg = new DialogSetMsg(settingLand2, R.string.reset_setting, R.string.reset, new DialogSetFull.DialogApplyListener() { // from class: com.mycompany.app.setting.SettingLand.18
                            @Override // com.mycompany.app.dialog.DialogSetFull.DialogApplyListener
                            public final void a() {
                                int i11 = SettingLand.y2;
                                SettingLand settingLand3 = SettingLand.this;
                                settingLand3.E0();
                                settingLand3.I0(0, 0, 4);
                                settingLand3.H0(false);
                            }
                        });
                        settingLand2.P1 = dialogSetMsg;
                        dialogSetMsg.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingLand.19
                            @Override // android.content.DialogInterface.OnDismissListener
                            public final void onDismiss(DialogInterface dialogInterface) {
                                int i11 = SettingLand.y2;
                                SettingLand.this.E0();
                            }
                        });
                    }
                });
                settingLand.F1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingLand.5
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view4) {
                        SettingLand settingLand2 = SettingLand.this;
                        MyButtonImage myButtonImage6 = settingLand2.F1;
                        if (myButtonImage6 == null) {
                            return;
                        }
                        myButtonImage6.setClickable(false);
                        settingLand2.F1.post(new Runnable() { // from class: com.mycompany.app.setting.SettingLand.5.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                SettingLand settingLand3 = SettingLand.this;
                                if (settingLand3.F1 == null) {
                                    return;
                                }
                                settingLand3.H0(true);
                            }
                        });
                    }
                });
                settingLand.H1.setOnClickListener(new Object());
                settingLand.I1.setOnClickListener(new Object());
                settingLand.J1.setOnClickListener(new Object());
                settingLand.l2.setHint(R.string.web_edit_hint);
                settingLand.l2.setText(settingLand.g2);
                settingLand.l2.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.mycompany.app.setting.SettingLand.9
                    @Override // android.widget.TextView.OnEditorActionListener
                    public final boolean onEditorAction(TextView textView, int i10, KeyEvent keyEvent) {
                        MyEditPure myEditPure2 = SettingLand.this.l2;
                        if (myEditPure2 == null) {
                            return true;
                        }
                        myEditPure2.post(new Runnable() { // from class: com.mycompany.app.setting.SettingLand.9.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                SettingLand.D0(SettingLand.this);
                            }
                        });
                        return true;
                    }
                });
                settingLand.m2.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingLand.10
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view4) {
                        MyButtonImage myButtonImage6;
                        SettingLand settingLand2 = SettingLand.this;
                        if (settingLand2.m2 != null && settingLand2.p2 != null && (myButtonImage6 = settingLand2.n2) != null && myButtonImage6.getVisibility() != 0) {
                            settingLand2.m2.setVisibility(8);
                            settingLand2.n2.setVisibility(0);
                            SettingLand.D0(settingLand2);
                        }
                    }
                });
                settingLand.n2.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingLand.11
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view4) {
                        SettingLand settingLand2 = SettingLand.this;
                        WebNestView webNestView = settingLand2.p2;
                        if (webNestView == null) {
                            return;
                        }
                        settingLand2.J0(webNestView.getProgress());
                        settingLand2.p2.stopLoading();
                    }
                });
            }
        });
    }

    @Override // com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        MyMainRelative myMainRelative = this.C1;
        if (myMainRelative != null) {
            myMainRelative.f18855c = null;
            myMainRelative.f = null;
            myMainRelative.g = null;
            myMainRelative.l = null;
            myMainRelative.n = null;
            this.C1 = null;
        }
        MyButtonImage myButtonImage = this.D1;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.D1 = null;
        }
        MyButtonImage myButtonImage2 = this.E1;
        if (myButtonImage2 != null) {
            myButtonImage2.j();
            this.E1 = null;
        }
        MyButtonImage myButtonImage3 = this.F1;
        if (myButtonImage3 != null) {
            myButtonImage3.j();
            this.F1 = null;
        }
        MyRoundItem myRoundItem = this.G1;
        if (myRoundItem != null) {
            myRoundItem.b();
            this.G1 = null;
        }
        MyRoundImage myRoundImage = this.H1;
        if (myRoundImage != null) {
            myRoundImage.k();
            this.H1 = null;
        }
        MyRoundImage myRoundImage2 = this.I1;
        if (myRoundImage2 != null) {
            myRoundImage2.k();
            this.I1 = null;
        }
        MyRoundImage myRoundImage3 = this.J1;
        if (myRoundImage3 != null) {
            myRoundImage3.k();
            this.J1 = null;
        }
        WebNestView webNestView = this.p2;
        if (webNestView != null) {
            MainUtil.F(webNestView, true);
            this.p2 = null;
        }
        MyRoundView myRoundView = this.k2;
        if (myRoundView != null) {
            myRoundView.a();
            this.k2 = null;
        }
        MyButtonImage myButtonImage4 = this.m2;
        if (myButtonImage4 != null) {
            myButtonImage4.j();
            this.m2 = null;
        }
        MyButtonImage myButtonImage5 = this.n2;
        if (myButtonImage5 != null) {
            myButtonImage5.j();
            this.n2 = null;
        }
        MyProgressBar myProgressBar = this.q2;
        if (myProgressBar != null) {
            myProgressBar.f();
            this.q2 = null;
        }
        this.K1 = null;
        this.L1 = null;
        this.M1 = null;
        this.N1 = null;
        this.O1 = null;
        this.S1 = null;
        this.h2 = null;
        this.i2 = null;
        this.l2 = null;
        this.o2 = null;
        this.t2 = null;
    }

    @Override // com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        super.onPause();
        if (isFinishing()) {
            E0();
            F0();
        } else {
            WebNestView webNestView = this.p2;
            if (webNestView != null) {
                webNestView.C();
            }
        }
    }

    @Override // com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        WebNestView webNestView = this.p2;
        if (webNestView != null) {
            webNestView.onResume();
        }
    }
}
