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
import com.mycompany.app.dialog.DialogSetDesk;
import com.mycompany.app.pref.PrefAlbum;
import com.mycompany.app.view.MyWebSafe;
import com.mycompany.app.web.WebReadTask;
import java.util.List;
import java.util.concurrent.ExecutorService;

/* loaded from: classes3.dex */
public class MainTransText {

    /* renamed from: a, reason: collision with root package name */
    public MainActivity f16912a;
    public Context b;

    /* renamed from: c, reason: collision with root package name */
    public DialogSetDesk.SetDeskListener f16913c;
    public ViewGroup d;
    public List e;
    public final int f;
    public MyWebSafe g;
    public boolean h;
    public boolean i;
    public boolean j;
    public String k;
    public int l;
    public boolean m;
    public String n;
    public String o;
    public boolean p;
    public int q;
    public ExecutorService r;
    public boolean s;
    public String t;
    public String u;
    public String v;

    /* renamed from: com.mycompany.app.main.MainTransText$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass2 implements Runnable {

        /* renamed from: com.mycompany.app.main.MainTransText$2$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 implements Runnable {
            public AnonymousClass1() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                MainTransText mainTransText = MainTransText.this;
                MyWebSafe myWebSafe = mainTransText.g;
                if (myWebSafe != null) {
                    myWebSafe.setWebViewClient(new LocalWebViewClient());
                    ViewGroup viewGroup = mainTransText.d;
                    if (viewGroup == null) {
                        return;
                    }
                    viewGroup.post(new Runnable() { // from class: com.mycompany.app.main.MainTransText.2.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                            MainTransText mainTransText2 = MainTransText.this;
                            MyWebSafe myWebSafe2 = mainTransText2.g;
                            if (myWebSafe2 != null) {
                                mainTransText2.j = true;
                                myWebSafe2.addJavascriptInterface(new WebAppInterface(), "android");
                                ViewGroup viewGroup2 = MainTransText.this.d;
                                if (viewGroup2 == null) {
                                    return;
                                }
                                viewGroup2.post(new Runnable() { // from class: com.mycompany.app.main.MainTransText.2.1.1.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        MainTransText mainTransText3 = MainTransText.this;
                                        if (mainTransText3.g == null) {
                                            return;
                                        }
                                        mainTransText3.c(new AnonymousClass7());
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
            MainTransText mainTransText = MainTransText.this;
            MyWebSafe myWebSafe = mainTransText.g;
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
                ViewGroup viewGroup = mainTransText.d;
                if (viewGroup == null) {
                    return;
                }
                viewGroup.post(new AnonymousClass1());
            }
        }
    }

    /* renamed from: com.mycompany.app.main.MainTransText$7, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass7 implements Runnable {
        public AnonymousClass7() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            String str;
            MainTransText mainTransText = MainTransText.this;
            List<WebReadTask.ReadItem> list = mainTransText.e;
            if (list != null && !list.isEmpty()) {
                StringBuilder sb = new StringBuilder("<!DOCTYPE html><html><head><meta charset=\"utf-8\"/><meta name='viewport' content='width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no'/><style>body{margin:0;}div{margin:0;position:absolute;max-width:100%;height:auto;}p{margin:0;font-size:10px;}</style></head><body>");
                for (WebReadTask.ReadItem readItem : list) {
                    if (readItem != null) {
                        sb.append("<div id='");
                        sb.append(readItem.f);
                        sb.append("'><p>");
                        sb.append(readItem.b);
                        sb.append("</p></div>");
                    }
                }
                sb.append("</body></html>");
                str = sb.toString();
            } else {
                str = null;
            }
            mainTransText.u = str;
            if (TextUtils.isEmpty(mainTransText.o)) {
                mainTransText.o = MainUtil.M1("soul_trans_", null);
            }
            MyWebSafe myWebSafe = mainTransText.g;
            if (myWebSafe == null) {
                return;
            }
            myWebSafe.post(new Runnable() { // from class: com.mycompany.app.main.MainTransText.7.1
                @Override // java.lang.Runnable
                public final void run() {
                    MyWebSafe myWebSafe2;
                    MainTransText mainTransText2 = MainTransText.this;
                    String str2 = mainTransText2.u;
                    mainTransText2.u = null;
                    if (TextUtils.isEmpty(str2) || (myWebSafe2 = mainTransText2.g) == null) {
                        return;
                    }
                    MainUtil.r6(myWebSafe2, mainTransText2.o, str2);
                    mainTransText2.c(new Runnable() { // from class: com.mycompany.app.main.MainTransText.7.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            String str3;
                            MainTransText mainTransText3;
                            AnonymousClass7 anonymousClass7 = AnonymousClass7.this;
                            MainTransText mainTransText4 = MainTransText.this;
                            if (mainTransText4.g != null) {
                                StringBuilder N3 = MainUtil.N3();
                                if (N3 != null) {
                                    String M2 = MainUtil.M2(null);
                                    if (!TextUtils.isEmpty(M2)) {
                                        N3.insert(0, M2);
                                        str3 = N3.toString();
                                        mainTransText4.k = str3;
                                        mainTransText3 = MainTransText.this;
                                        if (!mainTransText3.i && !TextUtils.isEmpty(mainTransText3.k)) {
                                            String str4 = mainTransText3.k;
                                            mainTransText3.i = false;
                                            mainTransText3.k = null;
                                            MainUtil.J(mainTransText3.g, str4, true);
                                            return;
                                        }
                                    }
                                }
                                str3 = null;
                                mainTransText4.k = str3;
                                mainTransText3 = MainTransText.this;
                                if (!mainTransText3.i) {
                                }
                            }
                        }
                    });
                }
            });
        }
    }

    /* loaded from: classes3.dex */
    public class WebAppInterface {
        public WebAppInterface() {
        }

        @JavascriptInterface
        public void onDocHtml(String str) {
            final MainTransText mainTransText = MainTransText.this;
            if (mainTransText.g == null) {
                return;
            }
            mainTransText.v = str;
            mainTransText.c(new Runnable() { // from class: com.mycompany.app.main.MainTransText.9
                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Removed duplicated region for block: B:17:0x00a9 A[ORIG_RETURN, RETURN] */
                /* JADX WARN: Removed duplicated region for block: B:18:0x00aa  */
                @Override // java.lang.Runnable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final void run() {
                    /*
                        r13 = this;
                        com.mycompany.app.main.MainTransText r0 = com.mycompany.app.main.MainTransText.this
                        java.lang.String r1 = r0.v
                        r2 = 0
                        r0.v = r2
                        r3 = 5
                        r4 = 1
                        r5 = 0
                        boolean r6 = android.text.TextUtils.isEmpty(r1)     // Catch: java.lang.Throwable -> L19
                        if (r6 == 0) goto L12
                        goto L8c
                    L12:
                        java.lang.String r6 = r0.o     // Catch: java.lang.Throwable -> L19
                        org.jsoup.nodes.Document r1 = org.jsoup.Jsoup.parse(r1, r6)     // Catch: java.lang.Throwable -> L19
                        goto L1a
                    L19:
                        r1 = r2
                    L1a:
                        if (r1 != 0) goto L1e
                        goto L8c
                    L1e:
                        java.lang.String r6 = "div"
                        org.jsoup.select.Elements r1 = r1.select(r6)
                        if (r1 == 0) goto L8c
                        int r6 = r1.size()
                        if (r6 != 0) goto L2e
                        goto L8c
                    L2e:
                        int r6 = r0.q
                        if (r6 >= r3) goto L34
                        r6 = r4
                        goto L35
                    L34:
                        r6 = r5
                    L35:
                        int r7 = r1.size()
                        r8 = r5
                    L3a:
                        if (r8 >= r7) goto L8b
                        java.lang.Object r9 = r1.get(r8)
                        int r8 = r8 + 1
                        org.jsoup.nodes.Element r9 = (org.jsoup.nodes.Element) r9
                        if (r9 != 0) goto L47
                        goto L3a
                    L47:
                        java.lang.String r10 = r9.id()
                        int r10 = com.mycompany.app.main.MainUtil.H6(r10)
                        java.util.List r11 = r0.e
                        if (r11 == 0) goto L63
                        if (r10 < 0) goto L63
                        int r12 = r11.size()
                        if (r10 < r12) goto L5c
                        goto L63
                    L5c:
                        java.lang.Object r10 = r11.get(r10)
                        com.mycompany.app.web.WebReadTask$ReadItem r10 = (com.mycompany.app.web.WebReadTask.ReadItem) r10
                        goto L64
                    L63:
                        r10 = r2
                    L64:
                        if (r10 != 0) goto L67
                        goto L3a
                    L67:
                        java.lang.String r11 = "p"
                        org.jsoup.nodes.Element r9 = r9.selectFirst(r11)
                        r11 = 2
                        if (r9 != 0) goto L71
                        goto L84
                    L71:
                        java.lang.String r12 = r9.text()
                        r10.h = r12
                        java.lang.String r12 = "font"
                        org.jsoup.nodes.Element r9 = r9.selectFirst(r12)
                        if (r9 != 0) goto L82
                        r10.i = r4
                        goto L84
                    L82:
                        r10.i = r11
                    L84:
                        int r9 = r10.i
                        if (r9 == r11) goto L3a
                        r5 = r4
                        if (r6 == 0) goto L3a
                    L8b:
                        r5 = r5 ^ r4
                    L8c:
                        if (r5 != 0) goto La5
                        int r1 = r0.q
                        if (r1 >= r3) goto La5
                        int r1 = r1 + r4
                        r0.q = r1
                        com.mycompany.app.view.MyWebSafe r0 = r0.g
                        if (r0 != 0) goto L9a
                        goto La9
                    L9a:
                        com.mycompany.app.main.MainTransText$9$1 r1 = new com.mycompany.app.main.MainTransText$9$1
                        r1.<init>()
                        r2 = 100
                        r0.postDelayed(r1, r2)
                        return
                    La5:
                        com.mycompany.app.view.MyWebSafe r0 = r0.g
                        if (r0 != 0) goto Laa
                    La9:
                        return
                    Laa:
                        com.mycompany.app.main.MainTransText$9$2 r1 = new com.mycompany.app.main.MainTransText$9$2
                        r1.<init>()
                        r0.post(r1)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.main.MainTransText.AnonymousClass9.run():void");
                }
            });
        }

        @JavascriptInterface
        public void onObserDet(String str, int i) {
            boolean z = true;
            MainTransText mainTransText = MainTransText.this;
            if (i == 0) {
                mainTransText.l = 1;
            } else {
                mainTransText.l = 3;
                if (i != 2) {
                    z = false;
                }
                mainTransText.m = z;
                if (TextUtils.isEmpty(PrefAlbum.y)) {
                    PrefAlbum.y = str;
                    PrefAlbum.z = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                    PrefAlbum.u(mainTransText.b);
                }
                if (MainUtil.q5(mainTransText.n, str)) {
                    mainTransText.n = null;
                }
            }
            ViewGroup viewGroup = mainTransText.d;
            if (viewGroup == null) {
                return;
            }
            viewGroup.post(new Runnable() { // from class: com.mycompany.app.main.MainTransText.WebAppInterface.1
                @Override // java.lang.Runnable
                public final void run() {
                    final MainTransText mainTransText2 = MainTransText.this;
                    if (mainTransText2.l != 1) {
                        final String str2 = mainTransText2.n;
                        mainTransText2.n = null;
                        if (!TextUtils.isEmpty(str2)) {
                            if (!TextUtils.isEmpty(str2)) {
                                mainTransText2.c(new Runnable() { // from class: com.mycompany.app.main.MainTransText.8
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        MainUtil.M7(MainTransText.this.g, str2);
                                    }
                                });
                            }
                        } else if (mainTransText2.m && !mainTransText2.p) {
                            mainTransText2.p = true;
                            mainTransText2.q = 0;
                            MyWebSafe myWebSafe = mainTransText2.g;
                            if (myWebSafe != null) {
                                myWebSafe.postDelayed(new Runnable() { // from class: com.mycompany.app.main.MainTransText.WebAppInterface.1.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        MyWebSafe myWebSafe2 = MainTransText.this.g;
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

    public MainTransText(MainActivity mainActivity, Context context, ViewGroup viewGroup, List list, int i, String str, DialogSetDesk.SetDeskListener setDeskListener) {
        if (context != null && viewGroup != null) {
            this.f16912a = mainActivity;
            this.b = context;
            this.f16913c = setDeskListener;
            this.d = viewGroup;
            this.e = list;
            this.f = i;
            this.o = str;
            this.l = 1;
            this.n = PrefAlbum.y;
            viewGroup.post(new Runnable() { // from class: com.mycompany.app.main.MainTransText.1
                @Override // java.lang.Runnable
                public final void run() {
                    MainTransText mainTransText = MainTransText.this;
                    if (mainTransText.d != null && mainTransText.g == null) {
                        if (mainTransText.f16912a != null) {
                            mainTransText.g = new MyWebSafe(mainTransText.f16912a);
                        } else if (mainTransText.b != null) {
                            mainTransText.g = new MyWebSafe(mainTransText.b);
                        } else {
                            return;
                        }
                        MainApp.I(mainTransText.b, mainTransText.g);
                        mainTransText.g.setVisibility(4);
                        int i2 = mainTransText.f;
                        if (i2 <= 0) {
                            i2 = -2;
                        }
                        mainTransText.d.addView(mainTransText.g, 0, new ViewGroup.LayoutParams(-1, i2));
                        mainTransText.d.post(new AnonymousClass2());
                    }
                }
            });
        }
    }

    public static void a(MainTransText mainTransText, String str) {
        if (mainTransText.g != null) {
            if (MainUtil.D5(str)) {
                if (mainTransText.j) {
                    mainTransText.j = false;
                    MyWebSafe myWebSafe = mainTransText.g;
                    if (myWebSafe != null) {
                        myWebSafe.post(new Runnable() { // from class: com.mycompany.app.main.MainTransText.5
                            @Override // java.lang.Runnable
                            public final void run() {
                                MainTransText mainTransText2 = MainTransText.this;
                                MyWebSafe myWebSafe2 = mainTransText2.g;
                                if (myWebSafe2 == null) {
                                    return;
                                }
                                mainTransText2.j = false;
                                myWebSafe2.removeJavascriptInterface("android");
                            }
                        });
                        return;
                    }
                    return;
                }
                return;
            }
            if (!mainTransText.j) {
                mainTransText.j = true;
                MyWebSafe myWebSafe2 = mainTransText.g;
                if (myWebSafe2 == null) {
                    return;
                }
                myWebSafe2.post(new Runnable() { // from class: com.mycompany.app.main.MainTransText.6
                    @Override // java.lang.Runnable
                    public final void run() {
                        MainTransText mainTransText2 = MainTransText.this;
                        MyWebSafe myWebSafe3 = mainTransText2.g;
                        if (myWebSafe3 == null) {
                            return;
                        }
                        mainTransText2.j = true;
                        myWebSafe3.addJavascriptInterface(new WebAppInterface(), "android");
                    }
                });
            }
        }
    }

    public final void b() {
        MyWebSafe myWebSafe = this.g;
        if (myWebSafe != null) {
            if (this.h) {
                this.h = false;
                myWebSafe.stopLoading();
            }
            MainUtil.P6(this.g);
            this.g = null;
        }
        this.f16912a = null;
        this.b = null;
        this.f16913c = null;
        this.d = null;
        this.e = null;
        this.k = null;
        this.n = null;
        this.o = null;
        this.r = null;
    }

    public final void c(Runnable runnable) {
        ExecutorService executorService = this.r;
        if (executorService == null || executorService.isShutdown() || executorService.isTerminated()) {
            executorService = MainApp.i(this.b);
            if (executorService == null) {
                return;
            } else {
                this.r = executorService;
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
            final MainTransText mainTransText = MainTransText.this;
            if (mainTransText.g != null) {
                mainTransText.h = false;
                MainTransText.a(mainTransText, str);
                if (!mainTransText.s && !TextUtils.isEmpty(str) && !str.equals(mainTransText.t)) {
                    mainTransText.s = true;
                    mainTransText.t = str;
                    ViewGroup viewGroup = mainTransText.d;
                    if (viewGroup != null) {
                        viewGroup.post(new Runnable() { // from class: com.mycompany.app.main.MainTransText.3
                            @Override // java.lang.Runnable
                            public final void run() {
                                MainTransText mainTransText2 = MainTransText.this;
                                MainUtil.l(mainTransText2.g);
                                mainTransText2.s = false;
                            }
                        });
                    }
                }
                mainTransText.i = true;
                if (TextUtils.isEmpty(mainTransText.k)) {
                    return;
                }
                String str2 = mainTransText.k;
                mainTransText.i = false;
                mainTransText.k = null;
                MainUtil.J(mainTransText.g, str2, true);
            }
        }

        @Override // android.webkit.WebViewClient
        public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            MainTransText mainTransText = MainTransText.this;
            if (mainTransText.g == null) {
                return;
            }
            mainTransText.h = true;
            MainTransText.a(mainTransText, str);
        }

        @Override // android.webkit.WebViewClient
        public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            final MainTransText mainTransText = MainTransText.this;
            mainTransText.g = null;
            MainUtil.D(webView, renderProcessGoneDetail);
            ViewGroup viewGroup = mainTransText.d;
            if (viewGroup != null) {
                viewGroup.post(new Runnable() { // from class: com.mycompany.app.main.MainTransText.4
                    @Override // java.lang.Runnable
                    public final void run() {
                        MainTransText mainTransText2 = MainTransText.this;
                        DialogSetDesk.SetDeskListener setDeskListener = mainTransText2.f16913c;
                        if (setDeskListener != null) {
                            setDeskListener.a(false);
                        }
                        mainTransText2.p = false;
                    }
                });
                return true;
            }
            return true;
        }

        @Override // android.webkit.WebViewClient
        public final WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
            MainTransText mainTransText = MainTransText.this;
            if (mainTransText.g != null && webResourceRequest != null && webResourceRequest.getUrl() != null) {
                MainTransText.a(mainTransText, webResourceRequest.getUrl().toString());
            }
            return null;
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
            MainTransText mainTransText = MainTransText.this;
            if (mainTransText.g == null || TextUtils.isEmpty(str)) {
                return true;
            }
            MainTransText.a(mainTransText, str);
            mainTransText.g.loadUrl(str);
            return true;
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            MainTransText mainTransText = MainTransText.this;
            if (mainTransText.g != null && webResourceRequest != null && webResourceRequest.getUrl() != null) {
                String uri = webResourceRequest.getUrl().toString();
                if (!TextUtils.isEmpty(uri)) {
                    MainTransText.a(mainTransText, uri);
                }
            }
            return false;
        }
    }
}
