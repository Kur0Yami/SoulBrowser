package com.mycompany.app.web;

import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.webkit.JavascriptInterface;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.view.MyWebSafe;
import com.mycompany.app.web.WebLoadTask;

/* loaded from: classes3.dex */
public class WebLoadView {

    /* renamed from: a, reason: collision with root package name */
    public ViewGroup f19290a;
    public MyWebSafe b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f19291c;
    public String d;
    public boolean e;
    public boolean f;
    public String g;

    /* renamed from: com.mycompany.app.web.WebLoadView$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements Runnable {

        /* renamed from: com.mycompany.app.web.WebLoadView$1$1, reason: invalid class name and collision with other inner class name */
        /* loaded from: classes3.dex */
        class RunnableC02581 implements Runnable {
            public RunnableC02581() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                WebLoadView webLoadView = WebLoadView.this;
                MyWebSafe myWebSafe = webLoadView.b;
                if (myWebSafe != null) {
                    myWebSafe.setWebViewClient(new LocalWebViewClient());
                    webLoadView.b.setWebChromeClient(new LocalChromeClient());
                    ViewGroup viewGroup = webLoadView.f19290a;
                    if (viewGroup == null) {
                        return;
                    }
                    viewGroup.post(new Runnable() { // from class: com.mycompany.app.web.WebLoadView.1.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                            WebLoadView webLoadView2 = WebLoadView.this;
                            MyWebSafe myWebSafe2 = webLoadView2.b;
                            if (myWebSafe2 != null) {
                                webLoadView2.e = true;
                                myWebSafe2.addJavascriptInterface(new WebAppInterface(), "android");
                                ViewGroup viewGroup2 = WebLoadView.this.f19290a;
                                if (viewGroup2 == null) {
                                    return;
                                }
                                viewGroup2.post(new Runnable() { // from class: com.mycompany.app.web.WebLoadView.1.1.1.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        WebLoadView webLoadView3 = WebLoadView.this;
                                        MyWebSafe myWebSafe3 = webLoadView3.b;
                                        if (myWebSafe3 == null) {
                                            return;
                                        }
                                        myWebSafe3.loadUrl(webLoadView3.d);
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
            WebLoadView webLoadView = WebLoadView.this;
            MyWebSafe myWebSafe = webLoadView.b;
            if (myWebSafe != null) {
                MainUtil.W7(myWebSafe, true);
                ViewGroup viewGroup = webLoadView.f19290a;
                if (viewGroup == null) {
                    return;
                }
                viewGroup.post(new RunnableC02581());
            }
        }
    }

    /* renamed from: com.mycompany.app.web.WebLoadView$5, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass5 implements Runnable {
        @Override // java.lang.Runnable
        public final void run() {
            WebLoadTask c2 = WebLoadTask.c();
            if (c2.b != null) {
                c2.e = 2;
                WebLoadTask.WebLoadTaskListener webLoadTaskListener = c2.f19285c;
                if (webLoadTaskListener != null) {
                    webLoadTaskListener.a();
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    public class LocalChromeClient extends WebChromeClient {
        public LocalChromeClient() {
        }

        @Override // android.webkit.WebChromeClient
        public final void onProgressChanged(WebView webView, int i) {
            if (WebLoadView.this.b == null) {
                return;
            }
            WebLoadTask.c().h(i);
        }
    }

    /* loaded from: classes3.dex */
    public class WebAppInterface {

        /* renamed from: a, reason: collision with root package name */
        public String f19301a;

        public WebAppInterface() {
        }

        @JavascriptInterface
        public void onLoadHtml(String str) {
            this.f19301a = str;
            ViewGroup viewGroup = WebLoadView.this.f19290a;
            if (viewGroup == null) {
                return;
            }
            viewGroup.post(new Runnable() { // from class: com.mycompany.app.web.WebLoadView.WebAppInterface.1
                @Override // java.lang.Runnable
                public final void run() {
                    WebAppInterface webAppInterface = WebAppInterface.this;
                    String str2 = webAppInterface.f19301a;
                    webAppInterface.f19301a = null;
                    WebLoadTask.c().g(str2);
                }
            });
        }
    }

    public WebLoadView(WebViewActivity webViewActivity, ViewGroup viewGroup, String str) {
        if (webViewActivity != null && viewGroup != null) {
            this.f19290a = viewGroup;
            this.d = str;
            MyWebSafe myWebSafe = new MyWebSafe(webViewActivity);
            this.b = myWebSafe;
            MainApp.I(webViewActivity, myWebSafe);
            this.b.setVisibility(4);
            this.f19290a.addView(this.b, 0, new ViewGroup.LayoutParams(-1, -1));
            WebLoadTask c2 = WebLoadTask.c();
            MyWebSafe myWebSafe2 = this.b;
            c2.f19284a = true;
            c2.b = myWebSafe2;
            c2.f19285c = null;
            c2.e = 0;
            c2.f = false;
            this.f19290a.post(new AnonymousClass1());
        }
    }

    public static void a(WebLoadView webLoadView, String str) {
        if (webLoadView.b != null) {
            if (MainUtil.D5(str)) {
                if (webLoadView.e) {
                    webLoadView.e = false;
                    MyWebSafe myWebSafe = webLoadView.b;
                    if (myWebSafe != null) {
                        myWebSafe.post(new Runnable() { // from class: com.mycompany.app.web.WebLoadView.2
                            @Override // java.lang.Runnable
                            public final void run() {
                                WebLoadView webLoadView2 = WebLoadView.this;
                                MyWebSafe myWebSafe2 = webLoadView2.b;
                                if (myWebSafe2 == null) {
                                    return;
                                }
                                webLoadView2.e = false;
                                myWebSafe2.removeJavascriptInterface("android");
                            }
                        });
                        return;
                    }
                    return;
                }
                return;
            }
            if (!webLoadView.e) {
                webLoadView.e = true;
                MyWebSafe myWebSafe2 = webLoadView.b;
                if (myWebSafe2 == null) {
                    return;
                }
                myWebSafe2.post(new Runnable() { // from class: com.mycompany.app.web.WebLoadView.3
                    @Override // java.lang.Runnable
                    public final void run() {
                        WebLoadView webLoadView2 = WebLoadView.this;
                        MyWebSafe myWebSafe3 = webLoadView2.b;
                        if (myWebSafe3 == null) {
                            return;
                        }
                        webLoadView2.e = true;
                        myWebSafe3.addJavascriptInterface(new WebAppInterface(), "android");
                    }
                });
            }
        }
    }

    public final void b() {
        WebLoadTask c2 = WebLoadTask.c();
        c2.f = false;
        WebLoadTask.LoadTask loadTask = c2.d;
        if (loadTask != null) {
            loadTask.f12839c = true;
        }
        c2.d = null;
        c2.f19284a = false;
        c2.b = null;
        c2.f19285c = null;
        c2.e = 0;
        c2.f = false;
        this.d = null;
        MyWebSafe myWebSafe = this.b;
        if (myWebSafe != null) {
            if (this.f19291c) {
                this.f19291c = false;
                myWebSafe.stopLoading();
            }
            MainUtil.P6(this.b);
            this.b = null;
        }
        this.f19290a = null;
    }

    /* loaded from: classes3.dex */
    public class LocalWebViewClient extends WebViewClient {
        public LocalWebViewClient() {
        }

        @Override // android.webkit.WebViewClient
        public final void onPageFinished(WebView webView, String str) {
            final WebLoadView webLoadView = WebLoadView.this;
            if (webLoadView.b != null) {
                webLoadView.f19291c = false;
                WebLoadView.a(webLoadView, str);
                if (!webLoadView.f && !TextUtils.isEmpty(str) && !str.equals(webLoadView.g)) {
                    webLoadView.f = true;
                    webLoadView.g = str;
                    ViewGroup viewGroup = webLoadView.f19290a;
                    if (viewGroup != null) {
                        viewGroup.post(new Runnable() { // from class: com.mycompany.app.web.WebLoadView.4
                            @Override // java.lang.Runnable
                            public final void run() {
                                WebLoadView webLoadView2 = WebLoadView.this;
                                MainUtil.l(webLoadView2.b);
                                webLoadView2.f = false;
                            }
                        });
                    }
                }
                webLoadView.d = str;
                WebLoadTask c2 = WebLoadTask.c();
                if (c2.b != null) {
                    c2.e = 2;
                    WebLoadTask.WebLoadTaskListener webLoadTaskListener = c2.f19285c;
                    if (webLoadTaskListener != null) {
                        webLoadTaskListener.e();
                    }
                }
            }
        }

        @Override // android.webkit.WebViewClient
        public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            WebLoadView webLoadView = WebLoadView.this;
            if (webLoadView.b == null) {
                return;
            }
            webLoadView.f19291c = true;
            WebLoadView.a(webLoadView, str);
            webLoadView.d = str;
            WebLoadTask.c().h(0);
        }

        @Override // android.webkit.WebViewClient
        public final void onReceivedError(WebView webView, int i, String str, String str2) {
            super.onReceivedError(webView, i, str, str2);
            WebLoadTask.c().f(i);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r4v1, types: [java.lang.Object, java.lang.Runnable] */
        @Override // android.webkit.WebViewClient
        public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            WebLoadView webLoadView = WebLoadView.this;
            webLoadView.b = null;
            MainUtil.D(webView, renderProcessGoneDetail);
            ViewGroup viewGroup = webLoadView.f19290a;
            if (viewGroup != 0) {
                viewGroup.post(new Object());
                return true;
            }
            return true;
        }

        @Override // android.webkit.WebViewClient
        public final WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
            WebLoadView webLoadView = WebLoadView.this;
            if (webLoadView.b != null && webResourceRequest != null && webResourceRequest.getUrl() != null) {
                WebLoadView.a(webLoadView, webResourceRequest.getUrl().toString());
            }
            return null;
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
            WebLoadView webLoadView = WebLoadView.this;
            if (webLoadView.b == null || TextUtils.isEmpty(str)) {
                return true;
            }
            WebLoadView.a(webLoadView, str);
            webLoadView.b.loadUrl(str);
            return true;
        }

        @Override // android.webkit.WebViewClient
        public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            super.onReceivedError(webView, webResourceRequest, webResourceError);
            if (webResourceError == null) {
                return;
            }
            WebLoadTask.c().f(webResourceError.getErrorCode());
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            WebLoadView webLoadView = WebLoadView.this;
            if (webLoadView.b != null && webResourceRequest != null && webResourceRequest.getUrl() != null) {
                String uri = webResourceRequest.getUrl().toString();
                if (!TextUtils.isEmpty(uri)) {
                    WebLoadView.a(webLoadView, uri);
                    webLoadView.b.loadUrl(uri);
                }
            }
            return true;
        }
    }
}
