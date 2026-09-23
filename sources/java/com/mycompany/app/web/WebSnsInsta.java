package com.mycompany.app.web;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.webkit.JavascriptInterface;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.view.MyWebSafe;
import com.mycompany.app.web.WebSnsLoad;
import com.mycompany.app.web.WebSnsTask;

/* loaded from: classes3.dex */
public class WebSnsInsta {

    /* renamed from: a, reason: collision with root package name */
    public MainActivity f19440a;
    public Context b;

    /* renamed from: c, reason: collision with root package name */
    public WebSnsTask.SnsTaskListener f19441c;
    public ViewGroup d;
    public MyWebSafe e;
    public boolean f;
    public String g;
    public boolean h;
    public boolean i;
    public boolean j;
    public boolean k;
    public boolean l;
    public String m;
    public String n;
    public String o;
    public String p;
    public String q;
    public boolean r;
    public String s;
    public String t;
    public String u;

    /* renamed from: com.mycompany.app.web.WebSnsInsta$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass2 implements Runnable {

        /* renamed from: com.mycompany.app.web.WebSnsInsta$2$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 implements Runnable {
            public AnonymousClass1() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                WebSnsInsta webSnsInsta = WebSnsInsta.this;
                MyWebSafe myWebSafe = webSnsInsta.e;
                if (myWebSafe != null) {
                    myWebSafe.setWebViewClient(new LocalWebViewClient());
                    ViewGroup viewGroup = webSnsInsta.d;
                    if (viewGroup == null) {
                        return;
                    }
                    viewGroup.post(new Runnable() { // from class: com.mycompany.app.web.WebSnsInsta.2.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                            WebSnsInsta webSnsInsta2 = WebSnsInsta.this;
                            MyWebSafe myWebSafe2 = webSnsInsta2.e;
                            if (myWebSafe2 != null) {
                                webSnsInsta2.h = true;
                                myWebSafe2.addJavascriptInterface(new WebAppInterface(), "android");
                                ViewGroup viewGroup2 = WebSnsInsta.this.d;
                                if (viewGroup2 == null) {
                                    return;
                                }
                                viewGroup2.post(new Runnable() { // from class: com.mycompany.app.web.WebSnsInsta.2.1.1.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        WebSnsInsta webSnsInsta3 = WebSnsInsta.this;
                                        MyWebSafe myWebSafe3 = webSnsInsta3.e;
                                        if (myWebSafe3 == null) {
                                            return;
                                        }
                                        myWebSafe3.loadUrl(webSnsInsta3.g);
                                    }
                                });
                            }
                        }
                    });
                }
            }
        }

        public AnonymousClass2() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            WebSnsInsta webSnsInsta = WebSnsInsta.this;
            MyWebSafe myWebSafe = webSnsInsta.e;
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
                MainApp.L(webSnsInsta.b, true);
                MainApp.O(webSnsInsta.b, myWebSafe, true);
                ViewGroup viewGroup = webSnsInsta.d;
                if (viewGroup == null) {
                    return;
                }
                viewGroup.post(new AnonymousClass1());
            }
        }
    }

    /* loaded from: classes3.dex */
    public class WebAppInterface {
        public WebAppInterface() {
        }

        @JavascriptInterface
        public void onDocHtml(String str) {
            final WebSnsInsta webSnsInsta = WebSnsInsta.this;
            webSnsInsta.u = str;
            MainActivity mainActivity = webSnsInsta.f19440a;
            if (mainActivity == null) {
                return;
            }
            mainActivity.m0(new Runnable() { // from class: com.mycompany.app.web.WebSnsInsta.9
                /* JADX WARN: Code restructure failed: missing block: B:11:0x003f, code lost:
                
                    if (android.text.TextUtils.isEmpty(r3) != false) goto L20;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:12:0x0041, code lost:
                
                    r3 = null;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:14:0x0086, code lost:
                
                    if (android.text.TextUtils.isEmpty(r3) != false) goto L119;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:28:0x0077, code lost:
                
                    if (android.text.TextUtils.isEmpty(r3) != false) goto L20;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:48:0x00d1, code lost:
                
                    if (android.text.TextUtils.isEmpty(r3) != false) goto L65;
                 */
                /* JADX WARN: Removed duplicated region for block: B:52:0x010a  */
                @Override // java.lang.Runnable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final void run() {
                    /*
                        Method dump skipped, instructions count: 477
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.web.WebSnsInsta.AnonymousClass9.run():void");
                }
            });
        }

        @JavascriptInterface
        public void onInstaData(String str) {
            final WebSnsInsta webSnsInsta = WebSnsInsta.this;
            if (webSnsInsta.e != null) {
                if (TextUtils.isEmpty(str)) {
                    WebSnsTask.SnsTaskListener snsTaskListener = webSnsInsta.f19441c;
                    if (snsTaskListener != null) {
                        ((WebSnsLoad.AnonymousClass10) snsTaskListener).a(null);
                        return;
                    }
                    return;
                }
                webSnsInsta.t = str;
                MainActivity mainActivity = webSnsInsta.f19440a;
                if (mainActivity == null) {
                    return;
                }
                mainActivity.m0(new Runnable() { // from class: com.mycompany.app.web.WebSnsInsta.7
                    /* JADX WARN: Code restructure failed: missing block: B:19:0x002f, code lost:
                    
                        if (r1 != null) goto L77;
                     */
                    @Override // java.lang.Runnable
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public final void run() {
                        /*
                            Method dump skipped, instructions count: 265
                            To view this dump add '--comments-level debug' option
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.web.WebSnsInsta.AnonymousClass7.run():void");
                    }
                });
            }
        }
    }

    public static void a(WebSnsInsta webSnsInsta) {
        MyWebSafe myWebSafe;
        if (!webSnsInsta.l && (myWebSafe = webSnsInsta.e) != null) {
            if (webSnsInsta.j) {
                webSnsInsta.k = true;
                return;
            } else {
                webSnsInsta.j = true;
                myWebSafe.post(new Runnable() { // from class: com.mycompany.app.web.WebSnsInsta.8
                    @Override // java.lang.Runnable
                    public final void run() {
                        MyWebSafe myWebSafe2;
                        WebSnsInsta webSnsInsta2 = WebSnsInsta.this;
                        if (!webSnsInsta2.l && (myWebSafe2 = webSnsInsta2.e) != null) {
                            MainUtil.I(myWebSafe2, "(function(){try{android.onDocHtml(document.documentElement.innerHTML);}catch(e){android.onDocHtml(null);}})();", false);
                        } else {
                            webSnsInsta2.j = false;
                            webSnsInsta2.k = false;
                        }
                    }
                });
                return;
            }
        }
        webSnsInsta.j = false;
        webSnsInsta.k = false;
    }

    public static void b(WebSnsInsta webSnsInsta, String str) {
        if (webSnsInsta.e != null) {
            if (MainUtil.D5(str)) {
                if (webSnsInsta.h) {
                    webSnsInsta.h = false;
                    MyWebSafe myWebSafe = webSnsInsta.e;
                    if (myWebSafe != null) {
                        myWebSafe.post(new Runnable() { // from class: com.mycompany.app.web.WebSnsInsta.5
                            @Override // java.lang.Runnable
                            public final void run() {
                                WebSnsInsta webSnsInsta2 = WebSnsInsta.this;
                                MyWebSafe myWebSafe2 = webSnsInsta2.e;
                                if (myWebSafe2 == null) {
                                    return;
                                }
                                webSnsInsta2.h = false;
                                myWebSafe2.removeJavascriptInterface("android");
                            }
                        });
                        return;
                    }
                    return;
                }
                return;
            }
            if (!webSnsInsta.h) {
                webSnsInsta.h = true;
                MyWebSafe myWebSafe2 = webSnsInsta.e;
                if (myWebSafe2 == null) {
                    return;
                }
                myWebSafe2.post(new Runnable() { // from class: com.mycompany.app.web.WebSnsInsta.6
                    @Override // java.lang.Runnable
                    public final void run() {
                        WebSnsInsta webSnsInsta2 = WebSnsInsta.this;
                        MyWebSafe myWebSafe3 = webSnsInsta2.e;
                        if (myWebSafe3 == null) {
                            return;
                        }
                        webSnsInsta2.h = true;
                        myWebSafe3.addJavascriptInterface(new WebAppInterface(), "android");
                    }
                });
            }
        }
    }

    public static String c(String str, String str2) {
        int length;
        int indexOf;
        int i;
        int indexOf2;
        if (str == null || str2 == null || (length = str2.length()) == 0 || (indexOf = str.indexOf(str2)) == -1 || (indexOf2 = str.indexOf(34, (i = indexOf + length))) <= i) {
            return null;
        }
        return str.substring(i, indexOf2);
    }

    public final void d() {
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
        this.f19440a = null;
        this.b = null;
        this.f19441c = null;
        this.d = null;
        this.g = null;
        this.m = null;
        this.n = null;
        this.o = null;
        this.p = null;
        this.q = null;
    }

    /* loaded from: classes3.dex */
    public class LocalWebViewClient extends WebViewClient {
        public LocalWebViewClient() {
        }

        @Override // android.webkit.WebViewClient
        public final void doUpdateVisitedHistory(WebView webView, String str, boolean z) {
            WebSnsInsta.a(WebSnsInsta.this);
        }

        @Override // android.webkit.WebViewClient
        public final void onPageFinished(WebView webView, String str) {
            final WebSnsInsta webSnsInsta = WebSnsInsta.this;
            if (webSnsInsta.e == null) {
                return;
            }
            webSnsInsta.f = false;
            WebSnsInsta.b(webSnsInsta, str);
            if (!webSnsInsta.r && !TextUtils.isEmpty(str) && !str.equals(webSnsInsta.s)) {
                webSnsInsta.r = true;
                webSnsInsta.s = str;
                ViewGroup viewGroup = webSnsInsta.d;
                if (viewGroup != null) {
                    viewGroup.post(new Runnable() { // from class: com.mycompany.app.web.WebSnsInsta.3
                        @Override // java.lang.Runnable
                        public final void run() {
                            WebSnsInsta webSnsInsta2 = WebSnsInsta.this;
                            MainUtil.l(webSnsInsta2.e);
                            webSnsInsta2.r = false;
                        }
                    });
                }
            }
            webSnsInsta.i = true;
            WebSnsInsta.a(webSnsInsta);
        }

        @Override // android.webkit.WebViewClient
        public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            WebSnsInsta webSnsInsta = WebSnsInsta.this;
            if (webSnsInsta.e == null) {
                return;
            }
            webSnsInsta.f = true;
            WebSnsInsta.b(webSnsInsta, str);
            WebSnsInsta.a(webSnsInsta);
        }

        @Override // android.webkit.WebViewClient
        public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            final WebSnsInsta webSnsInsta = WebSnsInsta.this;
            webSnsInsta.e = null;
            MainUtil.D(webView, renderProcessGoneDetail);
            ViewGroup viewGroup = webSnsInsta.d;
            if (viewGroup != null) {
                viewGroup.post(new Runnable() { // from class: com.mycompany.app.web.WebSnsInsta.4
                    @Override // java.lang.Runnable
                    public final void run() {
                        WebSnsTask.SnsTaskListener snsTaskListener = WebSnsInsta.this.f19441c;
                        if (snsTaskListener != null) {
                            snsTaskListener.a(null);
                        }
                    }
                });
                return true;
            }
            return true;
        }

        @Override // android.webkit.WebViewClient
        public final WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
            WebSnsInsta webSnsInsta = WebSnsInsta.this;
            if (webSnsInsta.e != null && webResourceRequest != null && webResourceRequest.getUrl() != null) {
                WebSnsInsta.b(webSnsInsta, webResourceRequest.getUrl().toString());
            }
            return null;
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
            WebSnsInsta webSnsInsta = WebSnsInsta.this;
            if (webSnsInsta.e == null || TextUtils.isEmpty(str)) {
                return true;
            }
            WebSnsInsta.b(webSnsInsta, str);
            webSnsInsta.e.loadUrl(str);
            return true;
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            WebSnsInsta webSnsInsta = WebSnsInsta.this;
            if (webSnsInsta.e != null && webResourceRequest != null && webResourceRequest.getUrl() != null) {
                String uri = webResourceRequest.getUrl().toString();
                if (!TextUtils.isEmpty(uri)) {
                    WebSnsInsta.b(webSnsInsta, uri);
                }
            }
            return false;
        }
    }
}
