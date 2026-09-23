package com.mycompany.app.main;

import android.os.Handler;
import android.os.Looper;
import android.webkit.WebView;
import com.mycompany.app.view.MyAdNative;
import com.mycompany.app.web.WebViewActivity;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class MainWebDestroy {

    /* renamed from: a, reason: collision with root package name */
    public final Object f17022a = new Object();
    public WebViewActivity b;

    /* renamed from: c, reason: collision with root package name */
    public Handler f17023c;
    public WebBusyListener d;
    public boolean e;
    public boolean f;
    public boolean g;
    public boolean h;
    public boolean i;
    public boolean j;
    public int k;
    public ArrayList l;
    public DelItem m;
    public DelItem n;

    /* loaded from: classes3.dex */
    public static class DelItem {

        /* renamed from: a, reason: collision with root package name */
        public List f17029a;
        public WebView b;

        /* renamed from: c, reason: collision with root package name */
        public MyAdNative f17030c;
    }

    /* loaded from: classes3.dex */
    public interface WebBusyListener {
        boolean a();
    }

    public MainWebDestroy(WebViewActivity webViewActivity, Handler handler, WebBusyListener webBusyListener) {
        this.b = webViewActivity;
        this.f17023c = handler;
        this.d = webBusyListener;
        if (handler == null) {
            this.f17023c = new Handler(Looper.getMainLooper());
        }
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.mycompany.app.main.MainWebDestroy$DelItem, java.lang.Object] */
    public final void a(List list) {
        if (!list.isEmpty()) {
            synchronized (this.f17022a) {
                try {
                    if (this.l == null) {
                        this.l = new ArrayList();
                    }
                    ?? obj = new Object();
                    obj.f17029a = list;
                    this.l.add(obj);
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (this.i) {
                return;
            }
            d(false);
        }
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [com.mycompany.app.main.MainWebDestroy$DelItem, java.lang.Object] */
    public final void b(WebView webView) {
        if (webView != null) {
            webView.onPause();
            webView.setVisibility(8);
            synchronized (this.f17022a) {
                try {
                    if (this.l == null) {
                        this.l = new ArrayList();
                    }
                    ArrayList arrayList = this.l;
                    ?? obj = new Object();
                    obj.b = webView;
                    arrayList.add(obj);
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (this.i) {
                return;
            }
            d(false);
        }
    }

    public final void c() {
        this.e = false;
        this.f = false;
        d(false);
    }

    public final void d(boolean z) {
        long j;
        if (!this.e) {
            this.e = true;
            this.g = z;
            if (z) {
                j = 1200;
            } else if (h()) {
                j = 800;
            } else {
                j = 500;
            }
            Handler handler = this.f17023c;
            if (handler == null) {
                return;
            }
            handler.postDelayed(new Runnable() { // from class: com.mycompany.app.main.MainWebDestroy.1
                @Override // java.lang.Runnable
                public final void run() {
                    WebViewActivity webViewActivity = MainWebDestroy.this.b;
                    if (webViewActivity == null) {
                        return;
                    }
                    webViewActivity.m0(new Runnable() { // from class: com.mycompany.app.main.MainWebDestroy.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            final MainWebDestroy mainWebDestroy = MainWebDestroy.this;
                            mainWebDestroy.g = false;
                            mainWebDestroy.j = false;
                            DelItem delItem = mainWebDestroy.m;
                            mainWebDestroy.m = null;
                            if (delItem == null) {
                                synchronized (mainWebDestroy.f17022a) {
                                    delItem = mainWebDestroy.f();
                                }
                            }
                            if (mainWebDestroy.j) {
                                mainWebDestroy.j = false;
                                mainWebDestroy.c();
                            } else {
                                if (delItem == null) {
                                    mainWebDestroy.e = false;
                                    return;
                                }
                                mainWebDestroy.n = delItem;
                                Handler handler2 = mainWebDestroy.f17023c;
                                if (handler2 == null) {
                                    return;
                                }
                                handler2.post(new Runnable() { // from class: com.mycompany.app.main.MainWebDestroy.2
                                    /* JADX WARN: Type inference failed for: r1v6, types: [com.mycompany.app.main.MainWebDestroy$DelItem, java.lang.Object] */
                                    /* JADX WARN: Type inference failed for: r1v7, types: [com.mycompany.app.main.MainWebDestroy$DelItem, java.lang.Object] */
                                    /* JADX WARN: Type inference failed for: r2v2, types: [com.mycompany.app.main.MainWebDestroy$DelItem, java.lang.Object] */
                                    /* JADX WARN: Type inference failed for: r2v3, types: [com.mycompany.app.main.MainWebDestroy$DelItem, java.lang.Object] */
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        final MainWebDestroy mainWebDestroy2 = MainWebDestroy.this;
                                        DelItem delItem2 = mainWebDestroy2.n;
                                        mainWebDestroy2.n = null;
                                        if (delItem2 == null) {
                                            mainWebDestroy2.e = false;
                                            return;
                                        }
                                        WebView webView = delItem2.b;
                                        if (webView != null) {
                                            if (mainWebDestroy2.i) {
                                                ?? obj = new Object();
                                                obj.b = webView;
                                                mainWebDestroy2.m = obj;
                                                return;
                                            } else {
                                                if (mainWebDestroy2.h()) {
                                                    ?? obj2 = new Object();
                                                    obj2.b = webView;
                                                    mainWebDestroy2.m = obj2;
                                                    mainWebDestroy2.c();
                                                    return;
                                                }
                                                mainWebDestroy2.f = true;
                                                MainUtil.E(webView);
                                                try {
                                                    webView.destroy();
                                                } catch (Exception unused) {
                                                }
                                                Handler handler3 = mainWebDestroy2.f17023c;
                                                if (handler3 != null) {
                                                    handler3.postDelayed(new Runnable() { // from class: com.mycompany.app.main.MainWebDestroy.3
                                                        @Override // java.lang.Runnable
                                                        public final void run() {
                                                            MainWebDestroy.this.c();
                                                        }
                                                    }, 200L);
                                                    return;
                                                }
                                                return;
                                            }
                                        }
                                        MyAdNative myAdNative = delItem2.f17030c;
                                        if (myAdNative != null) {
                                            if (mainWebDestroy2.i) {
                                                ?? obj3 = new Object();
                                                obj3.f17030c = myAdNative;
                                                mainWebDestroy2.m = obj3;
                                                return;
                                            }
                                            if (mainWebDestroy2.h()) {
                                                ?? obj4 = new Object();
                                                obj4.f17030c = myAdNative;
                                                mainWebDestroy2.m = obj4;
                                                mainWebDestroy2.c();
                                                return;
                                            }
                                            mainWebDestroy2.f = true;
                                            if (myAdNative.f18492c) {
                                                myAdNative.f18492c = false;
                                                MyAdNative.AdNativeListener adNativeListener = myAdNative.j;
                                                if (adNativeListener != null) {
                                                    adNativeListener.g(false);
                                                    myAdNative.j = null;
                                                }
                                                MainUtil.V6(myAdNative);
                                                MainUtil.R6(myAdNative.h);
                                                myAdNative.h = null;
                                                myAdNative.m = null;
                                                myAdNative.n = null;
                                                myAdNative.o = null;
                                                myAdNative.p = null;
                                                myAdNative.q = null;
                                                myAdNative.r = null;
                                                myAdNative.s = null;
                                                myAdNative.A = null;
                                            }
                                            myAdNative.n();
                                            myAdNative.o(false);
                                            Handler handler4 = mainWebDestroy2.f17023c;
                                            if (handler4 == null) {
                                                return;
                                            }
                                            handler4.postDelayed(new Runnable() { // from class: com.mycompany.app.main.MainWebDestroy.4
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    MainWebDestroy.this.c();
                                                }
                                            }, 200L);
                                            return;
                                        }
                                        mainWebDestroy2.e = false;
                                    }
                                });
                            }
                        }
                    });
                }
            }, j);
        }
    }

    /* JADX WARN: Type inference failed for: r1v3, types: [com.mycompany.app.main.MainWebDestroy$DelItem, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v4, types: [com.mycompany.app.main.MainWebDestroy$DelItem, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v6, types: [com.mycompany.app.main.MainWebDestroy$DelItem, java.lang.Object] */
    public final DelItem e() {
        try {
            DelItem delItem = (DelItem) this.l.get(0);
            if (delItem != null) {
                List list = delItem.f17029a;
                if (list != null && this.k < list.size()) {
                    WebView webView = (WebView) list.get(this.k);
                    this.k++;
                    ?? obj = new Object();
                    obj.b = webView;
                    return obj;
                }
                WebView webView2 = delItem.b;
                if (webView2 != null) {
                    delItem.b = null;
                    ?? obj2 = new Object();
                    obj2.b = webView2;
                    return obj2;
                }
                MyAdNative myAdNative = delItem.f17030c;
                if (myAdNative != null) {
                    delItem.f17030c = null;
                    ?? obj3 = new Object();
                    obj3.f17030c = myAdNative;
                    return obj3;
                }
            }
        } catch (Exception unused) {
        }
        return null;
    }

    public final DelItem f() {
        try {
            ArrayList arrayList = this.l;
            if (arrayList != null && !arrayList.isEmpty() && this.k >= 0) {
                if (this.i) {
                    return null;
                }
                if (h()) {
                    this.j = true;
                    return null;
                }
                DelItem e = e();
                if (e != null) {
                    return e;
                }
                this.l.remove(0);
                this.k = 0;
                if (this.l.isEmpty()) {
                    i();
                    return null;
                }
                return e();
            }
            i();
            return null;
        } catch (Exception unused) {
            i();
            return null;
        }
    }

    public final boolean g() {
        try {
            ArrayList arrayList = this.l;
            if (arrayList != null && !arrayList.isEmpty()) {
                ArrayList arrayList2 = this.l;
                int size = arrayList2.size();
                int i = 0;
                while (i < size) {
                    Object obj = arrayList2.get(i);
                    i++;
                    DelItem delItem = (DelItem) obj;
                    if (delItem != null && delItem.f17030c != null) {
                        return true;
                    }
                }
                return false;
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    public final boolean h() {
        if (this.h) {
            this.h = false;
            return true;
        }
        WebBusyListener webBusyListener = this.d;
        if (webBusyListener == null) {
            return false;
        }
        return webBusyListener.a();
    }

    public final void i() {
        this.e = false;
        this.f = false;
        this.g = false;
        this.h = false;
        this.i = false;
        this.j = false;
        this.k = 0;
        this.l = null;
    }
}
