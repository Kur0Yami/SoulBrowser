package com.mycompany.app.web;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.webkit.JavascriptInterface;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.mycompany.app.data.DataUrl;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.web.WebEmgTask;
import com.mycompany.app.web.WebLoadWrap;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class WebEmgLoad extends WebLoadWrap {

    /* renamed from: a, reason: collision with root package name */
    public Context f19140a;
    public WebLoadWrap.EmgLoadListener b;

    /* renamed from: c, reason: collision with root package name */
    public ViewGroup f19141c;
    public WebNestView d;
    public String e;
    public int f;
    public final boolean g;
    public String h;
    public int i;
    public boolean j;
    public WebEmgTask k;
    public boolean l;
    public boolean m;
    public String n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.web.WebEmgLoad$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 implements Runnable {

        /* renamed from: com.mycompany.app.web.WebEmgLoad$1$1, reason: invalid class name and collision with other inner class name */
        /* loaded from: classes3.dex */
        class RunnableC02411 implements Runnable {
            public RunnableC02411() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                WebEmgLoad webEmgLoad = WebEmgLoad.this;
                WebNestView webNestView = webEmgLoad.d;
                if (webNestView != null) {
                    webNestView.setWebViewClient(new LocalWebViewClient());
                    ViewGroup viewGroup = webEmgLoad.f19141c;
                    if (viewGroup == null) {
                        return;
                    }
                    viewGroup.post(new Runnable() { // from class: com.mycompany.app.web.WebEmgLoad.1.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                            WebEmgLoad webEmgLoad2 = WebEmgLoad.this;
                            WebNestView webNestView2 = webEmgLoad2.d;
                            if (webNestView2 != null) {
                                webEmgLoad2.l = true;
                                webNestView2.addJavascriptInterface(new WebAppInterface(), "android");
                                ViewGroup viewGroup2 = WebEmgLoad.this.f19141c;
                                if (viewGroup2 == null) {
                                    return;
                                }
                                viewGroup2.post(new Runnable() { // from class: com.mycompany.app.web.WebEmgLoad.1.1.1.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        WebEmgLoad webEmgLoad3 = WebEmgLoad.this;
                                        WebEmgLoad.f(webEmgLoad3, webEmgLoad3.e);
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
            WebEmgLoad webEmgLoad = WebEmgLoad.this;
            WebNestView webNestView = webEmgLoad.d;
            if (webNestView != null) {
                MainUtil.W7(webNestView, false);
                ViewGroup viewGroup = webEmgLoad.f19141c;
                if (viewGroup == null) {
                    return;
                }
                viewGroup.post(new RunnableC02411());
            }
        }
    }

    /* renamed from: com.mycompany.app.web.WebEmgLoad$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass2 implements Runnable {

        /* renamed from: com.mycompany.app.web.WebEmgLoad$2$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 implements Runnable {
            public AnonymousClass1() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                WebEmgLoad webEmgLoad = WebEmgLoad.this;
                WebNestView webNestView = webEmgLoad.d;
                if (webNestView == null) {
                    webEmgLoad.j = false;
                    return;
                }
                webNestView.setWebViewClient(new LocalWebViewClient());
                ViewGroup viewGroup = webEmgLoad.f19141c;
                if (viewGroup == null) {
                    return;
                }
                viewGroup.post(new Runnable() { // from class: com.mycompany.app.web.WebEmgLoad.2.1.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                        WebEmgLoad webEmgLoad2 = WebEmgLoad.this;
                        WebNestView webNestView2 = webEmgLoad2.d;
                        if (webNestView2 == null) {
                            webEmgLoad2.j = false;
                            return;
                        }
                        webEmgLoad2.l = true;
                        webNestView2.addJavascriptInterface(new WebAppInterface(), "android");
                        ViewGroup viewGroup2 = WebEmgLoad.this.f19141c;
                        if (viewGroup2 == null) {
                            return;
                        }
                        viewGroup2.post(new Runnable() { // from class: com.mycompany.app.web.WebEmgLoad.2.1.1.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                WebEmgLoad webEmgLoad3 = WebEmgLoad.this;
                                WebEmgLoad.f(webEmgLoad3, webEmgLoad3.e);
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
            WebEmgLoad webEmgLoad = WebEmgLoad.this;
            WebNestView webNestView = webEmgLoad.d;
            if (webNestView == null) {
                webEmgLoad.j = false;
                return;
            }
            MainUtil.W7(webNestView, false);
            ViewGroup viewGroup = webEmgLoad.f19141c;
            if (viewGroup == null) {
                return;
            }
            viewGroup.post(new AnonymousClass1());
        }
    }

    /* renamed from: com.mycompany.app.web.WebEmgLoad$8, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass8 implements Runnable {
        public AnonymousClass8() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            WebEmgTask webEmgTask = WebEmgLoad.this.k;
            if (webEmgTask == null) {
                return;
            }
            webEmgTask.b();
        }
    }

    /* loaded from: classes3.dex */
    public class WebAppInterface {
        public WebAppInterface() {
        }

        @JavascriptInterface
        public void onViewHtml(String str, String str2) {
            WebNestView webNestView = WebEmgLoad.this.d;
            if (webNestView != null) {
                webNestView.U(str, str2);
            }
        }
    }

    public WebEmgLoad(MainActivity mainActivity, ViewGroup viewGroup, String str, int i, boolean z, WebLoadWrap.EmgLoadListener emgLoadListener) {
        if (mainActivity != null && viewGroup != null) {
            this.f19140a = mainActivity.getApplicationContext();
            this.b = emgLoadListener;
            this.f19141c = viewGroup;
            this.e = str;
            this.f = i;
            this.g = z;
            this.j = true;
            WebNestView webNestView = new WebNestView(mainActivity);
            this.d = webNestView;
            webNestView.setNoAutofill(true);
            this.d.setVisibility(4);
            this.f19141c.addView(this.d, 0, new ViewGroup.LayoutParams(-1, -1));
            this.k = new WebEmgTask(this.f19140a, this.d, new WebEmgTask.EmgTaskListener() { // from class: com.mycompany.app.web.WebEmgLoad.7
                @Override // com.mycompany.app.web.WebEmgTask.EmgTaskListener
                public final void b() {
                }

                @Override // com.mycompany.app.web.WebEmgTask.EmgTaskListener
                public final void c(ArrayList arrayList, int i2, int i3, String str2) {
                    int i4;
                    String str3;
                    int lastIndexOf;
                    int i5;
                    int G6;
                    final WebEmgLoad webEmgLoad = WebEmgLoad.this;
                    if (webEmgLoad.k != null) {
                        if (webEmgLoad.d == null) {
                            webEmgLoad.j = false;
                            return;
                        }
                        if (arrayList != null && !arrayList.isEmpty() && !TextUtils.isEmpty(str2)) {
                            if (webEmgLoad.f < 0) {
                                webEmgLoad.f = i2;
                            }
                            int i6 = webEmgLoad.f;
                            List list = DataUrl.b(webEmgLoad.f19140a).f12901a;
                            if (list != null && !list.isEmpty()) {
                                List list2 = DataUrl.b(webEmgLoad.f19140a).b;
                                if (list2 != null && !list2.isEmpty()) {
                                    int size = list2.size();
                                    if (size != list.size()) {
                                        webEmgLoad.j = false;
                                        WebLoadWrap.EmgLoadListener emgLoadListener2 = webEmgLoad.b;
                                        if (emgLoadListener2 != null) {
                                            emgLoadListener2.a();
                                            return;
                                        }
                                        return;
                                    }
                                    if (i2 >= 0 && i2 < size) {
                                        webEmgLoad.f = i2;
                                        if (MainUtil.n5(str2)) {
                                            list.set(i2, str2);
                                            WebLoadWrap.EmgLoadListener emgLoadListener3 = webEmgLoad.b;
                                            if (emgLoadListener3 != null) {
                                                emgLoadListener3.b(i2, str2);
                                            }
                                        }
                                        i6 = i2;
                                    }
                                    Iterator it = list.iterator();
                                    int i7 = 0;
                                    while (it.hasNext()) {
                                        if (MainUtil.n5((String) it.next())) {
                                            i7++;
                                        }
                                    }
                                    if (i7 == size) {
                                        webEmgLoad.j = false;
                                        WebLoadWrap.EmgLoadListener emgLoadListener4 = webEmgLoad.b;
                                        if (emgLoadListener4 != null) {
                                            emgLoadListener4.c();
                                            return;
                                        }
                                        return;
                                    }
                                    if (!arrayList.isEmpty()) {
                                        int size2 = arrayList.size();
                                        int i8 = 0;
                                        while (i8 < size2) {
                                            Object obj = arrayList.get(i8);
                                            i8++;
                                            String str4 = (String) obj;
                                            if (!TextUtils.isEmpty(str4) && (lastIndexOf = str4.lastIndexOf(45)) != -1 && (i5 = lastIndexOf + 1) < str4.length() && MainUtil.G6(str4.substring(i5)) - 1 != i2 && G6 >= 0 && G6 < size) {
                                                list2.set(G6, str4);
                                            }
                                        }
                                    }
                                    int size3 = list2.size();
                                    if (size3 == list.size()) {
                                        if (i6 < 0 || i6 >= size3) {
                                            i6 = 0;
                                        }
                                        i4 = i6;
                                        int i9 = 0;
                                        while (i9 < size3) {
                                            i9++;
                                            if (webEmgLoad.g) {
                                                i4 = (i4 + 1) % size3;
                                            } else {
                                                i4 = ((i4 - 1) + size3) % size3;
                                            }
                                            if (i4 == i6 || i4 < 0 || i4 >= size3) {
                                                break;
                                            } else if (MainUtil.o5((String) list2.get(i4)) && !MainUtil.n5((String) list.get(i4))) {
                                                break;
                                            }
                                        }
                                    }
                                    i4 = -1;
                                    if (i4 == -1) {
                                        webEmgLoad.j = false;
                                        WebLoadWrap.EmgLoadListener emgLoadListener5 = webEmgLoad.b;
                                        if (emgLoadListener5 != null) {
                                            emgLoadListener5.a();
                                            return;
                                        }
                                        return;
                                    }
                                    if (i4 >= 0 && i4 < size) {
                                        str3 = (String) list2.get(i4);
                                    } else {
                                        str3 = null;
                                    }
                                    if (MainUtil.o5(str3)) {
                                        webEmgLoad.e = str3;
                                        webEmgLoad.f = i4;
                                    }
                                    WebNestView webNestView2 = webEmgLoad.d;
                                    if (webNestView2 != null) {
                                        webNestView2.postDelayed(new Runnable() { // from class: com.mycompany.app.web.WebEmgLoad.9
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                WebEmgLoad webEmgLoad2 = WebEmgLoad.this;
                                                WebEmgLoad.f(webEmgLoad2, webEmgLoad2.e);
                                            }
                                        }, 200L);
                                        return;
                                    }
                                    return;
                                }
                                webEmgLoad.j = false;
                                WebLoadWrap.EmgLoadListener emgLoadListener6 = webEmgLoad.b;
                                if (emgLoadListener6 != null) {
                                    emgLoadListener6.a();
                                    return;
                                }
                                return;
                            }
                            webEmgLoad.j = false;
                            WebLoadWrap.EmgLoadListener emgLoadListener7 = webEmgLoad.b;
                            if (emgLoadListener7 != null) {
                                emgLoadListener7.a();
                                return;
                            }
                            return;
                        }
                        WebNestView webNestView3 = webEmgLoad.d;
                        if (webNestView3 == null) {
                            return;
                        }
                        webNestView3.postDelayed(new AnonymousClass8(), 200L);
                    }
                }

                @Override // com.mycompany.app.web.WebEmgTask.EmgTaskListener
                public final void a() {
                }
            });
            this.f19141c.post(new AnonymousClass2());
        }
    }

    public static void e(WebEmgLoad webEmgLoad, String str) {
        if (webEmgLoad.d != null) {
            if (MainUtil.D5(str)) {
                if (webEmgLoad.l) {
                    webEmgLoad.l = false;
                    WebNestView webNestView = webEmgLoad.d;
                    if (webNestView != null) {
                        webNestView.post(new Runnable() { // from class: com.mycompany.app.web.WebEmgLoad.3
                            @Override // java.lang.Runnable
                            public final void run() {
                                WebEmgLoad webEmgLoad2 = WebEmgLoad.this;
                                WebNestView webNestView2 = webEmgLoad2.d;
                                if (webNestView2 == null) {
                                    return;
                                }
                                webEmgLoad2.l = false;
                                webNestView2.removeJavascriptInterface("android");
                            }
                        });
                        return;
                    }
                    return;
                }
                return;
            }
            if (!webEmgLoad.l) {
                webEmgLoad.l = true;
                WebNestView webNestView2 = webEmgLoad.d;
                if (webNestView2 == null) {
                    return;
                }
                webNestView2.post(new Runnable() { // from class: com.mycompany.app.web.WebEmgLoad.4
                    @Override // java.lang.Runnable
                    public final void run() {
                        WebEmgLoad webEmgLoad2 = WebEmgLoad.this;
                        WebNestView webNestView3 = webEmgLoad2.d;
                        if (webNestView3 == null) {
                            return;
                        }
                        webEmgLoad2.l = true;
                        webNestView3.addJavascriptInterface(new WebAppInterface(), "android");
                    }
                });
            }
        }
    }

    public static void f(WebEmgLoad webEmgLoad, String str) {
        WebNestView webNestView = webEmgLoad.d;
        if (webNestView == null) {
            webEmgLoad.j = false;
        } else {
            webEmgLoad.h = null;
            webNestView.z(str, null);
        }
    }

    @Override // com.mycompany.app.web.WebLoadWrap
    public final void b() {
        WebEmgTask webEmgTask = this.k;
        if (webEmgTask != null) {
            webEmgTask.d();
            this.k = null;
        }
        this.f19140a = null;
        this.b = null;
        this.e = null;
        this.h = null;
        WebNestView webNestView = this.d;
        if (webNestView != null) {
            MainUtil.P6(webNestView);
            this.d = null;
        }
        this.f19141c = null;
    }

    @Override // com.mycompany.app.web.WebLoadWrap
    public final void c(int i) {
        if (!this.j && this.k != null && this.d != null) {
            List list = DataUrl.b(this.f19140a).f12901a;
            if (list != null && !list.isEmpty()) {
                List list2 = DataUrl.b(this.f19140a).b;
                if (list2 != null && !list2.isEmpty()) {
                    int size = list2.size();
                    if (size != list.size()) {
                        WebLoadWrap.EmgLoadListener emgLoadListener = this.b;
                        if (emgLoadListener != null) {
                            emgLoadListener.a();
                            return;
                        }
                        return;
                    }
                    if (i >= 0 && i < size) {
                        list.set(i, i + ".jpg");
                        String str = (String) list2.get(i);
                        if (!MainUtil.o5(str)) {
                            WebLoadWrap.EmgLoadListener emgLoadListener2 = this.b;
                            if (emgLoadListener2 != null) {
                                emgLoadListener2.a();
                                return;
                            }
                            return;
                        }
                        this.e = str;
                        this.f = i;
                        WebNestView webNestView = this.d;
                        if (webNestView != null) {
                            webNestView.postDelayed(new Runnable() { // from class: com.mycompany.app.web.WebEmgLoad.10
                                @Override // java.lang.Runnable
                                public final void run() {
                                    WebEmgLoad webEmgLoad = WebEmgLoad.this;
                                    WebEmgLoad.f(webEmgLoad, webEmgLoad.e);
                                }
                            }, 200L);
                            return;
                        }
                        return;
                    }
                    WebLoadWrap.EmgLoadListener emgLoadListener3 = this.b;
                    if (emgLoadListener3 != null) {
                        emgLoadListener3.a();
                        return;
                    }
                    return;
                }
                WebLoadWrap.EmgLoadListener emgLoadListener4 = this.b;
                if (emgLoadListener4 != null) {
                    emgLoadListener4.a();
                    return;
                }
                return;
            }
            WebLoadWrap.EmgLoadListener emgLoadListener5 = this.b;
            if (emgLoadListener5 != null) {
                emgLoadListener5.a();
            }
        }
    }

    /* loaded from: classes3.dex */
    public class LocalWebViewClient extends WebViewClient {
        public LocalWebViewClient() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:50:0x009a, code lost:
        
            r10.j = false;
            r10 = r10.b;
         */
        /* JADX WARN: Code restructure failed: missing block: B:51:0x009e, code lost:
        
            if (r10 == null) goto L66;
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x00a0, code lost:
        
            r10.a();
         */
        /* JADX WARN: Code restructure failed: missing block: B:53:0x00a3, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:54:?, code lost:
        
            return;
         */
        @Override // android.webkit.WebViewClient
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void onPageFinished(android.webkit.WebView r10, java.lang.String r11) {
            /*
                r9 = this;
                com.mycompany.app.web.WebEmgLoad r10 = com.mycompany.app.web.WebEmgLoad.this
                com.mycompany.app.web.WebNestView r0 = r10.d
                r1 = 0
                if (r0 != 0) goto La
                r10.j = r1
                return
            La:
                r0.setWebLoading(r1)
                com.mycompany.app.web.WebEmgLoad.e(r10, r11)
                boolean r0 = r10.m
                r2 = 1
                if (r0 != 0) goto L35
                boolean r0 = android.text.TextUtils.isEmpty(r11)
                if (r0 != 0) goto L35
                java.lang.String r0 = r10.n
                boolean r0 = r11.equals(r0)
                if (r0 == 0) goto L24
                goto L35
            L24:
                r10.m = r2
                r10.n = r11
                android.view.ViewGroup r0 = r10.f19141c
                if (r0 != 0) goto L2d
                goto L35
            L2d:
                com.mycompany.app.web.WebEmgLoad$5 r3 = new com.mycompany.app.web.WebEmgLoad$5
                r3.<init>()
                r0.post(r3)
            L35:
                boolean r0 = com.mycompany.app.main.MainUtil.o5(r11)
                if (r0 != 0) goto La4
                r0 = 0
                r10.h = r0
                int r3 = r10.i
                r4 = 3
                if (r3 >= r4) goto L53
                int r3 = r3 + r2
                r10.i = r3
                com.mycompany.app.web.WebNestView r10 = r10.d
                com.mycompany.app.web.WebEmgLoad$LocalWebViewClient$1 r11 = new com.mycompany.app.web.WebEmgLoad$LocalWebViewClient$1
                r11.<init>()
                r0 = 400(0x190, double:1.976E-321)
                r10.postDelayed(r11, r0)
                return
            L53:
                int r2 = r10.f
                android.content.Context r3 = r10.f19140a
                if (r3 != 0) goto L5a
                goto L98
            L5a:
                com.mycompany.app.data.DataUrl r3 = com.mycompany.app.data.DataUrl.b(r3)
                java.util.List r3 = r3.b
                if (r3 == 0) goto L98
                boolean r4 = r3.isEmpty()
                if (r4 == 0) goto L69
                goto L98
            L69:
                int r4 = r3.size()
                if (r2 < 0) goto L71
                if (r2 < r4) goto L72
            L71:
                r2 = r1
            L72:
                r5 = r1
                r6 = r2
            L74:
                if (r5 >= r4) goto L98
                int r5 = r5 + 1
                boolean r7 = r10.g
                if (r7 == 0) goto L80
                int r6 = r6 + 1
                int r6 = r6 % r4
                goto L84
            L80:
                int r6 = r6 + (-1)
                int r6 = r6 + r4
                int r6 = r6 % r4
            L84:
                if (r6 == r2) goto L98
                if (r6 < 0) goto L98
                if (r6 < r4) goto L8b
                goto L98
            L8b:
                java.lang.Object r7 = r3.get(r6)
                java.lang.String r7 = (java.lang.String) r7
                boolean r8 = com.mycompany.app.main.MainUtil.o5(r7)
                if (r8 == 0) goto L74
                r0 = r7
            L98:
                if (r0 != 0) goto La4
                r10.j = r1
                com.mycompany.app.web.WebLoadWrap$EmgLoadListener r10 = r10.b
                if (r10 == 0) goto Lbf
                r10.a()
                return
            La4:
                r10.i = r1
                java.lang.String r0 = r10.h
                boolean r0 = com.mycompany.app.main.MainUtil.q5(r0, r11)
                if (r0 != 0) goto Lbf
                r10.h = r11
                com.mycompany.app.web.WebNestView r11 = r10.d
                if (r11 != 0) goto Lb5
                goto Lbf
            Lb5:
                com.mycompany.app.web.WebEmgLoad$8 r0 = new com.mycompany.app.web.WebEmgLoad$8
                r0.<init>()
                r1 = 200(0xc8, double:9.9E-322)
                r11.postDelayed(r0, r1)
            Lbf:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.web.WebEmgLoad.LocalWebViewClient.onPageFinished(android.webkit.WebView, java.lang.String):void");
        }

        @Override // android.webkit.WebViewClient
        public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            WebEmgLoad webEmgLoad = WebEmgLoad.this;
            WebNestView webNestView = webEmgLoad.d;
            if (webNestView == null) {
                return;
            }
            webNestView.setWebLoading(true);
            WebEmgLoad.e(webEmgLoad, str);
        }

        @Override // android.webkit.WebViewClient
        public final void onReceivedError(WebView webView, int i, String str, String str2) {
            super.onReceivedError(webView, i, str, str2);
            WebEmgTask webEmgTask = WebEmgLoad.this.k;
            if (webEmgTask != null) {
                webEmgTask.c(i);
            }
        }

        @Override // android.webkit.WebViewClient
        public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            final WebEmgLoad webEmgLoad = WebEmgLoad.this;
            webEmgLoad.d = null;
            MainUtil.D(webView, renderProcessGoneDetail);
            ViewGroup viewGroup = webEmgLoad.f19141c;
            if (viewGroup != null) {
                viewGroup.post(new Runnable() { // from class: com.mycompany.app.web.WebEmgLoad.6
                    @Override // java.lang.Runnable
                    public final void run() {
                        WebEmgLoad webEmgLoad2 = WebEmgLoad.this;
                        webEmgLoad2.j = false;
                        WebLoadWrap.EmgLoadListener emgLoadListener = webEmgLoad2.b;
                        if (emgLoadListener != null) {
                            emgLoadListener.a();
                        }
                    }
                });
                return true;
            }
            return true;
        }

        @Override // android.webkit.WebViewClient
        public final WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
            WebEmgLoad webEmgLoad = WebEmgLoad.this;
            if (webEmgLoad.d != null && webResourceRequest != null && webResourceRequest.getUrl() != null) {
                WebEmgLoad.e(webEmgLoad, webResourceRequest.getUrl().toString());
            }
            return null;
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
            WebEmgLoad webEmgLoad = WebEmgLoad.this;
            if (webEmgLoad.d == null || TextUtils.isEmpty(str)) {
                return true;
            }
            WebEmgLoad.e(webEmgLoad, str);
            if (MainUtil.o5(str)) {
                WebEmgLoad.f(webEmgLoad, str);
            }
            return true;
        }

        @Override // android.webkit.WebViewClient
        public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            WebEmgTask webEmgTask;
            super.onReceivedError(webView, webResourceRequest, webResourceError);
            if (webResourceError == null || (webEmgTask = WebEmgLoad.this.k) == null) {
                return;
            }
            webEmgTask.c(webResourceError.getErrorCode());
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            WebEmgLoad webEmgLoad = WebEmgLoad.this;
            if (webEmgLoad.d != null && webResourceRequest != null && webResourceRequest.getUrl() != null) {
                String uri = webResourceRequest.getUrl().toString();
                if (TextUtils.isEmpty(uri)) {
                    return true;
                }
                WebEmgLoad.e(webEmgLoad, uri);
                if (MainUtil.o5(uri)) {
                    WebEmgLoad.f(webEmgLoad, uri);
                }
            }
            return true;
        }
    }
}
