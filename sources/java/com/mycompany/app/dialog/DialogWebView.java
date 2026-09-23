package com.mycompany.app.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import android.view.GestureDetector;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.webkit.ConsoleMessage;
import android.webkit.DownloadListener;
import android.webkit.JavascriptInterface;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.URLUtil;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.data.DataTrans;
import com.mycompany.app.data.book.DataBookAds;
import com.mycompany.app.data.book.DataBookDc;
import com.mycompany.app.dialog.DialogGuideArea;
import com.mycompany.app.dialog.DialogTransLang;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefAlbum;
import com.mycompany.app.pref.PrefRead;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.pref.PrefSync;
import com.mycompany.app.pref.PrefWeb;
import com.mycompany.app.pref.PrefZone;
import com.mycompany.app.pref.PrefZtwo;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyAdFrame;
import com.mycompany.app.view.MyAdNative;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyCoverView;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogRelative;
import com.mycompany.app.view.MyEditPure;
import com.mycompany.app.view.MyLineFrame;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyPopupAdapter;
import com.mycompany.app.view.MyPopupMenu;
import com.mycompany.app.view.MyProgressBar;
import com.mycompany.app.view.MyRoundItem;
import com.mycompany.app.view.MyRoundView;
import com.mycompany.app.view.MyScrollBar;
import com.mycompany.app.view.MyScrollNavi;
import com.mycompany.app.view.MyTextFast;
import com.mycompany.app.web.WebClean;
import com.mycompany.app.web.WebNestView;
import com.mycompany.app.web.WebTransControl;
import com.mycompany.app.web.WebViewActivity;
import com.mycompany.app.wview.WebAreaView;
import com.mycompany.app.wview.WebUpView;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class DialogWebView extends MyDialogBottom {
    public static final /* synthetic */ int k2 = 0;
    public MyEditPure A0;
    public boolean A1;
    public MyButtonImage B0;
    public int B1;
    public FrameLayout C0;
    public boolean C1;
    public View D0;
    public String D1;
    public MyRoundView E0;
    public String E1;
    public MyEditPure F0;
    public String F1;
    public MyButtonImage G0;
    public int G1;
    public MyButtonImage H0;
    public int H1;
    public FrameLayout I0;
    public DialogTransLang I1;
    public WebNestView J0;
    public DialogTransLang.TransNotiListener J1;
    public MyProgressBar K0;
    public WebClean K1;
    public MyScrollBar L0;
    public WebAreaView L1;
    public WebUpView M0;
    public boolean M1;
    public MyScrollNavi N0;
    public String N1;
    public MyScrollNavi O0;
    public String O1;
    public MyLineText P0;
    public String P1;
    public MyLineText Q0;
    public DialogGuideArea Q1;
    public MyButtonImage R0;
    public DialogGuideArea R1;
    public GestureDetector S0;
    public DialogEditArea S1;
    public boolean T0;
    public boolean T1;
    public float U0;
    public List U1;
    public float V0;
    public String V1;
    public float W0;
    public String W1;
    public boolean X0;
    public boolean X1;
    public int Y0;
    public String Y1;
    public int Z0;
    public int Z1;
    public final int a0;
    public int a1;
    public final Runnable a2;
    public MainActivity b0;
    public boolean b1;
    public boolean b2;
    public Context c0;
    public int c1;
    public final Runnable c2;
    public DialogWebListener d0;
    public int d1;
    public String d2;
    public DialogWebDcListener e0;
    public boolean e1;
    public String e2;
    public final boolean f0;
    public MyPopupMenu f1;
    public WebTransControl f2;
    public final int g0;
    public boolean g1;
    public View g2;
    public boolean h0;
    public String h1;
    public boolean h2;
    public String i0;
    public String i1;
    public boolean i2;
    public String j0;
    public boolean j1;
    public String j2;
    public String k0;
    public boolean k1;
    public String l0;
    public String l1;
    public boolean m0;
    public String m1;
    public String n0;
    public boolean n1;
    public MyDialogRelative o0;
    public boolean o1;
    public boolean p0;
    public int p1;
    public MyAdFrame q0;
    public int q1;
    public MyAdNative r0;
    public String r1;
    public boolean s0;
    public MyTextFast s1;
    public boolean t0;
    public MyButtonImage t1;
    public boolean u0;
    public MyButtonImage u1;
    public MyRoundItem v0;
    public MyButtonImage v1;
    public LinearLayout w0;
    public MyCoverView w1;
    public MyRoundView x0;
    public View x1;
    public MyRoundView y0;
    public WebTransControl y1;
    public MyEditPure z0;
    public FrameLayout z1;

    /* renamed from: com.mycompany.app.dialog.DialogWebView$27, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass27 implements Runnable {

        /* renamed from: com.mycompany.app.dialog.DialogWebView$27$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 implements Runnable {

            /* renamed from: com.mycompany.app.dialog.DialogWebView$27$1$1, reason: invalid class name and collision with other inner class name */
            /* loaded from: classes3.dex */
            class RunnableC01201 implements Runnable {

                /* renamed from: com.mycompany.app.dialog.DialogWebView$27$1$1$1, reason: invalid class name and collision with other inner class name */
                /* loaded from: classes3.dex */
                class RunnableC01211 implements Runnable {
                    public RunnableC01211() {
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                        DialogWebView dialogWebView = DialogWebView.this;
                        WebNestView webNestView = dialogWebView.J0;
                        if (webNestView != null) {
                            dialogWebView.g1 = true;
                            webNestView.addJavascriptInterface(new WebAppInterface(), "android");
                            Handler handler = DialogWebView.this.i;
                            if (handler == null) {
                                return;
                            }
                            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebView.27.1.1.1.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    Handler handler2;
                                    Context context;
                                    RunnableC01201 runnableC01201 = RunnableC01201.this;
                                    final DialogWebView dialogWebView2 = DialogWebView.this;
                                    if (dialogWebView2.J0 != null) {
                                        if (dialogWebView2.j1 && dialogWebView2.I0 != null && (context = dialogWebView2.c0) != null) {
                                            MyTextFast myTextFast = new MyTextFast(context);
                                            MainUtil.n7(myTextFast);
                                            myTextFast.setPadding(MainApp.F1, MainApp.G1, MainApp.F1, MainApp.G1);
                                            myTextFast.setTextDirection(3);
                                            myTextFast.setTextSize(1, 16.0f);
                                            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
                                            layoutParams.gravity = 8388693;
                                            layoutParams.bottomMargin = (MainApp.g1 * 2) + MainApp.F1;
                                            layoutParams.setMarginEnd(MainApp.F1);
                                            dialogWebView2.I0.addView(myTextFast, layoutParams);
                                            MyButtonImage myButtonImage = new MyButtonImage(context);
                                            ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_INSIDE;
                                            myButtonImage.setScaleType(scaleType);
                                            myButtonImage.l(MainApp.j1, true);
                                            myButtonImage.setBgPreRadius(MainApp.k1);
                                            int i = MainApp.g1;
                                            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(i, i);
                                            layoutParams2.gravity = 8388693;
                                            layoutParams2.bottomMargin = MainApp.F1 + MainApp.g1;
                                            layoutParams2.setMarginEnd(MainApp.F1);
                                            dialogWebView2.I0.addView(myButtonImage, layoutParams2);
                                            MyButtonImage myButtonImage2 = new MyButtonImage(context);
                                            myButtonImage2.setScaleType(scaleType);
                                            myButtonImage2.l(MainApp.j1, true);
                                            myButtonImage2.setBgPreRadius(MainApp.k1);
                                            int i2 = MainApp.g1;
                                            FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(i2, i2);
                                            layoutParams3.gravity = 8388693;
                                            int i3 = MainApp.F1;
                                            layoutParams3.bottomMargin = i3;
                                            layoutParams3.setMarginEnd(i3);
                                            dialogWebView2.I0.addView(myButtonImage2, layoutParams3);
                                            dialogWebView2.s1 = myTextFast;
                                            dialogWebView2.t1 = myButtonImage;
                                            dialogWebView2.u1 = myButtonImage2;
                                            dialogWebView2.g0(false);
                                            MyTextFast myTextFast2 = dialogWebView2.s1;
                                            if (myTextFast2 != null) {
                                                if (MainApp.K1) {
                                                    myTextFast2.setBackgroundColor(-16777216);
                                                    dialogWebView2.s1.setTextColor(-328966);
                                                    dialogWebView2.t1.setImageResource(R.drawable.outline_keyboard_arrow_up_dark_24);
                                                    dialogWebView2.u1.setImageResource(R.drawable.outline_keyboard_arrow_down_dark_24);
                                                    dialogWebView2.t1.setBgPreColor(-12632257);
                                                    dialogWebView2.u1.setBgPreColor(-12632257);
                                                    dialogWebView2.t1.setBgNorColor(-16777216);
                                                    dialogWebView2.u1.setBgNorColor(-16777216);
                                                    dialogWebView2.t1.m(-5197648, MainApp.n1);
                                                    dialogWebView2.u1.m(-5197648, MainApp.n1);
                                                } else {
                                                    myTextFast2.setBackgroundColor(-460552);
                                                    dialogWebView2.s1.setTextColor(-16777216);
                                                    dialogWebView2.t1.setImageResource(R.drawable.outline_keyboard_arrow_up_black_24);
                                                    dialogWebView2.u1.setImageResource(R.drawable.outline_keyboard_arrow_down_black_24);
                                                    dialogWebView2.t1.setBgPreColor(-2039584);
                                                    dialogWebView2.u1.setBgPreColor(-2039584);
                                                    dialogWebView2.t1.setBgNorColor(-1);
                                                    dialogWebView2.u1.setBgNorColor(-1);
                                                    dialogWebView2.t1.m(-16777216, MainApp.n1);
                                                    dialogWebView2.u1.m(-16777216, MainApp.n1);
                                                }
                                            }
                                            dialogWebView2.t1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogWebView.22
                                                @Override // android.view.View.OnClickListener
                                                public final void onClick(View view) {
                                                    boolean z = PrefZtwo.e0;
                                                    DialogWebView dialogWebView3 = DialogWebView.this;
                                                    if (z) {
                                                        PrefZtwo.e0 = false;
                                                        PrefSet.d(16, dialogWebView3.c0, "mNotiMenu", false);
                                                        dialogWebView3.c0(false);
                                                    }
                                                    dialogWebView3.o1 = true;
                                                    WebNestView webNestView2 = dialogWebView3.J0;
                                                    if (webNestView2 != null) {
                                                        webNestView2.findNext(false);
                                                    }
                                                }
                                            });
                                            dialogWebView2.u1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogWebView.23
                                                @Override // android.view.View.OnClickListener
                                                public final void onClick(View view) {
                                                    boolean z = PrefZtwo.e0;
                                                    DialogWebView dialogWebView3 = DialogWebView.this;
                                                    if (z) {
                                                        PrefZtwo.e0 = false;
                                                        PrefSet.d(16, dialogWebView3.c0, "mNotiMenu", false);
                                                        dialogWebView3.c0(false);
                                                    }
                                                    dialogWebView3.o1 = true;
                                                    WebNestView webNestView2 = dialogWebView3.J0;
                                                    if (webNestView2 != null) {
                                                        webNestView2.findNext(true);
                                                    }
                                                }
                                            });
                                            dialogWebView2.J0.setFindListener(new WebView.FindListener() { // from class: com.mycompany.app.dialog.DialogWebView.24
                                                @Override // android.webkit.WebView.FindListener
                                                public final void onFindResultReceived(int i4, int i5, boolean z) {
                                                    Handler handler3;
                                                    String str;
                                                    int length;
                                                    if (z) {
                                                        final DialogWebView dialogWebView3 = DialogWebView.this;
                                                        if (dialogWebView3.s1 != null) {
                                                            if (i5 == 0) {
                                                                if (dialogWebView3.n1 && dialogWebView3.J0 != null) {
                                                                    if (dialogWebView3.k1) {
                                                                        dialogWebView3.K();
                                                                        return;
                                                                    }
                                                                    if (dialogWebView3.T() && (str = dialogWebView3.m1) != null && (length = str.length()) != 0) {
                                                                        int i6 = dialogWebView3.q1;
                                                                        if (length - i6 < 4) {
                                                                            dialogWebView3.K();
                                                                            return;
                                                                        }
                                                                        int i7 = i6 + 1;
                                                                        dialogWebView3.q1 = i7;
                                                                        String substring = dialogWebView3.m1.substring(0, length - i7);
                                                                        dialogWebView3.r1 = substring;
                                                                        dialogWebView3.J0.findAllAsync(substring);
                                                                        return;
                                                                    }
                                                                    return;
                                                                }
                                                                return;
                                                            }
                                                            dialogWebView3.s1.setText((i4 + 1) + " / " + i5);
                                                            dialogWebView3.s1.setAlpha(1.0f);
                                                            dialogWebView3.t1.setEnabled(true);
                                                            dialogWebView3.u1.setEnabled(true);
                                                            if (PrefZtwo.e0) {
                                                                dialogWebView3.c0(true);
                                                            }
                                                            dialogWebView3.g0(true);
                                                            int i8 = dialogWebView3.p1;
                                                            if (i8 < 4) {
                                                                dialogWebView3.p1 = i8 + 1;
                                                                if (dialogWebView3.n1 && !dialogWebView3.o1 && dialogWebView3.J0 != null && (handler3 = dialogWebView3.i) != null) {
                                                                    handler3.postDelayed(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebView.26
                                                                        @Override // java.lang.Runnable
                                                                        public final void run() {
                                                                            WebNestView webNestView2;
                                                                            DialogWebView dialogWebView4 = DialogWebView.this;
                                                                            if (dialogWebView4.n1 && !dialogWebView4.o1 && (webNestView2 = dialogWebView4.J0) != null) {
                                                                                webNestView2.clearMatches();
                                                                                Handler handler4 = dialogWebView4.i;
                                                                                if (handler4 != null) {
                                                                                    handler4.postDelayed(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebView.26.1
                                                                                        @Override // java.lang.Runnable
                                                                                        public final void run() {
                                                                                            DialogWebView dialogWebView5 = DialogWebView.this;
                                                                                            if (dialogWebView5.n1 && dialogWebView5.J0 != null && dialogWebView5.T()) {
                                                                                                if (!TextUtils.isEmpty(dialogWebView5.r1)) {
                                                                                                    dialogWebView5.J0.findAllAsync(dialogWebView5.r1);
                                                                                                } else {
                                                                                                    dialogWebView5.J0.findAllAsync(dialogWebView5.m1);
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }, 400L);
                                                                                }
                                                                            }
                                                                        }
                                                                    }, 400L);
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            });
                                        }
                                        DialogWebView dialogWebView3 = DialogWebView.this;
                                        dialogWebView3.J0.z(dialogWebView3.i0, dialogWebView3.k0);
                                        DialogWebView.this.f0(0);
                                        DialogWebView dialogWebView4 = DialogWebView.this;
                                        if (!dialogWebView4.t0) {
                                            dialogWebView4.t0 = true;
                                            DialogWebView.H(dialogWebView4);
                                        }
                                        if (PrefZone.y == 0 || (handler2 = DialogWebView.this.i) == null) {
                                            return;
                                        }
                                        handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebView.27.1.1.1.1.1
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                int i4;
                                                int i5;
                                                int i6;
                                                final DialogWebView dialogWebView5 = DialogWebView.this;
                                                if (dialogWebView5.J0 != null && dialogWebView5.M0 == null && dialogWebView5.I0 != null) {
                                                    int i7 = PrefZone.y;
                                                    if (i7 == 1) {
                                                        i6 = MainApp.G1;
                                                        i4 = 83;
                                                        i5 = 0;
                                                    } else if (i7 == 2) {
                                                        i4 = 81;
                                                        i6 = 0;
                                                        i5 = 0;
                                                    } else if (i7 == 3) {
                                                        i4 = 85;
                                                        i5 = MainApp.G1;
                                                        i6 = 0;
                                                    } else {
                                                        return;
                                                    }
                                                    int i8 = MainApp.g1;
                                                    FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(i8, i8);
                                                    layoutParams4.bottomMargin = MainApp.F1;
                                                    layoutParams4.gravity = i4;
                                                    layoutParams4.leftMargin = i6;
                                                    layoutParams4.rightMargin = i5;
                                                    try {
                                                        WebUpView webUpView = new WebUpView(dialogWebView5.c0);
                                                        dialogWebView5.M0 = webUpView;
                                                        webUpView.setVisibility(8);
                                                        dialogWebView5.M0.setBgColors(false);
                                                        WebUpView webUpView2 = dialogWebView5.M0;
                                                        WebUpView.UpViewListener upViewListener = new WebUpView.UpViewListener() { // from class: com.mycompany.app.dialog.DialogWebView.28
                                                            @Override // com.mycompany.app.wview.WebUpView.UpViewListener
                                                            public final void a() {
                                                                DialogWebView dialogWebView6 = DialogWebView.this;
                                                                WebNestView webNestView2 = dialogWebView6.J0;
                                                                if (webNestView2 != null && !webNestView2.y()) {
                                                                    if (PrefZtwo.D) {
                                                                        dialogWebView6.J0.pageUp(true);
                                                                    } else if (dialogWebView6.J0.getScrollY() > 0) {
                                                                        dialogWebView6.J0.scrollTo(0, 0);
                                                                    }
                                                                }
                                                            }

                                                            @Override // com.mycompany.app.wview.WebUpView.UpViewListener
                                                            public final void b() {
                                                            }
                                                        };
                                                        webUpView2.h = false;
                                                        webUpView2.g = upViewListener;
                                                        dialogWebView5.I0.addView(webUpView2, layoutParams4);
                                                    } catch (Exception unused) {
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

                public RunnableC01201() {
                }

                @Override // java.lang.Runnable
                public final void run() {
                    AnonymousClass27 anonymousClass27 = AnonymousClass27.this;
                    final DialogWebView dialogWebView = DialogWebView.this;
                    WebNestView webNestView = dialogWebView.J0;
                    if (webNestView != null) {
                        webNestView.setWebViewClient(new LocalWebViewClient());
                        webNestView.setWebChromeClient(new LocalChromeClient());
                        webNestView.setListener(new WebNestView.WebViewListener() { // from class: com.mycompany.app.dialog.DialogWebView.29
                            @Override // com.mycompany.app.web.WebNestView.WebViewListener
                            public final void a(int i) {
                            }

                            @Override // com.mycompany.app.web.WebNestView.WebViewListener
                            public final void b() {
                            }

                            @Override // com.mycompany.app.web.WebNestView.WebViewListener
                            public final void c(int i) {
                                boolean z;
                                int height;
                                if (i < 1) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                DialogWebView dialogWebView2 = DialogWebView.this;
                                dialogWebView2.y(z);
                                DialogWebView.D(dialogWebView2);
                                int i2 = dialogWebView2.G1;
                                View view = dialogWebView2.x1;
                                if (view != null && view.getVisibility() == 0 && (height = dialogWebView2.x1.getHeight()) != 0) {
                                    int i3 = (i - i2) + dialogWebView2.H1;
                                    dialogWebView2.H1 = i3;
                                    if (i3 > height) {
                                        dialogWebView2.H1 = height;
                                    } else if (i3 < 0) {
                                        dialogWebView2.H1 = 0;
                                    }
                                    dialogWebView2.x1.setAlpha(1.0f - (dialogWebView2.H1 / height));
                                    dialogWebView2.x1.setTranslationY(dialogWebView2.H1);
                                }
                                dialogWebView2.G1 = i;
                                Runnable runnable = dialogWebView2.c2;
                                MyScrollBar myScrollBar = dialogWebView2.L0;
                                if (myScrollBar == null || dialogWebView2.b2) {
                                    return;
                                }
                                dialogWebView2.b2 = true;
                                myScrollBar.removeCallbacks(runnable);
                                dialogWebView2.L0.post(runnable);
                            }

                            @Override // com.mycompany.app.web.WebNestView.WebViewListener
                            public final boolean d() {
                                return false;
                            }

                            @Override // com.mycompany.app.web.WebNestView.WebViewListener
                            public final void e() {
                            }

                            @Override // com.mycompany.app.web.WebNestView.WebViewListener
                            public final void f(int i) {
                            }

                            @Override // com.mycompany.app.web.WebNestView.WebViewListener
                            public final boolean g(float f, float f2, int i) {
                                return false;
                            }

                            @Override // com.mycompany.app.web.WebNestView.WebViewListener
                            public final void h(String str) {
                            }
                        });
                        webNestView.setDownloadListener(new DownloadListener() { // from class: com.mycompany.app.dialog.DialogWebView.30
                            @Override // android.webkit.DownloadListener
                            public final void onDownloadStart(String str, String str2, String str3, String str4, long j) {
                                DialogWebListener dialogWebListener = DialogWebView.this.d0;
                                if (dialogWebListener != null) {
                                    dialogWebListener.c(str, str3, str4, j);
                                }
                            }
                        });
                        Handler handler = DialogWebView.this.i;
                        if (handler == null) {
                            return;
                        }
                        handler.post(new RunnableC01211());
                    }
                }
            }

            public AnonymousClass1() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                DialogWebView dialogWebView = DialogWebView.this;
                WebNestView webNestView = dialogWebView.J0;
                if (webNestView != null) {
                    MainUtil.X7(webNestView.getSettings(), MainApp.L1);
                    Handler handler = dialogWebView.i;
                    if (handler == null) {
                        return;
                    }
                    handler.post(new RunnableC01201());
                }
            }
        }

        public AnonymousClass27() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            DialogWebView dialogWebView = DialogWebView.this;
            WebNestView webNestView = dialogWebView.J0;
            if (webNestView != null) {
                int i = PrefZone.w;
                if (i < 50 || i > 500) {
                    PrefZone.w = 100;
                }
                WebSettings settings = webNestView.getSettings();
                settings.setTextZoom(PrefZone.w);
                settings.setSupportZoom(true);
                settings.setBuiltInZoomControls(true);
                settings.setDisplayZoomControls(false);
                settings.setUseWideViewPort(true);
                settings.setLoadWithOverviewMode(true);
                settings.setDomStorageEnabled(true);
                settings.setJavaScriptCanOpenWindowsAutomatically(false);
                settings.setSupportMultipleWindows(false);
                settings.setMediaPlaybackRequiresUserGesture(false);
                settings.setDatabaseEnabled(true);
                settings.setMixedContentMode(0);
                if (Build.VERSION.SDK_INT < 30) {
                    settings.setAllowFileAccessFromFileURLs(true);
                    settings.setAllowUniversalAccessFromFileURLs(true);
                }
                settings.setAllowFileAccess(true);
                if (PrefZone.u) {
                    settings.setLoadsImagesAutomatically(false);
                }
                if (webNestView.C) {
                    MainUtil.Q7(settings, MainUtil.F0(dialogWebView.c0));
                } else {
                    webNestView.K(dialogWebView.c0, PrefZtwo.p, settings);
                }
                webNestView.setEnableJs(PrefWeb.H);
                webNestView.setViewCookie(dialogWebView.c0);
                webNestView.setOverScrollMode(2);
                Handler handler = dialogWebView.i;
                if (handler == null) {
                    return;
                }
                handler.post(new AnonymousClass1());
            }
        }
    }

    /* renamed from: com.mycompany.app.dialog.DialogWebView$44, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass44 implements Runnable {

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ String f15530c;

        public AnonymousClass44(String str) {
            this.f15530c = str;
        }

        @Override // java.lang.Runnable
        public final void run() {
            MainUtil.M7(DialogWebView.this.J0, this.f15530c);
        }
    }

    /* renamed from: com.mycompany.app.dialog.DialogWebView$56, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass56 implements Runnable {
        public AnonymousClass56() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            DialogWebView dialogWebView = DialogWebView.this;
            if (dialogWebView.L1 != null) {
                String A2 = MainUtil.A2(false);
                if (!TextUtils.isEmpty(A2) && dialogWebView.L1 != null) {
                    MainUtil.I(dialogWebView.J0, A2, true);
                }
            }
            MyDialogRelative myDialogRelative = dialogWebView.o0;
            if (myDialogRelative == null) {
                return;
            }
            myDialogRelative.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebView.56.1
                @Override // java.lang.Runnable
                public final void run() {
                    WebNestView webNestView;
                    final DialogWebView dialogWebView2 = DialogWebView.this;
                    if (dialogWebView2.L1 != null && (webNestView = dialogWebView2.J0) != null) {
                        webNestView.setOnTouchListener(new View.OnTouchListener() { // from class: com.mycompany.app.dialog.DialogWebView.57
                            @Override // android.view.View.OnTouchListener
                            public final boolean onTouch(View view, MotionEvent motionEvent) {
                                int actionMasked = motionEvent.getActionMasked();
                                final DialogWebView dialogWebView3 = DialogWebView.this;
                                if (actionMasked != 0) {
                                    if (actionMasked == 1 && dialogWebView3.L1 != null) {
                                        dialogWebView3.M1 = false;
                                        MyDialogRelative myDialogRelative2 = dialogWebView3.o0;
                                        if (myDialogRelative2 != null) {
                                            myDialogRelative2.postDelayed(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebView.58
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    DialogWebView dialogWebView4 = DialogWebView.this;
                                                    if (dialogWebView4.L1 != null && !dialogWebView4.M1) {
                                                        if (TextUtils.isEmpty(dialogWebView4.N1)) {
                                                            String C2 = MainUtil.C2();
                                                            dialogWebView4.N1 = C2;
                                                            if (TextUtils.isEmpty(C2)) {
                                                                return;
                                                            }
                                                        }
                                                        MainUtil.I(dialogWebView4.J0, dialogWebView4.N1, true);
                                                    }
                                                }
                                            }, 200L);
                                            return false;
                                        }
                                    }
                                } else if (dialogWebView3.L1 != null) {
                                    dialogWebView3.M1 = true;
                                    MainUtil.I(dialogWebView3.J0, "window.sbtouch=true;", true);
                                    return false;
                                }
                                return false;
                            }
                        });
                    }
                    dialogWebView2.i2 = false;
                }
            });
        }
    }

    /* loaded from: classes3.dex */
    public interface DialogWebDcListener {
        String a(String str, List list);
    }

    /* loaded from: classes3.dex */
    public interface DialogWebListener {
        void a(int i, String str, String str2);

        void b();

        void c(String str, String str2, String str3, long j);

        void d(WebNestView webNestView, String str);

        void e();

        void f();
    }

    /* loaded from: classes3.dex */
    public class LocalChromeClient extends WebChromeClient {
        public LocalChromeClient() {
        }

        @Override // android.webkit.WebChromeClient
        public final boolean onConsoleMessage(ConsoleMessage consoleMessage) {
            int indexOf;
            DialogWebView dialogWebView = DialogWebView.this;
            if (dialogWebView.L1 != null && consoleMessage != null) {
                String message = consoleMessage.message();
                if (!TextUtils.isEmpty(message) && message.startsWith("Uncaught") && message.indexOf("borderRadius", 8) != -1) {
                    if (dialogWebView.L1 != null && !dialogWebView.i2) {
                        dialogWebView.i2 = true;
                        dialogWebView.s(new AnonymousClass56());
                    }
                    return super.onConsoleMessage(consoleMessage);
                }
            }
            if (dialogWebView.A1 && consoleMessage != null) {
                String message2 = consoleMessage.message();
                if (!TextUtils.isEmpty(message2) && (indexOf = message2.indexOf("Refused to load the s")) != -1) {
                    int i = indexOf + 21;
                    if ((message2.startsWith("cript", i) || message2.startsWith("tylesheet", i)) && message2.indexOf("https://translate.google", indexOf + 27) != -1) {
                        dialogWebView.B1 = 2;
                        dialogWebView.C1 = false;
                        dialogWebView.D1 = null;
                        dialogWebView.E1 = null;
                        dialogWebView.Q();
                    }
                }
            }
            return super.onConsoleMessage(consoleMessage);
        }

        @Override // android.webkit.WebChromeClient
        public final boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
            DialogWebListener dialogWebListener;
            if (jsResult == null) {
                return false;
            }
            DialogWebView dialogWebView = DialogWebView.this;
            if (dialogWebView.L1 != null) {
                jsResult.cancel();
                return true;
            }
            dialogWebView.getClass();
            if (!TextUtils.isEmpty(str2) && str2.startsWith("sb:")) {
                if (str2.equals("sb:ads_preview")) {
                    WebNestView webNestView = dialogWebView.J0;
                    if (webNestView != null) {
                        dialogWebView.l0 = dialogWebView.i0;
                        dialogWebView.m0 = true;
                        webNestView.F();
                        jsResult.confirm();
                        return true;
                    }
                } else if (str2.equals("sb:ads_open")) {
                    WebNestView webNestView2 = dialogWebView.J0;
                    if (webNestView2 != null) {
                        dialogWebView.l0 = dialogWebView.i0;
                        dialogWebView.m0 = true;
                        webNestView2.F();
                        jsResult.confirm();
                        return true;
                    }
                } else if (str2.equals("sb:link_setting") && (dialogWebListener = dialogWebView.d0) != null) {
                    dialogWebListener.a(11, dialogWebView.i0, null);
                    jsResult.confirm();
                    return true;
                }
            }
            return false;
        }

        @Override // android.webkit.WebChromeClient
        public final boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
            if (jsResult == null) {
                return false;
            }
            if (DialogWebView.this.L1 != null) {
                jsResult.cancel();
                return true;
            }
            return super.onJsConfirm(webView, str, str2, jsResult);
        }

        @Override // android.webkit.WebChromeClient
        public final boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
            if (jsPromptResult == null) {
                return false;
            }
            if (DialogWebView.this.L1 != null) {
                jsPromptResult.cancel();
                return true;
            }
            return super.onJsPrompt(webView, str, str2, str3, jsPromptResult);
        }

        @Override // android.webkit.WebChromeClient
        public final void onProgressChanged(WebView webView, int i) {
            DialogWebView dialogWebView = DialogWebView.this;
            if (dialogWebView.J0 == null) {
                return;
            }
            dialogWebView.f0(i);
        }
    }

    /* loaded from: classes3.dex */
    public class WebAppInterface {
        public WebAppInterface() {
        }

        @JavascriptInterface
        public void onDcList(String str, String str2) {
            if (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2)) {
                return;
            }
            DialogWebView dialogWebView = DialogWebView.this;
            dialogWebView.U1 = DataBookDc.k(dialogWebView.c0).f12906c;
            dialogWebView.V1 = str;
            dialogWebView.W1 = str2;
            dialogWebView.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebView.WebAppInterface.2
                @Override // java.lang.Runnable
                public final void run() {
                    ArrayList arrayList;
                    ArrayList arrayList2;
                    ArrayList arrayList3;
                    String[] split2;
                    String[] split3;
                    DialogWebView dialogWebView2 = DialogWebView.this;
                    List list = dialogWebView2.U1;
                    String str3 = dialogWebView2.V1;
                    String str4 = dialogWebView2.W1;
                    ArrayList arrayList4 = null;
                    dialogWebView2.U1 = null;
                    dialogWebView2.V1 = null;
                    dialogWebView2.W1 = null;
                    if (!TextUtils.isEmpty(str3) && (split3 = str3.split("/")) != null && split3.length > 0) {
                        arrayList = null;
                        arrayList2 = null;
                        for (String str5 : split3) {
                            if (!TextUtils.isEmpty(str5)) {
                                DialogWebDcListener dialogWebDcListener = dialogWebView2.e0;
                                if (dialogWebDcListener != null) {
                                    String a2 = dialogWebDcListener.a(str5, list);
                                    if (!TextUtils.isEmpty(a2)) {
                                        if (arrayList == null) {
                                            arrayList = new ArrayList();
                                        }
                                        if (arrayList2 == null) {
                                            arrayList2 = new ArrayList();
                                        }
                                        arrayList.add(str5);
                                        arrayList2.add(a2);
                                    }
                                } else {
                                    return;
                                }
                            }
                        }
                    } else {
                        arrayList = null;
                        arrayList2 = null;
                    }
                    if (!TextUtils.isEmpty(str4) && (split2 = str4.split("/")) != null && split2.length > 0) {
                        ArrayList arrayList5 = null;
                        arrayList3 = null;
                        for (String str6 : split2) {
                            if (!TextUtils.isEmpty(str6)) {
                                DialogWebDcListener dialogWebDcListener2 = dialogWebView2.e0;
                                if (dialogWebDcListener2 != null) {
                                    String a3 = dialogWebDcListener2.a(str6, null);
                                    if (!TextUtils.isEmpty(a3)) {
                                        if (arrayList5 == null) {
                                            arrayList5 = new ArrayList();
                                        }
                                        if (arrayList3 == null) {
                                            arrayList3 = new ArrayList();
                                        }
                                        arrayList5.add(str6);
                                        arrayList3.add(a3);
                                    }
                                } else {
                                    return;
                                }
                            }
                        }
                        arrayList4 = arrayList5;
                    } else {
                        arrayList3 = null;
                    }
                    if ((arrayList == null && arrayList4 == null) || dialogWebView2.J0 == null) {
                        return;
                    }
                    StringBuilder sb = new StringBuilder();
                    if (arrayList != null) {
                        sb.append("function myDcMem(btn,path,text){if(!btn)return null;if(btn.alt==path){btn.innerHTML=text;btn.style.fontSize='13px';}}");
                    }
                    if (arrayList4 != null) {
                        sb.append("function myDcMe2(cld,path,text){if(!cld)return null;for(var i=0;i<cld.childNodes.length;i++){var btn=cld.childNodes[i];var dat=btn.innerHTML;if(dat==path){btn.innerHTML+=' '+text;break;}}}");
                    }
                    sb.append("(function(){");
                    if (arrayList != null) {
                        sb.append("var els=document.querySelectorAll(\"[id='sb_btn_dc']\");if(els&&(els.length>0)){for(var i=0;i<els.length;i++){");
                        int size = arrayList.size();
                        for (int i = 0; i < size; i++) {
                            sb.append("myDcMem(els[i],'");
                            sb.append((String) arrayList.get(i));
                            sb.append("','");
                            sb.append((String) arrayList2.get(i));
                            sb.append("');");
                        }
                        sb.append("}}");
                    }
                    if (arrayList4 != null) {
                        sb.append("var el2=document.querySelectorAll(\"ul[class='ginfo'],ul[class='ginfo ']\");if(el2&&(el2.length>0)){for(var i=0;i<el2.length;i++){");
                        int size2 = arrayList4.size();
                        for (int i2 = 0; i2 < size2; i2++) {
                            sb.append("myDcMe2(el2[i],'");
                            sb.append((String) arrayList4.get(i2));
                            sb.append("','");
                            sb.append((String) arrayList3.get(i2));
                            sb.append("');");
                        }
                        sb.append("}}");
                    }
                    sb.append("})();");
                    MainUtil.I(dialogWebView2.J0, sb.toString(), true);
                }
            });
        }

        @JavascriptInterface
        public void onJsResult(String str, String str2) {
            if (!TextUtils.isEmpty(str)) {
                boolean equals = str.equals("onTransUser");
                final DialogWebView dialogWebView = DialogWebView.this;
                if (equals) {
                    int i = DialogWebView.k2;
                    if ("1".equals(str2)) {
                        dialogWebView.B1 = 2;
                        dialogWebView.C1 = false;
                        dialogWebView.D1 = null;
                        dialogWebView.E1 = null;
                        dialogWebView.Q();
                        return;
                    }
                    final boolean equals2 = "2".equals(str2);
                    MyCoverView myCoverView = dialogWebView.w1;
                    if (myCoverView != null) {
                        myCoverView.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebView.38
                            @Override // java.lang.Runnable
                            public final void run() {
                                MyCoverView myCoverView2 = DialogWebView.this.w1;
                                if (myCoverView2 == null) {
                                    return;
                                }
                                myCoverView2.setVisibility(0);
                            }
                        });
                    }
                    dialogWebView.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebView.40
                        @Override // java.lang.Runnable
                        public final void run() {
                            String str3;
                            int i2 = DialogWebView.k2;
                            DialogWebView dialogWebView2 = DialogWebView.this;
                            dialogWebView2.getClass();
                            StringBuilder N3 = MainUtil.N3();
                            if (N3 != null) {
                                if (equals2) {
                                    str3 = N3.toString();
                                } else {
                                    String M2 = MainUtil.M2(dialogWebView2.F1);
                                    if (!TextUtils.isEmpty(M2)) {
                                        N3.insert(0, M2);
                                        str3 = N3.toString();
                                    }
                                }
                                MainUtil.I(dialogWebView2.J0, str3, true);
                            }
                            str3 = null;
                            MainUtil.I(dialogWebView2.J0, str3, true);
                        }
                    });
                    return;
                }
                if (str.equals("onTransList")) {
                    if (dialogWebView.J0 != null && !TextUtils.isEmpty(str2)) {
                        dialogWebView.d2 = str2;
                        dialogWebView.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebView.42
                            @Override // java.lang.Runnable
                            public final void run() {
                                DialogWebView dialogWebView2 = DialogWebView.this;
                                String str3 = dialogWebView2.d2;
                                dialogWebView2.d2 = null;
                                if (dialogWebView2.J0 == null) {
                                    return;
                                }
                                MainUtil.P7(dialogWebView2.c0, str3);
                            }
                        });
                        return;
                    }
                    return;
                }
                if (str.equals("onTransClass") && dialogWebView.J0 != null) {
                    if ("0".equals(str2)) {
                        dialogWebView.F1 = "-";
                        return;
                    }
                    if (TextUtils.isEmpty(str2)) {
                        dialogWebView.F1 = "-";
                    } else if (TextUtils.isEmpty(dialogWebView.F1)) {
                        dialogWebView.e2 = str2;
                        dialogWebView.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebView.43
                            @Override // java.lang.Runnable
                            public final void run() {
                                DialogWebView dialogWebView2 = DialogWebView.this;
                                String str3 = dialogWebView2.e2;
                                dialogWebView2.e2 = null;
                                if (dialogWebView2.J0 != null && TextUtils.isEmpty(dialogWebView2.F1)) {
                                    dialogWebView2.F1 = MainUtil.K3(str3);
                                    String str4 = dialogWebView2.F1;
                                    if (str4 != null && str4.length() > 2) {
                                        MainUtil.Z4(dialogWebView2.J0, str4);
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
            DialogWebView dialogWebView = DialogWebView.this;
            if (i == 0) {
                dialogWebView.B1 = 1;
            } else {
                dialogWebView.B1 = 3;
                if (i != 2) {
                    z = false;
                }
                dialogWebView.C1 = z;
                dialogWebView.D1 = str;
                if (TextUtils.isEmpty(PrefAlbum.y)) {
                    PrefAlbum.y = str;
                    PrefAlbum.z = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                    PrefAlbum.u(dialogWebView.c0);
                }
                if (MainUtil.q5(dialogWebView.E1, str)) {
                    dialogWebView.E1 = null;
                }
            }
            Handler handler = dialogWebView.i;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebView.WebAppInterface.1
                @Override // java.lang.Runnable
                public final void run() {
                    WebNestView webNestView;
                    View view;
                    FrameLayout.LayoutParams layoutParams;
                    final DialogWebView dialogWebView2 = DialogWebView.this;
                    if (dialogWebView2.c0 != null) {
                        dialogWebView2.Q();
                        if (dialogWebView2.o0 != null && (view = dialogWebView2.x1) != null) {
                            if (PrefZone.y == 3 && (layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams()) != null) {
                                layoutParams.gravity = 83;
                            }
                            View view2 = dialogWebView2.x1;
                            if (view2 != null) {
                                if (MainApp.K1) {
                                    view2.setBackgroundResource(R.drawable.trans_logo_short_back_dark);
                                } else {
                                    view2.setBackgroundResource(R.drawable.trans_logo_short_back_color);
                                }
                            }
                            if (dialogWebView2.B1 == 3 && dialogWebView2.C1) {
                                if (dialogWebView2.x1.getVisibility() != 0) {
                                    dialogWebView2.H1 = 0;
                                    dialogWebView2.x1.setAlpha(1.0f);
                                    dialogWebView2.x1.setTranslationY(0.0f);
                                    dialogWebView2.x1.setVisibility(0);
                                }
                            } else {
                                dialogWebView2.x1.setVisibility(8);
                            }
                        }
                        WebTransControl webTransControl = dialogWebView2.y1;
                        if (webTransControl != null) {
                            webTransControl.f(dialogWebView2.D1, dialogWebView2.B1, dialogWebView2.C1);
                        }
                        if (dialogWebView2.B1 != 1) {
                            String str2 = dialogWebView2.E1;
                            dialogWebView2.E1 = null;
                            if (!TextUtils.isEmpty(str2)) {
                                dialogWebView2.A1 = true;
                                if (!TextUtils.isEmpty(str2)) {
                                    dialogWebView2.s(new AnonymousClass44(str2));
                                }
                            } else if (!TextUtils.isEmpty(PrefAlbum.y) && (webNestView = dialogWebView2.J0) != null) {
                                webNestView.evaluateJavascript("document.cookie", new ValueCallback<String>() { // from class: com.mycompany.app.dialog.DialogWebView.41
                                    @Override // android.webkit.ValueCallback
                                    public final void onReceiveValue(String str3) {
                                        String L3 = MainUtil.L3(str3);
                                        if (!TextUtils.isEmpty(L3) && !L3.equals(PrefAlbum.z)) {
                                            PrefAlbum.z = L3;
                                            PrefSet.c(0, DialogWebView.this.c0, "mTransCode", L3);
                                        }
                                    }
                                });
                            }
                            Context context = dialogWebView2.c0;
                            if (context != null && !DataTrans.a(context).b()) {
                                MainUtil.M3(dialogWebView2.J0);
                            }
                            if (!TextUtils.isEmpty(dialogWebView2.F1)) {
                                return;
                            }
                            MainUtil.N7(dialogWebView2.J0);
                        }
                    }
                }
            });
        }
    }

    public DialogWebView(MainActivity mainActivity, String str, String str2, boolean z, int i, DialogWebListener dialogWebListener) {
        super(mainActivity);
        this.a2 = new Runnable() { // from class: com.mycompany.app.dialog.DialogWebView.35
            @Override // java.lang.Runnable
            public final void run() {
                DialogWebView dialogWebView = DialogWebView.this;
                dialogWebView.f0(dialogWebView.Z1);
            }
        };
        this.c2 = new Runnable() { // from class: com.mycompany.app.dialog.DialogWebView.36
            @Override // java.lang.Runnable
            public final void run() {
                DialogWebView dialogWebView = DialogWebView.this;
                MyScrollBar myScrollBar = dialogWebView.L0;
                if (myScrollBar != null) {
                    myScrollBar.p(0, 0);
                }
                dialogWebView.b2 = false;
            }
        };
        this.w = 0;
        m();
        this.b0 = mainActivity;
        this.c0 = getContext();
        this.d0 = dialogWebListener;
        this.g0 = i;
        this.i0 = str;
        this.k0 = str2;
        this.j0 = MainUtil.I1(str, true);
        if (z) {
            this.l0 = this.i0;
            this.m0 = true;
        }
        this.K1 = MainApp.v(this.c0, false);
        this.f0 = MainUtil.O5(this.c0);
        this.a0 = MainApp.s1 / 2;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebView.1
            @Override // java.lang.Runnable
            public final void run() {
                DialogWebView.E(DialogWebView.this);
            }
        });
    }

    public static void B(DialogWebView dialogWebView) {
        if (dialogWebView.j1 && dialogWebView.J0 != null) {
            String str = dialogWebView.j0;
            if (!TextUtils.isEmpty(str) && str.endsWith("m.dcinside.com")) {
                MainUtil.I(dialogWebView.J0, MainUtil.E2(), true);
            }
        }
    }

    public static void C(DialogWebView dialogWebView, String str) {
        if (dialogWebView.J0 != null) {
            if (MainUtil.D5(str)) {
                if (dialogWebView.g1) {
                    dialogWebView.g1 = false;
                    WebNestView webNestView = dialogWebView.J0;
                    if (webNestView != null) {
                        webNestView.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebView.31
                            @Override // java.lang.Runnable
                            public final void run() {
                                DialogWebView dialogWebView2 = DialogWebView.this;
                                WebNestView webNestView2 = dialogWebView2.J0;
                                if (webNestView2 == null) {
                                    return;
                                }
                                dialogWebView2.g1 = false;
                                webNestView2.removeJavascriptInterface("android");
                            }
                        });
                        return;
                    }
                    return;
                }
                return;
            }
            if (!dialogWebView.g1) {
                dialogWebView.g1 = true;
                WebNestView webNestView2 = dialogWebView.J0;
                if (webNestView2 == null) {
                    return;
                }
                webNestView2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebView.32
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogWebView dialogWebView2 = DialogWebView.this;
                        WebNestView webNestView3 = dialogWebView2.J0;
                        if (webNestView3 == null) {
                            return;
                        }
                        dialogWebView2.g1 = true;
                        webNestView3.addJavascriptInterface(new WebAppInterface(), "android");
                    }
                });
            }
        }
    }

    public static void D(DialogWebView dialogWebView) {
        WebUpView webUpView;
        if (PrefZone.y != 0 && (webUpView = dialogWebView.M0) != null) {
            if (!dialogWebView.X0) {
                webUpView.d();
            } else {
                if (dialogWebView.J0.getScrollY() > dialogWebView.I0.getHeight()) {
                    WebUpView webUpView2 = dialogWebView.M0;
                    webUpView2.f();
                    webUpView2.setVisibility(0);
                    return;
                }
                dialogWebView.M0.d();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3, types: [android.view.ViewGroup] */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r12v0, types: [android.widget.FrameLayout, android.view.View, android.view.ViewGroup] */
    /* JADX WARN: Type inference failed for: r14v2, types: [android.widget.FrameLayout, android.view.View] */
    /* JADX WARN: Type inference failed for: r4v8, types: [android.view.View, com.mycompany.app.view.MyLineFrame, android.view.ViewGroup] */
    /* JADX WARN: Type inference failed for: r9v0, types: [com.mycompany.app.view.MyDialogRelative, android.view.ViewGroup] */
    public static void E(DialogWebView dialogWebView) {
        boolean z;
        boolean z2;
        boolean z3;
        MyAdFrame myAdFrame;
        MyRoundItem myRoundItem;
        ?? r10;
        boolean z4;
        boolean z5;
        int i;
        MyRoundView myRoundView;
        MyButtonImage myButtonImage;
        MyEditPure myEditPure;
        MyRoundView myRoundView2;
        LinearLayout linearLayout;
        MyEditPure myEditPure2;
        MyProgressBar myProgressBar;
        MyRoundView myRoundView3;
        MyEditPure myEditPure3;
        MyCoverView myCoverView;
        MyButtonImage myButtonImage2;
        MyButtonImage myButtonImage3;
        MyLineText myLineText;
        MyLineText myLineText2;
        int i2;
        Context context = dialogWebView.c0;
        if (context != null) {
            int i3 = dialogWebView.g0;
            if (i3 == 2) {
                z3 = false;
                z = true;
                z2 = true;
            } else if (i3 == 3) {
                z = false;
                z2 = false;
                z3 = false;
            } else if (i3 == 4) {
                z2 = false;
                z3 = false;
                z = true;
            } else {
                z = true;
                z2 = true;
                z3 = true;
            }
            ?? myDialogRelative = new MyDialogRelative(context);
            if (dialogWebView.p0) {
                int i4 = R.id.web_view_ads;
                ?? frameLayout = new FrameLayout(context);
                frameLayout.setId(i4);
                frameLayout.setMinimumHeight((int) MainUtil.G(context, 144.0f));
                frameLayout.setVisibility(8);
                myDialogRelative.addView(frameLayout, -1, -2);
                myRoundItem = new MyRoundItem(context);
                myDialogRelative.addView(myRoundItem, androidx.work.impl.workers.a.h(-1, -1, 3, i4));
                myAdFrame = frameLayout;
            } else {
                myAdFrame = null;
                myRoundItem = null;
            }
            if (dialogWebView.p0) {
                r10 = myRoundItem;
            } else {
                r10 = myDialogRelative;
            }
            int G = (int) MainUtil.G(context, 14.0f);
            if (dialogWebView.j1) {
                linearLayout = new LinearLayout(context);
                linearLayout.setPaddingRelative(0, MainApp.F1 + MainApp.G1, MainApp.g1, MainApp.G1);
                linearLayout.setBaselineAligned(false);
                linearLayout.setOrientation(0);
                r10.addView(linearLayout, -1, MainApp.b1);
                MyRoundView myRoundView4 = new MyRoundView(context);
                myRoundView4.h = MainApp.F1;
                myRoundView4.i = 0;
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
                layoutParams.weight = 1.0f;
                layoutParams.setMarginStart(MainApp.F1);
                linearLayout.addView(myRoundView4, layoutParams);
                myRoundView2 = new MyRoundView(context);
                myRoundView2.h = MainApp.F1;
                myRoundView2.i = 0;
                LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -1);
                layoutParams2.weight = 1.0f;
                layoutParams2.setMarginStart(MainApp.F1);
                linearLayout.addView(myRoundView2, layoutParams2);
                LinearLayout linearLayout2 = new LinearLayout(context);
                linearLayout2.setPaddingRelative(0, MainApp.F1, 0, 0);
                linearLayout2.setBaselineAligned(false);
                linearLayout2.setOrientation(0);
                r10.addView(linearLayout2, -1, MainApp.b1);
                myEditPure = new MyEditPure(context);
                myEditPure.setGravity(16);
                myEditPure.setSingleLine(true);
                z4 = z;
                myEditPure.setTextDirection(3);
                myEditPure.setTextSize(1, 16.0f);
                int i5 = Build.VERSION.SDK_INT;
                if (i5 >= 29) {
                    myEditPure.setTextCursorDrawable(R.drawable.edit_cursor);
                }
                myEditPure.setHintTextColor(-8289919);
                myEditPure.setImeOptions(268435459);
                myEditPure.setSelectAllOnFocus(true);
                myEditPure.setBackground(null);
                z5 = z2;
                LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -1);
                layoutParams3.weight = 1.0f;
                layoutParams3.setMarginStart(MainApp.E1);
                layoutParams3.setMarginEnd(MainApp.F1);
                linearLayout2.addView(myEditPure, layoutParams3);
                myEditPure2 = new MyEditPure(context);
                myEditPure2.setGravity(16);
                myEditPure2.setSingleLine(true);
                myEditPure2.setTextDirection(3);
                myEditPure2.setTextSize(1, 16.0f);
                if (i5 >= 29) {
                    myEditPure2.setTextCursorDrawable(R.drawable.edit_cursor);
                }
                myEditPure2.setHintTextColor(-8289919);
                myEditPure2.setImeOptions(268435459);
                myEditPure2.setSelectAllOnFocus(true);
                myEditPure2.setBackground(null);
                LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-1, -1);
                layoutParams4.weight = 1.0f;
                layoutParams4.setMarginStart(MainApp.E1);
                layoutParams4.setMarginEnd(MainApp.F1);
                linearLayout2.addView(myEditPure2, layoutParams4);
                MyButtonImage myButtonImage4 = new MyButtonImage(context);
                myButtonImage4.setPadding(G, G, G, G);
                myButtonImage4.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                i = -1;
                linearLayout2.addView(myButtonImage4, MainApp.g1, -1);
                myButtonImage = myButtonImage4;
                myRoundView = myRoundView4;
            } else {
                z4 = z;
                z5 = z2;
                i = -1;
                myRoundView = null;
                myButtonImage = null;
                myEditPure = null;
                myRoundView2 = null;
                linearLayout = null;
                myEditPure2 = null;
            }
            ?? frameLayout2 = new FrameLayout(context);
            boolean z6 = z3;
            RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(i, i);
            if (dialogWebView.j1) {
                layoutParams5.topMargin = MainApp.b1;
            }
            layoutParams5.bottomMargin = MainApp.g1;
            r10.addView(frameLayout2, layoutParams5);
            FrameLayout frameLayout3 = new FrameLayout(context);
            MyButtonImage myButtonImage5 = myButtonImage;
            FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(-1, -1);
            layoutParams6.topMargin = MainApp.b1;
            frameLayout2.addView(frameLayout3, layoutParams6);
            View view = new View(context);
            view.setVisibility(8);
            MyEditPure myEditPure4 = myEditPure2;
            MyEditPure myEditPure5 = myEditPure;
            FrameLayout.LayoutParams layoutParams7 = new FrameLayout.LayoutParams((int) MainUtil.G(context, 130.0f), (int) MainUtil.G(context, 24.0f));
            layoutParams7.gravity = 85;
            frameLayout3.addView(view, layoutParams7);
            MyProgressBar myProgressBar2 = new MyProgressBar(context);
            int G2 = (int) MainUtil.G(context, 1.5f);
            myProgressBar2.g = true;
            myProgressBar2.h = true;
            myProgressBar2.l = G2;
            myProgressBar2.B = true;
            myProgressBar2.setVisibility(8);
            FrameLayout.LayoutParams layoutParams8 = new FrameLayout.LayoutParams(-1, (int) MainUtil.G(context, 2.0f));
            layoutParams8.topMargin = (int) MainUtil.G(context, 51.0f);
            frameLayout2.addView(myProgressBar2, layoutParams8);
            View view2 = new View(context);
            frameLayout2.addView(view2, -1, (int) MainUtil.G(context, 10.0f));
            if (z4) {
                myRoundView3 = new MyRoundView(context);
                myProgressBar = myProgressBar2;
                frameLayout2.addView(myRoundView3, -1, MainApp.b1);
            } else {
                myProgressBar = myProgressBar2;
                myRoundView3 = null;
            }
            MyEditPure myEditPure6 = new MyEditPure(context);
            myEditPure6.setGravity(16);
            myEditPure6.setSingleLine(true);
            myEditPure6.setTextDirection(3);
            myEditPure6.setTextSize(1, 16.0f);
            if (Build.VERSION.SDK_INT >= 29) {
                myEditPure6.setTextCursorDrawable(R.drawable.edit_cursor);
            }
            myEditPure6.setHintTextColor(-8289919);
            myEditPure6.setInputType(16);
            myEditPure6.setImeOptions(268435459);
            myEditPure6.setSelectAllOnFocus(true);
            myEditPure6.setBackground(null);
            MyRoundView myRoundView5 = myRoundView3;
            FrameLayout.LayoutParams layoutParams9 = new FrameLayout.LayoutParams(-1, MainApp.b1);
            layoutParams9.setMarginStart(MainApp.E1);
            if (dialogWebView.h0) {
                layoutParams9.setMarginEnd(MainApp.g1);
            } else {
                layoutParams9.setMarginEnd((int) MainUtil.G(context, 112.0f));
            }
            frameLayout2.addView(myEditPure6, layoutParams9);
            if (!dialogWebView.h0) {
                MyButtonImage myButtonImage6 = new MyButtonImage(context);
                myButtonImage6.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                myEditPure3 = myEditPure6;
                FrameLayout.LayoutParams layoutParams10 = new FrameLayout.LayoutParams(MainApp.g1, MainApp.b1);
                layoutParams10.gravity = 8388613;
                layoutParams10.setMarginEnd(MainApp.g1);
                frameLayout2.addView(myButtonImage6, layoutParams10);
                if (MainApp.K1) {
                    i2 = -328966;
                } else {
                    i2 = -13022805;
                }
                myCoverView = new MyCoverView(context, i2, (int) MainUtil.G(context, 2.0f), MainApp.z1);
                myCoverView.setVisibility(8);
                FrameLayout.LayoutParams layoutParams11 = new FrameLayout.LayoutParams(MainApp.g1, MainApp.b1);
                layoutParams11.gravity = 8388613;
                layoutParams11.setMarginEnd(MainApp.g1);
                frameLayout2.addView(myCoverView, layoutParams11);
                myButtonImage2 = myButtonImage6;
            } else {
                myEditPure3 = myEditPure6;
                myCoverView = null;
                myButtonImage2 = null;
            }
            MyButtonImage myButtonImage7 = new MyButtonImage(context);
            myButtonImage7.setPadding(G, G, G, G);
            ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_INSIDE;
            myButtonImage7.setScaleType(scaleType);
            MyCoverView myCoverView2 = myCoverView;
            MyButtonImage myButtonImage8 = myButtonImage2;
            FrameLayout.LayoutParams layoutParams12 = new FrameLayout.LayoutParams(MainApp.g1, MainApp.b1);
            layoutParams12.gravity = 8388613;
            frameLayout2.addView(myButtonImage7, layoutParams12);
            MyButtonImage myButtonImage9 = new MyButtonImage(context);
            myButtonImage9.setPadding(G, G, G, G);
            myButtonImage9.setScaleType(scaleType);
            myButtonImage9.setVisibility(8);
            FrameLayout.LayoutParams layoutParams13 = new FrameLayout.LayoutParams(MainApp.g1, MainApp.b1);
            layoutParams13.gravity = 8388613;
            frameLayout2.addView(myButtonImage9, layoutParams13);
            MyScrollNavi myScrollNavi = new MyScrollNavi(context);
            myScrollNavi.setVisibility(4);
            int i6 = MainApp.i1;
            FrameLayout.LayoutParams layoutParams14 = new FrameLayout.LayoutParams(i6, i6);
            layoutParams14.gravity = 19;
            frameLayout2.addView(myScrollNavi, layoutParams14);
            MyScrollNavi myScrollNavi2 = new MyScrollNavi(context);
            myScrollNavi2.setVisibility(4);
            int i7 = MainApp.i1;
            FrameLayout.LayoutParams layoutParams15 = new FrameLayout.LayoutParams(i7, i7);
            layoutParams15.gravity = 21;
            frameLayout2.addView(myScrollNavi2, layoutParams15);
            ?? myLineFrame = new MyLineFrame(context);
            myLineFrame.d(MainApp.E1);
            RelativeLayout.LayoutParams layoutParams16 = new RelativeLayout.LayoutParams(-1, MainApp.g1);
            layoutParams16.addRule(12);
            r10.addView(myLineFrame, layoutParams16);
            if (z6) {
                myButtonImage3 = com.google.android.gms.internal.mlkit_vision_text_common.a.p(context, scaleType);
                int i8 = MainApp.g1;
                FrameLayout.LayoutParams layoutParams17 = new FrameLayout.LayoutParams(i8, i8);
                layoutParams17.gravity = 8388613;
                myLineFrame.addView(myButtonImage3, layoutParams17);
            } else {
                myButtonImage3 = null;
            }
            LinearLayout linearLayout3 = new LinearLayout(context);
            linearLayout3.setBaselineAligned(false);
            linearLayout3.setOrientation(0);
            MyButtonImage myButtonImage10 = myButtonImage3;
            FrameLayout.LayoutParams layoutParams18 = new FrameLayout.LayoutParams(-1, MainApp.g1);
            if (z6) {
                layoutParams18.setMarginEnd(MainApp.g1);
            }
            myLineFrame.addView(linearLayout3, layoutParams18);
            MyLineText myLineText3 = new MyLineText(context);
            myLineText3.setGravity(17);
            myLineText3.setTextSize(1, 16.0f);
            LinearLayout.LayoutParams f = com.google.android.gms.internal.mlkit_vision_text_common.a.f(myLineText3, R.string.close, context, 0, -1);
            f.weight = 1.0f;
            linearLayout3.addView(myLineText3, f);
            if (z5) {
                myLineText2 = com.google.android.gms.internal.mlkit_vision_text_common.a.r(context, 17, 1, 16.0f);
                myLineText = myLineText3;
                LinearLayout.LayoutParams f2 = com.google.android.gms.internal.mlkit_vision_text_common.a.f(myLineText2, R.string.new_url, context, 0, -1);
                f2.weight = 1.0f;
                linearLayout3.addView(myLineText2, f2);
            } else {
                myLineText = myLineText3;
                myLineText2 = null;
            }
            MyScrollBar myScrollBar = new MyScrollBar(context);
            myScrollBar.n();
            int i9 = MainApp.b1;
            int i10 = MainApp.h1;
            myScrollBar.O = i9;
            myScrollBar.P = i10;
            myScrollBar.setVisibility(4);
            RelativeLayout.LayoutParams layoutParams19 = new RelativeLayout.LayoutParams((int) MainUtil.G(context, 32.0f), -1);
            layoutParams19.addRule(11);
            r10.addView(myScrollBar, layoutParams19);
            dialogWebView.o0 = myDialogRelative;
            dialogWebView.v0 = myRoundItem;
            dialogWebView.q0 = myAdFrame;
            dialogWebView.w0 = linearLayout;
            dialogWebView.x0 = myRoundView;
            dialogWebView.y0 = myRoundView2;
            dialogWebView.z0 = myEditPure5;
            dialogWebView.A0 = myEditPure4;
            dialogWebView.B0 = myButtonImage5;
            dialogWebView.C0 = frameLayout2;
            dialogWebView.D0 = view2;
            dialogWebView.E0 = myRoundView5;
            dialogWebView.F0 = myEditPure3;
            dialogWebView.G0 = myButtonImage7;
            dialogWebView.H0 = myButtonImage9;
            dialogWebView.I0 = frameLayout3;
            dialogWebView.K0 = myProgressBar;
            dialogWebView.N0 = myScrollNavi;
            dialogWebView.O0 = myScrollNavi2;
            dialogWebView.P0 = myLineText;
            dialogWebView.Q0 = myLineText2;
            dialogWebView.L0 = myScrollBar;
            dialogWebView.R0 = myButtonImage10;
            dialogWebView.v1 = myButtonImage8;
            dialogWebView.x1 = view;
            dialogWebView.w1 = myCoverView2;
            Handler handler = dialogWebView.i;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebView.2
                @Override // java.lang.Runnable
                public final void run() {
                    RelativeLayout.LayoutParams layoutParams20;
                    final DialogWebView dialogWebView2 = DialogWebView.this;
                    boolean z7 = dialogWebView2.f0;
                    int i11 = dialogWebView2.g0;
                    if (dialogWebView2.o0 != null && dialogWebView2.c0 != null) {
                        if (i11 == 2) {
                            MyLineText myLineText4 = dialogWebView2.Q0;
                            if (myLineText4 != null) {
                                myLineText4.setDrawLine(false);
                            }
                        } else if (i11 == 3) {
                            dialogWebView2.P0.setDrawLine(false);
                        } else if (i11 == 4) {
                            dialogWebView2.P0.setDrawLine(false);
                        } else {
                            dialogWebView2.A1 = PrefRead.N;
                        }
                        int i12 = -1;
                        if (MainApp.K1) {
                            LinearLayout linearLayout4 = dialogWebView2.w0;
                            if (linearLayout4 != null) {
                                linearLayout4.setBackgroundColor(-16777216);
                                dialogWebView2.x0.setBackColor(-14606047);
                                dialogWebView2.y0.setBackColor(-14606047);
                                dialogWebView2.z0.setTextColor(-328966);
                                dialogWebView2.A0.setTextColor(-328966);
                                dialogWebView2.B0.setImageResource(R.drawable.outline_search_dark_20);
                                dialogWebView2.B0.setBgPreColor(-12632257);
                            }
                            dialogWebView2.C0.setBackgroundColor(-16777216);
                            dialogWebView2.D0.setBackgroundColor(-16777216);
                            MyRoundView myRoundView6 = dialogWebView2.E0;
                            if (myRoundView6 != null) {
                                myRoundView6.setBackColor(-14606047);
                            }
                            dialogWebView2.F0.setTextColor(-328966);
                            dialogWebView2.G0.setImageResource(R.drawable.outline_refresh_dark_24);
                            dialogWebView2.H0.setImageResource(R.drawable.outline_close_dark_24);
                            dialogWebView2.G0.setBgPreColor(-12632257);
                            dialogWebView2.H0.setBgPreColor(-12632257);
                            dialogWebView2.K0.g(-922746881, -16777216);
                            dialogWebView2.P0.setBackgroundResource(R.drawable.selector_normal_dark);
                            dialogWebView2.P0.setTextColor(-328966);
                        } else {
                            LinearLayout linearLayout5 = dialogWebView2.w0;
                            if (linearLayout5 != null) {
                                linearLayout5.setBackgroundColor(-460552);
                                dialogWebView2.x0.setBackColor(-1);
                                dialogWebView2.y0.setBackColor(-1);
                                dialogWebView2.z0.setTextColor(-16777216);
                                dialogWebView2.A0.setTextColor(-16777216);
                                dialogWebView2.B0.setImageResource(R.drawable.outline_search_black_20);
                                dialogWebView2.B0.setBgPreColor(-2039584);
                            }
                            dialogWebView2.C0.setBackgroundColor(-460552);
                            dialogWebView2.D0.setBackgroundColor(-460552);
                            MyRoundView myRoundView7 = dialogWebView2.E0;
                            if (myRoundView7 != null) {
                                myRoundView7.setBackColor(-1);
                            }
                            dialogWebView2.F0.setTextColor(-16777216);
                            dialogWebView2.G0.setImageResource(R.drawable.outline_refresh_black_24);
                            dialogWebView2.H0.setImageResource(R.drawable.outline_close_black_24);
                            dialogWebView2.G0.setBgPreColor(-2039584);
                            dialogWebView2.H0.setBgPreColor(-2039584);
                            dialogWebView2.K0.g(-13022805, -460552);
                            dialogWebView2.P0.setBackgroundResource(R.drawable.selector_normal);
                            dialogWebView2.P0.setTextColor(-16777216);
                        }
                        if (MainApp.L1) {
                            dialogWebView2.I0.setBackgroundColor(-14606047);
                        } else {
                            dialogWebView2.I0.setBackgroundColor(-1);
                        }
                        dialogWebView2.N0.d(z7, true);
                        dialogWebView2.O0.d(z7, false);
                        MyEditPure myEditPure7 = dialogWebView2.z0;
                        if (myEditPure7 != null) {
                            myEditPure7.setHint("갤러리");
                            if (!TextUtils.isEmpty(dialogWebView2.l1)) {
                                dialogWebView2.z0.setText(dialogWebView2.l1);
                            }
                            dialogWebView2.z0.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.mycompany.app.dialog.DialogWebView.3
                                @Override // android.widget.TextView.OnEditorActionListener
                                public final boolean onEditorAction(TextView textView, int i13, KeyEvent keyEvent) {
                                    MyEditPure myEditPure8 = DialogWebView.this.z0;
                                    if (myEditPure8 == null) {
                                        return true;
                                    }
                                    myEditPure8.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebView.3.1
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            DialogWebView.F(DialogWebView.this);
                                        }
                                    });
                                    return true;
                                }
                            });
                            dialogWebView2.A0.setHint("검색어");
                            if (!TextUtils.isEmpty(dialogWebView2.m1)) {
                                dialogWebView2.A0.setText(dialogWebView2.m1);
                            }
                            dialogWebView2.A0.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.mycompany.app.dialog.DialogWebView.4
                                @Override // android.widget.TextView.OnEditorActionListener
                                public final boolean onEditorAction(TextView textView, int i13, KeyEvent keyEvent) {
                                    MyEditPure myEditPure8 = DialogWebView.this.A0;
                                    if (myEditPure8 == null) {
                                        return true;
                                    }
                                    myEditPure8.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebView.4.1
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            DialogWebView.F(DialogWebView.this);
                                        }
                                    });
                                    return true;
                                }
                            });
                            dialogWebView2.B0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogWebView.5
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view3) {
                                    MyButtonImage myButtonImage11 = DialogWebView.this.B0;
                                    if (myButtonImage11 == null) {
                                        return;
                                    }
                                    myButtonImage11.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebView.5.1
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            DialogWebView.F(DialogWebView.this);
                                        }
                                    });
                                }
                            });
                        }
                        if (i11 == 3) {
                            dialogWebView2.F0.setFocusable(false);
                            dialogWebView2.F0.setText(R.string.show_license);
                        } else {
                            dialogWebView2.F0.setHint(R.string.web_edit_hint);
                            dialogWebView2.F0.setText(dialogWebView2.i0);
                            dialogWebView2.F0.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.mycompany.app.dialog.DialogWebView.6
                                @Override // android.widget.TextView.OnEditorActionListener
                                public final boolean onEditorAction(TextView textView, int i13, KeyEvent keyEvent) {
                                    MyEditPure myEditPure8 = DialogWebView.this.F0;
                                    if (myEditPure8 == null) {
                                        return true;
                                    }
                                    myEditPure8.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebView.6.1
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            DialogWebView.G(DialogWebView.this);
                                        }
                                    });
                                    return true;
                                }
                            });
                        }
                        dialogWebView2.G0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogWebView.7
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view3) {
                                MyButtonImage myButtonImage11;
                                DialogWebView dialogWebView3 = DialogWebView.this;
                                if (dialogWebView3.G0 != null && dialogWebView3.J0 != null && (myButtonImage11 = dialogWebView3.H0) != null && myButtonImage11.getVisibility() != 0) {
                                    dialogWebView3.G0.setVisibility(8);
                                    dialogWebView3.H0.setVisibility(0);
                                    DialogWebView.G(dialogWebView3);
                                }
                            }
                        });
                        dialogWebView2.H0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogWebView.8
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view3) {
                                DialogWebView dialogWebView3 = DialogWebView.this;
                                WebNestView webNestView = dialogWebView3.J0;
                                if (webNestView == null) {
                                    return;
                                }
                                dialogWebView3.f0(webNestView.getProgress());
                                dialogWebView3.J0.stopLoading();
                            }
                        });
                        if (PrefZone.x != 0) {
                            if (MainApp.K1) {
                                dialogWebView2.L0.setPreColor(-12632257);
                            } else {
                                dialogWebView2.L0.setPreColor(-2434342);
                            }
                            if (PrefZone.x == 1 && (layoutParams20 = (RelativeLayout.LayoutParams) dialogWebView2.L0.getLayoutParams()) != null) {
                                layoutParams20.removeRule(11);
                                layoutParams20.addRule(9);
                                dialogWebView2.L0.setPosLeft(true);
                            }
                            dialogWebView2.L0.setListener(new MyScrollBar.ScrollBarListener() { // from class: com.mycompany.app.dialog.DialogWebView.9
                                @Override // com.mycompany.app.view.MyScrollBar.ScrollBarListener
                                public final void c(int i13) {
                                    WebNestView webNestView = DialogWebView.this.J0;
                                    if (webNestView == null) {
                                        return;
                                    }
                                    webNestView.scrollTo(0, i13);
                                }

                                @Override // com.mycompany.app.view.MyScrollBar.ScrollBarListener
                                public final int d() {
                                    WebNestView webNestView = DialogWebView.this.J0;
                                    if (webNestView == null) {
                                        return 0;
                                    }
                                    return webNestView.getScrollTop();
                                }

                                @Override // com.mycompany.app.view.MyScrollBar.ScrollBarListener
                                public final void e() {
                                }

                                @Override // com.mycompany.app.view.MyScrollBar.ScrollBarListener
                                public final int f() {
                                    WebNestView webNestView = DialogWebView.this.J0;
                                    if (webNestView == null) {
                                        return 0;
                                    }
                                    return webNestView.Y0;
                                }

                                @Override // com.mycompany.app.view.MyScrollBar.ScrollBarListener
                                public final int g() {
                                    WebNestView webNestView = DialogWebView.this.J0;
                                    if (webNestView == null) {
                                        return 0;
                                    }
                                    return webNestView.X0;
                                }
                            });
                        }
                        dialogWebView2.P0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogWebView.10
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view3) {
                                DialogWebView.this.dismiss();
                            }
                        });
                        MyLineText myLineText5 = dialogWebView2.Q0;
                        if (myLineText5 != null) {
                            if (MainApp.K1) {
                                myLineText5.setBackgroundResource(R.drawable.selector_normal_dark);
                                dialogWebView2.Q0.setTextColor(-328966);
                            } else {
                                myLineText5.setBackgroundResource(R.drawable.selector_normal);
                                dialogWebView2.Q0.setTextColor(-14784824);
                            }
                            dialogWebView2.Q0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogWebView.11
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view3) {
                                    WebNestView webNestView;
                                    DialogWebView dialogWebView3 = DialogWebView.this;
                                    DialogWebListener dialogWebListener = dialogWebView3.d0;
                                    // Promote the Preview WebView into a tab instead of opening
                                    // the URL again (which reloads the page).
                                    if (dialogWebListener != null && (webNestView = dialogWebView3.J0) != null && !dialogWebView3.T0) {
                                        dialogWebView3.T0 = true;
                                        try {
                                            dialogWebView3.I0.removeView(webNestView);
                                            WebNestView webNestView2 = dialogWebView3.J0;
                                            dialogWebView3.J0 = null;
                                            dialogWebView3.d0.d(webNestView2, webNestView2.getUrl());
                                        } catch (Exception unused) {
                                        }
                                        dialogWebView3.T0 = false;
                                    }
                                }
                            });
                        }
                        MyButtonImage myButtonImage11 = dialogWebView2.R0;
                        if (myButtonImage11 != null) {
                            if (MainApp.K1) {
                                myButtonImage11.setBgPreColor(-12632257);
                                dialogWebView2.R0.setImageResource(R.drawable.outline_more_vert_dark_24);
                            } else {
                                myButtonImage11.setBgPreColor(553648128);
                                dialogWebView2.R0.setImageResource(R.drawable.outline_more_vert_black_24);
                            }
                            if (PrefZtwo.e0 && !dialogWebView2.j1) {
                                dialogWebView2.R0.setNoti(true);
                            }
                            dialogWebView2.R0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogWebView.12
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view3) {
                                    MyPopupMenu myPopupMenu;
                                    boolean z8 = PrefZtwo.e0;
                                    final DialogWebView dialogWebView3 = DialogWebView.this;
                                    if (z8 && !dialogWebView3.j1) {
                                        PrefZtwo.e0 = false;
                                        PrefSet.d(16, dialogWebView3.c0, "mNotiMenu", false);
                                        MyButtonImage myButtonImage12 = dialogWebView3.R0;
                                        if (myButtonImage12 != null) {
                                            myButtonImage12.setNoti(false);
                                        }
                                    }
                                    if (dialogWebView3.b0 != null && (myPopupMenu = dialogWebView3.f1) == null) {
                                        if (myPopupMenu != null) {
                                            dialogWebView3.Y = null;
                                            myPopupMenu.a();
                                            dialogWebView3.f1 = null;
                                        }
                                        if (view3 == null) {
                                            return;
                                        }
                                        ArrayList arrayList = new ArrayList();
                                        if (dialogWebView3.g0 == 1) {
                                            arrayList.add(new MyPopupAdapter.PopMenuItem(0, R.string.only_image));
                                            arrayList.add(new MyPopupAdapter.PopMenuItem(1, R.string.image_list));
                                            arrayList.add(new MyPopupAdapter.PopMenuItem(2, R.string.pop_allow));
                                        } else {
                                            arrayList.add(new MyPopupAdapter.PopMenuItem(100, R.string.trans_auto, 0, PrefRead.N));
                                            int[] iArr = MainConst.h;
                                            arrayList.add(new MyPopupAdapter.PopMenuItem(2, iArr[2]));
                                            arrayList.add(new MyPopupAdapter.PopMenuItem(5, iArr[5]));
                                            if (PrefSync.k) {
                                                arrayList.add(new MyPopupAdapter.PopMenuItem(6, R.string.normal_tab));
                                            } else {
                                                arrayList.add(new MyPopupAdapter.PopMenuItem(6, iArr[6]));
                                            }
                                            arrayList.add(new MyPopupAdapter.PopMenuItem(7, iArr[7]));
                                            arrayList.add(new MyPopupAdapter.PopMenuItem(8, iArr[8]));
                                            arrayList.add(new MyPopupAdapter.PopMenuItem(101, R.string.block_area));
                                        }
                                        MyPopupMenu myPopupMenu2 = new MyPopupMenu(dialogWebView3.b0, dialogWebView3.o0, view3, arrayList, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.dialog.DialogWebView.37
                                            @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                            public final void a() {
                                                int i13 = DialogWebView.k2;
                                                DialogWebView dialogWebView4 = DialogWebView.this;
                                                MyPopupMenu myPopupMenu3 = dialogWebView4.f1;
                                                if (myPopupMenu3 != null) {
                                                    dialogWebView4.Y = null;
                                                    myPopupMenu3.a();
                                                    dialogWebView4.f1 = null;
                                                }
                                            }

                                            @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                            public final boolean b(View view4, int i13) {
                                                final DialogWebView dialogWebView4 = DialogWebView.this;
                                                DialogWebListener dialogWebListener = dialogWebView4.d0;
                                                if (dialogWebListener != null) {
                                                    if (dialogWebView4.g0 == 1) {
                                                        if (i13 == 0) {
                                                            dialogWebListener.e();
                                                            return true;
                                                        }
                                                        if (i13 == 1) {
                                                            dialogWebListener.f();
                                                            return true;
                                                        }
                                                        dialogWebListener.b();
                                                        return true;
                                                    }
                                                    if (i13 == 100) {
                                                        boolean z9 = !PrefRead.N;
                                                        PrefRead.N = z9;
                                                        PrefSet.d(8, dialogWebView4.c0, "mViewTrans", z9);
                                                        if (PrefRead.N) {
                                                            if (!dialogWebView4.g1) {
                                                                MainUtil.e8(dialogWebView4.c0, R.string.http_warning);
                                                                return true;
                                                            }
                                                            if (dialogWebView4.B1 != 1) {
                                                                dialogWebView4.R();
                                                                if (dialogWebView4.B1 == 3) {
                                                                    dialogWebView4.Y(false);
                                                                }
                                                                dialogWebView4.Z(dialogWebView4.D1);
                                                                if (dialogWebView4.B1 == 3 && TextUtils.isEmpty(dialogWebView4.D1)) {
                                                                    MainUtil.e8(dialogWebView4.c0, R.string.select_lang);
                                                                    return true;
                                                                }
                                                            }
                                                        }
                                                    } else if (i13 == 101) {
                                                        if (dialogWebView4.c0 != null && dialogWebView4.L1 == null && dialogWebView4.I0 != null && !dialogWebView4.h2) {
                                                            dialogWebView4.h2 = true;
                                                            dialogWebView4.M1 = false;
                                                            Handler handler2 = dialogWebView4.i;
                                                            if (handler2 != null) {
                                                                handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebView.52
                                                                    @Override // java.lang.Runnable
                                                                    public final void run() {
                                                                        final DialogWebView dialogWebView5 = DialogWebView.this;
                                                                        if (dialogWebView5.L1 == null && dialogWebView5.I0 != null) {
                                                                            try {
                                                                                WebAreaView webAreaView = new WebAreaView(dialogWebView5.c0);
                                                                                dialogWebView5.L1 = webAreaView;
                                                                                webAreaView.setVisibility(4);
                                                                                dialogWebView5.L1.setFltListener(new WebAreaView.WebAreaListener() { // from class: com.mycompany.app.dialog.DialogWebView.53
                                                                                    @Override // com.mycompany.app.wview.WebAreaView.WebAreaListener
                                                                                    public final void a() {
                                                                                        int i14 = DialogWebView.k2;
                                                                                        DialogWebView.this.N(true);
                                                                                    }

                                                                                    @Override // com.mycompany.app.wview.WebAreaView.WebAreaListener
                                                                                    public final void b() {
                                                                                        WebNestView webNestView;
                                                                                        final DialogWebView dialogWebView6 = DialogWebView.this;
                                                                                        if (dialogWebView6.L1 == null || (webNestView = dialogWebView6.J0) == null) {
                                                                                            return;
                                                                                        }
                                                                                        webNestView.evaluateJavascript("(function(){if(!window.sbcmd)return null;var cmd=window.sbcmd;var eles=window.sbattr;if(eles){eles.forEach((ele)=>{if(!ele)ele='null';cmd+='!@!'+ele;});}return cmd;})();", new ValueCallback<String>() { // from class: com.mycompany.app.dialog.DialogWebView.59
                                                                                            @Override // android.webkit.ValueCallback
                                                                                            public final void onReceiveValue(String str) {
                                                                                                String str2 = str;
                                                                                                DialogWebView dialogWebView7 = DialogWebView.this;
                                                                                                if (dialogWebView7.L1 != null) {
                                                                                                    dialogWebView7.j2 = str2;
                                                                                                    MyDialogRelative myDialogRelative2 = dialogWebView7.o0;
                                                                                                    if (myDialogRelative2 == null) {
                                                                                                        return;
                                                                                                    }
                                                                                                    myDialogRelative2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebView.59.1
                                                                                                        /* JADX WARN: Removed duplicated region for block: B:12:0x0045  */
                                                                                                        /* JADX WARN: Removed duplicated region for block: B:14:0x004d  */
                                                                                                        @Override // java.lang.Runnable
                                                                                                        /*
                                                                                                            Code decompiled incorrectly, please refer to instructions dump.
                                                                                                            To view partially-correct add '--show-bad-code' argument
                                                                                                        */
                                                                                                        public final void run() {
                                                                                                            /*
                                                                                                                r11 = this;
                                                                                                                com.mycompany.app.dialog.DialogWebView$59 r0 = com.mycompany.app.dialog.DialogWebView.AnonymousClass59.this
                                                                                                                com.mycompany.app.dialog.DialogWebView r0 = com.mycompany.app.dialog.DialogWebView.this
                                                                                                                java.lang.String r1 = r0.j2
                                                                                                                r2 = 0
                                                                                                                r0.j2 = r2
                                                                                                                com.mycompany.app.main.MainActivity r3 = r0.b0
                                                                                                                if (r3 != 0) goto Le
                                                                                                                goto L14
                                                                                                            Le:
                                                                                                                boolean r3 = r0.S()
                                                                                                                if (r3 == 0) goto L15
                                                                                                            L14:
                                                                                                                return
                                                                                                            L15:
                                                                                                                boolean r3 = android.text.TextUtils.isEmpty(r1)
                                                                                                                if (r3 == 0) goto L1d
                                                                                                            L1b:
                                                                                                                r8 = r2
                                                                                                                goto L3f
                                                                                                            L1d:
                                                                                                                java.lang.String r1 = com.mycompany.app.main.MainUtil.X6(r1)
                                                                                                                java.lang.String r1 = com.mycompany.app.main.MainUtil.k8(r1)
                                                                                                                boolean r3 = android.text.TextUtils.isEmpty(r1)
                                                                                                                if (r3 == 0) goto L2c
                                                                                                                goto L1b
                                                                                                            L2c:
                                                                                                                java.lang.String r3 = "null"
                                                                                                                boolean r3 = r3.equals(r1)
                                                                                                                if (r3 == 0) goto L35
                                                                                                                goto L1b
                                                                                                            L35:
                                                                                                                java.lang.String r3 = "undefined"
                                                                                                                boolean r3 = r3.equals(r1)
                                                                                                                if (r3 == 0) goto L3e
                                                                                                                goto L1b
                                                                                                            L3e:
                                                                                                                r8 = r1
                                                                                                            L3f:
                                                                                                                boolean r1 = android.text.TextUtils.isEmpty(r8)
                                                                                                                if (r1 == 0) goto L4d
                                                                                                                android.content.Context r0 = r0.c0
                                                                                                                int r1 = com.mycompany.app.soulbrowser.R.string.backup_target
                                                                                                                com.mycompany.app.main.MainUtil.e8(r0, r1)
                                                                                                                return
                                                                                                            L4d:
                                                                                                                com.mycompany.app.dialog.DialogEditArea r1 = r0.S1
                                                                                                                if (r1 == 0) goto L56
                                                                                                                r1.dismiss()
                                                                                                                r0.S1 = r2
                                                                                                            L56:
                                                                                                                int r1 = r0.B1
                                                                                                                r2 = 3
                                                                                                                if (r1 != r2) goto L62
                                                                                                                boolean r1 = r0.C1
                                                                                                                if (r1 == 0) goto L62
                                                                                                                r1 = 1
                                                                                                            L60:
                                                                                                                r9 = r1
                                                                                                                goto L64
                                                                                                            L62:
                                                                                                                r1 = 0
                                                                                                                goto L60
                                                                                                            L64:
                                                                                                                com.mycompany.app.dialog.DialogEditArea r4 = new com.mycompany.app.dialog.DialogEditArea
                                                                                                                com.mycompany.app.main.MainActivity r5 = r0.b0
                                                                                                                java.lang.String r6 = r0.i0
                                                                                                                java.lang.String r7 = r0.j0
                                                                                                                com.mycompany.app.dialog.DialogWebView$63 r10 = new com.mycompany.app.dialog.DialogWebView$63
                                                                                                                r10.<init>()
                                                                                                                r4.<init>(r5, r6, r7, r8, r9, r10)
                                                                                                                r0.S1 = r4
                                                                                                                com.mycompany.app.dialog.DialogWebView$64 r1 = new com.mycompany.app.dialog.DialogWebView$64
                                                                                                                r1.<init>()
                                                                                                                r4.setOnDismissListener(r1)
                                                                                                                return
                                                                                                            */
                                                                                                            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogWebView.AnonymousClass59.AnonymousClass1.run():void");
                                                                                                        }
                                                                                                    });
                                                                                                }
                                                                                            }
                                                                                        });
                                                                                    }

                                                                                    @Override // com.mycompany.app.wview.WebAreaView.WebAreaListener
                                                                                    public final void c() {
                                                                                        String str;
                                                                                        DialogWebView dialogWebView6 = DialogWebView.this;
                                                                                        if (dialogWebView6.L1 != null) {
                                                                                            if (TextUtils.isEmpty(dialogWebView6.O1)) {
                                                                                                String B2 = MainUtil.B2(0);
                                                                                                dialogWebView6.O1 = B2;
                                                                                                if (TextUtils.isEmpty(B2)) {
                                                                                                    return;
                                                                                                }
                                                                                            }
                                                                                            if (TextUtils.isEmpty(dialogWebView6.P1)) {
                                                                                                String B22 = MainUtil.B2(1);
                                                                                                dialogWebView6.P1 = B22;
                                                                                                if (TextUtils.isEmpty(B22)) {
                                                                                                    return;
                                                                                                }
                                                                                            }
                                                                                            StringBuilder sb = new StringBuilder();
                                                                                            sb.append(dialogWebView6.O1);
                                                                                            if (PrefRead.O) {
                                                                                                str = "true;";
                                                                                            } else {
                                                                                                str = "false;";
                                                                                            }
                                                                                            sb.append(str);
                                                                                            sb.append(dialogWebView6.P1);
                                                                                            MainUtil.I(dialogWebView6.J0, sb.toString(), true);
                                                                                        }
                                                                                    }

                                                                                    @Override // com.mycompany.app.wview.WebAreaView.WebAreaListener
                                                                                    public final void d() {
                                                                                        final DialogWebView dialogWebView6 = DialogWebView.this;
                                                                                        if (dialogWebView6.b0 == null || dialogWebView6.S()) {
                                                                                            return;
                                                                                        }
                                                                                        DialogGuideArea dialogGuideArea = dialogWebView6.Q1;
                                                                                        if (dialogGuideArea != null) {
                                                                                            dialogGuideArea.dismiss();
                                                                                            dialogWebView6.Q1 = null;
                                                                                        }
                                                                                        DialogGuideArea dialogGuideArea2 = new DialogGuideArea(dialogWebView6.b0, 0, new DialogGuideArea.DialogAreaListener() { // from class: com.mycompany.app.dialog.DialogWebView.60
                                                                                            @Override // com.mycompany.app.dialog.DialogGuideArea.DialogAreaListener
                                                                                            public final void b() {
                                                                                            }

                                                                                            @Override // com.mycompany.app.dialog.DialogGuideArea.DialogAreaListener
                                                                                            public final void c() {
                                                                                                DialogGuideArea dialogGuideArea3;
                                                                                                final DialogWebView dialogWebView7 = DialogWebView.this;
                                                                                                if (dialogWebView7.b0 == null || (dialogGuideArea3 = dialogWebView7.R1) != null) {
                                                                                                    return;
                                                                                                }
                                                                                                if (dialogGuideArea3 != null) {
                                                                                                    dialogGuideArea3.dismiss();
                                                                                                    dialogWebView7.R1 = null;
                                                                                                }
                                                                                                DialogGuideArea dialogGuideArea4 = new DialogGuideArea(dialogWebView7.b0, 1, null);
                                                                                                dialogWebView7.R1 = dialogGuideArea4;
                                                                                                dialogGuideArea4.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogWebView.62
                                                                                                    @Override // android.content.DialogInterface.OnDismissListener
                                                                                                    public final void onDismiss(DialogInterface dialogInterface) {
                                                                                                        int i14 = DialogWebView.k2;
                                                                                                        DialogWebView dialogWebView8 = DialogWebView.this;
                                                                                                        DialogGuideArea dialogGuideArea5 = dialogWebView8.R1;
                                                                                                        if (dialogGuideArea5 != null) {
                                                                                                            dialogGuideArea5.dismiss();
                                                                                                            dialogWebView8.R1 = null;
                                                                                                        }
                                                                                                    }
                                                                                                });
                                                                                            }
                                                                                        });
                                                                                        dialogWebView6.Q1 = dialogGuideArea2;
                                                                                        dialogGuideArea2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogWebView.61
                                                                                            @Override // android.content.DialogInterface.OnDismissListener
                                                                                            public final void onDismiss(DialogInterface dialogInterface) {
                                                                                                int i14 = DialogWebView.k2;
                                                                                                DialogWebView dialogWebView7 = DialogWebView.this;
                                                                                                DialogGuideArea dialogGuideArea3 = dialogWebView7.Q1;
                                                                                                if (dialogGuideArea3 != null) {
                                                                                                    dialogGuideArea3.dismiss();
                                                                                                    dialogWebView7.Q1 = null;
                                                                                                }
                                                                                            }
                                                                                        });
                                                                                    }
                                                                                });
                                                                                FrameLayout frameLayout4 = dialogWebView5.I0;
                                                                                WebAreaView webAreaView2 = dialogWebView5.L1;
                                                                                frameLayout4.addView(webAreaView2, webAreaView2.getViewWidth(), dialogWebView5.L1.getViewHeight());
                                                                                Handler handler3 = dialogWebView5.i;
                                                                                if (handler3 == null) {
                                                                                    return;
                                                                                }
                                                                                handler3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebView.54
                                                                                    @Override // java.lang.Runnable
                                                                                    public final void run() {
                                                                                        DialogWebView dialogWebView6 = DialogWebView.this;
                                                                                        WebAreaView webAreaView3 = dialogWebView6.L1;
                                                                                        if (webAreaView3 != null) {
                                                                                            webAreaView3.e(dialogWebView6.I0, -5678, -5678);
                                                                                            dialogWebView6.L1.setVisibility(0);
                                                                                        }
                                                                                        dialogWebView6.i2 = false;
                                                                                        if (dialogWebView6.L1 != null) {
                                                                                            dialogWebView6.i2 = true;
                                                                                            dialogWebView6.s(new AnonymousClass56());
                                                                                        }
                                                                                        dialogWebView6.h2 = false;
                                                                                    }
                                                                                });
                                                                                return;
                                                                            } catch (Exception unused) {
                                                                                dialogWebView5.h2 = false;
                                                                                return;
                                                                            }
                                                                        }
                                                                        dialogWebView5.h2 = false;
                                                                    }
                                                                });
                                                            }
                                                        }
                                                    } else {
                                                        dialogWebListener.a(i13, dialogWebView4.i0, dialogWebView4.J0.getTitle());
                                                        return true;
                                                    }
                                                }
                                                return true;
                                            }
                                        });
                                        dialogWebView3.f1 = myPopupMenu2;
                                        dialogWebView3.Y = myPopupMenu2;
                                    }
                                }
                            });
                        }
                        MyButtonImage myButtonImage12 = dialogWebView2.v1;
                        if (myButtonImage12 != null) {
                            if (MainApp.K1) {
                                myButtonImage12.setImageResource(R.drawable.outline_g_translate_dark_18);
                                dialogWebView2.v1.setBgPreColor(-12632257);
                            } else {
                                myButtonImage12.setImageResource(R.drawable.outline_g_translate_black_18);
                                dialogWebView2.v1.setBgPreColor(-2039584);
                            }
                            dialogWebView2.w1.setForeSize(MainApp.z1 + MainApp.F1);
                            dialogWebView2.v1.setVisibility(0);
                            dialogWebView2.v1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogWebView.13
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view3) {
                                    int i13 = DialogWebView.k2;
                                    final DialogWebView dialogWebView3 = DialogWebView.this;
                                    if (!dialogWebView3.S() && view3 != null && dialogWebView3.o0 != null) {
                                        dialogWebView3.W();
                                        if (dialogWebView3.f2 == null) {
                                            dialogWebView3.f2 = new WebTransControl(dialogWebView3.b0);
                                            dialogWebView3.g2 = view3;
                                            Handler handler2 = dialogWebView3.i;
                                            if (handler2 != null) {
                                                handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebView.45
                                                    @Override // java.lang.Runnable
                                                    public final void run() {
                                                        DialogWebView dialogWebView4 = DialogWebView.this;
                                                        WebTransControl webTransControl = dialogWebView4.f2;
                                                        if (webTransControl != null) {
                                                            webTransControl.b(1);
                                                        }
                                                        Handler handler3 = dialogWebView4.i;
                                                        if (handler3 == null) {
                                                            return;
                                                        }
                                                        handler3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebView.45.1
                                                            /* JADX WARN: Removed duplicated region for block: B:20:0x0080  */
                                                            /* JADX WARN: Removed duplicated region for block: B:22:0x0083 A[Catch: Exception -> 0x00e0, TryCatch #0 {Exception -> 0x00e0, blocks: (B:7:0x0019, B:9:0x001d, B:10:0x0022, B:18:0x0075, B:22:0x0083, B:32:0x0091, B:34:0x00ac, B:36:0x00b0, B:37:0x00b5, B:38:0x00b7, B:42:0x005b, B:45:0x0060, B:50:0x006c, B:55:0x0020), top: B:6:0x0019 }] */
                                                            /* JADX WARN: Removed duplicated region for block: B:34:0x00ac A[Catch: Exception -> 0x00e0, TryCatch #0 {Exception -> 0x00e0, blocks: (B:7:0x0019, B:9:0x001d, B:10:0x0022, B:18:0x0075, B:22:0x0083, B:32:0x0091, B:34:0x00ac, B:36:0x00b0, B:37:0x00b5, B:38:0x00b7, B:42:0x005b, B:45:0x0060, B:50:0x006c, B:55:0x0020), top: B:6:0x0019 }] */
                                                            @Override // java.lang.Runnable
                                                            /*
                                                                Code decompiled incorrectly, please refer to instructions dump.
                                                                To view partially-correct add '--show-bad-code' argument
                                                            */
                                                            public final void run() {
                                                                /*
                                                                    Method dump skipped, instructions count: 225
                                                                    To view this dump add '--comments-level debug' option
                                                                */
                                                                throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogWebView.AnonymousClass45.AnonymousClass1.run():void");
                                                            }
                                                        });
                                                    }
                                                });
                                            }
                                        }
                                    }
                                }
                            });
                        }
                        dialogWebView2.S0 = new GestureDetector(dialogWebView2.c0, new GestureDetector.SimpleOnGestureListener() { // from class: com.mycompany.app.dialog.DialogWebView.14
                            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
                            public final boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f3, float f4) {
                                DialogWebView dialogWebView3 = DialogWebView.this;
                                boolean z8 = dialogWebView3.f0;
                                if (dialogWebView3.J0 == null) {
                                    return false;
                                }
                                if (dialogWebView3.Y0 == 0) {
                                    int i13 = dialogWebView3.a1;
                                    if (i13 == 1) {
                                        if (f3 > 600.0f) {
                                            if (z8) {
                                                dialogWebView3.d0();
                                            } else {
                                                dialogWebView3.e0();
                                            }
                                        }
                                    } else if (i13 == 2 && f3 < -600.0f) {
                                        if (z8) {
                                            dialogWebView3.e0();
                                        } else {
                                            dialogWebView3.d0();
                                        }
                                    }
                                }
                                return super.onFling(motionEvent, motionEvent2, f3, f4);
                            }
                        });
                        if (dialogWebView2.q0 != null) {
                            dialogWebView2.q = new MyDialogBottom.ShowAdListener() { // from class: com.mycompany.app.dialog.DialogWebView.18
                                @Override // com.mycompany.app.view.MyDialogBottom.ShowAdListener
                                public final void a() {
                                    DialogWebView dialogWebView3 = DialogWebView.this;
                                    if (!dialogWebView3.s0) {
                                        dialogWebView3.s0 = true;
                                        DialogWebView.H(dialogWebView3);
                                    }
                                }
                            };
                            dialogWebView2.o0.setBackground(null);
                            dialogWebView2.q0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogWebView.15
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view3) {
                                    DialogWebView.this.dismiss();
                                }
                            });
                            MyRoundItem myRoundItem2 = dialogWebView2.v0;
                            if (MainApp.K1) {
                                i12 = -14606047;
                            }
                            myRoundItem2.setBackgroundColor(i12);
                            MyRoundItem myRoundItem3 = dialogWebView2.v0;
                            int i13 = MainApp.l1;
                            myRoundItem3.n = true;
                            myRoundItem3.o = false;
                            myRoundItem3.q = i13;
                            myRoundItem3.e();
                        }
                        dialogWebView2.U(dialogWebView2.p());
                        DialogWebViewUrlBar.a(dialogWebView2);
                        dialogWebView2.f(dialogWebView2.o0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogWebView.16
                            @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                            public final void a(View view3) {
                                final DialogWebView dialogWebView3 = DialogWebView.this;
                                if (dialogWebView3.o0 == null) {
                                    return;
                                }
                                Window window = dialogWebView3.getWindow();
                                if (window != null) {
                                    window.setDimAmount(0.6f);
                                }
                                dialogWebView3.show();
                                dialogWebView3.i.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebView.17
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        boolean z8;
                                        DialogWebView dialogWebView4 = DialogWebView.this;
                                        if (dialogWebView4.I0 != null) {
                                            WebNestView webNestView = new WebNestView(dialogWebView4.b0);
                                            dialogWebView4.J0 = webNestView;
                                            if (PrefZone.x == 0) {
                                                z8 = true;
                                            } else {
                                                z8 = false;
                                            }
                                            webNestView.setVerticalScrollBarEnabled(z8);
                                            dialogWebView4.I0.addView(dialogWebView4.J0, 0, new FrameLayout.LayoutParams(-1, -1));
                                            Handler handler2 = dialogWebView4.i;
                                            if (handler2 == null) {
                                                return;
                                            }
                                            handler2.post(new AnonymousClass27());
                                        }
                                    }
                                });
                            }
                        });
                    }
                }
            });
        }
    }

    public static void F(DialogWebView dialogWebView) {
        if (dialogWebView.A0 != null && dialogWebView.J0 != null) {
            dialogWebView.N(true);
            String Q0 = MainUtil.Q0(dialogWebView.A0, true);
            if (TextUtils.isEmpty(Q0)) {
                MainUtil.b7(dialogWebView.A0);
                MainUtil.e8(dialogWebView.c0, R.string.empty);
                return;
            }
            String Q02 = MainUtil.Q0(dialogWebView.z0, true);
            String W2 = WebViewActivity.W2(Q02, Q0);
            dialogWebView.k1 = true;
            dialogWebView.l1 = Q02;
            dialogWebView.m1 = Q0;
            dialogWebView.P();
            dialogWebView.J0.z(W2, null);
        }
    }

    public static void G(DialogWebView dialogWebView) {
        String a7;
        if (dialogWebView.F0 != null && dialogWebView.J0 != null) {
            dialogWebView.N(true);
            if (dialogWebView.g0 == 3) {
                a7 = dialogWebView.i0;
            } else {
                a7 = MainUtil.a7(MainUtil.Q0(dialogWebView.F0, false));
                if (TextUtils.isEmpty(a7)) {
                    a7 = dialogWebView.i0;
                    if (TextUtils.isEmpty(a7)) {
                        MainUtil.e8(dialogWebView.c0, R.string.empty);
                        dialogWebView.G0.setVisibility(0);
                        dialogWebView.H0.setVisibility(8);
                        return;
                    }
                }
            }
            dialogWebView.P();
            if (MainUtil.q5(a7, dialogWebView.i0)) {
                dialogWebView.J0.F();
            } else {
                dialogWebView.J0.z(MainUtil.q4(null, a7), null);
            }
        }
    }

    public static void H(DialogWebView dialogWebView) {
        MyAdFrame myAdFrame;
        if (dialogWebView.s0 && dialogWebView.t0 && (myAdFrame = dialogWebView.q0) != null && dialogWebView.r0 == null && !dialogWebView.u0) {
            dialogWebView.u0 = true;
            myAdFrame.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebView.19
                @Override // java.lang.Runnable
                public final void run() {
                    MainActivity mainActivity;
                    final DialogWebView dialogWebView2 = DialogWebView.this;
                    if (dialogWebView2.q0 != null && dialogWebView2.r0 == null && MainApp.A(dialogWebView2.c0) && (mainActivity = dialogWebView2.b0) != null) {
                        dialogWebView2.r0 = MainApp.d(mainActivity, 1, new MainApp.AdLocalListener() { // from class: com.mycompany.app.dialog.DialogWebView.20
                            @Override // com.mycompany.app.main.MainApp.AdLocalListener
                            public final void b(MyAdNative myAdNative) {
                                int i = DialogWebView.k2;
                                DialogWebView.this.b0();
                            }

                            @Override // com.mycompany.app.main.MainApp.AdLocalListener
                            public final void c(MyAdNative myAdNative) {
                                int i = DialogWebView.k2;
                                DialogWebView.this.b0();
                            }

                            @Override // com.mycompany.app.main.MainApp.AdLocalListener
                            public final void e() {
                                DialogWebView.this.dismiss();
                            }

                            @Override // com.mycompany.app.main.MainApp.AdLocalListener
                            public final void f(MyAdNative myAdNative) {
                                int i = DialogWebView.k2;
                                DialogWebView.this.b0();
                            }
                        });
                        dialogWebView2.b0();
                        dialogWebView2.q0.a(dialogWebView2.r0, true, dialogWebView2.i);
                    }
                    dialogWebView2.u0 = false;
                }
            });
        }
    }

    public static boolean I(DialogWebView dialogWebView, WebNestView webNestView, String str) {
        if (dialogWebView.L1 != null) {
            MyProgressBar myProgressBar = dialogWebView.K0;
            if (myProgressBar != null && !myProgressBar.B) {
                dialogWebView.f0(100);
            }
            return true;
        }
        if (webNestView == null || TextUtils.isEmpty(str)) {
            return false;
        }
        if (str.startsWith("http")) {
            if (!str.startsWith("://", 4) && !str.startsWith("s://", 4)) {
                try {
                    str = URLDecoder.decode(str, "UTF-8");
                } catch (Exception unused) {
                }
            }
            String str2 = str;
            if (URLUtil.isNetworkUrl(str2) && str2.endsWith(".pdf")) {
                DialogWebListener dialogWebListener = dialogWebView.d0;
                if (dialogWebListener == null) {
                    return true;
                }
                dialogWebListener.c(str2, null, "application/pdf", 0L);
                return true;
            }
            str = str2;
        } else if (str.startsWith("tel:") || str.startsWith("mailto:") || str.startsWith("sms:")) {
            MainUtil.A4(dialogWebView.b0, str);
            return true;
        }
        if (!MainUtil.a6(str)) {
            String Z1 = MainUtil.Z1(str, true);
            if (!TextUtils.isEmpty(Z1)) {
                webNestView.z(Z1, null);
                return true;
            }
        }
        return false;
    }

    public static void J(DialogWebView dialogWebView) {
        WebNestView webNestView = dialogWebView.J0;
        if (webNestView != null) {
            webNestView.j(true, -1, null);
            if (dialogWebView.J0 != null) {
                String str = dialogWebView.h1;
                if (TextUtils.isEmpty(str) || !str.equals(MainUtil.q0(dialogWebView.j0))) {
                    return;
                }
                MainUtil.J(dialogWebView.J0, dialogWebView.i1, true);
            }
        }
    }

    public final void K() {
        MyTextFast myTextFast = this.s1;
        if (myTextFast == null) {
            return;
        }
        myTextFast.setText("0 / 0");
        this.s1.setAlpha(0.4f);
        this.t1.setEnabled(false);
        this.u1.setEnabled(false);
        if (PrefZtwo.e0) {
            c0(false);
        }
        g0(true);
    }

    public final void L() {
        if (this.j1 && this.J0 != null) {
            this.n1 = false;
            this.o1 = false;
            this.p1 = 0;
            this.q1 = 0;
            this.r1 = null;
            g0(false);
            this.J0.clearMatches();
        }
    }

    public final void M() {
        this.f18633c = false;
        if (this.c0 == null) {
            return;
        }
        O();
        DialogGuideArea dialogGuideArea = this.Q1;
        if (dialogGuideArea != null) {
            dialogGuideArea.dismiss();
            this.Q1 = null;
        }
        DialogGuideArea dialogGuideArea2 = this.R1;
        if (dialogGuideArea2 != null) {
            dialogGuideArea2.dismiss();
            this.R1 = null;
        }
        DialogEditArea dialogEditArea = this.S1;
        if (dialogEditArea != null) {
            dialogEditArea.dismiss();
            this.S1 = null;
        }
        MyPopupMenu myPopupMenu = this.f1;
        if (myPopupMenu != null) {
            this.Y = null;
            myPopupMenu.a();
            this.f1 = null;
        }
        WebNestView webNestView = this.J0;
        if (webNestView != null) {
            MainUtil.F(webNestView, true);
            this.J0 = null;
        }
        MyDialogRelative myDialogRelative = this.o0;
        if (myDialogRelative != null) {
            myDialogRelative.c();
            this.o0 = null;
        }
        MyRoundItem myRoundItem = this.v0;
        if (myRoundItem != null) {
            myRoundItem.b();
            this.v0 = null;
        }
        MyRoundView myRoundView = this.x0;
        if (myRoundView != null) {
            myRoundView.a();
            this.x0 = null;
        }
        MyRoundView myRoundView2 = this.y0;
        if (myRoundView2 != null) {
            myRoundView2.a();
            this.y0 = null;
        }
        MyButtonImage myButtonImage = this.B0;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.B0 = null;
        }
        MyRoundView myRoundView3 = this.E0;
        if (myRoundView3 != null) {
            myRoundView3.a();
            this.E0 = null;
        }
        MyButtonImage myButtonImage2 = this.G0;
        if (myButtonImage2 != null) {
            myButtonImage2.j();
            this.G0 = null;
        }
        MyButtonImage myButtonImage3 = this.H0;
        if (myButtonImage3 != null) {
            myButtonImage3.j();
            this.H0 = null;
        }
        MyProgressBar myProgressBar = this.K0;
        if (myProgressBar != null) {
            myProgressBar.f();
            this.K0 = null;
        }
        MyScrollBar myScrollBar = this.L0;
        if (myScrollBar != null) {
            myScrollBar.k();
            this.L0 = null;
        }
        WebUpView webUpView = this.M0;
        if (webUpView != null) {
            webUpView.e();
            this.M0 = null;
        }
        MyScrollNavi myScrollNavi = this.N0;
        if (myScrollNavi != null) {
            myScrollNavi.g();
            this.N0 = null;
        }
        MyScrollNavi myScrollNavi2 = this.O0;
        if (myScrollNavi2 != null) {
            myScrollNavi2.g();
            this.O0 = null;
        }
        MyLineText myLineText = this.P0;
        if (myLineText != null) {
            myLineText.u();
            this.P0 = null;
        }
        MyLineText myLineText2 = this.Q0;
        if (myLineText2 != null) {
            myLineText2.u();
            this.Q0 = null;
        }
        MyButtonImage myButtonImage4 = this.R0;
        if (myButtonImage4 != null) {
            myButtonImage4.j();
            this.R0 = null;
        }
        MyButtonImage myButtonImage5 = this.t1;
        if (myButtonImage5 != null) {
            myButtonImage5.j();
            this.t1 = null;
        }
        MyButtonImage myButtonImage6 = this.u1;
        if (myButtonImage6 != null) {
            myButtonImage6.j();
            this.u1 = null;
        }
        W();
        MyButtonImage myButtonImage7 = this.v1;
        if (myButtonImage7 != null) {
            myButtonImage7.j();
            this.v1 = null;
        }
        MyCoverView myCoverView = this.w1;
        if (myCoverView != null) {
            myCoverView.i();
            this.w1 = null;
        }
        this.x1 = null;
        this.D1 = null;
        this.E1 = null;
        this.F1 = null;
        this.b0 = null;
        this.c0 = null;
        this.d0 = null;
        this.e0 = null;
        this.j0 = null;
        this.k0 = null;
        this.l0 = null;
        this.n0 = null;
        this.w0 = null;
        this.z0 = null;
        this.A0 = null;
        this.C0 = null;
        this.D0 = null;
        this.F0 = null;
        this.I0 = null;
        this.S0 = null;
        this.h1 = null;
        this.i1 = null;
        this.l1 = null;
        this.m1 = null;
        this.r1 = null;
        this.s1 = null;
        this.J1 = null;
        this.K1 = null;
        super.dismiss();
    }

    public final void N(boolean z) {
        if (this.L1 != null) {
            if (z) {
                MainUtil.I(this.J0, "(function(){window.sblast=null;window.sbchkc=false;myClr();document.removeEventListener('touchstart',myTc1);document.removeEventListener('touchmove',myTc2);document.removeEventListener('touchend',myTc3);})();", true);
            }
            MyDialogRelative myDialogRelative = this.o0;
            if (myDialogRelative == null) {
                return;
            }
            myDialogRelative.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebView.55
                @Override // java.lang.Runnable
                public final void run() {
                    DialogWebView dialogWebView = DialogWebView.this;
                    WebAreaView webAreaView = dialogWebView.L1;
                    if (webAreaView != null) {
                        webAreaView.b();
                        FrameLayout frameLayout = dialogWebView.I0;
                        if (frameLayout != null) {
                            frameLayout.removeView(dialogWebView.L1);
                        }
                        dialogWebView.L1 = null;
                        dialogWebView.N1 = null;
                        dialogWebView.O1 = null;
                        dialogWebView.P1 = null;
                        WebNestView webNestView = dialogWebView.J0;
                        if (webNestView != null) {
                            webNestView.setOnTouchListener(null);
                        }
                    }
                }
            });
        }
    }

    public final void O() {
        DialogTransLang dialogTransLang = this.I1;
        if (dialogTransLang != null) {
            dialogTransLang.dismiss();
            this.I1 = null;
        }
    }

    public final void P() {
        if (this.F0 == null) {
            return;
        }
        MyEditPure myEditPure = this.z0;
        if (myEditPure != null) {
            if (myEditPure.hasFocus()) {
                this.z0.clearFocus();
                MainUtil.X4(this.c0, this.z0);
                return;
            } else if (this.A0.hasFocus()) {
                this.A0.clearFocus();
                MainUtil.X4(this.c0, this.A0);
                return;
            }
        }
        this.F0.clearFocus();
        MainUtil.X4(this.c0, this.F0);
    }

    public final void Q() {
        MyCoverView myCoverView = this.w1;
        if (myCoverView == null) {
            return;
        }
        myCoverView.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebView.39
            @Override // java.lang.Runnable
            public final void run() {
                DialogWebView dialogWebView = DialogWebView.this;
                MyCoverView myCoverView2 = dialogWebView.w1;
                if (myCoverView2 == null) {
                    return;
                }
                myCoverView2.setVisibility(8);
                dialogWebView.w1.i();
                dialogWebView.w1 = null;
            }
        });
    }

    public final void R() {
        WebTransControl webTransControl = this.y1;
        if (webTransControl != null) {
            webTransControl.g(false);
        }
    }

    public final boolean S() {
        if (this.I1 != null || this.Q1 != null || this.R1 != null || this.S1 != null || this.y1 != null) {
            return true;
        }
        return false;
    }

    public final boolean T() {
        boolean z = false;
        if (this.j1 && !TextUtils.isEmpty(this.m1)) {
            String str = this.j0;
            if (!TextUtils.isEmpty(str) && str.endsWith("dcinside.com")) {
                String str2 = this.i0;
                if (!TextUtils.isEmpty(str2) && !str2.startsWith("https://m.dcinside.com/gallog/")) {
                    z = true;
                }
            }
        }
        if (!z) {
            L();
        }
        return z;
    }

    public final void U(boolean z) {
        if (this.q0 == null) {
            return;
        }
        if (z) {
            z = q();
        }
        if (z) {
            MyAdNative myAdNative = this.r0;
            if (myAdNative != null) {
                myAdNative.setVisibility(8);
            }
            this.q0.setVisibility(8);
            return;
        }
        MyAdNative myAdNative2 = this.r0;
        if (myAdNative2 != null) {
            if (myAdNative2.p()) {
                this.r0.setVisibility(0);
            } else {
                this.r0.setVisibility(8);
            }
        }
        this.q0.setVisibility(0);
    }

    public final void V() {
        WebNestView webNestView = this.J0;
        if (webNestView != null) {
            webNestView.C();
        }
    }

    public final void W() {
        ViewGroup viewGroup;
        FrameLayout frameLayout = this.z1;
        WebTransControl webTransControl = this.y1;
        this.z1 = null;
        this.y1 = null;
        if (frameLayout != null) {
            try {
                if (this.p0) {
                    viewGroup = this.v0;
                } else {
                    viewGroup = this.o0;
                }
                if (viewGroup != null) {
                    viewGroup.removeView(frameLayout);
                }
            } catch (Exception unused) {
                return;
            }
        }
        if (webTransControl != null) {
            webTransControl.c();
        }
    }

    public final void X() {
        WebNestView webNestView = this.J0;
        if (webNestView != null) {
            webNestView.onResume();
        }
    }

    public final void Y(boolean z) {
        this.A1 = !z;
        if (z) {
            MainUtil.L7(this.J0, "restore");
        } else {
            MainUtil.L7(this.J0, "confirm");
        }
    }

    public final void Z(String str) {
        this.A1 = true;
        if (!TextUtils.isEmpty(str)) {
            this.E1 = str;
        } else {
            this.E1 = PrefAlbum.y;
        }
        MainUtil.O7(this.J0, "onTransUser");
    }

    public final void a0(boolean z, boolean z2) {
        if (this.Y0 == 0 && this.J0 != null) {
            this.Y0 = 2;
            this.Z0 = 0;
            this.a1 = 0;
            this.b1 = false;
            this.c1 = 0;
            this.d1 = 0;
            this.e1 = false;
            if (z) {
                if (this.f0) {
                    if (z2) {
                        MyScrollNavi myScrollNavi = this.N0;
                        if (myScrollNavi != null) {
                            myScrollNavi.c();
                        }
                        MyScrollNavi myScrollNavi2 = this.O0;
                        if (myScrollNavi2 != null) {
                            myScrollNavi2.c();
                            return;
                        }
                        return;
                    }
                    MyScrollNavi myScrollNavi3 = this.N0;
                    if (myScrollNavi3 != null) {
                        myScrollNavi3.c();
                    }
                    MyScrollNavi myScrollNavi4 = this.O0;
                    if (myScrollNavi4 != null) {
                        myScrollNavi4.c();
                        return;
                    }
                    return;
                }
                if (z2) {
                    MyScrollNavi myScrollNavi5 = this.N0;
                    if (myScrollNavi5 != null) {
                        myScrollNavi5.c();
                    }
                    MyScrollNavi myScrollNavi6 = this.O0;
                    if (myScrollNavi6 != null) {
                        myScrollNavi6.c();
                        return;
                    }
                    return;
                }
                MyScrollNavi myScrollNavi7 = this.N0;
                if (myScrollNavi7 != null) {
                    myScrollNavi7.c();
                }
                MyScrollNavi myScrollNavi8 = this.O0;
                if (myScrollNavi8 != null) {
                    myScrollNavi8.c();
                    return;
                }
                return;
            }
            MyScrollNavi myScrollNavi9 = this.N0;
            if (myScrollNavi9 != null) {
                myScrollNavi9.c();
            }
            MyScrollNavi myScrollNavi10 = this.O0;
            if (myScrollNavi10 != null) {
                myScrollNavi10.c();
            }
        }
    }

    public final void b0() {
        MyAdNative myAdNative;
        int i;
        if (this.q0 != null && (myAdNative = this.r0) != null) {
            if (!myAdNative.p()) {
                U(p());
                return;
            }
            MyDialogRelative myDialogRelative = this.o0;
            if (MainApp.K1) {
                i = -14606047;
            } else {
                i = -1;
            }
            myDialogRelative.setBackgroundColor(i);
            this.q0.setOnClickListener(null);
            this.r0.setDarkMode(true);
            U(p());
        }
    }

    public final void c0(boolean z) {
        MyButtonImage myButtonImage = this.t1;
        if (myButtonImage == null) {
            return;
        }
        myButtonImage.setNoti(z);
        this.u1.setNoti(z);
    }

    public final boolean d0() {
        a0(true, false);
        WebNestView webNestView = this.J0;
        if (webNestView == null || !webNestView.canGoForward()) {
            return false;
        }
        this.J0.goForward();
        return true;
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        if (!this.T1) {
            this.T1 = true;
            if (this.q0 == null) {
                M();
                return;
            }
            Handler handler = this.i;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebView.21
                @Override // java.lang.Runnable
                public final void run() {
                    DialogWebView dialogWebView = DialogWebView.this;
                    MyAdFrame myAdFrame = dialogWebView.q0;
                    if (myAdFrame != null) {
                        myAdFrame.f = null;
                        dialogWebView.q0 = null;
                        MainApp.f(dialogWebView.c0, 1);
                    }
                    dialogWebView.r0 = null;
                    Handler handler2 = dialogWebView.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebView.21.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogWebView dialogWebView2 = DialogWebView.this;
                            int i = DialogWebView.k2;
                            dialogWebView2.M();
                        }
                    });
                }
            });
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x001a, code lost:
    
        if (r1 != 3) goto L181;
     */
    /* JADX WARN: Removed duplicated region for block: B:137:0x01b5  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0111  */
    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.view.Window.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean dispatchTouchEvent(android.view.MotionEvent r13) {
        /*
            Method dump skipped, instructions count: 601
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogWebView.dispatchTouchEvent(android.view.MotionEvent):boolean");
    }

    public final boolean e0() {
        a0(true, true);
        WebNestView webNestView = this.J0;
        if (webNestView == null || !webNestView.canGoBack()) {
            return false;
        }
        this.J0.goBack();
        return true;
    }

    public final void f0(int i) {
        this.Z1 = i;
        MyProgressBar myProgressBar = this.K0;
        if (myProgressBar != null) {
            if (this.L1 != null) {
                myProgressBar.setSkipDraw(true);
                this.G0.setVisibility(0);
                this.H0.setVisibility(8);
                return;
            }
            int round = Math.round(myProgressBar.getProgress());
            if (i == 100 && round == 100) {
                this.K0.setSkipDraw(true);
                this.G0.setVisibility(0);
                this.H0.setVisibility(8);
                return;
            }
            this.G0.setVisibility(8);
            this.H0.setVisibility(0);
            MyProgressBar myProgressBar2 = this.K0;
            if (myProgressBar2.B) {
                myProgressBar2.setProgress(0.0f);
                this.K0.setSkipDraw(false);
                f0(Math.max(i, 50));
            } else if (round < i) {
                myProgressBar2.setProgress(round + 3);
                Runnable runnable = this.a2;
                if (runnable != null) {
                    this.K0.removeCallbacks(runnable);
                    this.K0.post(runnable);
                }
            }
        }
    }

    public final void g0(boolean z) {
        MyTextFast myTextFast = this.s1;
        if (myTextFast == null) {
            return;
        }
        if (z) {
            myTextFast.setVisibility(0);
            this.t1.setVisibility(0);
            this.u1.setVisibility(0);
        } else {
            myTextFast.setVisibility(8);
            this.t1.setVisibility(8);
            this.u1.setVisibility(8);
        }
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
        if (this.y1 != null) {
            R();
            return;
        }
        if (this.L1 != null) {
            N(true);
            return;
        }
        WebNestView webNestView = this.J0;
        if (webNestView != null && webNestView.canGoBack()) {
            this.J0.goBack();
        } else {
            dismiss();
        }
    }

    /* loaded from: classes3.dex */
    public class LocalWebViewClient extends WebViewClient {
        public LocalWebViewClient() {
        }

        @Override // android.webkit.WebViewClient
        public final void doUpdateVisitedHistory(WebView webView, String str, boolean z) {
            MyEditPure myEditPure;
            String w4;
            DialogWebView dialogWebView = DialogWebView.this;
            boolean z2 = false;
            if (!MainUtil.q5(dialogWebView.i0, str)) {
                if (!MainUtil.m6(str) || !MainUtil.n6(str) || MainUtil.l6(str)) {
                    w4 = null;
                } else {
                    w4 = MainUtil.w4(str);
                }
                if (!TextUtils.isEmpty(w4) && !w4.equals(dialogWebView.n0)) {
                    z2 = true;
                }
                dialogWebView.n0 = w4;
            }
            dialogWebView.i0 = str;
            dialogWebView.j0 = MainUtil.I1(str, true);
            if (dialogWebView.g0 != 3 && (myEditPure = dialogWebView.F0) != null && !myEditPure.isFocused()) {
                dialogWebView.F0.setText(dialogWebView.i0);
            }
            if (z2) {
                WebNestView webNestView = dialogWebView.J0;
                if (webNestView == null) {
                    return;
                }
                webNestView.reload();
                return;
            }
            if (dialogWebView.A1) {
                dialogWebView.Q();
                dialogWebView.Z(null);
            }
            dialogWebView.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebView.LocalWebViewClient.5
                @Override // java.lang.Runnable
                public final void run() {
                    DialogWebView.J(DialogWebView.this);
                }
            });
        }

        @Override // android.webkit.WebViewClient
        public final void onPageFinished(WebView webView, String str) {
            MyEditPure myEditPure;
            final DialogWebView dialogWebView = DialogWebView.this;
            WebNestView webNestView = dialogWebView.J0;
            if (webNestView == null) {
                return;
            }
            webNestView.setWebLoading(false);
            DialogWebView.C(dialogWebView, str);
            if (!dialogWebView.X1 && !TextUtils.isEmpty(str) && !str.equals(dialogWebView.Y1)) {
                dialogWebView.X1 = true;
                dialogWebView.Y1 = str;
                Handler handler = dialogWebView.i;
                if (handler != null) {
                    handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebView.33
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogWebView dialogWebView2 = DialogWebView.this;
                            MainUtil.l(dialogWebView2.J0);
                            dialogWebView2.X1 = false;
                        }
                    });
                }
            }
            dialogWebView.i0 = str;
            dialogWebView.j0 = MainUtil.I1(str, true);
            dialogWebView.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebView.LocalWebViewClient.3
                @Override // java.lang.Runnable
                public final void run() {
                    DialogWebView dialogWebView2;
                    WebNestView webNestView2;
                    LocalWebViewClient localWebViewClient = LocalWebViewClient.this;
                    DialogWebView.J(DialogWebView.this);
                    if (PrefWeb.o && (webNestView2 = (dialogWebView2 = DialogWebView.this).J0) != null) {
                        webNestView2.L(dialogWebView2.i0, dialogWebView2.j0, false);
                    }
                    DialogWebView.B(DialogWebView.this);
                }
            });
            if (PrefWeb.H) {
                dialogWebView.J0.i(dialogWebView.i0, dialogWebView.j0, true);
            }
            if (dialogWebView.g0 != 3 && (myEditPure = dialogWebView.F0) != null && !myEditPure.isFocused()) {
                dialogWebView.F0.setText(dialogWebView.i0);
            }
            if (dialogWebView.A1) {
                dialogWebView.Q();
                dialogWebView.Z(null);
            }
            dialogWebView.J0.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebView.LocalWebViewClient.4
                @Override // java.lang.Runnable
                public final void run() {
                    DialogWebView dialogWebView2 = DialogWebView.this;
                    DialogWebView.D(dialogWebView2);
                    if (dialogWebView2.s1 != null && dialogWebView2.J0 != null && dialogWebView2.T() && dialogWebView2.p1 < 4) {
                        dialogWebView2.n1 = true;
                        dialogWebView2.o1 = false;
                        dialogWebView2.p1 = 0;
                        dialogWebView2.q1 = 0;
                        dialogWebView2.r1 = null;
                        dialogWebView2.J0.findAllAsync(dialogWebView2.m1);
                    }
                }
            });
        }

        @Override // android.webkit.WebViewClient
        public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            MyEditPure myEditPure;
            DialogWebView dialogWebView = DialogWebView.this;
            WebNestView webNestView = dialogWebView.J0;
            if (webNestView == null) {
                return;
            }
            webNestView.setWebLoading(true);
            DialogWebView.C(dialogWebView, str);
            dialogWebView.i0 = str;
            dialogWebView.j0 = MainUtil.I1(str, true);
            dialogWebView.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebView.LocalWebViewClient.1
                @Override // java.lang.Runnable
                public final void run() {
                    DialogWebView dialogWebView2;
                    WebNestView webNestView2;
                    LocalWebViewClient localWebViewClient = LocalWebViewClient.this;
                    DialogWebView.J(DialogWebView.this);
                    if (PrefWeb.o && (webNestView2 = (dialogWebView2 = DialogWebView.this).J0) != null) {
                        webNestView2.L(dialogWebView2.i0, dialogWebView2.j0, false);
                    }
                    DialogWebView.this.N(false);
                    DialogWebView.B(DialogWebView.this);
                }
            });
            if (PrefWeb.H) {
                dialogWebView.J0.i(dialogWebView.i0, dialogWebView.j0, false);
            }
            if (dialogWebView.g0 != 3 && (myEditPure = dialogWebView.F0) != null && !myEditPure.isFocused()) {
                dialogWebView.F0.setText(dialogWebView.i0);
            }
            dialogWebView.J0.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebView.LocalWebViewClient.2
                @Override // java.lang.Runnable
                public final void run() {
                    Handler handler;
                    final DialogWebView dialogWebView2 = DialogWebView.this;
                    DialogWebView.D(dialogWebView2);
                    dialogWebView2.L();
                    if (!dialogWebView2.T() || (handler = dialogWebView2.i) == null) {
                        return;
                    }
                    handler.postDelayed(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebView.25
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogWebView dialogWebView3 = DialogWebView.this;
                            if (!dialogWebView3.n1 && dialogWebView3.J0 != null && dialogWebView3.T()) {
                                dialogWebView3.J0.findAllAsync(dialogWebView3.m1);
                            }
                        }
                    }, 1000L);
                }
            });
        }

        @Override // android.webkit.WebViewClient
        public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            final DialogWebView dialogWebView = DialogWebView.this;
            dialogWebView.J0 = null;
            MainUtil.D(webView, renderProcessGoneDetail);
            Handler handler = dialogWebView.i;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebView.34
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogWebView.this.dismiss();
                    }
                });
                return true;
            }
            return true;
        }

        @Override // android.webkit.WebViewClient
        public final WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
            WebClean webClean;
            WebResourceResponse j;
            WebResourceResponse v1;
            DialogWebView dialogWebView = DialogWebView.this;
            if (dialogWebView.J0 != null && webResourceRequest != null && webResourceRequest.getUrl() != null) {
                String uri = webResourceRequest.getUrl().toString();
                DialogWebView.C(dialogWebView, uri);
                if (PrefZone.k && (v1 = MainUtil.v1(dialogWebView.c0, uri)) != null) {
                    return v1;
                }
                if (PrefWeb.o) {
                    if (!MainUtil.q5(dialogWebView.l0, dialogWebView.i0)) {
                        dialogWebView.l0 = dialogWebView.i0;
                        dialogWebView.m0 = DataBookAds.l(dialogWebView.c0).n(dialogWebView.i0, dialogWebView.j0);
                    }
                    if (!dialogWebView.m0 && (webClean = dialogWebView.K1) != null && (j = webClean.j(dialogWebView.c0, webView, webResourceRequest, dialogWebView.i0, dialogWebView.j0, uri, 0)) != null) {
                        return j;
                    }
                }
            }
            return null;
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
            DialogWebView dialogWebView = DialogWebView.this;
            if (dialogWebView.J0 == null || TextUtils.isEmpty(str)) {
                return true;
            }
            DialogWebView.C(dialogWebView, str);
            if (DialogWebView.I(dialogWebView, dialogWebView.J0, str)) {
                return true;
            }
            dialogWebView.J0.z(str, null);
            return true;
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            DialogWebView dialogWebView = DialogWebView.this;
            if (dialogWebView.J0 == null || webResourceRequest == null || webResourceRequest.getUrl() == null) {
                return true;
            }
            String uri = webResourceRequest.getUrl().toString();
            if (TextUtils.isEmpty(uri)) {
                return true;
            }
            DialogWebView.C(dialogWebView, uri);
            return DialogWebView.I(dialogWebView, dialogWebView.J0, uri);
        }
    }
}
