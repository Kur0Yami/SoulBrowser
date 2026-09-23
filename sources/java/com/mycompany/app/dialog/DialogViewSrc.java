package com.mycompany.app.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceRequest;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.mycompany.app.dialog.DialogDownPage;
import com.mycompany.app.dialog.DialogSetFull;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefRead;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.video.VideoActivity;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyCoverView;
import com.mycompany.app.view.MyFadeFrame;
import com.mycompany.app.view.MyFadeListener;
import com.mycompany.app.view.MyFindView;
import com.mycompany.app.view.MyMainRelative;
import com.mycompany.app.view.MyProgressBar;
import com.mycompany.app.view.MyScrollBar;
import com.mycompany.app.view.MySnackbar;
import com.mycompany.app.web.WebNestView;
import com.mycompany.app.web.WebSrcView;

/* loaded from: classes3.dex */
public class DialogViewSrc extends DialogCast {
    public static final /* synthetic */ int s0 = 0;
    public MainActivity G;
    public Context H;
    public WebNestView I;
    public MyMainRelative J;
    public MyButtonImage K;
    public MyButtonImage L;
    public RelativeLayout M;
    public FrameLayout N;
    public WebSrcView O;
    public boolean P;
    public MyScrollBar Q;
    public FrameLayout R;
    public View S;
    public MyProgressBar T;
    public MyFadeFrame U;
    public LinearLayout V;
    public MyButtonImage W;
    public MyButtonImage X;
    public MyCoverView Y;
    public MyFadeFrame Z;
    public MyFindView a0;
    public GestureDetector b0;
    public String c0;
    public boolean d0;
    public String e0;
    public boolean f0;
    public String g0;
    public DialogSaveSource h0;
    public DialogSeekBright i0;
    public boolean j0;
    public String k0;
    public boolean l0;
    public String m0;
    public int n0;
    public final Runnable o0;
    public boolean p0;
    public final Runnable q0;
    public MySnackbar r0;

    /* renamed from: com.mycompany.app.dialog.DialogViewSrc$13, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass13 implements Runnable {

        /* renamed from: com.mycompany.app.dialog.DialogViewSrc$13$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 implements Runnable {

            /* renamed from: com.mycompany.app.dialog.DialogViewSrc$13$1$1, reason: invalid class name and collision with other inner class name */
            /* loaded from: classes3.dex */
            class RunnableC01071 implements Runnable {
                public RunnableC01071() {
                }

                @Override // java.lang.Runnable
                public final void run() {
                    AnonymousClass13 anonymousClass13 = AnonymousClass13.this;
                    final DialogViewSrc dialogViewSrc = DialogViewSrc.this;
                    WebSrcView webSrcView = dialogViewSrc.O;
                    if (webSrcView != null) {
                        webSrcView.setWebViewClient(new LocalWebViewClient());
                        webSrcView.setWebChromeClient(new LocalChromeClient());
                        webSrcView.setListener(new WebNestView.WebViewListener() { // from class: com.mycompany.app.dialog.DialogViewSrc.21
                            @Override // com.mycompany.app.web.WebNestView.WebViewListener
                            public final void a(int i) {
                            }

                            @Override // com.mycompany.app.web.WebNestView.WebViewListener
                            public final void b() {
                            }

                            @Override // com.mycompany.app.web.WebNestView.WebViewListener
                            public final void c(int i) {
                                DialogViewSrc dialogViewSrc2 = DialogViewSrc.this;
                                View view = dialogViewSrc2.S;
                                if (view != null) {
                                    if (i > 0) {
                                        view.setVisibility(0);
                                    } else {
                                        view.setVisibility(8);
                                    }
                                    Runnable runnable = dialogViewSrc2.q0;
                                    MyScrollBar myScrollBar = dialogViewSrc2.Q;
                                    if (myScrollBar == null || dialogViewSrc2.p0) {
                                        return;
                                    }
                                    dialogViewSrc2.p0 = true;
                                    myScrollBar.removeCallbacks(runnable);
                                    dialogViewSrc2.Q.post(runnable);
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
                        Handler handler = DialogViewSrc.this.i;
                        if (handler == null) {
                            return;
                        }
                        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewSrc.13.1.1.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                WebSrcView webSrcView2 = DialogViewSrc.this.O;
                                if (webSrcView2 != null) {
                                    webSrcView2.loadUrl("view-source:" + DialogViewSrc.this.c0);
                                    DialogViewSrc.this.u(0);
                                    Handler handler2 = DialogViewSrc.this.i;
                                    if (handler2 == null) {
                                        return;
                                    }
                                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewSrc.13.1.1.1.1
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            final DialogViewSrc dialogViewSrc2 = DialogViewSrc.this;
                                            if (dialogViewSrc2.R != null) {
                                                MyFindView myFindView = new MyFindView(dialogViewSrc2.G);
                                                dialogViewSrc2.a0 = myFindView;
                                                myFindView.setVisibility(8);
                                                MyFindView myFindView2 = dialogViewSrc2.a0;
                                                WebSrcView webSrcView3 = dialogViewSrc2.O;
                                                DialogSetFull.DialogApplyListener dialogApplyListener = new DialogSetFull.DialogApplyListener() { // from class: com.mycompany.app.dialog.DialogViewSrc.14
                                                    @Override // com.mycompany.app.dialog.DialogSetFull.DialogApplyListener
                                                    public final void a() {
                                                        MyFindView myFindView3 = DialogViewSrc.this.a0;
                                                        if (myFindView3 != null) {
                                                            myFindView3.a();
                                                        }
                                                    }
                                                };
                                                myFindView2.h = webSrcView3;
                                                myFindView2.i = null;
                                                myFindView2.g = false;
                                                myFindView2.f = dialogApplyListener;
                                                dialogViewSrc2.R.addView(myFindView2, -1, MainApp.Y0);
                                                Handler handler3 = dialogViewSrc2.i;
                                                if (handler3 == null) {
                                                    return;
                                                }
                                                handler3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewSrc.15
                                                    @Override // java.lang.Runnable
                                                    public final void run() {
                                                        MyFindView myFindView3 = DialogViewSrc.this.a0;
                                                        if (myFindView3 == null) {
                                                            return;
                                                        }
                                                        myFindView3.b(0, 0, false);
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
            }

            public AnonymousClass1() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                DialogViewSrc dialogViewSrc = DialogViewSrc.this;
                WebSrcView webSrcView = dialogViewSrc.O;
                if (webSrcView != null) {
                    MainUtil.X7(webSrcView.getSettings(), MainApp.K1);
                    Handler handler = dialogViewSrc.i;
                    if (handler == null) {
                        return;
                    }
                    handler.post(new RunnableC01071());
                }
            }
        }

        public AnonymousClass13() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            DialogViewSrc dialogViewSrc = DialogViewSrc.this;
            WebSrcView webSrcView = dialogViewSrc.O;
            if (webSrcView != null) {
                WebSettings settings = webSrcView.getSettings();
                settings.setSupportZoom(true);
                settings.setBuiltInZoomControls(true);
                settings.setDisplayZoomControls(false);
                settings.setUseWideViewPort(true);
                settings.setLoadWithOverviewMode(true);
                settings.setJavaScriptCanOpenWindowsAutomatically(false);
                settings.setSupportMultipleWindows(false);
                settings.setMediaPlaybackRequiresUserGesture(false);
                settings.setJavaScriptEnabled(true);
                webSrcView.setOverScrollMode(2);
                webSrcView.setVerticalScrollBarEnabled(false);
                Handler handler = dialogViewSrc.i;
                if (handler == null) {
                    return;
                }
                handler.post(new AnonymousClass1());
            }
        }
    }

    /* renamed from: com.mycompany.app.dialog.DialogViewSrc$3, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass3 implements View.OnClickListener {
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
            int i2 = DialogViewSrc.s0;
            DialogViewSrc.this.u(i);
        }
    }

    /* loaded from: classes3.dex */
    public class LocalWebViewClient extends WebViewClient {
        public LocalWebViewClient() {
        }

        @Override // android.webkit.WebViewClient
        public final void onPageFinished(WebView webView, String str) {
            final DialogViewSrc dialogViewSrc = DialogViewSrc.this;
            if (dialogViewSrc.O == null) {
                return;
            }
            dialogViewSrc.P = false;
            if (!dialogViewSrc.l0 && !TextUtils.isEmpty(str) && !str.equals(dialogViewSrc.m0)) {
                dialogViewSrc.l0 = true;
                dialogViewSrc.m0 = str;
                Handler handler = dialogViewSrc.i;
                if (handler != null) {
                    handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewSrc.22
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogViewSrc dialogViewSrc2 = DialogViewSrc.this;
                            MainUtil.l(dialogViewSrc2.O);
                            dialogViewSrc2.l0 = false;
                        }
                    });
                }
            }
            if (MainApp.K1 && MainUtil.j5()) {
                dialogViewSrc.s(true);
            }
            dialogViewSrc.t();
        }

        @Override // android.webkit.WebViewClient
        public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            DialogViewSrc dialogViewSrc = DialogViewSrc.this;
            if (dialogViewSrc.O != null) {
                dialogViewSrc.P = true;
                if (MainApp.K1 && MainUtil.j5()) {
                    dialogViewSrc.s(true);
                }
            }
        }

        @Override // android.webkit.WebViewClient
        public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            final DialogViewSrc dialogViewSrc = DialogViewSrc.this;
            dialogViewSrc.O = null;
            MainUtil.D(webView, renderProcessGoneDetail);
            Handler handler = dialogViewSrc.i;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewSrc.23
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogViewSrc.this.dismiss();
                    }
                });
                return true;
            }
            return true;
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            return false;
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
            DialogViewSrc dialogViewSrc = DialogViewSrc.this;
            if (dialogViewSrc.O == null || TextUtils.isEmpty(str)) {
                return true;
            }
            dialogViewSrc.O.loadUrl(str);
            return true;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public DialogViewSrc(com.mycompany.app.main.MainActivity r2, com.mycompany.app.web.WebNestView r3, java.lang.String r4, java.lang.String r5) {
        /*
            r1 = this;
            boolean r0 = com.mycompany.app.main.MainApp.K1
            if (r0 == 0) goto L7
            int r0 = com.mycompany.app.soulbrowser.R.style.DialogFullBlack
            goto L9
        L7:
            int r0 = com.mycompany.app.soulbrowser.R.style.DialogFullTheme
        L9:
            r1.<init>(r2, r0)
            com.mycompany.app.dialog.DialogViewSrc$24 r0 = new com.mycompany.app.dialog.DialogViewSrc$24
            r0.<init>()
            r1.o0 = r0
            com.mycompany.app.dialog.DialogViewSrc$25 r0 = new com.mycompany.app.dialog.DialogViewSrc$25
            r0.<init>()
            r1.q0 = r0
            r1.j()
            r1.G = r2
            android.content.Context r2 = r1.getContext()
            r1.H = r2
            r1.I = r3
            r1.c0 = r4
            r1.e0 = r5
            boolean r2 = com.mycompany.app.main.MainApp.K1
            r1.j0 = r2
            android.os.Handler r2 = r1.i
            if (r2 != 0) goto L34
            return
        L34:
            com.mycompany.app.dialog.DialogViewSrc$1 r3 = new com.mycompany.app.dialog.DialogViewSrc$1
            r3.<init>()
            r2.post(r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogViewSrc.<init>(com.mycompany.app.main.MainActivity, com.mycompany.app.web.WebNestView, java.lang.String, java.lang.String):void");
    }

    @Override // com.mycompany.app.dialog.DialogCast, com.mycompany.app.view.MyDialogNormal, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18667c = false;
        if (this.H == null) {
            return;
        }
        DialogSaveSource dialogSaveSource = this.h0;
        if (dialogSaveSource != null) {
            dialogSaveSource.dismiss();
            this.h0 = null;
        }
        DialogSeekBright dialogSeekBright = this.i0;
        if (dialogSeekBright != null) {
            dialogSeekBright.dismiss();
            this.i0 = null;
        }
        MyFindView myFindView = this.a0;
        if (myFindView != null) {
            myFindView.c();
            this.a0 = null;
        }
        MyButtonImage myButtonImage = this.K;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.K = null;
        }
        MyButtonImage myButtonImage2 = this.L;
        if (myButtonImage2 != null) {
            myButtonImage2.j();
            this.L = null;
        }
        WebSrcView webSrcView = this.O;
        if (webSrcView != null) {
            if (this.P) {
                this.P = false;
                webSrcView.stopLoading();
            }
            MainUtil.P6(this.O);
            this.O = null;
        }
        MyScrollBar myScrollBar = this.Q;
        if (myScrollBar != null) {
            myScrollBar.k();
            this.Q = null;
        }
        MyProgressBar myProgressBar = this.T;
        if (myProgressBar != null) {
            myProgressBar.f();
            this.T = null;
        }
        MyFadeFrame myFadeFrame = this.U;
        if (myFadeFrame != null) {
            myFadeFrame.f();
            this.U = null;
        }
        MyButtonImage myButtonImage3 = this.W;
        if (myButtonImage3 != null) {
            myButtonImage3.j();
            this.W = null;
        }
        MyButtonImage myButtonImage4 = this.X;
        if (myButtonImage4 != null) {
            myButtonImage4.j();
            this.X = null;
        }
        MyCoverView myCoverView = this.Y;
        if (myCoverView != null) {
            myCoverView.i();
            this.Y = null;
        }
        MyFadeFrame myFadeFrame2 = this.Z;
        if (myFadeFrame2 != null) {
            myFadeFrame2.f();
            this.Z = null;
        }
        MainActivity mainActivity = this.G;
        if (mainActivity != null) {
            mainActivity.n0(null, false);
            this.G = null;
        }
        this.H = null;
        this.I = null;
        this.J = null;
        this.M = null;
        this.N = null;
        this.R = null;
        this.S = null;
        this.V = null;
        this.b0 = null;
        this.c0 = null;
        this.e0 = null;
        this.g0 = null;
        super.dismiss();
    }

    @Override // com.mycompany.app.dialog.DialogCast, android.app.Dialog, android.view.Window.Callback
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent == null) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 1 || actionMasked == 3) {
            MyScrollBar myScrollBar = this.Q;
            if (myScrollBar != null) {
                myScrollBar.e();
            }
            MyFadeFrame myFadeFrame = this.U;
            if (myFadeFrame != null) {
                myFadeFrame.g();
            }
        }
        GestureDetector gestureDetector = this.b0;
        if (gestureDetector != null) {
            gestureDetector.onTouchEvent(motionEvent);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // com.mycompany.app.view.MyDialogNormal
    public final void l() {
        MyFindView myFindView = this.a0;
        if (myFindView != null && myFindView.getVisibility() == 0) {
            this.a0.a();
            return;
        }
        WebSrcView webSrcView = this.O;
        if (webSrcView != null && webSrcView.canGoBack()) {
            this.O.goBack();
        } else {
            dismiss();
        }
    }

    @Override // com.mycompany.app.view.MyDialogNormal, android.app.Dialog
    public final void onBackPressed() {
        if (e()) {
            return;
        }
        l();
    }

    public final void r() {
        int i;
        MyMainRelative myMainRelative = this.J;
        if (myMainRelative != null) {
            Window window = getWindow();
            if (MainApp.K1) {
                i = -16777216;
            } else {
                i = -460552;
            }
            myMainRelative.b(window, i);
            int i2 = -14606047;
            if (MainApp.K1) {
                if (Build.VERSION.SDK_INT >= 30) {
                    getWindow().setBackgroundDrawable(new ColorDrawable(-16777216));
                }
                this.M.setBackgroundColor(-14606047);
                this.N.setBackgroundColor(-14606047);
                this.T.g(-922746881, -16777216);
                this.Q.setPreColor(-12632257);
                this.V.setBackgroundColor(-14606047);
                this.K.setImageResource(R.drawable.outline_chevron_left_dark_24);
                this.L.setImageResource(R.drawable.outline_download_dark_20);
                this.W.setImageResource(R.drawable.outline_brightness_6_dark_24);
                this.X.setImageResource(R.drawable.outline_search_dark_24);
                this.K.k(-16777216, -12632257);
                this.L.k(-16777216, -12632257);
                this.W.setBgNorColor(-11513776);
                this.X.setBgNorColor(-11513776);
                this.W.setBgPreColor(-12632257);
                this.X.setBgPreColor(-12632257);
            } else {
                if (Build.VERSION.SDK_INT >= 30) {
                    getWindow().setBackgroundDrawable(new ColorDrawable(-460552));
                }
                this.M.setBackgroundColor(-1);
                this.N.setBackgroundColor(-1);
                this.T.g(-13022805, -460552);
                this.Q.setPreColor(-2434342);
                this.V.setBackgroundColor(-1);
                this.K.setImageResource(R.drawable.outline_chevron_left_black_24);
                this.L.setImageResource(R.drawable.outline_download_black_20);
                this.W.setImageResource(R.drawable.outline_brightness_6_black_24);
                this.X.setImageResource(R.drawable.outline_search_black_24);
                this.K.k(-1, -2039584);
                this.L.k(-1, -2039584);
                this.W.setBgNorColor(-460552);
                this.X.setBgNorColor(-460552);
                this.W.setBgPreColor(-2039584);
                this.X.setBgPreColor(-2039584);
            }
            WebSrcView webSrcView = this.O;
            if (webSrcView != null) {
                if (!MainApp.K1) {
                    i2 = -1;
                }
                webSrcView.setBackgroundColor(i2);
            }
            MyFindView myFindView = this.a0;
            if (myFindView != null) {
                myFindView.e(0, 0, false);
            }
        }
    }

    public final void s(boolean z) {
        WebSrcView webSrcView = this.O;
        if (webSrcView == null) {
            return;
        }
        if (z) {
            MainUtil.J(webSrcView, "if(document.head){if(!document.getElementById('sb_dark_style')){var ele=document.createElement('style');ele.id='sb_dark_style';ele.innerText='body{-webkit-filter:invert(1)hue-rotate(180deg);}';document.head.appendChild(ele);}}", false);
        } else {
            MainUtil.J(webSrcView, "var edk=document.getElementById('sb_dark_style');if(edk){document.head.removeChild(edk);}", false);
        }
    }

    public final void t() {
        Handler handler;
        if (!this.f0) {
            this.f0 = true;
            boolean z = PrefRead.l;
            if (z && z && this.Z == null && this.J != null && (handler = this.i) != null) {
                handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewSrc.16
                    @Override // java.lang.Runnable
                    public final void run() {
                        MyFadeFrame Z0;
                        if (PrefRead.l) {
                            final DialogViewSrc dialogViewSrc = DialogViewSrc.this;
                            if (dialogViewSrc.Z == null && dialogViewSrc.J != null && (Z0 = VideoActivity.Z0(dialogViewSrc.G)) != null) {
                                dialogViewSrc.Z = Z0;
                                Z0.setListener(new MyFadeListener() { // from class: com.mycompany.app.dialog.DialogViewSrc.17
                                    @Override // com.mycompany.app.view.MyFadeListener
                                    public final void a(boolean z2) {
                                        if (!z2) {
                                            DialogViewSrc dialogViewSrc2 = DialogViewSrc.this;
                                            MyFadeFrame myFadeFrame = dialogViewSrc2.Z;
                                            if (myFadeFrame != null && dialogViewSrc2.J != null) {
                                                myFadeFrame.f();
                                                dialogViewSrc2.J.removeView(dialogViewSrc2.Z);
                                                dialogViewSrc2.Z = null;
                                            }
                                            MyFadeFrame myFadeFrame2 = dialogViewSrc2.U;
                                            if (myFadeFrame2 != null) {
                                                myFadeFrame2.h(true);
                                            }
                                        }
                                    }

                                    @Override // com.mycompany.app.view.MyFadeListener
                                    public final void b(boolean z2, boolean z3) {
                                    }
                                });
                                dialogViewSrc.Z.setOnTouchListener(new View.OnTouchListener() { // from class: com.mycompany.app.dialog.DialogViewSrc.18
                                    @Override // android.view.View.OnTouchListener
                                    public final boolean onTouch(View view, MotionEvent motionEvent) {
                                        boolean z2 = PrefRead.l;
                                        DialogViewSrc dialogViewSrc2 = DialogViewSrc.this;
                                        if (z2) {
                                            PrefRead.l = false;
                                            PrefSet.d(8, dialogViewSrc2.H, "mGuideSrc", false);
                                        }
                                        MyFadeFrame myFadeFrame = dialogViewSrc2.Z;
                                        if (myFadeFrame != null) {
                                            myFadeFrame.d(true);
                                        }
                                        return false;
                                    }
                                });
                                dialogViewSrc.J.addView(dialogViewSrc.Z, -1, -1);
                                return;
                            }
                            return;
                        }
                        int i = DialogViewSrc.s0;
                    }
                });
            }
        }
    }

    public final void u(int i) {
        this.n0 = i;
        MyProgressBar myProgressBar = this.T;
        if (myProgressBar != null) {
            int round = Math.round(myProgressBar.getProgress());
            if (i == 100 && round == 100) {
                this.T.setSkipDraw(true);
                t();
                return;
            }
            MyProgressBar myProgressBar2 = this.T;
            if (myProgressBar2.B) {
                myProgressBar2.setProgress(0.0f);
                this.T.setSkipDraw(false);
                u(Math.max(i, 50));
            } else if (round < i) {
                myProgressBar2.setProgress(round + 3);
                Runnable runnable = this.o0;
                if (runnable != null) {
                    this.T.removeCallbacks(runnable);
                    this.T.post(runnable);
                }
            }
        }
    }

    public final void v() {
        DialogSaveSource dialogSaveSource;
        if (this.G == null || (dialogSaveSource = this.h0) != null || this.i0 != null) {
            return;
        }
        if (dialogSaveSource != null) {
            dialogSaveSource.dismiss();
            this.h0 = null;
        }
        DialogSaveSource dialogSaveSource2 = new DialogSaveSource(this.G, this.e0, this.g0, null, new DialogDownPage.DownPageListener() { // from class: com.mycompany.app.dialog.DialogViewSrc.26
            @Override // com.mycompany.app.dialog.DialogDownPage.DownPageListener
            public final void a(String str, final String str2, Bitmap bitmap) {
                int i = DialogViewSrc.s0;
                final DialogViewSrc dialogViewSrc = DialogViewSrc.this;
                Handler handler = dialogViewSrc.i;
                if (handler == null) {
                    return;
                }
                handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewSrc.29
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogViewSrc dialogViewSrc2 = DialogViewSrc.this;
                        if (dialogViewSrc2.J == null) {
                            return;
                        }
                        MainUtil.c();
                        MySnackbar mySnackbar = dialogViewSrc2.r0;
                        if (mySnackbar != null) {
                            mySnackbar.i(false);
                            dialogViewSrc2.r0 = null;
                        }
                        dialogViewSrc2.r0 = new MySnackbar(dialogViewSrc2.G);
                        if (TextUtils.isEmpty(str2)) {
                            dialogViewSrc2.r0.v(dialogViewSrc2.J, R.string.save_fail, new MySnackbar.SnackbarListener() { // from class: com.mycompany.app.dialog.DialogViewSrc.29.1
                                @Override // com.mycompany.app.view.MySnackbar.SnackbarListener
                                public final void a() {
                                }

                                @Override // com.mycompany.app.view.MySnackbar.SnackbarListener
                                public final void b() {
                                }

                                @Override // com.mycompany.app.view.MySnackbar.SnackbarListener
                                public final void c() {
                                }

                                @Override // com.mycompany.app.view.MySnackbar.SnackbarListener
                                public final void onDismiss() {
                                    DialogViewSrc.this.r0 = null;
                                }
                            });
                        } else {
                            dialogViewSrc2.r0.w(dialogViewSrc2.J, R.string.save_success, 1, new MySnackbar.SnackbarListener() { // from class: com.mycompany.app.dialog.DialogViewSrc.29.2
                                @Override // com.mycompany.app.view.MySnackbar.SnackbarListener
                                public final void a() {
                                }

                                @Override // com.mycompany.app.view.MySnackbar.SnackbarListener
                                public final void b() {
                                }

                                @Override // com.mycompany.app.view.MySnackbar.SnackbarListener
                                public final void c() {
                                    AnonymousClass29 anonymousClass29 = AnonymousClass29.this;
                                    MainUtil.d(DialogViewSrc.this.G, str2, "text/plain", true, false);
                                }

                                @Override // com.mycompany.app.view.MySnackbar.SnackbarListener
                                public final void onDismiss() {
                                    DialogViewSrc.this.r0 = null;
                                }
                            });
                        }
                    }
                });
            }
        });
        this.h0 = dialogSaveSource2;
        dialogSaveSource2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogViewSrc.27
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                int i = DialogViewSrc.s0;
                DialogViewSrc dialogViewSrc = DialogViewSrc.this;
                DialogSaveSource dialogSaveSource3 = dialogViewSrc.h0;
                if (dialogSaveSource3 != null) {
                    dialogSaveSource3.dismiss();
                    dialogViewSrc.h0 = null;
                }
            }
        });
    }
}
