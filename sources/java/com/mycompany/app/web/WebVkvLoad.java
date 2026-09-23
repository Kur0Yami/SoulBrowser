package com.mycompany.app.web;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.webkit.JavascriptInterface;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.URLUtil;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.common.internal.ImagesContract;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainDownAdapter;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.view.MyWebSafe;
import com.mycompany.app.web.WebSnsLoad;
import java.util.ArrayList;
import java.util.Collections;

/* loaded from: classes3.dex */
public class WebVkvLoad {

    /* renamed from: a, reason: collision with root package name */
    public MainActivity f20722a;
    public Context b;

    /* renamed from: c, reason: collision with root package name */
    public WebSnsLoad.SnsLoadListener f20723c;
    public ViewGroup d;
    public MyWebSafe e;
    public boolean f;
    public String g;
    public boolean h;
    public boolean i;
    public int j;
    public boolean k;
    public String l;
    public String m;
    public ArrayList n;

    /* renamed from: com.mycompany.app.web.WebVkvLoad$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass2 implements Runnable {

        /* renamed from: com.mycompany.app.web.WebVkvLoad$2$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 implements Runnable {
            public AnonymousClass1() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                WebVkvLoad webVkvLoad = WebVkvLoad.this;
                MyWebSafe myWebSafe = webVkvLoad.e;
                if (myWebSafe != null) {
                    myWebSafe.setWebViewClient(new LocalWebViewClient());
                    ViewGroup viewGroup = webVkvLoad.d;
                    if (viewGroup == null) {
                        return;
                    }
                    viewGroup.post(new Runnable() { // from class: com.mycompany.app.web.WebVkvLoad.2.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                            WebVkvLoad webVkvLoad2 = WebVkvLoad.this;
                            MyWebSafe myWebSafe2 = webVkvLoad2.e;
                            if (myWebSafe2 != null) {
                                webVkvLoad2.h = true;
                                myWebSafe2.addJavascriptInterface(new WebAppInterface(), "android");
                                ViewGroup viewGroup2 = WebVkvLoad.this.d;
                                if (viewGroup2 == null) {
                                    return;
                                }
                                viewGroup2.post(new Runnable() { // from class: com.mycompany.app.web.WebVkvLoad.2.1.1.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        WebVkvLoad webVkvLoad3 = WebVkvLoad.this;
                                        MyWebSafe myWebSafe3 = webVkvLoad3.e;
                                        if (myWebSafe3 == null) {
                                            return;
                                        }
                                        myWebSafe3.loadUrl(webVkvLoad3.g);
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
            WebVkvLoad webVkvLoad = WebVkvLoad.this;
            MyWebSafe myWebSafe = webVkvLoad.e;
            if (myWebSafe != null) {
                MainUtil.W7(myWebSafe, true);
                ViewGroup viewGroup = webVkvLoad.d;
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
        public void onVidData(String str) {
            boolean isEmpty = TextUtils.isEmpty(str);
            final WebVkvLoad webVkvLoad = WebVkvLoad.this;
            if (isEmpty) {
                webVkvLoad.c();
                return;
            }
            webVkvLoad.m = str;
            MainActivity mainActivity = webVkvLoad.f20722a;
            if (mainActivity == null) {
                return;
            }
            mainActivity.m0(new Runnable() { // from class: com.mycompany.app.web.WebVkvLoad.7
                @Override // java.lang.Runnable
                public final void run() {
                    JsonArray jsonArray;
                    JsonObject jsonObject;
                    JsonArray jsonArray2;
                    int indexOf;
                    int lastIndexOf;
                    WebVkvLoad webVkvLoad2 = WebVkvLoad.this;
                    String str2 = webVkvLoad2.m;
                    ArrayList arrayList = null;
                    webVkvLoad2.m = null;
                    if (!TextUtils.isEmpty(str2)) {
                        try {
                            indexOf = str2.indexOf(123);
                        } catch (Exception unused) {
                            jsonArray = null;
                        }
                        if (indexOf >= 0 && (lastIndexOf = str2.lastIndexOf(125)) > indexOf) {
                            jsonArray = JsonParser.b(str2.substring(indexOf, lastIndexOf + 1)).k().r("apiPrefetchCache").i();
                            if (jsonArray != null) {
                                int size = jsonArray.f12669c.size();
                                ArrayList arrayList2 = null;
                                for (int i = 0; i < size; i++) {
                                    if (webVkvLoad2.b == null) {
                                        break;
                                    }
                                    try {
                                        JsonObject jsonObject2 = (JsonObject) jsonArray.q(i);
                                        if (jsonObject2 != null && (jsonObject = (JsonObject) jsonObject2.f12671c.get("response")) != null && (((jsonArray2 = (JsonArray) jsonObject.f12671c.get("items")) != null || (jsonArray2 = (JsonArray) jsonObject.f12671c.get("videos")) != null) && (arrayList2 = webVkvLoad2.b((JsonObject) jsonArray2.q(0))) != null && !arrayList2.isEmpty())) {
                                            break;
                                        }
                                    } catch (Exception unused2) {
                                    }
                                }
                                arrayList = arrayList2;
                            }
                        }
                    }
                    if (arrayList != null && !arrayList.isEmpty()) {
                        webVkvLoad2.n = arrayList;
                        ViewGroup viewGroup = webVkvLoad2.d;
                        if (viewGroup == null) {
                            return;
                        }
                        viewGroup.post(new Runnable() { // from class: com.mycompany.app.web.WebVkvLoad.7.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                WebVkvLoad webVkvLoad3 = WebVkvLoad.this;
                                ArrayList arrayList3 = webVkvLoad3.n;
                                webVkvLoad3.n = null;
                                WebSnsLoad.SnsLoadListener snsLoadListener = webVkvLoad3.f20723c;
                                if (snsLoadListener != null) {
                                    snsLoadListener.a(0, arrayList3);
                                }
                            }
                        });
                        return;
                    }
                    webVkvLoad2.c();
                }
            });
        }
    }

    public WebVkvLoad(WebViewActivity webViewActivity, ViewGroup viewGroup, String str, WebSnsLoad.SnsLoadListener snsLoadListener) {
        if (webViewActivity != null && viewGroup != null) {
            this.f20722a = webViewActivity;
            this.b = webViewActivity.getApplicationContext();
            this.f20723c = snsLoadListener;
            this.d = viewGroup;
            if (!TextUtils.isEmpty(str) && str.startsWith("https://m.vkvideo.ru")) {
                this.g = "https://m.vk.com" + str.substring(20);
            } else {
                this.g = str;
            }
            ViewGroup viewGroup2 = this.d;
            if (viewGroup2 != null) {
                viewGroup2.post(new Runnable() { // from class: com.mycompany.app.web.WebVkvLoad.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        WebVkvLoad webVkvLoad = WebVkvLoad.this;
                        if (webVkvLoad.f20722a != null && webVkvLoad.d != null && webVkvLoad.e == null) {
                            MyWebSafe myWebSafe = new MyWebSafe(webVkvLoad.f20722a);
                            webVkvLoad.e = myWebSafe;
                            MainApp.I(webVkvLoad.b, myWebSafe);
                            webVkvLoad.e.setVisibility(4);
                            webVkvLoad.d.addView(webVkvLoad.e, 0, new ViewGroup.LayoutParams(-1, -1));
                            webVkvLoad.d.post(new AnonymousClass2());
                        }
                    }
                });
            }
        }
    }

    public static void a(WebVkvLoad webVkvLoad, String str) {
        if (webVkvLoad.e != null) {
            if (MainUtil.D5(str)) {
                if (webVkvLoad.h) {
                    webVkvLoad.h = false;
                    MyWebSafe myWebSafe = webVkvLoad.e;
                    if (myWebSafe != null) {
                        myWebSafe.post(new Runnable() { // from class: com.mycompany.app.web.WebVkvLoad.3
                            @Override // java.lang.Runnable
                            public final void run() {
                                WebVkvLoad webVkvLoad2 = WebVkvLoad.this;
                                MyWebSafe myWebSafe2 = webVkvLoad2.e;
                                if (myWebSafe2 == null) {
                                    return;
                                }
                                webVkvLoad2.h = false;
                                myWebSafe2.removeJavascriptInterface("android");
                            }
                        });
                        return;
                    }
                    return;
                }
                return;
            }
            if (!webVkvLoad.h) {
                webVkvLoad.h = true;
                MyWebSafe myWebSafe2 = webVkvLoad.e;
                if (myWebSafe2 == null) {
                    return;
                }
                myWebSafe2.post(new Runnable() { // from class: com.mycompany.app.web.WebVkvLoad.4
                    @Override // java.lang.Runnable
                    public final void run() {
                        WebVkvLoad webVkvLoad2 = WebVkvLoad.this;
                        MyWebSafe myWebSafe3 = webVkvLoad2.e;
                        if (myWebSafe3 == null) {
                            return;
                        }
                        webVkvLoad2.h = true;
                        myWebSafe3.addJavascriptInterface(new WebAppInterface(), "android");
                    }
                });
            }
        }
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Object, java.util.Comparator] */
    public final ArrayList b(JsonObject jsonObject) {
        ArrayList arrayList;
        JsonObject jsonObject2;
        if (jsonObject != null) {
            int i = 0;
            try {
                jsonObject2 = (JsonObject) jsonObject.f12671c.get("files");
            } catch (Exception unused) {
                arrayList = null;
            }
            if (jsonObject2 != null) {
                arrayList = null;
                int i2 = 0;
                for (String str : jsonObject2.f12671c.keySet()) {
                    try {
                        if (this.b == null) {
                            break;
                        }
                        if (str.startsWith("mp4_")) {
                            String X6 = MainUtil.X6(jsonObject2.r(str).p());
                            if (URLUtil.isNetworkUrl(X6)) {
                                String substring = str.substring(4);
                                int G6 = MainUtil.G6(substring);
                                MainDownAdapter.DownListItem downListItem = new MainDownAdapter.DownListItem(i2, substring, "MP4");
                                downListItem.b = X6;
                                downListItem.j = G6;
                                if (arrayList == null) {
                                    arrayList = new ArrayList();
                                }
                                arrayList.add(downListItem);
                                i2++;
                            }
                        }
                    } catch (Exception unused2) {
                    }
                }
                if (arrayList != null && !arrayList.isEmpty()) {
                    try {
                        Collections.sort(arrayList, new Object());
                    } catch (Exception unused3) {
                    }
                    if (this.b != null) {
                        try {
                            JsonArray jsonArray = (JsonArray) jsonObject.f12671c.get("image");
                            if (jsonArray != null) {
                                String X62 = MainUtil.X6(((JsonObject) jsonArray.q(0)).r(ImagesContract.URL).p());
                                if (URLUtil.isNetworkUrl(X62)) {
                                    int size = arrayList.size();
                                    while (i < size) {
                                        Object obj = arrayList.get(i);
                                        i++;
                                        ((MainDownAdapter.DownListItem) obj).f = X62;
                                    }
                                }
                            }
                        } catch (Exception unused4) {
                        }
                    }
                }
                return arrayList;
            }
        }
        return null;
    }

    public final void c() {
        int i = this.j;
        if (i > 20) {
            ViewGroup viewGroup = this.d;
            if (viewGroup != null) {
                viewGroup.post(new Runnable() { // from class: com.mycompany.app.web.WebVkvLoad.8
                    @Override // java.lang.Runnable
                    public final void run() {
                        WebSnsLoad.SnsLoadListener snsLoadListener = WebVkvLoad.this.f20723c;
                        if (snsLoadListener != null) {
                            snsLoadListener.onError(0);
                        }
                    }
                });
                return;
            }
            return;
        }
        this.j = i + 1;
        this.i = false;
        ViewGroup viewGroup2 = this.d;
        if (viewGroup2 == null) {
            return;
        }
        viewGroup2.postDelayed(new Runnable() { // from class: com.mycompany.app.web.WebVkvLoad.9
            @Override // java.lang.Runnable
            public final void run() {
                WebVkvLoad webVkvLoad = WebVkvLoad.this;
                if (webVkvLoad.i) {
                    return;
                }
                webVkvLoad.i = true;
                MainUtil.I(webVkvLoad.e, "(function(){var data=null;var eles=document.querySelectorAll(\"script\");if(eles&&(eles.length>0)){for(var i=0;i<eles.length;i++){var val=eles[i].innerHTML;if(val&&val.startsWith('extend')){data=val;break;}}}android.onVidData(data);})();", true);
            }
        }, 200L);
    }

    /* loaded from: classes3.dex */
    public class LocalWebViewClient extends WebViewClient {
        public LocalWebViewClient() {
        }

        @Override // android.webkit.WebViewClient
        public final void onPageFinished(WebView webView, String str) {
            final WebVkvLoad webVkvLoad = WebVkvLoad.this;
            if (webVkvLoad.e != null) {
                webVkvLoad.f = false;
                WebVkvLoad.a(webVkvLoad, str);
                if (!webVkvLoad.k && !TextUtils.isEmpty(str) && !str.equals(webVkvLoad.l)) {
                    webVkvLoad.k = true;
                    webVkvLoad.l = str;
                    ViewGroup viewGroup = webVkvLoad.d;
                    if (viewGroup != null) {
                        viewGroup.post(new Runnable() { // from class: com.mycompany.app.web.WebVkvLoad.5
                            @Override // java.lang.Runnable
                            public final void run() {
                                WebVkvLoad webVkvLoad2 = WebVkvLoad.this;
                                MainUtil.l(webVkvLoad2.e);
                                webVkvLoad2.k = false;
                            }
                        });
                    }
                }
                if (webVkvLoad.i) {
                    return;
                }
                webVkvLoad.i = true;
                MainUtil.I(webVkvLoad.e, "(function(){var data=null;var eles=document.querySelectorAll(\"script\");if(eles&&(eles.length>0)){for(var i=0;i<eles.length;i++){var val=eles[i].innerHTML;if(val&&val.startsWith('extend')){data=val;break;}}}android.onVidData(data);})();", true);
            }
        }

        @Override // android.webkit.WebViewClient
        public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            WebVkvLoad webVkvLoad = WebVkvLoad.this;
            if (webVkvLoad.e != null) {
                webVkvLoad.f = true;
                WebVkvLoad.a(webVkvLoad, str);
                if (webVkvLoad.i) {
                    return;
                }
                webVkvLoad.i = true;
                MainUtil.I(webVkvLoad.e, "(function(){var data=null;var eles=document.querySelectorAll(\"script\");if(eles&&(eles.length>0)){for(var i=0;i<eles.length;i++){var val=eles[i].innerHTML;if(val&&val.startsWith('extend')){data=val;break;}}}android.onVidData(data);})();", true);
            }
        }

        @Override // android.webkit.WebViewClient
        public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            final WebVkvLoad webVkvLoad = WebVkvLoad.this;
            webVkvLoad.e = null;
            MainUtil.D(webView, renderProcessGoneDetail);
            ViewGroup viewGroup = webVkvLoad.d;
            if (viewGroup != null) {
                viewGroup.post(new Runnable() { // from class: com.mycompany.app.web.WebVkvLoad.6
                    @Override // java.lang.Runnable
                    public final void run() {
                        WebSnsLoad.SnsLoadListener snsLoadListener = WebVkvLoad.this.f20723c;
                        if (snsLoadListener != null) {
                            snsLoadListener.onError(0);
                        }
                    }
                });
                return true;
            }
            return true;
        }

        @Override // android.webkit.WebViewClient
        public final WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
            WebVkvLoad webVkvLoad = WebVkvLoad.this;
            if (webVkvLoad.e != null && webResourceRequest != null && webResourceRequest.getUrl() != null) {
                WebVkvLoad.a(webVkvLoad, webResourceRequest.getUrl().toString());
            }
            return null;
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
            WebVkvLoad webVkvLoad = WebVkvLoad.this;
            if (webVkvLoad.e == null || TextUtils.isEmpty(str)) {
                return true;
            }
            WebVkvLoad.a(webVkvLoad, str);
            webVkvLoad.e.loadUrl(str);
            return true;
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            WebVkvLoad webVkvLoad = WebVkvLoad.this;
            if (webVkvLoad.e != null && webResourceRequest != null && webResourceRequest.getUrl() != null) {
                String uri = webResourceRequest.getUrl().toString();
                if (!TextUtils.isEmpty(uri)) {
                    WebVkvLoad.a(webVkvLoad, uri);
                    webVkvLoad.e.loadUrl(uri);
                }
            }
            return true;
        }
    }
}
