package com.mycompany.app.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import android.webkit.ConsoleMessage;
import android.webkit.DownloadListener;
import android.webkit.JavascriptInterface;
import android.webkit.JsResult;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.data.DataTrans;
import com.mycompany.app.data.book.DataBookAds;
import com.mycompany.app.dialog.DialogTransLang;
import com.mycompany.app.dialog.DialogWebView;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefAlbum;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.pref.PrefWeb;
import com.mycompany.app.pref.PrefZone;
import com.mycompany.app.pref.PrefZtwo;
import com.mycompany.app.setting.SettingInfo;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogRelative;
import com.mycompany.app.view.MyLineFrame;
import com.mycompany.app.view.MyProgressBar;
import com.mycompany.app.view.MyScrollBar;
import com.mycompany.app.view.MyScrollNavi;
import com.mycompany.app.web.WebClean;
import com.mycompany.app.web.WebNestView;
import com.mycompany.app.web.WebTransControl;
import com.mycompany.app.wview.WebUpView;

/* loaded from: classes3.dex */
public class DialogWebVie2 extends MyDialogBottom {
    public static final /* synthetic */ int q1 = 0;
    public MyScrollBar A0;
    public WebUpView B0;
    public MyScrollNavi C0;
    public MyScrollNavi D0;
    public GestureDetector E0;
    public float F0;
    public float G0;
    public float H0;
    public boolean I0;
    public int J0;
    public int K0;
    public int L0;
    public boolean M0;
    public int N0;
    public int O0;
    public boolean P0;
    public boolean Q0;
    public boolean R0;
    public boolean S0;
    public String T0;
    public View U0;
    public WebTransControl V0;
    public MyLineFrame W0;
    public boolean X0;
    public int Y0;
    public boolean Z0;
    public final int a0;
    public String a1;
    public SettingInfo b0;
    public String b1;
    public Context c0;
    public String c1;
    public DialogWebView.DialogWebListener d0;
    public int d1;
    public final boolean e0;
    public int e1;
    public final boolean f0;
    public DialogTransLang f1;
    public final boolean g0;
    public WebClean g1;
    public final boolean h0;
    public boolean h1;
    public boolean i0;
    public String i1;
    public final int j0;
    public int j1;
    public String k0;
    public final Runnable k1;
    public String l0;
    public boolean l1;
    public String m0;
    public final Runnable m1;
    public String n0;
    public String n1;
    public boolean o0;
    public String o1;
    public String p0;
    public WebTransControl p1;
    public MyDialogRelative q0;
    public FrameLayout r0;
    public MyButtonImage r1;
    public AppCompatTextView s0;
    public MyButtonImage t0;
    public MyButtonImage u0;
    public MyButtonImage v0;
    public MyButtonImage w0;
    public FrameLayout x0;
    public WebNestView y0;
    public MyProgressBar z0;

    /* renamed from: com.mycompany.app.dialog.DialogWebVie2$11, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass11 implements Runnable {

        /* renamed from: com.mycompany.app.dialog.DialogWebVie2$11$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 implements Runnable {

            /* renamed from: com.mycompany.app.dialog.DialogWebVie2$11$1$1, reason: invalid class name and collision with other inner class name */
            /* loaded from: classes3.dex */
            class RunnableC01151 implements Runnable {

                /* renamed from: com.mycompany.app.dialog.DialogWebVie2$11$1$1$1, reason: invalid class name and collision with other inner class name */
                /* loaded from: classes3.dex */
                class RunnableC01161 implements Runnable {
                    public RunnableC01161() {
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                        DialogWebVie2 dialogWebVie2 = DialogWebVie2.this;
                        WebNestView webNestView = dialogWebVie2.y0;
                        if (webNestView != null) {
                            dialogWebVie2.Q0 = true;
                            webNestView.addJavascriptInterface(new WebAppInterface(), "android");
                            Handler handler = DialogWebVie2.this.i;
                            if (handler == null) {
                                return;
                            }
                            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebVie2.11.1.1.1.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    Handler handler2;
                                    RunnableC01151 runnableC01151 = RunnableC01151.this;
                                    DialogWebVie2 dialogWebVie22 = DialogWebVie2.this;
                                    WebNestView webNestView2 = dialogWebVie22.y0;
                                    if (webNestView2 != null) {
                                        webNestView2.z(dialogWebVie22.k0, dialogWebVie22.m0);
                                        DialogWebVie2.this.J(0);
                                        if (PrefZone.y == 0 || (handler2 = DialogWebVie2.this.i) == null) {
                                            return;
                                        }
                                        handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebVie2.11.1.1.1.1.1
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                int i;
                                                int i2;
                                                int i3;
                                                final DialogWebVie2 dialogWebVie23 = DialogWebVie2.this;
                                                if (dialogWebVie23.y0 != null && dialogWebVie23.B0 == null && dialogWebVie23.x0 != null) {
                                                    int i4 = PrefZone.y;
                                                    if (i4 == 1) {
                                                        i3 = MainApp.G1;
                                                        i = 83;
                                                        i2 = 0;
                                                    } else if (i4 == 2) {
                                                        i = 81;
                                                        i3 = 0;
                                                        i2 = 0;
                                                    } else if (i4 == 3) {
                                                        i = 85;
                                                        i2 = MainApp.G1;
                                                        i3 = 0;
                                                    } else {
                                                        return;
                                                    }
                                                    int i5 = MainApp.g1;
                                                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i5, i5);
                                                    layoutParams.bottomMargin = MainApp.F1;
                                                    layoutParams.gravity = i;
                                                    layoutParams.leftMargin = i3;
                                                    layoutParams.rightMargin = i2;
                                                    try {
                                                        WebUpView webUpView = new WebUpView(dialogWebVie23.c0);
                                                        dialogWebVie23.B0 = webUpView;
                                                        webUpView.setVisibility(8);
                                                        dialogWebVie23.B0.setBgColors(false);
                                                        WebUpView webUpView2 = dialogWebVie23.B0;
                                                        WebUpView.UpViewListener upViewListener = new WebUpView.UpViewListener() { // from class: com.mycompany.app.dialog.DialogWebVie2.12
                                                            @Override // com.mycompany.app.wview.WebUpView.UpViewListener
                                                            public final void a() {
                                                                DialogWebVie2 dialogWebVie24 = DialogWebVie2.this;
                                                                WebNestView webNestView3 = dialogWebVie24.y0;
                                                                if (webNestView3 != null && !webNestView3.y()) {
                                                                    if (PrefZtwo.D) {
                                                                        dialogWebVie24.y0.pageUp(true);
                                                                    } else if (dialogWebVie24.y0.getScrollY() > 0) {
                                                                        dialogWebVie24.y0.scrollTo(0, 0);
                                                                    }
                                                                }
                                                            }

                                                            @Override // com.mycompany.app.wview.WebUpView.UpViewListener
                                                            public final void b() {
                                                            }
                                                        };
                                                        webUpView2.h = false;
                                                        webUpView2.g = upViewListener;
                                                        dialogWebVie23.x0.addView(webUpView2, layoutParams);
                                                    } catch (Exception unused) {
                                                    }
                                                }
                                            }
                                        });
                                    }
                                }
                            });
                        }
                    }
                }

                public RunnableC01151() {
                }

                @Override // java.lang.Runnable
                public final void run() {
                    AnonymousClass11 anonymousClass11 = AnonymousClass11.this;
                    final DialogWebVie2 dialogWebVie2 = DialogWebVie2.this;
                    WebNestView webNestView = dialogWebVie2.y0;
                    if (webNestView != null) {
                        webNestView.setWebViewClient(new LocalWebViewClient());
                        webNestView.setWebChromeClient(new LocalChromeClient());
                        webNestView.setListener(new WebNestView.WebViewListener() { // from class: com.mycompany.app.dialog.DialogWebVie2.13
                            @Override // com.mycompany.app.web.WebNestView.WebViewListener
                            public final void a(int i) {
                            }

                            @Override // com.mycompany.app.web.WebNestView.WebViewListener
                            public final void b() {
                            }

                            @Override // com.mycompany.app.web.WebNestView.WebViewListener
                            public final void c(int i) {
                                boolean z;
                                int height;
                                if (i < 1) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                DialogWebVie2 dialogWebVie22 = DialogWebVie2.this;
                                dialogWebVie22.y(z);
                                DialogWebVie2.C(dialogWebVie22);
                                int i2 = dialogWebVie22.d1;
                                View view = dialogWebVie22.U0;
                                if (view != null && view.getVisibility() == 0 && (height = dialogWebVie22.U0.getHeight()) != 0) {
                                    int i3 = (i - i2) + dialogWebVie22.e1;
                                    dialogWebVie22.e1 = i3;
                                    if (i3 > height) {
                                        dialogWebVie22.e1 = height;
                                    } else if (i3 < 0) {
                                        dialogWebVie22.e1 = 0;
                                    }
                                    dialogWebVie22.U0.setAlpha(1.0f - (dialogWebVie22.e1 / height));
                                    dialogWebVie22.U0.setTranslationY(dialogWebVie22.e1);
                                }
                                dialogWebVie22.d1 = i;
                                Runnable runnable = dialogWebVie22.m1;
                                MyScrollBar myScrollBar = dialogWebVie22.A0;
                                if (myScrollBar == null || dialogWebVie22.l1) {
                                    return;
                                }
                                dialogWebVie22.l1 = true;
                                myScrollBar.removeCallbacks(runnable);
                                dialogWebVie22.A0.post(runnable);
                            }

                            @Override // com.mycompany.app.web.WebNestView.WebViewListener
                            public final boolean d() {
                                return false;
                            }

                            @Override // com.mycompany.app.web.WebNestView.WebViewListener
                            public final void e() {
                            }

                            @Override // com.mycompany.app.web.WebNestView.WebViewListener
                            public final void f(int i) {
                            }

                            @Override // com.mycompany.app.web.WebNestView.WebViewListener
                            public final boolean g(float f, float f2, int i) {
                                return false;
                            }

                            @Override // com.mycompany.app.web.WebNestView.WebViewListener
                            public final void h(String str) {
                            }
                        });
                        webNestView.setDownloadListener(new DownloadListener() { // from class: com.mycompany.app.dialog.DialogWebVie2.14
                            @Override // android.webkit.DownloadListener
                            public final void onDownloadStart(String str, String str2, String str3, String str4, long j) {
                                DialogWebView.DialogWebListener dialogWebListener = DialogWebVie2.this.d0;
                                if (dialogWebListener != null) {
                                    dialogWebListener.c(str, str3, str4, j);
                                }
                            }
                        });
                        Handler handler = DialogWebVie2.this.i;
                        if (handler == null) {
                            return;
                        }
                        handler.post(new RunnableC01161());
                    }
                }
            }

            public AnonymousClass1() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                DialogWebVie2 dialogWebVie2 = DialogWebVie2.this;
                WebNestView webNestView = dialogWebVie2.y0;
                if (webNestView != null) {
                    MainUtil.X7(webNestView.getSettings(), MainApp.L1);
                    Handler handler = dialogWebVie2.i;
                    if (handler == null) {
                        return;
                    }
                    handler.post(new RunnableC01151());
                }
            }
        }

        public AnonymousClass11() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            DialogWebVie2 dialogWebVie2 = DialogWebVie2.this;
            WebNestView webNestView = dialogWebVie2.y0;
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
                    MainUtil.Q7(settings, MainUtil.F0(dialogWebVie2.c0));
                } else {
                    webNestView.K(dialogWebVie2.c0, PrefZtwo.p, settings);
                }
                webNestView.setEnableJs(PrefWeb.H);
                webNestView.setViewCookie(dialogWebVie2.c0);
                webNestView.setOverScrollMode(2);
                Handler handler = dialogWebVie2.i;
                if (handler == null) {
                    return;
                }
                handler.post(new AnonymousClass1());
            }
        }
    }

    /* renamed from: com.mycompany.app.dialog.DialogWebVie2$25, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass25 implements Runnable {

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ String f15458c;

        public AnonymousClass25(String str) {
            this.f15458c = str;
        }

        @Override // java.lang.Runnable
        public final void run() {
            MainUtil.M7(DialogWebVie2.this.y0, this.f15458c);
        }
    }

    /* renamed from: com.mycompany.app.dialog.DialogWebVie2$26, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass26 implements Runnable {
        public AnonymousClass26() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            DialogWebVie2 dialogWebVie2 = DialogWebVie2.this;
            WebTransControl webTransControl = dialogWebVie2.p1;
            if (webTransControl != null) {
                webTransControl.b(2);
            }
            Handler handler = dialogWebVie2.i;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebVie2.26.1
                @Override // java.lang.Runnable
                public final void run() {
                    final DialogWebVie2 dialogWebVie22 = DialogWebVie2.this;
                    WebTransControl webTransControl2 = dialogWebVie22.p1;
                    dialogWebVie22.p1 = null;
                    if (webTransControl2 != null && dialogWebVie22.W0 != null && dialogWebVie22.V0 == null) {
                        dialogWebVie22.V0 = webTransControl2;
                        try {
                            webTransControl2.f(dialogWebVie22.a1, dialogWebVie22.Y0, dialogWebVie22.Z0);
                            dialogWebVie22.V0.setListener(new WebTransControl.TransCtrlListener() { // from class: com.mycompany.app.dialog.DialogWebVie2.27
                                @Override // com.mycompany.app.web.WebTransControl.TransCtrlListener
                                public final void b() {
                                    DialogWebVie2 dialogWebVie23 = DialogWebVie2.this;
                                    if (!dialogWebVie23.R0) {
                                        MainUtil.e8(dialogWebVie23.c0, R.string.wait_retry);
                                        return;
                                    }
                                    if (!dialogWebVie23.Q0) {
                                        MainUtil.e8(dialogWebVie23.c0, R.string.http_warning);
                                        return;
                                    }
                                    int i = dialogWebVie23.Y0;
                                    if (i == 1) {
                                        MainUtil.e8(dialogWebVie23.c0, R.string.wait_retry);
                                    } else if (i == 3) {
                                        dialogWebVie23.X0 = false;
                                        MainUtil.L7(dialogWebVie23.y0, "restore");
                                    }
                                }

                                @Override // com.mycompany.app.web.WebTransControl.TransCtrlListener
                                public final void c(View view) {
                                    final DialogWebVie2 dialogWebVie23 = DialogWebVie2.this;
                                    if (dialogWebVie23.b0 == null || dialogWebVie23.f1 != null) {
                                        return;
                                    }
                                    dialogWebVie23.F();
                                    if (!DataTrans.a(dialogWebVie23.c0).b() && dialogWebVie23.Y0 == 1) {
                                        MainUtil.e8(dialogWebVie23.c0, R.string.wait_retry);
                                        return;
                                    }
                                    DialogTransLang dialogTransLang = new DialogTransLang(dialogWebVie23.b0, false, new DialogTransLang.TransLangListener() { // from class: com.mycompany.app.dialog.DialogWebVie2.28
                                        @Override // com.mycompany.app.dialog.DialogTransLang.TransLangListener
                                        public final void a(String str) {
                                            int i = DialogWebVie2.q1;
                                            DialogWebVie2 dialogWebVie24 = DialogWebVie2.this;
                                            dialogWebVie24.F();
                                            if (dialogWebVie24.Y0 == 3) {
                                                dialogWebVie24.X0 = true;
                                                if (!TextUtils.isEmpty(str)) {
                                                    dialogWebVie24.s(new AnonymousClass25(str));
                                                }
                                            }
                                            DialogWebVie2.D(dialogWebVie24, str);
                                        }
                                    });
                                    dialogWebVie23.f1 = dialogTransLang;
                                    dialogTransLang.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogWebVie2.30
                                        @Override // android.content.DialogInterface.OnDismissListener
                                        public final void onDismiss(DialogInterface dialogInterface) {
                                            int i = DialogWebVie2.q1;
                                            DialogWebVie2.this.F();
                                        }
                                    });
                                }

                                @Override // com.mycompany.app.web.WebTransControl.TransCtrlListener
                                public final void d() {
                                    WebTransControl webTransControl3;
                                    DialogWebVie2 dialogWebVie23 = DialogWebVie2.this;
                                    if (!dialogWebVie23.R0) {
                                        MainUtil.e8(dialogWebVie23.c0, R.string.wait_retry);
                                        return;
                                    }
                                    if (!dialogWebVie23.Q0) {
                                        MainUtil.e8(dialogWebVie23.c0, R.string.http_warning);
                                        return;
                                    }
                                    int i = dialogWebVie23.Y0;
                                    if (i == 1) {
                                        MainUtil.e8(dialogWebVie23.c0, R.string.wait_retry);
                                        return;
                                    }
                                    if (i == 3) {
                                        dialogWebVie23.X0 = true;
                                        MainUtil.L7(dialogWebVie23.y0, "confirm");
                                    }
                                    DialogWebVie2.D(dialogWebVie23, dialogWebVie23.a1);
                                    int i2 = dialogWebVie23.Y0;
                                    if (i2 == 3) {
                                        if (TextUtils.isEmpty(dialogWebVie23.a1)) {
                                            MainUtil.e8(dialogWebVie23.c0, R.string.select_lang);
                                        }
                                    } else {
                                        if (i2 != 0 || (webTransControl3 = dialogWebVie23.V0) == null) {
                                            return;
                                        }
                                        webTransControl3.setTransLoad(true);
                                    }
                                }

                                @Override // com.mycompany.app.web.WebTransControl.TransCtrlListener
                                public final void a() {
                                }
                            });
                            dialogWebVie22.W0.addView(dialogWebVie22.V0, -1, -2);
                        } catch (Exception unused) {
                        }
                    }
                    Handler handler2 = dialogWebVie22.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebVie2.26.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            boolean z;
                            DialogWebVie2 dialogWebVie23 = DialogWebVie2.this;
                            if (dialogWebVie23.x0 != null) {
                                WebNestView webNestView = new WebNestView(dialogWebVie23.b0);
                                dialogWebVie23.y0 = webNestView;
                                webNestView.setNoAutofill(false);
                                WebNestView webNestView2 = dialogWebVie23.y0;
                                if (PrefZone.x == 0) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                webNestView2.setVerticalScrollBarEnabled(z);
                                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
                                if (!dialogWebVie23.f0) {
                                    layoutParams.setMarginStart(MainApp.E1);
                                    layoutParams.setMarginEnd(MainApp.E1);
                                }
                                dialogWebVie23.x0.addView(dialogWebVie23.y0, 0, layoutParams);
                                Handler handler3 = dialogWebVie23.i;
                                if (handler3 == null) {
                                    return;
                                }
                                handler3.post(new AnonymousClass11());
                            }
                        }
                    });
                }
            });
        }
    }

    /* renamed from: com.mycompany.app.dialog.DialogWebVie2$29, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass29 implements DialogTransLang.TransNotiListener {
        @Override // com.mycompany.app.dialog.DialogTransLang.TransNotiListener
        public final void a() {
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public class LocalChromeClient extends WebChromeClient {
        public LocalChromeClient() {
        }

        @Override // android.webkit.WebChromeClient
        public final boolean onConsoleMessage(ConsoleMessage consoleMessage) {
            int indexOf;
            DialogWebVie2 dialogWebVie2 = DialogWebVie2.this;
            if (dialogWebVie2.X0 && consoleMessage != null) {
                String message = consoleMessage.message();
                if (!TextUtils.isEmpty(message) && (indexOf = message.indexOf("Refused to load the s")) != -1) {
                    int i = indexOf + 21;
                    if ((message.startsWith("cript", i) || message.startsWith("tylesheet", i)) && message.indexOf("https://translate.google", indexOf + 27) != -1) {
                        dialogWebVie2.Y0 = 2;
                        dialogWebVie2.Z0 = false;
                        dialogWebVie2.a1 = null;
                        dialogWebVie2.b1 = null;
                    }
                }
            }
            return super.onConsoleMessage(consoleMessage);
        }

        @Override // android.webkit.WebChromeClient
        public final boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
            DialogWebView.DialogWebListener dialogWebListener;
            if (jsResult == null) {
                return false;
            }
            int i = DialogWebVie2.q1;
            DialogWebVie2 dialogWebVie2 = DialogWebVie2.this;
            dialogWebVie2.getClass();
            if (!TextUtils.isEmpty(str2) && str2.startsWith("sb:")) {
                if (str2.equals("sb:ads_preview")) {
                    WebNestView webNestView = dialogWebVie2.y0;
                    if (webNestView != null) {
                        dialogWebVie2.n0 = dialogWebVie2.k0;
                        dialogWebVie2.o0 = true;
                        webNestView.F();
                        jsResult.confirm();
                        return true;
                    }
                } else if (str2.equals("sb:ads_open")) {
                    WebNestView webNestView2 = dialogWebVie2.y0;
                    if (webNestView2 != null) {
                        dialogWebVie2.n0 = dialogWebVie2.k0;
                        dialogWebVie2.o0 = true;
                        webNestView2.F();
                        jsResult.confirm();
                        return true;
                    }
                } else if (str2.equals("sb:link_setting") && (dialogWebListener = dialogWebVie2.d0) != null) {
                    dialogWebListener.a(11, dialogWebVie2.k0, null);
                    jsResult.confirm();
                    return true;
                }
            }
            return false;
        }

        @Override // android.webkit.WebChromeClient
        public final void onProgressChanged(WebView webView, int i) {
            DialogWebVie2 dialogWebVie2 = DialogWebVie2.this;
            if (dialogWebVie2.y0 == null) {
                return;
            }
            dialogWebVie2.J(i);
        }
    }

    /* loaded from: classes3.dex */
    public class WebAppInterface {
        public WebAppInterface() {
        }

        @JavascriptInterface
        public void onJsResult(String str, String str2) {
            if (!TextUtils.isEmpty(str)) {
                boolean equals = str.equals("onTransUser");
                final DialogWebVie2 dialogWebVie2 = DialogWebVie2.this;
                if (equals) {
                    int i = DialogWebVie2.q1;
                    if ("1".equals(str2)) {
                        dialogWebVie2.Y0 = 2;
                        dialogWebVie2.Z0 = false;
                        dialogWebVie2.a1 = null;
                        dialogWebVie2.b1 = null;
                        return;
                    }
                    final boolean equals2 = "2".equals(str2);
                    dialogWebVie2.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebVie2.21
                        @Override // java.lang.Runnable
                        public final void run() {
                            String str3;
                            int i2 = DialogWebVie2.q1;
                            DialogWebVie2 dialogWebVie22 = DialogWebVie2.this;
                            dialogWebVie22.getClass();
                            StringBuilder N3 = MainUtil.N3();
                            if (N3 != null) {
                                if (equals2) {
                                    str3 = N3.toString();
                                } else {
                                    String M2 = MainUtil.M2(dialogWebVie22.c1);
                                    if (!TextUtils.isEmpty(M2)) {
                                        N3.insert(0, M2);
                                        str3 = N3.toString();
                                    }
                                }
                                MainUtil.I(dialogWebVie22.y0, str3, true);
                            }
                            str3 = null;
                            MainUtil.I(dialogWebVie22.y0, str3, true);
                        }
                    });
                    return;
                }
                if (str.equals("onTransList")) {
                    if (dialogWebVie2.y0 != null && !TextUtils.isEmpty(str2)) {
                        dialogWebVie2.n1 = str2;
                        dialogWebVie2.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebVie2.23
                            @Override // java.lang.Runnable
                            public final void run() {
                                DialogWebVie2 dialogWebVie22 = DialogWebVie2.this;
                                String str3 = dialogWebVie22.n1;
                                dialogWebVie22.n1 = null;
                                if (dialogWebVie22.y0 == null) {
                                    return;
                                }
                                MainUtil.P7(dialogWebVie22.c0, str3);
                            }
                        });
                        return;
                    }
                    return;
                }
                if (str.equals("onTransClass") && dialogWebVie2.y0 != null) {
                    if ("0".equals(str2)) {
                        dialogWebVie2.c1 = "-";
                        return;
                    }
                    if (TextUtils.isEmpty(str2)) {
                        dialogWebVie2.c1 = "-";
                    } else if (TextUtils.isEmpty(dialogWebVie2.c1)) {
                        dialogWebVie2.o1 = str2;
                        dialogWebVie2.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebVie2.24
                            @Override // java.lang.Runnable
                            public final void run() {
                                DialogWebVie2 dialogWebVie22 = DialogWebVie2.this;
                                String str3 = dialogWebVie22.o1;
                                dialogWebVie22.o1 = null;
                                if (dialogWebVie22.y0 != null && TextUtils.isEmpty(dialogWebVie22.c1)) {
                                    dialogWebVie22.c1 = MainUtil.K3(str3);
                                    String str4 = dialogWebVie22.c1;
                                    if (str4 != null && str4.length() > 2) {
                                        MainUtil.Z4(dialogWebVie22.y0, str4);
                                    }
                                }
                            }
                        });
                    }
                }
            }
        }

        @JavascriptInterface
        public void onObserDet(String str, int i) {
            boolean z = true;
            DialogWebVie2 dialogWebVie2 = DialogWebVie2.this;
            if (i == 0) {
                dialogWebVie2.Y0 = 1;
            } else {
                dialogWebVie2.Y0 = 3;
                if (i != 2) {
                    z = false;
                }
                dialogWebVie2.Z0 = z;
                dialogWebVie2.a1 = str;
                if (TextUtils.isEmpty(PrefAlbum.y)) {
                    PrefAlbum.y = str;
                    PrefAlbum.z = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                    PrefAlbum.u(dialogWebVie2.c0);
                }
                if (MainUtil.q5(dialogWebVie2.b1, str)) {
                    dialogWebVie2.b1 = null;
                }
            }
            Handler handler = dialogWebVie2.i;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebVie2.WebAppInterface.1
                @Override // java.lang.Runnable
                public final void run() {
                    WebNestView webNestView;
                    View view;
                    FrameLayout.LayoutParams layoutParams;
                    final DialogWebVie2 dialogWebVie22 = DialogWebVie2.this;
                    if (dialogWebVie22.c0 != null) {
                        if (dialogWebVie22.q0 != null && (view = dialogWebVie22.U0) != null) {
                            if (PrefZone.y == 3 && (layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams()) != null) {
                                layoutParams.gravity = 83;
                            }
                            View view2 = dialogWebVie22.U0;
                            if (view2 != null) {
                                if (dialogWebVie22.g0) {
                                    view2.setBackgroundResource(R.drawable.trans_logo_short_back_dark);
                                } else {
                                    view2.setBackgroundResource(R.drawable.trans_logo_short_back_color);
                                }
                            }
                            if (dialogWebVie22.Y0 == 3 && dialogWebVie22.Z0) {
                                if (dialogWebVie22.U0.getVisibility() != 0) {
                                    dialogWebVie22.e1 = 0;
                                    dialogWebVie22.U0.setAlpha(1.0f);
                                    dialogWebVie22.U0.setTranslationY(0.0f);
                                    dialogWebVie22.U0.setVisibility(0);
                                }
                            } else {
                                dialogWebVie22.U0.setVisibility(8);
                            }
                        }
                        WebTransControl webTransControl = dialogWebVie22.V0;
                        if (webTransControl != null) {
                            webTransControl.f(dialogWebVie22.a1, dialogWebVie22.Y0, dialogWebVie22.Z0);
                        }
                        if (dialogWebVie22.Y0 != 1) {
                            String str2 = dialogWebVie22.b1;
                            dialogWebVie22.b1 = null;
                            if (!TextUtils.isEmpty(str2)) {
                                dialogWebVie22.X0 = true;
                                if (!TextUtils.isEmpty(str2)) {
                                    dialogWebVie22.s(new AnonymousClass25(str2));
                                }
                            } else if (!TextUtils.isEmpty(PrefAlbum.y) && (webNestView = dialogWebVie22.y0) != null) {
                                webNestView.evaluateJavascript("document.cookie", new ValueCallback<String>() { // from class: com.mycompany.app.dialog.DialogWebVie2.22
                                    @Override // android.webkit.ValueCallback
                                    public final void onReceiveValue(String str3) {
                                        String L3 = MainUtil.L3(str3);
                                        if (!TextUtils.isEmpty(L3) && !L3.equals(PrefAlbum.z)) {
                                            PrefAlbum.z = L3;
                                            PrefSet.c(0, DialogWebVie2.this.c0, "mTransCode", L3);
                                        }
                                    }
                                });
                            }
                            Context context = dialogWebVie22.c0;
                            if (context != null && !DataTrans.a(context).b()) {
                                MainUtil.M3(dialogWebVie22.y0);
                            }
                            if (!TextUtils.isEmpty(dialogWebVie22.c1)) {
                                return;
                            }
                            MainUtil.N7(dialogWebVie22.y0);
                        }
                    }
                }
            });
        }
    }

    public DialogWebVie2(SettingInfo settingInfo, String str, int i, boolean z, DialogWebView.DialogWebListener dialogWebListener) {
        super(settingInfo);
        boolean z2;
        this.k1 = new Runnable() { // from class: com.mycompany.app.dialog.DialogWebVie2.19
            @Override // java.lang.Runnable
            public final void run() {
                DialogWebVie2 dialogWebVie2 = DialogWebVie2.this;
                dialogWebVie2.J(dialogWebVie2.j1);
            }
        };
        this.m1 = new Runnable() { // from class: com.mycompany.app.dialog.DialogWebVie2.20
            @Override // java.lang.Runnable
            public final void run() {
                DialogWebVie2 dialogWebVie2 = DialogWebVie2.this;
                MyScrollBar myScrollBar = dialogWebVie2.A0;
                if (myScrollBar != null) {
                    myScrollBar.p(0, 0);
                }
                dialogWebVie2.l1 = false;
            }
        };
        this.w = 0;
        m();
        this.b0 = settingInfo;
        this.c0 = getContext();
        this.d0 = dialogWebListener;
        this.k0 = str;
        this.m0 = str;
        this.j0 = i;
        boolean z3 = true;
        this.l0 = MainUtil.I1(str, true);
        this.f0 = z;
        if (!z && !MainApp.K1) {
            z2 = false;
        } else {
            z2 = true;
        }
        this.g0 = z2;
        if (!z && !MainApp.L1) {
            z3 = false;
        }
        this.h0 = z3;
        if (z) {
            this.i0 = PrefWeb.M;
            if (MainApp.L1) {
                PrefWeb.M = false;
            }
        }
        this.g1 = MainApp.v(this.c0, false);
        this.e0 = MainUtil.O5(this.c0);
        this.a0 = MainApp.s1 / 2;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebVie2.1
            @Override // java.lang.Runnable
            public final void run() {
                int i2;
                View view;
                MyButtonImage myButtonImage;
                MyButtonImage myButtonImage2;
                final DialogWebVie2 dialogWebVie2 = DialogWebVie2.this;
                boolean z4 = dialogWebVie2.f0;
                Context context = dialogWebVie2.c0;
                if (context != null) {
                    MyDialogRelative myDialogRelative = new MyDialogRelative(context);
                    int G = (int) MainUtil.G(context, 14.0f);
                    FrameLayout frameLayout = new FrameLayout(context);
                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                    layoutParams.bottomMargin = MainApp.g1;
                    myDialogRelative.addView(frameLayout, layoutParams);
                    FrameLayout frameLayout2 = new FrameLayout(context);
                    FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -1);
                    layoutParams2.topMargin = MainApp.b1;
                    frameLayout.addView(frameLayout2, layoutParams2);
                    View view2 = new View(context);
                    view2.setVisibility(8);
                    FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams((int) MainUtil.G(context, 130.0f), (int) MainUtil.G(context, 24.0f));
                    layoutParams3.gravity = 85;
                    frameLayout2.addView(view2, layoutParams3);
                    MyProgressBar myProgressBar = new MyProgressBar(context);
                    int G2 = (int) MainUtil.G(context, 1.5f);
                    myProgressBar.g = true;
                    myProgressBar.h = true;
                    myProgressBar.l = G2;
                    myProgressBar.B = true;
                    myProgressBar.setVisibility(8);
                    FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-1, (int) MainUtil.G(context, 2.0f));
                    layoutParams4.topMargin = (int) MainUtil.G(context, 51.0f);
                    frameLayout.addView(myProgressBar, layoutParams4);
                    if (z4) {
                        i2 = MainApp.g1 * 3;
                    } else {
                        i2 = MainApp.g1;
                    }
                    AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
                    appCompatTextView.setGravity(16);
                    appCompatTextView.setSingleLine(true);
                    appCompatTextView.setEllipsize(TextUtils.TruncateAt.END);
                    appCompatTextView.setTextSize(1, 16.0f);
                    FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(-1, MainApp.b1);
                    layoutParams5.setMarginStart(MainApp.g1);
                    layoutParams5.setMarginEnd(i2);
                    frameLayout.addView(appCompatTextView, layoutParams5);
                    MyButtonImage myButtonImageBack = new MyButtonImage(context);
                    myButtonImageBack.setPadding(G, G, G, G);
                    ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_INSIDE;
                    myButtonImageBack.setScaleType(scaleType);
                    FrameLayout.LayoutParams layoutParamsBack = new FrameLayout.LayoutParams(MainApp.g1, MainApp.b1);
                    layoutParamsBack.gravity = 8388611;
                    frameLayout.addView(myButtonImageBack, layoutParamsBack);
                    MyButtonImage myButtonImage3 = new MyButtonImage(context);
                    myButtonImage3.setPadding(G, G, G, G);
                    myButtonImage3.setScaleType(scaleType);
                    FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(MainApp.g1, MainApp.b1);
                    layoutParams6.gravity = 8388613;
                    frameLayout.addView(myButtonImage3, layoutParams6);
                    MyButtonImage myButtonImage4 = new MyButtonImage(context);
                    myButtonImage4.setPadding(G, G, G, G);
                    myButtonImage4.setScaleType(scaleType);
                    myButtonImage4.setVisibility(8);
                    FrameLayout.LayoutParams layoutParams7 = new FrameLayout.LayoutParams(MainApp.g1, MainApp.b1);
                    layoutParams7.gravity = 8388613;
                    frameLayout.addView(myButtonImage4, layoutParams7);
                    if (z4) {
                        myButtonImage2 = new MyButtonImage(context);
                        myButtonImage2.setPadding(G, G, G, G);
                        myButtonImage2.setScaleType(scaleType);
                        view = view2;
                        FrameLayout.LayoutParams layoutParams8 = new FrameLayout.LayoutParams(MainApp.g1, MainApp.b1);
                        layoutParams8.gravity = 8388613;
                        layoutParams8.setMarginEnd(MainApp.g1 * 2);
                        frameLayout.addView(myButtonImage2, layoutParams8);
                        myButtonImage = new MyButtonImage(context);
                        myButtonImage.setPadding(G, G, G, G);
                        myButtonImage.setScaleType(scaleType);
                        FrameLayout.LayoutParams layoutParams9 = new FrameLayout.LayoutParams(MainApp.g1, MainApp.b1);
                        layoutParams9.gravity = 8388613;
                        layoutParams9.setMarginEnd(MainApp.g1);
                        frameLayout.addView(myButtonImage, layoutParams9);
                    } else {
                        view = view2;
                        myButtonImage = null;
                        myButtonImage2 = null;
                    }
                    MyScrollNavi myScrollNavi = new MyScrollNavi(context);
                    myScrollNavi.setVisibility(4);
                    int i3 = MainApp.i1;
                    FrameLayout.LayoutParams layoutParams10 = new FrameLayout.LayoutParams(i3, i3);
                    layoutParams10.gravity = 19;
                    frameLayout.addView(myScrollNavi, layoutParams10);
                    MyScrollNavi myScrollNavi2 = new MyScrollNavi(context);
                    myScrollNavi2.setVisibility(4);
                    int i4 = MainApp.i1;
                    FrameLayout.LayoutParams layoutParams11 = new FrameLayout.LayoutParams(i4, i4);
                    layoutParams11.gravity = 21;
                    frameLayout.addView(myScrollNavi2, layoutParams11);
                    MyLineFrame myLineFrame = new MyLineFrame(context);
                    myLineFrame.e(MainApp.E1, dialogWebVie2.g0);
                    RelativeLayout.LayoutParams layoutParams12 = new RelativeLayout.LayoutParams(-1, MainApp.g1);
                    layoutParams12.addRule(12);
                    myDialogRelative.addView(myLineFrame, layoutParams12);
                    MyScrollBar myScrollBar = new MyScrollBar(context);
                    myScrollBar.n();
                    int i5 = MainApp.b1;
                    int i6 = MainApp.h1;
                    myScrollBar.O = i5;
                    myScrollBar.P = i6;
                    myScrollBar.setVisibility(4);
                    RelativeLayout.LayoutParams layoutParams13 = new RelativeLayout.LayoutParams((int) MainUtil.G(context, 32.0f), -1);
                    layoutParams13.addRule(11);
                    myDialogRelative.addView(myScrollBar, layoutParams13);
                    dialogWebVie2.q0 = myDialogRelative;
                    dialogWebVie2.r0 = frameLayout;
                    dialogWebVie2.s0 = appCompatTextView;
                    dialogWebVie2.r1 = myButtonImageBack;
                    dialogWebVie2.t0 = myButtonImage3;
                    dialogWebVie2.u0 = myButtonImage4;
                    dialogWebVie2.v0 = myButtonImage2;
                    dialogWebVie2.w0 = myButtonImage;
                    dialogWebVie2.x0 = frameLayout2;
                    dialogWebVie2.z0 = myProgressBar;
                    dialogWebVie2.C0 = myScrollNavi;
                    dialogWebVie2.D0 = myScrollNavi2;
                    dialogWebVie2.A0 = myScrollBar;
                    dialogWebVie2.U0 = view;
                    dialogWebVie2.W0 = myLineFrame;
                    Handler handler2 = dialogWebVie2.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebVie2.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            RelativeLayout.LayoutParams layoutParams14;
                            final DialogWebVie2 dialogWebVie22 = DialogWebVie2.this;
                            boolean z5 = dialogWebVie22.e0;
                            boolean z6 = dialogWebVie22.g0;
                            MyDialogRelative myDialogRelative2 = dialogWebVie22.q0;
                            if (myDialogRelative2 != null && dialogWebVie22.c0 != null) {
                                if (z6) {
                                    myDialogRelative2.setBackgroundColor(-14606047);
                                    dialogWebVie22.r0.setBackgroundColor(-16777216);
                                    dialogWebVie22.s0.setTextColor(-328966);
                                    dialogWebVie22.t0.setImageResource(R.drawable.outline_refresh_dark_24);
                                    dialogWebVie22.u0.setImageResource(R.drawable.outline_close_dark_24);
                                    dialogWebVie22.r1.setImageResource(R.drawable.outline_chevron_left_dark_24);
                                    dialogWebVie22.t0.setBgPreColor(-12632257);
                                    dialogWebVie22.u0.setBgPreColor(-12632257);
                                    dialogWebVie22.r1.setBgPreColor(-12632257);
                                    dialogWebVie22.z0.g(-922746881, -16777216);
                                } else {
                                    myDialogRelative2.setBackgroundColor(-1);
                                    dialogWebVie22.r0.setBackgroundColor(-460552);
                                    dialogWebVie22.s0.setTextColor(-16777216);
                                    dialogWebVie22.t0.setImageResource(R.drawable.outline_refresh_black_24);
                                    dialogWebVie22.u0.setImageResource(R.drawable.outline_close_black_24);
                                    dialogWebVie22.r1.setImageResource(R.drawable.outline_chevron_left_black_24);
                                    dialogWebVie22.t0.setBgPreColor(-2039584);
                                    dialogWebVie22.u0.setBgPreColor(-2039584);
                                    dialogWebVie22.r1.setBgPreColor(-2039584);
                                    dialogWebVie22.z0.g(-13022805, -460552);
                                }
                                if (dialogWebVie22.h0) {
                                    dialogWebVie22.x0.setBackgroundColor(-14606047);
                                } else {
                                    dialogWebVie22.x0.setBackgroundColor(-1);
                                }
                                dialogWebVie22.C0.d(z5, true);
                                dialogWebVie22.D0.d(z5, false);
                                int i7 = dialogWebVie22.j0;
                                if (i7 != 0) {
                                    dialogWebVie22.s0.setText(i7);
                                }
                                dialogWebVie22.t0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogWebVie2.3
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view3) {
                                        MyButtonImage myButtonImage5;
                                        DialogWebVie2 dialogWebVie23 = DialogWebVie2.this;
                                        if (dialogWebVie23.t0 != null && dialogWebVie23.y0 != null && (myButtonImage5 = dialogWebVie23.u0) != null && myButtonImage5.getVisibility() != 0) {
                                            dialogWebVie23.t0.setVisibility(8);
                                            dialogWebVie23.u0.setVisibility(0);
                                            if (dialogWebVie23.s0 != null && dialogWebVie23.y0 != null) {
                                                String str2 = dialogWebVie23.k0;
                                                if (dialogWebVie23.f0 && TextUtils.isEmpty(str2)) {
                                                    MainUtil.e8(dialogWebVie23.c0, R.string.empty);
                                                    dialogWebVie23.t0.setVisibility(0);
                                                    dialogWebVie23.u0.setVisibility(8);
                                                } else if (MainUtil.q5(str2, dialogWebVie23.k0)) {
                                                    dialogWebVie23.y0.F();
                                                } else {
                                                    dialogWebVie23.y0.z(MainUtil.q4(null, str2), null);
                                                }
                                            }
                                        }
                                    }
                                });
                                dialogWebVie22.u0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogWebVie2.4
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view3) {
                                        DialogWebVie2 dialogWebVie23 = DialogWebVie2.this;
                                        WebNestView webNestView = dialogWebVie23.y0;
                                        if (webNestView == null) {
                                            return;
                                        }
                                        dialogWebVie23.J(webNestView.getProgress());
                                        dialogWebVie23.y0.stopLoading();
                                    }
                                });
                                dialogWebVie22.r1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogWebVie2.31
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view3) {
                                        DialogWebVie2.this.dismiss();
                                    }
                                });
                                MyButtonImage myButtonImage5 = dialogWebVie22.v0;
                                if (myButtonImage5 != null) {
                                    if (z6) {
                                        myButtonImage5.setImageResource(R.drawable.outline_share_dark_24);
                                        dialogWebVie22.v0.setBgPreColor(-12632257);
                                    } else {
                                        myButtonImage5.setImageResource(R.drawable.outline_share_black_24);
                                        dialogWebVie22.v0.setBgPreColor(-2039584);
                                    }
                                    dialogWebVie22.v0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogWebVie2.5
                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view3) {
                                            DialogWebVie2 dialogWebVie23 = DialogWebVie2.this;
                                            WebNestView webNestView = dialogWebVie23.y0;
                                            if (webNestView != null && !dialogWebVie23.S0) {
                                                dialogWebVie23.S0 = true;
                                                dialogWebVie23.T0 = webNestView.getTitle();
                                                Handler handler3 = dialogWebVie23.i;
                                                if (handler3 == null) {
                                                    return;
                                                }
                                                handler3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebVie2.5.1
                                                    @Override // java.lang.Runnable
                                                    public final void run() {
                                                        DialogWebVie2 dialogWebVie24 = DialogWebVie2.this;
                                                        String str2 = dialogWebVie24.T0;
                                                        dialogWebVie24.T0 = null;
                                                        MainUtil.a8(dialogWebVie24.b0, dialogWebVie24.k0, str2);
                                                        dialogWebVie24.S0 = false;
                                                    }
                                                });
                                            }
                                        }
                                    });
                                }
                                MyButtonImage myButtonImage6 = dialogWebVie22.w0;
                                if (myButtonImage6 != null) {
                                    if (z6) {
                                        myButtonImage6.setImageResource(R.drawable.outline_link_dark_24);
                                        dialogWebVie22.w0.setBgPreColor(-12632257);
                                    } else {
                                        myButtonImage6.setImageResource(R.drawable.outline_link_black_24);
                                        dialogWebVie22.w0.setBgPreColor(-2039584);
                                    }
                                    dialogWebVie22.w0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogWebVie2.6
                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view3) {
                                            DialogWebVie2 dialogWebVie23 = DialogWebVie2.this;
                                            if (dialogWebVie23.S0) {
                                                return;
                                            }
                                            dialogWebVie23.S0 = true;
                                            dialogWebVie23.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebVie2.6.1
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    DialogWebVie2 dialogWebVie24 = DialogWebVie2.this;
                                                    MainUtil.v(R.string.copied_clipboard, dialogWebVie24.b0, "Copied URL", dialogWebVie24.k0);
                                                    dialogWebVie24.S0 = false;
                                                }
                                            });
                                        }
                                    });
                                }
                                int i8 = PrefZone.x;
                                if (i8 != 0) {
                                    if (i8 == 1 && (layoutParams14 = (RelativeLayout.LayoutParams) dialogWebVie22.A0.getLayoutParams()) != null) {
                                        layoutParams14.removeRule(11);
                                        layoutParams14.addRule(9);
                                        dialogWebVie22.A0.setPosLeft(true);
                                    }
                                    dialogWebVie22.A0.setListener(new MyScrollBar.ScrollBarListener() { // from class: com.mycompany.app.dialog.DialogWebVie2.7
                                        @Override // com.mycompany.app.view.MyScrollBar.ScrollBarListener
                                        public final void c(int i9) {
                                            WebNestView webNestView = DialogWebVie2.this.y0;
                                            if (webNestView == null) {
                                                return;
                                            }
                                            webNestView.scrollTo(0, i9);
                                        }

                                        @Override // com.mycompany.app.view.MyScrollBar.ScrollBarListener
                                        public final int d() {
                                            WebNestView webNestView = DialogWebVie2.this.y0;
                                            if (webNestView == null) {
                                                return 0;
                                            }
                                            return webNestView.getScrollTop();
                                        }

                                        @Override // com.mycompany.app.view.MyScrollBar.ScrollBarListener
                                        public final void e() {
                                        }

                                        @Override // com.mycompany.app.view.MyScrollBar.ScrollBarListener
                                        public final int f() {
                                            WebNestView webNestView = DialogWebVie2.this.y0;
                                            if (webNestView == null) {
                                                return 0;
                                            }
                                            return webNestView.Y0;
                                        }

                                        @Override // com.mycompany.app.view.MyScrollBar.ScrollBarListener
                                        public final int g() {
                                            WebNestView webNestView = DialogWebVie2.this.y0;
                                            if (webNestView == null) {
                                                return 0;
                                            }
                                            return webNestView.X0;
                                        }
                                    });
                                    if (z6) {
                                        dialogWebVie22.A0.setPreColor(-12632257);
                                    } else {
                                        dialogWebVie22.A0.setPreColor(-2434342);
                                    }
                                }
                                dialogWebVie22.E0 = new GestureDetector(dialogWebVie22.c0, new GestureDetector.SimpleOnGestureListener() { // from class: com.mycompany.app.dialog.DialogWebVie2.8
                                    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
                                    public final boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                                        DialogWebVie2 dialogWebVie23 = DialogWebVie2.this;
                                        boolean z7 = dialogWebVie23.e0;
                                        if (dialogWebVie23.y0 == null) {
                                            return false;
                                        }
                                        if (dialogWebVie23.J0 == 0) {
                                            int i9 = dialogWebVie23.L0;
                                            if (i9 == 1) {
                                                if (f > 600.0f) {
                                                    if (z7) {
                                                        dialogWebVie23.H();
                                                    } else {
                                                        dialogWebVie23.I();
                                                    }
                                                }
                                            } else if (i9 == 2 && f < -600.0f) {
                                                if (z7) {
                                                    dialogWebVie23.I();
                                                } else {
                                                    dialogWebVie23.H();
                                                }
                                            }
                                        }
                                        return super.onFling(motionEvent, motionEvent2, f, f2);
                                    }
                                });
                                dialogWebVie22.f(dialogWebVie22.q0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogWebVie2.9
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view3) {
                                        final DialogWebVie2 dialogWebVie23 = DialogWebVie2.this;
                                        if (dialogWebVie23.q0 == null) {
                                            return;
                                        }
                                        Window window = dialogWebVie23.getWindow();
                                        if (window != null) {
                                            window.setDimAmount(0.6f);
                                        }
                                        dialogWebVie23.show();
                                        dialogWebVie23.i.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebVie2.10
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                DialogWebVie2 dialogWebVie24 = DialogWebVie2.this;
                                                if (dialogWebVie24.V0 == null && dialogWebVie24.W0 != null && dialogWebVie24.p1 == null) {
                                                    WebTransControl webTransControl = new WebTransControl(dialogWebVie24.b0);
                                                    dialogWebVie24.p1 = webTransControl;
                                                    webTransControl.setDarkUser(dialogWebVie24.f0);
                                                    Handler handler3 = dialogWebVie24.i;
                                                    if (handler3 != null) {
                                                        handler3.post(new AnonymousClass26());
                                                    }
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

    public static void B(DialogWebVie2 dialogWebVie2, String str) {
        if (dialogWebVie2.y0 != null) {
            if (MainUtil.D5(str)) {
                if (dialogWebVie2.Q0) {
                    dialogWebVie2.Q0 = false;
                    WebNestView webNestView = dialogWebVie2.y0;
                    if (webNestView != null) {
                        webNestView.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebVie2.15
                            @Override // java.lang.Runnable
                            public final void run() {
                                DialogWebVie2 dialogWebVie22 = DialogWebVie2.this;
                                WebNestView webNestView2 = dialogWebVie22.y0;
                                if (webNestView2 == null) {
                                    return;
                                }
                                dialogWebVie22.Q0 = false;
                                webNestView2.removeJavascriptInterface("android");
                            }
                        });
                        return;
                    }
                    return;
                }
                return;
            }
            if (!dialogWebVie2.Q0) {
                dialogWebVie2.Q0 = true;
                WebNestView webNestView2 = dialogWebVie2.y0;
                if (webNestView2 == null) {
                    return;
                }
                webNestView2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebVie2.16
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogWebVie2 dialogWebVie22 = DialogWebVie2.this;
                        WebNestView webNestView3 = dialogWebVie22.y0;
                        if (webNestView3 == null) {
                            return;
                        }
                        dialogWebVie22.Q0 = true;
                        webNestView3.addJavascriptInterface(new WebAppInterface(), "android");
                    }
                });
            }
        }
    }

    public static void C(DialogWebVie2 dialogWebVie2) {
        WebUpView webUpView;
        if (PrefZone.y != 0 && (webUpView = dialogWebVie2.B0) != null) {
            if (!dialogWebVie2.I0) {
                webUpView.d();
            } else {
                if (dialogWebVie2.y0.getScrollY() > dialogWebVie2.x0.getHeight()) {
                    WebUpView webUpView2 = dialogWebVie2.B0;
                    webUpView2.f();
                    webUpView2.setVisibility(0);
                    return;
                }
                dialogWebVie2.B0.d();
            }
        }
    }

    public static void D(DialogWebVie2 dialogWebVie2, String str) {
        dialogWebVie2.X0 = true;
        if (!TextUtils.isEmpty(str)) {
            dialogWebVie2.b1 = str;
        } else {
            dialogWebVie2.b1 = PrefAlbum.y;
        }
        MainUtil.O7(dialogWebVie2.y0, "onTransUser");
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:10:0x0016
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1166)
        	at jadx.core.dex.visitors.regions.RegionMaker.processTryCatchBlocks(RegionMaker.java:1022)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:55)
        */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:14:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0081  */
    /* JADX WARN: Type inference failed for: r7v2, types: [com.mycompany.app.setting.SettingInfo, android.app.Activity] */
    /* JADX WARN: Type inference failed for: r7v3, types: [boolean] */
    /* JADX WARN: Type inference failed for: r7v4, types: [java.lang.CharSequence, java.lang.String] */
    /* JADX WARN: Type inference failed for: r7v9, types: [boolean] */
    /* JADX WARN: Type inference failed for: r8v0, types: [com.mycompany.app.web.WebNestView] */
    /* JADX WARN: Type inference failed for: r9v3, types: [boolean] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean E(com.mycompany.app.dialog.DialogWebVie2 r7, com.mycompany.app.web.WebNestView r8, java.lang.String r9) {
        /*
            r0 = 0
            if (r8 == 0) goto Le0
            boolean r1 = android.text.TextUtils.isEmpty(r9)
            if (r1 == 0) goto Lb
            goto Le0
        Lb:
            java.lang.String r1 = "https://"
            boolean r2 = android.text.TextUtils.isEmpty(r9)
            java.lang.String r3 = "UTF-8"
            r4 = 0
            if (r2 == 0) goto L18
        L16:
            r2 = r4
            goto L75
        L18:
            java.lang.String r2 = "https://www.google.com/"
            boolean r2 = r9.startsWith(r2)
            if (r2 != 0) goto L21
            goto L16
        L21:
            java.lang.String r2 = "https"
            r5 = 23
            int r2 = r9.indexOf(r2, r5)     // Catch: java.lang.Exception -> L16
            if (r2 >= r5) goto L2c
            goto L16
        L2c:
            java.lang.String r2 = r9.substring(r2)     // Catch: java.lang.Exception -> L16
            boolean r5 = r2.startsWith(r1)     // Catch: java.lang.Exception -> L16
            r6 = 38
            if (r5 == 0) goto L52
            boolean r1 = android.text.TextUtils.isEmpty(r2)     // Catch: java.lang.Exception -> L16
            if (r1 == 0) goto L3f
            goto L75
        L3f:
            int r1 = r2.indexOf(r6)     // Catch: java.lang.Exception -> L75
            if (r1 > 0) goto L46
            goto L75
        L46:
            java.lang.String r1 = r2.substring(r0, r1)     // Catch: java.lang.Exception -> L75
            boolean r5 = android.text.TextUtils.isEmpty(r1)     // Catch: java.lang.Exception -> L75
            if (r5 != 0) goto L75
        L50:
            r2 = r1
            goto L75
        L52:
            java.lang.String r2 = java.net.URLDecoder.decode(r2, r3)     // Catch: java.lang.Exception -> L16
            boolean r1 = r2.startsWith(r1)     // Catch: java.lang.Exception -> L16
            if (r1 == 0) goto L16
            boolean r1 = android.text.TextUtils.isEmpty(r2)     // Catch: java.lang.Exception -> L16
            if (r1 == 0) goto L63
            goto L75
        L63:
            int r1 = r2.indexOf(r6)     // Catch: java.lang.Exception -> L75
            if (r1 > 0) goto L6a
            goto L75
        L6a:
            java.lang.String r1 = r2.substring(r0, r1)     // Catch: java.lang.Exception -> L75
            boolean r5 = android.text.TextUtils.isEmpty(r1)     // Catch: java.lang.Exception -> L75
            if (r5 != 0) goto L75
            goto L50
        L75:
            boolean r1 = android.text.TextUtils.isEmpty(r2)
            r5 = 1
            if (r1 != 0) goto L81
            r8.z(r2, r4)
        L7f:
            r0 = r5
            goto Le0
        L81:
            java.lang.String r1 = "http"
            boolean r1 = r9.startsWith(r1)
            if (r1 == 0) goto Lad
            java.lang.String r7 = "://"
            r1 = 4
            boolean r7 = r9.startsWith(r7, r1)
            if (r7 != 0) goto L9e
            java.lang.String r7 = "s://"
            boolean r7 = r9.startsWith(r7, r1)
            if (r7 != 0) goto L9e
            java.lang.String r9 = java.net.URLDecoder.decode(r9, r3)     // Catch: java.lang.Exception -> L9e
        L9e:
            boolean r7 = android.webkit.URLUtil.isNetworkUrl(r9)
            if (r7 == 0) goto Lc6
            java.lang.String r7 = ".pdf"
            boolean r7 = r9.endsWith(r7)
            if (r7 == 0) goto Lc6
            goto L7f
        Lad:
            java.lang.String r1 = "tel:"
            boolean r1 = r9.startsWith(r1)
            if (r1 != 0) goto Lda
            java.lang.String r1 = "mailto:"
            boolean r1 = r9.startsWith(r1)
            if (r1 != 0) goto Lda
            java.lang.String r1 = "sms:"
            boolean r1 = r9.startsWith(r1)
            if (r1 == 0) goto Lc6
            goto Lda
        Lc6:
            boolean r7 = com.mycompany.app.main.MainUtil.a6(r9)
            if (r7 != 0) goto Le0
            java.lang.String r7 = com.mycompany.app.main.MainUtil.Z1(r9, r5)
            boolean r9 = android.text.TextUtils.isEmpty(r7)
            if (r9 != 0) goto Le0
            r8.z(r7, r4)
            goto L7f
        Lda:
            com.mycompany.app.setting.SettingInfo r7 = r7.b0
            com.mycompany.app.main.MainUtil.A4(r7, r9)
            goto L7f
        Le0:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogWebVie2.E(com.mycompany.app.dialog.DialogWebVie2, com.mycompany.app.web.WebNestView, java.lang.String):boolean");
    }

    public final void F() {
        DialogTransLang dialogTransLang = this.f1;
        if (dialogTransLang != null) {
            dialogTransLang.dismiss();
            this.f1 = null;
        }
    }

    public final void G(boolean z, boolean z2) {
        if (this.J0 == 0 && this.y0 != null) {
            this.J0 = 2;
            this.K0 = 0;
            this.L0 = 0;
            this.M0 = false;
            this.N0 = 0;
            this.O0 = 0;
            this.P0 = false;
            if (z) {
                if (this.e0) {
                    if (z2) {
                        MyScrollNavi myScrollNavi = this.C0;
                        if (myScrollNavi != null) {
                            myScrollNavi.c();
                        }
                        MyScrollNavi myScrollNavi2 = this.D0;
                        if (myScrollNavi2 != null) {
                            myScrollNavi2.c();
                            return;
                        }
                        return;
                    }
                    MyScrollNavi myScrollNavi3 = this.C0;
                    if (myScrollNavi3 != null) {
                        myScrollNavi3.c();
                    }
                    MyScrollNavi myScrollNavi4 = this.D0;
                    if (myScrollNavi4 != null) {
                        myScrollNavi4.c();
                        return;
                    }
                    return;
                }
                if (z2) {
                    MyScrollNavi myScrollNavi5 = this.C0;
                    if (myScrollNavi5 != null) {
                        myScrollNavi5.c();
                    }
                    MyScrollNavi myScrollNavi6 = this.D0;
                    if (myScrollNavi6 != null) {
                        myScrollNavi6.c();
                        return;
                    }
                    return;
                }
                MyScrollNavi myScrollNavi7 = this.C0;
                if (myScrollNavi7 != null) {
                    myScrollNavi7.c();
                }
                MyScrollNavi myScrollNavi8 = this.D0;
                if (myScrollNavi8 != null) {
                    myScrollNavi8.c();
                    return;
                }
                return;
            }
            MyScrollNavi myScrollNavi9 = this.C0;
            if (myScrollNavi9 != null) {
                myScrollNavi9.c();
            }
            MyScrollNavi myScrollNavi10 = this.D0;
            if (myScrollNavi10 != null) {
                myScrollNavi10.c();
            }
        }
    }

    public final boolean H() {
        G(true, false);
        WebNestView webNestView = this.y0;
        if (webNestView == null || !webNestView.canGoForward()) {
            return false;
        }
        this.y0.goForward();
        return true;
    }

    public final boolean I() {
        G(true, true);
        WebNestView webNestView = this.y0;
        if (webNestView == null || !webNestView.canGoBack()) {
            return false;
        }
        this.y0.goBack();
        return true;
    }

    public final void J(int i) {
        this.j1 = i;
        MyProgressBar myProgressBar = this.z0;
        if (myProgressBar != null) {
            int round = Math.round(myProgressBar.getProgress());
            if (i == 100 && round == 100) {
                this.z0.setSkipDraw(true);
                this.t0.setVisibility(0);
                this.u0.setVisibility(8);
                return;
            }
            this.t0.setVisibility(8);
            this.u0.setVisibility(0);
            MyProgressBar myProgressBar2 = this.z0;
            if (myProgressBar2.B) {
                myProgressBar2.setProgress(0.0f);
                this.z0.setSkipDraw(false);
                J(Math.max(i, 50));
            } else if (round < i) {
                myProgressBar2.setProgress(round + 3);
                Runnable runnable = this.k1;
                if (runnable != null) {
                    this.z0.removeCallbacks(runnable);
                    this.z0.post(runnable);
                }
            }
        }
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.c0 == null) {
            return;
        }
        if (this.f0) {
            PrefWeb.M = this.i0;
        }
        F();
        WebNestView webNestView = this.y0;
        if (webNestView != null) {
            MainUtil.F(webNestView, true);
            this.y0 = null;
        }
        MyDialogRelative myDialogRelative = this.q0;
        if (myDialogRelative != null) {
            myDialogRelative.c();
            this.q0 = null;
        }
        MyButtonImage myButtonImage = this.t0;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.t0 = null;
        }
        MyButtonImage myButtonImage2 = this.u0;
        if (myButtonImage2 != null) {
            myButtonImage2.j();
            this.u0 = null;
        }
        MyButtonImage myButtonImage3 = this.v0;
        if (myButtonImage3 != null) {
            myButtonImage3.j();
            this.v0 = null;
        }
        MyButtonImage myButtonImage4 = this.w0;
        if (myButtonImage4 != null) {
            myButtonImage4.j();
            this.w0 = null;
        }
        MyProgressBar myProgressBar = this.z0;
        if (myProgressBar != null) {
            myProgressBar.f();
            this.z0 = null;
        }
        MyScrollBar myScrollBar = this.A0;
        if (myScrollBar != null) {
            myScrollBar.k();
            this.A0 = null;
        }
        WebUpView webUpView = this.B0;
        if (webUpView != null) {
            webUpView.e();
            this.B0 = null;
        }
        MyScrollNavi myScrollNavi = this.C0;
        if (myScrollNavi != null) {
            myScrollNavi.g();
            this.C0 = null;
        }
        MyScrollNavi myScrollNavi2 = this.D0;
        if (myScrollNavi2 != null) {
            myScrollNavi2.g();
            this.D0 = null;
        }
        WebTransControl webTransControl = this.V0;
        if (webTransControl != null) {
            webTransControl.c();
            this.V0 = null;
        }
        this.b0 = null;
        this.c0 = null;
        this.d0 = null;
        this.l0 = null;
        this.m0 = null;
        this.n0 = null;
        this.p0 = null;
        this.r0 = null;
        this.s0 = null;
        this.x0 = null;
        this.E0 = null;
        this.g1 = null;
        this.W0 = null;
        this.U0 = null;
        this.a1 = null;
        this.b1 = null;
        this.c1 = null;
        super.dismiss();
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x001a, code lost:
    
        if (r1 != 3) goto L181;
     */
    /* JADX WARN: Removed duplicated region for block: B:137:0x01b5  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0111  */
    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.view.Window.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean dispatchTouchEvent(android.view.MotionEvent r13) {
        /*
            Method dump skipped, instructions count: 601
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogWebVie2.dispatchTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog
    public final void onBackPressed() {
        if (e()) {
            return;
        }
        r();
    }

    @Override // com.mycompany.app.view.MyDialogBottom
    public final void r() {
        WebNestView webNestView = this.y0;
        if (webNestView != null && webNestView.canGoBack()) {
            this.y0.goBack();
        } else {
            dismiss();
        }
    }

    /* loaded from: classes3.dex */
    public class LocalWebViewClient extends WebViewClient {
        public LocalWebViewClient() {
        }

        @Override // android.webkit.WebViewClient
        public final void doUpdateVisitedHistory(WebView webView, String str, boolean z) {
            String w4;
            DialogWebVie2 dialogWebVie2 = DialogWebVie2.this;
            boolean z2 = false;
            if (!MainUtil.q5(dialogWebVie2.k0, str)) {
                if (!MainUtil.m6(str) || !MainUtil.n6(str) || MainUtil.l6(str)) {
                    w4 = null;
                } else {
                    w4 = MainUtil.w4(str);
                }
                if (!TextUtils.isEmpty(w4) && !w4.equals(dialogWebVie2.p0)) {
                    z2 = true;
                }
                dialogWebVie2.p0 = w4;
            }
            dialogWebVie2.k0 = str;
            dialogWebVie2.l0 = MainUtil.I1(str, true);
            if (z2) {
                WebNestView webNestView = dialogWebVie2.y0;
                if (webNestView == null) {
                    return;
                }
                webNestView.reload();
                return;
            }
            if (dialogWebVie2.X0) {
                DialogWebVie2.D(dialogWebVie2, null);
            }
            dialogWebVie2.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebVie2.LocalWebViewClient.5
                @Override // java.lang.Runnable
                public final void run() {
                    WebNestView webNestView2 = DialogWebVie2.this.y0;
                    if (webNestView2 == null) {
                        return;
                    }
                    webNestView2.j(true, -1, null);
                }
            });
        }

        @Override // android.webkit.WebViewClient
        public final void onPageFinished(WebView webView, String str) {
            final DialogWebVie2 dialogWebVie2 = DialogWebVie2.this;
            WebNestView webNestView = dialogWebVie2.y0;
            if (webNestView == null) {
                return;
            }
            webNestView.setWebLoading(false);
            DialogWebVie2.B(dialogWebVie2, str);
            if (!dialogWebVie2.h1 && !TextUtils.isEmpty(str) && !str.equals(dialogWebVie2.i1)) {
                dialogWebVie2.h1 = true;
                dialogWebVie2.i1 = str;
                Handler handler = dialogWebVie2.i;
                if (handler != null) {
                    handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebVie2.17
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogWebVie2 dialogWebVie22 = DialogWebVie2.this;
                            MainUtil.l(dialogWebVie22.y0);
                            dialogWebVie22.h1 = false;
                        }
                    });
                }
            }
            dialogWebVie2.R0 = true;
            dialogWebVie2.k0 = str;
            dialogWebVie2.l0 = MainUtil.I1(str, true);
            dialogWebVie2.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebVie2.LocalWebViewClient.3
                @Override // java.lang.Runnable
                public final void run() {
                    WebNestView webNestView2;
                    DialogWebVie2 dialogWebVie22 = DialogWebVie2.this;
                    WebNestView webNestView3 = dialogWebVie22.y0;
                    if (webNestView3 != null) {
                        webNestView3.j(true, -1, null);
                    }
                    if (PrefWeb.o && (webNestView2 = dialogWebVie22.y0) != null) {
                        webNestView2.L(dialogWebVie22.k0, dialogWebVie22.l0, false);
                    }
                }
            });
            if (PrefWeb.H) {
                dialogWebVie2.y0.i(dialogWebVie2.k0, dialogWebVie2.l0, true);
            }
            if (dialogWebVie2.X0) {
                DialogWebVie2.D(dialogWebVie2, null);
            }
            dialogWebVie2.y0.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebVie2.LocalWebViewClient.4
                @Override // java.lang.Runnable
                public final void run() {
                    DialogWebVie2.C(DialogWebVie2.this);
                }
            });
        }

        @Override // android.webkit.WebViewClient
        public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            DialogWebVie2 dialogWebVie2 = DialogWebVie2.this;
            WebNestView webNestView = dialogWebVie2.y0;
            if (webNestView == null) {
                return;
            }
            webNestView.setWebLoading(true);
            DialogWebVie2.B(dialogWebVie2, str);
            dialogWebVie2.k0 = str;
            dialogWebVie2.l0 = MainUtil.I1(str, true);
            dialogWebVie2.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebVie2.LocalWebViewClient.1
                @Override // java.lang.Runnable
                public final void run() {
                    WebNestView webNestView2;
                    DialogWebVie2 dialogWebVie22 = DialogWebVie2.this;
                    WebNestView webNestView3 = dialogWebVie22.y0;
                    if (webNestView3 != null) {
                        webNestView3.j(true, -1, null);
                    }
                    if (PrefWeb.o && (webNestView2 = dialogWebVie22.y0) != null) {
                        webNestView2.L(dialogWebVie22.k0, dialogWebVie22.l0, false);
                    }
                }
            });
            if (PrefWeb.H) {
                dialogWebVie2.y0.i(dialogWebVie2.k0, dialogWebVie2.l0, false);
            }
            dialogWebVie2.y0.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebVie2.LocalWebViewClient.2
                @Override // java.lang.Runnable
                public final void run() {
                    DialogWebVie2.C(DialogWebVie2.this);
                }
            });
        }

        @Override // android.webkit.WebViewClient
        public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            final DialogWebVie2 dialogWebVie2 = DialogWebVie2.this;
            dialogWebVie2.y0 = null;
            MainUtil.D(webView, renderProcessGoneDetail);
            Handler handler = dialogWebVie2.i;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebVie2.18
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogWebVie2.this.dismiss();
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
            DialogWebVie2 dialogWebVie2 = DialogWebVie2.this;
            if (dialogWebVie2.y0 != null && webResourceRequest != null && webResourceRequest.getUrl() != null) {
                String uri = webResourceRequest.getUrl().toString();
                DialogWebVie2.B(dialogWebVie2, uri);
                if (PrefZone.k && (v1 = MainUtil.v1(dialogWebVie2.c0, uri)) != null) {
                    return v1;
                }
                if (PrefWeb.o) {
                    if (!MainUtil.q5(dialogWebVie2.n0, dialogWebVie2.k0)) {
                        dialogWebVie2.n0 = dialogWebVie2.k0;
                        dialogWebVie2.o0 = DataBookAds.l(dialogWebVie2.c0).n(dialogWebVie2.k0, dialogWebVie2.l0);
                    }
                    if (!dialogWebVie2.o0 && (webClean = dialogWebVie2.g1) != null && (j = webClean.j(dialogWebVie2.c0, webView, webResourceRequest, dialogWebVie2.k0, dialogWebVie2.l0, uri, 0)) != null) {
                        return j;
                    }
                }
            }
            return null;
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
            DialogWebVie2 dialogWebVie2 = DialogWebVie2.this;
            if (dialogWebVie2.y0 == null || TextUtils.isEmpty(str)) {
                return true;
            }
            DialogWebVie2.B(dialogWebVie2, str);
            if (DialogWebVie2.E(dialogWebVie2, dialogWebVie2.y0, str)) {
                return true;
            }
            dialogWebVie2.y0.z(str, null);
            return true;
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            DialogWebVie2 dialogWebVie2 = DialogWebVie2.this;
            if (dialogWebVie2.y0 == null || webResourceRequest == null || webResourceRequest.getUrl() == null) {
                return true;
            }
            String uri = webResourceRequest.getUrl().toString();
            if (TextUtils.isEmpty(uri)) {
                return true;
            }
            DialogWebVie2.B(dialogWebVie2, uri);
            return DialogWebVie2.E(dialogWebVie2, dialogWebVie2.y0, uri);
        }
    }
}
