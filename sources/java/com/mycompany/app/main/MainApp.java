package com.mycompany.app.main;

import android.app.Activity;
import android.app.Application;
import android.app.NotificationManager;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.VpnService;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.LruCache;
import android.view.inputmethod.InputMethodManager;
import android.webkit.CookieManager;
import android.webkit.WebView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatDelegate;
import androidx.core.os.LocaleListCompat;
import com.google.api.client.http.HttpStatusCodes;
import com.mycompany.app.compress.CompressCache;
import com.mycompany.app.data.DataAlbum;
import com.mycompany.app.data.DataCast;
import com.mycompany.app.data.DataCmp;
import com.mycompany.app.data.DataNews;
import com.mycompany.app.data.DataPdf;
import com.mycompany.app.data.DataSearch;
import com.mycompany.app.data.DataTrans;
import com.mycompany.app.data.DataUrl;
import com.mycompany.app.data.book.DataBookAds;
import com.mycompany.app.data.book.DataBookAlbum;
import com.mycompany.app.data.book.DataBookBlock;
import com.mycompany.app.data.book.DataBookCmp;
import com.mycompany.app.data.book.DataBookDc;
import com.mycompany.app.data.book.DataBookDown;
import com.mycompany.app.data.book.DataBookFilter;
import com.mycompany.app.data.book.DataBookHistory;
import com.mycompany.app.data.book.DataBookJava;
import com.mycompany.app.data.book.DataBookLink;
import com.mycompany.app.data.book.DataBookOver;
import com.mycompany.app.data.book.DataBookPdf;
import com.mycompany.app.data.book.DataBookPms;
import com.mycompany.app.data.book.DataBookPop;
import com.mycompany.app.data.book.DataBookRecent;
import com.mycompany.app.data.book.DataBookScript;
import com.mycompany.app.data.book.DataBookSearch;
import com.mycompany.app.data.book.DataBookTmem;
import com.mycompany.app.data.book.DataBookTrans;
import com.mycompany.app.data.book.DataBookUser;
import com.mycompany.app.gdrive.DataGdrive;
import com.mycompany.app.main.MainDownSvc;
import com.mycompany.app.main.MainUri;
import com.mycompany.app.pref.PrefAlbum;
import com.mycompany.app.pref.PrefEditor;
import com.mycompany.app.pref.PrefFloat;
import com.mycompany.app.pref.PrefImage;
import com.mycompany.app.pref.PrefList;
import com.mycompany.app.pref.PrefMain;
import com.mycompany.app.pref.PrefPath;
import com.mycompany.app.pref.PrefPdf;
import com.mycompany.app.pref.PrefRead;
import com.mycompany.app.pref.PrefSecret;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.pref.PrefSub;
import com.mycompany.app.pref.PrefSync;
import com.mycompany.app.pref.PrefTts;
import com.mycompany.app.pref.PrefVideo;
import com.mycompany.app.pref.PrefWeb;
import com.mycompany.app.pref.PrefZone;
import com.mycompany.app.pref.PrefZtri;
import com.mycompany.app.pref.PrefZtwo;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyAdNative;
import com.mycompany.app.vpn.VpnSvc;
import com.mycompany.app.web.WebClean;
import com.nostra13.universalimageloader.cache.disc.DiskCache;
import com.nostra13.universalimageloader.cache.disc.impl.BaseDiskCache;
import com.nostra13.universalimageloader.cache.disc.impl.ext.LruDiskCache;
import com.nostra13.universalimageloader.cache.disc.naming.FileNameGenerator;
import com.nostra13.universalimageloader.core.DefaultConfigurationFactory;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.ImageLoaderConfiguration;
import com.nostra13.universalimageloader.core.assist.QueueProcessingType;
import com.nostra13.universalimageloader.core.download.BaseImageDownloader;
import com.nostra13.universalimageloader.utils.L;
import java.io.File;
import java.util.ArrayList;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* loaded from: classes3.dex */
public class MainApp extends Application {
    public static int A1;
    public static int B1;
    public static int C1;
    public static int D1;
    public static int E1;
    public static int F1;
    public static int G1;
    public static int H1;
    public static Locale I1;
    public static Locale J1;
    public static boolean K1;
    public static boolean L1;
    public static int M1;
    public static boolean N1;
    public static boolean O1;
    public static boolean P1;
    public static boolean Q1;
    public static boolean R1;
    public static boolean S1;
    public static Toast T1;
    public static String U1;
    public static String V1;
    public static String W1;
    public static int X0;
    public static String X1;
    public static int Y0;
    public static String Y1;
    public static int Z0;
    public static String Z1;
    public static int a1;
    public static String a2;
    public static int b1;
    public static String b2;
    public static int c1;
    public static String c2;
    public static int d1;
    public static int[] d2;
    public static int e1;
    public static int f1;
    public static int g1;
    public static int h1;
    public static int i1;
    public static int j1;
    public static int k1;
    public static int l1;
    public static int m1;
    public static int n1;
    public static int o1;
    public static int p1;
    public static int q1;
    public static int r1;
    public static int s1;
    public static int t1;
    public static int u1;
    public static int v1;
    public static int w1;
    public static int x1;
    public static int y1;
    public static int z1;
    public String A;
    public DataBookRecent A0;
    public MainUri.UriItem B;
    public DataBookSearch B0;
    public int C;
    public DataBookScript C0;
    public boolean D;
    public DataBookTmem D0;
    public ArrayList E;
    public DataBookTrans E0;
    public MainDownSvc.DownBusyListener F;
    public DataBookUser F0;
    public MainDownSvc.DownListListener G;
    public DataGdrive G0;
    public LruCache H;
    public Handler H0;
    public VpnSvc I;
    public MainWebDestroy I0;
    public boolean J;
    public AdBusyListener J0;
    public VpnSvc.VpnSvcListener K;
    public MyAdNative K0;
    public ExecutorService L;
    public AdLocalListener L0;
    public PrefAlbum M;
    public Handler M0;
    public PrefEditor N;
    public MyAdNative N0;
    public PrefFloat O;
    public AdLocalListener O0;
    public PrefImage P;
    public Handler P0;
    public PrefList Q;
    public PrefMain R;
    public PrefPath S;
    public String S0;
    public PrefPdf T;
    public String T0;
    public PrefRead U;
    public MainUri.UriItem U0;
    public PrefSecret V;
    public int V0;
    public PrefSub W;
    public ArrayList W0;
    public PrefSync X;
    public PrefTts Y;
    public PrefVideo Z;
    public PrefWeb a0;
    public PrefZone b0;

    /* renamed from: c, reason: collision with root package name */
    public boolean f16429c;
    public PrefZtri c0;
    public PrefZtwo d0;
    public DataAlbum e0;
    public int f;
    public DataCast f0;
    public boolean g;
    public DataCmp g0;
    public boolean h;
    public DataNews h0;
    public String i;
    public DataPdf i0;
    public String j;
    public DataSearch j0;
    public NotificationManager k;
    public DataTrans k0;
    public ClipboardManager l;
    public DataUrl l0;
    public InputMethodManager m;
    public DataBookAds m0;
    public MyLifeCycle n;
    public DataBookAlbum n0;
    public int o;
    public DataBookBlock o0;
    public boolean p;
    public DataBookCmp p0;
    public WebClean q;
    public DataBookDc q0;
    public CookieManager r;
    public DataBookDown r0;
    public int s;
    public DataBookFilter s0;
    public boolean t;
    public DataBookHistory t0;
    public boolean u;
    public DataBookJava u0;
    public MainDownSvc v;
    public DataBookLink v0;
    public boolean w;
    public DataBookOver w0;
    public long x;
    public DataBookPdf x0;
    public int y;
    public DataBookPms y0;
    public String z;
    public DataBookPop z0;
    public final Runnable Q0 = new Runnable() { // from class: com.mycompany.app.main.MainApp.5
        @Override // java.lang.Runnable
        public final void run() {
            int i = MainApp.X0;
            MainApp.this.e(1);
        }
    };
    public final Runnable R0 = new Runnable() { // from class: com.mycompany.app.main.MainApp.6
        @Override // java.lang.Runnable
        public final void run() {
            int i = MainApp.X0;
            MainApp.this.e(0);
        }
    };

    /* renamed from: com.mycompany.app.main.MainApp$7, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass7 implements Runnable {
        public AnonymousClass7() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            MainUtil.K(MainApp.this.getApplicationContext(), PrefSync.k, false);
        }
    }

    /* loaded from: classes3.dex */
    public interface AdBusyListener {
        boolean a();

        void b(int i, boolean z);
    }

    /* loaded from: classes3.dex */
    public interface AdLocalListener {
        void b(MyAdNative myAdNative);

        void c(MyAdNative myAdNative);

        void e();

        void f(MyAdNative myAdNative);
    }

    /* loaded from: classes3.dex */
    public class MyLifeCycle implements Application.ActivityLifecycleCallbacks {
        public MyLifeCycle() {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityDestroyed(Activity activity) {
            MainApp mainApp = MainApp.this;
            if (mainApp.o == 0) {
                mainApp.K(new AnonymousClass7());
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityPaused(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityResumed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStarted(Activity activity) {
            MainApp mainApp = MainApp.this;
            int i = mainApp.o + 1;
            mainApp.o = i;
            if (i == 1 && !mainApp.p && !PrefSecret.w && MainUtil.z6()) {
                Intent i2 = MainUtil.i2(mainApp.getApplicationContext(), PrefSecret.s);
                i2.putExtra("EXTRA_TYPE", 0);
                i2.addFlags(268435456);
                mainApp.startActivity(i2);
            }
            mainApp.p = false;
            if (PrefSecret.w) {
                PrefSecret.w = false;
                PrefSet.d(9, mainApp.getApplicationContext(), "mLockSkip", PrefSecret.w);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStopped(Activity activity) {
            MainApp mainApp = MainApp.this;
            mainApp.o--;
        }
    }

    public static boolean A(Context context) {
        MainApp p;
        if (!PrefPdf.P && !MainUtil.f5() && (p = p(context)) != null && p.g && p.f == 1) {
            return true;
        }
        return false;
    }

    public static boolean C(Exception exc) {
        try {
            String message = exc.getMessage();
            if (!TextUtils.isEmpty(message)) {
                return message.contains("Can't create handler inside thread");
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    public static void F(Context context, WebView webView) {
        MainApp p;
        if (webView != null && (p = p(context)) != null && !p.f16429c) {
            try {
                p.f16429c = true;
                webView.pauseTimers();
            } catch (Exception unused) {
            }
        }
    }

    public static void I(Context context, WebView webView) {
        MainApp p;
        if (webView != null && (p = p(context)) != null && p.f16429c) {
            try {
                webView.resumeTimers();
                p.f16429c = false;
            } catch (Exception unused) {
            }
        }
    }

    public static void J(Context context, Runnable runnable) {
        MainApp p = p(context);
        if (p == null) {
            return;
        }
        p.K(runnable);
    }

    public static void L(Context context, boolean z) {
        int i;
        MainApp p = p(context);
        if (p != null) {
            if (z) {
                i = 1;
            } else {
                i = 2;
            }
            if (p.s != i) {
                try {
                    CookieManager m = m(context);
                    if (m != null) {
                        m.setAcceptCookie(z);
                        p.s = i;
                    }
                } catch (Exception | NoSuchMethodError unused) {
                }
            }
        }
    }

    public static void M(Context context) {
        L(context, l(false));
    }

    public static void N(Context context, Runnable runnable) {
        MainApp p = p(context);
        if (p == null) {
            return;
        }
        Handler handler = p.H0;
        if (handler == null) {
            handler = new Handler(Looper.getMainLooper());
            p.H0 = handler;
        }
        handler.post(runnable);
    }

    public static void O(Context context, WebView webView, boolean z) {
        if (webView != null) {
            try {
                CookieManager m = m(context);
                if (m != null) {
                    m.setAcceptThirdPartyCookies(webView, z);
                }
            } catch (Exception | NoSuchMethodError unused) {
            }
        }
    }

    public static void a(MainApp mainApp, ArrayList arrayList) {
        if (mainApp.u && mainApp.v != null && arrayList != null && !arrayList.isEmpty()) {
            MainDownSvc mainDownSvc = mainApp.v;
            mainDownSvc.getClass();
            boolean z = PrefSync.k;
            if (!arrayList.isEmpty()) {
                synchronized (mainDownSvc.f) {
                    try {
                        mainDownSvc.E += arrayList.size();
                        if (mainDownSvc.B) {
                            if (mainDownSvc.C == null) {
                                mainDownSvc.C = new ArrayList();
                            }
                            mainDownSvc.C.addAll(arrayList);
                        } else {
                            mainDownSvc.a0(arrayList, z);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }
    }

    public static void b(MainApp mainApp, String str, String str2, MainUri.UriItem uriItem, int i) {
        if (mainApp.u && mainApp.v != null && !TextUtils.isEmpty(str) && uriItem != null && !TextUtils.isEmpty(uriItem.e)) {
            mainApp.v.i(str, str2, uriItem, i, PrefSync.k, false);
        }
    }

    public static boolean c(MainApp mainApp, Context context, boolean z) {
        boolean z2 = true;
        if (context == null) {
            return true;
        }
        if (mainApp.k == null) {
            try {
                mainApp.k = (NotificationManager) context.getSystemService("notification");
            } catch (Exception e) {
                if (z && C(e)) {
                    z2 = false;
                }
            }
        }
        if (mainApp.l == null) {
            try {
                mainApp.l = (ClipboardManager) context.getSystemService("clipboard");
            } catch (Exception e2) {
                if (z && z2 && C(e2)) {
                    z2 = false;
                }
            }
        }
        if (mainApp.m == null) {
            try {
                mainApp.m = (InputMethodManager) context.getSystemService("input_method");
            } catch (Exception e3) {
                if (z && z2 && C(e3)) {
                    return false;
                }
            }
        }
        return z2;
    }

    public static MyAdNative d(Activity activity, int i, AdLocalListener adLocalListener) {
        int i2;
        int i3;
        MainApp p = p(activity);
        if (p != null) {
            if (i == 1) {
                if (activity != null && p.I0 != null) {
                    MyAdNative myAdNative = p.K0;
                    if (myAdNative != null && (i3 = myAdNative.t) != 0 && (i3 != 1 || (myAdNative.u != 0 && System.currentTimeMillis() > myAdNative.u + 3000000))) {
                        p.e(1);
                        return null;
                    }
                    if ((p.K0 != null || !p.B()) && !p.I0.g()) {
                        p.G(1);
                        p.L0 = adLocalListener;
                        MyAdNative myAdNative2 = p.K0;
                        if (myAdNative2 != null) {
                            return myAdNative2;
                        }
                        MyAdNative myAdNative3 = new MyAdNative(activity);
                        p.K0 = myAdNative3;
                        myAdNative3.m(1, new MyAdNative.AdNativeListener() { // from class: com.mycompany.app.main.MainApp.3
                            @Override // com.mycompany.app.view.MyAdNative.AdNativeListener
                            public final boolean a() {
                                int i4 = MainApp.X0;
                                return MainApp.this.B();
                            }

                            @Override // com.mycompany.app.view.MyAdNative.AdNativeListener
                            public final void b(MyAdNative myAdNative4) {
                                AdLocalListener adLocalListener2 = MainApp.this.L0;
                                if (adLocalListener2 != null) {
                                    adLocalListener2.b(myAdNative4);
                                }
                            }

                            @Override // com.mycompany.app.view.MyAdNative.AdNativeListener
                            public final void c(MyAdNative myAdNative4) {
                                AdLocalListener adLocalListener2 = MainApp.this.L0;
                                if (adLocalListener2 != null) {
                                    adLocalListener2.c(myAdNative4);
                                }
                            }

                            @Override // com.mycompany.app.view.MyAdNative.AdNativeListener
                            public final void d() {
                                MainApp mainApp = MainApp.this;
                                if (mainApp.L0 == null) {
                                    mainApp.H(1, 20000L);
                                }
                            }

                            @Override // com.mycompany.app.view.MyAdNative.AdNativeListener
                            public final void e() {
                                MainApp mainApp = MainApp.this;
                                AdLocalListener adLocalListener2 = mainApp.L0;
                                if (adLocalListener2 != null) {
                                    adLocalListener2.e();
                                } else {
                                    mainApp.H(1, 20000L);
                                }
                            }

                            @Override // com.mycompany.app.view.MyAdNative.AdNativeListener
                            public final void f(MyAdNative myAdNative4) {
                                MainApp mainApp = MainApp.this;
                                AdLocalListener adLocalListener2 = mainApp.L0;
                                if (adLocalListener2 != null) {
                                    adLocalListener2.f(myAdNative4);
                                } else {
                                    mainApp.H(1, 20000L);
                                }
                            }

                            @Override // com.mycompany.app.view.MyAdNative.AdNativeListener
                            public final void g(boolean z) {
                                AdBusyListener adBusyListener = MainApp.this.J0;
                                if (adBusyListener != null) {
                                    adBusyListener.b(1, z);
                                }
                            }
                        });
                        return p.K0;
                    }
                }
            } else if (activity != null && p.I0 != null) {
                MyAdNative myAdNative4 = p.N0;
                if (myAdNative4 != null && (i2 = myAdNative4.t) != 0 && (i2 != 1 || (myAdNative4.u != 0 && System.currentTimeMillis() > myAdNative4.u + 3000000))) {
                    p.e(0);
                    return null;
                }
                if ((p.N0 != null || !p.B()) && !p.I0.g()) {
                    p.G(0);
                    p.O0 = adLocalListener;
                    MyAdNative myAdNative5 = p.N0;
                    if (myAdNative5 != null) {
                        return myAdNative5;
                    }
                    MyAdNative myAdNative6 = new MyAdNative(activity);
                    p.N0 = myAdNative6;
                    myAdNative6.m(0, new MyAdNative.AdNativeListener() { // from class: com.mycompany.app.main.MainApp.4
                        @Override // com.mycompany.app.view.MyAdNative.AdNativeListener
                        public final boolean a() {
                            int i4 = MainApp.X0;
                            return MainApp.this.B();
                        }

                        @Override // com.mycompany.app.view.MyAdNative.AdNativeListener
                        public final void b(MyAdNative myAdNative7) {
                            AdLocalListener adLocalListener2 = MainApp.this.O0;
                            if (adLocalListener2 != null) {
                                adLocalListener2.b(myAdNative7);
                            }
                        }

                        @Override // com.mycompany.app.view.MyAdNative.AdNativeListener
                        public final void c(MyAdNative myAdNative7) {
                            AdLocalListener adLocalListener2 = MainApp.this.O0;
                            if (adLocalListener2 != null) {
                                adLocalListener2.c(myAdNative7);
                            }
                        }

                        @Override // com.mycompany.app.view.MyAdNative.AdNativeListener
                        public final void d() {
                            MainApp mainApp = MainApp.this;
                            if (mainApp.O0 == null) {
                                mainApp.H(0, 20000L);
                            }
                        }

                        @Override // com.mycompany.app.view.MyAdNative.AdNativeListener
                        public final void e() {
                            MainApp mainApp = MainApp.this;
                            AdLocalListener adLocalListener2 = mainApp.O0;
                            if (adLocalListener2 != null) {
                                adLocalListener2.e();
                            } else {
                                mainApp.H(0, 20000L);
                            }
                        }

                        @Override // com.mycompany.app.view.MyAdNative.AdNativeListener
                        public final void f(MyAdNative myAdNative7) {
                            MainApp mainApp = MainApp.this;
                            AdLocalListener adLocalListener2 = mainApp.O0;
                            if (adLocalListener2 != null) {
                                adLocalListener2.f(myAdNative7);
                            } else {
                                mainApp.H(0, 20000L);
                            }
                        }

                        @Override // com.mycompany.app.view.MyAdNative.AdNativeListener
                        public final void g(boolean z) {
                            AdBusyListener adBusyListener = MainApp.this.J0;
                            if (adBusyListener != null) {
                                adBusyListener.b(0, z);
                            }
                        }
                    });
                    return p.N0;
                }
            }
        }
        return null;
    }

    public static void f(Context context, int i) {
        MainApp p = p(context);
        if (p != null) {
            long j = 20000;
            if (i == 1) {
                p.L0 = null;
                MyAdNative myAdNative = p.K0;
                if (myAdNative != null) {
                    if (myAdNative.y) {
                        j = 1000;
                    }
                    p.H(i, j);
                    return;
                }
                return;
            }
            p.O0 = null;
            MyAdNative myAdNative2 = p.N0;
            if (myAdNative2 != null) {
                if (myAdNative2.y) {
                    j = 1000;
                }
                p.H(i, j);
            }
        }
    }

    public static ExecutorService i(Context context) {
        MainApp p = p(context);
        if (p == null) {
            return null;
        }
        return p.h();
    }

    public static Locale j() {
        Locale locale = J1;
        if (locale != null) {
            return locale;
        }
        Locale locale2 = I1;
        J1 = locale2;
        if (locale2 != null) {
            return locale2;
        }
        Locale locale3 = Locale.getDefault();
        J1 = locale3;
        return locale3;
    }

    public static ClipboardManager k(Context context) {
        MainApp p = p(context);
        if (p == null) {
            return null;
        }
        ClipboardManager clipboardManager = p.l;
        if (clipboardManager != null) {
            return clipboardManager;
        }
        try {
            clipboardManager = (ClipboardManager) context.getSystemService("clipboard");
        } catch (Exception unused) {
        }
        if (clipboardManager == null) {
            return null;
        }
        p.l = clipboardManager;
        return clipboardManager;
    }

    public static boolean l(boolean z) {
        int i;
        if (z) {
            i = PrefWeb.G;
        } else {
            i = PrefWeb.F;
        }
        if (i != 1) {
            if (i != 2 || !PrefSync.k) {
                return true;
            }
            return false;
        }
        return false;
    }

    public static CookieManager m(Context context) {
        MainApp p = p(context);
        if (p == null) {
            return CookieManager.getInstance();
        }
        CookieManager cookieManager = p.r;
        if (cookieManager != null) {
            return cookieManager;
        }
        try {
            cookieManager = CookieManager.getInstance();
            p.r = cookieManager;
            return cookieManager;
        } catch (Exception | NoSuchMethodError unused) {
            return cookieManager;
        }
    }

    public static InputMethodManager o(Context context) {
        MainApp p = p(context);
        if (p == null) {
            return null;
        }
        InputMethodManager inputMethodManager = p.m;
        if (inputMethodManager != null) {
            return inputMethodManager;
        }
        try {
            inputMethodManager = (InputMethodManager) context.getSystemService("input_method");
        } catch (Exception unused) {
        }
        if (inputMethodManager == null) {
            return null;
        }
        p.m = inputMethodManager;
        return inputMethodManager;
    }

    public static MainApp p(Context context) {
        if (context == null) {
            return null;
        }
        try {
            Context applicationContext = context.getApplicationContext();
            if (applicationContext == null || !(applicationContext instanceof MainApp)) {
                return null;
            }
            return (MainApp) applicationContext;
        } catch (Exception unused) {
            return null;
        }
    }

    public static NotificationManager q(Context context) {
        MainApp p = p(context);
        if (p == null) {
            return null;
        }
        NotificationManager notificationManager = p.k;
        if (notificationManager != null) {
            return notificationManager;
        }
        try {
            notificationManager = (NotificationManager) context.getSystemService("notification");
        } catch (Exception unused) {
        }
        if (notificationManager == null) {
            return null;
        }
        p.k = notificationManager;
        return notificationManager;
    }

    public static void r(Context context) {
        PrefFloat r;
        PrefEditor s;
        if (context != null && (s = PrefEditor.s(context)) != null) {
            PrefEditor.j = s.f("mIconAlpha", 0);
            int[] iArr = MainConst.q;
            PrefEditor.k = s.f("mIconColor", iArr[5]);
            float[] fArr = MainConst.p;
            PrefEditor.l = s.e("mIconPos", fArr[5]);
            PrefEditor.n = s.f("mTtsAlpha", 0);
            PrefEditor.o = s.f("mTtsColor", iArr[5]);
            PrefEditor.p = s.e("mTtsPos", fArr[5]);
            PrefEditor.r = s.f("mZoomAlpha", 0);
            PrefEditor.s = s.f("mZoomColor", iArr[5]);
            PrefEditor.t = s.e("mZoomPos", fArr[5]);
            PrefEditor.v = s.f("mYpipAlpha", 0);
            PrefEditor.w = s.f("mYpipColor", iArr[5]);
            PrefEditor.x = s.e("mYpipPos", fArr[5]);
            PrefEditor.z = s.f("mScrFilUse", 0);
            PrefEditor.A = s.f("mScrFilAlpha", 60);
            PrefEditor.B = s.f("mScrFilColor", iArr[7]);
            PrefEditor.C = s.e("mScrFilPos", fArr[7]);
            PrefEditor.E = s.f("mGridAlpha", 0);
            PrefEditor.F = s.f("mGridColor", iArr[5]);
            PrefEditor.G = s.e("mGridPos", fArr[5]);
            PrefEditor.I = s.f("mBotAlpha", 0);
            PrefEditor.J = s.f("mUpAlpha", 25);
            PrefEditor.K = s.f("mNewsAlpha", 0);
            PrefEditor.L = s.f("mNewsColor", iArr[5]);
            PrefEditor.M = s.e("mNewsPos", fArr[5]);
            PrefEditor.O = s.f("mHandAlpha", 0);
            PrefEditor.P = s.f("mHandColor", iArr[5]);
            PrefEditor.Q = s.e("mHandPos", fArr[5]);
            PrefEditor.S = s.f("mPassAlpha", 0);
            PrefEditor.T = s.f("mPassColor", iArr[5]);
            PrefEditor.U = s.e("mPassPos", fArr[5]);
            PrefEditor.W = s.f("mTrnsAlpha", 0);
            PrefEditor.X = s.f("mTrnsColor", iArr[5]);
            PrefEditor.Y = s.e("mTrnsPos", fArr[5]);
            PrefEditor.m = PrefEditor.r(PrefEditor.k, PrefEditor.j);
            PrefEditor.q = PrefEditor.r(PrefEditor.o, PrefEditor.n);
            PrefEditor.u = PrefEditor.r(PrefEditor.s, PrefEditor.r);
            PrefEditor.y = PrefEditor.r(PrefEditor.w, PrefEditor.v);
            PrefEditor.D = PrefEditor.r(PrefEditor.B, PrefEditor.A);
            PrefEditor.H = PrefEditor.r(PrefEditor.F, PrefEditor.E);
            PrefEditor.N = PrefEditor.r(PrefEditor.L, PrefEditor.K);
            PrefEditor.R = PrefEditor.r(PrefEditor.P, PrefEditor.O);
            PrefEditor.V = PrefEditor.r(PrefEditor.T, PrefEditor.S);
            PrefEditor.Z = PrefEditor.r(PrefEditor.X, PrefEditor.W);
            PrefEditor.i = "PrefEditor";
        }
        if (context != null && (r = PrefFloat.r(context)) != null) {
            PrefFloat.j = r.f("mFlt1Icon", 0);
            PrefFloat.k = r.f("mFlt2Icon", 0);
            PrefFloat.l = r.f("mFlt3Icon", 0);
            PrefFloat.m = r.d("mFlt1Show", false);
            PrefFloat.n = r.d("mFlt2Show", false);
            PrefFloat.o = r.d("mFlt3Show", false);
            PrefFloat.p = r.f("mFlt1Alpha", 0);
            int[] iArr2 = MainConst.q;
            PrefFloat.q = r.f("mFlt1Color", iArr2[5]);
            float[] fArr2 = MainConst.p;
            PrefFloat.r = r.e("mFlt1Pos", fArr2[5]);
            PrefFloat.t = r.f("mFlt2Alpha", 0);
            PrefFloat.u = r.f("mFlt2Color", iArr2[5]);
            PrefFloat.v = r.e("mFlt2Pos", fArr2[5]);
            PrefFloat.x = r.f("mFlt3Alpha", 0);
            PrefFloat.y = r.f("mFlt3Color", iArr2[5]);
            PrefFloat.z = r.e("mFlt3Pos", fArr2[5]);
            PrefFloat.B = r.e("mFlt1LtX", -1.0f);
            PrefFloat.C = r.e("mFlt1RtX", -1.0f);
            PrefFloat.D = r.e("mFlt1UpY", -1.0f);
            PrefFloat.E = r.e("mFlt1DnY", -1.0f);
            PrefFloat.F = r.e("mFlt2LtX", -1.0f);
            PrefFloat.G = r.e("mFlt2RtX", -1.0f);
            PrefFloat.H = r.e("mFlt2UpY", -1.0f);
            PrefFloat.I = r.e("mFlt2DnY", -1.0f);
            PrefFloat.J = r.e("mFlt3LtX", -1.0f);
            PrefFloat.K = r.e("mFlt3RtX", -1.0f);
            PrefFloat.L = r.e("mFlt3UpY", -1.0f);
            PrefFloat.M = r.e("mFlt3DnY", -1.0f);
            PrefFloat.s = PrefEditor.r(PrefFloat.q, PrefFloat.p);
            PrefFloat.w = PrefEditor.r(PrefFloat.u, PrefFloat.t);
            PrefFloat.A = PrefEditor.r(PrefFloat.y, PrefFloat.x);
            PrefFloat.i = "PrefFloat";
        }
        PrefMain.s(context, false);
        PrefPdf.s(context, false);
        PrefSecret.s(context, false);
        PrefTts.s(context, false);
        PrefWeb.s(context, false);
    }

    public static void s(Context context) {
        PrefVideo r;
        PrefSub r2;
        PrefAlbum.s(context, false);
        PrefImage.s(context, false);
        PrefList.s(context, false);
        PrefPath.s(context, false);
        PrefRead.s(context, false);
        if (context != null && (r2 = PrefSub.r(context)) != null) {
            int i = MainConst.q[7];
            float f = MainConst.p[7];
            PrefSub.j = r2.d("mGuideSub", true);
            PrefSub.k = r2.d("mShowSub", true);
            PrefSub.l = r2.f("mPosPort", -1);
            PrefSub.m = r2.f("mPosLand", 0);
            PrefSub.n = r2.f("mTextSize", 20);
            PrefSub.o = r2.f("mLineSize", 2);
            PrefSub.p = r2.f("mLineAlpha", 0);
            PrefSub.q = r2.f("mLineColor", i);
            PrefSub.r = r2.e("mLinePos", f);
            PrefSub.t = r2.d("mBackShow", false);
            PrefSub.u = r2.f("mBackAlpha", 0);
            PrefSub.v = r2.f("mBackColor", i);
            PrefSub.w = r2.e("mBackPos", f);
            PrefSub.x = r2.d("mUseAudio", true);
            if (PrefSub.l == -1) {
                PrefSub.l = E1 * 10;
            }
            PrefSub.s = PrefEditor.r(PrefSub.q, PrefSub.p);
            PrefSub.i = "PrefSub";
        }
        if (context == null || (r = PrefVideo.r(context)) == null) {
            return;
        }
        PrefVideo.j = r.d("mGuidePlayer", true);
        PrefVideo.k = r.d("mGuideLong2", true);
        PrefVideo.l = r.d("mGuideTap2", true);
        PrefVideo.m = r.d("mPipHome", true);
        PrefVideo.n = r.d("mCutOut", true);
        PrefVideo.o = r.f("mRotate", 0);
        PrefVideo.p = r.d("mLoop", false);
        PrefVideo.q = r.d("mDragVolume", true);
        PrefVideo.r = r.d("mDragBright", true);
        PrefVideo.s = r.d("mDragSeek", true);
        PrefVideo.t = r.f("mSeekSense", 100);
        PrefVideo.u = r.d("mUserBright3", false);
        PrefVideo.v = r.f("mBright3", 90);
        PrefVideo.w = r.f("mRatio2", 0);
        r.f("mWidth", 0);
        r.f("mHeight", 0);
        r.e("mLtX", 1.0f);
        r.e("mRtX", 1.0f);
        r.e("mUpY", 1.0f);
        r.e("mDnY", 1.0f);
        PrefVideo.x = r.d("mNotiSet2", true);
        PrefVideo.y = r.d("mNotiShow2", true);
        PrefVideo.z = r.d("mNotiAudio", true);
        PrefVideo.A = r.f("mTapLeft", 3);
        PrefVideo.B = r.f("mTapRight", 3);
        PrefVideo.C = r.f("mTapCenter", 3);
        PrefVideo.D = r.f("mPortAreaLeft", i1);
        PrefVideo.E = r.f("mPortAreaRight", i1);
        PrefVideo.F = r.f("mLandAreaLeft", i1 * 2);
        PrefVideo.G = r.f("mLandAreaRight", i1 * 2);
        PrefVideo.i = "PrefVideo";
    }

    public static void t(Context context, Resources resources) {
        PrefZtri r;
        PrefZone.s(context, resources, false);
        PrefZtwo.s(context, false);
        if (context == null || (r = PrefZtri.r(context)) == null) {
            return;
        }
        PrefZtri.j = r.d("mReadAccent", true);
        PrefZtri.k = r.d("mZoomIcon", false);
        PrefZtri.l = r.e("mZoomLtX", -1.0f);
        PrefZtri.m = r.e("mZoomRtX", -1.0f);
        PrefZtri.n = r.e("mZoomUpY", -1.0f);
        PrefZtri.o = r.e("mZoomDnY", -1.0f);
        PrefZtri.p = r.f("mZoomSize", HttpStatusCodes.STATUS_CODE_OK);
        PrefZtri.q = r.e("mComicLtX", -1.0f);
        PrefZtri.r = r.e("mComicRtX", -1.0f);
        PrefZtri.s = r.e("mComicUpY", -1.0f);
        PrefZtri.t = r.e("mComicDnY", -1.0f);
        PrefZtri.u = r.e("mYpipLtX", -1.0f);
        PrefZtri.v = r.e("mYpipRtX", -1.0f);
        PrefZtri.w = r.e("mYpipUpY", -1.0f);
        PrefZtri.x = r.e("mYpipDnY", -1.0f);
        PrefZtri.y = r.e("mDownLtX", -1.0f);
        PrefZtri.z = r.e("mDownRtX", -1.0f);
        PrefZtri.A = r.e("mDownUpY", -1.0f);
        PrefZtri.B = r.e("mDownDnY", -1.0f);
        PrefZtri.C = r.d("mNewsIcon", true);
        PrefZtri.D = r.e("mNewsLtX", -1.0f);
        PrefZtri.E = r.e("mNewsRtX", -1.0f);
        PrefZtri.F = r.e("mNewsUpY", -1.0f);
        PrefZtri.G = r.e("mNewsDnY", -1.0f);
        PrefZtri.H = r.d("mHandIcon", false);
        PrefZtri.I = r.e("mHandLtX", -1.0f);
        PrefZtri.J = r.e("mHandRtX", -1.0f);
        PrefZtri.K = r.e("mHandUpY", -1.0f);
        PrefZtri.L = r.e("mHandDnY", -1.0f);
        PrefZtri.M = r.d("mPassIcon", true);
        PrefZtri.N = r.e("mPassLtX", -1.0f);
        PrefZtri.O = r.e("mPassRtX", -1.0f);
        PrefZtri.P = r.e("mPassUpY", -1.0f);
        PrefZtri.Q = r.e("mPassDnY", -1.0f);
        PrefZtri.R = r.e("mCastLtX", -1.0f);
        PrefZtri.S = r.e("mCastRtX", -1.0f);
        PrefZtri.T = r.e("mCastUpY", -1.0f);
        PrefZtri.U = r.e("mCastDnY", -1.0f);
        PrefZtri.V = r.e("mTrnsLtX", -1.0f);
        PrefZtri.W = r.e("mTrnsRtX", -1.0f);
        PrefZtri.X = r.e("mTrnsUpY", -1.0f);
        PrefZtri.Y = r.e("mTrnsDnY", -1.0f);
        PrefZtri.Z = r.e("mItrsLtX", -1.0f);
        PrefZtri.a0 = r.e("mItrsRtX", -1.0f);
        PrefZtri.b0 = r.e("mItrsUpY", -1.0f);
        PrefZtri.c0 = r.e("mItrsDnY", -1.0f);
        PrefZtri.d0 = r.e("mReadLtX", -1.0f);
        PrefZtri.e0 = r.e("mReadRtX", -1.0f);
        PrefZtri.f0 = r.e("mReadUpY", -1.0f);
        PrefZtri.g0 = r.e("mReadDnY", -1.0f);
        PrefZtri.h0 = r.d("mNotiQmenu2", true);
        PrefZtri.i0 = r.d("mQuickUse", true);
        PrefZtri.j0 = r.f("mQckSchType", 1);
        PrefZtri.k0 = r.d("mQuickPlus", true);
        PrefZtri.l0 = r.f("mQuickPort", 5);
        PrefZtri.m0 = r.f("mQuickLand", 5);
        PrefZtri.n0 = r.d("mLastSwipe", true);
        PrefZtri.o0 = r.d("mGuideNoti", true);
        PrefZtri.p0 = r.d("mNotiZoom", true);
        PrefZtri.q0 = r.d("mGuideDark", true);
        PrefZtri.r0 = r.d("mGuideRest", true);
        PrefZtri.s0 = r.d("mGuideFlag", true);
        PrefZtri.t0 = r.d("mMoveLong", false);
        PrefZtri.i = "PrefZtri";
    }

    public static void u(Context context, Resources resources) {
        if (O1) {
            return;
        }
        O1 = true;
        t(context, resources);
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Object, com.mycompany.app.web.WebClean] */
    public static WebClean v(Context context, boolean z) {
        MainApp p = p(context);
        if (p != null) {
            WebClean webClean = p.q;
            if (webClean != null) {
                return webClean;
            }
            if (!z) {
                return null;
            }
            ?? obj = new Object();
            p.q = obj;
            return obj;
        }
        return null;
    }

    public static MainWebDestroy w(Context context) {
        MainApp p = p(context);
        if (p == null) {
            return null;
        }
        return p.I0;
    }

    public static void x(Resources resources) {
        boolean z;
        boolean z2 = true;
        boolean z3 = false;
        if (PrefWeb.J) {
            if (resources != null) {
                if ((resources.getConfiguration().uiMode & 48) != 32) {
                    z2 = false;
                }
                z3 = z2;
            } else {
                z2 = false;
            }
        } else {
            if (PrefWeb.K == 1) {
                z = true;
            } else {
                z = false;
            }
            if (PrefWeb.L != 1) {
                z2 = false;
            }
            z3 = z;
        }
        K1 = z3;
        L1 = z2;
        MainUtil.f7();
    }

    /* JADX WARN: Type inference failed for: r0v19, types: [com.nostra13.universalimageloader.cache.disc.naming.FileNameGenerator, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r12v6, types: [com.nostra13.universalimageloader.core.decode.BaseImageDecoder, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v0, types: [com.nostra13.universalimageloader.core.ImageLoaderConfiguration$Builder, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v1, types: [com.nostra13.universalimageloader.cache.disc.naming.FileNameGenerator, java.lang.Object] */
    public static void y(Context context) {
        File file;
        DiskCache baseDiskCache;
        File file2;
        ?? obj = new Object();
        obj.b = null;
        obj.f20973c = null;
        obj.d = false;
        obj.e = false;
        obj.f = 3;
        obj.g = QueueProcessingType.f20990c;
        obj.h = 0L;
        obj.i = null;
        obj.j = null;
        obj.k = null;
        obj.l = null;
        obj.m = null;
        obj.o = null;
        Context applicationContext = context.getApplicationContext();
        obj.f20972a = applicationContext;
        if (obj.b != null || obj.f20973c != null) {
            L.b(5, null, "threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls.", new Object[0]);
        }
        obj.f = 3;
        ?? obj2 = new Object();
        if (obj.k != null) {
            L.b(5, null, "diskCache() and diskCacheFileNameGenerator() calls overlap each other", new Object[0]);
        }
        obj.l = obj2;
        if (obj.k != null) {
            L.b(5, null, "diskCache(), diskCacheSize() and diskCacheFileCount calls overlap each other", new Object[0]);
        }
        obj.h = 536870912;
        if (obj.b != null || obj.f20973c != null) {
            L.b(5, null, "threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls.", new Object[0]);
        }
        obj.g = QueueProcessingType.f;
        ImageLoader f = ImageLoader.f();
        if (obj.b == null) {
            obj.b = DefaultConfigurationFactory.a(obj.f, obj.g);
        } else {
            obj.d = true;
        }
        if (obj.f20973c == null) {
            obj.f20973c = DefaultConfigurationFactory.a(obj.f, obj.g);
        } else {
            obj.e = true;
        }
        if (obj.k == null) {
            if (obj.l == null) {
                obj.l = new Object();
            }
            FileNameGenerator fileNameGenerator = obj.l;
            long j = obj.h;
            File cacheDir = applicationContext.getCacheDir();
            File file3 = new File(cacheDir, "images");
            if (!file3.exists() && !file3.mkdir()) {
                file = cacheDir;
            } else {
                file = file3;
            }
            if (j > 0) {
                File cacheDir2 = applicationContext.getCacheDir();
                File file4 = new File(cacheDir2, "images");
                if (!file4.exists() && !file4.mkdir()) {
                    file2 = cacheDir2;
                } else {
                    file2 = file4;
                }
                try {
                    baseDiskCache = new LruDiskCache(file2, file, fileNameGenerator, j);
                } catch (Exception e) {
                    L.a(e);
                }
                obj.k = baseDiskCache;
            }
            baseDiskCache = new BaseDiskCache(applicationContext.getCacheDir(), file, fileNameGenerator);
            obj.k = baseDiskCache;
        }
        if (obj.i == null) {
            obj.i = DefaultConfigurationFactory.b(applicationContext, 0);
        }
        if (obj.j == null) {
            obj.j = DefaultConfigurationFactory.b(applicationContext, 2097152);
        }
        if (obj.m == null) {
            obj.m = new BaseImageDownloader(applicationContext);
        }
        if (obj.n == null) {
            obj.n = new Object();
        }
        if (obj.o == null) {
            obj.o = new DisplayImageOptions(new DisplayImageOptions.Builder());
        }
        f.h(new ImageLoaderConfiguration(obj));
    }

    public static boolean z(Context context) {
        MainApp p = p(context);
        if (p == null) {
            return false;
        }
        return p.h;
    }

    public final boolean B() {
        AdBusyListener adBusyListener = this.J0;
        if (adBusyListener != null && adBusyListener.a()) {
            return true;
        }
        return false;
    }

    public final void D(VpnSvc vpnSvc) {
        this.I = vpnSvc;
        vpnSvc.f19054c = new VpnSvc.VpnSvcListener() { // from class: com.mycompany.app.main.MainApp.14
            @Override // com.mycompany.app.vpn.VpnSvc.VpnSvcListener
            public final void a(int i) {
                MainApp mainApp = MainApp.this;
                mainApp.J = false;
                VpnSvc.VpnSvcListener vpnSvcListener = mainApp.K;
                if (vpnSvcListener != null) {
                    vpnSvcListener.a(i);
                }
            }
        };
        P();
    }

    public final void E() {
        K(new Runnable() { // from class: com.mycompany.app.main.MainApp.15
            @Override // java.lang.Runnable
            public final void run() {
                MainApp mainApp = MainApp.this;
                VpnSvc vpnSvc = mainApp.I;
                if (vpnSvc != null) {
                    vpnSvc.e();
                    mainApp.I = null;
                }
                mainApp.P();
            }
        });
    }

    public final void G(int i) {
        if (i == 1) {
            Handler handler = this.M0;
            if (handler != null) {
                handler.removeCallbacks(this.Q0);
                return;
            }
            return;
        }
        Handler handler2 = this.P0;
        if (handler2 != null) {
            handler2.removeCallbacks(this.R0);
        }
    }

    public final void H(int i, long j) {
        if (j == 0) {
            e(i);
            return;
        }
        if (i == 1) {
            MyAdNative myAdNative = this.K0;
            if (myAdNative != null) {
                myAdNative.f = false;
                myAdNative.k();
                MainUtil.V6(myAdNative);
                if (this.K0.t == 0) {
                    return;
                }
            } else {
                return;
            }
        } else {
            MyAdNative myAdNative2 = this.N0;
            if (myAdNative2 != null) {
                myAdNative2.f = false;
                myAdNative2.k();
                MainUtil.V6(myAdNative2);
                if (this.N0.t == 0) {
                    return;
                }
            } else {
                return;
            }
        }
        if (j == 0) {
            return;
        }
        if (i == 1) {
            if (this.M0 == null) {
                this.M0 = new Handler(Looper.getMainLooper());
            }
            this.M0.postDelayed(this.Q0, j);
        } else {
            if (this.P0 == null) {
                this.P0 = new Handler(Looper.getMainLooper());
            }
            this.P0.postDelayed(this.R0, j);
        }
    }

    public final void K(Runnable runnable) {
        ExecutorService h = h();
        if (h == null) {
            return;
        }
        try {
            h.execute(runnable);
        } catch (Exception unused) {
        }
    }

    public final void P() {
        this.J = false;
        VpnSvc.VpnSvcListener vpnSvcListener = this.K;
        if (vpnSvcListener != null) {
            VpnSvc vpnSvc = this.I;
            if (vpnSvc != null) {
                int i = vpnSvc.h;
                vpnSvcListener.a(i);
                if (i == 0) {
                    U();
                    return;
                }
                return;
            }
            vpnSvcListener.a(0);
        }
    }

    public final void Q(ArrayList arrayList) {
        if (this.v != null) {
            this.W0 = arrayList;
            K(new Runnable() { // from class: com.mycompany.app.main.MainApp.9
                @Override // java.lang.Runnable
                public final void run() {
                    MainApp mainApp = MainApp.this;
                    ArrayList arrayList2 = mainApp.W0;
                    mainApp.W0 = null;
                    MainApp.a(mainApp, arrayList2);
                }
            });
        } else {
            if (this.w) {
                return;
            }
            this.w = true;
            this.E = arrayList;
            S();
        }
    }

    public final void R(String str, String str2, MainUri.UriItem uriItem, boolean z) {
        int i;
        if (z) {
            i = PrefZone.j0;
        } else {
            i = 0;
        }
        if (this.v != null) {
            this.S0 = str;
            this.T0 = str2;
            this.U0 = uriItem;
            this.V0 = i;
            K(new Runnable() { // from class: com.mycompany.app.main.MainApp.8
                @Override // java.lang.Runnable
                public final void run() {
                    MainApp mainApp = MainApp.this;
                    String str3 = mainApp.S0;
                    String str4 = mainApp.T0;
                    MainUri.UriItem uriItem2 = mainApp.U0;
                    int i2 = mainApp.V0;
                    mainApp.S0 = null;
                    mainApp.T0 = null;
                    mainApp.U0 = null;
                    MainApp.b(mainApp, str3, str4, uriItem2, i2);
                }
            });
            return;
        }
        if (this.w) {
            return;
        }
        this.w = true;
        this.z = str;
        this.A = str2;
        this.B = uriItem;
        this.C = i;
        S();
    }

    public final void S() {
        if (this.u) {
            return;
        }
        this.u = true;
        K(new Runnable() { // from class: com.mycompany.app.main.MainApp.10
            @Override // java.lang.Runnable
            public final void run() {
                final MainApp mainApp = MainApp.this;
                try {
                    Intent intent = new Intent(mainApp.getApplicationContext(), (Class<?>) MainDownSvc.class);
                    if (Build.VERSION.SDK_INT >= 26) {
                        mainApp.startForegroundService(intent);
                    } else {
                        mainApp.startService(intent);
                    }
                } catch (Exception unused) {
                    mainApp.u = false;
                    mainApp.v = null;
                    mainApp.w = false;
                    MainDownSvc.DownListListener downListListener = mainApp.G;
                    if (downListListener != null) {
                        downListListener.c();
                    }
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.mycompany.app.main.MainApp.11
                        @Override // java.lang.Runnable
                        public final void run() {
                            MainUtil.e8(MainApp.this.getApplicationContext(), R.string.down_fail);
                        }
                    });
                }
            }
        });
    }

    public final void T() {
        if (this.I != null) {
            P();
        } else {
            if (this.J) {
                return;
            }
            this.J = true;
            K(new Runnable() { // from class: com.mycompany.app.main.MainApp.13
                @Override // java.lang.Runnable
                public final void run() {
                    MainApp mainApp = MainApp.this;
                    try {
                        if (VpnService.prepare(mainApp.getApplicationContext()) == null) {
                            if (mainApp.I != null) {
                                mainApp.P();
                                return;
                            }
                            try {
                                Intent intent = new Intent(mainApp.getApplicationContext(), (Class<?>) VpnSvc.class);
                                if (Build.VERSION.SDK_INT >= 26) {
                                    mainApp.startForegroundService(intent);
                                    return;
                                } else {
                                    mainApp.startService(intent);
                                    return;
                                }
                            } catch (Exception unused) {
                                mainApp.E();
                                return;
                            }
                        }
                    } catch (Exception unused2) {
                    }
                    int i = MainApp.X0;
                    mainApp.P();
                }
            });
        }
    }

    public final void U() {
        if (this.I == null) {
            P();
        } else {
            if (this.J) {
                return;
            }
            this.J = true;
            E();
        }
    }

    /* JADX WARN: Type inference failed for: r4v0, types: [com.mycompany.app.main.MainWebDestroy$DelItem, java.lang.Object] */
    public final void e(int i) {
        MyAdNative myAdNative;
        if (this.I0 != null) {
            G(i);
            if (i == 1) {
                myAdNative = this.K0;
                this.K0 = null;
                this.L0 = null;
                this.M0 = null;
            } else {
                myAdNative = this.N0;
                this.N0 = null;
                this.O0 = null;
                this.P0 = null;
            }
            MainWebDestroy mainWebDestroy = this.I0;
            mainWebDestroy.getClass();
            if (myAdNative != null) {
                myAdNative.f = false;
                myAdNative.k();
                MainUtil.V6(myAdNative);
                synchronized (mainWebDestroy.f17022a) {
                    try {
                        if (mainWebDestroy.l == null) {
                            mainWebDestroy.l = new ArrayList();
                        }
                        ArrayList arrayList = mainWebDestroy.l;
                        ?? obj = new Object();
                        obj.f17030c = myAdNative;
                        arrayList.add(obj);
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (mainWebDestroy.i) {
                    return;
                }
                mainWebDestroy.d(false);
            }
        }
    }

    public final void g(long j) {
        MainDownSvc mainDownSvc = this.v;
        if (mainDownSvc == null) {
            if (!this.w) {
                this.w = true;
                this.x = j;
                this.y = 2;
                S();
                return;
            }
            return;
        }
        if (this.u) {
            mainDownSvc.U(j);
        }
    }

    public final ExecutorService h() {
        ExecutorService executorService = this.L;
        if (executorService != null && !executorService.isShutdown() && !executorService.isTerminated()) {
            return executorService;
        }
        if (executorService != null) {
            try {
                executorService.shutdownNow();
            } catch (Exception unused) {
            }
        }
        try {
            executorService = Executors.newCachedThreadPool();
        } catch (Exception unused2) {
        }
        if (executorService == null) {
            return null;
        }
        this.L = executorService;
        return executorService;
    }

    public final String n(String str) {
        try {
            LruCache lruCache = this.H;
            if (lruCache == null) {
                return null;
            }
            String str2 = (String) lruCache.get(str);
            if (!TextUtils.isEmpty(str2)) {
                return str2;
            }
            return (String) this.H.get(MainUtil.I1(str, false));
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // android.app.Application
    public final void onCreate() {
        super.onCreate();
        Context applicationContext = getApplicationContext();
        PrefSync.s(applicationContext, false);
        this.f = 0;
        this.g = false;
        this.h = false;
        this.i = null;
        this.j = null;
        this.k = null;
        this.l = null;
        this.m = null;
        this.r = null;
        this.H0 = null;
        I1 = null;
        J1 = null;
        M1 = 0;
        N1 = true;
        if (PrefSync.k && MainConst.f16452a) {
            WebView.setDataDirectorySuffix("secret");
        }
        this.o = 0;
        MyLifeCycle myLifeCycle = new MyLifeCycle();
        this.n = myLifeCycle;
        registerActivityLifecycleCallbacks(myLifeCycle);
        Resources resources = getResources();
        float f = resources.getDisplayMetrics().density;
        X0 = Math.round(600.0f * f);
        Math.round(100.0f * f);
        float f2 = 48.0f * f;
        Y0 = Math.round(f2);
        Z0 = Math.round(144.0f * f);
        float f3 = 40.0f * f;
        a1 = Math.round(f3);
        float f4 = 56.0f * f;
        b1 = Math.round(f4);
        c1 = Math.round(88.0f * f);
        d1 = Math.round(150.0f * f);
        float f5 = 16.0f * f;
        e1 = Math.round(f5);
        f1 = Math.round(f3);
        g1 = Math.round(f2);
        h1 = Math.round(f4);
        float f6 = 64.0f * f;
        i1 = Math.round(f6);
        j1 = Math.round(f5);
        float f7 = 20.0f * f;
        k1 = Math.round(f7);
        l1 = Math.round(f5);
        m1 = Math.round(f5);
        n1 = Math.round(1.0f * f);
        o1 = Math.round(140.0f * f);
        float f8 = 4.0f * f;
        p1 = Math.round(f8);
        float f9 = 10.0f * f;
        q1 = Math.round(f9);
        r1 = Math.round(f9);
        s1 = Math.round(80.0f * f);
        Math.round(f6);
        t1 = Math.round(f7);
        u1 = Math.round(15.0f * f);
        float f10 = 8.0f * f;
        v1 = Math.round(f10);
        float f11 = 3.0f * f;
        w1 = Math.round(f11);
        x1 = Math.round(f8);
        y1 = Math.round(f11);
        float f12 = 24.0f * f;
        z1 = Math.round(f12);
        A1 = Math.round(f * 90.0f);
        B1 = Math.round(f5);
        C1 = Math.round(f8);
        D1 = Math.round(f12);
        E1 = Math.round(f5);
        F1 = Math.round(f10);
        G1 = Math.round(f8);
        H1 = E1;
        r(applicationContext);
        x(resources);
        K(new Runnable() { // from class: com.mycompany.app.main.MainApp.1
            @Override // java.lang.Runnable
            public final void run() {
                Locale locale;
                MainApp mainApp = MainApp.this;
                Context applicationContext2 = mainApp.getApplicationContext();
                int i = MainApp.X0;
                LocaleListCompat h = AppCompatDelegate.h();
                if (h != null && !h.d()) {
                    locale = h.c(0);
                } else {
                    locale = null;
                }
                MainApp.I1 = locale;
                MainApp.J1 = locale;
                MainApp.j();
                MainApp.y(applicationContext2);
                File cacheDir = applicationContext2.getCacheDir();
                if (cacheDir == null || !cacheDir.exists() || cacheDir.length() == 0) {
                    ImageLoader f13 = ImageLoader.f();
                    f13.b();
                    f13.f20963a.h.d(-1);
                    ImageLoader f14 = ImageLoader.f();
                    f14.getClass();
                    try {
                        f14.b();
                        f14.f20963a.j.clear();
                    } catch (Exception unused) {
                    }
                    androidx.collection.LruCache lruCache = CompressCache.a().f12871a;
                    if (lruCache != null) {
                        lruCache.g(-1);
                    }
                }
                MainApp.s(applicationContext2);
                try {
                    System.loadLibrary("myutil");
                    MainApp.R1 = true;
                } catch (Exception | UnsatisfiedLinkError unused2) {
                }
                if (MainUtil.U4()) {
                    MainUtil.V(applicationContext2, PrefSync.k, false);
                }
                if (!MainApp.c(mainApp, applicationContext2, true)) {
                    try {
                        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.mycompany.app.main.MainApp.1.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                MainApp.c(MainApp.this, MainApp.this.getApplicationContext(), false);
                            }
                        });
                    } catch (Exception unused3) {
                    }
                }
            }
        });
    }

    @Override // android.app.Application
    public final void onTerminate() {
        super.onTerminate();
        MyLifeCycle myLifeCycle = this.n;
        if (myLifeCycle != null) {
            unregisterActivityLifecycleCallbacks(myLifeCycle);
            this.n = null;
        }
        this.q = null;
        this.r = null;
        e(1);
        e(0);
        K(new AnonymousClass7());
    }
}
