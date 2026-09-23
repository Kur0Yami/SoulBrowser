package com.mycompany.app.web;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.webkit.JavascriptInterface;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceRequest;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.view.MyWebSafe;
import com.mycompany.app.web.WebSnsTask;

/* loaded from: classes3.dex */
public class WebSnsTwit {

    /* renamed from: a, reason: collision with root package name */
    public MainActivity f19489a;
    public Context b;

    /* renamed from: c, reason: collision with root package name */
    public WebSnsTask.SnsTaskListener f19490c;
    public ViewGroup d;
    public MyWebSafe e;
    public boolean f;
    public String g;
    public String h;
    public String i;
    public String j;
    public String k;
    public boolean l;
    public boolean m;
    public String n;
    public String o;
    public boolean p;
    public String q;

    /* renamed from: com.mycompany.app.web.WebSnsTwit$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass2 implements Runnable {

        /* renamed from: com.mycompany.app.web.WebSnsTwit$2$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 implements Runnable {
            public AnonymousClass1() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                WebSnsTwit webSnsTwit = WebSnsTwit.this;
                MyWebSafe myWebSafe = webSnsTwit.e;
                if (myWebSafe != null) {
                    myWebSafe.setWebViewClient(new LocalWebViewClient());
                }
                ViewGroup viewGroup = webSnsTwit.d;
                if (viewGroup == null) {
                    return;
                }
                viewGroup.post(new Runnable() { // from class: com.mycompany.app.web.WebSnsTwit.2.1.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                        WebSnsTwit webSnsTwit2 = WebSnsTwit.this;
                        MyWebSafe myWebSafe2 = webSnsTwit2.e;
                        if (myWebSafe2 != null) {
                            webSnsTwit2.l = true;
                            myWebSafe2.addJavascriptInterface(new WebAppInterface(), "android");
                        }
                        ViewGroup viewGroup2 = WebSnsTwit.this.d;
                        if (viewGroup2 == null) {
                            return;
                        }
                        viewGroup2.post(new Runnable() { // from class: com.mycompany.app.web.WebSnsTwit.2.1.1.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                WebSnsTwit webSnsTwit3 = WebSnsTwit.this;
                                MyWebSafe myWebSafe3 = webSnsTwit3.e;
                                if (myWebSafe3 == null) {
                                    return;
                                }
                                myWebSafe3.loadUrl(webSnsTwit3.g);
                            }
                        });
                    }
                });
            }
        }

        public AnonymousClass2() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            WebSnsTwit webSnsTwit = WebSnsTwit.this;
            MyWebSafe myWebSafe = webSnsTwit.e;
            if (myWebSafe != null) {
                WebSettings settings = myWebSafe.getSettings();
                settings.setSupportZoom(true);
                settings.setBuiltInZoomControls(true);
                settings.setDisplayZoomControls(false);
                settings.setUseWideViewPort(true);
                settings.setLoadWithOverviewMode(true);
                settings.setDomStorageEnabled(true);
                settings.setJavaScriptCanOpenWindowsAutomatically(false);
                settings.setSupportMultipleWindows(false);
                settings.setMediaPlaybackRequiresUserGesture(true);
                settings.setJavaScriptEnabled(true);
                settings.setDatabaseEnabled(true);
                settings.setMixedContentMode(0);
                MainApp.L(webSnsTwit.b, true);
                MainApp.O(webSnsTwit.b, myWebSafe, true);
            }
            ViewGroup viewGroup = webSnsTwit.d;
            if (viewGroup == null) {
                return;
            }
            viewGroup.post(new AnonymousClass1());
        }
    }

    /* loaded from: classes3.dex */
    public class WebAppInterface {
        public WebAppInterface() {
        }

        @JavascriptInterface
        public void onTwitImage(String str) {
            WebSnsTwit webSnsTwit = WebSnsTwit.this;
            webSnsTwit.o = str;
            MainActivity mainActivity = webSnsTwit.f19489a;
            if (mainActivity == null) {
                return;
            }
            mainActivity.m0(new Runnable() { // from class: com.mycompany.app.web.WebSnsTwit.WebAppInterface.1
                /* JADX WARN: Code restructure failed: missing block: B:84:0x011e, code lost:
                
                    r0 = new java.util.ArrayList();
                 */
                /* JADX WARN: Code restructure failed: missing block: B:85:0x0123, code lost:
                
                    r0.addAll(r15);
                 */
                /* JADX WARN: Code restructure failed: missing block: B:86:0x0126, code lost:
                
                    r9 = r0;
                    r10 = 0;
                 */
                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Type inference failed for: r0v12, types: [java.lang.Object, java.util.Comparator] */
                /* JADX WARN: Type inference failed for: r15v0 */
                /* JADX WARN: Type inference failed for: r15v1, types: [java.util.List, java.util.Collection, java.util.ArrayList] */
                /* JADX WARN: Type inference failed for: r15v2, types: [java.util.List] */
                /* JADX WARN: Type inference failed for: r15v4 */
                /* JADX WARN: Type inference failed for: r15v5 */
                /* JADX WARN: Type inference failed for: r15v6 */
                /* JADX WARN: Type inference failed for: r15v7 */
                @Override // java.lang.Runnable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final void run() {
                    /*
                        Method dump skipped, instructions count: 476
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.web.WebSnsTwit.WebAppInterface.AnonymousClass1.run():void");
                }
            });
        }
    }

    public static void a(WebSnsTwit webSnsTwit, String str) {
        if (webSnsTwit.e != null) {
            if (MainUtil.D5(str)) {
                if (webSnsTwit.l) {
                    webSnsTwit.l = false;
                    MyWebSafe myWebSafe = webSnsTwit.e;
                    if (myWebSafe != null) {
                        myWebSafe.post(new Runnable() { // from class: com.mycompany.app.web.WebSnsTwit.5
                            @Override // java.lang.Runnable
                            public final void run() {
                                WebSnsTwit webSnsTwit2 = WebSnsTwit.this;
                                MyWebSafe myWebSafe2 = webSnsTwit2.e;
                                if (myWebSafe2 == null) {
                                    return;
                                }
                                webSnsTwit2.l = false;
                                myWebSafe2.removeJavascriptInterface("android");
                            }
                        });
                        return;
                    }
                    return;
                }
                return;
            }
            if (!webSnsTwit.l) {
                webSnsTwit.l = true;
                MyWebSafe myWebSafe2 = webSnsTwit.e;
                if (myWebSafe2 == null) {
                    return;
                }
                myWebSafe2.post(new Runnable() { // from class: com.mycompany.app.web.WebSnsTwit.6
                    @Override // java.lang.Runnable
                    public final void run() {
                        WebSnsTwit webSnsTwit2 = WebSnsTwit.this;
                        MyWebSafe myWebSafe3 = webSnsTwit2.e;
                        if (myWebSafe3 == null) {
                            return;
                        }
                        webSnsTwit2.l = true;
                        myWebSafe3.addJavascriptInterface(new WebAppInterface(), "android");
                    }
                });
            }
        }
    }

    public final void b() {
        MyWebSafe myWebSafe = this.e;
        if (myWebSafe != null) {
            if (this.f) {
                this.f = false;
                myWebSafe.stopLoading();
            }
            MainUtil.P6(this.e);
            this.e = null;
        }
        MainApp.M(this.b);
        this.f19489a = null;
        this.b = null;
        this.f19490c = null;
        this.d = null;
        this.g = null;
        this.h = null;
        this.i = null;
        this.j = null;
        this.k = null;
    }

    /* loaded from: classes3.dex */
    public class LocalWebViewClient extends WebViewClient {
        public LocalWebViewClient() {
        }

        @Override // android.webkit.WebViewClient
        public final void onPageFinished(WebView webView, String str) {
            final WebSnsTwit webSnsTwit = WebSnsTwit.this;
            if (webSnsTwit.e != null) {
                webSnsTwit.f = false;
                WebSnsTwit.a(webSnsTwit, str);
                if (!webSnsTwit.p && !TextUtils.isEmpty(str) && !str.equals(webSnsTwit.q)) {
                    webSnsTwit.p = true;
                    webSnsTwit.q = str;
                    ViewGroup viewGroup = webSnsTwit.d;
                    if (viewGroup != null) {
                        viewGroup.post(new Runnable() { // from class: com.mycompany.app.web.WebSnsTwit.3
                            @Override // java.lang.Runnable
                            public final void run() {
                                WebSnsTwit webSnsTwit2 = WebSnsTwit.this;
                                MainUtil.l(webSnsTwit2.e);
                                webSnsTwit2.p = false;
                            }
                        });
                    }
                }
            }
        }

        @Override // android.webkit.WebViewClient
        public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            WebSnsTwit webSnsTwit = WebSnsTwit.this;
            if (webSnsTwit.e == null) {
                return;
            }
            webSnsTwit.f = true;
            WebSnsTwit.a(webSnsTwit, str);
        }

        @Override // android.webkit.WebViewClient
        public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            final WebSnsTwit webSnsTwit = WebSnsTwit.this;
            webSnsTwit.e = null;
            MainUtil.D(webView, renderProcessGoneDetail);
            ViewGroup viewGroup = webSnsTwit.d;
            if (viewGroup != null) {
                viewGroup.post(new Runnable() { // from class: com.mycompany.app.web.WebSnsTwit.4
                    @Override // java.lang.Runnable
                    public final void run() {
                        WebSnsTask.SnsTaskListener snsTaskListener = WebSnsTwit.this.f19490c;
                        if (snsTaskListener != null) {
                            snsTaskListener.a(null);
                        }
                    }
                });
                return true;
            }
            return true;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:46:0x0110  */
        /* JADX WARN: Removed duplicated region for block: B:55:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:81:0x0107  */
        /* JADX WARN: Removed duplicated region for block: B:82:0x0101 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:86:0x00fc A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:90:0x00f7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Type inference failed for: r3v10 */
        /* JADX WARN: Type inference failed for: r3v11, types: [java.io.BufferedReader] */
        /* JADX WARN: Type inference failed for: r3v2 */
        /* JADX WARN: Type inference failed for: r3v3 */
        /* JADX WARN: Type inference failed for: r3v4 */
        /* JADX WARN: Type inference failed for: r3v5 */
        /* JADX WARN: Type inference failed for: r3v6 */
        /* JADX WARN: Type inference failed for: r3v7, types: [java.io.BufferedReader] */
        /* JADX WARN: Type inference failed for: r3v9 */
        @Override // android.webkit.WebViewClient
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final android.webkit.WebResourceResponse shouldInterceptRequest(android.webkit.WebView r8, android.webkit.WebResourceRequest r9) {
            /*
                Method dump skipped, instructions count: 318
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.web.WebSnsTwit.LocalWebViewClient.shouldInterceptRequest(android.webkit.WebView, android.webkit.WebResourceRequest):android.webkit.WebResourceResponse");
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
            WebSnsTwit webSnsTwit = WebSnsTwit.this;
            if (webSnsTwit.e == null || TextUtils.isEmpty(str)) {
                return true;
            }
            WebSnsTwit.a(webSnsTwit, str);
            webSnsTwit.e.loadUrl(str);
            return true;
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            WebSnsTwit webSnsTwit = WebSnsTwit.this;
            if (webSnsTwit.e != null && webResourceRequest != null && webResourceRequest.getUrl() != null) {
                String uri = webResourceRequest.getUrl().toString();
                if (!TextUtils.isEmpty(uri)) {
                    WebSnsTwit.a(webSnsTwit, uri);
                }
            }
            return false;
        }
    }
}
