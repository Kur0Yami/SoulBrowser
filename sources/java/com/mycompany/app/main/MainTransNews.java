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
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.pref.PrefZtwo;
import com.mycompany.app.quick.QuickAdapter;
import com.mycompany.app.view.MyWebSafe;
import java.util.List;
import java.util.concurrent.ExecutorService;

/* loaded from: classes3.dex */
public class MainTransNews {

    /* renamed from: a, reason: collision with root package name */
    public MainActivity f16866a;
    public Context b;

    /* renamed from: c, reason: collision with root package name */
    public TransNewsListener f16867c;
    public ViewGroup d;
    public List e;
    public MyWebSafe f;
    public boolean g;
    public boolean h;
    public boolean i;
    public String j;
    public int k;
    public boolean l;
    public String m;
    public String n;
    public boolean o;
    public int p;
    public ExecutorService q;
    public int r;
    public boolean s;
    public boolean t;
    public boolean u;
    public boolean v;
    public String w;
    public String x;
    public String y;

    /* renamed from: com.mycompany.app.main.MainTransNews$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass2 implements Runnable {

        /* renamed from: com.mycompany.app.main.MainTransNews$2$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 implements Runnable {
            public AnonymousClass1() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                MainTransNews mainTransNews = MainTransNews.this;
                MyWebSafe myWebSafe = mainTransNews.f;
                if (myWebSafe != null) {
                    myWebSafe.setWebViewClient(new LocalWebViewClient());
                    ViewGroup viewGroup = mainTransNews.d;
                    if (viewGroup == null) {
                        return;
                    }
                    viewGroup.post(new Runnable() { // from class: com.mycompany.app.main.MainTransNews.2.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                            MainTransNews mainTransNews2 = MainTransNews.this;
                            MyWebSafe myWebSafe2 = mainTransNews2.f;
                            if (myWebSafe2 != null) {
                                mainTransNews2.i = true;
                                myWebSafe2.addJavascriptInterface(new WebAppInterface(), "android");
                                ViewGroup viewGroup2 = MainTransNews.this.d;
                                if (viewGroup2 == null) {
                                    return;
                                }
                                viewGroup2.post(new Runnable() { // from class: com.mycompany.app.main.MainTransNews.2.1.1.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        MainTransNews mainTransNews3 = MainTransNews.this;
                                        if (mainTransNews3.f == null) {
                                            return;
                                        }
                                        TransNewsListener transNewsListener = mainTransNews3.f16867c;
                                        if (transNewsListener != null) {
                                            mainTransNews3.r = transNewsListener.b();
                                        }
                                        mainTransNews3.c(new AnonymousClass7());
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
            MainTransNews mainTransNews = MainTransNews.this;
            MyWebSafe myWebSafe = mainTransNews.f;
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
                ViewGroup viewGroup = mainTransNews.d;
                if (viewGroup == null) {
                    return;
                }
                viewGroup.post(new AnonymousClass1());
            }
        }
    }

    /* renamed from: com.mycompany.app.main.MainTransNews$7, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass7 implements Runnable {
        public AnonymousClass7() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            String str;
            int size;
            int i;
            QuickAdapter.QuickItem quickItem;
            MainTransNews mainTransNews = MainTransNews.this;
            List list = mainTransNews.e;
            if (list == null || (size = list.size()) == 0) {
                str = null;
            } else {
                StringBuilder sb = new StringBuilder("<!DOCTYPE html><html><head><meta charset=\"utf-8\"/><meta name='viewport' content='width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no'/><style>body{margin:0;}div{margin:0;position:absolute;max-width:100%;height:auto;}p,h1,h2{margin:0;font-size:10px;}</style></head><body>");
                for (int i2 = 0; i2 < size; i2++) {
                    boolean z = mainTransNews.s;
                    mainTransNews.s = !z;
                    if (!z) {
                        int i3 = mainTransNews.r;
                        i = i3 - i2;
                        if (i < 0) {
                            i = i3 + 1;
                            mainTransNews.s = z;
                        }
                    } else {
                        int i4 = mainTransNews.r;
                        i = i4 + i2;
                        if (i >= size) {
                            i = i4 - 1;
                            mainTransNews.s = z;
                        }
                    }
                    mainTransNews.r = i;
                    if (i >= 0 && i < size && (quickItem = (QuickAdapter.QuickItem) list.get(i)) != null && quickItem.f17362a == 7) {
                        sb.append("<div id='");
                        sb.append(quickItem.o);
                        sb.append("'><p>");
                        sb.append(quickItem.f);
                        sb.append("</p><h1>");
                        sb.append(quickItem.r);
                        sb.append("</h1></div>");
                    }
                }
                sb.append("</body></html>");
                str = sb.toString();
            }
            mainTransNews.x = str;
            mainTransNews.n = MainUtil.M1("soul_title_", null);
            MyWebSafe myWebSafe = mainTransNews.f;
            if (myWebSafe == null) {
                return;
            }
            myWebSafe.post(new Runnable() { // from class: com.mycompany.app.main.MainTransNews.7.1
                @Override // java.lang.Runnable
                public final void run() {
                    MyWebSafe myWebSafe2;
                    MainTransNews mainTransNews2 = MainTransNews.this;
                    String str2 = mainTransNews2.x;
                    mainTransNews2.x = null;
                    if (TextUtils.isEmpty(str2) || (myWebSafe2 = mainTransNews2.f) == null) {
                        return;
                    }
                    MainUtil.r6(myWebSafe2, mainTransNews2.n, str2);
                    mainTransNews2.c(new Runnable() { // from class: com.mycompany.app.main.MainTransNews.7.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            String str3;
                            MainTransNews mainTransNews3;
                            AnonymousClass7 anonymousClass7 = AnonymousClass7.this;
                            MainTransNews mainTransNews4 = MainTransNews.this;
                            if (mainTransNews4.f != null) {
                                StringBuilder N3 = MainUtil.N3();
                                if (N3 != null) {
                                    String M2 = MainUtil.M2(null);
                                    if (!TextUtils.isEmpty(M2)) {
                                        N3.insert(0, M2);
                                        str3 = N3.toString();
                                        mainTransNews4.j = str3;
                                        mainTransNews3 = MainTransNews.this;
                                        if (!mainTransNews3.h && !TextUtils.isEmpty(mainTransNews3.j)) {
                                            String str4 = mainTransNews3.j;
                                            mainTransNews3.h = false;
                                            mainTransNews3.j = null;
                                            MainUtil.J(mainTransNews3.f, str4, true);
                                            return;
                                        }
                                    }
                                }
                                str3 = null;
                                mainTransNews4.j = str3;
                                mainTransNews3 = MainTransNews.this;
                                if (!mainTransNews3.h) {
                                }
                            }
                        }
                    });
                }
            });
        }
    }

    /* loaded from: classes3.dex */
    public interface TransNewsListener {
        void a(boolean z);

        int b();
    }

    /* loaded from: classes3.dex */
    public class WebAppInterface {
        public WebAppInterface() {
        }

        @JavascriptInterface
        public void onDocHtml(String str) {
            final MainTransNews mainTransNews = MainTransNews.this;
            if (mainTransNews.f == null) {
                return;
            }
            mainTransNews.y = str;
            mainTransNews.c(new Runnable() { // from class: com.mycompany.app.main.MainTransNews.9
                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Removed duplicated region for block: B:25:0x0108 A[ORIG_RETURN, RETURN] */
                /* JADX WARN: Removed duplicated region for block: B:26:0x0109  */
                /* JADX WARN: Removed duplicated region for block: B:7:0x00d6  */
                @Override // java.lang.Runnable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final void run() {
                    /*
                        Method dump skipped, instructions count: 274
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.main.MainTransNews.AnonymousClass9.run():void");
                }
            });
        }

        @JavascriptInterface
        public void onObserDet(String str, int i) {
            boolean z = true;
            MainTransNews mainTransNews = MainTransNews.this;
            if (i == 0) {
                mainTransNews.k = 1;
            } else {
                mainTransNews.k = 3;
                if (i != 2) {
                    z = false;
                }
                mainTransNews.l = z;
                if (TextUtils.isEmpty(PrefZtwo.P)) {
                    PrefZtwo.P = str;
                    PrefSet.c(16, mainTransNews.b, "mNewsPick", str);
                }
                if (MainUtil.q5(mainTransNews.m, str)) {
                    mainTransNews.m = null;
                }
            }
            ViewGroup viewGroup = mainTransNews.d;
            if (viewGroup == null) {
                return;
            }
            viewGroup.post(new Runnable() { // from class: com.mycompany.app.main.MainTransNews.WebAppInterface.1
                @Override // java.lang.Runnable
                public final void run() {
                    final MainTransNews mainTransNews2 = MainTransNews.this;
                    if (mainTransNews2.k != 1) {
                        final String str2 = mainTransNews2.m;
                        mainTransNews2.m = null;
                        if (!TextUtils.isEmpty(str2)) {
                            if (!TextUtils.isEmpty(str2)) {
                                mainTransNews2.c(new Runnable() { // from class: com.mycompany.app.main.MainTransNews.8
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        MainUtil.M7(MainTransNews.this.f, str2);
                                    }
                                });
                            }
                        } else if (mainTransNews2.l && !mainTransNews2.o) {
                            mainTransNews2.o = true;
                            mainTransNews2.p = 0;
                            MyWebSafe myWebSafe = mainTransNews2.f;
                            if (myWebSafe != null) {
                                myWebSafe.postDelayed(new Runnable() { // from class: com.mycompany.app.main.MainTransNews.WebAppInterface.1.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        MyWebSafe myWebSafe2 = MainTransNews.this.f;
                                        if (myWebSafe2 == null) {
                                            return;
                                        }
                                        MainUtil.I(myWebSafe2, "(function(){android.onDocHtml(document.documentElement.innerHTML);})();", false);
                                    }
                                }, 100L);
                            }
                        }
                    }
                }
            });
        }
    }

    public MainTransNews(MainActivity mainActivity, Context context, ViewGroup viewGroup, List list, TransNewsListener transNewsListener) {
        if (context != null && viewGroup != null) {
            this.f16866a = mainActivity;
            this.b = context;
            this.f16867c = transNewsListener;
            this.d = viewGroup;
            this.e = list;
            this.t = true;
            this.k = 1;
            this.m = PrefZtwo.P;
            viewGroup.post(new Runnable() { // from class: com.mycompany.app.main.MainTransNews.1
                @Override // java.lang.Runnable
                public final void run() {
                    MainTransNews mainTransNews = MainTransNews.this;
                    if (mainTransNews.d != null && mainTransNews.f == null) {
                        if (mainTransNews.f16866a != null) {
                            mainTransNews.f = new MyWebSafe(mainTransNews.f16866a);
                        } else if (mainTransNews.b != null) {
                            mainTransNews.f = new MyWebSafe(mainTransNews.b);
                        } else {
                            return;
                        }
                        MainApp.I(mainTransNews.b, mainTransNews.f);
                        mainTransNews.f.setVisibility(4);
                        mainTransNews.d.addView(mainTransNews.f, 0, new ViewGroup.LayoutParams(-1, -2));
                        mainTransNews.d.post(new AnonymousClass2());
                    }
                }
            });
        }
    }

    public static void a(MainTransNews mainTransNews, String str) {
        if (mainTransNews.f != null) {
            if (MainUtil.D5(str)) {
                if (mainTransNews.i) {
                    mainTransNews.i = false;
                    MyWebSafe myWebSafe = mainTransNews.f;
                    if (myWebSafe != null) {
                        myWebSafe.post(new Runnable() { // from class: com.mycompany.app.main.MainTransNews.5
                            @Override // java.lang.Runnable
                            public final void run() {
                                MainTransNews mainTransNews2 = MainTransNews.this;
                                MyWebSafe myWebSafe2 = mainTransNews2.f;
                                if (myWebSafe2 == null) {
                                    return;
                                }
                                mainTransNews2.i = false;
                                myWebSafe2.removeJavascriptInterface("android");
                            }
                        });
                        return;
                    }
                    return;
                }
                return;
            }
            if (!mainTransNews.i) {
                mainTransNews.i = true;
                MyWebSafe myWebSafe2 = mainTransNews.f;
                if (myWebSafe2 == null) {
                    return;
                }
                myWebSafe2.post(new Runnable() { // from class: com.mycompany.app.main.MainTransNews.6
                    @Override // java.lang.Runnable
                    public final void run() {
                        MainTransNews mainTransNews2 = MainTransNews.this;
                        MyWebSafe myWebSafe3 = mainTransNews2.f;
                        if (myWebSafe3 == null) {
                            return;
                        }
                        mainTransNews2.i = true;
                        myWebSafe3.addJavascriptInterface(new WebAppInterface(), "android");
                    }
                });
            }
        }
    }

    public final void b() {
        MyWebSafe myWebSafe = this.f;
        if (myWebSafe != null) {
            if (this.g) {
                this.g = false;
                myWebSafe.stopLoading();
            }
            MainUtil.P6(this.f);
            this.f = null;
        }
        this.f16866a = null;
        this.b = null;
        this.f16867c = null;
        this.d = null;
        this.e = null;
        this.j = null;
        this.m = null;
        this.n = null;
        this.q = null;
    }

    public final void c(Runnable runnable) {
        ExecutorService executorService = this.q;
        if (executorService == null || executorService.isShutdown() || executorService.isTerminated()) {
            executorService = MainApp.i(this.b);
            if (executorService == null) {
                return;
            } else {
                this.q = executorService;
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
            final MainTransNews mainTransNews = MainTransNews.this;
            if (mainTransNews.f != null) {
                mainTransNews.g = false;
                MainTransNews.a(mainTransNews, str);
                if (!mainTransNews.v && !TextUtils.isEmpty(str) && !str.equals(mainTransNews.w)) {
                    mainTransNews.v = true;
                    mainTransNews.w = str;
                    ViewGroup viewGroup = mainTransNews.d;
                    if (viewGroup != null) {
                        viewGroup.post(new Runnable() { // from class: com.mycompany.app.main.MainTransNews.3
                            @Override // java.lang.Runnable
                            public final void run() {
                                MainTransNews mainTransNews2 = MainTransNews.this;
                                MainUtil.l(mainTransNews2.f);
                                mainTransNews2.v = false;
                            }
                        });
                    }
                }
                mainTransNews.h = true;
                if (TextUtils.isEmpty(mainTransNews.j)) {
                    return;
                }
                String str2 = mainTransNews.j;
                mainTransNews.h = false;
                mainTransNews.j = null;
                MainUtil.J(mainTransNews.f, str2, true);
            }
        }

        @Override // android.webkit.WebViewClient
        public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            MainTransNews mainTransNews = MainTransNews.this;
            if (mainTransNews.f == null) {
                return;
            }
            mainTransNews.g = true;
            MainTransNews.a(mainTransNews, str);
        }

        @Override // android.webkit.WebViewClient
        public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            final MainTransNews mainTransNews = MainTransNews.this;
            mainTransNews.f = null;
            MainUtil.D(webView, renderProcessGoneDetail);
            ViewGroup viewGroup = mainTransNews.d;
            if (viewGroup != null) {
                viewGroup.post(new Runnable() { // from class: com.mycompany.app.main.MainTransNews.4
                    @Override // java.lang.Runnable
                    public final void run() {
                        MainTransNews mainTransNews2 = MainTransNews.this;
                        TransNewsListener transNewsListener = mainTransNews2.f16867c;
                        if (transNewsListener != null) {
                            transNewsListener.a(false);
                        }
                        mainTransNews2.o = false;
                    }
                });
                return true;
            }
            return true;
        }

        @Override // android.webkit.WebViewClient
        public final WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
            MainTransNews mainTransNews = MainTransNews.this;
            if (mainTransNews.f != null && webResourceRequest != null && webResourceRequest.getUrl() != null) {
                MainTransNews.a(mainTransNews, webResourceRequest.getUrl().toString());
            }
            return null;
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
            MainTransNews mainTransNews = MainTransNews.this;
            if (mainTransNews.f == null || TextUtils.isEmpty(str)) {
                return true;
            }
            MainTransNews.a(mainTransNews, str);
            mainTransNews.f.loadUrl(str);
            return true;
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            MainTransNews mainTransNews = MainTransNews.this;
            if (mainTransNews.f != null && webResourceRequest != null && webResourceRequest.getUrl() != null) {
                String uri = webResourceRequest.getUrl().toString();
                if (!TextUtils.isEmpty(uri)) {
                    MainTransNews.a(mainTransNews, uri);
                }
            }
            return false;
        }
    }
}
