package com.mycompany.app.web;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.util.SparseIntArray;
import android.view.ViewGroup;
import android.webkit.JavascriptInterface;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.URLUtil;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.mycompany.app.data.DataUrl;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.web.WebHmgTask;
import com.mycompany.app.web.WebLoadWrap;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class WebHmgLoad extends WebLoadWrap {

    /* renamed from: a, reason: collision with root package name */
    public Context f19255a;
    public WebLoadWrap.EmgLoadListener b;

    /* renamed from: c, reason: collision with root package name */
    public ViewGroup f19256c;
    public WebNestView d;
    public String e;
    public int f;
    public final boolean g;
    public String h;
    public int i;
    public boolean j;
    public WebHmgTask k;
    public boolean l;
    public SparseIntArray m;
    public boolean n;
    public boolean o;
    public String p;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.web.WebHmgLoad$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 implements Runnable {

        /* renamed from: com.mycompany.app.web.WebHmgLoad$1$1, reason: invalid class name and collision with other inner class name */
        /* loaded from: classes3.dex */
        class RunnableC02501 implements Runnable {
            public RunnableC02501() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                WebHmgLoad webHmgLoad = WebHmgLoad.this;
                WebNestView webNestView = webHmgLoad.d;
                if (webNestView != null) {
                    webNestView.setWebViewClient(new LocalWebViewClient());
                    ViewGroup viewGroup = webHmgLoad.f19256c;
                    if (viewGroup == null) {
                        return;
                    }
                    viewGroup.post(new Runnable() { // from class: com.mycompany.app.web.WebHmgLoad.1.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                            WebHmgLoad webHmgLoad2 = WebHmgLoad.this;
                            WebNestView webNestView2 = webHmgLoad2.d;
                            if (webNestView2 != null) {
                                webHmgLoad2.l = true;
                                webNestView2.addJavascriptInterface(new WebAppInterface(), "android");
                                ViewGroup viewGroup2 = WebHmgLoad.this.f19256c;
                                if (viewGroup2 == null) {
                                    return;
                                }
                                viewGroup2.post(new Runnable() { // from class: com.mycompany.app.web.WebHmgLoad.1.1.1.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        WebHmgLoad webHmgLoad3 = WebHmgLoad.this;
                                        WebHmgLoad.f(webHmgLoad3, webHmgLoad3.e);
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
            WebHmgLoad webHmgLoad = WebHmgLoad.this;
            WebNestView webNestView = webHmgLoad.d;
            if (webNestView != null) {
                MainUtil.W7(webNestView, false);
                ViewGroup viewGroup = webHmgLoad.f19256c;
                if (viewGroup == null) {
                    return;
                }
                viewGroup.post(new RunnableC02501());
            }
        }
    }

    /* renamed from: com.mycompany.app.web.WebHmgLoad$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass2 implements Runnable {

        /* renamed from: com.mycompany.app.web.WebHmgLoad$2$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 implements Runnable {
            public AnonymousClass1() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                WebHmgLoad webHmgLoad = WebHmgLoad.this;
                WebNestView webNestView = webHmgLoad.d;
                if (webNestView == null) {
                    webHmgLoad.j = false;
                    return;
                }
                webNestView.setWebViewClient(new LocalWebViewClient());
                ViewGroup viewGroup = webHmgLoad.f19256c;
                if (viewGroup == null) {
                    return;
                }
                viewGroup.post(new Runnable() { // from class: com.mycompany.app.web.WebHmgLoad.2.1.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                        WebHmgLoad webHmgLoad2 = WebHmgLoad.this;
                        WebNestView webNestView2 = webHmgLoad2.d;
                        if (webNestView2 == null) {
                            webHmgLoad2.j = false;
                            return;
                        }
                        webHmgLoad2.l = true;
                        webNestView2.addJavascriptInterface(new WebAppInterface(), "android");
                        ViewGroup viewGroup2 = WebHmgLoad.this.f19256c;
                        if (viewGroup2 == null) {
                            return;
                        }
                        viewGroup2.post(new Runnable() { // from class: com.mycompany.app.web.WebHmgLoad.2.1.1.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                WebHmgLoad webHmgLoad3 = WebHmgLoad.this;
                                WebHmgLoad.f(webHmgLoad3, webHmgLoad3.e);
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
            WebHmgLoad webHmgLoad = WebHmgLoad.this;
            WebNestView webNestView = webHmgLoad.d;
            if (webNestView == null) {
                webHmgLoad.j = false;
                return;
            }
            MainUtil.W7(webNestView, false);
            ViewGroup viewGroup = webHmgLoad.f19256c;
            if (viewGroup == null) {
                return;
            }
            viewGroup.post(new AnonymousClass1());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.web.WebHmgLoad$8, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass8 implements Runnable {
        public AnonymousClass8() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            WebHmgTask webHmgTask;
            WebHmgLoad webHmgLoad = WebHmgLoad.this;
            if (webHmgLoad.n || (webHmgTask = webHmgLoad.k) == null) {
                return;
            }
            webHmgTask.e();
        }
    }

    /* loaded from: classes3.dex */
    public class WebAppInterface {
        public WebAppInterface() {
        }

        @JavascriptInterface
        public void onViewHtml(String str, String str2) {
            WebNestView webNestView = WebHmgLoad.this.d;
            if (webNestView != null) {
                webNestView.U(str, str2);
            }
        }
    }

    public WebHmgLoad(MainActivity mainActivity, ViewGroup viewGroup, String str, int i, boolean z, WebLoadWrap.EmgLoadListener emgLoadListener) {
        if (mainActivity != null && viewGroup != null) {
            this.f19255a = mainActivity.getApplicationContext();
            this.b = emgLoadListener;
            this.f19256c = viewGroup;
            this.e = str;
            this.f = i;
            this.g = z;
            this.j = true;
            WebNestView webNestView = new WebNestView(mainActivity);
            this.d = webNestView;
            webNestView.setNoAutofill(true);
            this.d.setVisibility(4);
            this.f19256c.addView(this.d, 0, new ViewGroup.LayoutParams(-1, -1));
            this.k = new WebHmgTask(this.f19255a, this.d, new WebHmgTask.HmgTaskListener() { // from class: com.mycompany.app.web.WebHmgLoad.7
                @Override // com.mycompany.app.web.WebHmgTask.HmgTaskListener
                public final void b() {
                }

                @Override // com.mycompany.app.web.WebHmgTask.HmgTaskListener
                public final void c(List list, List list2, int i2) {
                    WebHmgLoad webHmgLoad = WebHmgLoad.this;
                    if (webHmgLoad.k == null) {
                        return;
                    }
                    webHmgLoad.h(list, list2, i2);
                }

                @Override // com.mycompany.app.web.WebHmgTask.HmgTaskListener
                public final void a() {
                }
            });
            this.f19256c.post(new AnonymousClass2());
        }
    }

    public static void e(WebHmgLoad webHmgLoad, String str) {
        if (webHmgLoad.d != null) {
            if (MainUtil.D5(str)) {
                if (webHmgLoad.l) {
                    webHmgLoad.l = false;
                    WebNestView webNestView = webHmgLoad.d;
                    if (webNestView != null) {
                        webNestView.post(new Runnable() { // from class: com.mycompany.app.web.WebHmgLoad.3
                            @Override // java.lang.Runnable
                            public final void run() {
                                WebHmgLoad webHmgLoad2 = WebHmgLoad.this;
                                WebNestView webNestView2 = webHmgLoad2.d;
                                if (webNestView2 == null) {
                                    return;
                                }
                                webHmgLoad2.l = false;
                                webNestView2.removeJavascriptInterface("android");
                            }
                        });
                        return;
                    }
                    return;
                }
                return;
            }
            if (!webHmgLoad.l) {
                webHmgLoad.l = true;
                WebNestView webNestView2 = webHmgLoad.d;
                if (webNestView2 == null) {
                    return;
                }
                webNestView2.post(new Runnable() { // from class: com.mycompany.app.web.WebHmgLoad.4
                    @Override // java.lang.Runnable
                    public final void run() {
                        WebHmgLoad webHmgLoad2 = WebHmgLoad.this;
                        WebNestView webNestView3 = webHmgLoad2.d;
                        if (webNestView3 == null) {
                            return;
                        }
                        webHmgLoad2.l = true;
                        webNestView3.addJavascriptInterface(new WebAppInterface(), "android");
                    }
                });
            }
        }
    }

    public static void f(WebHmgLoad webHmgLoad, String str) {
        if (webHmgLoad.n) {
            return;
        }
        WebNestView webNestView = webHmgLoad.d;
        if (webNestView == null) {
            webHmgLoad.j = false;
        } else {
            webHmgLoad.h = null;
            webNestView.z(str, null);
        }
    }

    @Override // com.mycompany.app.web.WebLoadWrap
    public final void b() {
        WebHmgTask webHmgTask = this.k;
        if (webHmgTask != null) {
            webHmgTask.g();
            this.k = null;
        }
        this.f19255a = null;
        this.b = null;
        this.e = null;
        this.h = null;
        WebNestView webNestView = this.d;
        if (webNestView != null) {
            MainUtil.P6(webNestView);
            this.d = null;
        }
        this.f19256c = null;
    }

    @Override // com.mycompany.app.web.WebLoadWrap
    public final void c(int i) {
        if (!this.n && !this.j && this.k != null && this.d != null) {
            List list = DataUrl.b(this.f19255a).f12901a;
            if (list != null && !list.isEmpty()) {
                List list2 = DataUrl.b(this.f19255a).b;
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
                        if (g(i)) {
                            WebLoadWrap.EmgLoadListener emgLoadListener2 = this.b;
                            if (emgLoadListener2 != null) {
                                emgLoadListener2.a();
                                return;
                            }
                            return;
                        }
                        list.set(i, i + ".webp");
                        String str = (String) list2.get(i);
                        if (!URLUtil.isNetworkUrl(str)) {
                            WebLoadWrap.EmgLoadListener emgLoadListener3 = this.b;
                            if (emgLoadListener3 != null) {
                                emgLoadListener3.a();
                                return;
                            }
                            return;
                        }
                        this.e = str;
                        this.f = i;
                        WebNestView webNestView = this.d;
                        if (webNestView != null) {
                            webNestView.postDelayed(new Runnable() { // from class: com.mycompany.app.web.WebHmgLoad.11
                                @Override // java.lang.Runnable
                                public final void run() {
                                    WebHmgLoad webHmgLoad = WebHmgLoad.this;
                                    WebHmgLoad.f(webHmgLoad, webHmgLoad.e);
                                }
                            }, 200L);
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
                    return;
                }
                return;
            }
            WebLoadWrap.EmgLoadListener emgLoadListener6 = this.b;
            if (emgLoadListener6 != null) {
                emgLoadListener6.a();
            }
        }
    }

    @Override // com.mycompany.app.web.WebLoadWrap
    public final void d(int i, String str) {
        long j;
        if (this.j && this.k != null && this.d != null && this.f != i) {
            if (!URLUtil.isNetworkUrl(str)) {
                WebLoadWrap.EmgLoadListener emgLoadListener = this.b;
                if (emgLoadListener != null) {
                    emgLoadListener.a();
                    return;
                }
                return;
            }
            List list = DataUrl.b(this.f19255a).f12901a;
            if (list != null && !list.isEmpty()) {
                List list2 = DataUrl.b(this.f19255a).b;
                if (list2 != null && !list2.isEmpty()) {
                    int size = list2.size();
                    if (size != list.size()) {
                        WebLoadWrap.EmgLoadListener emgLoadListener2 = this.b;
                        if (emgLoadListener2 != null) {
                            emgLoadListener2.a();
                            return;
                        }
                        return;
                    }
                    if (i >= 0 && i < size) {
                        String str2 = (String) list.get(i);
                        if (URLUtil.isNetworkUrl(str2)) {
                            WebLoadWrap.EmgLoadListener emgLoadListener3 = this.b;
                            if (emgLoadListener3 != null) {
                                emgLoadListener3.b(i, str2);
                                return;
                            }
                            return;
                        }
                        if (g(i)) {
                            WebLoadWrap.EmgLoadListener emgLoadListener4 = this.b;
                            if (emgLoadListener4 != null) {
                                emgLoadListener4.a();
                                return;
                            }
                            return;
                        }
                        if (this.f != i) {
                            this.n = true;
                            this.e = str;
                            this.f = i;
                            WebNestView webNestView = this.d;
                            boolean z = webNestView.m;
                            if (z) {
                                webNestView.stopLoading();
                            }
                            this.k.b();
                            WebNestView webNestView2 = this.d;
                            if (webNestView2 != null) {
                                Runnable runnable = new Runnable() { // from class: com.mycompany.app.web.WebHmgLoad.10
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        WebHmgLoad webHmgLoad = WebHmgLoad.this;
                                        if (webHmgLoad.n) {
                                            webHmgLoad.n = false;
                                            WebHmgLoad.f(webHmgLoad, webHmgLoad.e);
                                        }
                                    }
                                };
                                if (z) {
                                    j = 800;
                                } else {
                                    j = 200;
                                }
                                webNestView2.postDelayed(runnable, j);
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    WebLoadWrap.EmgLoadListener emgLoadListener5 = this.b;
                    if (emgLoadListener5 != null) {
                        emgLoadListener5.a();
                        return;
                    }
                    return;
                }
                WebLoadWrap.EmgLoadListener emgLoadListener6 = this.b;
                if (emgLoadListener6 != null) {
                    emgLoadListener6.a();
                    return;
                }
                return;
            }
            WebLoadWrap.EmgLoadListener emgLoadListener7 = this.b;
            if (emgLoadListener7 != null) {
                emgLoadListener7.a();
            }
        }
    }

    public final boolean g(int i) {
        SparseIntArray sparseIntArray = this.m;
        if (sparseIntArray == null) {
            SparseIntArray sparseIntArray2 = new SparseIntArray();
            this.m = sparseIntArray2;
            sparseIntArray2.put(i, 1);
            return false;
        }
        int i2 = sparseIntArray.get(i, -1);
        if (i2 == -1) {
            this.m.put(i, 1);
            return false;
        }
        if (i2 >= 10) {
            return true;
        }
        this.m.put(i, i2 + 1);
        return false;
    }

    public final void h(List list, List list2, int i) {
        WebNestView webNestView;
        int i2;
        int i3;
        String str;
        WebLoadWrap.EmgLoadListener emgLoadListener;
        WebLoadWrap.EmgLoadListener emgLoadListener2;
        if (!this.n) {
            if (this.d == null) {
                this.j = false;
                return;
            }
            if (list != null && !list.isEmpty()) {
                if (this.f < 0) {
                    this.f = i;
                }
                int i4 = this.f;
                if (list2 != null && !list2.isEmpty()) {
                    int size = list2.size();
                    if (size != list.size()) {
                        this.j = false;
                        WebLoadWrap.EmgLoadListener emgLoadListener3 = this.b;
                        if (emgLoadListener3 != null) {
                            emgLoadListener3.a();
                            return;
                        }
                        return;
                    }
                    if (i >= 0 && i < size) {
                        this.f = i;
                        String str2 = (String) list.get(i);
                        if (URLUtil.isNetworkUrl(str2) && (emgLoadListener2 = this.b) != null) {
                            emgLoadListener2.b(i, str2);
                        }
                        i4 = i;
                    }
                    int i5 = i + 1;
                    if (i5 >= 0 && i5 < size) {
                        String str3 = (String) list.get(i5);
                        if (URLUtil.isNetworkUrl(str3) && (emgLoadListener = this.b) != null) {
                            emgLoadListener.b(i5, str3);
                        }
                    }
                    Iterator it = list.iterator();
                    int i6 = 0;
                    while (it.hasNext()) {
                        if (URLUtil.isNetworkUrl((String) it.next())) {
                            i6++;
                        }
                    }
                    if (i6 == size) {
                        this.j = false;
                        WebLoadWrap.EmgLoadListener emgLoadListener4 = this.b;
                        if (emgLoadListener4 != null) {
                            emgLoadListener4.c();
                            return;
                        }
                        return;
                    }
                    int size2 = list2.size();
                    if (size2 == list.size()) {
                        if (i4 >= 0 && i4 < size2) {
                            i2 = i4;
                        } else {
                            i2 = 0;
                        }
                        int i7 = 0;
                        i3 = i2;
                        while (i7 < size2) {
                            i7++;
                            if (this.g) {
                                i3 = (i3 + 1) % size2;
                            } else {
                                i3 = ((i3 - 1) + size2) % size2;
                            }
                            if (i3 == i2 || i3 < 0 || i3 >= size2) {
                                break;
                            } else if (URLUtil.isNetworkUrl((String) list2.get(i3)) && !URLUtil.isNetworkUrl((String) list.get(i3))) {
                                break;
                            }
                        }
                    }
                    i3 = -1;
                    if (i3 == -1) {
                        this.j = false;
                        WebLoadWrap.EmgLoadListener emgLoadListener5 = this.b;
                        if (emgLoadListener5 != null) {
                            emgLoadListener5.a();
                            return;
                        }
                        return;
                    }
                    if (i3 >= 0 && i3 < size) {
                        str = (String) list2.get(i3);
                    } else {
                        str = null;
                    }
                    if (URLUtil.isNetworkUrl(str)) {
                        this.e = str;
                        this.f = i3;
                        i4 = i3;
                    }
                    if (g(i4)) {
                        list.set(i4, "https://" + i4 + ".webp");
                        h(list, list2, i4);
                        return;
                    }
                    WebNestView webNestView2 = this.d;
                    if (webNestView2 != null) {
                        webNestView2.postDelayed(new Runnable() { // from class: com.mycompany.app.web.WebHmgLoad.9
                            @Override // java.lang.Runnable
                            public final void run() {
                                WebHmgLoad webHmgLoad = WebHmgLoad.this;
                                WebHmgLoad.f(webHmgLoad, webHmgLoad.e);
                            }
                        }, 200L);
                        return;
                    }
                    return;
                }
                this.j = false;
                WebLoadWrap.EmgLoadListener emgLoadListener6 = this.b;
                if (emgLoadListener6 != null) {
                    emgLoadListener6.a();
                    return;
                }
                return;
            }
            if (this.n || (webNestView = this.d) == null) {
                return;
            }
            webNestView.postDelayed(new AnonymousClass8(), 200L);
        }
    }

    /* loaded from: classes3.dex */
    public class LocalWebViewClient extends WebViewClient {
        public LocalWebViewClient() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:54:0x00ad, code lost:
        
            r12.j = false;
            r12 = r12.b;
         */
        /* JADX WARN: Code restructure failed: missing block: B:55:0x00b1, code lost:
        
            if (r12 == null) goto L73;
         */
        /* JADX WARN: Code restructure failed: missing block: B:56:0x00b3, code lost:
        
            r12.a();
         */
        /* JADX WARN: Code restructure failed: missing block: B:57:0x00b6, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:58:?, code lost:
        
            return;
         */
        @Override // android.webkit.WebViewClient
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void onPageFinished(android.webkit.WebView r12, java.lang.String r13) {
            /*
                Method dump skipped, instructions count: 214
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.web.WebHmgLoad.LocalWebViewClient.onPageFinished(android.webkit.WebView, java.lang.String):void");
        }

        @Override // android.webkit.WebViewClient
        public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            WebHmgLoad webHmgLoad = WebHmgLoad.this;
            WebNestView webNestView = webHmgLoad.d;
            if (webNestView == null) {
                return;
            }
            webNestView.setWebLoading(true);
            WebHmgLoad.e(webHmgLoad, str);
        }

        @Override // android.webkit.WebViewClient
        public final void onReceivedError(WebView webView, int i, String str, String str2) {
            super.onReceivedError(webView, i, str, str2);
            WebHmgTask webHmgTask = WebHmgLoad.this.k;
            if (webHmgTask != null) {
                webHmgTask.f(i);
            }
        }

        @Override // android.webkit.WebViewClient
        public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            final WebHmgLoad webHmgLoad = WebHmgLoad.this;
            webHmgLoad.d = null;
            MainUtil.D(webView, renderProcessGoneDetail);
            ViewGroup viewGroup = webHmgLoad.f19256c;
            if (viewGroup != null) {
                viewGroup.post(new Runnable() { // from class: com.mycompany.app.web.WebHmgLoad.6
                    @Override // java.lang.Runnable
                    public final void run() {
                        WebHmgLoad webHmgLoad2 = WebHmgLoad.this;
                        webHmgLoad2.j = false;
                        WebLoadWrap.EmgLoadListener emgLoadListener = webHmgLoad2.b;
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
            WebHmgLoad webHmgLoad = WebHmgLoad.this;
            if (webHmgLoad.d != null && webResourceRequest != null && webResourceRequest.getUrl() != null) {
                WebHmgLoad.e(webHmgLoad, webResourceRequest.getUrl().toString());
            }
            return null;
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
            WebHmgLoad webHmgLoad = WebHmgLoad.this;
            if (webHmgLoad.d == null || TextUtils.isEmpty(str)) {
                return true;
            }
            WebHmgLoad.e(webHmgLoad, str);
            if (MainUtil.z5(str)) {
                WebHmgLoad.f(webHmgLoad, str);
            }
            return true;
        }

        @Override // android.webkit.WebViewClient
        public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            WebHmgTask webHmgTask;
            super.onReceivedError(webView, webResourceRequest, webResourceError);
            if (webResourceError == null || (webHmgTask = WebHmgLoad.this.k) == null) {
                return;
            }
            webHmgTask.f(webResourceError.getErrorCode());
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            WebHmgLoad webHmgLoad = WebHmgLoad.this;
            if (webHmgLoad.d != null && webResourceRequest != null && webResourceRequest.getUrl() != null) {
                String uri = webResourceRequest.getUrl().toString();
                if (TextUtils.isEmpty(uri)) {
                    return true;
                }
                WebHmgLoad.e(webHmgLoad, uri);
                if (MainUtil.z5(uri)) {
                    WebHmgLoad.f(webHmgLoad, uri);
                }
            }
            return true;
        }
    }
}
