package com.mycompany.app.main;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
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
import com.mycompany.app.ocr.OcrDetector;
import com.mycompany.app.pref.PrefAlbum;
import com.mycompany.app.view.MyWebSafe;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;

/* loaded from: classes3.dex */
public class MainTransOcr {

    /* renamed from: a, reason: collision with root package name */
    public MainActivity f16889a;
    public Context b;

    /* renamed from: c, reason: collision with root package name */
    public TransOcrListener f16890c;
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
    public Handler r;
    public boolean s;
    public boolean t;
    public String u;
    public String v;
    public String w;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.main.MainTransOcr$3, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass3 implements Runnable {
        public AnonymousClass3() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            MainTransOcr mainTransOcr = MainTransOcr.this;
            if (mainTransOcr.r == null) {
                return;
            }
            if (mainTransOcr.s) {
                mainTransOcr.c();
                TransOcrListener transOcrListener = mainTransOcr.f16890c;
                if (transOcrListener != null) {
                    transOcrListener.a(false);
                }
                mainTransOcr.o = false;
                return;
            }
            mainTransOcr.c();
            mainTransOcr.e(mainTransOcr.e);
            mainTransOcr.s = true;
        }
    }

    /* renamed from: com.mycompany.app.main.MainTransOcr$4, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass4 implements Runnable {

        /* renamed from: com.mycompany.app.main.MainTransOcr$4$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 implements Runnable {
            public AnonymousClass1() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                MainTransOcr mainTransOcr = MainTransOcr.this;
                MyWebSafe myWebSafe = mainTransOcr.f;
                if (myWebSafe != null) {
                    myWebSafe.setWebViewClient(new LocalWebViewClient());
                    ViewGroup viewGroup = mainTransOcr.d;
                    if (viewGroup == null) {
                        return;
                    }
                    viewGroup.post(new Runnable() { // from class: com.mycompany.app.main.MainTransOcr.4.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            AnonymousClass4 anonymousClass4 = AnonymousClass4.this;
                            MainTransOcr mainTransOcr2 = MainTransOcr.this;
                            MyWebSafe myWebSafe2 = mainTransOcr2.f;
                            if (myWebSafe2 != null) {
                                mainTransOcr2.i = true;
                                myWebSafe2.addJavascriptInterface(new WebAppInterface(), "android");
                                ViewGroup viewGroup2 = MainTransOcr.this.d;
                                if (viewGroup2 == null) {
                                    return;
                                }
                                viewGroup2.post(new Runnable() { // from class: com.mycompany.app.main.MainTransOcr.4.1.1.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        MainTransOcr mainTransOcr3 = MainTransOcr.this;
                                        if (mainTransOcr3.f == null) {
                                            return;
                                        }
                                        mainTransOcr3.d(new AnonymousClass9());
                                    }
                                });
                            }
                        }
                    });
                }
            }
        }

        public AnonymousClass4() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            MainTransOcr mainTransOcr = MainTransOcr.this;
            MyWebSafe myWebSafe = mainTransOcr.f;
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
                ViewGroup viewGroup = mainTransOcr.d;
                if (viewGroup == null) {
                    return;
                }
                viewGroup.post(new AnonymousClass1());
            }
        }
    }

    /* renamed from: com.mycompany.app.main.MainTransOcr$9, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass9 implements Runnable {
        public AnonymousClass9() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            String str;
            MainTransOcr mainTransOcr = MainTransOcr.this;
            List<OcrDetector.OcrItem> list = mainTransOcr.e;
            if (list != null && !list.isEmpty()) {
                StringBuilder sb = new StringBuilder("<!DOCTYPE html><html><head><meta charset=\"utf-8\"/><meta name='viewport' content='width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no'/><style>body{margin:0;}div{margin:0;position:absolute;max-width:100%;height:auto;}p{margin:0;font-size:10px;}</style></head><body>");
                for (OcrDetector.OcrItem ocrItem : list) {
                    if (ocrItem != null) {
                        sb.append("<div id='");
                        sb.append(ocrItem.f);
                        sb.append("'><p>");
                        sb.append(ocrItem.k);
                        sb.append("</p></div>");
                    }
                }
                sb.append("</body></html>");
                str = sb.toString();
            } else {
                str = null;
            }
            mainTransOcr.v = str;
            mainTransOcr.n = MainUtil.M1("soul_ocr_", null);
            MyWebSafe myWebSafe = mainTransOcr.f;
            if (myWebSafe == null) {
                return;
            }
            myWebSafe.post(new Runnable() { // from class: com.mycompany.app.main.MainTransOcr.9.1
                @Override // java.lang.Runnable
                public final void run() {
                    MyWebSafe myWebSafe2;
                    MainTransOcr mainTransOcr2 = MainTransOcr.this;
                    String str2 = mainTransOcr2.v;
                    mainTransOcr2.v = null;
                    if (TextUtils.isEmpty(str2) || (myWebSafe2 = mainTransOcr2.f) == null) {
                        return;
                    }
                    MainUtil.r6(myWebSafe2, mainTransOcr2.n, str2);
                    mainTransOcr2.d(new Runnable() { // from class: com.mycompany.app.main.MainTransOcr.9.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            String str3;
                            MainTransOcr mainTransOcr3;
                            AnonymousClass9 anonymousClass9 = AnonymousClass9.this;
                            MainTransOcr mainTransOcr4 = MainTransOcr.this;
                            if (mainTransOcr4.f != null) {
                                StringBuilder N3 = MainUtil.N3();
                                if (N3 != null) {
                                    String M2 = MainUtil.M2(null);
                                    if (!TextUtils.isEmpty(M2)) {
                                        N3.insert(0, M2);
                                        str3 = N3.toString();
                                        mainTransOcr4.j = str3;
                                        mainTransOcr3 = MainTransOcr.this;
                                        if (!mainTransOcr3.h && !TextUtils.isEmpty(mainTransOcr3.j)) {
                                            String str4 = mainTransOcr3.j;
                                            mainTransOcr3.h = false;
                                            mainTransOcr3.j = null;
                                            MainUtil.J(mainTransOcr3.f, str4, true);
                                            return;
                                        }
                                    }
                                }
                                str3 = null;
                                mainTransOcr4.j = str3;
                                mainTransOcr3 = MainTransOcr.this;
                                if (!mainTransOcr3.h) {
                                }
                            }
                        }
                    });
                }
            });
        }
    }

    /* loaded from: classes3.dex */
    public interface TransOcrListener {
        void a(boolean z);

        void b();
    }

    /* loaded from: classes3.dex */
    public class WebAppInterface {
        public WebAppInterface() {
        }

        @JavascriptInterface
        public void onDocHtml(String str) {
            final MainTransOcr mainTransOcr = MainTransOcr.this;
            if (mainTransOcr.f == null) {
                return;
            }
            mainTransOcr.w = str;
            mainTransOcr.d(new Runnable() { // from class: com.mycompany.app.main.MainTransOcr.11
                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Removed duplicated region for block: B:17:0x00ab  */
                @Override // java.lang.Runnable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final void run() {
                    /*
                        r14 = this;
                        com.mycompany.app.main.MainTransOcr r0 = com.mycompany.app.main.MainTransOcr.this
                        java.lang.String r1 = r0.w
                        r2 = 0
                        r0.w = r2
                        r3 = 10
                        r4 = 1
                        r5 = 0
                        boolean r6 = android.text.TextUtils.isEmpty(r1)     // Catch: java.lang.Throwable -> L1b
                        if (r6 == 0) goto L14
                    L11:
                        r1 = r5
                        goto L8e
                    L14:
                        java.lang.String r6 = r0.n     // Catch: java.lang.Throwable -> L1b
                        org.jsoup.nodes.Document r1 = org.jsoup.Jsoup.parse(r1, r6)     // Catch: java.lang.Throwable -> L1b
                        goto L1c
                    L1b:
                        r1 = r2
                    L1c:
                        if (r1 != 0) goto L1f
                        goto L11
                    L1f:
                        java.lang.String r6 = "div"
                        org.jsoup.select.Elements r1 = r1.select(r6)
                        if (r1 == 0) goto L11
                        int r6 = r1.size()
                        if (r6 != 0) goto L2e
                        goto L11
                    L2e:
                        int r6 = r0.p
                        if (r6 >= r3) goto L34
                        r6 = r4
                        goto L35
                    L34:
                        r6 = r5
                    L35:
                        int r7 = r1.size()
                        r8 = r5
                        r9 = r8
                    L3b:
                        if (r9 >= r7) goto L8c
                        java.lang.Object r10 = r1.get(r9)
                        int r9 = r9 + 1
                        org.jsoup.nodes.Element r10 = (org.jsoup.nodes.Element) r10
                        if (r10 != 0) goto L48
                        goto L3b
                    L48:
                        java.lang.String r11 = r10.id()
                        int r11 = com.mycompany.app.main.MainUtil.H6(r11)
                        java.util.List r12 = r0.e
                        if (r12 == 0) goto L64
                        if (r11 < 0) goto L64
                        int r13 = r12.size()
                        if (r11 < r13) goto L5d
                        goto L64
                    L5d:
                        java.lang.Object r11 = r12.get(r11)
                        com.mycompany.app.ocr.OcrDetector$OcrItem r11 = (com.mycompany.app.ocr.OcrDetector.OcrItem) r11
                        goto L65
                    L64:
                        r11 = r2
                    L65:
                        if (r11 != 0) goto L68
                        goto L3b
                    L68:
                        java.lang.String r12 = "p"
                        org.jsoup.nodes.Element r10 = r10.selectFirst(r12)
                        r12 = 2
                        if (r10 != 0) goto L72
                        goto L85
                    L72:
                        java.lang.String r13 = r10.text()
                        r11.l = r13
                        java.lang.String r13 = "font"
                        org.jsoup.nodes.Element r10 = r10.selectFirst(r13)
                        if (r10 != 0) goto L83
                        r11.m = r4
                        goto L85
                    L83:
                        r11.m = r12
                    L85:
                        int r10 = r11.m
                        if (r10 == r12) goto L3b
                        r8 = r4
                        if (r6 == 0) goto L3b
                    L8c:
                        r1 = r8 ^ 1
                    L8e:
                        if (r1 != 0) goto La7
                        int r1 = r0.p
                        if (r1 >= r3) goto La7
                        int r1 = r1 + r4
                        r0.p = r1
                        com.mycompany.app.view.MyWebSafe r0 = r0.f
                        if (r0 != 0) goto L9c
                        return
                    L9c:
                        com.mycompany.app.main.MainTransOcr$11$1 r1 = new com.mycompany.app.main.MainTransOcr$11$1
                        r1.<init>()
                        r2 = 100
                        r0.postDelayed(r1, r2)
                        return
                    La7:
                        com.mycompany.app.main.MainTransOcr$TransOcrListener r1 = r0.f16890c
                        if (r1 == 0) goto Lae
                        r1.a(r4)
                    Lae:
                        r0.o = r5
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.main.MainTransOcr.AnonymousClass11.run():void");
                }
            });
        }

        @JavascriptInterface
        public void onObserDet(String str, int i) {
            boolean z = true;
            MainTransOcr mainTransOcr = MainTransOcr.this;
            if (i == 0) {
                mainTransOcr.k = 1;
            } else {
                mainTransOcr.k = 3;
                if (i != 2) {
                    z = false;
                }
                mainTransOcr.l = z;
                if (TextUtils.isEmpty(PrefAlbum.y)) {
                    PrefAlbum.y = str;
                    PrefAlbum.z = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                    PrefAlbum.u(mainTransOcr.b);
                }
                if (MainUtil.q5(mainTransOcr.m, str)) {
                    mainTransOcr.m = null;
                }
            }
            ViewGroup viewGroup = mainTransOcr.d;
            if (viewGroup == null) {
                return;
            }
            viewGroup.post(new Runnable() { // from class: com.mycompany.app.main.MainTransOcr.WebAppInterface.1
                @Override // java.lang.Runnable
                public final void run() {
                    final MainTransOcr mainTransOcr2 = MainTransOcr.this;
                    if (mainTransOcr2.k != 1) {
                        final String str2 = mainTransOcr2.m;
                        mainTransOcr2.m = null;
                        if (!TextUtils.isEmpty(str2)) {
                            if (!TextUtils.isEmpty(str2)) {
                                mainTransOcr2.d(new Runnable() { // from class: com.mycompany.app.main.MainTransOcr.10
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        MainUtil.M7(MainTransOcr.this.f, str2);
                                    }
                                });
                            }
                        } else if (mainTransOcr2.l && !mainTransOcr2.o) {
                            mainTransOcr2.o = true;
                            mainTransOcr2.p = 0;
                            mainTransOcr2.c();
                            MyWebSafe myWebSafe = mainTransOcr2.f;
                            if (myWebSafe != null) {
                                myWebSafe.postDelayed(new Runnable() { // from class: com.mycompany.app.main.MainTransOcr.WebAppInterface.1.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        MyWebSafe myWebSafe2 = MainTransOcr.this.f;
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

    public MainTransOcr(MainActivity mainActivity, ViewGroup viewGroup, ArrayList arrayList, TransOcrListener transOcrListener) {
        if (mainActivity != null && viewGroup != null) {
            this.f16889a = mainActivity;
            this.b = mainActivity.getApplicationContext();
            this.f16890c = transOcrListener;
            this.d = viewGroup;
            this.e = arrayList;
            this.k = 1;
            this.m = PrefAlbum.y;
            c();
            Handler handler = new Handler(Looper.getMainLooper());
            this.r = handler;
            handler.postDelayed(new AnonymousClass3(), 3000L);
            ViewGroup viewGroup2 = this.d;
            if (viewGroup2 != null) {
                viewGroup2.post(new Runnable() { // from class: com.mycompany.app.main.MainTransOcr.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        MainTransOcr mainTransOcr = MainTransOcr.this;
                        if (mainTransOcr.f16889a != null && mainTransOcr.d != null && mainTransOcr.f == null) {
                            MyWebSafe myWebSafe = new MyWebSafe(mainTransOcr.f16889a);
                            mainTransOcr.f = myWebSafe;
                            MainApp.I(mainTransOcr.b, myWebSafe);
                            mainTransOcr.f.setVisibility(4);
                            mainTransOcr.d.addView(mainTransOcr.f, 0, new ViewGroup.LayoutParams(-1, -2));
                            mainTransOcr.d.post(new AnonymousClass4());
                        }
                    }
                });
            }
        }
    }

    public static void a(MainTransOcr mainTransOcr, String str) {
        if (mainTransOcr.f != null) {
            if (MainUtil.D5(str)) {
                if (mainTransOcr.i) {
                    mainTransOcr.i = false;
                    MyWebSafe myWebSafe = mainTransOcr.f;
                    if (myWebSafe != null) {
                        myWebSafe.post(new Runnable() { // from class: com.mycompany.app.main.MainTransOcr.7
                            @Override // java.lang.Runnable
                            public final void run() {
                                MainTransOcr mainTransOcr2 = MainTransOcr.this;
                                MyWebSafe myWebSafe2 = mainTransOcr2.f;
                                if (myWebSafe2 == null) {
                                    return;
                                }
                                mainTransOcr2.i = false;
                                myWebSafe2.removeJavascriptInterface("android");
                            }
                        });
                        return;
                    }
                    return;
                }
                return;
            }
            if (!mainTransOcr.i) {
                mainTransOcr.i = true;
                MyWebSafe myWebSafe2 = mainTransOcr.f;
                if (myWebSafe2 == null) {
                    return;
                }
                myWebSafe2.post(new Runnable() { // from class: com.mycompany.app.main.MainTransOcr.8
                    @Override // java.lang.Runnable
                    public final void run() {
                        MainTransOcr mainTransOcr2 = MainTransOcr.this;
                        MyWebSafe myWebSafe3 = mainTransOcr2.f;
                        if (myWebSafe3 == null) {
                            return;
                        }
                        mainTransOcr2.i = true;
                        myWebSafe3.addJavascriptInterface(new WebAppInterface(), "android");
                    }
                });
            }
        }
    }

    public final void b() {
        c();
        MyWebSafe myWebSafe = this.f;
        if (myWebSafe != null) {
            if (this.g) {
                this.g = false;
                myWebSafe.stopLoading();
            }
            MainUtil.P6(this.f);
            this.f = null;
        }
        this.f16889a = null;
        this.b = null;
        this.f16890c = null;
        this.d = null;
        this.e = null;
        this.j = null;
        this.m = null;
        this.n = null;
        this.q = null;
    }

    public final void c() {
        Handler handler = this.r;
        if (handler != null) {
            MainUtil.R6(handler);
            this.r = null;
        }
        this.s = false;
    }

    public final void d(Runnable runnable) {
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

    public final void e(List list) {
        if (this.f != null) {
            this.e = list;
            this.k = 1;
            this.m = PrefAlbum.y;
            c();
            Handler handler = new Handler(Looper.getMainLooper());
            this.r = handler;
            handler.postDelayed(new AnonymousClass3(), 3000L);
            ViewGroup viewGroup = this.d;
            if (viewGroup == null) {
                return;
            }
            viewGroup.post(new Runnable() { // from class: com.mycompany.app.main.MainTransOcr.2
                @Override // java.lang.Runnable
                public final void run() {
                    MainTransOcr mainTransOcr = MainTransOcr.this;
                    if (mainTransOcr.f == null) {
                        return;
                    }
                    mainTransOcr.d(new AnonymousClass9());
                }
            });
        }
    }

    /* loaded from: classes3.dex */
    public class LocalWebViewClient extends WebViewClient {
        public LocalWebViewClient() {
        }

        @Override // android.webkit.WebViewClient
        public final void onPageFinished(WebView webView, String str) {
            final MainTransOcr mainTransOcr = MainTransOcr.this;
            if (mainTransOcr.f != null) {
                mainTransOcr.g = false;
                MainTransOcr.a(mainTransOcr, str);
                if (!mainTransOcr.t && !TextUtils.isEmpty(str) && !str.equals(mainTransOcr.u)) {
                    mainTransOcr.t = true;
                    mainTransOcr.u = str;
                    ViewGroup viewGroup = mainTransOcr.d;
                    if (viewGroup != null) {
                        viewGroup.post(new Runnable() { // from class: com.mycompany.app.main.MainTransOcr.5
                            @Override // java.lang.Runnable
                            public final void run() {
                                MainTransOcr mainTransOcr2 = MainTransOcr.this;
                                MainUtil.l(mainTransOcr2.f);
                                mainTransOcr2.t = false;
                            }
                        });
                    }
                }
                mainTransOcr.h = true;
                if (TextUtils.isEmpty(mainTransOcr.j)) {
                    return;
                }
                String str2 = mainTransOcr.j;
                mainTransOcr.h = false;
                mainTransOcr.j = null;
                MainUtil.J(mainTransOcr.f, str2, true);
            }
        }

        @Override // android.webkit.WebViewClient
        public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            MainTransOcr mainTransOcr = MainTransOcr.this;
            if (mainTransOcr.f == null) {
                return;
            }
            mainTransOcr.g = true;
            MainTransOcr.a(mainTransOcr, str);
        }

        @Override // android.webkit.WebViewClient
        public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            final MainTransOcr mainTransOcr = MainTransOcr.this;
            mainTransOcr.f = null;
            MainUtil.D(webView, renderProcessGoneDetail);
            ViewGroup viewGroup = mainTransOcr.d;
            if (viewGroup != null) {
                viewGroup.post(new Runnable() { // from class: com.mycompany.app.main.MainTransOcr.6
                    @Override // java.lang.Runnable
                    public final void run() {
                        MainTransOcr mainTransOcr2 = MainTransOcr.this;
                        TransOcrListener transOcrListener = mainTransOcr2.f16890c;
                        if (transOcrListener != null) {
                            transOcrListener.b();
                        }
                        mainTransOcr2.o = false;
                    }
                });
                return true;
            }
            return true;
        }

        @Override // android.webkit.WebViewClient
        public final WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
            MainTransOcr mainTransOcr = MainTransOcr.this;
            if (mainTransOcr.f != null && webResourceRequest != null && webResourceRequest.getUrl() != null) {
                MainTransOcr.a(mainTransOcr, webResourceRequest.getUrl().toString());
            }
            return null;
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
            MainTransOcr mainTransOcr = MainTransOcr.this;
            if (mainTransOcr.f == null || TextUtils.isEmpty(str)) {
                return true;
            }
            MainTransOcr.a(mainTransOcr, str);
            mainTransOcr.f.loadUrl(str);
            return true;
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            MainTransOcr mainTransOcr = MainTransOcr.this;
            if (mainTransOcr.f != null && webResourceRequest != null && webResourceRequest.getUrl() != null) {
                String uri = webResourceRequest.getUrl().toString();
                if (!TextUtils.isEmpty(uri)) {
                    MainTransOcr.a(mainTransOcr, uri);
                }
            }
            return false;
        }
    }
}
