package com.mycompany.app.web;

import android.annotation.SuppressLint;
import android.app.PendingIntent;
import android.app.PictureInPictureParams;
import android.app.RemoteAction;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.drawable.Icon;
import android.os.Build;
import android.support.v4.media.a;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.webkit.JavascriptInterface;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefVideo;
import com.mycompany.app.pref.PrefZtwo;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyCoverView;
import com.mycompany.app.view.MyWebSafe;
import java.util.ArrayList;
import org.json.JSONObject;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;

/* loaded from: classes3.dex */
public class WebVideoPip extends FrameLayout {
    public static final /* synthetic */ int B = 0;
    public String A;

    /* renamed from: c, reason: collision with root package name */
    public MainActivity f19693c;
    public Context f;
    public boolean g;
    public ViewGroup h;
    public MyCoverView i;
    public EventReceiver j;
    public String k;
    public long l;
    public MyWebSafe m;
    public boolean n;
    public boolean o;
    public String p;
    public boolean q;
    public int r;
    public boolean s;
    public int t;
    public int u;
    public boolean v;
    public long w;
    public String x;
    public String y;
    public boolean z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.web.WebVideoPip$4, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass4 implements Runnable {
        public AnonymousClass4() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            WebVideoPip webVideoPip = WebVideoPip.this;
            MyWebSafe myWebSafe = webVideoPip.m;
            if (myWebSafe != null) {
                webVideoPip.setWebSettin2(myWebSafe);
                if (webVideoPip.f == null) {
                    return;
                }
                webVideoPip.post(new Runnable() { // from class: com.mycompany.app.web.WebVideoPip.4.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        WebVideoPip webVideoPip2 = WebVideoPip.this;
                        MyWebSafe myWebSafe2 = webVideoPip2.m;
                        if (myWebSafe2 != null) {
                            webVideoPip2.setWebSettin3(myWebSafe2);
                            if (webVideoPip2.f == null) {
                                return;
                            }
                            webVideoPip2.post(new Runnable() { // from class: com.mycompany.app.web.WebVideoPip.4.1.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    final WebVideoPip webVideoPip3 = WebVideoPip.this;
                                    if (webVideoPip3.m != null) {
                                        webVideoPip3.q = true;
                                        webVideoPip3.r = 0;
                                        if (webVideoPip3.i != null) {
                                            webVideoPip3.l = System.currentTimeMillis();
                                            webVideoPip3.i.m(true);
                                            webVideoPip3.i.postDelayed(new Runnable() { // from class: com.mycompany.app.web.WebVideoPip.16
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    WebVideoPip webVideoPip4 = WebVideoPip.this;
                                                    if (webVideoPip4.f19693c != null && webVideoPip4.l != 0 && System.currentTimeMillis() - webVideoPip4.l >= 5000) {
                                                        webVideoPip4.l = 0L;
                                                        MainActivity mainActivity = webVideoPip4.f19693c;
                                                        int i = R.string.server_delay;
                                                        mainActivity.getClass();
                                                        MainUtil.e8(mainActivity, i);
                                                    }
                                                }
                                            }, 5000L);
                                        }
                                        MainActivity mainActivity = webVideoPip3.f19693c;
                                        if (mainActivity == null) {
                                            return;
                                        }
                                        mainActivity.m0(new Runnable() { // from class: com.mycompany.app.web.WebVideoPip.5
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                WebVideoPip webVideoPip4 = WebVideoPip.this;
                                                webVideoPip4.x = MainUtil.L1(webVideoPip4.k);
                                                webVideoPip4.y = a.p(a.w("<!DOCTYPE html><html><head><meta charset=\"utf-8\"/><meta name='viewport' content='width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no'/><style>html{background-color:black;}body{margin:0;}iframe{display:block;width:100vw;height:100vh;}</style></head><body><iframe id='ytplayer'type='text/html'src='https://www.youtube.com/embed/", webVideoPip4.p, "?autoplay=1&controls=0&origin="), webVideoPip4.k, "'frameborder='0'></iframe></body></html>");
                                                if (webVideoPip4.f == null) {
                                                    return;
                                                }
                                                webVideoPip4.post(new Runnable() { // from class: com.mycompany.app.web.WebVideoPip.5.1
                                                    @Override // java.lang.Runnable
                                                    public final void run() {
                                                        WebVideoPip webVideoPip5 = WebVideoPip.this;
                                                        String str = webVideoPip5.x;
                                                        String str2 = webVideoPip5.y;
                                                        webVideoPip5.x = null;
                                                        webVideoPip5.y = null;
                                                        MyWebSafe myWebSafe3 = webVideoPip5.m;
                                                        if (myWebSafe3 == null) {
                                                            return;
                                                        }
                                                        MainUtil.r6(myWebSafe3, str, str2);
                                                    }
                                                });
                                            }
                                        });
                                    }
                                }
                            });
                        }
                    }
                });
            }
        }
    }

    /* renamed from: com.mycompany.app.web.WebVideoPip$7, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass7 implements Runnable {

        /* renamed from: com.mycompany.app.web.WebVideoPip$7$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 implements Runnable {
            public AnonymousClass1() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                WebVideoPip webVideoPip = WebVideoPip.this;
                if (MainUtil.m8() && Float.compare(PrefZtwo.W, 1.0f) != 0 && webVideoPip.r == 1 && webVideoPip.m != null) {
                    MainUtil.J(webVideoPip.m, "(function(){var ele=document.querySelector(\"iframe[id='ytplayer']\");if(ele){ele=ele.contentDocument.querySelector('video');}if(ele){ele.playbackRate=" + PrefZtwo.W + ";}})();", false);
                }
                if (webVideoPip.f == null) {
                    return;
                }
                webVideoPip.postDelayed(new Runnable() { // from class: com.mycompany.app.web.WebVideoPip.7.1.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        MyWebSafe myWebSafe;
                        AnonymousClass7 anonymousClass7 = AnonymousClass7.this;
                        WebVideoPip webVideoPip2 = WebVideoPip.this;
                        if (webVideoPip2.r == 1 && (myWebSafe = webVideoPip2.m) != null) {
                            MainUtil.J(myWebSafe, "(function(){var ele=document.querySelector(\"iframe[id='ytplayer']\");if(ele){ele=ele.contentDocument.querySelector('video');}if(ele){ele.play();}})();", false);
                        }
                        WebVideoPip webVideoPip3 = WebVideoPip.this;
                        if (webVideoPip3.f == null) {
                            return;
                        }
                        webVideoPip3.postDelayed(new Runnable() { // from class: com.mycompany.app.web.WebVideoPip.7.1.1.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                WebVideoPip webVideoPip4 = WebVideoPip.this;
                                if (webVideoPip4.r != 1) {
                                    return;
                                }
                                webVideoPip4.r = 2;
                                WebVideoPip.g(webVideoPip4);
                            }
                        }, 1000L);
                    }
                }, 100L);
            }
        }

        public AnonymousClass7() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            boolean z = PrefVideo.p;
            WebVideoPip webVideoPip = WebVideoPip.this;
            if (z && webVideoPip.r == 1 && webVideoPip.m != null) {
                MainUtil.J(webVideoPip.m, "(function(){var ele=document.querySelector(\"iframe[id='ytplayer']\");if(ele){ele=ele.contentDocument.querySelector('video');}if(ele){ele.loop=" + PrefVideo.p + ";}})();", false);
            }
            if (webVideoPip.f == null) {
                return;
            }
            webVideoPip.postDelayed(new AnonymousClass1(), 100L);
        }
    }

    /* loaded from: classes3.dex */
    public class EventReceiver extends BroadcastReceiver {
        public EventReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            MyWebSafe myWebSafe;
            MyWebSafe myWebSafe2;
            MyWebSafe myWebSafe3;
            MyWebSafe myWebSafe4;
            MyWebSafe myWebSafe5;
            if (intent != null) {
                String action = intent.getAction();
                action.getClass();
                char c2 = 65535;
                switch (action.hashCode()) {
                    case -751345213:
                        if (action.equals("com.mycompany.app.soulbrowser.ACTION_MUSIC_PAUSE")) {
                            c2 = 0;
                            break;
                        }
                        break;
                    case 1908563306:
                        if (action.equals("com.mycompany.app.soulbrowser.ACTION_VIDEO_FFWD")) {
                            c2 = 1;
                            break;
                        }
                        break;
                    case 1908574838:
                        if (action.equals("com.mycompany.app.soulbrowser.ACTION_VIDEO_FRWD")) {
                            c2 = 2;
                            break;
                        }
                        break;
                    case 1908866321:
                        if (action.equals("com.mycompany.app.soulbrowser.ACTION_VIDEO_PLAY")) {
                            c2 = 3;
                            break;
                        }
                        break;
                }
                WebVideoPip webVideoPip = WebVideoPip.this;
                switch (c2) {
                    case 0:
                        int i = webVideoPip.r;
                        if (i != 0 && i != 3 && (myWebSafe = webVideoPip.m) != null) {
                            MainUtil.J(myWebSafe, "(function(){var ele=document.querySelector(\"iframe[id='ytplayer']\");if(ele){ele=ele.contentDocument.querySelector('video');}if(ele){ele.pause();}})();", true);
                            return;
                        }
                        return;
                    case 1:
                        if (webVideoPip.r != 0 && (myWebSafe2 = webVideoPip.m) != null) {
                            MainUtil.J(myWebSafe2, "(function(){var ele=document.querySelector(\"iframe[id='ytplayer']\");if(ele){ele=ele.contentDocument.querySelector('video');}if(ele){var pos=ele.currentTime;if(pos+10<ele.duration){ele.currentTime=pos+10;}else{ele.currentTime=ele.duration;}}})();", true);
                            return;
                        }
                        return;
                    case 2:
                        if (webVideoPip.r != 0 && (myWebSafe3 = webVideoPip.m) != null) {
                            MainUtil.J(myWebSafe3, "(function(){var ele=document.querySelector(\"iframe[id='ytplayer']\");if(ele){ele=ele.contentDocument.querySelector('video');}if(ele){var pos=ele.currentTime;if(pos>10){ele.currentTime=pos-10;}else{ele.currentTime=0;}}})();", true);
                            return;
                        }
                        return;
                    case 3:
                        int i2 = WebVideoPip.B;
                        int i3 = webVideoPip.r;
                        if (i3 == 2) {
                            if (i3 != 0 && i3 != 3 && (myWebSafe5 = webVideoPip.m) != null) {
                                MainUtil.J(myWebSafe5, "(function(){var ele=document.querySelector(\"iframe[id='ytplayer']\");if(ele){ele=ele.contentDocument.querySelector('video');}if(ele){ele.pause();}})();", true);
                                return;
                            }
                            return;
                        }
                        if (i3 != 0 && i3 != 2 && (myWebSafe4 = webVideoPip.m) != null) {
                            MainUtil.J(myWebSafe4, "(function(){var ele=document.querySelector(\"iframe[id='ytplayer']\");if(ele){ele=ele.contentDocument.querySelector('video');}if(ele){ele.play();}})();", true);
                            return;
                        }
                        return;
                    default:
                        return;
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    public class WebAppInterface {
        public WebAppInterface() {
        }

        @JavascriptInterface
        public void onYouLoaded(String str) {
            boolean equals = "1".equals(str);
            WebVideoPip webVideoPip = WebVideoPip.this;
            if (!equals) {
                WebVideoPip.b(webVideoPip);
                return;
            }
            webVideoPip.r = 1;
            if (webVideoPip.f == null) {
                return;
            }
            webVideoPip.postDelayed(new AnonymousClass7(), 100L);
        }

        @JavascriptInterface
        public void onYouPaused(String str) {
            boolean equals = "1".equals(str);
            WebVideoPip webVideoPip = WebVideoPip.this;
            if (equals) {
                webVideoPip.r = 3;
            } else {
                webVideoPip.r = 2;
            }
            WebVideoPip.g(webVideoPip);
        }
    }

    public static void a(WebVideoPip webVideoPip, String str) {
        if (webVideoPip.m != null) {
            if (MainUtil.D5(str)) {
                if (webVideoPip.o) {
                    webVideoPip.o = false;
                    MyWebSafe myWebSafe = webVideoPip.m;
                    if (myWebSafe != null) {
                        myWebSafe.post(new Runnable() { // from class: com.mycompany.app.web.WebVideoPip.12
                            @Override // java.lang.Runnable
                            public final void run() {
                                WebVideoPip webVideoPip2 = WebVideoPip.this;
                                MyWebSafe myWebSafe2 = webVideoPip2.m;
                                if (myWebSafe2 == null) {
                                    return;
                                }
                                webVideoPip2.o = false;
                                myWebSafe2.removeJavascriptInterface("android");
                            }
                        });
                        return;
                    }
                    return;
                }
                return;
            }
            if (!webVideoPip.o) {
                webVideoPip.o = true;
                MyWebSafe myWebSafe2 = webVideoPip.m;
                if (myWebSafe2 == null) {
                    return;
                }
                myWebSafe2.post(new Runnable() { // from class: com.mycompany.app.web.WebVideoPip.13
                    @Override // java.lang.Runnable
                    public final void run() {
                        WebVideoPip webVideoPip2 = WebVideoPip.this;
                        MyWebSafe myWebSafe3 = webVideoPip2.m;
                        if (myWebSafe3 == null) {
                            return;
                        }
                        webVideoPip2.o = true;
                        myWebSafe3.addJavascriptInterface(new WebAppInterface(), "android");
                    }
                });
            }
        }
    }

    public static void b(WebVideoPip webVideoPip) {
        if (webVideoPip.r != 0 || webVideoPip.m == null || webVideoPip.f == null) {
            return;
        }
        webVideoPip.postDelayed(new Runnable() { // from class: com.mycompany.app.web.WebVideoPip.6
            @Override // java.lang.Runnable
            public final void run() {
                MyWebSafe myWebSafe;
                WebVideoPip webVideoPip2 = WebVideoPip.this;
                if (webVideoPip2.r != 0 || (myWebSafe = webVideoPip2.m) == null) {
                    return;
                }
                MainUtil.J(myWebSafe, "(function(){var val=0;var ele=document.querySelector(\"iframe[id='ytplayer']\");if(ele){ele=ele.contentDocument.querySelector('video');}if(ele){function myYouPlay(evt){android.onYouPaused('0');}function myYouPause(evt){android.onYouPaused('1');}ele.addEventListener('playing',myYouPlay);ele.addEventListener('pause',myYouPause);val=1;}android.onYouLoaded(val);})();", true);
            }
        }, 300L);
    }

    public static void c(WebVideoPip webVideoPip) {
        MyWebSafe myWebSafe = webVideoPip.m;
        if (myWebSafe != null) {
            webVideoPip.setWebSetting(myWebSafe);
            if (webVideoPip.f == null) {
                return;
            }
            webVideoPip.post(new AnonymousClass4());
        }
    }

    public static void f(WebVideoPip webVideoPip) {
        if (webVideoPip.q) {
            webVideoPip.q = false;
            MyCoverView myCoverView = webVideoPip.i;
            if (myCoverView != null) {
                webVideoPip.l = 0L;
                myCoverView.f(true);
            }
        }
        if (webVideoPip.s) {
            webVideoPip.i();
            return;
        }
        if (!webVideoPip.v) {
            webVideoPip.v = true;
            MainActivity mainActivity = webVideoPip.f19693c;
            if (mainActivity == null) {
                return;
            }
            mainActivity.m0(new Runnable() { // from class: com.mycompany.app.web.WebVideoPip.10
                @Override // java.lang.Runnable
                public final void run() {
                    WebVideoPip webVideoPip2 = WebVideoPip.this;
                    WebVideoPip.h(webVideoPip2);
                    webVideoPip2.v = false;
                }
            });
        }
    }

    public static void g(WebVideoPip webVideoPip) {
        if (webVideoPip.w > 0) {
            if (webVideoPip.f != null) {
                webVideoPip.postDelayed(new Runnable() { // from class: com.mycompany.app.web.WebVideoPip.8
                    @Override // java.lang.Runnable
                    public final void run() {
                        WebVideoPip webVideoPip2 = WebVideoPip.this;
                        long j = webVideoPip2.w;
                        webVideoPip2.w = 0L;
                        if (j > 0 && webVideoPip2.r != 0 && webVideoPip2.m != null) {
                            MainUtil.J(webVideoPip2.m, "(function(){var ele=document.querySelector(\"iframe[id='ytplayer']\");if(ele){ele=ele.contentDocument.querySelector('video');}if(ele){var dur=ele.duration;if(dur>0){var pos=" + j + ";if(pos<dur){ele.currentTime=pos;}}}})();", false);
                        }
                        if (webVideoPip2.f == null) {
                            return;
                        }
                        webVideoPip2.postDelayed(new Runnable() { // from class: com.mycompany.app.web.WebVideoPip.8.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                WebVideoPip.f(WebVideoPip.this);
                            }
                        }, 100L);
                    }
                }, 100L);
            }
        } else {
            if (webVideoPip.f == null) {
                return;
            }
            webVideoPip.post(new Runnable() { // from class: com.mycompany.app.web.WebVideoPip.9
                @Override // java.lang.Runnable
                public final void run() {
                    WebVideoPip.f(WebVideoPip.this);
                }
            });
        }
    }

    private MainUtil.SizeItem getYouSize() {
        JSONObject v;
        JSONObject jSONObject;
        int i;
        int i2;
        try {
            Document document = Jsoup.connect(this.k).referrer(this.k).userAgent(MainUtil.t3(this.f)).get();
            if (document == null || (v = WebReadTask.v(document)) == null || (jSONObject = v.getJSONObject("streamingData").getJSONArray("formats").getJSONObject(0)) == null || (i = jSONObject.getInt("width")) <= 0 || (i2 = jSONObject.getInt("height")) <= 0) {
                return null;
            }
            return new MainUtil.SizeItem(i, i2);
        } catch (Exception | LinkageError | OutOfMemoryError unused) {
            return null;
        }
    }

    public static void h(WebVideoPip webVideoPip) {
        MainUtil.SizeItem youSize = webVideoPip.getYouSize();
        if (youSize != null) {
            webVideoPip.t = youSize.f17015a;
            webVideoPip.u = youSize.b;
        }
        webVideoPip.s = true;
        if (webVideoPip.f == null) {
            return;
        }
        webVideoPip.post(new Runnable() { // from class: com.mycompany.app.web.WebVideoPip.11
            @Override // java.lang.Runnable
            public final void run() {
                int i = WebVideoPip.B;
                WebVideoPip.this.i();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setWebSettin2(WebView webView) {
        if (webView == null) {
            return;
        }
        webView.setWebViewClient(new LocalWebViewClient());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setWebSettin3(WebView webView) {
        if (webView == null) {
            return;
        }
        this.o = true;
        webView.addJavascriptInterface(new WebAppInterface(), "android");
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    private void setWebSetting(WebView webView) {
        if (webView == null) {
            return;
        }
        WebSettings settings = webView.getSettings();
        settings.setTextZoom(100);
        settings.setSupportZoom(true);
        settings.setBuiltInZoomControls(true);
        settings.setDisplayZoomControls(false);
        settings.setUseWideViewPort(true);
        settings.setLoadWithOverviewMode(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(false);
        settings.setSupportMultipleWindows(false);
        settings.setMediaPlaybackRequiresUserGesture(false);
        settings.setJavaScriptEnabled(true);
        webView.setOverScrollMode(2);
    }

    public final void i() {
        Context context;
        boolean z;
        int i;
        String str;
        int i2;
        int i3;
        if (Build.VERSION.SDK_INT >= 26 && (context = this.f) != null) {
            if (this.r == 2) {
                z = true;
            } else {
                z = false;
            }
            String packageName = context.getPackageName();
            Intent intent = new Intent("com.mycompany.app.soulbrowser.ACTION_VIDEO_FRWD");
            intent.setPackage(packageName);
            PendingIntent broadcast = PendingIntent.getBroadcast(this.f, 0, intent, 201326592);
            Intent intent2 = new Intent("com.mycompany.app.soulbrowser.ACTION_VIDEO_PLAY");
            intent2.setPackage(packageName);
            PendingIntent broadcast2 = PendingIntent.getBroadcast(this.f, 1, intent2, 201326592);
            Intent intent3 = new Intent("com.mycompany.app.soulbrowser.ACTION_VIDEO_FFWD");
            intent3.setPackage(packageName);
            PendingIntent broadcast3 = PendingIntent.getBroadcast(this.f, 2, intent3, 201326592);
            if (!z) {
                i = R.drawable.baseline_play_arrow_white_24;
                str = "play";
            } else {
                i = R.drawable.baseline_pause_white_24;
                str = "pause";
            }
            if (this.g) {
                i2 = R.drawable.baseline_fast_forward_white_24;
                i3 = R.drawable.baseline_fast_rewind_white_24;
            } else {
                i2 = R.drawable.baseline_fast_rewind_white_24;
                i3 = R.drawable.baseline_fast_forward_white_24;
            }
            Icon createWithResource = Icon.createWithResource(this.f, i2);
            Icon createWithResource2 = Icon.createWithResource(this.f, i);
            Icon createWithResource3 = Icon.createWithResource(this.f, i3);
            ArrayList arrayList = new ArrayList();
            arrayList.add(new RemoteAction(createWithResource, "frwd", "frwd", broadcast));
            arrayList.add(new RemoteAction(createWithResource2, str, str, broadcast2));
            arrayList.add(new RemoteAction(createWithResource3, "ffwd", "ffwd", broadcast3));
            int i4 = this.t;
            int i5 = this.u;
            if (i4 == 0 || i5 == 0) {
                i4 = 1280;
                i5 = 720;
            }
            try {
                PictureInPictureParams.Builder builder = new PictureInPictureParams.Builder();
                builder.setActions(arrayList);
                builder.setAspectRatio(MainUtil.e3(i4, i5));
                this.f19693c.setPictureInPictureParams(builder.build());
            } catch (Exception unused) {
            }
        }
    }

    public void setYouPos(long j) {
        this.w = j / 1000;
    }

    /* loaded from: classes3.dex */
    public class LocalWebViewClient extends WebViewClient {
        public LocalWebViewClient() {
        }

        @Override // android.webkit.WebViewClient
        public final void onPageFinished(WebView webView, String str) {
            final WebVideoPip webVideoPip = WebVideoPip.this;
            if (webVideoPip.m == null) {
                return;
            }
            webVideoPip.n = false;
            WebVideoPip.a(webVideoPip, str);
            if (!webVideoPip.z && !TextUtils.isEmpty(str) && !str.equals(webVideoPip.A)) {
                webVideoPip.z = true;
                webVideoPip.A = str;
                webVideoPip.post(new Runnable() { // from class: com.mycompany.app.web.WebVideoPip.14
                    @Override // java.lang.Runnable
                    public final void run() {
                        WebVideoPip webVideoPip2 = WebVideoPip.this;
                        MainUtil.l(webVideoPip2.m);
                        webVideoPip2.z = false;
                    }
                });
            }
            WebVideoPip.b(webVideoPip);
        }

        @Override // android.webkit.WebViewClient
        public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            WebVideoPip webVideoPip = WebVideoPip.this;
            if (webVideoPip.m == null) {
                return;
            }
            webVideoPip.n = true;
            WebVideoPip.a(webVideoPip, str);
            WebVideoPip.b(webVideoPip);
        }

        @Override // android.webkit.WebViewClient
        public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            final WebVideoPip webVideoPip = WebVideoPip.this;
            webVideoPip.m = null;
            MainUtil.D(webView, renderProcessGoneDetail);
            webVideoPip.post(new Runnable() { // from class: com.mycompany.app.web.WebVideoPip.15
                @Override // java.lang.Runnable
                public final void run() {
                    WebVideoPip webVideoPip2 = WebVideoPip.this;
                    if (webVideoPip2.f19693c == null) {
                        return;
                    }
                    if (webVideoPip2.q) {
                        webVideoPip2.q = false;
                        MyCoverView myCoverView = webVideoPip2.i;
                        if (myCoverView != null) {
                            webVideoPip2.l = 0L;
                            myCoverView.f(true);
                        }
                    }
                    MainActivity mainActivity = webVideoPip2.f19693c;
                    int i = R.string.play_error;
                    mainActivity.getClass();
                    MainUtil.e8(mainActivity, i);
                }
            });
            return true;
        }

        @Override // android.webkit.WebViewClient
        public final WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
            WebVideoPip webVideoPip = WebVideoPip.this;
            if (webVideoPip.m != null && webResourceRequest != null && webResourceRequest.getUrl() != null) {
                WebVideoPip.a(webVideoPip, webResourceRequest.getUrl().toString());
            }
            return null;
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
            WebVideoPip webVideoPip = WebVideoPip.this;
            if (webVideoPip.m == null || TextUtils.isEmpty(str)) {
                return true;
            }
            WebVideoPip.a(webVideoPip, str);
            return true;
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            WebVideoPip webVideoPip = WebVideoPip.this;
            if (webVideoPip.m != null && webResourceRequest != null && webResourceRequest.getUrl() != null) {
                String uri = webResourceRequest.getUrl().toString();
                if (!TextUtils.isEmpty(uri)) {
                    WebVideoPip.a(webVideoPip, uri);
                }
            }
            return true;
        }
    }
}
