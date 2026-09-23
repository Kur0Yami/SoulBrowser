package com.mycompany.app.web;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.webkit.JavascriptInterface;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.URLUtil;
import android.webkit.ValueCallback;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainDownAdapter;
import com.mycompany.app.main.MainNative;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefPdf;
import com.mycompany.app.view.MyWebSafe;
import com.mycompany.app.web.WebSnsTask;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class WebSnsLoad {
    public String A;
    public String C;

    /* renamed from: a, reason: collision with root package name */
    public MainActivity f19457a;
    public Context b;

    /* renamed from: c, reason: collision with root package name */
    public SnsLoadListener f19458c;
    public ViewGroup d;
    public MyWebSafe e;
    public boolean f;
    public final int g;
    public final int h;
    public String i;
    public final int j;
    public String k;
    public String l;
    public String m;
    public WebNestView n;
    public final int o;
    public boolean p;
    public boolean q;
    public boolean r;
    public int s;
    public WebSnsTask t;
    public WebSnsTwit u;
    public WebSnsInsta v;
    public boolean w;
    public boolean x;
    public String y;
    public boolean z;
    public final Runnable B = new Runnable() { // from class: com.mycompany.app.web.WebSnsLoad.12
        @Override // java.lang.Runnable
        public final void run() {
            WebSnsLoad webSnsLoad = WebSnsLoad.this;
            if (webSnsLoad.z || !webSnsLoad.p) {
                return;
            }
            webSnsLoad.p = false;
            WebSnsLoad.c(webSnsLoad);
        }
    };
    public final Runnable D = new Runnable() { // from class: com.mycompany.app.web.WebSnsLoad.16
        @Override // java.lang.Runnable
        public final void run() {
            WebSnsLoad webSnsLoad = WebSnsLoad.this;
            if (!webSnsLoad.q) {
                return;
            }
            MainUtil.I(webSnsLoad.e, "(function(){android.onDocHtml(document.body.innerHTML);})();", false);
        }
    };

    /* renamed from: com.mycompany.app.web.WebSnsLoad$10, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass10 implements WebSnsTask.SnsTaskListener {
        public AnonymousClass10() {
        }

        @Override // com.mycompany.app.web.WebSnsTask.SnsTaskListener
        public final void a(List list) {
            WebSnsLoad webSnsLoad = WebSnsLoad.this;
            if (list != null && !list.isEmpty()) {
                webSnsLoad.e(list);
                return;
            }
            ViewGroup viewGroup = webSnsLoad.d;
            if (viewGroup == null) {
                return;
            }
            viewGroup.post(new Runnable() { // from class: com.mycompany.app.web.WebSnsLoad.10.1
                @Override // java.lang.Runnable
                public final void run() {
                    WebNestView webNestView;
                    final WebSnsLoad webSnsLoad2 = WebSnsLoad.this;
                    WebSnsInsta webSnsInsta = webSnsLoad2.v;
                    if (webSnsInsta != null) {
                        webSnsInsta.d();
                        webSnsLoad2.v = null;
                    }
                    if (webSnsLoad2.o == 2) {
                        if (!webSnsLoad2.q || (webNestView = webSnsLoad2.n) == null) {
                            return;
                        }
                        webNestView.evaluateJavascript("(function(){var vds=document.querySelectorAll(\"video\");if(vds&&(vds.length>0)){for(var i=0;i<vds.length;i++){if(!vds[i].paused){return vds[i].src;}}}return null;})();", new ValueCallback<String>() { // from class: com.mycompany.app.web.WebSnsLoad.13
                            @Override // android.webkit.ValueCallback
                            public final void onReceiveValue(String str) {
                                String X6 = MainUtil.X6(str);
                                ArrayList arrayList = null;
                                if (URLUtil.isNetworkUrl(X6)) {
                                    ArrayList arrayList2 = new ArrayList();
                                    MainDownAdapter.DownListItem downListItem = new MainDownAdapter.DownListItem(0, null, "MP4");
                                    downListItem.b = X6;
                                    arrayList2.add(downListItem);
                                    arrayList = arrayList2;
                                }
                                WebSnsLoad webSnsLoad3 = WebSnsLoad.this;
                                if (arrayList != null && !arrayList.isEmpty()) {
                                    webSnsLoad3.e(arrayList);
                                    return;
                                }
                                ViewGroup viewGroup2 = webSnsLoad3.d;
                                if (viewGroup2 == null) {
                                    return;
                                }
                                viewGroup2.post(new Runnable() { // from class: com.mycompany.app.web.WebSnsLoad.13.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        WebSnsLoad.b(WebSnsLoad.this);
                                    }
                                });
                            }
                        });
                        return;
                    }
                    SnsLoadListener snsLoadListener = webSnsLoad2.f19458c;
                    if (snsLoadListener != null) {
                        snsLoadListener.b();
                    }
                    WebSnsLoad.b(webSnsLoad2);
                }
            });
        }
    }

    /* renamed from: com.mycompany.app.web.WebSnsLoad$15, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass15 implements WebSnsTask.SnsTaskListener {
        public AnonymousClass15() {
        }

        @Override // com.mycompany.app.web.WebSnsTask.SnsTaskListener
        public final void a(List list) {
            WebSnsLoad webSnsLoad = WebSnsLoad.this;
            if (list != null && !list.isEmpty()) {
                webSnsLoad.e(list);
                return;
            }
            Runnable runnable = webSnsLoad.D;
            MyWebSafe myWebSafe = webSnsLoad.e;
            if (myWebSafe != null) {
                myWebSafe.removeCallbacks(runnable);
                webSnsLoad.e.postDelayed(runnable, 1000L);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.web.WebSnsLoad$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass2 implements Runnable {

        /* renamed from: com.mycompany.app.web.WebSnsLoad$2$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 implements Runnable {
            public AnonymousClass1() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                WebSnsLoad webSnsLoad = WebSnsLoad.this;
                MyWebSafe myWebSafe = webSnsLoad.e;
                if (myWebSafe != null) {
                    myWebSafe.setWebViewClient(new LocalWebViewClient());
                    ViewGroup viewGroup = webSnsLoad.d;
                    if (viewGroup == null) {
                        return;
                    }
                    viewGroup.post(new Runnable() { // from class: com.mycompany.app.web.WebSnsLoad.2.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                            WebSnsLoad webSnsLoad2 = WebSnsLoad.this;
                            MyWebSafe myWebSafe2 = webSnsLoad2.e;
                            if (myWebSafe2 != null) {
                                webSnsLoad2.w = true;
                                myWebSafe2.addJavascriptInterface(new WebAppInterface(), "android");
                                ViewGroup viewGroup2 = WebSnsLoad.this.d;
                                if (viewGroup2 == null) {
                                    return;
                                }
                                viewGroup2.post(new Runnable() { // from class: com.mycompany.app.web.WebSnsLoad.2.1.1.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        WebSnsLoad.c(WebSnsLoad.this);
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
            WebSnsLoad webSnsLoad = WebSnsLoad.this;
            MyWebSafe myWebSafe = webSnsLoad.e;
            if (myWebSafe != null) {
                MainUtil.W7(myWebSafe, true);
                ViewGroup viewGroup = webSnsLoad.d;
                if (viewGroup == null) {
                    return;
                }
                viewGroup.post(new AnonymousClass1());
            }
        }
    }

    /* renamed from: com.mycompany.app.web.WebSnsLoad$9, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass9 implements WebSnsTask.SnsTaskListener {
        public AnonymousClass9() {
        }

        @Override // com.mycompany.app.web.WebSnsTask.SnsTaskListener
        public final void a(List list) {
            WebSnsLoad webSnsLoad = WebSnsLoad.this;
            if (list != null && !list.isEmpty()) {
                webSnsLoad.e(list);
                return;
            }
            ViewGroup viewGroup = webSnsLoad.d;
            if (viewGroup == null) {
                return;
            }
            viewGroup.post(new Runnable() { // from class: com.mycompany.app.web.WebSnsLoad.9.1
                @Override // java.lang.Runnable
                public final void run() {
                    AnonymousClass9 anonymousClass9 = AnonymousClass9.this;
                    WebSnsTwit webSnsTwit = WebSnsLoad.this.u;
                    if (webSnsTwit != null) {
                        webSnsTwit.b();
                        WebSnsLoad.this.u = null;
                    }
                    WebSnsLoad.b(WebSnsLoad.this);
                }
            });
        }
    }

    /* loaded from: classes3.dex */
    public interface SnsLoadListener {
        void a(int i, List list);

        void b();

        void onError(int i);
    }

    /* loaded from: classes3.dex */
    public class WebAppInterface {
        public WebAppInterface() {
        }

        @JavascriptInterface
        public void onDocHtml(String str) {
            final WebSnsLoad webSnsLoad = WebSnsLoad.this;
            webSnsLoad.C = str;
            ViewGroup viewGroup = webSnsLoad.d;
            if (viewGroup == null) {
                return;
            }
            viewGroup.post(new Runnable() { // from class: com.mycompany.app.web.WebSnsLoad.14
                /* JADX WARN: Type inference failed for: r4v2, types: [com.mycompany.app.web.WebSnsTask, java.lang.Object] */
                @Override // java.lang.Runnable
                public final void run() {
                    MyWebSafe myWebSafe;
                    WebSnsLoad webSnsLoad2 = WebSnsLoad.this;
                    String str2 = webSnsLoad2.C;
                    webSnsLoad2.C = null;
                    if (TextUtils.isEmpty(str2) || (myWebSafe = webSnsLoad2.e) == null) {
                        return;
                    }
                    if (webSnsLoad2.t == null) {
                        int i = webSnsLoad2.h;
                        AnonymousClass15 anonymousClass15 = new AnonymousClass15();
                        ?? obj = new Object();
                        obj.f19487a = i;
                        obj.b = anonymousClass15;
                        webSnsLoad2.t = obj;
                    }
                    WebSnsTask webSnsTask = webSnsLoad2.t;
                    Context context = webSnsLoad2.b;
                    String url = myWebSafe.getUrl();
                    WebSnsTask.LoadTask loadTask = webSnsTask.f19488c;
                    if (loadTask != null) {
                        loadTask.f12839c = true;
                    }
                    webSnsTask.f19488c = null;
                    WebSnsTask.LoadTask loadTask2 = new WebSnsTask.LoadTask(webSnsTask, url, str2);
                    webSnsTask.f19488c = loadTask2;
                    loadTask2.b(context);
                }
            });
        }

        @JavascriptInterface
        public void onStoryData(String str) {
            final WebSnsLoad webSnsLoad = WebSnsLoad.this;
            Runnable runnable = webSnsLoad.B;
            ViewGroup viewGroup = webSnsLoad.d;
            if (viewGroup == null) {
                return;
            }
            viewGroup.removeCallbacks(runnable);
            if (TextUtils.isEmpty(str)) {
                webSnsLoad.z = false;
                webSnsLoad.d.postDelayed(runnable, 5000L);
            } else {
                webSnsLoad.z = true;
                webSnsLoad.A = str;
                MainApp.J(webSnsLoad.b, new Runnable() { // from class: com.mycompany.app.web.WebSnsLoad.11
                    /* JADX WARN: Removed duplicated region for block: B:35:0x0064  */
                    /* JADX WARN: Removed duplicated region for block: B:38:0x0065  */
                    @Override // java.lang.Runnable
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public final void run() {
                        /*
                            r15 = this;
                            com.mycompany.app.web.WebSnsLoad r0 = com.mycompany.app.web.WebSnsLoad.this
                            java.lang.String r1 = r0.A
                            r2 = 0
                            r0.A = r2
                            android.view.ViewGroup r3 = r0.d
                            if (r3 != 0) goto Ld
                            goto Laa
                        Ld:
                            java.lang.String r3 = "url"
                            boolean r4 = android.text.TextUtils.isEmpty(r1)
                            r5 = 0
                            if (r4 == 0) goto L18
                            goto L98
                        L18:
                            org.json.JSONObject r1 = com.mycompany.app.main.MainUtil.B0(r1)     // Catch: java.lang.Exception -> L98
                            if (r1 != 0) goto L20
                            goto L98
                        L20:
                            org.json.JSONArray r1 = com.mycompany.app.web.WebSnsTask.e(r1)     // Catch: java.lang.Exception -> L98
                            if (r1 != 0) goto L28
                            goto L98
                        L28:
                            int r4 = r1.length()     // Catch: java.lang.Exception -> L98
                            r6 = 1
                            r8 = r2
                            r7 = r5
                            r9 = r6
                        L30:
                            if (r7 >= r4) goto L6a
                            org.json.JSONObject r10 = r1.getJSONObject(r7)     // Catch: java.lang.Exception -> L6a
                            if (r10 != 0) goto L39
                            goto L95
                        L39:
                            java.lang.String r11 = "video_versions"
                            org.json.JSONArray r11 = r10.getJSONArray(r11)     // Catch: java.lang.Exception -> L5c
                            org.json.JSONObject r11 = r11.getJSONObject(r5)     // Catch: java.lang.Exception -> L5c
                            java.lang.String r11 = r11.getString(r3)     // Catch: java.lang.Exception -> L5c
                            java.lang.String r12 = "image_versions2"
                            org.json.JSONObject r10 = r10.getJSONObject(r12)     // Catch: java.lang.Exception -> L5d
                            java.lang.String r12 = "candidates"
                            org.json.JSONArray r10 = r10.getJSONArray(r12)     // Catch: java.lang.Exception -> L5d
                            org.json.JSONObject r10 = r10.getJSONObject(r5)     // Catch: java.lang.Exception -> L5d
                            java.lang.String r10 = r10.getString(r3)     // Catch: java.lang.Exception -> L5d
                            goto L5e
                        L5c:
                            r11 = r2
                        L5d:
                            r10 = r2
                        L5e:
                            boolean r12 = android.text.TextUtils.isEmpty(r11)     // Catch: java.lang.Exception -> L6a
                            if (r12 == 0) goto L65
                            goto L95
                        L65:
                            if (r9 != r6) goto L6c
                            java.lang.String r12 = "Insta Story"
                            goto L7d
                        L6a:
                            r2 = r8
                            goto L98
                        L6c:
                            java.lang.StringBuilder r12 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L6a
                            r12.<init>()     // Catch: java.lang.Exception -> L6a
                            java.lang.String r13 = "Insta Story "
                            r12.append(r13)     // Catch: java.lang.Exception -> L6a
                            r12.append(r9)     // Catch: java.lang.Exception -> L6a
                            java.lang.String r12 = r12.toString()     // Catch: java.lang.Exception -> L6a
                        L7d:
                            com.mycompany.app.main.MainDownAdapter$DownListItem r13 = new com.mycompany.app.main.MainDownAdapter$DownListItem     // Catch: java.lang.Exception -> L6a
                            java.lang.String r14 = "MP4"
                            r13.<init>(r9, r12, r14)     // Catch: java.lang.Exception -> L6a
                            r13.b = r11     // Catch: java.lang.Exception -> L6a
                            r13.f = r10     // Catch: java.lang.Exception -> L6a
                            if (r8 != 0) goto L90
                            java.util.ArrayList r10 = new java.util.ArrayList     // Catch: java.lang.Exception -> L6a
                            r10.<init>()     // Catch: java.lang.Exception -> L6a
                            r8 = r10
                        L90:
                            r8.add(r13)     // Catch: java.lang.Exception -> L6a
                            int r9 = r9 + 1
                        L95:
                            int r7 = r7 + 1
                            goto L30
                        L98:
                            if (r2 == 0) goto La4
                            boolean r1 = r2.isEmpty()
                            if (r1 != 0) goto La4
                            r0.e(r2)
                            return
                        La4:
                            r0.z = r5
                            android.view.ViewGroup r0 = r0.d
                            if (r0 != 0) goto Lab
                        Laa:
                            return
                        Lab:
                            com.mycompany.app.web.WebSnsLoad$11$1 r1 = new com.mycompany.app.web.WebSnsLoad$11$1
                            r1.<init>()
                            r0.post(r1)
                            return
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.web.WebSnsLoad.AnonymousClass11.run():void");
                    }
                });
            }
        }
    }

    /* JADX WARN: Type inference failed for: r8v2, types: [java.lang.Object, com.mycompany.app.web.WebSnsTwit] */
    public WebSnsLoad(MainActivity mainActivity, ViewGroup viewGroup, WebNestView webNestView, String str, int i, int i2, int i3, SnsLoadListener snsLoadListener) {
        ArrayList arrayList;
        if (mainActivity != null && viewGroup != null) {
            this.f19457a = mainActivity;
            this.b = mainActivity.getApplicationContext();
            this.f19458c = snsLoadListener;
            this.d = viewGroup;
            this.g = i;
            this.h = i2;
            this.i = str;
            this.q = true;
            this.r = false;
            this.s = 0;
            if (i2 == 0) {
                this.j = 2;
                if (this.u == null) {
                    MainActivity mainActivity2 = this.f19457a;
                    AnonymousClass9 anonymousClass9 = new AnonymousClass9();
                    final ?? obj = new Object();
                    if (mainActivity2 != null) {
                        obj.f19489a = mainActivity2;
                        obj.b = mainActivity2.getApplicationContext();
                        obj.f19490c = anonymousClass9;
                        obj.d = viewGroup;
                        obj.g = str;
                        try {
                            boolean z = MainApp.R1;
                            ArrayList arrayList2 = null;
                            if (z) {
                                if (z) {
                                    if (MainNative.a(4, MainNative.x)) {
                                        arrayList = MainNative.x;
                                    } else {
                                        arrayList = new ArrayList();
                                        for (int i4 = 0; i4 < 4; i4++) {
                                            String twitReq = MainUtil.getTwitReq(i4);
                                            if (!TextUtils.isEmpty(twitReq)) {
                                                arrayList.add(twitReq);
                                            }
                                        }
                                        MainNative.x = arrayList;
                                    }
                                    if (arrayList != null && arrayList.size() == 4) {
                                        arrayList2 = arrayList;
                                    }
                                }
                                arrayList = null;
                                if (arrayList != null) {
                                    arrayList2 = arrayList;
                                }
                            }
                            obj.h = (String) arrayList2.get(0);
                            obj.i = (String) arrayList2.get(1);
                            obj.j = (String) arrayList2.get(2);
                            obj.k = (String) arrayList2.get(3);
                        } catch (Exception unused) {
                        }
                        ViewGroup viewGroup2 = obj.d;
                        if (viewGroup2 != null) {
                            viewGroup2.post(new Runnable() { // from class: com.mycompany.app.web.WebSnsTwit.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    WebSnsTwit webSnsTwit = WebSnsTwit.this;
                                    if (webSnsTwit.f19489a != null && webSnsTwit.d != null && webSnsTwit.e == null) {
                                        MyWebSafe myWebSafe = new MyWebSafe(webSnsTwit.f19489a);
                                        webSnsTwit.e = myWebSafe;
                                        MainApp.I(webSnsTwit.b, myWebSafe);
                                        webSnsTwit.e.setVisibility(4);
                                        webSnsTwit.d.addView(webSnsTwit.e, 0, new ViewGroup.LayoutParams(-1, -1));
                                        webSnsTwit.d.post(new AnonymousClass2());
                                    }
                                }
                            });
                        }
                    }
                    this.u = obj;
                    return;
                }
                return;
            }
            if (i2 == 1) {
                this.j = 1;
                this.n = webNestView;
                this.o = i3;
            } else {
                this.j = 0;
            }
            viewGroup.post(new Runnable() { // from class: com.mycompany.app.web.WebSnsLoad.1
                /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Object, com.mycompany.app.web.WebSnsInsta] */
                @Override // java.lang.Runnable
                public final void run() {
                    ViewGroup viewGroup3;
                    WebSnsLoad webSnsLoad = WebSnsLoad.this;
                    if (webSnsLoad.h == 1) {
                        if (webSnsLoad.o == 1) {
                            webSnsLoad.p = true;
                            WebSnsLoad.b(webSnsLoad);
                            return;
                        }
                        if (webSnsLoad.q && webSnsLoad.v == null && (viewGroup3 = webSnsLoad.d) != null) {
                            MainActivity mainActivity3 = webSnsLoad.f19457a;
                            String str2 = webSnsLoad.i;
                            AnonymousClass10 anonymousClass10 = new AnonymousClass10();
                            final ?? obj2 = new Object();
                            if (mainActivity3 != null) {
                                obj2.f19440a = mainActivity3;
                                obj2.b = mainActivity3.getApplicationContext();
                                obj2.f19441c = anonymousClass10;
                                obj2.d = viewGroup3;
                                obj2.g = str2;
                                viewGroup3.post(new Runnable() { // from class: com.mycompany.app.web.WebSnsInsta.1
                                    public AnonymousClass1() {
                                    }

                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        WebSnsInsta webSnsInsta = WebSnsInsta.this;
                                        if (webSnsInsta.f19440a != null && webSnsInsta.d != null && webSnsInsta.e == null) {
                                            MyWebSafe myWebSafe = new MyWebSafe(webSnsInsta.f19440a);
                                            webSnsInsta.e = myWebSafe;
                                            MainApp.I(webSnsInsta.b, myWebSafe);
                                            webSnsInsta.e.setVisibility(4);
                                            webSnsInsta.d.addView(webSnsInsta.e, 0, new ViewGroup.LayoutParams(-1, -1));
                                            webSnsInsta.d.post(new AnonymousClass2());
                                        }
                                    }
                                });
                            }
                            webSnsLoad.v = obj2;
                            return;
                        }
                        return;
                    }
                    WebSnsLoad.b(webSnsLoad);
                }
            });
        }
    }

    public static void a(WebSnsLoad webSnsLoad, String str) {
        if (webSnsLoad.e != null) {
            if (MainUtil.D5(str)) {
                if (webSnsLoad.w) {
                    webSnsLoad.w = false;
                    MyWebSafe myWebSafe = webSnsLoad.e;
                    if (myWebSafe != null) {
                        myWebSafe.post(new Runnable() { // from class: com.mycompany.app.web.WebSnsLoad.3
                            @Override // java.lang.Runnable
                            public final void run() {
                                WebSnsLoad webSnsLoad2 = WebSnsLoad.this;
                                MyWebSafe myWebSafe2 = webSnsLoad2.e;
                                if (myWebSafe2 == null) {
                                    return;
                                }
                                webSnsLoad2.w = false;
                                myWebSafe2.removeJavascriptInterface("android");
                            }
                        });
                        return;
                    }
                    return;
                }
                return;
            }
            if (!webSnsLoad.w) {
                webSnsLoad.w = true;
                MyWebSafe myWebSafe2 = webSnsLoad.e;
                if (myWebSafe2 == null) {
                    return;
                }
                myWebSafe2.post(new Runnable() { // from class: com.mycompany.app.web.WebSnsLoad.4
                    @Override // java.lang.Runnable
                    public final void run() {
                        WebSnsLoad webSnsLoad2 = WebSnsLoad.this;
                        MyWebSafe myWebSafe3 = webSnsLoad2.e;
                        if (myWebSafe3 == null) {
                            return;
                        }
                        webSnsLoad2.w = true;
                        myWebSafe3.addJavascriptInterface(new WebAppInterface(), "android");
                    }
                });
            }
        }
    }

    public static void b(WebSnsLoad webSnsLoad) {
        if (webSnsLoad.f19457a != null && webSnsLoad.d != null && webSnsLoad.e == null) {
            String K2 = MainUtil.K2(webSnsLoad.j);
            webSnsLoad.k = K2;
            if (!URLUtil.isNetworkUrl(K2)) {
                webSnsLoad.e(null);
                return;
            }
            if (PrefPdf.t) {
                WebView.setWebContentsDebuggingEnabled(false);
            }
            MyWebSafe myWebSafe = new MyWebSafe(webSnsLoad.f19457a);
            webSnsLoad.e = myWebSafe;
            MainApp.I(webSnsLoad.b, myWebSafe);
            webSnsLoad.e.setVisibility(4);
            webSnsLoad.d.addView(webSnsLoad.e, 0, new ViewGroup.LayoutParams(-1, -1));
            webSnsLoad.d.post(new AnonymousClass2());
        }
    }

    public static void c(WebSnsLoad webSnsLoad) {
        MyWebSafe myWebSafe = webSnsLoad.e;
        if (myWebSafe == null) {
            return;
        }
        webSnsLoad.q = true;
        webSnsLoad.r = false;
        webSnsLoad.s = 0;
        if (webSnsLoad.p) {
            myWebSafe.loadUrl(webSnsLoad.i);
        } else {
            myWebSafe.loadUrl(webSnsLoad.k);
        }
    }

    public static void d(WebSnsLoad webSnsLoad) {
        if (webSnsLoad.e == null) {
            return;
        }
        if (TextUtils.isEmpty(webSnsLoad.l)) {
            webSnsLoad.l = MainUtil.I2(webSnsLoad.j);
        }
        webSnsLoad.e.evaluateJavascript(webSnsLoad.l + webSnsLoad.i + "';return ele.value;}else{return 0;}})();", new ValueCallback<String>() { // from class: com.mycompany.app.web.WebSnsLoad.8
            @Override // android.webkit.ValueCallback
            public final void onReceiveValue(String str) {
                String str2 = str;
                WebSnsLoad webSnsLoad2 = WebSnsLoad.this;
                String str3 = webSnsLoad2.i;
                if (!TextUtils.isEmpty(str3)) {
                    if (!TextUtils.isEmpty(str2) && str2.contains(str3)) {
                        webSnsLoad2.s = 0;
                        MyWebSafe myWebSafe = webSnsLoad2.e;
                        if (myWebSafe != null) {
                            myWebSafe.postDelayed(new Runnable() { // from class: com.mycompany.app.web.WebSnsLoad.8.2
                                @Override // java.lang.Runnable
                                public final void run() {
                                    WebSnsLoad webSnsLoad3 = WebSnsLoad.this;
                                    if (webSnsLoad3.e != null) {
                                        if (TextUtils.isEmpty(webSnsLoad3.m)) {
                                            webSnsLoad3.m = MainUtil.J2(webSnsLoad3.j);
                                        }
                                        MainUtil.J(webSnsLoad3.e, webSnsLoad3.m, true);
                                        Runnable runnable = webSnsLoad3.D;
                                        MyWebSafe myWebSafe2 = webSnsLoad3.e;
                                        if (myWebSafe2 != null) {
                                            myWebSafe2.removeCallbacks(runnable);
                                            webSnsLoad3.e.postDelayed(runnable, 1000L);
                                        }
                                    }
                                }
                            }, 400L);
                            return;
                        }
                        return;
                    }
                    MyWebSafe myWebSafe2 = webSnsLoad2.e;
                    if (myWebSafe2 == null) {
                        return;
                    }
                    myWebSafe2.postDelayed(new Runnable() { // from class: com.mycompany.app.web.WebSnsLoad.8.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            WebSnsLoad webSnsLoad3 = WebSnsLoad.this;
                            int i = webSnsLoad3.s + 1;
                            webSnsLoad3.s = i;
                            if (i > 10) {
                                SnsLoadListener snsLoadListener = webSnsLoad3.f19458c;
                                if (snsLoadListener != null) {
                                    snsLoadListener.onError(webSnsLoad3.h);
                                    return;
                                }
                                return;
                            }
                            WebSnsLoad.d(webSnsLoad3);
                        }
                    }, 400L);
                }
            }
        });
    }

    public final void e(List list) {
        if (this.q) {
            this.q = false;
            this.r = false;
            this.s = 0;
            SnsLoadListener snsLoadListener = this.f19458c;
            if (snsLoadListener != null) {
                snsLoadListener.a(this.g, list);
            }
        }
    }

    /* loaded from: classes3.dex */
    public class LocalWebViewClient extends WebViewClient {
        public LocalWebViewClient() {
        }

        @Override // android.webkit.WebViewClient
        public final void onPageFinished(WebView webView, String str) {
            final WebSnsLoad webSnsLoad = WebSnsLoad.this;
            if (webSnsLoad.e != null) {
                webSnsLoad.f = false;
                WebSnsLoad.a(webSnsLoad, str);
                if (!webSnsLoad.x && !TextUtils.isEmpty(str) && !str.equals(webSnsLoad.y)) {
                    webSnsLoad.x = true;
                    webSnsLoad.y = str;
                    ViewGroup viewGroup = webSnsLoad.d;
                    if (viewGroup != null) {
                        viewGroup.post(new Runnable() { // from class: com.mycompany.app.web.WebSnsLoad.5
                            @Override // java.lang.Runnable
                            public final void run() {
                                WebSnsLoad webSnsLoad2 = WebSnsLoad.this;
                                MainUtil.l(webSnsLoad2.e);
                                webSnsLoad2.x = false;
                            }
                        });
                    }
                }
                MyWebSafe myWebSafe = webSnsLoad.e;
                if (myWebSafe != null) {
                    MainUtil.J(myWebSafe, "(function(){if(document.head){var ele=document.createElement('style');ele.id='sb_cln_style';ele.innerText='ins[class*=\"adsbygoogle\"],ins[class*=\"adsbyadop\"],[id*=\"div-gpt-ad\"],amp-ad{display:none !important;}';document.head.appendChild(ele);}{var eles=document.querySelectorAll('ins[class*=\"adsbygoogle\"],ins[class*=\"adsbyadop\"],[id*=\"div-gpt-ad\"],amp-ad');if(eles&&(eles.length>0)){for(var i=0;i<eles.length;i++){var ele=eles[i];var par=ele.parentNode;if(par){par.removeChild(ele);}else{ele.style.display='none';}}}}})();", true);
                }
                ViewGroup viewGroup2 = webSnsLoad.d;
                if (viewGroup2 == null) {
                    return;
                }
                viewGroup2.post(new Runnable() { // from class: com.mycompany.app.web.WebSnsLoad.LocalWebViewClient.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        final WebSnsLoad webSnsLoad2 = WebSnsLoad.this;
                        MyWebSafe myWebSafe2 = webSnsLoad2.e;
                        if (myWebSafe2 != null) {
                            if (webSnsLoad2.p) {
                                if (webSnsLoad2.q) {
                                    MainUtil.I(myWebSafe2, "(function(){var vds=document.querySelectorAll(\"script[type='application/json']\");var txt=null;if(vds&&(vds.length>0)){for(var i=0;i<vds.length;i++){if(vds[i].innerText.includes('.mp4')){txt=vds[i].innerText;break;}}}android.onStoryData(txt);})();", false);
                                    return;
                                }
                                return;
                            }
                            ViewGroup viewGroup3 = webSnsLoad2.d;
                            if (viewGroup3 != null && !webSnsLoad2.r) {
                                webSnsLoad2.r = true;
                                webSnsLoad2.s = 0;
                                viewGroup3.postDelayed(new Runnable() { // from class: com.mycompany.app.web.WebSnsLoad.7
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        WebSnsLoad.d(WebSnsLoad.this);
                                    }
                                }, 400L);
                            }
                        }
                    }
                });
            }
        }

        @Override // android.webkit.WebViewClient
        public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            WebSnsLoad webSnsLoad = WebSnsLoad.this;
            if (webSnsLoad.e != null) {
                webSnsLoad.f = true;
                WebSnsLoad.a(webSnsLoad, str);
                MyWebSafe myWebSafe = webSnsLoad.e;
                if (myWebSafe == null) {
                    return;
                }
                MainUtil.J(myWebSafe, "(function(){if(document.head){var ele=document.createElement('style');ele.id='sb_cln_style';ele.innerText='ins[class*=\"adsbygoogle\"],ins[class*=\"adsbyadop\"],[id*=\"div-gpt-ad\"],amp-ad{display:none !important;}';document.head.appendChild(ele);}{var eles=document.querySelectorAll('ins[class*=\"adsbygoogle\"],ins[class*=\"adsbyadop\"],[id*=\"div-gpt-ad\"],amp-ad');if(eles&&(eles.length>0)){for(var i=0;i<eles.length;i++){var ele=eles[i];var par=ele.parentNode;if(par){par.removeChild(ele);}else{ele.style.display='none';}}}}})();", true);
            }
        }

        @Override // android.webkit.WebViewClient
        public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            final WebSnsLoad webSnsLoad = WebSnsLoad.this;
            webSnsLoad.e = null;
            MainUtil.D(webView, renderProcessGoneDetail);
            ViewGroup viewGroup = webSnsLoad.d;
            if (viewGroup != null) {
                viewGroup.post(new Runnable() { // from class: com.mycompany.app.web.WebSnsLoad.6
                    @Override // java.lang.Runnable
                    public final void run() {
                        WebSnsLoad webSnsLoad2 = WebSnsLoad.this;
                        SnsLoadListener snsLoadListener = webSnsLoad2.f19458c;
                        if (snsLoadListener != null) {
                            snsLoadListener.onError(webSnsLoad2.h);
                        }
                    }
                });
                return true;
            }
            return true;
        }

        @Override // android.webkit.WebViewClient
        public final WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
            WebSnsLoad webSnsLoad = WebSnsLoad.this;
            if (webSnsLoad.e != null && webResourceRequest != null && webResourceRequest.getUrl() != null) {
                WebSnsLoad.a(webSnsLoad, webResourceRequest.getUrl().toString());
            }
            return null;
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
            WebSnsLoad webSnsLoad = WebSnsLoad.this;
            if (webSnsLoad.e == null || TextUtils.isEmpty(str)) {
                return true;
            }
            WebSnsLoad.a(webSnsLoad, str);
            webSnsLoad.e.loadUrl(str);
            return true;
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            WebSnsLoad webSnsLoad = WebSnsLoad.this;
            if (webSnsLoad.e != null && webResourceRequest != null && webResourceRequest.getUrl() != null) {
                String uri = webResourceRequest.getUrl().toString();
                if (!TextUtils.isEmpty(uri)) {
                    WebSnsLoad.a(webSnsLoad, uri);
                    webSnsLoad.e.loadUrl(uri);
                }
            }
            return true;
        }
    }
}
