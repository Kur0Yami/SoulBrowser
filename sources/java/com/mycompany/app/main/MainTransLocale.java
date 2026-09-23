package com.mycompany.app.main;

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
import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.main.MainLangAdapter;
import com.mycompany.app.view.MyDialogRelative;
import com.mycompany.app.view.MyWebSafe;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.ExecutorService;

/* loaded from: classes3.dex */
public class MainTransLocale {

    /* renamed from: a, reason: collision with root package name */
    public MainActivity f16845a;
    public Context b;

    /* renamed from: c, reason: collision with root package name */
    public TransLocaleListener f16846c;
    public ViewGroup d;
    public List e;
    public List f;
    public ArrayList g;
    public MyWebSafe h;
    public boolean i;
    public boolean j;
    public boolean k;
    public String l;
    public int m;
    public boolean n;
    public String o;
    public String p;
    public boolean q;
    public boolean r;
    public int s;
    public ExecutorService t;
    public boolean u;
    public String v;
    public String w;
    public String x;

    /* renamed from: com.mycompany.app.main.MainTransLocale$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass2 implements Runnable {

        /* renamed from: com.mycompany.app.main.MainTransLocale$2$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 implements Runnable {
            public AnonymousClass1() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                MainTransLocale mainTransLocale = MainTransLocale.this;
                MyWebSafe myWebSafe = mainTransLocale.h;
                if (myWebSafe != null) {
                    myWebSafe.setWebViewClient(new LocalWebViewClient());
                    ViewGroup viewGroup = mainTransLocale.d;
                    if (viewGroup == null) {
                        return;
                    }
                    viewGroup.post(new Runnable() { // from class: com.mycompany.app.main.MainTransLocale.2.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                            MainTransLocale mainTransLocale2 = MainTransLocale.this;
                            MyWebSafe myWebSafe2 = mainTransLocale2.h;
                            if (myWebSafe2 != null) {
                                mainTransLocale2.k = true;
                                myWebSafe2.addJavascriptInterface(new WebAppInterface(), "android");
                                ViewGroup viewGroup2 = MainTransLocale.this.d;
                                if (viewGroup2 == null) {
                                    return;
                                }
                                viewGroup2.post(new Runnable() { // from class: com.mycompany.app.main.MainTransLocale.2.1.1.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        MainTransLocale mainTransLocale3 = MainTransLocale.this;
                                        if (mainTransLocale3.h == null) {
                                            return;
                                        }
                                        mainTransLocale3.c(new AnonymousClass7());
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
            MainTransLocale mainTransLocale = MainTransLocale.this;
            MyWebSafe myWebSafe = mainTransLocale.h;
            if (myWebSafe != null) {
                WebSettings settings = myWebSafe.getSettings();
                settings.setSupportZoom(true);
                settings.setBuiltInZoomControls(true);
                settings.setDisplayZoomControls(false);
                settings.setUseWideViewPort(true);
                settings.setLoadWithOverviewMode(true);
                settings.setJavaScriptCanOpenWindowsAutomatically(false);
                settings.setSupportMultipleWindows(false);
                settings.setMediaPlaybackRequiresUserGesture(false);
                settings.setJavaScriptEnabled(true);
                myWebSafe.setOverScrollMode(2);
                ViewGroup viewGroup = mainTransLocale.d;
                if (viewGroup == null) {
                    return;
                }
                viewGroup.post(new AnonymousClass1());
            }
        }
    }

    /* renamed from: com.mycompany.app.main.MainTransLocale$7, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass7 implements Runnable {
        public AnonymousClass7() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            String str;
            MainTransLocale mainTransLocale = MainTransLocale.this;
            List<MainLangAdapter.MainLangItem> list = mainTransLocale.f;
            if (list != null && !list.isEmpty()) {
                StringBuilder sb = new StringBuilder("<!DOCTYPE html><html><head><meta charset=\"utf-8\"/><meta name='viewport' content='width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no'/><style>body{margin:0;}div{margin:0;position:absolute;max-width:100%;height:auto;}p,h1{margin:0;font-size:10px;}</style></head><body>");
                for (MainLangAdapter.MainLangItem mainLangItem : list) {
                    if (mainLangItem != null) {
                        String replace = mainLangItem.d.replace(" (", "=").replace(")", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                        if (!TextUtils.isEmpty(replace)) {
                            sb.append("<div id='");
                            sb.append(mainLangItem.f16561c);
                            sb.append("'><p>");
                            sb.append(replace);
                            sb.append("</p><h1>This is test.</h1><h1>이것은 테스트다.</h1><h1>これはテストです。</h1></div>");
                        }
                    }
                }
                sb.append("</body></html>");
                str = sb.toString();
            } else {
                str = null;
            }
            mainTransLocale.w = str;
            if (TextUtils.isEmpty(mainTransLocale.o)) {
                mainTransLocale.o = MainUtil.g2();
            }
            mainTransLocale.p = MainUtil.M1("soul_loc_", mainTransLocale.o);
            String str2 = mainTransLocale.o;
            boolean z = false;
            if (!TextUtils.isEmpty(str2)) {
                String lowerCase = str2.toLowerCase(Locale.US);
                if (!TextUtils.isEmpty(lowerCase)) {
                    z = lowerCase.startsWith("ko");
                }
            }
            mainTransLocale.q = z;
            MyWebSafe myWebSafe = mainTransLocale.h;
            if (myWebSafe == null) {
                return;
            }
            myWebSafe.post(new Runnable() { // from class: com.mycompany.app.main.MainTransLocale.7.1
                @Override // java.lang.Runnable
                public final void run() {
                    MyWebSafe myWebSafe2;
                    MainTransLocale mainTransLocale2 = MainTransLocale.this;
                    String str3 = mainTransLocale2.w;
                    mainTransLocale2.w = null;
                    if (TextUtils.isEmpty(str3) || (myWebSafe2 = mainTransLocale2.h) == null) {
                        return;
                    }
                    MainUtil.r6(myWebSafe2, mainTransLocale2.p, str3);
                    mainTransLocale2.c(new Runnable() { // from class: com.mycompany.app.main.MainTransLocale.7.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            String str4;
                            MainTransLocale mainTransLocale3;
                            AnonymousClass7 anonymousClass7 = AnonymousClass7.this;
                            MainTransLocale mainTransLocale4 = MainTransLocale.this;
                            if (mainTransLocale4.h != null) {
                                StringBuilder N3 = MainUtil.N3();
                                if (N3 != null) {
                                    String M2 = MainUtil.M2(null);
                                    if (!TextUtils.isEmpty(M2)) {
                                        N3.insert(0, M2);
                                        str4 = N3.toString();
                                        mainTransLocale4.l = str4;
                                        mainTransLocale3 = MainTransLocale.this;
                                        if (!mainTransLocale3.j && !TextUtils.isEmpty(mainTransLocale3.l)) {
                                            String str5 = mainTransLocale3.l;
                                            mainTransLocale3.j = false;
                                            mainTransLocale3.l = null;
                                            MainUtil.J(mainTransLocale3.h, str5, true);
                                            return;
                                        }
                                    }
                                }
                                str4 = null;
                                mainTransLocale4.l = str4;
                                mainTransLocale3 = MainTransLocale.this;
                                if (!mainTransLocale3.j) {
                                }
                            }
                        }
                    });
                }
            });
        }
    }

    /* loaded from: classes3.dex */
    public interface TransLocaleListener {
        void a(ArrayList arrayList);
    }

    /* loaded from: classes3.dex */
    public class WebAppInterface {
        public WebAppInterface() {
        }

        @JavascriptInterface
        public void onDocHtml(String str) {
            final MainTransLocale mainTransLocale = MainTransLocale.this;
            if (mainTransLocale.h == null) {
                return;
            }
            mainTransLocale.x = str;
            mainTransLocale.c(new Runnable() { // from class: com.mycompany.app.main.MainTransLocale.8
                /* JADX WARN: Code restructure failed: missing block: B:41:0x0171, code lost:
                
                    if (android.text.TextUtils.isEmpty(r12) != false) goto L120;
                 */
                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Removed duplicated region for block: B:112:0x0282 A[Catch: Exception -> 0x0290, TryCatch #0 {Exception -> 0x0290, blocks: (B:89:0x023d, B:91:0x0241, B:94:0x0248, B:95:0x024c, B:97:0x0252, B:100:0x025b, B:103:0x0261, B:106:0x026b, B:109:0x0272, B:110:0x027a, B:112:0x0282, B:113:0x028c), top: B:88:0x023d }] */
                /* JADX WARN: Removed duplicated region for block: B:128:0x0294 A[ORIG_RETURN, RETURN] */
                /* JADX WARN: Removed duplicated region for block: B:129:0x0295  */
                /* JADX WARN: Removed duplicated region for block: B:21:0x00d1  */
                /* JADX WARN: Removed duplicated region for block: B:64:0x01be  */
                /* JADX WARN: Removed duplicated region for block: B:67:0x01cd  */
                @Override // java.lang.Runnable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final void run() {
                    /*
                        Method dump skipped, instructions count: 670
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.main.MainTransLocale.AnonymousClass8.run():void");
                }
            });
        }

        @JavascriptInterface
        public void onObserDet(String str, int i) {
            boolean z = true;
            MainTransLocale mainTransLocale = MainTransLocale.this;
            if (i == 0) {
                mainTransLocale.m = 1;
            } else {
                mainTransLocale.m = 3;
                if (i != 2) {
                    z = false;
                }
                mainTransLocale.n = z;
            }
            ViewGroup viewGroup = mainTransLocale.d;
            if (viewGroup == null) {
                return;
            }
            viewGroup.post(new Runnable() { // from class: com.mycompany.app.main.MainTransLocale.WebAppInterface.1
                @Override // java.lang.Runnable
                public final void run() {
                    MainTransLocale mainTransLocale2 = MainTransLocale.this;
                    if (mainTransLocale2.m != 1 && mainTransLocale2.n && !mainTransLocale2.r) {
                        mainTransLocale2.r = true;
                        mainTransLocale2.s = 0;
                        MyWebSafe myWebSafe = mainTransLocale2.h;
                        if (myWebSafe != null) {
                            myWebSafe.postDelayed(new Runnable() { // from class: com.mycompany.app.main.MainTransLocale.WebAppInterface.1.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    MyWebSafe myWebSafe2 = MainTransLocale.this.h;
                                    if (myWebSafe2 == null) {
                                        return;
                                    }
                                    MainUtil.I(myWebSafe2, "(function(){android.onDocHtml(document.documentElement.innerHTML);})();", false);
                                }
                            }, 100L);
                        }
                    }
                }
            });
        }
    }

    public MainTransLocale(MainActivity mainActivity, Context context, MyDialogRelative myDialogRelative, List list, ArrayList arrayList, String str, TransLocaleListener transLocaleListener) {
        if (context != null && myDialogRelative != null) {
            this.f16845a = mainActivity;
            this.b = context;
            this.f16846c = transLocaleListener;
            this.d = myDialogRelative;
            this.e = list;
            this.f = arrayList;
            this.o = str;
            this.m = 1;
            myDialogRelative.post(new Runnable() { // from class: com.mycompany.app.main.MainTransLocale.1
                @Override // java.lang.Runnable
                public final void run() {
                    MainTransLocale mainTransLocale = MainTransLocale.this;
                    if (mainTransLocale.d != null && mainTransLocale.h == null) {
                        if (mainTransLocale.f16845a != null) {
                            mainTransLocale.h = new MyWebSafe(mainTransLocale.f16845a);
                        } else if (mainTransLocale.b != null) {
                            mainTransLocale.h = new MyWebSafe(mainTransLocale.b);
                        } else {
                            return;
                        }
                        MainApp.I(mainTransLocale.b, mainTransLocale.h);
                        mainTransLocale.h.setVisibility(4);
                        mainTransLocale.d.addView(mainTransLocale.h, 0, new ViewGroup.LayoutParams(-1, -2));
                        mainTransLocale.d.post(new AnonymousClass2());
                    }
                }
            });
        }
    }

    public static void a(MainTransLocale mainTransLocale, String str) {
        if (mainTransLocale.h != null) {
            if (MainUtil.D5(str)) {
                if (mainTransLocale.k) {
                    mainTransLocale.k = false;
                    MyWebSafe myWebSafe = mainTransLocale.h;
                    if (myWebSafe != null) {
                        myWebSafe.post(new Runnable() { // from class: com.mycompany.app.main.MainTransLocale.5
                            @Override // java.lang.Runnable
                            public final void run() {
                                MainTransLocale mainTransLocale2 = MainTransLocale.this;
                                MyWebSafe myWebSafe2 = mainTransLocale2.h;
                                if (myWebSafe2 == null) {
                                    return;
                                }
                                mainTransLocale2.k = false;
                                myWebSafe2.removeJavascriptInterface("android");
                            }
                        });
                        return;
                    }
                    return;
                }
                return;
            }
            if (!mainTransLocale.k) {
                mainTransLocale.k = true;
                MyWebSafe myWebSafe2 = mainTransLocale.h;
                if (myWebSafe2 == null) {
                    return;
                }
                myWebSafe2.post(new Runnable() { // from class: com.mycompany.app.main.MainTransLocale.6
                    @Override // java.lang.Runnable
                    public final void run() {
                        MainTransLocale mainTransLocale2 = MainTransLocale.this;
                        MyWebSafe myWebSafe3 = mainTransLocale2.h;
                        if (myWebSafe3 == null) {
                            return;
                        }
                        mainTransLocale2.k = true;
                        myWebSafe3.addJavascriptInterface(new WebAppInterface(), "android");
                    }
                });
            }
        }
    }

    public final void b() {
        MyWebSafe myWebSafe = this.h;
        if (myWebSafe != null) {
            if (this.i) {
                this.i = false;
                myWebSafe.stopLoading();
            }
            MainUtil.P6(this.h);
            this.h = null;
        }
        this.f16845a = null;
        this.b = null;
        this.f16846c = null;
        this.d = null;
        this.e = null;
        this.f = null;
        this.g = null;
        this.l = null;
        this.o = null;
        this.p = null;
        this.t = null;
    }

    public final void c(Runnable runnable) {
        ExecutorService executorService = this.t;
        if (executorService == null || executorService.isShutdown() || executorService.isTerminated()) {
            executorService = MainApp.i(this.b);
            if (executorService == null) {
                return;
            } else {
                this.t = executorService;
            }
        }
        try {
            executorService.execute(runnable);
        } catch (Exception unused) {
        }
    }

    /* loaded from: classes3.dex */
    public class LocalWebViewClient extends WebViewClient {
        public LocalWebViewClient() {
        }

        @Override // android.webkit.WebViewClient
        public final void onPageFinished(WebView webView, String str) {
            final MainTransLocale mainTransLocale = MainTransLocale.this;
            if (mainTransLocale.h != null) {
                mainTransLocale.i = false;
                MainTransLocale.a(mainTransLocale, str);
                if (!mainTransLocale.u && !TextUtils.isEmpty(str) && !str.equals(mainTransLocale.v)) {
                    mainTransLocale.u = true;
                    mainTransLocale.v = str;
                    ViewGroup viewGroup = mainTransLocale.d;
                    if (viewGroup != null) {
                        viewGroup.post(new Runnable() { // from class: com.mycompany.app.main.MainTransLocale.3
                            @Override // java.lang.Runnable
                            public final void run() {
                                MainTransLocale mainTransLocale2 = MainTransLocale.this;
                                MainUtil.l(mainTransLocale2.h);
                                mainTransLocale2.u = false;
                            }
                        });
                    }
                }
                mainTransLocale.j = true;
                if (TextUtils.isEmpty(mainTransLocale.l)) {
                    return;
                }
                String str2 = mainTransLocale.l;
                mainTransLocale.j = false;
                mainTransLocale.l = null;
                MainUtil.J(mainTransLocale.h, str2, true);
            }
        }

        @Override // android.webkit.WebViewClient
        public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            MainTransLocale mainTransLocale = MainTransLocale.this;
            if (mainTransLocale.h == null) {
                return;
            }
            mainTransLocale.i = true;
            MainTransLocale.a(mainTransLocale, str);
        }

        @Override // android.webkit.WebViewClient
        public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            final MainTransLocale mainTransLocale = MainTransLocale.this;
            mainTransLocale.h = null;
            MainUtil.D(webView, renderProcessGoneDetail);
            ViewGroup viewGroup = mainTransLocale.d;
            if (viewGroup != null) {
                viewGroup.post(new Runnable() { // from class: com.mycompany.app.main.MainTransLocale.4
                    @Override // java.lang.Runnable
                    public final void run() {
                        MainTransLocale mainTransLocale2 = MainTransLocale.this;
                        TransLocaleListener transLocaleListener = mainTransLocale2.f16846c;
                        if (transLocaleListener != null) {
                            transLocaleListener.a(mainTransLocale2.g);
                        }
                        mainTransLocale2.r = false;
                    }
                });
                return true;
            }
            return true;
        }

        @Override // android.webkit.WebViewClient
        public final WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
            MainTransLocale mainTransLocale = MainTransLocale.this;
            if (mainTransLocale.h != null && webResourceRequest != null && webResourceRequest.getUrl() != null) {
                MainTransLocale.a(mainTransLocale, webResourceRequest.getUrl().toString());
            }
            return null;
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
            MainTransLocale mainTransLocale = MainTransLocale.this;
            if (mainTransLocale.h == null || TextUtils.isEmpty(str)) {
                return true;
            }
            MainTransLocale.a(mainTransLocale, str);
            mainTransLocale.h.loadUrl(str);
            return true;
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            MainTransLocale mainTransLocale = MainTransLocale.this;
            if (mainTransLocale.h != null && webResourceRequest != null && webResourceRequest.getUrl() != null) {
                String uri = webResourceRequest.getUrl().toString();
                if (!TextUtils.isEmpty(uri)) {
                    MainTransLocale.a(mainTransLocale, uri);
                }
            }
            return false;
        }
    }
}
