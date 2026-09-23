package com.mycompany.app.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.os.Handler;
import android.speech.tts.TextToSpeech;
import android.speech.tts.UtteranceProgressListener;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.JavascriptInterface;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.ValueCallback;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.data.DataTrans;
import com.mycompany.app.dialog.DialogTransLang;
import com.mycompany.app.dialog.DialogViewRead;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainTransText;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefAlbum;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.pref.PrefTts;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyLineFrame;
import com.mycompany.app.web.WebNestView;
import com.mycompany.app.web.WebTransControl;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class DialogViewTrans extends MyDialogBottom {
    public static final /* synthetic */ int k1 = 0;
    public int A0;
    public boolean B0;
    public String C0;
    public ArrayList D0;
    public PopupWindow E0;
    public boolean F0;
    public MyDialogLinear G0;
    public MyButtonImage H0;
    public MyButtonImage I0;
    public MyButtonImage J0;
    public MyButtonImage K0;
    public MyButtonImage L0;
    public MyButtonImage M0;
    public boolean N0;
    public boolean O0;
    public boolean P0;
    public String Q0;
    public int R0;
    public boolean S0;
    public String T0;
    public String U0;
    public String V0;
    public String W0;
    public DialogTransLang X0;
    public boolean Y0;
    public MainTransText Z0;
    public MainActivity a0;
    public String a1;
    public Context b0;
    public String b1;
    public MyDialogLinear c0;
    public boolean c1;
    public FrameLayout d0;
    public String d1;
    public WebNestView e0;
    public String e1;
    public MyButtonImage f0;
    public String f1;
    public View g0;
    public String g1;
    public MyLineFrame h0;
    public WebTransControl h1;
    public WebTransControl i0;
    public List i1;
    public String j0;
    public final Runnable j1;
    public String k0;
    public boolean l0;
    public TextToSpeech m0;
    public float n0;
    public float o0;
    public String p0;
    public String q0;
    public ArrayList r0;
    public int s0;
    public int t0;
    public boolean u0;
    public int v0;
    public int w0;
    public boolean x0;
    public int y0;
    public int z0;

    /* renamed from: com.mycompany.app.dialog.DialogViewTrans$12, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass12 implements Runnable {
        public AnonymousClass12() {
        }

        /* JADX WARN: Removed duplicated region for block: B:25:0x00b8 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:27:0x00b9  */
        /* JADX WARN: Removed duplicated region for block: B:6:0x0026  */
        /* JADX WARN: Type inference failed for: r12v2, types: [com.mycompany.app.web.WebReadTask$ReadItem, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r2v5, types: [com.mycompany.app.web.WebReadTask$ReadItem, java.lang.Object] */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void run() {
            /*
                r13 = this;
                com.mycompany.app.dialog.DialogViewTrans r0 = com.mycompany.app.dialog.DialogViewTrans.this
                java.lang.String r1 = r0.j0
                boolean r2 = android.text.TextUtils.isEmpty(r1)
                r3 = 0
                if (r2 == 0) goto Ld
            Lb:
                r1 = r3
                goto L20
            Ld:
                java.lang.String r2 = " "
                java.lang.String r4 = " "
                java.lang.String r1 = r1.replace(r2, r4)
                boolean r2 = android.text.TextUtils.isEmpty(r1)
                if (r2 == 0) goto L1c
                goto Lb
            L1c:
                java.lang.String r1 = r1.trim()
            L20:
                boolean r2 = android.text.TextUtils.isEmpty(r1)
                if (r2 == 0) goto L28
                java.lang.String r1 = ""
            L28:
                r2 = 1
                r4 = 0
                java.lang.StringBuilder r5 = com.mycompany.app.web.WebReadTask.o(r2, r4)
                java.util.ArrayList r6 = new java.util.ArrayList
                r6.<init>()
                java.lang.String r7 = "\n"
                java.lang.String[] r7 = r1.split(r7)
                java.lang.String r8 = "</p>"
                java.lang.String r9 = "'>"
                java.lang.String r10 = "<p id='"
                if (r7 == 0) goto L80
                int r11 = r7.length
                if (r11 <= r2) goto L80
                int r1 = r7.length
                r2 = r4
            L46:
                if (r4 >= r1) goto L9f
                r11 = r7[r4]
                boolean r12 = android.text.TextUtils.isEmpty(r11)
                if (r12 == 0) goto L51
                goto L7d
            L51:
                java.lang.String r11 = r11.trim()
                boolean r12 = android.text.TextUtils.isEmpty(r11)
                if (r12 == 0) goto L5c
                goto L7d
            L5c:
                com.mycompany.app.web.WebReadTask$ReadItem r12 = new com.mycompany.app.web.WebReadTask$ReadItem
                r12.<init>()
                r12.f = r2
                r12.b = r11
                r6.add(r12)
                r5.append(r10)
                int r11 = r12.f
                r5.append(r11)
                r5.append(r9)
                java.lang.String r11 = r12.b
                r5.append(r11)
                r5.append(r8)
                int r2 = r2 + 1
            L7d:
                int r4 = r4 + 1
                goto L46
            L80:
                com.mycompany.app.web.WebReadTask$ReadItem r2 = new com.mycompany.app.web.WebReadTask$ReadItem
                r2.<init>()
                r2.f = r4
                r2.b = r1
                r6.add(r2)
                r5.append(r10)
                int r1 = r2.f
                r5.append(r1)
                r5.append(r9)
                java.lang.String r1 = r2.b
                r5.append(r1)
                r5.append(r8)
            L9f:
                r0.D0 = r6
                java.lang.String r1 = "</body></html>"
                r5.append(r1)
                java.lang.String r1 = r5.toString()
                r0.e1 = r1
                java.lang.String r1 = "soul_trans_"
                java.lang.String r1 = com.mycompany.app.main.MainUtil.M1(r1, r3)
                r0.W0 = r1
                com.mycompany.app.web.WebNestView r0 = r0.e0
                if (r0 != 0) goto Lb9
                return
            Lb9:
                com.mycompany.app.dialog.DialogViewTrans$12$1 r1 = new com.mycompany.app.dialog.DialogViewTrans$12$1
                r1.<init>()
                r0.post(r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogViewTrans.AnonymousClass12.run():void");
        }
    }

    /* renamed from: com.mycompany.app.dialog.DialogViewTrans$16, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass16 implements Runnable {

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ String f15292c;

        public AnonymousClass16(String str) {
            this.f15292c = str;
        }

        @Override // java.lang.Runnable
        public final void run() {
            MainUtil.M7(DialogViewTrans.this.e0, this.f15292c);
        }
    }

    /* renamed from: com.mycompany.app.dialog.DialogViewTrans$7, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass7 implements Runnable {

        /* renamed from: com.mycompany.app.dialog.DialogViewTrans$7$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 implements Runnable {
            public AnonymousClass1() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                DialogViewTrans dialogViewTrans = DialogViewTrans.this;
                WebNestView webNestView = dialogViewTrans.e0;
                if (webNestView != null) {
                    webNestView.setWebViewClient(new LocalWebViewClient());
                    Handler handler = dialogViewTrans.i;
                    if (handler == null) {
                        return;
                    }
                    handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewTrans.7.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            AnonymousClass7 anonymousClass7 = AnonymousClass7.this;
                            DialogViewTrans dialogViewTrans2 = DialogViewTrans.this;
                            WebNestView webNestView2 = dialogViewTrans2.e0;
                            if (webNestView2 != null) {
                                dialogViewTrans2.P0 = true;
                                webNestView2.addJavascriptInterface(new WebAppInterface(), "android");
                                Handler handler2 = DialogViewTrans.this.i;
                                if (handler2 == null) {
                                    return;
                                }
                                handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewTrans.7.1.1.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        final DialogViewTrans dialogViewTrans3 = DialogViewTrans.this;
                                        if (dialogViewTrans3.e0 != null && dialogViewTrans3.i0 == null && dialogViewTrans3.h0 != null && dialogViewTrans3.h1 == null) {
                                            dialogViewTrans3.h1 = new WebTransControl(dialogViewTrans3.a0);
                                            Handler handler3 = dialogViewTrans3.i;
                                            if (handler3 != null) {
                                                handler3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewTrans.17
                                                    @Override // java.lang.Runnable
                                                    public final void run() {
                                                        DialogViewTrans dialogViewTrans4 = DialogViewTrans.this;
                                                        WebTransControl webTransControl = dialogViewTrans4.h1;
                                                        if (webTransControl != null) {
                                                            webTransControl.b(2);
                                                        }
                                                        Handler handler4 = dialogViewTrans4.i;
                                                        if (handler4 == null) {
                                                            return;
                                                        }
                                                        handler4.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewTrans.17.1
                                                            @Override // java.lang.Runnable
                                                            public final void run() {
                                                                final DialogViewTrans dialogViewTrans5 = DialogViewTrans.this;
                                                                WebTransControl webTransControl2 = dialogViewTrans5.h1;
                                                                dialogViewTrans5.h1 = null;
                                                                WebTransControl webTransControl3 = dialogViewTrans5.i0;
                                                                if (webTransControl3 == null && dialogViewTrans5.h0 != null && webTransControl2 != null && webTransControl3 == null) {
                                                                    dialogViewTrans5.i0 = webTransControl2;
                                                                    try {
                                                                        webTransControl2.f(dialogViewTrans5.T0, dialogViewTrans5.R0, dialogViewTrans5.S0);
                                                                        dialogViewTrans5.i0.setListener(new WebTransControl.TransCtrlListener() { // from class: com.mycompany.app.dialog.DialogViewTrans.18
                                                                            @Override // com.mycompany.app.web.WebTransControl.TransCtrlListener
                                                                            public final void b() {
                                                                                DialogViewTrans dialogViewTrans6 = DialogViewTrans.this;
                                                                                int i = dialogViewTrans6.R0;
                                                                                if (i == 1) {
                                                                                    MainUtil.e8(dialogViewTrans6.b0, R.string.wait_retry);
                                                                                } else if (i == 3) {
                                                                                    MainUtil.L7(dialogViewTrans6.e0, "restore");
                                                                                }
                                                                            }

                                                                            @Override // com.mycompany.app.web.WebTransControl.TransCtrlListener
                                                                            public final void c(View view) {
                                                                                final DialogViewTrans dialogViewTrans6 = DialogViewTrans.this;
                                                                                if (dialogViewTrans6.a0 == null || dialogViewTrans6.X0 != null) {
                                                                                    return;
                                                                                }
                                                                                dialogViewTrans6.E();
                                                                                if (!DataTrans.a(dialogViewTrans6.b0).b() && dialogViewTrans6.R0 == 1) {
                                                                                    MainUtil.e8(dialogViewTrans6.b0, R.string.wait_retry);
                                                                                    return;
                                                                                }
                                                                                DialogTransLang dialogTransLang = new DialogTransLang(dialogViewTrans6.a0, false, new DialogTransLang.TransLangListener() { // from class: com.mycompany.app.dialog.DialogViewTrans.19
                                                                                    @Override // com.mycompany.app.dialog.DialogTransLang.TransLangListener
                                                                                    public final void a(String str) {
                                                                                        int i = DialogViewTrans.k1;
                                                                                        DialogViewTrans dialogViewTrans7 = DialogViewTrans.this;
                                                                                        dialogViewTrans7.E();
                                                                                        if (dialogViewTrans7.R0 == 3 && !TextUtils.isEmpty(str)) {
                                                                                            dialogViewTrans7.s(new AnonymousClass16(str));
                                                                                        }
                                                                                    }
                                                                                });
                                                                                dialogViewTrans6.X0 = dialogTransLang;
                                                                                dialogTransLang.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogViewTrans.20
                                                                                    @Override // android.content.DialogInterface.OnDismissListener
                                                                                    public final void onDismiss(DialogInterface dialogInterface) {
                                                                                        int i = DialogViewTrans.k1;
                                                                                        DialogViewTrans.this.E();
                                                                                    }
                                                                                });
                                                                            }

                                                                            @Override // com.mycompany.app.web.WebTransControl.TransCtrlListener
                                                                            public final void d() {
                                                                                DialogViewTrans dialogViewTrans6 = DialogViewTrans.this;
                                                                                int i = dialogViewTrans6.R0;
                                                                                if (i == 1) {
                                                                                    MainUtil.e8(dialogViewTrans6.b0, R.string.wait_retry);
                                                                                } else if (i == 3) {
                                                                                    MainUtil.L7(dialogViewTrans6.e0, "confirm");
                                                                                }
                                                                            }

                                                                            @Override // com.mycompany.app.web.WebTransControl.TransCtrlListener
                                                                            public final void a() {
                                                                            }
                                                                        });
                                                                        dialogViewTrans5.h0.addView(dialogViewTrans5.i0, -1, -2);
                                                                    } catch (Exception unused) {
                                                                    }
                                                                }
                                                                if (dialogViewTrans5.e0 != null) {
                                                                    dialogViewTrans5.s(new AnonymousClass12());
                                                                }
                                                            }
                                                        });
                                                    }
                                                });
                                            }
                                        }
                                    }
                                });
                            }
                        }
                    });
                }
            }
        }

        public AnonymousClass7() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            DialogViewTrans dialogViewTrans = DialogViewTrans.this;
            WebNestView webNestView = dialogViewTrans.e0;
            if (webNestView != null) {
                WebSettings settings = webNestView.getSettings();
                settings.setSupportZoom(true);
                settings.setBuiltInZoomControls(true);
                settings.setDisplayZoomControls(false);
                settings.setUseWideViewPort(true);
                settings.setLoadWithOverviewMode(true);
                settings.setJavaScriptCanOpenWindowsAutomatically(false);
                settings.setSupportMultipleWindows(false);
                settings.setMediaPlaybackRequiresUserGesture(false);
                settings.setJavaScriptEnabled(true);
                webNestView.setOverScrollMode(2);
                webNestView.setVerticalScrollBarEnabled(false);
                webNestView.setHorizontalScrollBarEnabled(false);
                Handler handler = dialogViewTrans.i;
                if (handler == null) {
                    return;
                }
                handler.post(new AnonymousClass1());
            }
        }
    }

    /* loaded from: classes3.dex */
    public class WebAppInterface {
        public WebAppInterface() {
        }

        @JavascriptInterface
        public void onJsResult(String str, final String str2) {
            if (!TextUtils.isEmpty(str)) {
                boolean equals = str.equals("onTransList");
                final DialogViewTrans dialogViewTrans = DialogViewTrans.this;
                if (equals) {
                    if (dialogViewTrans.e0 != null && !TextUtils.isEmpty(str2)) {
                        dialogViewTrans.f1 = str2;
                        dialogViewTrans.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewTrans.14
                            @Override // java.lang.Runnable
                            public final void run() {
                                DialogViewTrans dialogViewTrans2 = DialogViewTrans.this;
                                String str3 = dialogViewTrans2.f1;
                                dialogViewTrans2.f1 = null;
                                if (dialogViewTrans2.e0 == null) {
                                    return;
                                }
                                MainUtil.P7(dialogViewTrans2.b0, str3);
                            }
                        });
                        return;
                    }
                    return;
                }
                if (str.equals("onTransClass")) {
                    if (dialogViewTrans.e0 != null) {
                        if ("0".equals(str2)) {
                            dialogViewTrans.V0 = "-";
                            return;
                        }
                        if (TextUtils.isEmpty(str2)) {
                            dialogViewTrans.V0 = "-";
                            return;
                        } else {
                            if (TextUtils.isEmpty(dialogViewTrans.V0)) {
                                dialogViewTrans.g1 = str2;
                                dialogViewTrans.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewTrans.15
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        DialogViewTrans dialogViewTrans2 = DialogViewTrans.this;
                                        String str3 = dialogViewTrans2.g1;
                                        dialogViewTrans2.g1 = null;
                                        if (dialogViewTrans2.e0 != null && TextUtils.isEmpty(dialogViewTrans2.V0)) {
                                            dialogViewTrans2.V0 = MainUtil.K3(str3);
                                            String str4 = dialogViewTrans2.V0;
                                            if (str4 != null && str4.length() > 2) {
                                                MainUtil.Z4(dialogViewTrans2.e0, str4);
                                            }
                                        }
                                    }
                                });
                                return;
                            }
                            return;
                        }
                    }
                    return;
                }
                if (str.equals("onTtsMark")) {
                    int i = DialogViewTrans.k1;
                    Handler handler = dialogViewTrans.i;
                    if (handler != null) {
                        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewTrans.27
                            @Override // java.lang.Runnable
                            public final void run() {
                                String[] split2;
                                WebNestView webNestView;
                                int i2 = DialogViewTrans.k1;
                                DialogViewTrans dialogViewTrans2 = DialogViewTrans.this;
                                dialogViewTrans2.getClass();
                                String str3 = str2;
                                if (!TextUtils.isEmpty(str3) && (split2 = str3.split(",")) != null && split2.length == 2) {
                                    int round = Math.round(MainUtil.G(dialogViewTrans2.b0, MainUtil.F6(split2[0], -1.0f)));
                                    int round2 = Math.round(MainUtil.G(dialogViewTrans2.b0, MainUtil.F6(split2[1], -1.0f)));
                                    if (round != -1 && round2 != -1 && (webNestView = dialogViewTrans2.e0) != null) {
                                        int scrollY = webNestView.getScrollY() - MainApp.E1;
                                        int i3 = MainApp.G1;
                                        int i4 = (scrollY - i3) + round;
                                        int i5 = i3 + scrollY + round2;
                                        if (i4 < scrollY) {
                                            dialogViewTrans2.e0.scrollTo(0, i4);
                                            return;
                                        }
                                        int min = Math.min(i4, i5 - (dialogViewTrans2.d0.getHeight() - (MainApp.F1 * 10)));
                                        if (min > scrollY) {
                                            dialogViewTrans2.e0.scrollTo(0, min);
                                        }
                                    }
                                }
                            }
                        });
                    }
                }
            }
        }

        @JavascriptInterface
        public void onObserDet(String str, int i) {
            boolean z = true;
            DialogViewTrans dialogViewTrans = DialogViewTrans.this;
            if (i == 0) {
                dialogViewTrans.R0 = 1;
            } else {
                dialogViewTrans.R0 = 3;
                if (i != 2) {
                    z = false;
                }
                dialogViewTrans.S0 = z;
                dialogViewTrans.T0 = str;
                if (TextUtils.isEmpty(PrefAlbum.y)) {
                    PrefAlbum.y = str;
                    PrefAlbum.z = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                    PrefAlbum.u(dialogViewTrans.b0);
                }
                if (MainUtil.q5(dialogViewTrans.U0, str)) {
                    dialogViewTrans.U0 = null;
                }
            }
            dialogViewTrans.Y0 = false;
            MyLineFrame myLineFrame = dialogViewTrans.h0;
            if (myLineFrame == null) {
                return;
            }
            myLineFrame.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewTrans.WebAppInterface.1
                @Override // java.lang.Runnable
                public final void run() {
                    WebNestView webNestView;
                    final DialogViewTrans dialogViewTrans2 = DialogViewTrans.this;
                    int i2 = DialogViewTrans.k1;
                    WebTransControl webTransControl = dialogViewTrans2.i0;
                    if (webTransControl != null) {
                        webTransControl.f(dialogViewTrans2.T0, dialogViewTrans2.R0, dialogViewTrans2.S0);
                    }
                    dialogViewTrans2.P();
                    dialogViewTrans2.F();
                    if (dialogViewTrans2.R0 != 1) {
                        String str2 = dialogViewTrans2.U0;
                        dialogViewTrans2.U0 = null;
                        if (!TextUtils.isEmpty(str2)) {
                            if (!TextUtils.isEmpty(str2)) {
                                dialogViewTrans2.s(new AnonymousClass16(str2));
                            }
                        } else if (!TextUtils.isEmpty(PrefAlbum.y) && (webNestView = dialogViewTrans2.e0) != null) {
                            webNestView.evaluateJavascript("document.cookie", new ValueCallback<String>() { // from class: com.mycompany.app.dialog.DialogViewTrans.13
                                @Override // android.webkit.ValueCallback
                                public final void onReceiveValue(String str3) {
                                    String L3 = MainUtil.L3(str3);
                                    if (!TextUtils.isEmpty(L3) && !L3.equals(PrefAlbum.z)) {
                                        PrefAlbum.z = L3;
                                        PrefSet.c(0, DialogViewTrans.this.b0, "mTransCode", L3);
                                    }
                                }
                            });
                        }
                        Context context = dialogViewTrans2.b0;
                        if (context != null && !DataTrans.a(context).b()) {
                            MainUtil.M3(dialogViewTrans2.e0);
                        }
                        if (!TextUtils.isEmpty(dialogViewTrans2.V0)) {
                            return;
                        }
                        MainUtil.N7(dialogViewTrans2.e0);
                    }
                }
            });
        }
    }

    public DialogViewTrans(MainActivity mainActivity, String str, String str2, String str3) {
        super(mainActivity);
        this.j1 = new Runnable() { // from class: com.mycompany.app.dialog.DialogViewTrans.37
            @Override // java.lang.Runnable
            public final void run() {
                int i;
                DialogViewTrans dialogViewTrans = DialogViewTrans.this;
                if (!dialogViewTrans.u0 || (i = dialogViewTrans.y0) == -1234) {
                    return;
                }
                dialogViewTrans.y0 = -1234;
                dialogViewTrans.B0 = false;
                if (dialogViewTrans.t0 == 2) {
                    dialogViewTrans.s0 = i - 1;
                    dialogViewTrans.O(false);
                } else {
                    dialogViewTrans.M(dialogViewTrans.z0, dialogViewTrans.A0, dialogViewTrans.s0, false);
                }
            }
        };
        m();
        this.a0 = mainActivity;
        this.b0 = getContext();
        this.j0 = str;
        this.k0 = str2;
        this.l0 = true;
        this.a1 = str3;
        this.b1 = PrefAlbum.z;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewTrans.1
            @Override // java.lang.Runnable
            public final void run() {
                final DialogViewTrans dialogViewTrans = DialogViewTrans.this;
                Context context = dialogViewTrans.b0;
                if (context != null) {
                    MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
                    int G = (int) MainUtil.G(context, 240.0f);
                    FrameLayout frameLayout = new FrameLayout(context);
                    frameLayout.setMinimumHeight(G);
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0);
                    layoutParams.weight = 1.0f;
                    q.addView(frameLayout, layoutParams);
                    MyButtonImage myButtonImage = new MyButtonImage(context);
                    myButtonImage.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                    myButtonImage.l(MainApp.j1, true);
                    myButtonImage.setBgPreRadius(MainApp.k1);
                    myButtonImage.setVisibility(8);
                    int i = MainApp.g1;
                    FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(i, i);
                    layoutParams2.gravity = 8388691;
                    int i2 = MainApp.G1;
                    layoutParams2.bottomMargin = i2;
                    layoutParams2.setMarginStart(i2);
                    frameLayout.addView(myButtonImage, layoutParams2);
                    int G2 = (int) MainUtil.G(context, 130.0f);
                    int G3 = (int) MainUtil.G(context, 24.0f);
                    View view = new View(context);
                    FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(G2, G3);
                    layoutParams3.gravity = 8388693;
                    frameLayout.addView(view, layoutParams3);
                    MyLineFrame myLineFrame = new MyLineFrame(context);
                    myLineFrame.d(MainApp.E1);
                    q.addView(myLineFrame, -1, MainApp.g1);
                    dialogViewTrans.c0 = q;
                    dialogViewTrans.d0 = frameLayout;
                    dialogViewTrans.f0 = myButtonImage;
                    dialogViewTrans.g0 = view;
                    dialogViewTrans.h0 = myLineFrame;
                    Handler handler2 = dialogViewTrans.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewTrans.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            final DialogViewTrans dialogViewTrans2 = DialogViewTrans.this;
                            MyDialogLinear myDialogLinear = dialogViewTrans2.c0;
                            if (myDialogLinear != null && dialogViewTrans2.b0 != null) {
                                if (MainApp.K1) {
                                    myDialogLinear.c(-5197648, MainApp.n1);
                                    dialogViewTrans2.f0.setImageResource(R.drawable.baseline_play_arrow_dark_24);
                                    dialogViewTrans2.f0.setBgNorColor(-11513776);
                                    dialogViewTrans2.f0.setBgPreColor(-12632257);
                                    dialogViewTrans2.g0.setBackgroundResource(R.drawable.trans_logo_short_back_dark);
                                } else {
                                    dialogViewTrans2.f0.setImageResource(R.drawable.baseline_play_arrow_black_24);
                                    dialogViewTrans2.f0.setBgNorColor(-460552);
                                    dialogViewTrans2.f0.setBgPreColor(-2039584);
                                    dialogViewTrans2.g0.setBackgroundResource(R.drawable.trans_logo_short_back_color);
                                }
                                dialogViewTrans2.f0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogViewTrans.3
                                    /* JADX WARN: Removed duplicated region for block: B:22:0x0046  */
                                    /* JADX WARN: Removed duplicated region for block: B:25:0x0050 A[Catch: Exception -> 0x009e, TryCatch #0 {Exception -> 0x009e, blocks: (B:14:0x002b, B:17:0x0033, B:20:0x003a, B:23:0x004a, B:25:0x0050, B:26:0x005d, B:28:0x006e, B:29:0x007b, B:31:0x0083, B:32:0x0088, B:34:0x0095, B:38:0x0099, B:39:0x0048), top: B:13:0x002b }] */
                                    /* JADX WARN: Removed duplicated region for block: B:26:0x005d A[Catch: Exception -> 0x009e, TryCatch #0 {Exception -> 0x009e, blocks: (B:14:0x002b, B:17:0x0033, B:20:0x003a, B:23:0x004a, B:25:0x0050, B:26:0x005d, B:28:0x006e, B:29:0x007b, B:31:0x0083, B:32:0x0088, B:34:0x0095, B:38:0x0099, B:39:0x0048), top: B:13:0x002b }] */
                                    /* JADX WARN: Removed duplicated region for block: B:39:0x0048 A[Catch: Exception -> 0x009e, TryCatch #0 {Exception -> 0x009e, blocks: (B:14:0x002b, B:17:0x0033, B:20:0x003a, B:23:0x004a, B:25:0x0050, B:26:0x005d, B:28:0x006e, B:29:0x007b, B:31:0x0083, B:32:0x0088, B:34:0x0095, B:38:0x0099, B:39:0x0048), top: B:13:0x002b }] */
                                    @Override // android.view.View.OnClickListener
                                    /*
                                        Code decompiled incorrectly, please refer to instructions dump.
                                        To view partially-correct add '--show-bad-code' argument
                                    */
                                    public final void onClick(android.view.View r13) {
                                        /*
                                            Method dump skipped, instructions count: 295
                                            To view this dump add '--comments-level debug' option
                                        */
                                        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogViewTrans.AnonymousClass3.onClick(android.view.View):void");
                                    }
                                });
                                dialogViewTrans2.R0 = 1;
                                dialogViewTrans2.U0 = PrefAlbum.y;
                                dialogViewTrans2.g(dialogViewTrans2.c0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogViewTrans.4
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view2) {
                                        final DialogViewTrans dialogViewTrans3 = DialogViewTrans.this;
                                        if (dialogViewTrans3.c0 != null) {
                                            dialogViewTrans3.show();
                                            Handler handler3 = dialogViewTrans3.i;
                                            if (handler3 == null) {
                                                return;
                                            }
                                            handler3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewTrans.5
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    final DialogViewTrans dialogViewTrans4 = DialogViewTrans.this;
                                                    if (dialogViewTrans4.d0 != null) {
                                                        WebNestView webNestView = new WebNestView(dialogViewTrans4.a0);
                                                        dialogViewTrans4.e0 = webNestView;
                                                        webNestView.setNoAutofill(true);
                                                        if (MainApp.K1) {
                                                            dialogViewTrans4.e0.setBackgroundColor(-14606047);
                                                        } else {
                                                            dialogViewTrans4.e0.setBackgroundColor(-1);
                                                        }
                                                        dialogViewTrans4.e0.setVisibility(8);
                                                        dialogViewTrans4.e0.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.mycompany.app.dialog.DialogViewTrans.6
                                                            @Override // android.view.View.OnLongClickListener
                                                            public final boolean onLongClick(View view3) {
                                                                return DialogViewTrans.this.u0;
                                                            }
                                                        });
                                                        dialogViewTrans4.d0.addView(dialogViewTrans4.e0, 0, new ViewGroup.LayoutParams(-1, -2));
                                                        Handler handler4 = dialogViewTrans4.i;
                                                        if (handler4 == null) {
                                                            return;
                                                        }
                                                        handler4.post(new AnonymousClass7());
                                                    }
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
        });
    }

    public static void B(DialogViewTrans dialogViewTrans, String str) {
        if (dialogViewTrans.e0 != null) {
            if (MainUtil.D5(str)) {
                if (dialogViewTrans.P0) {
                    dialogViewTrans.P0 = false;
                    WebNestView webNestView = dialogViewTrans.e0;
                    if (webNestView != null) {
                        webNestView.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewTrans.10
                            @Override // java.lang.Runnable
                            public final void run() {
                                DialogViewTrans dialogViewTrans2 = DialogViewTrans.this;
                                WebNestView webNestView2 = dialogViewTrans2.e0;
                                if (webNestView2 == null) {
                                    return;
                                }
                                dialogViewTrans2.P0 = false;
                                webNestView2.removeJavascriptInterface("android");
                            }
                        });
                        return;
                    }
                    return;
                }
                return;
            }
            if (!dialogViewTrans.P0) {
                dialogViewTrans.P0 = true;
                WebNestView webNestView2 = dialogViewTrans.e0;
                if (webNestView2 == null) {
                    return;
                }
                webNestView2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewTrans.11
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogViewTrans dialogViewTrans2 = DialogViewTrans.this;
                        WebNestView webNestView3 = dialogViewTrans2.e0;
                        if (webNestView3 == null) {
                            return;
                        }
                        dialogViewTrans2.P0 = true;
                        webNestView3.addJavascriptInterface(new WebAppInterface(), "android");
                    }
                });
            }
        }
    }

    public static boolean C(DialogViewTrans dialogViewTrans) {
        if (dialogViewTrans.N0) {
            return true;
        }
        dialogViewTrans.N0 = true;
        Handler handler = dialogViewTrans.i;
        if (handler == null) {
            return false;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewTrans.36
            @Override // java.lang.Runnable
            public final void run() {
                DialogViewTrans.this.N0 = false;
            }
        });
        return false;
    }

    public static void D(DialogViewTrans dialogViewTrans, int i) {
        ArrayList arrayList;
        int i2;
        DialogViewRead.TtsItem ttsItem;
        Runnable runnable = dialogViewTrans.j1;
        if (dialogViewTrans.e0 != null && (arrayList = dialogViewTrans.r0) != null) {
            if (dialogViewTrans.y0 == -1234) {
                dialogViewTrans.y0 = dialogViewTrans.s0;
            }
            if (i == 1) {
                i2 = dialogViewTrans.y0 - 1;
            } else if (i == 2) {
                i2 = dialogViewTrans.y0 + 1;
            } else {
                i2 = dialogViewTrans.y0;
            }
            if (i2 >= arrayList.size()) {
                i2 = dialogViewTrans.r0.size() - 1;
            }
            if (i2 < 0) {
                i2 = 0;
            }
            ArrayList arrayList2 = dialogViewTrans.r0;
            String str = null;
            if (arrayList2 != null && i2 >= 0 && i2 < arrayList2.size()) {
                ttsItem = (DialogViewRead.TtsItem) dialogViewTrans.r0.get(i2);
            } else {
                ttsItem = null;
            }
            if (ttsItem != null) {
                str = ttsItem.f15242c;
            }
            if (TextUtils.isEmpty(str)) {
                return;
            }
            dialogViewTrans.u0 = true;
            dialogViewTrans.e0.removeCallbacks(runnable);
            if (i != 0) {
                dialogViewTrans.I(false);
            }
            dialogViewTrans.M(0, str.length(), i2, true);
            dialogViewTrans.y0 = i2;
            dialogViewTrans.B0 = true;
            dialogViewTrans.e0.postDelayed(runnable, 200L);
        }
    }

    public final void E() {
        DialogTransLang dialogTransLang = this.X0;
        if (dialogTransLang != null) {
            dialogTransLang.dismiss();
            this.X0 = null;
        }
    }

    public final void F() {
        PopupWindow popupWindow = this.E0;
        if (popupWindow != null) {
            popupWindow.dismiss();
            this.E0 = null;
        }
        this.G0 = null;
        this.H0 = null;
        this.I0 = null;
        this.J0 = null;
        this.K0 = null;
        this.L0 = null;
        this.M0 = null;
        MyLineFrame myLineFrame = this.h0;
        if (myLineFrame != null) {
            myLineFrame.setAlpha(1.0f);
        }
    }

    public final boolean G() {
        if (this.b0 != null && this.m0 == null) {
            this.p0 = PrefTts.k;
            try {
                TextToSpeech textToSpeech = new TextToSpeech(this.b0, new TextToSpeech.OnInitListener() { // from class: com.mycompany.app.dialog.DialogViewTrans.21
                    @Override // android.speech.tts.TextToSpeech.OnInitListener
                    public final void onInit(int i) {
                        DialogViewTrans dialogViewTrans = DialogViewTrans.this;
                        if (i == -1) {
                            int i2 = DialogViewTrans.k1;
                            dialogViewTrans.J();
                        } else if (i == 0) {
                            dialogViewTrans.l0 = false;
                        }
                    }
                });
                this.m0 = textToSpeech;
                textToSpeech.setOnUtteranceProgressListener(new UtteranceProgressListener() { // from class: com.mycompany.app.dialog.DialogViewTrans.22
                    @Override // android.speech.tts.UtteranceProgressListener
                    public final void onDone(String str) {
                        DialogViewTrans dialogViewTrans = DialogViewTrans.this;
                        if (dialogViewTrans.r0 != null && dialogViewTrans.s0 < r0.size() - 1) {
                            dialogViewTrans.O(false);
                        } else {
                            dialogViewTrans.N(0, false);
                        }
                    }

                    @Override // android.speech.tts.UtteranceProgressListener
                    public final void onError(String str) {
                        int i = DialogViewTrans.k1;
                        DialogViewTrans.this.N(0, false);
                    }

                    @Override // android.speech.tts.UtteranceProgressListener
                    public final void onRangeStart(String str, int i, int i2, int i3) {
                        DialogViewTrans dialogViewTrans = DialogViewTrans.this;
                        int i4 = dialogViewTrans.v0;
                        int i5 = i4 + i;
                        dialogViewTrans.z0 = i5;
                        int i6 = i4 + i2;
                        dialogViewTrans.A0 = i6;
                        dialogViewTrans.w0 = i;
                        if (dialogViewTrans.B0) {
                            return;
                        }
                        dialogViewTrans.M(i5, i6, dialogViewTrans.s0, false);
                    }

                    @Override // android.speech.tts.UtteranceProgressListener
                    public final void onStart(String str) {
                        Handler handler;
                        DialogViewTrans dialogViewTrans = DialogViewTrans.this;
                        int i = dialogViewTrans.t0;
                        if (i == 1) {
                            dialogViewTrans.N(1, false);
                            return;
                        }
                        if (i == 2) {
                            dialogViewTrans.I(true);
                        } else {
                            if (dialogViewTrans.E0 != null || (handler = dialogViewTrans.i) == null) {
                                return;
                            }
                            handler.postDelayed(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewTrans.22.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    DialogViewTrans dialogViewTrans2 = DialogViewTrans.this;
                                    if (dialogViewTrans2.E0 != null) {
                                        return;
                                    }
                                    dialogViewTrans2.P();
                                }
                            }, 100L);
                        }
                    }
                });
                return true;
            } catch (Exception unused) {
                return false;
            }
        }
        return false;
    }

    public final boolean H(boolean z) {
        if (this.l0 || ((z && this.S0 && !this.Y0) || this.R0 == 1)) {
            return true;
        }
        return false;
    }

    public final void I(boolean z) {
        if (z) {
            K();
        }
        this.t0 = 2;
        try {
            TextToSpeech textToSpeech = this.m0;
            if (textToSpeech != null && textToSpeech.isSpeaking()) {
                this.m0.stop();
            }
        } catch (Exception unused) {
        }
    }

    public final void J() {
        K();
        this.t0 = 0;
        this.u0 = false;
        this.p0 = null;
        this.q0 = null;
        this.r0 = null;
        this.s0 = 0;
        this.v0 = 0;
        this.w0 = 0;
        TextToSpeech textToSpeech = this.m0;
        if (textToSpeech != null) {
            try {
                if (textToSpeech.isSpeaking()) {
                    this.m0.stop();
                }
                this.m0.shutdown();
            } catch (Exception unused) {
            }
            this.m0 = null;
        }
    }

    public final void K() {
        WebNestView webNestView = this.e0;
        if (webNestView == null) {
            return;
        }
        MainUtil.J(webNestView, "window.getSelection().removeAllRanges();", true);
    }

    /* JADX WARN: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0047  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void L() {
        /*
            r4 = this;
            java.lang.String r0 = com.mycompany.app.pref.PrefTts.k
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            r1 = 0
            if (r0 != 0) goto Lf
            java.lang.String r0 = com.mycompany.app.pref.PrefTts.k
        Lb:
            r3 = r1
            r1 = r0
            r0 = r3
            goto L3e
        Lf:
            boolean r0 = r4.S0
            if (r0 == 0) goto L1e
            java.lang.String r0 = com.mycompany.app.pref.PrefAlbum.z
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L1e
            java.lang.String r0 = com.mycompany.app.pref.PrefAlbum.z
            goto Lb
        L1e:
            java.lang.String r0 = r4.k0
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L29
            java.lang.String r0 = r4.k0
            goto Lb
        L29:
            java.lang.String r0 = r4.p0
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L34
            java.lang.String r0 = r4.p0
            goto Lb
        L34:
            java.util.Locale r0 = com.mycompany.app.main.MainApp.j()
            if (r0 == 0) goto L3e
            java.lang.String r1 = r0.toString()
        L3e:
            java.lang.String r2 = r4.q0
            boolean r2 = com.mycompany.app.main.MainUtil.q5(r2, r1)
            if (r2 == 0) goto L47
            goto L6c
        L47:
            r4.q0 = r1
            if (r0 != 0) goto L4f
            java.util.Locale r0 = com.mycompany.app.main.MainUtil.O3(r1)
        L4f:
            if (r0 != 0) goto L56
            java.util.Locale r0 = com.mycompany.app.main.MainApp.j()
            goto L67
        L56:
            android.speech.tts.TextToSpeech r1 = r4.m0     // Catch: java.lang.Exception -> L5d
            int r1 = r1.isLanguageAvailable(r0)     // Catch: java.lang.Exception -> L5d
            goto L5e
        L5d:
            r1 = -2
        L5e:
            if (r1 == 0) goto L67
            r2 = 1
            if (r1 == r2) goto L67
            java.util.Locale r0 = com.mycompany.app.main.MainApp.j()
        L67:
            android.speech.tts.TextToSpeech r1 = r4.m0     // Catch: java.lang.Exception -> L6c
            r1.setLanguage(r0)     // Catch: java.lang.Exception -> L6c
        L6c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogViewTrans.L():void");
    }

    public final void M(int i, int i2, int i3, boolean z) {
        DialogViewRead.TtsItem ttsItem;
        if (this.x0) {
            this.x0 = false;
            z = true;
        }
        if (this.e0 != null) {
            ArrayList arrayList = this.r0;
            if (arrayList != null && i3 >= 0 && i3 < arrayList.size()) {
                ttsItem = (DialogViewRead.TtsItem) this.r0.get(i3);
            } else {
                ttsItem = null;
            }
            if (ttsItem == null) {
                return;
            }
            int i4 = ttsItem.b;
            int i5 = i + i4;
            int i6 = i4 + i2;
            StringBuilder sb = new StringBuilder("(function(){var ele=document.getElementById('");
            sb.append(ttsItem.f15241a);
            sb.append("');setSelRange(ele,");
            sb.append(i5);
            sb.append(",");
            sb.append(i6);
            sb.append(");");
            if (z) {
                sb.append("var tag='onTtsMark';var val=0;var bcr=null;if(range){bcr=range.getBoundingClientRect();}else{bcr=ele.getBoundingClientRect();}if(bcr){val=bcr.top+','+bcr.bottom;}android.onJsResult(tag,val);");
            }
            sb.append("})();");
            MainUtil.J(this.e0, sb.toString(), true);
        }
    }

    public final void N(int i, boolean z) {
        if (this.f0 != null && this.c0 != null) {
            this.t0 = i;
            if (i == 1) {
                this.u0 = true;
            } else {
                this.u0 = false;
                K();
            }
            if (this.t0 != 1 || !z) {
                this.i.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewTrans.24
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogViewTrans dialogViewTrans = DialogViewTrans.this;
                        try {
                            if (!dialogViewTrans.u0) {
                                dialogViewTrans.F();
                            }
                            MyButtonImage myButtonImage = dialogViewTrans.f0;
                            if (myButtonImage != null) {
                                if (!dialogViewTrans.u0 && dialogViewTrans.S0) {
                                    myButtonImage.setVisibility(0);
                                }
                                MyButtonImage myButtonImage2 = dialogViewTrans.K0;
                                if (myButtonImage2 != null) {
                                    myButtonImage2.setLoad(false);
                                    dialogViewTrans.K0 = null;
                                }
                            }
                        } catch (Exception unused) {
                        }
                    }
                });
            }
        }
    }

    public final void O(boolean z) {
        if (this.e0 == null) {
            return;
        }
        K();
        this.u0 = true;
        this.v0 = 0;
        this.w0 = 0;
        ArrayList arrayList = null;
        if (z) {
            ArrayList arrayList2 = this.D0;
            if (arrayList2 != null && !arrayList2.isEmpty()) {
                arrayList = arrayList2;
            } else {
                this.t0 = 0;
                this.u0 = false;
                this.r0 = null;
                this.s0 = 0;
                N(0, false);
                return;
            }
        }
        this.i1 = arrayList;
        s(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewTrans.23
            /* JADX WARN: Code restructure failed: missing block: B:80:0x00a9, code lost:
            
                if (r5 >= r15) goto L68;
             */
            /* JADX WARN: Code restructure failed: missing block: B:81:0x00ab, code lost:
            
                r3 = r5;
             */
            /* JADX WARN: Code restructure failed: missing block: B:83:0x00b2, code lost:
            
                if (r10.startsWith(" ", r3) != false) goto L144;
             */
            /* JADX WARN: Code restructure failed: missing block: B:85:0x00b8, code lost:
            
                if (r10.startsWith("\n", r3) == false) goto L143;
             */
            /* JADX WARN: Code restructure failed: missing block: B:88:0x00c6, code lost:
            
                r3 = r3 + 1;
             */
            /* JADX WARN: Code restructure failed: missing block: B:90:0x00bb, code lost:
            
                if (r3 <= r14) goto L64;
             */
            /* JADX WARN: Code restructure failed: missing block: B:91:0x00bd, code lost:
            
                if (r3 >= r15) goto L64;
             */
            /* JADX WARN: Code restructure failed: missing block: B:92:0x00bf, code lost:
            
                r15 = r3;
             */
            /* JADX WARN: Code restructure failed: missing block: B:93:0x00c1, code lost:
            
                r15 = r5;
             */
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Removed duplicated region for block: B:16:0x0163  */
            /* JADX WARN: Removed duplicated region for block: B:19:0x016d  */
            /* JADX WARN: Removed duplicated region for block: B:28:0x01b2  */
            /* JADX WARN: Removed duplicated region for block: B:30:? A[RETURN, SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:31:0x017b A[Catch: Exception -> 0x00c3, TRY_ENTER, TryCatch #2 {Exception -> 0x00c3, blocks: (B:74:0x0074, B:76:0x007a, B:82:0x00ac, B:84:0x00b4, B:88:0x00c6, B:95:0x00cb, B:97:0x00d5, B:99:0x00df, B:101:0x00e9, B:110:0x007f, B:112:0x0087, B:115:0x008c, B:117:0x0094, B:120:0x0099, B:122:0x00a1, B:130:0x010a, B:132:0x0114, B:134:0x011e, B:8:0x0148, B:11:0x0150, B:14:0x0157, B:17:0x0167, B:31:0x017b, B:33:0x0183, B:34:0x0188, B:38:0x0192, B:48:0x0165, B:7:0x0142), top: B:4:0x0018 }] */
            /* JADX WARN: Removed duplicated region for block: B:48:0x0165 A[Catch: Exception -> 0x00c3, TryCatch #2 {Exception -> 0x00c3, blocks: (B:74:0x0074, B:76:0x007a, B:82:0x00ac, B:84:0x00b4, B:88:0x00c6, B:95:0x00cb, B:97:0x00d5, B:99:0x00df, B:101:0x00e9, B:110:0x007f, B:112:0x0087, B:115:0x008c, B:117:0x0094, B:120:0x0099, B:122:0x00a1, B:130:0x010a, B:132:0x0114, B:134:0x011e, B:8:0x0148, B:11:0x0150, B:14:0x0157, B:17:0x0167, B:31:0x017b, B:33:0x0183, B:34:0x0188, B:38:0x0192, B:48:0x0165, B:7:0x0142), top: B:4:0x0018 }] */
            /* JADX WARN: Type inference failed for: r3v2, types: [int, boolean] */
            /* JADX WARN: Type inference failed for: r3v26 */
            /* JADX WARN: Type inference failed for: r3v32 */
            /* JADX WARN: Type inference failed for: r4v13, types: [java.lang.Object, com.mycompany.app.dialog.DialogViewRead$TtsItem] */
            /* JADX WARN: Type inference failed for: r4v6, types: [java.lang.Object, com.mycompany.app.dialog.DialogViewRead$TtsItem] */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void run() {
                /*
                    Method dump skipped, instructions count: 443
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogViewTrans.AnonymousClass23.run():void");
            }
        });
    }

    public final void P() {
        K();
        this.t0 = 0;
        this.u0 = false;
        this.r0 = null;
        this.s0 = 0;
        this.v0 = 0;
        this.w0 = 0;
        try {
            TextToSpeech textToSpeech = this.m0;
            if (textToSpeech != null && textToSpeech.isSpeaking()) {
                this.m0.stop();
            }
            MyButtonImage myButtonImage = this.f0;
            if (myButtonImage != null) {
                if (!this.u0 && this.S0) {
                    myButtonImage.setVisibility(0);
                }
                MyButtonImage myButtonImage2 = this.K0;
                if (myButtonImage2 != null) {
                    myButtonImage2.setLoad(false);
                    this.K0 = null;
                }
            }
        } catch (Exception unused) {
        }
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.b0 == null) {
            return;
        }
        if (!TextUtils.isEmpty(this.a1) && !this.a1.equals(PrefAlbum.y)) {
            PrefAlbum.y = this.a1;
            PrefAlbum.z = this.b1;
            PrefAlbum.u(this.b0);
        }
        this.a1 = null;
        this.b1 = null;
        MainTransText mainTransText = this.Z0;
        if (mainTransText != null) {
            mainTransText.b();
            this.Z0 = null;
        }
        J();
        E();
        MyDialogLinear myDialogLinear = this.c0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.c0 = null;
        }
        WebNestView webNestView = this.e0;
        if (webNestView != null) {
            MainUtil.F(webNestView, true);
            this.e0 = null;
        }
        MyButtonImage myButtonImage = this.f0;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.f0 = null;
        }
        MyLineFrame myLineFrame = this.h0;
        if (myLineFrame != null) {
            myLineFrame.g();
            this.h0 = null;
        }
        WebTransControl webTransControl = this.i0;
        if (webTransControl != null) {
            webTransControl.c();
            this.i0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.d0 = null;
        this.g0 = null;
        this.j0 = null;
        this.k0 = null;
        this.C0 = null;
        this.D0 = null;
        this.Q0 = null;
        this.T0 = null;
        this.U0 = null;
        this.V0 = null;
        this.W0 = null;
        super.dismiss();
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog
    public final void onBackPressed() {
        if (e()) {
            return;
        }
        r();
    }

    @Override // com.mycompany.app.view.MyDialogBottom
    public final void r() {
        if (this.E0 != null) {
            P();
            F();
        } else {
            dismiss();
        }
    }

    /* loaded from: classes3.dex */
    public class LocalWebViewClient extends WebViewClient {
        public LocalWebViewClient() {
        }

        @Override // android.webkit.WebViewClient
        public final void onPageFinished(WebView webView, String str) {
            final DialogViewTrans dialogViewTrans = DialogViewTrans.this;
            WebNestView webNestView = dialogViewTrans.e0;
            if (webNestView == null) {
                return;
            }
            webNestView.setWebLoading(false);
            DialogViewTrans.B(dialogViewTrans, str);
            if (!dialogViewTrans.c1 && !TextUtils.isEmpty(str) && !str.equals(dialogViewTrans.d1)) {
                dialogViewTrans.c1 = true;
                dialogViewTrans.d1 = str;
                Handler handler = dialogViewTrans.i;
                if (handler != null) {
                    handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewTrans.8
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogViewTrans dialogViewTrans2 = DialogViewTrans.this;
                            MainUtil.l(dialogViewTrans2.e0);
                            dialogViewTrans2.c1 = false;
                        }
                    });
                }
            }
            dialogViewTrans.O0 = true;
            if (!TextUtils.isEmpty(dialogViewTrans.Q0)) {
                String str2 = dialogViewTrans.Q0;
                dialogViewTrans.O0 = false;
                dialogViewTrans.Q0 = null;
                MainUtil.J(dialogViewTrans.e0, str2, true);
            }
            if (!TextUtils.isEmpty(dialogViewTrans.C0)) {
                MainUtil.J(dialogViewTrans.e0, dialogViewTrans.C0, true);
            } else {
                dialogViewTrans.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewTrans.26
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogViewTrans dialogViewTrans2 = DialogViewTrans.this;
                        if (dialogViewTrans2.e0 != null) {
                            dialogViewTrans2.C0 = MainUtil.N2();
                            if (TextUtils.isEmpty(dialogViewTrans2.C0)) {
                                return;
                            }
                            MainUtil.J(dialogViewTrans2.e0, dialogViewTrans2.C0, true);
                        }
                    }
                });
            }
        }

        @Override // android.webkit.WebViewClient
        public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            DialogViewTrans dialogViewTrans = DialogViewTrans.this;
            WebNestView webNestView = dialogViewTrans.e0;
            if (webNestView == null) {
                return;
            }
            webNestView.setWebLoading(true);
            DialogViewTrans.B(dialogViewTrans, str);
        }

        @Override // android.webkit.WebViewClient
        public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            final DialogViewTrans dialogViewTrans = DialogViewTrans.this;
            dialogViewTrans.e0 = null;
            MainUtil.D(webView, renderProcessGoneDetail);
            Handler handler = dialogViewTrans.i;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewTrans.9
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogViewTrans.this.dismiss();
                    }
                });
                return true;
            }
            return true;
        }

        @Override // android.webkit.WebViewClient
        public final WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
            DialogViewTrans dialogViewTrans = DialogViewTrans.this;
            if (dialogViewTrans.e0 != null && webResourceRequest != null && webResourceRequest.getUrl() != null) {
                DialogViewTrans.B(dialogViewTrans, webResourceRequest.getUrl().toString());
            }
            return null;
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
            DialogViewTrans dialogViewTrans = DialogViewTrans.this;
            if (dialogViewTrans.e0 == null || TextUtils.isEmpty(str)) {
                return true;
            }
            DialogViewTrans.B(dialogViewTrans, str);
            dialogViewTrans.e0.z(str, null);
            return true;
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            DialogViewTrans dialogViewTrans = DialogViewTrans.this;
            if (dialogViewTrans.e0 != null && webResourceRequest != null && webResourceRequest.getUrl() != null) {
                String uri = webResourceRequest.getUrl().toString();
                if (TextUtils.isEmpty(uri)) {
                    return false;
                }
                DialogViewTrans.B(dialogViewTrans, uri);
            }
            return false;
        }
    }
}
