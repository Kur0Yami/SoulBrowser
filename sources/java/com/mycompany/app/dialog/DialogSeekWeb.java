package com.mycompany.app.dialog;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.graphics.Paint;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import android.view.GestureDetector;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
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
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.api.client.http.HttpStatusCodes;
import com.mycompany.app.data.book.DataBookAds;
import com.mycompany.app.dialog.DialogEditorText;
import com.mycompany.app.dialog.DialogSetFull;
import com.mycompany.app.dialog.DialogSetImage;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefEditor;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.pref.PrefWeb;
import com.mycompany.app.pref.PrefZone;
import com.mycompany.app.pref.PrefZtri;
import com.mycompany.app.pref.PrefZtwo;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyButtonView;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogRelative;
import com.mycompany.app.view.MyEditPure;
import com.mycompany.app.view.MyLineLinear;
import com.mycompany.app.view.MyLineRelative;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyProgressBar;
import com.mycompany.app.view.MyRoundItem;
import com.mycompany.app.view.MyRoundView;
import com.mycompany.app.view.MyScrollBar;
import com.mycompany.app.view.MyScrollNavi;
import com.mycompany.app.view.MySwitchView;
import com.mycompany.app.web.WebClean;
import com.mycompany.app.web.WebNestView;
import com.mycompany.app.wview.WebFltView;

/* loaded from: classes3.dex */
public class DialogSeekWeb extends MyDialogBottom {
    public static final /* synthetic */ int C1 = 0;
    public MyRoundItem A0;
    public final Runnable A1;
    public MySwitchView B0;
    public final Runnable B1;
    public AppCompatTextView C0;
    public AppCompatTextView D0;
    public MyLineRelative E0;
    public AppCompatTextView F0;
    public MyButtonView G0;
    public MyRoundItem H0;
    public AppCompatTextView I0;
    public AppCompatTextView J0;
    public FrameLayout K0;
    public SeekBar L0;
    public MyButtonImage M0;
    public MyButtonImage N0;
    public MyRoundItem O0;
    public AppCompatTextView P0;
    public AppCompatTextView Q0;
    public SeekBar R0;
    public MyButtonImage S0;
    public MyButtonImage T0;
    public MyLineLinear U0;
    public AppCompatTextView V0;
    public MyLineText W0;
    public boolean X0;
    public int Y0;
    public int Z0;
    public final int a0;
    public boolean a1;
    public final int b0;
    public boolean b1;
    public final int c0;
    public GestureDetector c1;
    public MainActivity d0;
    public float d1;
    public Context e0;
    public float e1;
    public DialogSetImage.ChangedListener f0;
    public int f1;
    public final boolean g0;
    public int g1;
    public String h0;
    public int h1;
    public String i0;
    public boolean i1;
    public String j0;
    public int j1;
    public boolean k0;
    public int k1;
    public MyDialogRelative l0;
    public boolean l1;
    public FrameLayout m0;
    public DialogEditIcon m1;
    public View n0;
    public WebFltView n1;
    public MyRoundView o0;
    public DialogSetMsg o1;
    public MyEditPure p0;
    public boolean p1;
    public MyButtonImage q0;
    public boolean q1;
    public MyButtonImage r0;
    public int r1;
    public FrameLayout s0;
    public int s1;
    public WebNestView t0;
    public float t1;
    public MyProgressBar u0;
    public WebClean u1;
    public MyScrollBar v0;
    public boolean v1;
    public int w0;
    public String w1;
    public MyScrollNavi x0;
    public int x1;
    public MyScrollNavi y0;
    public final Runnable y1;
    public LinearLayout z0;
    public boolean z1;

    /* renamed from: com.mycompany.app.dialog.DialogSeekWeb$21, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass21 implements Runnable {

        /* renamed from: com.mycompany.app.dialog.DialogSeekWeb$21$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 implements Runnable {

            /* renamed from: com.mycompany.app.dialog.DialogSeekWeb$21$1$1, reason: invalid class name and collision with other inner class name */
            /* loaded from: classes3.dex */
            class RunnableC00661 implements Runnable {
                public RunnableC00661() {
                }

                @Override // java.lang.Runnable
                public final void run() {
                    AnonymousClass21 anonymousClass21 = AnonymousClass21.this;
                    final DialogSeekWeb dialogSeekWeb = DialogSeekWeb.this;
                    WebNestView webNestView = dialogSeekWeb.t0;
                    if (webNestView != null) {
                        webNestView.setWebViewClient(new LocalWebViewClient());
                        webNestView.setWebChromeClient(new LocalChromeClient());
                        webNestView.setListener(new WebNestView.WebViewListener() { // from class: com.mycompany.app.dialog.DialogSeekWeb.24
                            @Override // com.mycompany.app.web.WebNestView.WebViewListener
                            public final void a(int i) {
                            }

                            @Override // com.mycompany.app.web.WebNestView.WebViewListener
                            public final void b() {
                            }

                            @Override // com.mycompany.app.web.WebNestView.WebViewListener
                            public final void c(int i) {
                                boolean z;
                                LinearLayout linearLayout;
                                if (i < 1) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                DialogSeekWeb dialogSeekWeb2 = DialogSeekWeb.this;
                                dialogSeekWeb2.y(z);
                                if (dialogSeekWeb2.v0 != null) {
                                    if (dialogSeekWeb2.w0 == 0 && (linearLayout = dialogSeekWeb2.z0) != null) {
                                        int height = linearLayout.getHeight() + MainApp.F1;
                                        dialogSeekWeb2.w0 = height;
                                        dialogSeekWeb2.v0.setPadBot(height);
                                    }
                                    Runnable runnable = dialogSeekWeb2.A1;
                                    MyScrollBar myScrollBar = dialogSeekWeb2.v0;
                                    if (myScrollBar == null || dialogSeekWeb2.z1) {
                                        return;
                                    }
                                    dialogSeekWeb2.z1 = true;
                                    myScrollBar.removeCallbacks(runnable);
                                    dialogSeekWeb2.v0.post(runnable);
                                }
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
                        Handler handler = DialogSeekWeb.this.i;
                        if (handler == null) {
                            return;
                        }
                        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSeekWeb.21.1.1.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                DialogSeekWeb dialogSeekWeb2 = DialogSeekWeb.this;
                                WebNestView webNestView2 = dialogSeekWeb2.t0;
                                if (webNestView2 != null) {
                                    webNestView2.z(dialogSeekWeb2.h0, null);
                                    DialogSeekWeb.this.P(0);
                                    Handler handler2 = DialogSeekWeb.this.i;
                                    if (handler2 == null) {
                                        return;
                                    }
                                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSeekWeb.21.1.1.1.1
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            final DialogSeekWeb dialogSeekWeb3 = DialogSeekWeb.this;
                                            if (dialogSeekWeb3.t0 != null && dialogSeekWeb3.n1 == null && dialogSeekWeb3.s0 != null) {
                                                try {
                                                    WebFltView webFltView = new WebFltView(dialogSeekWeb3.e0, 4);
                                                    dialogSeekWeb3.n1 = webFltView;
                                                    webFltView.setPreview(true);
                                                    dialogSeekWeb3.n1.q();
                                                    if (PrefZtri.p0) {
                                                        dialogSeekWeb3.n1.setNoti(true);
                                                    }
                                                    if (!dialogSeekWeb3.X0) {
                                                        dialogSeekWeb3.n1.setVisibility(8);
                                                    }
                                                    dialogSeekWeb3.n1.setFltListener(new WebFltView.FltViewListener() { // from class: com.mycompany.app.dialog.DialogSeekWeb.22
                                                        @Override // com.mycompany.app.wview.WebFltView.FltViewListener
                                                        public final void a(View view, int i) {
                                                            DialogSeekWeb dialogSeekWeb4 = DialogSeekWeb.this;
                                                            if (dialogSeekWeb4.t0 != null) {
                                                                if (PrefZtri.p0) {
                                                                    PrefZtri.p0 = false;
                                                                    PrefSet.d(17, dialogSeekWeb4.e0, "mNotiZoom", false);
                                                                    dialogSeekWeb4.n1.setNoti(false);
                                                                }
                                                                int textZoom = dialogSeekWeb4.t0.getSettings().getTextZoom();
                                                                if (textZoom != dialogSeekWeb4.Y0) {
                                                                    dialogSeekWeb4.t0.getSettings().setTextZoom(dialogSeekWeb4.Y0);
                                                                } else if (textZoom != dialogSeekWeb4.Z0) {
                                                                    dialogSeekWeb4.t0.getSettings().setTextZoom(dialogSeekWeb4.Z0);
                                                                }
                                                            }
                                                        }

                                                        @Override // com.mycompany.app.wview.WebFltView.FltViewListener
                                                        public final void b() {
                                                        }

                                                        @Override // com.mycompany.app.wview.WebFltView.FltViewListener
                                                        public final void c(View view) {
                                                        }
                                                    });
                                                    dialogSeekWeb3.n1.setTouchListener(new WebFltView.FltTouchListener() { // from class: com.mycompany.app.dialog.DialogSeekWeb.23
                                                        @Override // com.mycompany.app.wview.WebFltView.FltTouchListener
                                                        public final void a(boolean z) {
                                                            DialogSeekWeb.this.y(!z);
                                                        }
                                                    });
                                                    FrameLayout frameLayout = dialogSeekWeb3.s0;
                                                    WebFltView webFltView2 = dialogSeekWeb3.n1;
                                                    int i = MainApp.g1;
                                                    frameLayout.addView(webFltView2, i, i);
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

            public AnonymousClass1() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                DialogSeekWeb dialogSeekWeb = DialogSeekWeb.this;
                WebNestView webNestView = dialogSeekWeb.t0;
                if (webNestView != null) {
                    MainUtil.X7(webNestView.getSettings(), MainApp.L1);
                    Handler handler = dialogSeekWeb.i;
                    if (handler == null) {
                        return;
                    }
                    handler.post(new RunnableC00661());
                }
            }
        }

        public AnonymousClass21() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            DialogSeekWeb dialogSeekWeb = DialogSeekWeb.this;
            WebNestView webNestView = dialogSeekWeb.t0;
            if (webNestView != null) {
                int i = PrefZone.w;
                if (i < dialogSeekWeb.b0 || i > dialogSeekWeb.c0) {
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
                    MainUtil.Q7(settings, MainUtil.F0(dialogSeekWeb.e0));
                } else {
                    webNestView.K(dialogSeekWeb.e0, PrefZtwo.p, settings);
                }
                webNestView.setEnableJs(PrefWeb.H);
                webNestView.setViewCookie(dialogSeekWeb.e0);
                webNestView.setOverScrollMode(2);
                if (PrefZone.x != 0) {
                    webNestView.setVerticalScrollBarEnabled(false);
                } else {
                    webNestView.setVerticalScrollBarEnabled(true);
                }
                Handler handler = dialogSeekWeb.i;
                if (handler == null) {
                    return;
                }
                handler.post(new AnonymousClass1());
            }
        }
    }

    /* loaded from: classes3.dex */
    public class LocalChromeClient extends WebChromeClient {
        public LocalChromeClient() {
        }

        @Override // android.webkit.WebChromeClient
        public final void onProgressChanged(WebView webView, int i) {
            DialogSeekWeb dialogSeekWeb = DialogSeekWeb.this;
            if (dialogSeekWeb.t0 == null) {
                return;
            }
            dialogSeekWeb.P(i);
        }
    }

    /* loaded from: classes3.dex */
    public class LocalWebViewClient extends WebViewClient {
        public LocalWebViewClient() {
        }

        @Override // android.webkit.WebViewClient
        public final void doUpdateVisitedHistory(WebView webView, String str, boolean z) {
            DialogSeekWeb dialogSeekWeb = DialogSeekWeb.this;
            dialogSeekWeb.h0 = str;
            dialogSeekWeb.i0 = MainUtil.I1(str, true);
            MyEditPure myEditPure = dialogSeekWeb.p0;
            if (myEditPure != null && !myEditPure.isFocused()) {
                dialogSeekWeb.p0.setText(dialogSeekWeb.h0);
            }
            dialogSeekWeb.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogSeekWeb.LocalWebViewClient.3
                @Override // java.lang.Runnable
                public final void run() {
                    WebNestView webNestView = DialogSeekWeb.this.t0;
                    if (webNestView == null) {
                        return;
                    }
                    webNestView.j(true, -1, null);
                }
            });
        }

        @Override // android.webkit.WebViewClient
        public final void onPageFinished(WebView webView, String str) {
            final DialogSeekWeb dialogSeekWeb = DialogSeekWeb.this;
            WebNestView webNestView = dialogSeekWeb.t0;
            if (webNestView != null) {
                webNestView.setWebLoading(false);
                if (!dialogSeekWeb.v1 && !TextUtils.isEmpty(str) && !str.equals(dialogSeekWeb.w1)) {
                    dialogSeekWeb.v1 = true;
                    dialogSeekWeb.w1 = str;
                    Handler handler = dialogSeekWeb.i;
                    if (handler != null) {
                        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSeekWeb.25
                            @Override // java.lang.Runnable
                            public final void run() {
                                DialogSeekWeb dialogSeekWeb2 = DialogSeekWeb.this;
                                MainUtil.l(dialogSeekWeb2.t0);
                                dialogSeekWeb2.v1 = false;
                            }
                        });
                    }
                }
                dialogSeekWeb.h0 = str;
                dialogSeekWeb.i0 = MainUtil.I1(str, true);
                dialogSeekWeb.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogSeekWeb.LocalWebViewClient.2
                    @Override // java.lang.Runnable
                    public final void run() {
                        WebNestView webNestView2;
                        DialogSeekWeb dialogSeekWeb2 = DialogSeekWeb.this;
                        WebNestView webNestView3 = dialogSeekWeb2.t0;
                        if (webNestView3 != null) {
                            webNestView3.j(true, -1, null);
                        }
                        if (PrefWeb.o && (webNestView2 = dialogSeekWeb2.t0) != null) {
                            webNestView2.L(dialogSeekWeb2.h0, dialogSeekWeb2.i0, false);
                        }
                    }
                });
                if (PrefWeb.H) {
                    dialogSeekWeb.t0.i(dialogSeekWeb.h0, dialogSeekWeb.i0, true);
                }
                MyEditPure myEditPure = dialogSeekWeb.p0;
                if (myEditPure != null && !myEditPure.isFocused()) {
                    dialogSeekWeb.p0.setText(dialogSeekWeb.h0);
                }
            }
        }

        @Override // android.webkit.WebViewClient
        public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            DialogSeekWeb dialogSeekWeb = DialogSeekWeb.this;
            WebNestView webNestView = dialogSeekWeb.t0;
            if (webNestView != null) {
                webNestView.setWebLoading(true);
                dialogSeekWeb.h0 = str;
                dialogSeekWeb.i0 = MainUtil.I1(str, true);
                dialogSeekWeb.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogSeekWeb.LocalWebViewClient.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        WebNestView webNestView2;
                        DialogSeekWeb dialogSeekWeb2 = DialogSeekWeb.this;
                        WebNestView webNestView3 = dialogSeekWeb2.t0;
                        if (webNestView3 != null) {
                            webNestView3.j(true, -1, null);
                        }
                        if (PrefWeb.o && (webNestView2 = dialogSeekWeb2.t0) != null) {
                            webNestView2.L(dialogSeekWeb2.h0, dialogSeekWeb2.i0, false);
                        }
                    }
                });
                if (PrefWeb.H) {
                    dialogSeekWeb.t0.i(dialogSeekWeb.h0, dialogSeekWeb.i0, false);
                }
                MyEditPure myEditPure = dialogSeekWeb.p0;
                if (myEditPure != null && !myEditPure.isFocused()) {
                    dialogSeekWeb.p0.setText(dialogSeekWeb.h0);
                }
            }
        }

        @Override // android.webkit.WebViewClient
        public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            final DialogSeekWeb dialogSeekWeb = DialogSeekWeb.this;
            dialogSeekWeb.t0 = null;
            MainUtil.D(webView, renderProcessGoneDetail);
            Handler handler = dialogSeekWeb.i;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSeekWeb.26
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogSeekWeb.this.dismiss();
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
            DialogSeekWeb dialogSeekWeb = DialogSeekWeb.this;
            if (dialogSeekWeb.t0 != null && webResourceRequest != null && webResourceRequest.getUrl() != null) {
                String uri = webResourceRequest.getUrl().toString();
                if (PrefZone.k && (v1 = MainUtil.v1(dialogSeekWeb.e0, uri)) != null) {
                    return v1;
                }
                if (PrefWeb.o) {
                    if (!MainUtil.q5(dialogSeekWeb.j0, dialogSeekWeb.h0)) {
                        dialogSeekWeb.j0 = dialogSeekWeb.h0;
                        dialogSeekWeb.k0 = DataBookAds.l(dialogSeekWeb.e0).n(dialogSeekWeb.h0, dialogSeekWeb.i0);
                    }
                    if (!dialogSeekWeb.k0 && (webClean = dialogSeekWeb.u1) != null && (j = webClean.j(dialogSeekWeb.e0, webView, webResourceRequest, dialogSeekWeb.h0, dialogSeekWeb.i0, uri, 0)) != null) {
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
            DialogSeekWeb dialogSeekWeb = DialogSeekWeb.this;
            if (dialogSeekWeb.t0 == null || TextUtils.isEmpty(str)) {
                return true;
            }
            dialogSeekWeb.t0.z(str, null);
            return true;
        }
    }

    public DialogSeekWeb(MainActivity mainActivity, String str, DialogSetImage.ChangedListener changedListener) {
        super(mainActivity);
        this.y1 = new Runnable() { // from class: com.mycompany.app.dialog.DialogSeekWeb.27
            @Override // java.lang.Runnable
            public final void run() {
                DialogSeekWeb dialogSeekWeb = DialogSeekWeb.this;
                dialogSeekWeb.P(dialogSeekWeb.x1);
            }
        };
        this.A1 = new Runnable() { // from class: com.mycompany.app.dialog.DialogSeekWeb.28
            @Override // java.lang.Runnable
            public final void run() {
                DialogSeekWeb dialogSeekWeb = DialogSeekWeb.this;
                MyScrollBar myScrollBar = dialogSeekWeb.v0;
                if (myScrollBar != null) {
                    myScrollBar.p(0, 0);
                }
                dialogSeekWeb.z1 = false;
            }
        };
        this.B1 = new Runnable() { // from class: com.mycompany.app.dialog.DialogSeekWeb.29
            @Override // java.lang.Runnable
            public final void run() {
                DialogSeekWeb dialogSeekWeb = DialogSeekWeb.this;
                SeekBar seekBar = dialogSeekWeb.R0;
                if (seekBar != null) {
                    dialogSeekWeb.b1 = false;
                    int progress = seekBar.getProgress() + dialogSeekWeb.b0;
                    if (dialogSeekWeb.Z0 != progress) {
                        DialogSeekWeb.D(dialogSeekWeb, progress);
                    }
                }
            }
        };
        this.x = true;
        this.d0 = mainActivity;
        Context context = getContext();
        this.e0 = context;
        this.f0 = changedListener;
        this.u1 = MainApp.v(context, false);
        this.g0 = MainUtil.O5(this.e0);
        this.p1 = MainApp.K1;
        this.q1 = MainApp.L1;
        if (URLUtil.isNetworkUrl(str)) {
            this.h0 = str;
        } else {
            this.h0 = "https://www.google.com";
        }
        this.i0 = MainUtil.I1(this.h0, true);
        this.b0 = 50;
        this.c0 = 500;
        int i = PrefZtri.p;
        if (i < 50 || i > 500) {
            PrefZtri.p = 100;
        }
        int i2 = PrefZone.w;
        if (i2 < 50 || i2 > 500) {
            PrefZone.w = 100;
        }
        this.X0 = PrefZtri.k;
        this.Y0 = PrefZtri.p;
        this.Z0 = PrefZone.w;
        this.r1 = PrefEditor.r;
        this.s1 = PrefEditor.s;
        this.t1 = PrefEditor.t;
        this.a0 = MainApp.s1 / 2;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSeekWeb.1
            @Override // java.lang.Runnable
            public final void run() {
                DialogSeekWeb.B(DialogSeekWeb.this);
            }
        });
    }

    public static void B(DialogSeekWeb dialogSeekWeb) {
        Context context = dialogSeekWeb.e0;
        if (context != null) {
            int i = R.id.item_frame_view;
            int i2 = R.id.item_title_view;
            int i3 = R.id.item_seek_text;
            int i4 = R.id.item_zoom_text;
            MyDialogRelative myDialogRelative = new MyDialogRelative(context);
            FrameLayout frameLayout = new FrameLayout(context);
            frameLayout.setPadding(0, 0, 0, MainApp.F1);
            myDialogRelative.addView(frameLayout, androidx.work.impl.workers.a.h(-1, -1, 2, i));
            FrameLayout frameLayout2 = new FrameLayout(context);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
            layoutParams.topMargin = MainApp.b1;
            frameLayout.addView(frameLayout2, layoutParams);
            int G = (int) MainUtil.G(context, 1.5f);
            int G2 = (int) MainUtil.G(context, 2.0f);
            MyProgressBar myProgressBar = new MyProgressBar(context);
            myProgressBar.g = true;
            myProgressBar.h = true;
            myProgressBar.l = G;
            myProgressBar.B = true;
            myProgressBar.setVisibility(8);
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, G2);
            layoutParams2.topMargin = (int) MainUtil.G(context, 51.0f);
            frameLayout.addView(myProgressBar, layoutParams2);
            int G3 = (int) MainUtil.G(context, 10.0f);
            View view = new View(context);
            frameLayout.addView(view, -1, G3);
            MyRoundView myRoundView = new MyRoundView(context);
            frameLayout.addView(myRoundView, -1, MainApp.b1);
            MyEditPure myEditPure = new MyEditPure(context);
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
            int G4 = (int) MainUtil.G(context, 14.0f);
            MyButtonImage myButtonImage = new MyButtonImage(context);
            myButtonImage.setPadding(G4, G4, G4, G4);
            ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_INSIDE;
            myButtonImage.setScaleType(scaleType);
            FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(MainApp.g1, MainApp.b1);
            layoutParams4.gravity = 8388613;
            frameLayout.addView(myButtonImage, layoutParams4);
            MyButtonImage myButtonImage2 = new MyButtonImage(context);
            myButtonImage2.setPadding(G4, G4, G4, G4);
            myButtonImage2.setScaleType(scaleType);
            myButtonImage2.setVisibility(8);
            FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(MainApp.g1, MainApp.b1);
            layoutParams5.gravity = 8388613;
            frameLayout.addView(myButtonImage2, layoutParams5);
            MyScrollNavi myScrollNavi = new MyScrollNavi(context);
            myScrollNavi.setVisibility(4);
            int i5 = MainApp.i1;
            FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(i5, i5);
            layoutParams6.gravity = 19;
            frameLayout.addView(myScrollNavi, layoutParams6);
            MyScrollNavi myScrollNavi2 = new MyScrollNavi(context);
            myScrollNavi2.setVisibility(4);
            int i6 = MainApp.i1;
            FrameLayout.LayoutParams layoutParams7 = new FrameLayout.LayoutParams(i6, i6);
            layoutParams7.gravity = 21;
            frameLayout.addView(myScrollNavi2, layoutParams7);
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setOrientation(1);
            RelativeLayout.LayoutParams layoutParams8 = new RelativeLayout.LayoutParams(-1, -2);
            layoutParams8.addRule(12);
            myDialogRelative.addView(linearLayout, layoutParams8);
            MyRoundItem myRoundItem = new MyRoundItem(context);
            myRoundItem.setPaddingRelative(MainApp.E1, 0, MainApp.F1, 0);
            myRoundItem.setMinimumHeight(MainApp.h1);
            myRoundItem.a(MainApp.E1);
            linearLayout.addView(myRoundItem, -1, -2);
            MySwitchView mySwitchView = new MySwitchView(context);
            int i7 = MainApp.g1;
            RelativeLayout.LayoutParams layoutParams9 = new RelativeLayout.LayoutParams(i7, i7);
            layoutParams9.addRule(21);
            layoutParams9.addRule(15);
            myRoundItem.addView(mySwitchView, layoutParams9);
            RelativeLayout relativeLayout = new RelativeLayout(context);
            int i8 = MainApp.E1;
            relativeLayout.setPadding(0, i8, 0, i8);
            RelativeLayout.LayoutParams g = androidx.work.impl.workers.a.g(-1, -2, 15);
            g.setMarginEnd(MainApp.g1 + MainApp.F1);
            myRoundItem.addView(relativeLayout, g);
            AppCompatTextView k = com.google.android.gms.internal.mlkit_vision_text_common.a.k(context, null, i2, 1, 16.0f);
            relativeLayout.addView(k, -1, -2);
            AppCompatTextView j = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 14.0f);
            RelativeLayout.LayoutParams h = androidx.work.impl.workers.a.h(-1, -2, 3, i2);
            h.topMargin = MainApp.G1;
            relativeLayout.addView(j, h);
            MyLineRelative myLineRelative = new MyLineRelative(context);
            myLineRelative.setPaddingRelative(MainApp.E1, 0, MainApp.F1, 0);
            myLineRelative.setMinimumHeight(MainApp.h1);
            myLineRelative.b(MainApp.E1);
            linearLayout.addView(myLineRelative, -1, -2);
            AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
            int i9 = MainApp.E1;
            appCompatTextView.setPadding(0, i9, 0, i9);
            RelativeLayout.LayoutParams h2 = com.google.android.gms.internal.mlkit_vision_text_common.a.h(appCompatTextView, 1, 16.0f, -1, -2);
            h2.addRule(15);
            myLineRelative.addView(appCompatTextView, h2);
            int G5 = (int) MainUtil.G(context, 12.0f);
            MyButtonView myButtonView = new MyButtonView(context);
            myButtonView.setBgNorRadius(G5);
            int i10 = MainApp.g1;
            RelativeLayout.LayoutParams layoutParams10 = new RelativeLayout.LayoutParams(i10, i10);
            layoutParams10.addRule(15);
            layoutParams10.addRule(21);
            myLineRelative.addView(myButtonView, layoutParams10);
            MyRoundItem myRoundItem2 = new MyRoundItem(context);
            linearLayout.addView(myRoundItem2, -1, -2);
            AppCompatTextView j2 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
            RelativeLayout.LayoutParams layoutParams11 = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams11.topMargin = G5;
            layoutParams11.setMarginStart(MainApp.E1);
            myRoundItem2.addView(j2, layoutParams11);
            AppCompatTextView appCompatTextView2 = new AppCompatTextView(context, null);
            appCompatTextView2.setId(i4);
            appCompatTextView2.setGravity(1);
            appCompatTextView2.setTextSize(1, 16.0f);
            appCompatTextView2.setMinWidth(MainApp.E1);
            RelativeLayout.LayoutParams layoutParams12 = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams12.addRule(21);
            layoutParams12.topMargin = G5;
            layoutParams12.setMarginEnd(MainApp.E1);
            myRoundItem2.addView(appCompatTextView2, layoutParams12);
            FrameLayout frameLayout3 = new FrameLayout(context);
            RelativeLayout.LayoutParams layoutParams13 = new RelativeLayout.LayoutParams(-1, MainApp.g1);
            layoutParams13.addRule(3, i4);
            myRoundItem2.addView(frameLayout3, layoutParams13);
            MyButtonImage myButtonImage3 = new MyButtonImage(context);
            myButtonImage3.setScaleType(scaleType);
            int i11 = MainApp.g1;
            frameLayout3.addView(myButtonImage3, i11, i11);
            SeekBar seekBar = new SeekBar(context);
            FrameLayout.LayoutParams layoutParams14 = new FrameLayout.LayoutParams(-1, -2);
            layoutParams14.gravity = 16;
            layoutParams14.setMarginStart(MainApp.g1);
            layoutParams14.setMarginEnd(MainApp.g1);
            frameLayout3.addView(seekBar, layoutParams14);
            MyButtonImage p = com.google.android.gms.internal.mlkit_vision_text_common.a.p(context, scaleType);
            int i12 = MainApp.g1;
            FrameLayout.LayoutParams layoutParams15 = new FrameLayout.LayoutParams(i12, i12);
            layoutParams15.gravity = 8388613;
            frameLayout3.addView(p, layoutParams15);
            MyRoundItem myRoundItem3 = new MyRoundItem(context);
            RelativeLayout.LayoutParams layoutParams16 = new RelativeLayout.LayoutParams(-1, -2);
            layoutParams16.topMargin = MainApp.F1;
            linearLayout.addView(myRoundItem3, layoutParams16);
            AppCompatTextView appCompatTextView3 = new AppCompatTextView(context, null);
            RelativeLayout.LayoutParams h3 = com.google.android.gms.internal.mlkit_vision_text_common.a.h(appCompatTextView3, 1, 16.0f, -2, -2);
            h3.topMargin = G5;
            h3.setMarginStart(MainApp.E1);
            myRoundItem3.addView(appCompatTextView3, h3);
            AppCompatTextView appCompatTextView4 = new AppCompatTextView(context, null);
            appCompatTextView4.setId(i3);
            appCompatTextView4.setGravity(1);
            appCompatTextView4.setTextSize(1, 16.0f);
            appCompatTextView4.setMinWidth(MainApp.E1);
            RelativeLayout.LayoutParams layoutParams17 = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams17.addRule(21);
            layoutParams17.topMargin = G5;
            layoutParams17.setMarginEnd(MainApp.E1);
            myRoundItem3.addView(appCompatTextView4, layoutParams17);
            FrameLayout frameLayout4 = new FrameLayout(context);
            RelativeLayout.LayoutParams layoutParams18 = new RelativeLayout.LayoutParams(-1, MainApp.g1);
            layoutParams18.addRule(3, i3);
            myRoundItem3.addView(frameLayout4, layoutParams18);
            MyButtonImage myButtonImage4 = new MyButtonImage(context);
            myButtonImage4.setScaleType(scaleType);
            int i13 = MainApp.g1;
            frameLayout4.addView(myButtonImage4, i13, i13);
            SeekBar seekBar2 = new SeekBar(context);
            FrameLayout.LayoutParams layoutParams19 = new FrameLayout.LayoutParams(-1, -2);
            layoutParams19.gravity = 16;
            layoutParams19.setMarginStart(MainApp.g1);
            layoutParams19.setMarginEnd(MainApp.g1);
            frameLayout4.addView(seekBar2, layoutParams19);
            MyButtonImage p2 = com.google.android.gms.internal.mlkit_vision_text_common.a.p(context, scaleType);
            int i14 = MainApp.g1;
            FrameLayout.LayoutParams layoutParams20 = new FrameLayout.LayoutParams(i14, i14);
            layoutParams20.gravity = 8388613;
            frameLayout4.addView(p2, layoutParams20);
            MyLineLinear myLineLinear = new MyLineLinear(context);
            myLineLinear.setBaselineAligned(false);
            myLineLinear.setOrientation(0);
            myLineLinear.setLinePad(MainApp.E1);
            myLineLinear.setLineUp(true);
            linearLayout.addView(myLineLinear, -1, MainApp.g1);
            MyLineText myLineText = new MyLineText(context);
            myLineText.setGravity(17);
            myLineText.setTextSize(1, 16.0f);
            LinearLayout.LayoutParams f = com.google.android.gms.internal.mlkit_vision_text_common.a.f(myLineText, R.string.reset, context, 0, -1);
            f.weight = 1.0f;
            AppCompatTextView l = com.google.android.gms.internal.mlkit_vision_text_common.a.l(myLineLinear, myLineText, f, context, null);
            l.setGravity(17);
            l.setTextSize(1, 16.0f);
            LinearLayout.LayoutParams e = com.google.android.gms.internal.mlkit_vision_text_common.a.e(l, R.string.apply, 0, -1);
            e.weight = 1.0f;
            myLineLinear.addView(l, e);
            int G6 = (int) MainUtil.G(context, 32.0f);
            MyScrollBar myScrollBar = new MyScrollBar(context);
            myScrollBar.n();
            myScrollBar.setPadTop(MainApp.b1);
            myScrollBar.setVisibility(4);
            RelativeLayout.LayoutParams layoutParams21 = new RelativeLayout.LayoutParams(G6, -1);
            layoutParams21.addRule(11);
            myDialogRelative.addView(myScrollBar, layoutParams21);
            dialogSeekWeb.l0 = myDialogRelative;
            dialogSeekWeb.m0 = frameLayout;
            dialogSeekWeb.n0 = view;
            dialogSeekWeb.o0 = myRoundView;
            dialogSeekWeb.p0 = myEditPure;
            dialogSeekWeb.q0 = myButtonImage;
            dialogSeekWeb.r0 = myButtonImage2;
            dialogSeekWeb.s0 = frameLayout2;
            dialogSeekWeb.u0 = myProgressBar;
            dialogSeekWeb.v0 = myScrollBar;
            dialogSeekWeb.x0 = myScrollNavi;
            dialogSeekWeb.y0 = myScrollNavi2;
            dialogSeekWeb.z0 = linearLayout;
            dialogSeekWeb.A0 = myRoundItem;
            dialogSeekWeb.B0 = mySwitchView;
            dialogSeekWeb.C0 = k;
            dialogSeekWeb.D0 = j;
            dialogSeekWeb.E0 = myLineRelative;
            dialogSeekWeb.F0 = appCompatTextView;
            dialogSeekWeb.G0 = myButtonView;
            dialogSeekWeb.H0 = myRoundItem2;
            dialogSeekWeb.I0 = j2;
            dialogSeekWeb.J0 = appCompatTextView2;
            dialogSeekWeb.K0 = frameLayout3;
            dialogSeekWeb.L0 = seekBar;
            dialogSeekWeb.M0 = myButtonImage3;
            dialogSeekWeb.N0 = p;
            dialogSeekWeb.O0 = myRoundItem3;
            dialogSeekWeb.P0 = appCompatTextView3;
            dialogSeekWeb.Q0 = appCompatTextView4;
            dialogSeekWeb.R0 = seekBar2;
            dialogSeekWeb.S0 = myButtonImage4;
            dialogSeekWeb.T0 = p2;
            dialogSeekWeb.U0 = myLineLinear;
            dialogSeekWeb.V0 = l;
            dialogSeekWeb.W0 = myLineText;
            Handler handler = dialogSeekWeb.i;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSeekWeb.2
                @Override // java.lang.Runnable
                public final void run() {
                    RelativeLayout.LayoutParams layoutParams22;
                    final DialogSeekWeb dialogSeekWeb2 = DialogSeekWeb.this;
                    int i15 = dialogSeekWeb2.c0;
                    boolean z = dialogSeekWeb2.g0;
                    int i16 = dialogSeekWeb2.b0;
                    if (dialogSeekWeb2.l0 != null && dialogSeekWeb2.e0 != null) {
                        dialogSeekWeb2.M();
                        dialogSeekWeb2.x0.d(z, true);
                        dialogSeekWeb2.y0.d(z, false);
                        dialogSeekWeb2.p0.setHint(R.string.web_edit_hint);
                        dialogSeekWeb2.p0.setText(dialogSeekWeb2.h0);
                        dialogSeekWeb2.p0.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.mycompany.app.dialog.DialogSeekWeb.3
                            @Override // android.widget.TextView.OnEditorActionListener
                            public final boolean onEditorAction(TextView textView, int i17, KeyEvent keyEvent) {
                                MyEditPure myEditPure2 = DialogSeekWeb.this.p0;
                                if (myEditPure2 == null) {
                                    return true;
                                }
                                myEditPure2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSeekWeb.3.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        DialogSeekWeb.C(DialogSeekWeb.this);
                                    }
                                });
                                return true;
                            }
                        });
                        dialogSeekWeb2.q0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSeekWeb.4
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view2) {
                                MyButtonImage myButtonImage5;
                                DialogSeekWeb dialogSeekWeb3 = DialogSeekWeb.this;
                                if (dialogSeekWeb3.q0 != null && dialogSeekWeb3.t0 != null && (myButtonImage5 = dialogSeekWeb3.r0) != null && myButtonImage5.getVisibility() != 0) {
                                    dialogSeekWeb3.q0.setVisibility(8);
                                    dialogSeekWeb3.r0.setVisibility(0);
                                    DialogSeekWeb.C(dialogSeekWeb3);
                                }
                            }
                        });
                        dialogSeekWeb2.r0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSeekWeb.5
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view2) {
                                DialogSeekWeb dialogSeekWeb3 = DialogSeekWeb.this;
                                WebNestView webNestView = dialogSeekWeb3.t0;
                                if (webNestView == null) {
                                    return;
                                }
                                dialogSeekWeb3.P(webNestView.getProgress());
                                dialogSeekWeb3.t0.stopLoading();
                            }
                        });
                        if (PrefZone.x != 0) {
                            if (MainApp.K1) {
                                dialogSeekWeb2.v0.setPreColor(-12632257);
                            } else {
                                dialogSeekWeb2.v0.setPreColor(-2434342);
                            }
                            if (PrefZone.x == 1 && (layoutParams22 = (RelativeLayout.LayoutParams) dialogSeekWeb2.v0.getLayoutParams()) != null) {
                                layoutParams22.removeRule(11);
                                layoutParams22.addRule(9);
                                dialogSeekWeb2.v0.setPosLeft(true);
                            }
                            dialogSeekWeb2.v0.setVisibility(4);
                            dialogSeekWeb2.v0.setListener(new MyScrollBar.ScrollBarListener() { // from class: com.mycompany.app.dialog.DialogSeekWeb.6
                                @Override // com.mycompany.app.view.MyScrollBar.ScrollBarListener
                                public final void c(int i17) {
                                    WebNestView webNestView = DialogSeekWeb.this.t0;
                                    if (webNestView == null) {
                                        return;
                                    }
                                    webNestView.scrollTo(0, i17);
                                }

                                @Override // com.mycompany.app.view.MyScrollBar.ScrollBarListener
                                public final int d() {
                                    WebNestView webNestView = DialogSeekWeb.this.t0;
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
                                    WebNestView webNestView = DialogSeekWeb.this.t0;
                                    if (webNestView == null) {
                                        return 0;
                                    }
                                    return webNestView.Y0;
                                }

                                @Override // com.mycompany.app.view.MyScrollBar.ScrollBarListener
                                public final int g() {
                                    WebNestView webNestView = DialogSeekWeb.this.t0;
                                    if (webNestView == null) {
                                        return 0;
                                    }
                                    return webNestView.X0;
                                }
                            });
                        }
                        dialogSeekWeb2.Q();
                        dialogSeekWeb2.A0.d(true, false);
                        dialogSeekWeb2.H0.d(false, true);
                        dialogSeekWeb2.O0.d(true, false);
                        dialogSeekWeb2.C0.setText(R.string.zoom_icon);
                        dialogSeekWeb2.D0.setText(R.string.drag_move_guide);
                        dialogSeekWeb2.F0.setText(R.string.icon_color);
                        dialogSeekWeb2.I0.setText(R.string.zoom_size);
                        dialogSeekWeb2.L(dialogSeekWeb2.X0);
                        dialogSeekWeb2.B0.b(dialogSeekWeb2.X0, false);
                        dialogSeekWeb2.A0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSeekWeb.7
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view2) {
                                DialogSeekWeb dialogSeekWeb3 = DialogSeekWeb.this;
                                MySwitchView mySwitchView2 = dialogSeekWeb3.B0;
                                if (mySwitchView2 == null) {
                                    return;
                                }
                                boolean z2 = !dialogSeekWeb3.X0;
                                dialogSeekWeb3.X0 = z2;
                                mySwitchView2.b(z2, true);
                                dialogSeekWeb3.R(dialogSeekWeb3.X0);
                            }
                        });
                        dialogSeekWeb2.B0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSeekWeb.8
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view2) {
                                DialogSeekWeb dialogSeekWeb3 = DialogSeekWeb.this;
                                MySwitchView mySwitchView2 = dialogSeekWeb3.B0;
                                if (mySwitchView2 == null) {
                                    return;
                                }
                                boolean z2 = !dialogSeekWeb3.X0;
                                dialogSeekWeb3.X0 = z2;
                                mySwitchView2.b(z2, true);
                                dialogSeekWeb3.R(dialogSeekWeb3.X0);
                            }
                        });
                        dialogSeekWeb2.G0.setBgNorColor(PrefEditor.r(PrefEditor.s, PrefEditor.r));
                        dialogSeekWeb2.G0.d(MainApp.n1);
                        dialogSeekWeb2.E0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSeekWeb.9
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view2) {
                                DialogEditIcon dialogEditIcon;
                                final DialogSeekWeb dialogSeekWeb3 = DialogSeekWeb.this;
                                if (dialogSeekWeb3.d0 == null || (dialogEditIcon = dialogSeekWeb3.m1) != null || dialogSeekWeb3.o1 != null) {
                                    return;
                                }
                                if (dialogEditIcon != null) {
                                    dialogEditIcon.dismiss();
                                    dialogSeekWeb3.m1 = null;
                                }
                                DialogEditIcon dialogEditIcon2 = new DialogEditIcon(dialogSeekWeb3.d0, 2, new DialogEditorText.EditorSetListener() { // from class: com.mycompany.app.dialog.DialogSeekWeb.30
                                    @Override // com.mycompany.app.dialog.DialogEditorText.EditorSetListener
                                    public final void a(int i17, String str) {
                                        DialogSeekWeb dialogSeekWeb4 = DialogSeekWeb.this;
                                        MyButtonView myButtonView2 = dialogSeekWeb4.G0;
                                        if (myButtonView2 != null) {
                                            myButtonView2.setBgNorColor(PrefEditor.r(PrefEditor.s, PrefEditor.r));
                                            WebFltView webFltView = dialogSeekWeb4.n1;
                                            if (webFltView != null) {
                                                webFltView.q();
                                            }
                                        }
                                    }
                                });
                                dialogSeekWeb3.m1 = dialogEditIcon2;
                                dialogEditIcon2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogSeekWeb.31
                                    @Override // android.content.DialogInterface.OnDismissListener
                                    public final void onDismiss(DialogInterface dialogInterface) {
                                        int i17 = DialogSeekWeb.C1;
                                        DialogSeekWeb dialogSeekWeb4 = DialogSeekWeb.this;
                                        DialogEditIcon dialogEditIcon3 = dialogSeekWeb4.m1;
                                        if (dialogEditIcon3 != null) {
                                            dialogEditIcon3.dismiss();
                                            dialogSeekWeb4.m1 = null;
                                        }
                                    }
                                });
                            }
                        });
                        a.t(new StringBuilder(), dialogSeekWeb2.Y0, "%", dialogSeekWeb2.J0);
                        dialogSeekWeb2.L0.setSplitTrack(false);
                        int i17 = i15 - i16;
                        dialogSeekWeb2.L0.setMax(i17);
                        dialogSeekWeb2.L0.setProgress(dialogSeekWeb2.Y0 - i16);
                        dialogSeekWeb2.L0.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.mycompany.app.dialog.DialogSeekWeb.10
                            @Override // android.widget.SeekBar.OnSeekBarChangeListener
                            public final void onProgressChanged(SeekBar seekBar3, int i18, boolean z2) {
                                int progress = seekBar3.getProgress();
                                DialogSeekWeb dialogSeekWeb3 = DialogSeekWeb.this;
                                DialogSeekWeb.E(dialogSeekWeb3, progress + dialogSeekWeb3.b0);
                            }

                            @Override // android.widget.SeekBar.OnSeekBarChangeListener
                            public final void onStartTrackingTouch(SeekBar seekBar3) {
                                int progress = seekBar3.getProgress();
                                DialogSeekWeb dialogSeekWeb3 = DialogSeekWeb.this;
                                DialogSeekWeb.E(dialogSeekWeb3, progress + dialogSeekWeb3.b0);
                            }

                            @Override // android.widget.SeekBar.OnSeekBarChangeListener
                            public final void onStopTrackingTouch(SeekBar seekBar3) {
                                int progress = seekBar3.getProgress();
                                DialogSeekWeb dialogSeekWeb3 = DialogSeekWeb.this;
                                DialogSeekWeb.E(dialogSeekWeb3, progress + dialogSeekWeb3.b0);
                            }
                        });
                        dialogSeekWeb2.M0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSeekWeb.11
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view2) {
                                int progress;
                                DialogSeekWeb dialogSeekWeb3 = DialogSeekWeb.this;
                                if (dialogSeekWeb3.L0 == null || r0.getProgress() - 1 < 0) {
                                    return;
                                }
                                dialogSeekWeb3.L0.setProgress(progress);
                            }
                        });
                        dialogSeekWeb2.N0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSeekWeb.12
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view2) {
                                int progress;
                                DialogSeekWeb dialogSeekWeb3 = DialogSeekWeb.this;
                                SeekBar seekBar3 = dialogSeekWeb3.L0;
                                if (seekBar3 == null || (progress = seekBar3.getProgress() + 1) > dialogSeekWeb3.L0.getMax()) {
                                    return;
                                }
                                dialogSeekWeb3.L0.setProgress(progress);
                            }
                        });
                        dialogSeekWeb2.P0.setText(R.string.default_size);
                        a.t(new StringBuilder(), dialogSeekWeb2.Z0, "%", dialogSeekWeb2.Q0);
                        dialogSeekWeb2.R0.setSplitTrack(false);
                        dialogSeekWeb2.R0.setMax(i17);
                        dialogSeekWeb2.R0.setProgress(dialogSeekWeb2.Z0 - i16);
                        dialogSeekWeb2.R0.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.mycompany.app.dialog.DialogSeekWeb.13
                            @Override // android.widget.SeekBar.OnSeekBarChangeListener
                            public final void onProgressChanged(SeekBar seekBar3, int i18, boolean z2) {
                                int progress = seekBar3.getProgress();
                                DialogSeekWeb dialogSeekWeb3 = DialogSeekWeb.this;
                                DialogSeekWeb.D(dialogSeekWeb3, progress + dialogSeekWeb3.b0);
                            }

                            @Override // android.widget.SeekBar.OnSeekBarChangeListener
                            public final void onStartTrackingTouch(SeekBar seekBar3) {
                                int progress = seekBar3.getProgress();
                                DialogSeekWeb dialogSeekWeb3 = DialogSeekWeb.this;
                                DialogSeekWeb.D(dialogSeekWeb3, progress + dialogSeekWeb3.b0);
                                dialogSeekWeb3.a1 = true;
                            }

                            @Override // android.widget.SeekBar.OnSeekBarChangeListener
                            public final void onStopTrackingTouch(SeekBar seekBar3) {
                                int progress = seekBar3.getProgress();
                                DialogSeekWeb dialogSeekWeb3 = DialogSeekWeb.this;
                                DialogSeekWeb.D(dialogSeekWeb3, progress + dialogSeekWeb3.b0);
                                dialogSeekWeb3.a1 = false;
                            }
                        });
                        dialogSeekWeb2.S0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSeekWeb.14
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view2) {
                                int progress;
                                DialogSeekWeb dialogSeekWeb3 = DialogSeekWeb.this;
                                if (dialogSeekWeb3.R0 == null || r0.getProgress() - 1 < 0) {
                                    return;
                                }
                                dialogSeekWeb3.R0.setProgress(progress);
                            }
                        });
                        dialogSeekWeb2.T0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSeekWeb.15
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view2) {
                                int progress;
                                DialogSeekWeb dialogSeekWeb3 = DialogSeekWeb.this;
                                SeekBar seekBar3 = dialogSeekWeb3.R0;
                                if (seekBar3 == null || (progress = seekBar3.getProgress() + 1) > dialogSeekWeb3.R0.getMax()) {
                                    return;
                                }
                                dialogSeekWeb3.R0.setProgress(progress);
                            }
                        });
                        dialogSeekWeb2.V0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSeekWeb.16
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view2) {
                                int i18 = DialogSeekWeb.C1;
                                DialogSeekWeb.this.J(true);
                            }
                        });
                        dialogSeekWeb2.W0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSeekWeb.17
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view2) {
                                final DialogSeekWeb dialogSeekWeb3 = DialogSeekWeb.this;
                                if (dialogSeekWeb3.d0 == null || dialogSeekWeb3.m1 != null || dialogSeekWeb3.o1 != null) {
                                    return;
                                }
                                dialogSeekWeb3.F();
                                DialogSetMsg dialogSetMsg = new DialogSetMsg(dialogSeekWeb3.d0, R.string.reset_setting, R.string.reset, new DialogSetFull.DialogApplyListener() { // from class: com.mycompany.app.dialog.DialogSeekWeb.32
                                    @Override // com.mycompany.app.dialog.DialogSetFull.DialogApplyListener
                                    public final void a() {
                                        int i18 = DialogSeekWeb.C1;
                                        DialogSeekWeb dialogSeekWeb4 = DialogSeekWeb.this;
                                        dialogSeekWeb4.F();
                                        int i19 = dialogSeekWeb4.b0;
                                        if (dialogSeekWeb4.t0 == null) {
                                            return;
                                        }
                                        if (dialogSeekWeb4.X0) {
                                            dialogSeekWeb4.X0 = false;
                                            dialogSeekWeb4.B0.b(false, false);
                                            dialogSeekWeb4.R(dialogSeekWeb4.X0);
                                        }
                                        if (dialogSeekWeb4.Y0 != 200) {
                                            dialogSeekWeb4.Y0 = HttpStatusCodes.STATUS_CODE_OK;
                                            a.t(new StringBuilder(), dialogSeekWeb4.Y0, "%", dialogSeekWeb4.J0);
                                            dialogSeekWeb4.L0.setProgress(dialogSeekWeb4.Y0 - i19);
                                        }
                                        if (dialogSeekWeb4.Z0 != 100) {
                                            dialogSeekWeb4.Z0 = 100;
                                            a.t(new StringBuilder(), dialogSeekWeb4.Z0, "%", dialogSeekWeb4.Q0);
                                            dialogSeekWeb4.R0.setProgress(dialogSeekWeb4.Z0 - i19);
                                        }
                                        dialogSeekWeb4.t0.getSettings().setTextZoom(dialogSeekWeb4.Z0);
                                        dialogSeekWeb4.r1 = 0;
                                        int i20 = MainConst.q[5];
                                        dialogSeekWeb4.s1 = i20;
                                        float f2 = MainConst.p[5];
                                        dialogSeekWeb4.t1 = f2;
                                        if (DialogSeekWeb.G(f2, 0, i20)) {
                                            dialogSeekWeb4.K(dialogSeekWeb4.t1, dialogSeekWeb4.r1, dialogSeekWeb4.s1);
                                            dialogSeekWeb4.G0.setBgNorColor(PrefEditor.r(PrefEditor.s, PrefEditor.r));
                                            WebFltView webFltView = dialogSeekWeb4.n1;
                                            if (webFltView != null) {
                                                webFltView.q();
                                            }
                                        }
                                        dialogSeekWeb4.J(false);
                                    }
                                });
                                dialogSeekWeb3.o1 = dialogSetMsg;
                                dialogSetMsg.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogSeekWeb.33
                                    @Override // android.content.DialogInterface.OnDismissListener
                                    public final void onDismiss(DialogInterface dialogInterface) {
                                        int i18 = DialogSeekWeb.C1;
                                        DialogSeekWeb.this.F();
                                    }
                                });
                            }
                        });
                        dialogSeekWeb2.c1 = new GestureDetector(dialogSeekWeb2.e0, new GestureDetector.SimpleOnGestureListener() { // from class: com.mycompany.app.dialog.DialogSeekWeb.18
                            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
                            public final boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f2, float f3) {
                                DialogSeekWeb dialogSeekWeb3 = DialogSeekWeb.this;
                                boolean z2 = dialogSeekWeb3.g0;
                                if (dialogSeekWeb3.t0 == null) {
                                    return false;
                                }
                                if (dialogSeekWeb3.f1 == 0) {
                                    int i18 = dialogSeekWeb3.h1;
                                    if (i18 == 1) {
                                        if (f2 > 600.0f) {
                                            if (z2) {
                                                dialogSeekWeb3.N();
                                            } else {
                                                dialogSeekWeb3.O();
                                            }
                                        }
                                    } else if (i18 == 2 && f2 < -600.0f) {
                                        if (z2) {
                                            dialogSeekWeb3.O();
                                        } else {
                                            dialogSeekWeb3.N();
                                        }
                                    }
                                }
                                return super.onFling(motionEvent, motionEvent2, f2, f3);
                            }
                        });
                        if (dialogSeekWeb2.p()) {
                            dialogSeekWeb2.H(true);
                        }
                        dialogSeekWeb2.f(dialogSeekWeb2.l0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogSeekWeb.19
                            @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                            public final void a(View view2) {
                                final DialogSeekWeb dialogSeekWeb3 = DialogSeekWeb.this;
                                if (dialogSeekWeb3.l0 != null) {
                                    dialogSeekWeb3.show();
                                    Handler handler2 = dialogSeekWeb3.i;
                                    if (handler2 == null) {
                                        return;
                                    }
                                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSeekWeb.20
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            DialogSeekWeb dialogSeekWeb4 = DialogSeekWeb.this;
                                            if (dialogSeekWeb4.s0 != null) {
                                                WebNestView webNestView = new WebNestView(dialogSeekWeb4.d0);
                                                dialogSeekWeb4.t0 = webNestView;
                                                webNestView.setNoAutofill(false);
                                                dialogSeekWeb4.s0.addView(dialogSeekWeb4.t0, -1, -1);
                                                Handler handler3 = dialogSeekWeb4.i;
                                                if (handler3 == null) {
                                                    return;
                                                }
                                                handler3.post(new AnonymousClass21());
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
    }

    public static void C(DialogSeekWeb dialogSeekWeb) {
        MyEditPure myEditPure = dialogSeekWeb.p0;
        if (myEditPure != null && dialogSeekWeb.t0 != null) {
            String a7 = MainUtil.a7(MainUtil.Q0(myEditPure, false));
            if (TextUtils.isEmpty(a7)) {
                a7 = dialogSeekWeb.h0;
                if (TextUtils.isEmpty(a7)) {
                    MainUtil.e8(dialogSeekWeb.e0, R.string.empty);
                    dialogSeekWeb.q0.setVisibility(0);
                    dialogSeekWeb.r0.setVisibility(8);
                    return;
                }
            }
            dialogSeekWeb.p0.clearFocus();
            if (MainUtil.q5(a7, dialogSeekWeb.h0)) {
                dialogSeekWeb.t0.F();
            } else {
                dialogSeekWeb.t0.z(MainUtil.q4(null, a7), null);
            }
            MainUtil.X4(dialogSeekWeb.e0, dialogSeekWeb.p0);
        }
    }

    public static void D(DialogSeekWeb dialogSeekWeb, int i) {
        Runnable runnable = dialogSeekWeb.B1;
        if (dialogSeekWeb.Q0 != null) {
            int i2 = dialogSeekWeb.b0;
            if (i < i2 || i > (i2 = dialogSeekWeb.c0)) {
                i = i2;
            }
            if (!dialogSeekWeb.b1 && dialogSeekWeb.Z0 != i) {
                dialogSeekWeb.b1 = true;
                dialogSeekWeb.Z0 = i;
                WebNestView webNestView = dialogSeekWeb.t0;
                if (webNestView != null) {
                    webNestView.getSettings().setTextZoom(dialogSeekWeb.Z0);
                    a.t(new StringBuilder(), dialogSeekWeb.Z0, "%", dialogSeekWeb.Q0);
                    if (dialogSeekWeb.a1) {
                        dialogSeekWeb.a1 = false;
                        dialogSeekWeb.b1 = false;
                    } else {
                        dialogSeekWeb.Q0.removeCallbacks(runnable);
                        dialogSeekWeb.Q0.postDelayed(runnable, 100L);
                    }
                }
            }
        }
    }

    public static void E(DialogSeekWeb dialogSeekWeb, int i) {
        AppCompatTextView appCompatTextView = dialogSeekWeb.J0;
        if (appCompatTextView != null) {
            int i2 = dialogSeekWeb.b0;
            if (i < i2 || i > (i2 = dialogSeekWeb.c0)) {
                i = i2;
            }
            if (dialogSeekWeb.Y0 == i) {
                return;
            }
            dialogSeekWeb.Y0 = i;
            a.t(new StringBuilder(), dialogSeekWeb.Y0, "%", appCompatTextView);
        }
    }

    public static boolean G(float f, int i, int i2) {
        if (PrefEditor.r == i && PrefEditor.s == i2 && Float.compare(PrefEditor.t, f) == 0) {
            return false;
        }
        return true;
    }

    public final void F() {
        DialogSetMsg dialogSetMsg = this.o1;
        if (dialogSetMsg != null) {
            dialogSetMsg.dismiss();
            this.o1 = null;
        }
    }

    public final void H(boolean z) {
        int i;
        int i2;
        ViewGroup.LayoutParams layoutParams;
        RelativeLayout.LayoutParams layoutParams2;
        MyDialogRelative myDialogRelative = this.l0;
        if (myDialogRelative != null) {
            int i3 = -1;
            try {
                layoutParams = myDialogRelative.getLayoutParams();
            } catch (Exception unused) {
            }
            if (layoutParams != null && (layoutParams2 = (RelativeLayout.LayoutParams) this.z0.getLayoutParams()) != null) {
                if (z) {
                    z = q();
                }
                if (z) {
                    MyScrollBar myScrollBar = this.v0;
                    if (myScrollBar != null) {
                        myScrollBar.setVisibility(8);
                    }
                    this.m0.setVisibility(8);
                    layoutParams.height = -2;
                    layoutParams2.removeRule(12);
                } else {
                    MyScrollBar myScrollBar2 = this.v0;
                    if (myScrollBar2 != null) {
                        myScrollBar2.setVisibility(4);
                    }
                    layoutParams.height = -1;
                    layoutParams2.addRule(12);
                    this.m0.setVisibility(0);
                }
                boolean z2 = this.p1;
                boolean z3 = MainApp.K1;
                if (z2 != z3) {
                    this.p1 = z3;
                    try {
                        MyDialogRelative myDialogRelative2 = this.l0;
                        if (myDialogRelative2 != null) {
                            if (z3) {
                                i3 = -14606047;
                            }
                            myDialogRelative2.setBackgroundColor(i3);
                            M();
                            Q();
                            MyLineLinear myLineLinear = this.U0;
                            Paint paint = myLineLinear.k;
                            if (paint != null) {
                                if (MainApp.K1) {
                                    i2 = -12632257;
                                } else {
                                    i2 = -2434342;
                                }
                                paint.setColor(i2);
                                myLineLinear.invalidate();
                            }
                            MyLineText myLineText = this.W0;
                            Paint paint2 = myLineText.t;
                            if (paint2 != null) {
                                if (MainApp.K1) {
                                    i = -12632257;
                                } else {
                                    i = -2434342;
                                }
                                paint2.setColor(i);
                                myLineText.invalidate();
                            }
                            MyScrollBar myScrollBar3 = this.v0;
                            if (myScrollBar3 != null) {
                                if (MainApp.K1) {
                                    myScrollBar3.setPreColor(-12632257);
                                } else {
                                    myScrollBar3.setPreColor(-2434342);
                                }
                            }
                            MySwitchView mySwitchView = this.B0;
                            if (mySwitchView != null) {
                                mySwitchView.c();
                            }
                        } else {
                            return;
                        }
                    } catch (Exception unused2) {
                    }
                }
                boolean z4 = this.q1;
                boolean z5 = MainApp.L1;
                if (z4 != z5) {
                    this.q1 = z5;
                    WebNestView webNestView = this.t0;
                    if (webNestView != null) {
                        webNestView.setDarkWeb(z5);
                    }
                }
            }
        }
    }

    public final void I(boolean z, boolean z2) {
        if (this.f1 == 0 && this.t0 != null) {
            this.f1 = 2;
            this.g1 = 0;
            this.h1 = 0;
            this.i1 = false;
            this.j1 = 0;
            this.k1 = 0;
            this.l1 = false;
            if (z) {
                if (this.g0) {
                    if (z2) {
                        MyScrollNavi myScrollNavi = this.x0;
                        if (myScrollNavi != null) {
                            myScrollNavi.c();
                        }
                        MyScrollNavi myScrollNavi2 = this.y0;
                        if (myScrollNavi2 != null) {
                            myScrollNavi2.c();
                            return;
                        }
                        return;
                    }
                    MyScrollNavi myScrollNavi3 = this.x0;
                    if (myScrollNavi3 != null) {
                        myScrollNavi3.c();
                    }
                    MyScrollNavi myScrollNavi4 = this.y0;
                    if (myScrollNavi4 != null) {
                        myScrollNavi4.c();
                        return;
                    }
                    return;
                }
                if (z2) {
                    MyScrollNavi myScrollNavi5 = this.x0;
                    if (myScrollNavi5 != null) {
                        myScrollNavi5.c();
                    }
                    MyScrollNavi myScrollNavi6 = this.y0;
                    if (myScrollNavi6 != null) {
                        myScrollNavi6.c();
                        return;
                    }
                    return;
                }
                MyScrollNavi myScrollNavi7 = this.x0;
                if (myScrollNavi7 != null) {
                    myScrollNavi7.c();
                }
                MyScrollNavi myScrollNavi8 = this.y0;
                if (myScrollNavi8 != null) {
                    myScrollNavi8.c();
                    return;
                }
                return;
            }
            MyScrollNavi myScrollNavi9 = this.x0;
            if (myScrollNavi9 != null) {
                myScrollNavi9.c();
            }
            MyScrollNavi myScrollNavi10 = this.y0;
            if (myScrollNavi10 != null) {
                myScrollNavi10.c();
            }
        }
    }

    public final void J(boolean z) {
        boolean z2;
        DialogSetImage.ChangedListener changedListener;
        boolean z3 = PrefZtri.k;
        boolean z4 = this.X0;
        boolean z5 = true;
        if (z3 == z4 && PrefZtri.p == this.Y0) {
            z2 = false;
        } else {
            PrefZtri.k = z4;
            PrefZtri.p = this.Y0;
            PrefZtri r = PrefZtri.r(this.e0);
            if (z) {
                r.l("mZoomIcon", PrefZtri.k);
                r.n(PrefZtri.p, "mZoomSize");
            } else {
                r.q("mZoomIcon");
                r.q("mZoomSize");
            }
            r.a();
            z2 = true;
        }
        int i = PrefZone.w;
        int i2 = this.Z0;
        if (i != i2) {
            PrefZone.w = i2;
            if (z) {
                PrefSet.f(this.e0, 15, i2, "mTextSize");
            } else {
                PrefSet.i(this.e0, 15, "mTextSize");
            }
            z2 = true;
        }
        if (G(this.t1, this.r1, this.s1)) {
            this.r1 = PrefEditor.r;
            this.s1 = PrefEditor.s;
            this.t1 = PrefEditor.t;
        } else {
            z5 = z2;
        }
        if (z5 && (changedListener = this.f0) != null) {
            changedListener.a();
        }
        if (z) {
            dismiss();
        }
    }

    public final void K(float f, int i, int i2) {
        PrefEditor.r = i;
        PrefEditor.s = i2;
        PrefEditor.t = f;
        PrefEditor.u = PrefEditor.r(i2, i);
        PrefEditor s = PrefEditor.s(this.e0);
        s.n(PrefEditor.r, "mZoomAlpha");
        s.n(PrefEditor.s, "mZoomColor");
        s.m("mZoomPos", PrefEditor.t);
        s.a();
    }

    public final void L(boolean z) {
        MyLineRelative myLineRelative = this.E0;
        if (myLineRelative == null) {
            return;
        }
        myLineRelative.setEnabled(z);
        this.L0.setEnabled(z);
        this.M0.setEnabled(z);
        this.N0.setEnabled(z);
        if (z) {
            this.F0.setAlpha(1.0f);
            this.G0.setAlpha(1.0f);
            this.I0.setAlpha(1.0f);
            this.J0.setAlpha(1.0f);
            this.K0.setAlpha(1.0f);
            return;
        }
        this.F0.setAlpha(0.2f);
        this.G0.setAlpha(0.2f);
        this.I0.setAlpha(0.2f);
        this.J0.setAlpha(0.2f);
        this.K0.setAlpha(0.2f);
    }

    public final void M() {
        FrameLayout frameLayout = this.m0;
        if (frameLayout == null) {
            return;
        }
        if (MainApp.K1) {
            frameLayout.setBackgroundColor(-16777216);
            this.n0.setBackgroundColor(-16777216);
            this.o0.setBackColor(-14606047);
            this.p0.setTextColor(-328966);
            this.q0.setImageResource(R.drawable.outline_refresh_dark_24);
            this.r0.setImageResource(R.drawable.outline_close_dark_24);
            this.q0.setBgPreColor(-12632257);
            this.r0.setBgPreColor(-12632257);
            this.u0.g(-922746881, -16777216);
            this.P0.setTextColor(-328966);
            this.Q0.setTextColor(-328966);
            this.S0.setImageResource(R.drawable.outline_remove_dark_24);
            this.T0.setImageResource(R.drawable.outline_add_dark_24);
            this.R0.setProgressDrawable(MainUtil.S(this.e0, R.drawable.seek_progress_a));
            this.R0.setThumb(MainUtil.S(this.e0, R.drawable.seek_thumb_a));
            this.V0.setTextColor(-328966);
            this.W0.setTextColor(-328966);
            this.M0.setBgPreColor(-12632257);
            this.N0.setBgPreColor(-12632257);
            this.S0.setBgPreColor(-12632257);
            this.T0.setBgPreColor(-12632257);
        } else {
            frameLayout.setBackgroundColor(-460552);
            this.n0.setBackgroundColor(-460552);
            this.o0.setBackColor(-1);
            this.p0.setTextColor(-16777216);
            this.q0.setImageResource(R.drawable.outline_refresh_black_24);
            this.r0.setImageResource(R.drawable.outline_close_black_24);
            this.q0.setBgPreColor(-2039584);
            this.r0.setBgPreColor(-2039584);
            this.u0.g(-13022805, -460552);
            this.P0.setTextColor(-16777216);
            this.Q0.setTextColor(-16777216);
            this.S0.setImageResource(R.drawable.outline_remove_black_24);
            this.T0.setImageResource(R.drawable.outline_add_black_24);
            this.R0.setProgressDrawable(MainUtil.S(this.e0, R.drawable.seek_progress_a));
            this.R0.setThumb(MainUtil.S(this.e0, R.drawable.seek_thumb_a));
            this.V0.setTextColor(-14784824);
            this.W0.setTextColor(-16777216);
            this.M0.setBgPreColor(-2039584);
            this.N0.setBgPreColor(-2039584);
            this.S0.setBgPreColor(-2039584);
            this.T0.setBgPreColor(-2039584);
        }
        if (MainApp.L1) {
            this.s0.setBackgroundColor(-14606047);
        } else {
            this.s0.setBackgroundColor(-1);
        }
    }

    public final boolean N() {
        I(true, false);
        WebNestView webNestView = this.t0;
        if (webNestView == null || !webNestView.canGoForward()) {
            return false;
        }
        this.t0.goForward();
        return true;
    }

    public final boolean O() {
        I(true, true);
        WebNestView webNestView = this.t0;
        if (webNestView == null || !webNestView.canGoBack()) {
            return false;
        }
        this.t0.goBack();
        return true;
    }

    public final void P(int i) {
        this.x1 = i;
        MyProgressBar myProgressBar = this.u0;
        if (myProgressBar != null) {
            int round = Math.round(myProgressBar.getProgress());
            if (i == 100 && round == 100) {
                this.u0.setSkipDraw(true);
                this.q0.setVisibility(0);
                this.r0.setVisibility(8);
                return;
            }
            this.q0.setVisibility(8);
            this.r0.setVisibility(0);
            MyProgressBar myProgressBar2 = this.u0;
            if (myProgressBar2.B) {
                myProgressBar2.setProgress(0.0f);
                this.u0.setSkipDraw(false);
                P(Math.max(i, 50));
            } else if (round < i) {
                myProgressBar2.setProgress(round + 3);
                Runnable runnable = this.y1;
                if (runnable != null) {
                    this.u0.removeCallbacks(runnable);
                    this.u0.post(runnable);
                }
            }
        }
    }

    public final void Q() {
        if (this.A0 == null) {
            return;
        }
        if (MainApp.K1) {
            this.z0.setBackgroundColor(-16777216);
            this.A0.setBackgroundResource(R.drawable.selector_list_back_dark);
            this.E0.setBackgroundResource(R.drawable.selector_list_back_dark);
            this.H0.setBackgroundColor(-14606047);
            this.O0.setBackgroundColor(-14606047);
            this.C0.setTextColor(-328966);
            this.D0.setTextColor(-4079167);
            this.F0.setTextColor(-328966);
            this.I0.setTextColor(-328966);
            this.J0.setTextColor(-328966);
            this.M0.setImageResource(R.drawable.outline_remove_dark_24);
            this.N0.setImageResource(R.drawable.outline_add_dark_24);
            this.L0.setProgressDrawable(MainUtil.S(this.e0, R.drawable.seek_progress_a));
            this.L0.setThumb(MainUtil.S(this.e0, R.drawable.seek_thumb_a));
            this.V0.setBackgroundResource(R.drawable.selector_list_back_dark);
            this.W0.setBackgroundResource(R.drawable.selector_list_back_dark);
            return;
        }
        this.z0.setBackgroundColor(-460552);
        this.A0.setBackgroundResource(R.drawable.selector_list_back);
        this.E0.setBackgroundResource(R.drawable.selector_list_back);
        this.H0.setBackgroundColor(-1);
        this.O0.setBackgroundColor(-1);
        this.C0.setTextColor(-16777216);
        this.D0.setTextColor(-10395295);
        this.F0.setTextColor(-16777216);
        this.I0.setTextColor(-16777216);
        this.J0.setTextColor(-16777216);
        this.M0.setImageResource(R.drawable.outline_remove_black_24);
        this.N0.setImageResource(R.drawable.outline_add_black_24);
        this.L0.setProgressDrawable(MainUtil.S(this.e0, R.drawable.seek_progress_a));
        this.L0.setThumb(MainUtil.S(this.e0, R.drawable.seek_thumb_a));
        this.V0.setBackgroundResource(R.drawable.selector_list_back);
        this.W0.setBackgroundResource(R.drawable.selector_list_back);
    }

    public final void R(boolean z) {
        WebFltView webFltView = this.n1;
        if (webFltView == null) {
            return;
        }
        if (z) {
            webFltView.w(true);
        } else {
            webFltView.m(true);
            y(true);
        }
        L(z);
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.e0 == null) {
            return;
        }
        if (G(this.t1, this.r1, this.s1)) {
            K(this.t1, this.r1, this.s1);
        }
        DialogEditIcon dialogEditIcon = this.m1;
        if (dialogEditIcon != null) {
            dialogEditIcon.dismiss();
            this.m1 = null;
        }
        F();
        MyDialogRelative myDialogRelative = this.l0;
        if (myDialogRelative != null) {
            myDialogRelative.c();
            this.l0 = null;
        }
        MyRoundView myRoundView = this.o0;
        if (myRoundView != null) {
            myRoundView.a();
            this.o0 = null;
        }
        MyButtonImage myButtonImage = this.q0;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.q0 = null;
        }
        MyButtonImage myButtonImage2 = this.r0;
        if (myButtonImage2 != null) {
            myButtonImage2.j();
            this.r0 = null;
        }
        WebNestView webNestView = this.t0;
        if (webNestView != null) {
            MainUtil.F(webNestView, true);
            this.t0 = null;
        }
        MyProgressBar myProgressBar = this.u0;
        if (myProgressBar != null) {
            myProgressBar.f();
            this.u0 = null;
        }
        MyScrollBar myScrollBar = this.v0;
        if (myScrollBar != null) {
            myScrollBar.k();
            this.v0 = null;
        }
        MyScrollNavi myScrollNavi = this.x0;
        if (myScrollNavi != null) {
            myScrollNavi.g();
            this.x0 = null;
        }
        MyScrollNavi myScrollNavi2 = this.y0;
        if (myScrollNavi2 != null) {
            myScrollNavi2.g();
            this.y0 = null;
        }
        MyRoundItem myRoundItem = this.A0;
        if (myRoundItem != null) {
            myRoundItem.b();
            this.A0 = null;
        }
        MySwitchView mySwitchView = this.B0;
        if (mySwitchView != null) {
            mySwitchView.a();
            this.B0 = null;
        }
        MyLineRelative myLineRelative = this.E0;
        if (myLineRelative != null) {
            myLineRelative.e();
            this.E0 = null;
        }
        MyButtonView myButtonView = this.G0;
        if (myButtonView != null) {
            myButtonView.f18599c = false;
            ValueAnimator valueAnimator = myButtonView.o;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                myButtonView.o = null;
            }
            ValueAnimator valueAnimator2 = myButtonView.p;
            if (valueAnimator2 != null) {
                valueAnimator2.cancel();
                myButtonView.p = null;
            }
            myButtonView.j = null;
            myButtonView.n = null;
            myButtonView.t = null;
            myButtonView.u = null;
            myButtonView.v = null;
            myButtonView.z = null;
            myButtonView.A = null;
            this.G0 = null;
        }
        MyRoundItem myRoundItem2 = this.H0;
        if (myRoundItem2 != null) {
            myRoundItem2.b();
            this.H0 = null;
        }
        MyButtonImage myButtonImage3 = this.M0;
        if (myButtonImage3 != null) {
            myButtonImage3.j();
            this.M0 = null;
        }
        MyButtonImage myButtonImage4 = this.N0;
        if (myButtonImage4 != null) {
            myButtonImage4.j();
            this.N0 = null;
        }
        MyRoundItem myRoundItem3 = this.O0;
        if (myRoundItem3 != null) {
            myRoundItem3.b();
            this.O0 = null;
        }
        MyButtonImage myButtonImage5 = this.S0;
        if (myButtonImage5 != null) {
            myButtonImage5.j();
            this.S0 = null;
        }
        MyButtonImage myButtonImage6 = this.T0;
        if (myButtonImage6 != null) {
            myButtonImage6.j();
            this.T0 = null;
        }
        MyLineLinear myLineLinear = this.U0;
        if (myLineLinear != null) {
            myLineLinear.a();
            this.U0 = null;
        }
        MyLineText myLineText = this.W0;
        if (myLineText != null) {
            myLineText.u();
            this.W0 = null;
        }
        WebFltView webFltView = this.n1;
        if (webFltView != null) {
            webFltView.o();
            this.n1 = null;
        }
        this.d0 = null;
        this.e0 = null;
        this.f0 = null;
        this.i0 = null;
        this.j0 = null;
        this.m0 = null;
        this.n0 = null;
        this.p0 = null;
        this.s0 = null;
        this.z0 = null;
        this.C0 = null;
        this.D0 = null;
        this.F0 = null;
        this.I0 = null;
        this.J0 = null;
        this.K0 = null;
        this.L0 = null;
        this.P0 = null;
        this.Q0 = null;
        this.R0 = null;
        this.V0 = null;
        this.c1 = null;
        this.u1 = null;
        super.dismiss();
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x001a, code lost:
    
        if (r1 != 3) goto L168;
     */
    /* JADX WARN: Removed duplicated region for block: B:124:0x018c  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00e8  */
    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.view.Window.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean dispatchTouchEvent(android.view.MotionEvent r12) {
        /*
            Method dump skipped, instructions count: 558
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogSeekWeb.dispatchTouchEvent(android.view.MotionEvent):boolean");
    }
}
