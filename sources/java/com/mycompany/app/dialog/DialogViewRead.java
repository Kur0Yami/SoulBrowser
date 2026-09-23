package com.mycompany.app.dialog;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.speech.tts.TextToSpeech;
import android.speech.tts.UtteranceProgressListener;
import android.text.TextUtils;
import android.view.ActionMode;
import android.view.GestureDetector;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.Window;
import android.webkit.JavascriptInterface;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceRequest;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.api.client.http.HttpStatusCodes;
import com.mycompany.app.data.DataTrans;
import com.mycompany.app.dialog.DialogConfirm;
import com.mycompany.app.dialog.DialogDownPage;
import com.mycompany.app.dialog.DialogPrintPage;
import com.mycompany.app.dialog.DialogSeekAudio;
import com.mycompany.app.dialog.DialogSetDesk;
import com.mycompany.app.dialog.DialogTransLang;
import com.mycompany.app.image.ImageSizeListener;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.MainTransText;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefAlbum;
import com.mycompany.app.pref.PrefPdf;
import com.mycompany.app.pref.PrefRead;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.pref.PrefTts;
import com.mycompany.app.pref.PrefWeb;
import com.mycompany.app.pref.PrefZone;
import com.mycompany.app.pref.PrefZtri;
import com.mycompany.app.pref.PrefZtwo;
import com.mycompany.app.quick.QuickAdapter;
import com.mycompany.app.setting.SettingFont;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyAdFrame;
import com.mycompany.app.view.MyAdNative;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyCoverView;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogRelative;
import com.mycompany.app.view.MyFadeFrame;
import com.mycompany.app.view.MyFadeListener;
import com.mycompany.app.view.MyFadeText;
import com.mycompany.app.view.MyPopupAdapter;
import com.mycompany.app.view.MyPopupMenu;
import com.mycompany.app.view.MyProgressBar;
import com.mycompany.app.view.MyRoundItem;
import com.mycompany.app.view.MyScrollBar;
import com.mycompany.app.view.MySnackbar;
import com.mycompany.app.view.MyWebBody;
import com.mycompany.app.web.WebNestView;
import com.mycompany.app.web.WebReadTask;
import com.mycompany.app.web.WebTransControl;
import com.mycompany.app.web.WebVideoFrame;
import com.mycompany.app.web.WebVideoImage;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.ExecutorService;

/* loaded from: classes3.dex */
public class DialogViewRead extends FrameLayout {
    public static final /* synthetic */ int S2 = 0;
    public View A;
    public String A0;
    public MyButtonImage A1;
    public String A2;
    public MyScrollBar B;
    public String B0;
    public MyButtonImage B1;
    public int B2;
    public MyFadeFrame C;
    public String C0;
    public boolean C1;
    public final Runnable C2;
    public RelativeLayout D;
    public MyPopupMenu D0;
    public boolean D1;
    public boolean D2;
    public LinearLayout E;
    public MyPopupMenu E0;
    public RelativeLayout.LayoutParams E1;
    public final Runnable E2;
    public LinearLayout F;
    public DialogPrintPage F0;
    public RectF F1;
    public WebVideoImage F2;
    public MyButtonImage G;
    public DialogSaveSource G0;
    public int G1;
    public int G2;
    public MyButtonImage H;
    public boolean H0;
    public Paint H1;
    public boolean H2;
    public MyButtonImage I;
    public DialogSeekBright I0;
    public boolean I1;
    public String I2;
    public MyButtonImage J;
    public DialogSeekText J0;
    public int J1;
    public String J2;
    public MyButtonImage K;
    public DialogSeekAudio K0;
    public int K1;
    public WebTransControl K2;
    public MyButtonImage L;
    public DialogSetTts L0;
    public int L1;
    public String L2;
    public MyButtonImage M;
    public DialogConfirm M0;
    public int M1;
    public String M2;
    public MyButtonImage N;
    public DialogViewTrans N0;
    public int N1;
    public MySnackbar N2;
    public MyButtonImage O;
    public boolean O0;
    public int O1;
    public boolean O2;
    public MyButtonImage P;
    public int P0;
    public int P1;
    public float P2;
    public MyButtonImage Q;
    public String Q0;
    public int Q1;
    public boolean Q2;
    public MyFadeText R;
    public boolean R0;
    public int R1;
    public final Runnable R2;
    public MyCoverView S;
    public boolean S0;
    public int S1;
    public WebVideoImage T;
    public String T0;
    public boolean T1;
    public MyFadeFrame U;
    public int U0;
    public View U1;
    public GestureDetector V;
    public String V0;
    public MyDialogBottom V1;
    public ScaleGestureDetector W;
    public ActionMode W0;
    public MyDialogRelative W1;
    public boolean X0;
    public WebTransControl X1;
    public boolean Y0;
    public boolean Y1;
    public List Z0;
    public boolean Z1;
    public String a0;
    public boolean a1;
    public boolean a2;
    public String b0;
    public int b1;
    public String b2;

    /* renamed from: c, reason: collision with root package name */
    public boolean f15086c;
    public String c0;
    public int c1;
    public int c2;
    public boolean d0;
    public int d1;
    public boolean d2;
    public boolean e0;
    public int e1;
    public String e2;
    public MainActivity f;
    public boolean f0;
    public int f1;
    public String f2;
    public Context g;
    public WebReadTask g0;
    public boolean g1;
    public String g2;
    public Handler h;
    public boolean h0;
    public boolean h1;
    public String h2;
    public final boolean i;
    public boolean i0;
    public ValueAnimator i1;
    public int i2;
    public DialogReadListener j;
    public boolean j0;
    public ValueAnimator j1;
    public int j2;
    public MyWebBody k;
    public TextToSpeech k0;
    public ValueAnimator k1;
    public DialogTransLang k2;
    public boolean l;
    public float l0;
    public boolean l1;
    public boolean l2;
    public MyAdFrame m;
    public float m0;
    public int m1;
    public MainTransText m2;
    public MyAdNative n;
    public String n0;
    public int n1;
    public Rect n2;
    public boolean o;
    public String o0;
    public int o1;
    public ArrayList o2;
    public boolean p;
    public ArrayList p0;
    public int p1;
    public float p2;
    public boolean q;
    public int q0;
    public int q1;
    public boolean q2;
    public MyButtonImage r;
    public int r0;
    public int r1;
    public final Runnable r2;
    public MyButtonImage s;
    public boolean s0;
    public ExecutorService s1;
    public float s2;
    public MyButtonImage t;
    public int t0;
    public boolean t1;
    public boolean t2;
    public MyButtonImage u;
    public int u0;
    public boolean u1;
    public final Runnable u2;
    public MyButtonImage v;
    public boolean v0;
    public int v1;
    public String v2;
    public MyButtonImage w;
    public int w0;
    public FrameLayout w1;
    public List w2;
    public MyRoundItem x;
    public int x0;
    public MyButtonImage x1;
    public List x2;
    public WebNestView y;
    public int y0;
    public MyButtonImage y1;
    public final Runnable y2;
    public MyProgressBar z;
    public boolean z0;
    public MyButtonImage z1;
    public boolean z2;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.dialog.DialogViewRead$10, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass10 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.dialog.DialogViewRead$120, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass120 implements Runnable {
        public AnonymousClass120() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            int i = DialogViewRead.S2;
            DialogViewRead.this.q0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.dialog.DialogViewRead$121, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass121 extends ViewOutlineProvider {
        @Override // android.view.ViewOutlineProvider
        public final void getOutline(View view, Outline outline) {
            if (view != null && outline != null) {
                outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), MainApp.E1);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.dialog.DialogViewRead$16, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass16 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.dialog.DialogViewRead$17, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass17 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.dialog.DialogViewRead$18, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass18 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* renamed from: com.mycompany.app.dialog.DialogViewRead$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass2 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.dialog.DialogViewRead$20, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass20 implements View.OnClickListener {
        public AnonymousClass20() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            DialogViewRead dialogViewRead = DialogViewRead.this;
            MyButtonImage myButtonImage = dialogViewRead.s;
            if (myButtonImage == null || dialogViewRead.t1) {
                return;
            }
            dialogViewRead.t1 = true;
            myButtonImage.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewRead.20.1
                @Override // java.lang.Runnable
                public final void run() {
                    DialogViewRead dialogViewRead2 = DialogViewRead.this;
                    if (dialogViewRead2.s == null) {
                        return;
                    }
                    dialogViewRead2.N();
                    dialogViewRead2.T();
                    dialogViewRead2.S();
                    dialogViewRead2.M();
                    dialogViewRead2.s.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewRead.20.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            AnonymousClass20 anonymousClass20 = AnonymousClass20.this;
                            DialogViewRead.this.setMiniMode(true);
                            DialogViewRead.this.t1 = false;
                        }
                    });
                }
            });
        }
    }

    /* renamed from: com.mycompany.app.dialog.DialogViewRead$39, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass39 implements Runnable {

        /* renamed from: com.mycompany.app.dialog.DialogViewRead$39$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 implements Runnable {
            public AnonymousClass1() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                Handler handler;
                DialogViewRead dialogViewRead = DialogViewRead.this;
                DialogViewRead.e(dialogViewRead);
                if (dialogViewRead.w1 != null || (handler = dialogViewRead.h) == null) {
                    return;
                }
                handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewRead.39.1.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        Handler handler2;
                        AnonymousClass39 anonymousClass39 = AnonymousClass39.this;
                        DialogViewRead.f(DialogViewRead.this);
                        DialogViewRead dialogViewRead2 = DialogViewRead.this;
                        if (dialogViewRead2.y != null || (handler2 = dialogViewRead2.h) == null) {
                            return;
                        }
                        handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewRead.39.1.1.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                DialogViewRead.g(DialogViewRead.this);
                            }
                        });
                    }
                });
            }
        }

        public AnonymousClass39() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            Handler handler;
            DialogViewRead dialogViewRead = DialogViewRead.this;
            if (dialogViewRead.i1 != null) {
                dialogViewRead.i1 = null;
                if (dialogViewRead.f15086c) {
                    dialogViewRead.setValAnimShow(1.0f);
                    dialogViewRead.invalidate();
                    if (!dialogViewRead.o) {
                        dialogViewRead.o = true;
                        DialogViewRead.h(dialogViewRead);
                    }
                    if ((dialogViewRead.D != null && dialogViewRead.w1 != null && dialogViewRead.y != null) || (handler = dialogViewRead.h) == null) {
                        return;
                    }
                    handler.post(new AnonymousClass1());
                }
            }
        }
    }

    /* renamed from: com.mycompany.app.dialog.DialogViewRead$53, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass53 implements ValueCallback<String> {
        public AnonymousClass53() {
        }

        @Override // android.webkit.ValueCallback
        public final void onReceiveValue(String str) {
            DialogReadListener dialogReadListener;
            WebNestView a2;
            String str2 = str;
            final DialogViewRead dialogViewRead = DialogViewRead.this;
            if (!dialogViewRead.S0 && (dialogReadListener = dialogViewRead.j) != null && (a2 = dialogReadListener.a()) != null) {
                dialogViewRead.c0 = MainUtil.X6(str2);
                if (MainUtil.D5(dialogViewRead.a0)) {
                    a2.evaluateJavascript("document.documentElement.innerHTML", new ValueCallback<String>() { // from class: com.mycompany.app.dialog.DialogViewRead.54
                        @Override // android.webkit.ValueCallback
                        public final void onReceiveValue(String str3) {
                            DialogViewRead dialogViewRead2 = DialogViewRead.this;
                            dialogViewRead2.v2 = str3;
                            dialogViewRead2.k0(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewRead.54.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    AnonymousClass54 anonymousClass54 = AnonymousClass54.this;
                                    DialogViewRead dialogViewRead3 = DialogViewRead.this;
                                    String str4 = dialogViewRead3.v2;
                                    dialogViewRead3.v2 = null;
                                    if (dialogViewRead3.j == null) {
                                        return;
                                    }
                                    DialogViewRead.this.setReadHtml(MainUtil.k8(MainUtil.X6(str4)));
                                }
                            });
                        }
                    });
                } else {
                    MainUtil.I(a2, "(function(){android.onReadHtml(document.documentElement.innerHTML);})();", true);
                }
            }
        }
    }

    /* renamed from: com.mycompany.app.dialog.DialogViewRead$69, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass69 implements Runnable {
        public AnonymousClass69() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            DialogViewRead dialogViewRead = DialogViewRead.this;
            dialogViewRead.x2 = dialogViewRead.getTextList();
            Handler handler = dialogViewRead.h;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewRead.69.1
                @Override // java.lang.Runnable
                public final void run() {
                    final DialogViewRead dialogViewRead2 = DialogViewRead.this;
                    List list = dialogViewRead2.x2;
                    dialogViewRead2.x2 = null;
                    dialogViewRead2.R();
                    if (dialogViewRead2.f == null || dialogViewRead2.a0()) {
                        return;
                    }
                    DialogSaveSource dialogSaveSource = dialogViewRead2.G0;
                    if (dialogSaveSource != null) {
                        dialogSaveSource.dismiss();
                        dialogViewRead2.G0 = null;
                    }
                    if (list != null && !list.isEmpty()) {
                        DialogSaveSource dialogSaveSource2 = new DialogSaveSource(dialogViewRead2.f, dialogViewRead2.b0, null, list, new DialogDownPage.DownPageListener() { // from class: com.mycompany.app.dialog.DialogViewRead.70
                            @Override // com.mycompany.app.dialog.DialogDownPage.DownPageListener
                            public final void a(String str, final String str2, Bitmap bitmap) {
                                Handler handler2;
                                final DialogViewRead dialogViewRead3 = DialogViewRead.this;
                                if (dialogViewRead3.C1 || (handler2 = dialogViewRead3.h) == null) {
                                    return;
                                }
                                handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewRead.110
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        DialogViewRead dialogViewRead4 = DialogViewRead.this;
                                        if (dialogViewRead4.C1 || !dialogViewRead4.f15086c) {
                                            return;
                                        }
                                        MainUtil.c();
                                        MySnackbar mySnackbar = dialogViewRead4.N2;
                                        if (mySnackbar != null) {
                                            mySnackbar.i(false);
                                            dialogViewRead4.N2 = null;
                                        }
                                        dialogViewRead4.N2 = new MySnackbar(dialogViewRead4.f);
                                        if (TextUtils.isEmpty(str2)) {
                                            dialogViewRead4.N2.v(dialogViewRead4, R.string.save_fail, new MySnackbar.SnackbarListener() { // from class: com.mycompany.app.dialog.DialogViewRead.110.1
                                                @Override // com.mycompany.app.view.MySnackbar.SnackbarListener
                                                public final void a() {
                                                }

                                                @Override // com.mycompany.app.view.MySnackbar.SnackbarListener
                                                public final void b() {
                                                }

                                                @Override // com.mycompany.app.view.MySnackbar.SnackbarListener
                                                public final void c() {
                                                }

                                                @Override // com.mycompany.app.view.MySnackbar.SnackbarListener
                                                public final void onDismiss() {
                                                    DialogViewRead.this.N2 = null;
                                                }
                                            });
                                        } else {
                                            dialogViewRead4.N2.w(dialogViewRead4, R.string.save_success, 1, new MySnackbar.SnackbarListener() { // from class: com.mycompany.app.dialog.DialogViewRead.110.2
                                                @Override // com.mycompany.app.view.MySnackbar.SnackbarListener
                                                public final void a() {
                                                }

                                                @Override // com.mycompany.app.view.MySnackbar.SnackbarListener
                                                public final void b() {
                                                }

                                                @Override // com.mycompany.app.view.MySnackbar.SnackbarListener
                                                public final void c() {
                                                    AnonymousClass110 anonymousClass110 = AnonymousClass110.this;
                                                    MainUtil.d(DialogViewRead.this.f, str2, "text/plain", true, false);
                                                }

                                                @Override // com.mycompany.app.view.MySnackbar.SnackbarListener
                                                public final void onDismiss() {
                                                    DialogViewRead.this.N2 = null;
                                                }
                                            });
                                        }
                                    }
                                });
                            }
                        });
                        dialogViewRead2.G0 = dialogSaveSource2;
                        dialogSaveSource2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogViewRead.71
                            @Override // android.content.DialogInterface.OnDismissListener
                            public final void onDismiss(DialogInterface dialogInterface) {
                                int i = DialogViewRead.S2;
                                DialogViewRead dialogViewRead3 = DialogViewRead.this;
                                DialogSaveSource dialogSaveSource3 = dialogViewRead3.G0;
                                if (dialogSaveSource3 != null) {
                                    dialogSaveSource3.dismiss();
                                    dialogViewRead3.G0 = null;
                                }
                            }
                        });
                        return;
                    }
                    MainUtil.e8(dialogViewRead2.g, R.string.empty);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.dialog.DialogViewRead$84, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass84 implements Runnable {

        /* renamed from: com.mycompany.app.dialog.DialogViewRead$84$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 implements Runnable {
            public AnonymousClass1() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                DialogViewRead dialogViewRead = DialogViewRead.this;
                WebNestView webNestView = dialogViewRead.y;
                if (webNestView != null) {
                    dialogViewRead.setWebSettin2(webNestView);
                    Handler handler = dialogViewRead.h;
                    if (handler == null) {
                        return;
                    }
                    handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewRead.84.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            AnonymousClass84 anonymousClass84 = AnonymousClass84.this;
                            DialogViewRead dialogViewRead2 = DialogViewRead.this;
                            WebNestView webNestView2 = dialogViewRead2.y;
                            if (webNestView2 != null) {
                                dialogViewRead2.setWebSettin3(webNestView2);
                                Handler handler2 = DialogViewRead.this.h;
                                if (handler2 == null) {
                                    return;
                                }
                                handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewRead.84.1.1.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        DialogReadListener dialogReadListener;
                                        WebNestView a2;
                                        DialogViewRead dialogViewRead3 = DialogViewRead.this;
                                        if (dialogViewRead3.y != null) {
                                            boolean z = dialogViewRead3.S0;
                                            if (z) {
                                                if (z && dialogViewRead3.g0 != null) {
                                                    dialogViewRead3.C0();
                                                    dialogViewRead3.g0.w();
                                                    return;
                                                }
                                                return;
                                            }
                                            if (!z && (dialogReadListener = dialogViewRead3.j) != null && (a2 = dialogReadListener.a()) != null) {
                                                dialogViewRead3.C0();
                                                a2.evaluateJavascript("document.documentElement.lang", new AnonymousClass53());
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

        public AnonymousClass84() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            DialogViewRead dialogViewRead = DialogViewRead.this;
            WebNestView webNestView = dialogViewRead.y;
            if (webNestView != null) {
                dialogViewRead.setWebSetting(webNestView);
                Handler handler = dialogViewRead.h;
                if (handler == null) {
                    return;
                }
                handler.post(new AnonymousClass1());
            }
        }
    }

    /* renamed from: com.mycompany.app.dialog.DialogViewRead$91, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass91 implements Runnable {

        /* renamed from: com.mycompany.app.dialog.DialogViewRead$91$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 implements Runnable {
            public AnonymousClass1() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                DialogViewRead dialogViewRead = DialogViewRead.this;
                if (dialogViewRead.T != null && dialogViewRead.f15086c) {
                    if (!MainApp.K1) {
                        dialogViewRead.setWindowColor(-16777216);
                    }
                    Handler handler = dialogViewRead.h;
                    if (handler == null) {
                        return;
                    }
                    handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewRead.91.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            AnonymousClass91 anonymousClass91 = AnonymousClass91.this;
                            DialogViewRead dialogViewRead2 = DialogViewRead.this;
                            if (dialogViewRead2.T != null && dialogViewRead2.f15086c) {
                                dialogViewRead2.y0(-16777216, false);
                                Handler handler2 = DialogViewRead.this.h;
                                if (handler2 == null) {
                                    return;
                                }
                                handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewRead.91.1.1.1
                                    /* JADX WARN: Multi-variable type inference failed */
                                    /* JADX WARN: Type inference failed for: r0v5, types: [com.mycompany.app.web.WebVideoFrame$VideoFrameListener, java.lang.Object] */
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        DialogViewRead dialogViewRead3 = DialogViewRead.this;
                                        WebVideoImage webVideoImage = dialogViewRead3.T;
                                        if (webVideoImage == 0 || !dialogViewRead3.f15086c) {
                                            return;
                                        }
                                        webVideoImage.a(null, false, new Object());
                                    }
                                });
                            }
                        }
                    });
                }
            }
        }

        public AnonymousClass91() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            DialogViewRead dialogViewRead = DialogViewRead.this;
            if (dialogViewRead.T != null && dialogViewRead.f15086c) {
                dialogViewRead.G0();
                Handler handler = dialogViewRead.h;
                if (handler == null) {
                    return;
                }
                handler.post(new AnonymousClass1());
            }
        }
    }

    /* renamed from: com.mycompany.app.dialog.DialogViewRead$92, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass92 implements WebVideoFrame.VideoFrameListener {
        @Override // com.mycompany.app.web.WebVideoFrame.VideoFrameListener
        public final void a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.dialog.DialogViewRead$93, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass93 implements Runnable {

        /* renamed from: com.mycompany.app.dialog.DialogViewRead$93$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 implements Runnable {

            /* renamed from: com.mycompany.app.dialog.DialogViewRead$93$1$1, reason: invalid class name and collision with other inner class name */
            /* loaded from: classes3.dex */
            class RunnableC01021 implements Runnable {

                /* renamed from: com.mycompany.app.dialog.DialogViewRead$93$1$1$1, reason: invalid class name and collision with other inner class name */
                /* loaded from: classes3.dex */
                class RunnableC01031 implements Runnable {

                    /* renamed from: com.mycompany.app.dialog.DialogViewRead$93$1$1$1$1, reason: invalid class name and collision with other inner class name */
                    /* loaded from: classes3.dex */
                    class RunnableC01041 implements Runnable {
                        public RunnableC01041() {
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            RunnableC01021 runnableC01021 = RunnableC01021.this;
                            DialogViewRead dialogViewRead = DialogViewRead.this;
                            if (dialogViewRead.T == null && dialogViewRead.f15086c) {
                                if (!MainApp.K1) {
                                    dialogViewRead.setWindowColor(-1);
                                }
                                Handler handler = DialogViewRead.this.h;
                                if (handler == null) {
                                    return;
                                }
                                handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewRead.93.1.1.1.1.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        RunnableC01031 runnableC01031 = RunnableC01031.this;
                                        DialogViewRead dialogViewRead2 = DialogViewRead.this;
                                        if (dialogViewRead2.T == null && dialogViewRead2.f15086c) {
                                            WebNestView webNestView = dialogViewRead2.y;
                                            if (webNestView != null) {
                                                webNestView.clearFocus();
                                            }
                                            Handler handler2 = DialogViewRead.this.h;
                                            if (handler2 == null) {
                                                return;
                                            }
                                            handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewRead.93.1.1.1.1.1.1
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    int i;
                                                    DialogViewRead dialogViewRead3 = DialogViewRead.this;
                                                    if (dialogViewRead3.T != null || !dialogViewRead3.f15086c) {
                                                        return;
                                                    }
                                                    boolean z = MainApp.K1;
                                                    if (z) {
                                                        i = -16777216;
                                                    } else {
                                                        i = -1;
                                                    }
                                                    dialogViewRead3.y0(i, z);
                                                }
                                            });
                                        }
                                    }
                                });
                            }
                        }
                    }

                    public RunnableC01031() {
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                        DialogViewRead dialogViewRead = DialogViewRead.this;
                        if (dialogViewRead.T == null && dialogViewRead.f15086c) {
                            MainUtil.N6(dialogViewRead.G2, dialogViewRead.f, dialogViewRead.H2);
                            Handler handler = DialogViewRead.this.h;
                            if (handler == null) {
                                return;
                            }
                            handler.post(new RunnableC01041());
                        }
                    }
                }

                public RunnableC01021() {
                }

                @Override // java.lang.Runnable
                public final void run() {
                    AnonymousClass93 anonymousClass93 = AnonymousClass93.this;
                    DialogViewRead dialogViewRead = DialogViewRead.this;
                    if (dialogViewRead.T != null || !dialogViewRead.f15086c) {
                        return;
                    }
                    MainActivity mainActivity = dialogViewRead.f;
                    boolean z = dialogViewRead.H2;
                    if (mainActivity != null && !z) {
                        MainUtil.g7(mainActivity.getWindow(), PrefPdf.o, PrefPdf.n);
                    }
                    DialogViewRead.this.k0(new RunnableC01031());
                }
            }

            public AnonymousClass1() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                DialogViewRead dialogViewRead = DialogViewRead.this;
                if (dialogViewRead.T == null && dialogViewRead.f15086c) {
                    MainUtil.O6(dialogViewRead.y, dialogViewRead.G2, dialogViewRead.H2);
                    Handler handler = dialogViewRead.h;
                    if (handler == null) {
                        return;
                    }
                    handler.post(new RunnableC01021());
                }
            }
        }

        public AnonymousClass93() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            DialogViewRead dialogViewRead = DialogViewRead.this;
            WebVideoImage webVideoImage = dialogViewRead.F2;
            dialogViewRead.F2 = null;
            if (webVideoImage != null) {
                webVideoImage.t();
            }
            Handler handler = dialogViewRead.h;
            if (handler == null) {
                return;
            }
            handler.post(new AnonymousClass1());
        }
    }

    /* renamed from: com.mycompany.app.dialog.DialogViewRead$98, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass98 implements Runnable {

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ String f15234c;

        public AnonymousClass98(String str) {
            this.f15234c = str;
        }

        @Override // java.lang.Runnable
        public final void run() {
            MainUtil.M7(DialogViewRead.this.y, this.f15234c);
        }
    }

    /* loaded from: classes3.dex */
    public interface DialogReadListener {
        WebNestView a();

        void b(String str);

        void c(String str);

        void d();

        void e(int i, int i2, int i3);

        void f(WebView webView, String str);

        void g();

        boolean h();
    }

    /* loaded from: classes3.dex */
    public class LocalChromeClient extends WebChromeClient {
        public LocalChromeClient() {
        }

        @Override // android.webkit.WebChromeClient
        public final void onHideCustomView() {
            int i = DialogViewRead.S2;
            DialogViewRead.this.W();
        }

        @Override // android.webkit.WebChromeClient
        public final void onProgressChanged(WebView webView, int i) {
            DialogViewRead dialogViewRead = DialogViewRead.this;
            if (!dialogViewRead.S0) {
                dialogViewRead.setProgressBar(i);
            }
        }

        @Override // android.webkit.WebChromeClient
        public final void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
            if (view == null) {
                int i = DialogViewRead.S2;
                return;
            }
            DialogViewRead dialogViewRead = DialogViewRead.this;
            if (dialogViewRead.T != null) {
                if (customViewCallback != null) {
                    customViewCallback.onCustomViewHidden();
                }
            } else if (dialogViewRead.y != null) {
                WebVideoImage webVideoImage = new WebVideoImage(dialogViewRead.f);
                dialogViewRead.T = webVideoImage;
                webVideoImage.b(dialogViewRead.f, dialogViewRead, dialogViewRead.y, dialogViewRead.a0, 6, view, customViewCallback);
                Handler handler = dialogViewRead.h;
                if (handler == null) {
                    return;
                }
                handler.post(new AnonymousClass91());
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class TtsItem {

        /* renamed from: a, reason: collision with root package name */
        public int f15241a;
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public String f15242c;
    }

    /* loaded from: classes3.dex */
    public class WebAppInterface {
        public WebAppInterface() {
        }

        @JavascriptInterface
        public void onJsResult(String str, final String str2) {
            if (!TextUtils.isEmpty(str)) {
                boolean equals = str.equals("onTransList");
                final DialogViewRead dialogViewRead = DialogViewRead.this;
                if (equals) {
                    if (dialogViewRead.y != null && !TextUtils.isEmpty(str2)) {
                        dialogViewRead.I2 = str2;
                        dialogViewRead.k0(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewRead.96
                            @Override // java.lang.Runnable
                            public final void run() {
                                DialogViewRead dialogViewRead2 = DialogViewRead.this;
                                String str3 = dialogViewRead2.I2;
                                dialogViewRead2.I2 = null;
                                if (dialogViewRead2.y == null) {
                                    return;
                                }
                                MainUtil.P7(dialogViewRead2.g, str3);
                            }
                        });
                        return;
                    }
                    return;
                }
                if (str.equals("onTransClass")) {
                    if (dialogViewRead.y != null) {
                        if ("0".equals(str2)) {
                            dialogViewRead.g2 = "-";
                            return;
                        }
                        if (TextUtils.isEmpty(str2)) {
                            dialogViewRead.g2 = "-";
                            return;
                        } else {
                            if (TextUtils.isEmpty(dialogViewRead.g2)) {
                                dialogViewRead.J2 = str2;
                                dialogViewRead.k0(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewRead.97
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        DialogViewRead dialogViewRead2 = DialogViewRead.this;
                                        String str3 = dialogViewRead2.J2;
                                        dialogViewRead2.J2 = null;
                                        if (dialogViewRead2.y != null && TextUtils.isEmpty(dialogViewRead2.g2)) {
                                            dialogViewRead2.g2 = MainUtil.K3(str3);
                                            String str4 = dialogViewRead2.g2;
                                            if (str4 != null && str4.length() > 2) {
                                                MainUtil.Z4(dialogViewRead2.y, str4);
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
                    Handler handler = dialogViewRead.h;
                    if (handler != null) {
                        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewRead.63
                            @Override // java.lang.Runnable
                            public final void run() {
                                String[] split2;
                                WebNestView webNestView;
                                int i = DialogViewRead.S2;
                                DialogViewRead dialogViewRead2 = DialogViewRead.this;
                                dialogViewRead2.getClass();
                                String str3 = str2;
                                if (!TextUtils.isEmpty(str3) && (split2 = str3.split(",")) != null && split2.length == 2) {
                                    int round = Math.round(MainUtil.G(dialogViewRead2.g, MainUtil.F6(split2[0], -1.0f)));
                                    int round2 = Math.round(MainUtil.G(dialogViewRead2.g, MainUtil.F6(split2[1], -1.0f)));
                                    if (round != -1 && round2 != -1 && (webNestView = dialogViewRead2.y) != null) {
                                        int scrollY = webNestView.getScrollY() - MainApp.E1;
                                        int i2 = MainApp.G1;
                                        int i3 = (scrollY - i2) + round;
                                        int i4 = i2 + scrollY + round2;
                                        int max = Math.max(0, i3 - dialogViewRead2.v1);
                                        if (max < scrollY) {
                                            dialogViewRead2.y.scrollTo(0, max);
                                            return;
                                        }
                                        int min = Math.min(i3, i4 - (dialogViewRead2.x.getHeight() - (MainApp.F1 * 15)));
                                        if (min > scrollY) {
                                            dialogViewRead2.y.scrollTo(0, min);
                                        }
                                    }
                                }
                            }
                        });
                        return;
                    }
                    return;
                }
                if (str.equals("onPartPlay")) {
                    dialogViewRead.L2 = str2;
                    Handler handler2 = dialogViewRead.h;
                    if (handler2 != null) {
                        handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewRead.108
                            @Override // java.lang.Runnable
                            public final void run() {
                                DialogViewRead dialogViewRead2 = DialogViewRead.this;
                                String str3 = dialogViewRead2.L2;
                                dialogViewRead2.L2 = null;
                                dialogViewRead2.setPartPlay(str3);
                                dialogViewRead2.M();
                            }
                        });
                        return;
                    }
                    return;
                }
                if (str.equals("onActionTrans")) {
                    dialogViewRead.M2 = str2;
                    Handler handler3 = dialogViewRead.h;
                    if (handler3 != null) {
                        handler3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewRead.109
                            @Override // java.lang.Runnable
                            public final void run() {
                                DialogViewRead dialogViewRead2 = DialogViewRead.this;
                                String str3 = dialogViewRead2.M2;
                                dialogViewRead2.M2 = null;
                                DialogViewRead.E(dialogViewRead2, str3);
                                dialogViewRead2.M();
                            }
                        });
                    }
                }
            }
        }

        @JavascriptInterface
        public void onObserDet(String str, int i) {
            boolean z = true;
            DialogViewRead dialogViewRead = DialogViewRead.this;
            if (i == 0) {
                dialogViewRead.c2 = 1;
            } else {
                dialogViewRead.c2 = 3;
                if (i != 2) {
                    z = false;
                }
                dialogViewRead.d2 = z;
                dialogViewRead.e2 = str;
                if (TextUtils.isEmpty(PrefAlbum.y)) {
                    PrefAlbum.y = str;
                    PrefAlbum.z = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                    PrefAlbum.u(dialogViewRead.g);
                }
                if (MainUtil.q5(dialogViewRead.f2, str)) {
                    dialogViewRead.f2 = null;
                }
            }
            dialogViewRead.l2 = false;
            Handler handler = dialogViewRead.h;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewRead.WebAppInterface.1
                @Override // java.lang.Runnable
                public final void run() {
                    WebNestView webNestView;
                    View view;
                    final DialogViewRead dialogViewRead2 = DialogViewRead.this;
                    if (dialogViewRead2.g != null) {
                        dialogViewRead2.R();
                        if (dialogViewRead2.f15086c && (view = dialogViewRead2.U1) != null) {
                            if (view != null) {
                                if (MainApp.K1) {
                                    view.setBackgroundResource(R.drawable.trans_logo_short_back_dark);
                                } else {
                                    view.setBackgroundResource(R.drawable.trans_logo_short_back_color);
                                }
                            }
                            if (dialogViewRead2.c2 == 3 && dialogViewRead2.d2) {
                                if (dialogViewRead2.U1.getVisibility() != 0) {
                                    dialogViewRead2.j2 = 0;
                                    dialogViewRead2.U1.setAlpha(1.0f);
                                    dialogViewRead2.U1.setTranslationY(0.0f);
                                    dialogViewRead2.U1.setVisibility(0);
                                }
                            } else {
                                dialogViewRead2.U1.setVisibility(8);
                            }
                        }
                        WebTransControl webTransControl = dialogViewRead2.X1;
                        if (webTransControl != null) {
                            webTransControl.f(dialogViewRead2.e2, dialogViewRead2.c2, dialogViewRead2.d2);
                        }
                        if (dialogViewRead2.Y0) {
                            DialogViewRead.F(dialogViewRead2);
                        } else {
                            dialogViewRead2.G0();
                        }
                        if (dialogViewRead2.c2 != 1) {
                            String str2 = dialogViewRead2.f2;
                            dialogViewRead2.f2 = null;
                            if (!TextUtils.isEmpty(str2)) {
                                if (!TextUtils.isEmpty(str2)) {
                                    dialogViewRead2.k0(new AnonymousClass98(str2));
                                }
                            } else if (!TextUtils.isEmpty(PrefAlbum.y) && (webNestView = dialogViewRead2.y) != null) {
                                webNestView.evaluateJavascript("document.cookie", new ValueCallback<String>() { // from class: com.mycompany.app.dialog.DialogViewRead.95
                                    @Override // android.webkit.ValueCallback
                                    public final void onReceiveValue(String str3) {
                                        String L3 = MainUtil.L3(str3);
                                        if (!TextUtils.isEmpty(L3) && !L3.equals(PrefAlbum.z)) {
                                            PrefAlbum.z = L3;
                                            PrefSet.c(0, DialogViewRead.this.g, "mTransCode", L3);
                                        }
                                    }
                                });
                            }
                            Context context = dialogViewRead2.g;
                            if (context != null && !DataTrans.a(context).b()) {
                                MainUtil.M3(dialogViewRead2.y);
                            }
                            if (!TextUtils.isEmpty(dialogViewRead2.g2)) {
                                return;
                            }
                            MainUtil.N7(dialogViewRead2.y);
                        }
                    }
                }
            });
        }
    }

    public DialogViewRead(Context context) {
        super(context);
        this.r2 = new Runnable() { // from class: com.mycompany.app.dialog.DialogViewRead.37
            @Override // java.lang.Runnable
            public final void run() {
                DialogViewRead dialogViewRead = DialogViewRead.this;
                dialogViewRead.q2 = false;
                if (dialogViewRead.i1 != null) {
                    dialogViewRead.setValAnimShow(dialogViewRead.p2);
                }
            }
        };
        this.u2 = new Runnable() { // from class: com.mycompany.app.dialog.DialogViewRead.43
            @Override // java.lang.Runnable
            public final void run() {
                DialogViewRead dialogViewRead = DialogViewRead.this;
                dialogViewRead.t2 = false;
                if (dialogViewRead.j1 != null) {
                    dialogViewRead.setValAnimHide(dialogViewRead.s2);
                }
            }
        };
        this.y2 = new Runnable() { // from class: com.mycompany.app.dialog.DialogViewRead.80
            @Override // java.lang.Runnable
            public final void run() {
                int i;
                DialogViewRead dialogViewRead = DialogViewRead.this;
                if (!dialogViewRead.s0 || (i = dialogViewRead.w0) == -1234) {
                    return;
                }
                dialogViewRead.w0 = -1234;
                dialogViewRead.z0 = false;
                if (dialogViewRead.r0 == 2) {
                    dialogViewRead.q0 = i - 1;
                    dialogViewRead.F0(false);
                } else {
                    dialogViewRead.B0(dialogViewRead.x0, dialogViewRead.y0, dialogViewRead.q0, false);
                }
            }
        };
        this.C2 = new Runnable() { // from class: com.mycompany.app.dialog.DialogViewRead.89
            @Override // java.lang.Runnable
            public final void run() {
                DialogViewRead dialogViewRead = DialogViewRead.this;
                dialogViewRead.setProgressBar(dialogViewRead.B2);
            }
        };
        this.E2 = new Runnable() { // from class: com.mycompany.app.dialog.DialogViewRead.90
            @Override // java.lang.Runnable
            public final void run() {
                DialogViewRead dialogViewRead = DialogViewRead.this;
                MyScrollBar myScrollBar = dialogViewRead.B;
                if (myScrollBar != null) {
                    myScrollBar.p(0, 0);
                }
                dialogViewRead.D2 = false;
            }
        };
        this.R2 = new Runnable() { // from class: com.mycompany.app.dialog.DialogViewRead.116
            @Override // java.lang.Runnable
            public final void run() {
                DialogViewRead dialogViewRead = DialogViewRead.this;
                dialogViewRead.Q2 = false;
                if (dialogViewRead.k1 != null) {
                    dialogViewRead.setValAnimMini(dialogViewRead.P2);
                }
            }
        };
        this.f15086c = true;
        this.g = context;
        this.h = new Handler(Looper.getMainLooper());
        this.i = MainUtil.O5(this.g);
        if (Build.VERSION.SDK_INT >= 29) {
            this.n2 = new Rect();
            ArrayList arrayList = new ArrayList();
            this.o2 = arrayList;
            arrayList.add(this.n2);
        }
    }

    public static void D(DialogViewRead dialogViewRead) {
        MyFadeFrame myFadeFrame;
        if (dialogViewRead.s0 || (myFadeFrame = dialogViewRead.C) == null) {
            return;
        }
        if (!dialogViewRead.C1 && dialogViewRead.k1 == null) {
            dialogViewRead.o0();
            dialogViewRead.C.h(true);
        } else {
            myFadeFrame.d(false);
        }
    }

    public static void E(DialogViewRead dialogViewRead, String str) {
        if (dialogViewRead.f == null || dialogViewRead.a0()) {
            return;
        }
        DialogViewTrans dialogViewTrans = dialogViewRead.N0;
        String str2 = null;
        if (dialogViewTrans != null) {
            dialogViewTrans.dismiss();
            dialogViewRead.N0 = null;
        }
        if (!TextUtils.isEmpty(str) && !str.equals("\"\"")) {
            if (dialogViewRead.r0 == 1) {
                dialogViewRead.d0(true);
            }
            if (dialogViewRead.S0) {
                Locale newsLocale = dialogViewRead.getNewsLocale();
                if (newsLocale != null) {
                    str2 = newsLocale.toString();
                }
            } else if (!TextUtils.isEmpty(dialogViewRead.c0)) {
                str2 = dialogViewRead.c0;
            }
            DialogViewTrans dialogViewTrans2 = new DialogViewTrans(dialogViewRead.f, str, str2, dialogViewRead.e2);
            dialogViewRead.N0 = dialogViewTrans2;
            dialogViewTrans2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogViewRead.81
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    Handler handler;
                    int i = DialogViewRead.S2;
                    DialogViewRead dialogViewRead2 = DialogViewRead.this;
                    DialogViewTrans dialogViewTrans3 = dialogViewRead2.N0;
                    if (dialogViewTrans3 != null) {
                        dialogViewTrans3.dismiss();
                        dialogViewRead2.N0 = null;
                    }
                    dialogViewRead2.f2 = PrefAlbum.y;
                    if (dialogViewRead2.r0 == 2 && (handler = dialogViewRead2.h) != null) {
                        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewRead.81.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                DialogViewRead dialogViewRead3 = DialogViewRead.this;
                                if (!dialogViewRead3.f15086c) {
                                    return;
                                }
                                dialogViewRead3.j0();
                            }
                        });
                    }
                }
            });
            return;
        }
        MainUtil.e8(dialogViewRead.g, R.string.empty);
    }

    public static void F(DialogViewRead dialogViewRead) {
        List list;
        if (dialogViewRead.Y0 && dialogViewRead.e0 && !dialogViewRead.j0 && dialogViewRead.f15086c && (list = dialogViewRead.Z0) != null && !list.isEmpty()) {
            if (!PrefRead.M || dialogViewRead.d2) {
                dialogViewRead.h.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewRead.64
                    @Override // java.lang.Runnable
                    public final void run() {
                        List list2;
                        DialogViewRead dialogViewRead2 = DialogViewRead.this;
                        if (dialogViewRead2.Y0 && dialogViewRead2.e0 && !dialogViewRead2.j0 && dialogViewRead2.f15086c && (list2 = dialogViewRead2.Z0) != null && !list2.isEmpty()) {
                            if (!PrefRead.M || dialogViewRead2.d2) {
                                dialogViewRead2.Y0 = false;
                                if (dialogViewRead2.r0 == 0) {
                                    dialogViewRead2.a1 = false;
                                    if (dialogViewRead2.d2 && !dialogViewRead2.l2) {
                                        dialogViewRead2.L(false);
                                    } else {
                                        dialogViewRead2.F0(true);
                                    }
                                    MyFadeFrame myFadeFrame = dialogViewRead2.C;
                                    if (myFadeFrame != null) {
                                        myFadeFrame.d(true);
                                    }
                                }
                            }
                        }
                    }
                });
            }
        }
    }

    public static void a(DialogViewRead dialogViewRead, String str) {
        if (dialogViewRead.y != null) {
            if (MainUtil.D5(str)) {
                if (dialogViewRead.a2) {
                    dialogViewRead.a2 = false;
                    WebNestView webNestView = dialogViewRead.y;
                    if (webNestView != null) {
                        webNestView.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewRead.87
                            @Override // java.lang.Runnable
                            public final void run() {
                                DialogViewRead dialogViewRead2 = DialogViewRead.this;
                                WebNestView webNestView2 = dialogViewRead2.y;
                                if (webNestView2 == null) {
                                    return;
                                }
                                dialogViewRead2.a2 = false;
                                webNestView2.removeJavascriptInterface("android");
                            }
                        });
                        return;
                    }
                    return;
                }
                return;
            }
            if (!dialogViewRead.a2) {
                dialogViewRead.a2 = true;
                WebNestView webNestView2 = dialogViewRead.y;
                if (webNestView2 == null) {
                    return;
                }
                webNestView2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewRead.88
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogViewRead dialogViewRead2 = DialogViewRead.this;
                        WebNestView webNestView3 = dialogViewRead2.y;
                        if (webNestView3 == null) {
                            return;
                        }
                        dialogViewRead2.a2 = true;
                        webNestView3.addJavascriptInterface(new WebAppInterface(), "android");
                    }
                });
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v10, types: [android.view.View$OnClickListener, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v11, types: [android.view.View$OnClickListener, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v9, types: [android.view.View$OnClickListener, java.lang.Object] */
    public static void e(DialogViewRead dialogViewRead) {
        MyFadeFrame myFadeFrame;
        MainActivity mainActivity;
        if (dialogViewRead.D != null || (myFadeFrame = dialogViewRead.C) == null || (mainActivity = dialogViewRead.f) == null) {
            return;
        }
        int i = R.id.read_icon_open;
        int i2 = R.id.read_icon_save;
        int i3 = R.id.read_icon_reset;
        int i4 = R.id.read_icon_more;
        int i5 = MainApp.b1;
        int i6 = MainApp.G1;
        if (MainUtil.C6()) {
            int G = (int) MainUtil.G(mainActivity, 28.0f);
            i5 += G;
            i6 += G;
        }
        dialogViewRead.v1 = i5;
        RelativeLayout relativeLayout = new RelativeLayout(mainActivity);
        myFadeFrame.addView(relativeLayout, -1, dialogViewRead.v1);
        MyButtonImage myButtonImage = new MyButtonImage(mainActivity);
        ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_INSIDE;
        myButtonImage.setScaleType(scaleType);
        myButtonImage.setBgPreRadius(MainApp.k1);
        int i7 = MainApp.g1;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i7, i7);
        layoutParams.topMargin = i6;
        layoutParams.setMarginStart(MainApp.G1);
        relativeLayout.addView(myButtonImage, layoutParams);
        MyButtonImage myButtonImage2 = new MyButtonImage(mainActivity);
        myButtonImage2.setScaleType(scaleType);
        myButtonImage2.setBgPreRadius(MainApp.k1);
        int i8 = MainApp.g1;
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(i8, i8);
        layoutParams2.addRule(16, i);
        layoutParams2.topMargin = i6;
        relativeLayout.addView(myButtonImage2, layoutParams2);
        MyButtonImage myButtonImage3 = new MyButtonImage(mainActivity);
        myButtonImage3.setId(i);
        myButtonImage3.setScaleType(scaleType);
        myButtonImage3.setBgPreRadius(MainApp.k1);
        if (!dialogViewRead.S0) {
            myButtonImage3.setVisibility(8);
        }
        int i9 = MainApp.g1;
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(i9, i9);
        layoutParams3.addRule(16, i2);
        layoutParams3.topMargin = i6;
        relativeLayout.addView(myButtonImage3, layoutParams3);
        MyButtonImage myButtonImage4 = new MyButtonImage(mainActivity);
        myButtonImage4.setId(i2);
        myButtonImage4.setScaleType(scaleType);
        myButtonImage4.setBgPreRadius(MainApp.k1);
        int i10 = MainApp.g1;
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(i10, i10);
        layoutParams4.addRule(16, i3);
        layoutParams4.topMargin = i6;
        relativeLayout.addView(myButtonImage4, layoutParams4);
        MyButtonImage myButtonImage5 = new MyButtonImage(mainActivity);
        myButtonImage5.setId(i3);
        myButtonImage5.setScaleType(scaleType);
        myButtonImage5.setBgPreRadius(MainApp.k1);
        int i11 = MainApp.g1;
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(i11, i11);
        layoutParams5.addRule(16, i4);
        layoutParams5.topMargin = i6;
        relativeLayout.addView(myButtonImage5, layoutParams5);
        MyButtonImage myButtonImage6 = new MyButtonImage(mainActivity);
        myButtonImage6.setId(i4);
        myButtonImage6.setScaleType(scaleType);
        myButtonImage6.setBgPreRadius(MainApp.k1);
        int i12 = MainApp.g1;
        RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(i12, i12);
        layoutParams6.addRule(21);
        layoutParams6.topMargin = i6;
        relativeLayout.addView(myButtonImage6, layoutParams6);
        LinearLayout linearLayout = new LinearLayout(mainActivity);
        linearLayout.setBaselineAligned(false);
        linearLayout.setOrientation(0);
        linearLayout.setVisibility(8);
        int G2 = (int) MainUtil.G(mainActivity, 80.0f);
        FrameLayout.LayoutParams layoutParams7 = new FrameLayout.LayoutParams(-1, G2);
        layoutParams7.gravity = 80;
        myFadeFrame.addView(linearLayout, layoutParams7);
        View view = new View(mainActivity);
        LinearLayout.LayoutParams layoutParams8 = new LinearLayout.LayoutParams(0, MainApp.g1);
        layoutParams8.gravity = 8388627;
        layoutParams8.weight = 1.0f;
        linearLayout.addView(view, layoutParams8);
        MyButtonImage myButtonImage7 = new MyButtonImage(mainActivity);
        myButtonImage7.setScaleType(scaleType);
        myButtonImage7.l(MainApp.j1, true);
        myButtonImage7.setBgPreRadius(MainApp.k1);
        int i13 = MainApp.g1;
        LinearLayout.LayoutParams layoutParams9 = new LinearLayout.LayoutParams(i13, i13);
        layoutParams9.gravity = 8388627;
        linearLayout.addView(myButtonImage7, layoutParams9);
        View view2 = new View(mainActivity);
        LinearLayout.LayoutParams layoutParams10 = new LinearLayout.LayoutParams(0, MainApp.g1);
        layoutParams10.gravity = 8388627;
        layoutParams10.weight = 1.0f;
        linearLayout.addView(view2, layoutParams10);
        MyButtonImage myButtonImage8 = new MyButtonImage(mainActivity);
        myButtonImage8.setScaleType(scaleType);
        myButtonImage8.l(MainApp.j1, true);
        myButtonImage8.setBgPreRadius(MainApp.k1);
        int i14 = MainApp.g1;
        LinearLayout.LayoutParams layoutParams11 = new LinearLayout.LayoutParams(i14, i14);
        layoutParams11.gravity = 8388627;
        linearLayout.addView(myButtonImage8, layoutParams11);
        View view3 = new View(mainActivity);
        LinearLayout.LayoutParams layoutParams12 = new LinearLayout.LayoutParams(0, MainApp.g1);
        layoutParams12.gravity = 8388627;
        layoutParams12.weight = 1.0f;
        linearLayout.addView(view3, layoutParams12);
        MyButtonImage myButtonImage9 = new MyButtonImage(mainActivity);
        myButtonImage9.setScaleType(scaleType);
        myButtonImage9.l(MainApp.j1, true);
        myButtonImage9.setBgPreRadius(MainApp.k1);
        int i15 = MainApp.g1;
        LinearLayout.LayoutParams layoutParams13 = new LinearLayout.LayoutParams(i15, i15);
        layoutParams13.gravity = 8388627;
        linearLayout.addView(myButtonImage9, layoutParams13);
        View view4 = new View(mainActivity);
        LinearLayout.LayoutParams layoutParams14 = new LinearLayout.LayoutParams(0, MainApp.g1);
        layoutParams14.gravity = 8388627;
        layoutParams14.weight = 1.0f;
        linearLayout.addView(view4, layoutParams14);
        MyButtonImage myButtonImage10 = new MyButtonImage(mainActivity);
        myButtonImage10.setScaleType(scaleType);
        myButtonImage10.l(MainApp.j1, true);
        myButtonImage10.setBgPreRadius(MainApp.k1);
        int i16 = MainApp.g1;
        LinearLayout.LayoutParams layoutParams15 = new LinearLayout.LayoutParams(i16, i16);
        layoutParams15.gravity = 8388627;
        linearLayout.addView(myButtonImage10, layoutParams15);
        View view5 = new View(mainActivity);
        LinearLayout.LayoutParams layoutParams16 = new LinearLayout.LayoutParams(0, MainApp.g1);
        layoutParams16.gravity = 8388627;
        layoutParams16.weight = 1.0f;
        linearLayout.addView(view5, layoutParams16);
        MyButtonImage myButtonImage11 = new MyButtonImage(mainActivity);
        myButtonImage11.setScaleType(scaleType);
        myButtonImage11.l(MainApp.j1, true);
        myButtonImage11.setBgPreRadius(MainApp.k1);
        int i17 = MainApp.g1;
        LinearLayout.LayoutParams layoutParams17 = new LinearLayout.LayoutParams(i17, i17);
        layoutParams17.gravity = 8388627;
        linearLayout.addView(myButtonImage11, layoutParams17);
        View view6 = new View(mainActivity);
        LinearLayout.LayoutParams layoutParams18 = new LinearLayout.LayoutParams(0, MainApp.g1);
        layoutParams18.gravity = 8388627;
        layoutParams18.weight = 1.0f;
        linearLayout.addView(view6, layoutParams18);
        LinearLayout linearLayout2 = new LinearLayout(mainActivity);
        linearLayout2.setBaselineAligned(false);
        linearLayout2.setOrientation(0);
        linearLayout2.setVisibility(8);
        FrameLayout.LayoutParams layoutParams19 = new FrameLayout.LayoutParams(-1, G2);
        layoutParams19.gravity = 80;
        myFadeFrame.addView(linearLayout2, layoutParams19);
        View view7 = new View(mainActivity);
        LinearLayout.LayoutParams layoutParams20 = new LinearLayout.LayoutParams(0, MainApp.g1);
        layoutParams20.gravity = 8388627;
        layoutParams20.weight = 1.0f;
        linearLayout2.addView(view7, layoutParams20);
        MyButtonImage myButtonImage12 = new MyButtonImage(mainActivity);
        myButtonImage12.setScaleType(scaleType);
        myButtonImage12.l(MainApp.j1, true);
        myButtonImage12.setBgPreRadius(MainApp.k1);
        int i18 = MainApp.g1;
        LinearLayout.LayoutParams layoutParams21 = new LinearLayout.LayoutParams(i18, i18);
        layoutParams21.gravity = 8388627;
        linearLayout2.addView(myButtonImage12, layoutParams21);
        View view8 = new View(mainActivity);
        LinearLayout.LayoutParams layoutParams22 = new LinearLayout.LayoutParams(0, MainApp.g1);
        layoutParams22.gravity = 8388627;
        layoutParams22.weight = 1.0f;
        linearLayout2.addView(view8, layoutParams22);
        MyButtonImage myButtonImage13 = new MyButtonImage(mainActivity);
        myButtonImage13.setScaleType(scaleType);
        myButtonImage13.l(MainApp.j1, true);
        myButtonImage13.setBgPreRadius(MainApp.k1);
        int i19 = MainApp.g1;
        LinearLayout.LayoutParams layoutParams23 = new LinearLayout.LayoutParams(i19, i19);
        layoutParams23.gravity = 8388627;
        linearLayout2.addView(myButtonImage13, layoutParams23);
        View view9 = new View(mainActivity);
        LinearLayout.LayoutParams layoutParams24 = new LinearLayout.LayoutParams(0, MainApp.g1);
        layoutParams24.gravity = 8388627;
        layoutParams24.weight = 1.0f;
        linearLayout2.addView(view9, layoutParams24);
        MyButtonImage myButtonImage14 = new MyButtonImage(mainActivity);
        myButtonImage14.setScaleType(scaleType);
        myButtonImage14.l(MainApp.j1, true);
        myButtonImage14.setBgPreRadius(MainApp.k1);
        int i20 = MainApp.g1;
        LinearLayout.LayoutParams layoutParams25 = new LinearLayout.LayoutParams(i20, i20);
        layoutParams25.gravity = 8388627;
        linearLayout2.addView(myButtonImage14, layoutParams25);
        View view10 = new View(mainActivity);
        LinearLayout.LayoutParams layoutParams26 = new LinearLayout.LayoutParams(0, MainApp.g1);
        layoutParams26.gravity = 8388627;
        layoutParams26.weight = 1.0f;
        linearLayout2.addView(view10, layoutParams26);
        MyButtonImage myButtonImage15 = new MyButtonImage(mainActivity);
        myButtonImage15.setScaleType(scaleType);
        myButtonImage15.l(MainApp.j1, true);
        myButtonImage15.setBgPreRadius(MainApp.k1);
        int i21 = MainApp.g1;
        LinearLayout.LayoutParams layoutParams27 = new LinearLayout.LayoutParams(i21, i21);
        layoutParams27.gravity = 8388627;
        linearLayout2.addView(myButtonImage15, layoutParams27);
        View view11 = new View(mainActivity);
        LinearLayout.LayoutParams layoutParams28 = new LinearLayout.LayoutParams(0, MainApp.g1);
        layoutParams28.gravity = 8388627;
        layoutParams28.weight = 1.0f;
        linearLayout2.addView(view11, layoutParams28);
        MyButtonImage myButtonImage16 = new MyButtonImage(mainActivity);
        myButtonImage16.setScaleType(scaleType);
        myButtonImage16.l(MainApp.j1, true);
        myButtonImage16.setBgPreRadius(MainApp.k1);
        int i22 = MainApp.g1;
        LinearLayout.LayoutParams layoutParams29 = new LinearLayout.LayoutParams(i22, i22);
        layoutParams29.gravity = 8388627;
        linearLayout2.addView(myButtonImage16, layoutParams29);
        View view12 = new View(mainActivity);
        LinearLayout.LayoutParams layoutParams30 = new LinearLayout.LayoutParams(0, MainApp.g1);
        layoutParams30.gravity = 8388627;
        layoutParams30.weight = 1.0f;
        linearLayout2.addView(view12, layoutParams30);
        dialogViewRead.r = myButtonImage;
        dialogViewRead.s = myButtonImage2;
        dialogViewRead.t = myButtonImage3;
        dialogViewRead.u = myButtonImage4;
        dialogViewRead.v = myButtonImage5;
        dialogViewRead.w = myButtonImage6;
        dialogViewRead.D = relativeLayout;
        dialogViewRead.E = linearLayout;
        dialogViewRead.F = linearLayout2;
        dialogViewRead.G = myButtonImage7;
        dialogViewRead.H = myButtonImage8;
        dialogViewRead.I = myButtonImage9;
        dialogViewRead.J = myButtonImage10;
        dialogViewRead.K = myButtonImage11;
        dialogViewRead.L = myButtonImage12;
        dialogViewRead.M = myButtonImage13;
        dialogViewRead.N = myButtonImage14;
        dialogViewRead.P = myButtonImage15;
        dialogViewRead.Q = myButtonImage16;
        dialogViewRead.n0();
        dialogViewRead.D.setOnClickListener(new Object());
        dialogViewRead.E.setOnClickListener(new Object());
        dialogViewRead.F.setOnClickListener(new Object());
        dialogViewRead.r.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogViewRead.19
            @Override // android.view.View.OnClickListener
            public final void onClick(View view13) {
                DialogViewRead.this.J();
            }
        });
        dialogViewRead.s.setOnClickListener(new AnonymousClass20());
        if (dialogViewRead.S0) {
            dialogViewRead.t.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogViewRead.21
                @Override // android.view.View.OnClickListener
                public final void onClick(View view13) {
                    DialogViewRead dialogViewRead2 = DialogViewRead.this;
                    if (!dialogViewRead2.d0) {
                        MainUtil.e8(dialogViewRead2.g, R.string.wait_retry);
                        return;
                    }
                    DialogReadListener dialogReadListener = dialogViewRead2.j;
                    if (dialogReadListener != null) {
                        dialogReadListener.b(dialogViewRead2.a0);
                    }
                }
            });
        }
        dialogViewRead.u.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogViewRead.22
            @Override // android.view.View.OnClickListener
            public final void onClick(View view13) {
                final DialogViewRead dialogViewRead2 = DialogViewRead.this;
                if (!dialogViewRead2.d0) {
                    MainUtil.e8(dialogViewRead2.g, R.string.wait_retry);
                    return;
                }
                if (dialogViewRead2.D0 == null) {
                    dialogViewRead2.T();
                    if (view13 != null) {
                        MyFadeFrame myFadeFrame2 = dialogViewRead2.C;
                        if (myFadeFrame2 != null) {
                            myFadeFrame2.setAutoHide(false);
                        }
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(new MyPopupAdapter.PopMenuItem(0, "PDF"));
                        arrayList.add(new MyPopupAdapter.PopMenuItem(1, "TXT"));
                        MyPopupMenu myPopupMenu = new MyPopupMenu(dialogViewRead2.f, dialogViewRead2.k, view13, arrayList, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.dialog.DialogViewRead.65
                            @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                            public final void a() {
                                int i23 = DialogViewRead.S2;
                                DialogViewRead.this.T();
                            }

                            @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                            public final boolean b(View view14, int i23) {
                                final DialogViewRead dialogViewRead3 = DialogViewRead.this;
                                if (i23 == 0) {
                                    if (dialogViewRead3.f == null || dialogViewRead3.a0()) {
                                        return true;
                                    }
                                    dialogViewRead3.P();
                                    DialogPrintPage dialogPrintPage = new DialogPrintPage(dialogViewRead3.f, dialogViewRead3.b0, null, new DialogPrintPage.PathChangeListener() { // from class: com.mycompany.app.dialog.DialogViewRead.67
                                        @Override // com.mycompany.app.dialog.DialogPrintPage.PathChangeListener
                                        public final void a(String str) {
                                            boolean isEmpty = TextUtils.isEmpty(str);
                                            DialogViewRead dialogViewRead4 = DialogViewRead.this;
                                            if (isEmpty) {
                                                MainUtil.e8(dialogViewRead4.g, R.string.input_name);
                                                return;
                                            }
                                            int i24 = DialogViewRead.S2;
                                            dialogViewRead4.P();
                                            DialogReadListener dialogReadListener = dialogViewRead4.j;
                                            if (dialogReadListener != null) {
                                                dialogReadListener.f(dialogViewRead4.y, str);
                                            }
                                        }
                                    });
                                    dialogViewRead3.F0 = dialogPrintPage;
                                    dialogPrintPage.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogViewRead.68
                                        @Override // android.content.DialogInterface.OnDismissListener
                                        public final void onDismiss(DialogInterface dialogInterface) {
                                            int i24 = DialogViewRead.S2;
                                            DialogViewRead.this.P();
                                        }
                                    });
                                    return true;
                                }
                                if (dialogViewRead3.d2 && !dialogViewRead3.l2) {
                                    dialogViewRead3.L(true);
                                    return true;
                                }
                                dialogViewRead3.C0();
                                dialogViewRead3.k0(new AnonymousClass69());
                                return true;
                            }
                        });
                        dialogViewRead2.D0 = myPopupMenu;
                        MainActivity mainActivity2 = dialogViewRead2.f;
                        if (mainActivity2 != null) {
                            mainActivity2.Z0 = myPopupMenu;
                        }
                    }
                }
            }
        });
        dialogViewRead.v.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogViewRead.23
            @Override // android.view.View.OnClickListener
            public final void onClick(View view13) {
                DialogReadListener dialogReadListener;
                WebNestView a2;
                DialogViewRead dialogViewRead2 = DialogViewRead.this;
                if (!dialogViewRead2.d0) {
                    MainUtil.e8(dialogViewRead2.g, R.string.wait_retry);
                    return;
                }
                dialogViewRead2.G0();
                MyRoundItem myRoundItem = dialogViewRead2.x;
                if (myRoundItem != null) {
                    MainUtil.b7(myRoundItem);
                }
                MyCoverView myCoverView = dialogViewRead2.S;
                if (myCoverView != null && !myCoverView.h()) {
                    boolean z = dialogViewRead2.S0;
                    if (z) {
                        if (z && dialogViewRead2.g0 != null) {
                            dialogViewRead2.C0();
                            dialogViewRead2.g0.w();
                            return;
                        }
                        return;
                    }
                    if (!z && (dialogReadListener = dialogViewRead2.j) != null && (a2 = dialogReadListener.a()) != null) {
                        dialogViewRead2.C0();
                        a2.evaluateJavascript("document.documentElement.lang", new AnonymousClass53());
                    }
                }
            }
        });
        if (PrefRead.G) {
            dialogViewRead.w.setNoti(true);
        }
        dialogViewRead.w.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogViewRead.24
            @Override // android.view.View.OnClickListener
            public final void onClick(View view13) {
                final DialogViewRead dialogViewRead2 = DialogViewRead.this;
                if (!dialogViewRead2.d0) {
                    MainUtil.e8(dialogViewRead2.g, R.string.wait_retry);
                    return;
                }
                if (PrefRead.G) {
                    PrefRead.G = false;
                    PrefSet.d(8, dialogViewRead2.g, "mNotiRead", false);
                    MyButtonImage myButtonImage17 = dialogViewRead2.w;
                    if (myButtonImage17 != null) {
                        myButtonImage17.setNoti(false);
                    }
                }
                if (dialogViewRead2.E0 == null) {
                    dialogViewRead2.S();
                    if (view13 != null) {
                        MyFadeFrame myFadeFrame2 = dialogViewRead2.C;
                        if (myFadeFrame2 != null) {
                            myFadeFrame2.setAutoHide(false);
                        }
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(new MyPopupAdapter.PopMenuItem(0, R.string.font));
                        arrayList.add(new MyPopupAdapter.PopMenuItem(1, "TTS"));
                        arrayList.add(new MyPopupAdapter.PopMenuItem(2, R.string.tts_highlight, 0, PrefZtri.j));
                        arrayList.add(new MyPopupAdapter.PopMenuItem(3, R.string.auto_speak, 0, PrefRead.L));
                        arrayList.add(new MyPopupAdapter.PopMenuItem(4, R.string.trans_auto, 0, PrefRead.M));
                        MyPopupMenu myPopupMenu = new MyPopupMenu(dialogViewRead2.f, dialogViewRead2.k, view13, arrayList, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.dialog.DialogViewRead.66
                            @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                            public final void a() {
                                int i23 = DialogViewRead.S2;
                                DialogViewRead.this.S();
                            }

                            @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                            public final boolean b(View view14, int i23) {
                                final DialogViewRead dialogViewRead3 = DialogViewRead.this;
                                if (i23 != 0) {
                                    if (i23 != 1) {
                                        if (i23 != 2) {
                                            if (i23 != 3) {
                                                if (i23 == 4) {
                                                    boolean z = !PrefRead.M;
                                                    PrefRead.M = z;
                                                    PrefSet.d(8, dialogViewRead3.g, "mAutoTrans", z);
                                                    if (PrefRead.M) {
                                                        dialogViewRead3.setTransJs(true);
                                                        return true;
                                                    }
                                                }
                                            } else {
                                                boolean z2 = !PrefRead.L;
                                                PrefRead.L = z2;
                                                PrefSet.d(8, dialogViewRead3.g, "mAutoSpeak", z2);
                                                if (PrefRead.L && PrefRead.E && dialogViewRead3.f != null && !dialogViewRead3.a0()) {
                                                    dialogViewRead3.O();
                                                    DialogConfirm dialogConfirm = new DialogConfirm(dialogViewRead3.f, R.string.auto_speak, R.string.auto_speak_guide, new DialogConfirm.DialogConfListener() { // from class: com.mycompany.app.dialog.DialogViewRead.77
                                                        @Override // com.mycompany.app.dialog.DialogConfirm.DialogConfListener
                                                        public final void a(boolean z3) {
                                                            DialogViewRead dialogViewRead4 = DialogViewRead.this;
                                                            if (z3) {
                                                                PrefRead.E = false;
                                                                PrefSet.d(8, dialogViewRead4.g, "mGuideTts", false);
                                                            }
                                                            int i24 = DialogViewRead.S2;
                                                            dialogViewRead4.O();
                                                        }
                                                    });
                                                    dialogViewRead3.M0 = dialogConfirm;
                                                    dialogConfirm.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogViewRead.78
                                                        @Override // android.content.DialogInterface.OnDismissListener
                                                        public final void onDismiss(DialogInterface dialogInterface) {
                                                            int i24 = DialogViewRead.S2;
                                                            DialogViewRead.this.O();
                                                        }
                                                    });
                                                    return true;
                                                }
                                            }
                                        } else {
                                            if (PrefZtri.j) {
                                                int i24 = DialogViewRead.S2;
                                                dialogViewRead3.h0();
                                            }
                                            boolean z3 = !PrefZtri.j;
                                            PrefZtri.j = z3;
                                            PrefSet.d(17, dialogViewRead3.g, "mReadAccent", z3);
                                            return true;
                                        }
                                    } else if (dialogViewRead3.f != null && !dialogViewRead3.a0()) {
                                        DialogSetTts dialogSetTts = dialogViewRead3.L0;
                                        if (dialogSetTts != null) {
                                            dialogSetTts.dismiss();
                                            dialogViewRead3.L0 = null;
                                        }
                                        if (dialogViewRead3.r0 == 1) {
                                            dialogViewRead3.d0(true);
                                        }
                                        DialogSetTts dialogSetTts2 = new DialogSetTts(dialogViewRead3.f);
                                        dialogViewRead3.L0 = dialogSetTts2;
                                        dialogSetTts2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogViewRead.76
                                            @Override // android.content.DialogInterface.OnDismissListener
                                            public final void onDismiss(DialogInterface dialogInterface) {
                                                Handler handler;
                                                int i25 = DialogViewRead.S2;
                                                DialogViewRead dialogViewRead4 = DialogViewRead.this;
                                                DialogSetTts dialogSetTts3 = dialogViewRead4.L0;
                                                if (dialogSetTts3 != null) {
                                                    dialogSetTts3.dismiss();
                                                    dialogViewRead4.L0 = null;
                                                }
                                                if (!MainUtil.q5(PrefTts.k, dialogViewRead4.n0) || Float.compare(PrefTts.l, dialogViewRead4.l0) != 0 || Float.compare(PrefTts.m, dialogViewRead4.m0) != 0) {
                                                    dialogViewRead4.z0();
                                                    dialogViewRead4.n0 = PrefTts.k;
                                                }
                                                if (dialogViewRead4.r0 == 2 && (handler = dialogViewRead4.h) != null) {
                                                    handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewRead.76.1
                                                        @Override // java.lang.Runnable
                                                        public final void run() {
                                                            DialogViewRead dialogViewRead5 = DialogViewRead.this;
                                                            if (!dialogViewRead5.f15086c) {
                                                                return;
                                                            }
                                                            dialogViewRead5.j0();
                                                        }
                                                    });
                                                }
                                            }
                                        });
                                        return true;
                                    }
                                } else if (dialogViewRead3.f != null) {
                                    Intent intent = new Intent(dialogViewRead3.g, (Class<?>) SettingFont.class);
                                    intent.putExtra("EXTRA_PAGE", true);
                                    dialogViewRead3.f.startActivity(intent);
                                    return true;
                                }
                                return true;
                            }
                        });
                        dialogViewRead2.E0 = myPopupMenu;
                        MainActivity mainActivity2 = dialogViewRead2.f;
                        if (mainActivity2 != null) {
                            mainActivity2.Z0 = myPopupMenu;
                        }
                    }
                }
            }
        });
        dialogViewRead.G.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogViewRead.25
            @Override // android.view.View.OnClickListener
            public final void onClick(View view13) {
                final DialogViewRead dialogViewRead2 = DialogViewRead.this;
                if (dialogViewRead2.f != null && !dialogViewRead2.a0()) {
                    DialogSeekBright dialogSeekBright = dialogViewRead2.I0;
                    if (dialogSeekBright != null) {
                        dialogSeekBright.dismiss();
                        dialogViewRead2.I0 = null;
                    }
                    MainActivity mainActivity2 = dialogViewRead2.f;
                    DialogSeekBright dialogSeekBright2 = new DialogSeekBright(mainActivity2, mainActivity2.getWindow(), 0, null);
                    dialogViewRead2.I0 = dialogSeekBright2;
                    dialogSeekBright2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogViewRead.72
                        @Override // android.content.DialogInterface.OnDismissListener
                        public final void onDismiss(DialogInterface dialogInterface) {
                            int i23 = DialogViewRead.S2;
                            DialogViewRead dialogViewRead3 = DialogViewRead.this;
                            DialogSeekBright dialogSeekBright3 = dialogViewRead3.I0;
                            if (dialogSeekBright3 != null) {
                                dialogSeekBright3.dismiss();
                                dialogViewRead3.I0 = null;
                            }
                            DialogViewRead.D(dialogViewRead3);
                        }
                    });
                }
                MyFadeFrame myFadeFrame2 = dialogViewRead2.C;
                if (myFadeFrame2 != null) {
                    myFadeFrame2.d(true);
                }
            }
        });
        dialogViewRead.H.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogViewRead.26
            @Override // android.view.View.OnClickListener
            public final void onClick(View view13) {
                final DialogViewRead dialogViewRead2 = DialogViewRead.this;
                if (dialogViewRead2.f != null && !dialogViewRead2.a0()) {
                    DialogSeekText dialogSeekText = dialogViewRead2.J0;
                    if (dialogSeekText != null) {
                        dialogSeekText.dismiss();
                        dialogViewRead2.J0 = null;
                    }
                    DialogSeekText dialogSeekText2 = new DialogSeekText(dialogViewRead2.f, new DialogSeekAudio.DialogSeekListener() { // from class: com.mycompany.app.dialog.DialogViewRead.73
                        @Override // com.mycompany.app.dialog.DialogSeekAudio.DialogSeekListener
                        public final void a(int i23) {
                            DialogViewRead.this.setTextSize(i23);
                        }
                    });
                    dialogViewRead2.J0 = dialogSeekText2;
                    dialogSeekText2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogViewRead.74
                        @Override // android.content.DialogInterface.OnDismissListener
                        public final void onDismiss(DialogInterface dialogInterface) {
                            int i23 = DialogViewRead.S2;
                            DialogViewRead dialogViewRead3 = DialogViewRead.this;
                            DialogSeekText dialogSeekText3 = dialogViewRead3.J0;
                            if (dialogSeekText3 != null) {
                                dialogSeekText3.dismiss();
                                dialogViewRead3.J0 = null;
                            }
                            DialogViewRead.D(dialogViewRead3);
                        }
                    });
                }
                MyFadeFrame myFadeFrame2 = dialogViewRead2.C;
                if (myFadeFrame2 != null) {
                    myFadeFrame2.d(true);
                }
            }
        });
        dialogViewRead.I.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogViewRead.27
            @Override // android.view.View.OnClickListener
            public final void onClick(View view13) {
                final DialogViewRead dialogViewRead2 = DialogViewRead.this;
                if (dialogViewRead2.f != null && !dialogViewRead2.a0()) {
                    DialogSeekAudio dialogSeekAudio = dialogViewRead2.K0;
                    if (dialogSeekAudio != null) {
                        dialogSeekAudio.dismiss();
                        dialogViewRead2.K0 = null;
                    }
                    DialogSeekAudio dialogSeekAudio2 = new DialogSeekAudio(dialogViewRead2.f, null);
                    dialogViewRead2.K0 = dialogSeekAudio2;
                    dialogSeekAudio2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogViewRead.75
                        @Override // android.content.DialogInterface.OnDismissListener
                        public final void onDismiss(DialogInterface dialogInterface) {
                            int i23 = DialogViewRead.S2;
                            DialogViewRead dialogViewRead3 = DialogViewRead.this;
                            DialogSeekAudio dialogSeekAudio3 = dialogViewRead3.K0;
                            if (dialogSeekAudio3 != null) {
                                dialogSeekAudio3.dismiss();
                                dialogViewRead3.K0 = null;
                            }
                            DialogViewRead.D(dialogViewRead3);
                        }
                    });
                }
                MyFadeFrame myFadeFrame2 = dialogViewRead2.C;
                if (myFadeFrame2 != null) {
                    myFadeFrame2.d(true);
                }
            }
        });
        dialogViewRead.J.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogViewRead.28
            @Override // android.view.View.OnClickListener
            public final void onClick(View view13) {
                int i23 = DialogViewRead.S2;
                DialogViewRead.this.q0();
            }
        });
        dialogViewRead.K.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogViewRead.29
            @Override // android.view.View.OnClickListener
            public final void onClick(View view13) {
                final DialogViewRead dialogViewRead2 = DialogViewRead.this;
                if (dialogViewRead2.f != null && !dialogViewRead2.a0()) {
                    dialogViewRead2.U();
                    if (dialogViewRead2.K2 == null) {
                        dialogViewRead2.K2 = new WebTransControl(dialogViewRead2.f);
                        Handler handler = dialogViewRead2.h;
                        if (handler != null) {
                            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewRead.99
                                @Override // java.lang.Runnable
                                public final void run() {
                                    DialogViewRead dialogViewRead3 = DialogViewRead.this;
                                    WebTransControl webTransControl = dialogViewRead3.K2;
                                    if (webTransControl != null) {
                                        webTransControl.b(3);
                                    }
                                    Handler handler2 = dialogViewRead3.h;
                                    if (handler2 == null) {
                                        return;
                                    }
                                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewRead.99.1
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            final DialogViewRead dialogViewRead4 = DialogViewRead.this;
                                            WebTransControl webTransControl2 = dialogViewRead4.K2;
                                            dialogViewRead4.K2 = null;
                                            if (webTransControl2 != null && dialogViewRead4.X1 == null) {
                                                dialogViewRead4.X1 = webTransControl2;
                                                try {
                                                    MyDialogRelative myDialogRelative = new MyDialogRelative(dialogViewRead4.g);
                                                    dialogViewRead4.W1 = myDialogRelative;
                                                    if (MainApp.K1) {
                                                        myDialogRelative.d(-5197648, MainApp.n1);
                                                    } else {
                                                        myDialogRelative.d(-16777216, MainApp.n1);
                                                    }
                                                    WebTransControl webTransControl3 = dialogViewRead4.X1;
                                                    if (webTransControl3 != null) {
                                                        webTransControl3.f(dialogViewRead4.e2, dialogViewRead4.c2, dialogViewRead4.d2);
                                                    }
                                                    dialogViewRead4.X1.setListener(new WebTransControl.TransCtrlListener() { // from class: com.mycompany.app.dialog.DialogViewRead.100
                                                        @Override // com.mycompany.app.web.WebTransControl.TransCtrlListener
                                                        public final void b() {
                                                            DialogViewRead dialogViewRead5 = DialogViewRead.this;
                                                            if (!TextUtils.isEmpty(dialogViewRead5.b2)) {
                                                                dialogViewRead5.U();
                                                                return;
                                                            }
                                                            if (dialogViewRead5.c2 == 1) {
                                                                MainUtil.e8(dialogViewRead5.g, R.string.wait_retry);
                                                                return;
                                                            }
                                                            dialogViewRead5.U();
                                                            if (dialogViewRead5.c2 == 3) {
                                                                MainUtil.L7(dialogViewRead5.y, "restore");
                                                            }
                                                        }

                                                        @Override // com.mycompany.app.web.WebTransControl.TransCtrlListener
                                                        public final void c(View view14) {
                                                            final DialogViewRead dialogViewRead5 = DialogViewRead.this;
                                                            if (dialogViewRead5.f == null || dialogViewRead5.k2 != null) {
                                                                return;
                                                            }
                                                            dialogViewRead5.Q();
                                                            if (!DataTrans.a(dialogViewRead5.g).b() && dialogViewRead5.c2 == 1) {
                                                                MainUtil.e8(dialogViewRead5.g, R.string.wait_retry);
                                                                return;
                                                            }
                                                            DialogTransLang dialogTransLang = new DialogTransLang(dialogViewRead5.f, false, new DialogTransLang.TransLangListener() { // from class: com.mycompany.app.dialog.DialogViewRead.103
                                                                @Override // com.mycompany.app.dialog.DialogTransLang.TransLangListener
                                                                public final void a(String str) {
                                                                    int i23 = DialogViewRead.S2;
                                                                    DialogViewRead dialogViewRead6 = DialogViewRead.this;
                                                                    dialogViewRead6.Q();
                                                                    dialogViewRead6.f2 = PrefAlbum.y;
                                                                    if (!TextUtils.isEmpty(dialogViewRead6.b2)) {
                                                                        dialogViewRead6.U();
                                                                        dialogViewRead6.setTransJs(true);
                                                                    } else if (dialogViewRead6.c2 == 3) {
                                                                        dialogViewRead6.U();
                                                                        if (!TextUtils.isEmpty(str)) {
                                                                            dialogViewRead6.k0(new AnonymousClass98(str));
                                                                        }
                                                                    }
                                                                }
                                                            });
                                                            dialogViewRead5.k2 = dialogTransLang;
                                                            dialogTransLang.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogViewRead.104
                                                                @Override // android.content.DialogInterface.OnDismissListener
                                                                public final void onDismiss(DialogInterface dialogInterface) {
                                                                    int i23 = DialogViewRead.S2;
                                                                    DialogViewRead.this.Q();
                                                                }
                                                            });
                                                        }

                                                        @Override // com.mycompany.app.web.WebTransControl.TransCtrlListener
                                                        public final void d() {
                                                            DialogViewRead dialogViewRead5 = DialogViewRead.this;
                                                            if (!TextUtils.isEmpty(dialogViewRead5.b2)) {
                                                                dialogViewRead5.U();
                                                                dialogViewRead5.setTransJs(true);
                                                            } else {
                                                                if (dialogViewRead5.c2 == 1) {
                                                                    MainUtil.e8(dialogViewRead5.g, R.string.wait_retry);
                                                                    return;
                                                                }
                                                                dialogViewRead5.U();
                                                                if (dialogViewRead5.c2 == 3) {
                                                                    MainUtil.L7(dialogViewRead5.y, "confirm");
                                                                }
                                                            }
                                                        }

                                                        @Override // com.mycompany.app.web.WebTransControl.TransCtrlListener
                                                        public final void a() {
                                                        }
                                                    });
                                                    dialogViewRead4.W1.addView(dialogViewRead4.X1, -1, -2);
                                                    MyDialogBottom myDialogBottom = new MyDialogBottom(dialogViewRead4.f);
                                                    dialogViewRead4.V1 = myDialogBottom;
                                                    myDialogBottom.g(dialogViewRead4.W1, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogViewRead.101
                                                        @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                                        public final void a(View view14) {
                                                            DialogViewRead dialogViewRead5 = DialogViewRead.this;
                                                            MyDialogBottom myDialogBottom2 = dialogViewRead5.V1;
                                                            if (myDialogBottom2 == null || view14 == null) {
                                                                return;
                                                            }
                                                            Window window = myDialogBottom2.getWindow();
                                                            if (window != null) {
                                                                window.clearFlags(2);
                                                            }
                                                            dialogViewRead5.V1.show();
                                                        }
                                                    });
                                                    dialogViewRead4.V1.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogViewRead.102
                                                        @Override // android.content.DialogInterface.OnDismissListener
                                                        public final void onDismiss(DialogInterface dialogInterface) {
                                                            DialogViewRead dialogViewRead5 = DialogViewRead.this;
                                                            if (dialogViewRead5.V1 != null) {
                                                                DialogViewRead.D(dialogViewRead5);
                                                            }
                                                            dialogViewRead5.U();
                                                        }
                                                    });
                                                } catch (Exception unused) {
                                                }
                                            }
                                        }
                                    });
                                }
                            });
                        }
                    }
                }
                MyFadeFrame myFadeFrame2 = dialogViewRead2.C;
                if (myFadeFrame2 != null) {
                    myFadeFrame2.d(true);
                }
            }
        });
        dialogViewRead.L.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogViewRead.30
            @Override // android.view.View.OnClickListener
            public final void onClick(View view13) {
                DialogViewRead.n(DialogViewRead.this);
            }
        });
        dialogViewRead.P.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogViewRead.31
            @Override // android.view.View.OnClickListener
            public final void onClick(View view13) {
                DialogViewRead.this.setIconCurr(true);
            }
        });
        dialogViewRead.Q.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogViewRead.32
            @Override // android.view.View.OnClickListener
            public final void onClick(View view13) {
                DialogViewRead.l(DialogViewRead.this);
            }
        });
        dialogViewRead.M.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogViewRead.33
            @Override // android.view.View.OnClickListener
            public final void onClick(View view13) {
                DialogViewRead.m(DialogViewRead.this);
            }
        });
        dialogViewRead.N.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogViewRead.34
            @Override // android.view.View.OnClickListener
            public final void onClick(View view13) {
                int i23 = DialogViewRead.S2;
                DialogViewRead dialogViewRead2 = DialogViewRead.this;
                if (dialogViewRead2.H()) {
                    return;
                }
                if (dialogViewRead2.b0(true)) {
                    MainUtil.e8(dialogViewRead2.g, R.string.wait_retry);
                    return;
                }
                dialogViewRead2.s0 = false;
                dialogViewRead2.w0 = -1234;
                dialogViewRead2.z0 = false;
                dialogViewRead2.G0();
                dialogViewRead2.V();
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [android.view.View$OnClickListener, java.lang.Object] */
    public static void f(DialogViewRead dialogViewRead) {
        MainActivity mainActivity;
        if (dialogViewRead.w1 != null || (mainActivity = dialogViewRead.f) == null) {
            return;
        }
        FrameLayout frameLayout = new FrameLayout(mainActivity);
        int i = MainApp.F1;
        frameLayout.setPadding(i, 0, i, 0);
        frameLayout.setVisibility(8);
        dialogViewRead.addView(frameLayout, (int) MainUtil.G(mainActivity, 160.0f), (int) MainUtil.G(mainActivity, 96.0f));
        MyButtonImage myButtonImage = new MyButtonImage(mainActivity);
        ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_INSIDE;
        myButtonImage.setScaleType(scaleType);
        int i2 = MainApp.g1;
        frameLayout.addView(myButtonImage, i2, i2);
        MyButtonImage myButtonImage2 = new MyButtonImage(mainActivity);
        myButtonImage2.setScaleType(scaleType);
        int i3 = MainApp.g1;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i3, i3);
        layoutParams.gravity = 8388613;
        frameLayout.addView(myButtonImage2, layoutParams);
        MyButtonImage myButtonImage3 = new MyButtonImage(mainActivity);
        myButtonImage3.setScaleType(scaleType);
        int i4 = MainApp.g1;
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(i4, i4);
        layoutParams2.gravity = 8388691;
        frameLayout.addView(myButtonImage3, layoutParams2);
        MyButtonImage myButtonImage4 = new MyButtonImage(mainActivity);
        myButtonImage4.setScaleType(scaleType);
        int i5 = MainApp.g1;
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(i5, i5);
        layoutParams3.gravity = 81;
        frameLayout.addView(myButtonImage4, layoutParams3);
        MyButtonImage myButtonImage5 = new MyButtonImage(mainActivity);
        myButtonImage5.setScaleType(scaleType);
        int i6 = MainApp.g1;
        FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(i6, i6);
        layoutParams4.gravity = 8388693;
        frameLayout.addView(myButtonImage5, layoutParams4);
        dialogViewRead.w1 = frameLayout;
        dialogViewRead.x1 = myButtonImage;
        dialogViewRead.y1 = myButtonImage2;
        dialogViewRead.z1 = myButtonImage3;
        dialogViewRead.A1 = myButtonImage4;
        dialogViewRead.B1 = myButtonImage5;
        dialogViewRead.N1 = Math.round(MainUtil.G(dialogViewRead.g, 160.0f));
        dialogViewRead.O1 = Math.round(MainUtil.G(dialogViewRead.g, 96.0f));
        dialogViewRead.r0();
        dialogViewRead.t0();
        dialogViewRead.w1.setOnClickListener(new Object());
        dialogViewRead.x1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogViewRead.11
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DialogViewRead dialogViewRead2 = DialogViewRead.this;
                MyButtonImage myButtonImage6 = dialogViewRead2.x1;
                if (myButtonImage6 == null || dialogViewRead2.t1) {
                    return;
                }
                dialogViewRead2.t1 = true;
                myButtonImage6.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewRead.11.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogViewRead dialogViewRead3 = DialogViewRead.this;
                        dialogViewRead3.setMiniMode(false);
                        dialogViewRead3.t1 = false;
                    }
                });
            }
        });
        dialogViewRead.y1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogViewRead.12
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DialogViewRead dialogViewRead2 = DialogViewRead.this;
                MyButtonImage myButtonImage6 = dialogViewRead2.y1;
                if (myButtonImage6 == null || dialogViewRead2.t1) {
                    return;
                }
                dialogViewRead2.t1 = true;
                myButtonImage6.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewRead.12.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        AnonymousClass12 anonymousClass12 = AnonymousClass12.this;
                        DialogViewRead dialogViewRead3 = DialogViewRead.this;
                        dialogViewRead3.f0(dialogViewRead3.j);
                        DialogViewRead.this.t1 = false;
                    }
                });
            }
        });
        dialogViewRead.z1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogViewRead.13
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DialogViewRead dialogViewRead2 = DialogViewRead.this;
                if (!dialogViewRead2.s0) {
                    return;
                }
                DialogViewRead.n(dialogViewRead2);
            }
        });
        dialogViewRead.A1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogViewRead.14
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DialogReadListener dialogReadListener;
                DialogViewRead dialogViewRead2 = DialogViewRead.this;
                boolean z = dialogViewRead2.s0;
                if (z) {
                    DialogViewRead.m(dialogViewRead2);
                    return;
                }
                if (z || (dialogReadListener = dialogViewRead2.j) == null) {
                    return;
                }
                if (!dialogReadListener.h()) {
                    dialogViewRead2.q0();
                } else {
                    dialogViewRead2.post(new AnonymousClass120());
                }
            }
        });
        dialogViewRead.B1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogViewRead.15
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DialogViewRead dialogViewRead2 = DialogViewRead.this;
                if (!dialogViewRead2.s0) {
                    return;
                }
                DialogViewRead.l(dialogViewRead2);
            }
        });
    }

    public static void g(DialogViewRead dialogViewRead) {
        if (dialogViewRead.y == null && dialogViewRead.x != null) {
            WebNestView webNestView = new WebNestView(dialogViewRead.f);
            dialogViewRead.y = webNestView;
            webNestView.setNoAutofill(false);
            if (MainApp.K1) {
                dialogViewRead.y.setBackgroundColor(-14606047);
            } else {
                dialogViewRead.y.setBackgroundColor(-1);
            }
            dialogViewRead.y.setFocusableInTouchMode(false);
            dialogViewRead.y.setVisibility(8);
            dialogViewRead.y.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.mycompany.app.dialog.DialogViewRead.82
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    return DialogViewRead.this.s0;
                }
            });
            dialogViewRead.y.setListener(new WebNestView.WebViewListener() { // from class: com.mycompany.app.dialog.DialogViewRead.83
                @Override // com.mycompany.app.web.WebNestView.WebViewListener
                public final void a(int i) {
                }

                @Override // com.mycompany.app.web.WebNestView.WebViewListener
                public final void b() {
                }

                @Override // com.mycompany.app.web.WebNestView.WebViewListener
                public final void c(int i) {
                    int height;
                    int i2;
                    DialogViewRead dialogViewRead2 = DialogViewRead.this;
                    View view = dialogViewRead2.A;
                    if (view != null) {
                        if (i > 0) {
                            i2 = 0;
                        } else {
                            i2 = 8;
                        }
                        view.setVisibility(i2);
                    }
                    int i3 = dialogViewRead2.i2;
                    View view2 = dialogViewRead2.U1;
                    if (view2 != null && view2.getVisibility() == 0 && (height = dialogViewRead2.U1.getHeight()) != 0) {
                        int i4 = (i - i3) + dialogViewRead2.j2;
                        dialogViewRead2.j2 = i4;
                        if (i4 > height) {
                            dialogViewRead2.j2 = height;
                        } else if (i4 < 0) {
                            dialogViewRead2.j2 = 0;
                        }
                        dialogViewRead2.U1.setAlpha(1.0f - (dialogViewRead2.j2 / height));
                        dialogViewRead2.U1.setTranslationY(dialogViewRead2.j2);
                    }
                    dialogViewRead2.i2 = i;
                    dialogViewRead2.G();
                    Runnable runnable = dialogViewRead2.E2;
                    MyScrollBar myScrollBar = dialogViewRead2.B;
                    if (myScrollBar == null || dialogViewRead2.D2) {
                        return;
                    }
                    dialogViewRead2.D2 = true;
                    myScrollBar.removeCallbacks(runnable);
                    dialogViewRead2.B.post(runnable);
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
            dialogViewRead.x.addView(dialogViewRead.y, 0, new ViewGroup.LayoutParams(-1, -2));
            Handler handler = dialogViewRead.h;
            if (handler != null) {
                handler.post(new AnonymousClass84());
            }
        }
    }

    private Locale getNewsLocale() {
        String[] stringArray;
        int i;
        Context context = this.g;
        if (context != null && (stringArray = context.getResources().getStringArray(R.array.news_code)) != null && (i = PrefZtwo.N) >= 0 && i < stringArray.length) {
            String str = stringArray[i];
            int lastIndexOf = str.lastIndexOf(58);
            int lastIndexOf2 = str.lastIndexOf(61, lastIndexOf);
            try {
                if (Build.VERSION.SDK_INT >= 36) {
                    return Locale.of(str.substring(lastIndexOf + 1), str.substring(lastIndexOf2 + 1, lastIndexOf));
                }
                return new Locale(str.substring(lastIndexOf + 1), str.substring(lastIndexOf2 + 1, lastIndexOf));
            } catch (Exception unused) {
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:15:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0062 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00c6 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String getPartJs() {
        /*
            r7 = this;
            boolean r0 = r7.d2
            r1 = 0
            r2 = 0
            if (r0 == 0) goto L6b
            java.lang.String r0 = r7.C0
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto L68
            boolean r0 = com.mycompany.app.main.MainApp.R1
            if (r0 != 0) goto L13
            goto L66
        L13:
            r3 = 13
            if (r0 != 0) goto L19
        L17:
            r0 = r1
            goto L3f
        L19:
            java.util.ArrayList r0 = com.mycompany.app.main.MainNative.H
            boolean r0 = com.mycompany.app.main.MainNative.a(r3, r0)
            if (r0 == 0) goto L24
            java.util.ArrayList r0 = com.mycompany.app.main.MainNative.H
            goto L3f
        L24:
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r4 = r2
        L2a:
            if (r4 >= r3) goto L3d
            java.lang.String r5 = com.mycompany.app.main.MainUtil.getTtsPartJs2(r4)
            boolean r6 = android.text.TextUtils.isEmpty(r5)
            if (r6 == 0) goto L37
            goto L17
        L37:
            r0.add(r5)
            int r4 = r4 + 1
            goto L2a
        L3d:
            com.mycompany.app.main.MainNative.H = r0
        L3f:
            if (r0 == 0) goto L66
            int r4 = r0.size()
            if (r4 == r3) goto L48
            goto L66
        L48:
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
        L4d:
            if (r2 >= r3) goto L62
            java.lang.Object r5 = r0.get(r2)
            java.lang.String r5 = (java.lang.String) r5
            boolean r6 = android.text.TextUtils.isEmpty(r5)
            if (r6 == 0) goto L5c
            goto L66
        L5c:
            r4.append(r5)
            int r2 = r2 + 1
            goto L4d
        L62:
            java.lang.String r1 = r4.toString()
        L66:
            r7.C0 = r1
        L68:
            java.lang.String r0 = r7.C0
            return r0
        L6b:
            java.lang.String r0 = r7.B0
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto Lcc
            boolean r0 = com.mycompany.app.main.MainApp.R1
            if (r0 != 0) goto L78
            goto Lca
        L78:
            r3 = 5
            if (r0 != 0) goto L7d
        L7b:
            r0 = r1
            goto La3
        L7d:
            java.util.ArrayList r0 = com.mycompany.app.main.MainNative.G
            boolean r0 = com.mycompany.app.main.MainNative.a(r3, r0)
            if (r0 == 0) goto L88
            java.util.ArrayList r0 = com.mycompany.app.main.MainNative.G
            goto La3
        L88:
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r4 = r2
        L8e:
            if (r4 >= r3) goto La1
            java.lang.String r5 = com.mycompany.app.main.MainUtil.getTtsPartJs1(r4)
            boolean r6 = android.text.TextUtils.isEmpty(r5)
            if (r6 == 0) goto L9b
            goto L7b
        L9b:
            r0.add(r5)
            int r4 = r4 + 1
            goto L8e
        La1:
            com.mycompany.app.main.MainNative.G = r0
        La3:
            if (r0 == 0) goto Lca
            int r4 = r0.size()
            if (r4 == r3) goto Lac
            goto Lca
        Lac:
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
        Lb1:
            if (r2 >= r3) goto Lc6
            java.lang.Object r5 = r0.get(r2)
            java.lang.String r5 = (java.lang.String) r5
            boolean r6 = android.text.TextUtils.isEmpty(r5)
            if (r6 == 0) goto Lc0
            goto Lca
        Lc0:
            r4.append(r5)
            int r2 = r2 + 1
            goto Lb1
        Lc6:
            java.lang.String r1 = r4.toString()
        Lca:
            r7.B0 = r1
        Lcc:
            java.lang.String r0 = r7.B0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogViewRead.getPartJs():java.lang.String");
    }

    /* JADX WARN: Type inference failed for: r9v3, types: [com.mycompany.app.web.WebReadTask$ReadItem, java.lang.Object] */
    private List<WebReadTask.ReadItem> getPartList() {
        WebReadTask.ReadItem readItem;
        String str;
        int length;
        int i;
        int i2;
        int i3 = this.b1;
        int i4 = this.c1;
        int i5 = this.d1;
        int i6 = this.e1;
        int i7 = (i5 - i3) + 1;
        ArrayList arrayList = null;
        for (int i8 = 0; i8 < i7; i8++) {
            int i9 = i8 + i3;
            List list = this.Z0;
            if (list != null && i9 >= 0 && i9 < list.size()) {
                readItem = (WebReadTask.ReadItem) list.get(i9);
            } else {
                readItem = null;
            }
            if (readItem != null) {
                if (this.d2) {
                    str = readItem.h;
                } else {
                    str = readItem.b;
                }
                if (str != null && (length = str.length()) != 0) {
                    if (i9 == i3) {
                        i = Math.max(0, i4);
                    } else {
                        i = 0;
                    }
                    if (i9 == i5) {
                        i2 = Math.min(length, i6);
                    } else {
                        i2 = length;
                    }
                    if (i < i2) {
                        if (i != 0 || i2 != length) {
                            str = str.substring(i, i2);
                        }
                        ?? obj = new Object();
                        obj.f = readItem.f;
                        obj.g = i;
                        if (this.d2) {
                            obj.h = str;
                        } else {
                            obj.b = str;
                        }
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        arrayList.add(obj);
                    }
                }
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<String> getTextList() {
        String str;
        List<WebReadTask.ReadItem> list = this.Z0;
        if (list != null && !list.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            for (WebReadTask.ReadItem readItem : list) {
                if (readItem != null) {
                    if (this.d2) {
                        str = readItem.h;
                    } else {
                        str = readItem.b;
                    }
                    if (!TextUtils.isEmpty(str)) {
                        arrayList.add(str);
                        arrayList.add("\n");
                    }
                }
            }
            return arrayList;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getTransJs() {
        if (!TextUtils.isEmpty(this.b2)) {
            return this.b2;
        }
        StringBuilder N3 = MainUtil.N3();
        if (N3 == null) {
            return null;
        }
        String M2 = MainUtil.M2(this.g2);
        if (TextUtils.isEmpty(M2)) {
            return null;
        }
        N3.insert(0, M2);
        return N3.toString();
    }

    public static void h(DialogViewRead dialogViewRead) {
        long j;
        MyAdNative myAdNative;
        if (dialogViewRead.o && dialogViewRead.p && dialogViewRead.m != null && dialogViewRead.n == null && !dialogViewRead.q) {
            dialogViewRead.q = true;
            MainApp p = MainApp.p(dialogViewRead.g);
            boolean z = false;
            if (p != null && (myAdNative = p.N0) != null) {
                z = myAdNative.p();
            }
            if (z) {
                j = 200;
            } else {
                j = 1000;
            }
            dialogViewRead.m.postDelayed(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewRead.46
                @Override // java.lang.Runnable
                public final void run() {
                    MainActivity mainActivity;
                    final DialogViewRead dialogViewRead2 = DialogViewRead.this;
                    if (dialogViewRead2.m != null && dialogViewRead2.n == null && MainApp.A(dialogViewRead2.g) && (mainActivity = dialogViewRead2.f) != null) {
                        dialogViewRead2.n = MainApp.d(mainActivity, 0, new MainApp.AdLocalListener() { // from class: com.mycompany.app.dialog.DialogViewRead.47
                            @Override // com.mycompany.app.main.MainApp.AdLocalListener
                            public final void b(MyAdNative myAdNative2) {
                                int i = DialogViewRead.S2;
                                DialogViewRead.this.l0();
                            }

                            @Override // com.mycompany.app.main.MainApp.AdLocalListener
                            public final void c(MyAdNative myAdNative2) {
                                int i = DialogViewRead.S2;
                                DialogViewRead.this.l0();
                            }

                            @Override // com.mycompany.app.main.MainApp.AdLocalListener
                            public final void e() {
                                DialogViewRead.this.J();
                            }

                            @Override // com.mycompany.app.main.MainApp.AdLocalListener
                            public final void f(MyAdNative myAdNative2) {
                                int i = DialogViewRead.S2;
                                DialogViewRead.this.l0();
                            }
                        });
                        dialogViewRead2.l0();
                        dialogViewRead2.m.a(dialogViewRead2.n, false, dialogViewRead2.h);
                    }
                    dialogViewRead2.q = false;
                }
            }, j);
        }
    }

    public static void i(DialogViewRead dialogViewRead) {
        dialogViewRead.Y1 = false;
        dialogViewRead.f2 = PrefAlbum.y;
        dialogViewRead.Z1 = true;
        if (dialogViewRead.d2) {
            dialogViewRead.d2 = false;
            dialogViewRead.k0(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewRead.94
                @Override // java.lang.Runnable
                public final void run() {
                    DialogViewRead dialogViewRead2 = DialogViewRead.this;
                    if (dialogViewRead2.y == null) {
                        return;
                    }
                    dialogViewRead2.b2 = dialogViewRead2.getTransJs();
                    dialogViewRead2.setTransJs(false);
                }
            });
        } else if (PrefRead.M) {
            dialogViewRead.setTransJs(false);
        }
    }

    public static void j(DialogViewRead dialogViewRead) {
        if (dialogViewRead.y == null) {
            return;
        }
        if (!dialogViewRead.R0) {
            StringBuilder sb = new StringBuilder();
            sb.append("var ele=document.getElementById('sb_bold_style');if(ele){document.head.removeChild(ele);}");
            sb.insert(0, "(function(){");
            sb.append("})();");
            MainUtil.I(dialogViewRead.y, sb.toString(), true);
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("if(document.head&&!document.getElementById('sb_bold_style')){var ele=document.createElement('style');ele.id='sb_bold_style';ele.innerText='body,body *:not([class*=\"icon\"]):not([class^=\"fa\"]):not(ion-icon){font-weight:bold !important;}';document.head.appendChild(ele);}");
        sb2.insert(0, "(function(){");
        sb2.append("})();");
        MainUtil.I(dialogViewRead.y, sb2.toString(), true);
    }

    public static void l(DialogViewRead dialogViewRead) {
        if (dialogViewRead.H()) {
            return;
        }
        if (dialogViewRead.b0(true)) {
            MainUtil.e8(dialogViewRead.g, R.string.wait_retry);
        } else {
            dialogViewRead.setTtsMove(2);
        }
    }

    public static void m(DialogViewRead dialogViewRead) {
        if (dialogViewRead.H()) {
            return;
        }
        if (dialogViewRead.b0(true)) {
            MainUtil.e8(dialogViewRead.g, R.string.wait_retry);
            return;
        }
        dialogViewRead.s0 = false;
        dialogViewRead.w0 = -1234;
        dialogViewRead.z0 = false;
        if (dialogViewRead.r0 == 0) {
            dialogViewRead.G0();
        } else {
            dialogViewRead.d0(true);
        }
        dialogViewRead.V();
    }

    public static void n(DialogViewRead dialogViewRead) {
        if (dialogViewRead.H()) {
            return;
        }
        if (dialogViewRead.b0(true)) {
            MainUtil.e8(dialogViewRead.g, R.string.wait_retry);
        } else {
            dialogViewRead.setTtsMove(1);
        }
    }

    private void setAnimPos(float f) {
        int a2;
        int a3;
        if (this.f15086c && this.E1 != null) {
            int round = Math.round((this.R1 - this.N1) * f) + this.N1;
            int round2 = Math.round((this.S1 - this.O1) * f);
            int i = this.O1;
            int i2 = round2 + i;
            int i3 = this.R1;
            if (round > i3 || round < (i3 = this.N1)) {
                round = i3;
            }
            int i4 = this.S1;
            if (i2 > i4) {
                i = i4;
            } else if (i2 >= i) {
                i = i2;
            }
            RelativeLayout.LayoutParams layoutParams = this.E1;
            layoutParams.width = round;
            layoutParams.height = i;
            setLayoutParams(layoutParams);
            float f2 = PrefZtri.d0;
            float f3 = PrefZtri.e0;
            float f4 = PrefZtri.f0;
            float f5 = PrefZtri.g0;
            if (f2 < 0.0f && f3 < 0.0f && f4 < 0.0f && f5 < 0.0f) {
                a2 = (this.R1 - round) / 2;
                a3 = (this.S1 - i) / 2;
            } else {
                a2 = a.a(f2, f3, this.R1 - round, f2);
                a3 = a.a(f4, f5, this.S1 - i, f4);
            }
            int i5 = a2 + round;
            int i6 = this.R1;
            if (i5 > i6) {
                a2 = i6 - round;
            }
            int i7 = a3 + i;
            int i8 = this.S1;
            if (i7 > i8) {
                a3 = i8 - i;
            }
            if (a2 < 0) {
                a2 = 0;
            }
            if (a3 < 0) {
                a3 = 0;
            }
            setX(a2 + this.P1);
            setY(a3 + this.Q1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setIconCurr(boolean z) {
        if (!H()) {
            if (b0(true)) {
                if (z) {
                    MainUtil.e8(this.g, R.string.wait_retry);
                    return;
                }
                return;
            }
            setTtsMove(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setMiniMode(boolean z) {
        Handler handler;
        if (this.f15086c && this.k1 == null && this.C1 != z) {
            this.C1 = z;
            MyWebBody myWebBody = this.k;
            if (myWebBody != null) {
                int paddingLeft = myWebBody.getPaddingLeft();
                int paddingTop = myWebBody.getPaddingTop();
                int width = (myWebBody.getWidth() - paddingLeft) - myWebBody.getPaddingRight();
                int height = (myWebBody.getHeight() - paddingTop) - myWebBody.getPaddingBottom();
                this.P1 = paddingLeft;
                this.Q1 = paddingTop;
                this.R1 = width;
                this.S1 = height;
                r0();
                if (this.X0) {
                    this.X0 = false;
                    setVisibility(0);
                    this.x.setVisibility(8);
                    setValAnimMini(0.0f);
                    if ((this.D == null || this.y == null) && (handler = this.h) != null) {
                        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewRead.113
                            @Override // java.lang.Runnable
                            public final void run() {
                                Handler handler2;
                                DialogViewRead dialogViewRead = DialogViewRead.this;
                                DialogViewRead.e(dialogViewRead);
                                if (dialogViewRead.y != null || (handler2 = dialogViewRead.h) == null) {
                                    return;
                                }
                                handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewRead.113.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        DialogViewRead.g(DialogViewRead.this);
                                    }
                                });
                            }
                        });
                        return;
                    }
                    return;
                }
                N();
                T();
                S();
                M();
                this.D1 = true;
                if (this.C1) {
                    this.P2 = 1.0f;
                    this.Q2 = false;
                    this.k1 = ValueAnimator.ofFloat(1.0f, 0.0f);
                } else {
                    this.P2 = 0.0f;
                    this.Q2 = false;
                    this.k1 = ValueAnimator.ofFloat(0.0f, 1.0f);
                }
                this.k1.setDuration(300L);
                if (this.C1) {
                    a.r(this.k1);
                } else {
                    a.v(this.k1);
                }
                this.k1.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.dialog.DialogViewRead.114
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        DialogViewRead dialogViewRead = DialogViewRead.this;
                        if (dialogViewRead.k1 != null && dialogViewRead.f15086c) {
                            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                            if (dialogViewRead.k1 != null && dialogViewRead.f15086c) {
                                dialogViewRead.P2 = floatValue;
                                if (!dialogViewRead.Q2) {
                                    dialogViewRead.Q2 = true;
                                    MainApp.N(dialogViewRead.g, dialogViewRead.R2);
                                }
                            }
                        }
                    }
                });
                this.k1.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.dialog.DialogViewRead.115
                    @Override // android.animation.Animator.AnimatorListener
                    public final void onAnimationCancel(Animator animator) {
                        DialogViewRead dialogViewRead = DialogViewRead.this;
                        if (dialogViewRead.k1 == null) {
                            return;
                        }
                        dialogViewRead.k1 = null;
                        dialogViewRead.invalidate();
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator) {
                        final DialogViewRead dialogViewRead = DialogViewRead.this;
                        if (dialogViewRead.k1 == null) {
                            return;
                        }
                        MainApp.N(dialogViewRead.g, new Runnable() { // from class: com.mycompany.app.dialog.DialogViewRead.119
                            @Override // java.lang.Runnable
                            public final void run() {
                                DialogViewRead dialogViewRead2 = DialogViewRead.this;
                                if (dialogViewRead2.k1 != null) {
                                    dialogViewRead2.k1 = null;
                                    if (!dialogViewRead2.f15086c) {
                                        return;
                                    }
                                    if (dialogViewRead2.C1) {
                                        dialogViewRead2.setValAnimMini(0.0f);
                                    } else {
                                        dialogViewRead2.setValAnimMini(1.0f);
                                        if (!dialogViewRead2.o) {
                                            dialogViewRead2.o = true;
                                            DialogViewRead.h(dialogViewRead2);
                                        }
                                    }
                                    dialogViewRead2.invalidate();
                                }
                            }
                        });
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public final void onAnimationRepeat(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public final void onAnimationStart(Animator animator) {
                    }
                });
                this.k1.start();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPartPlay(String str) {
        if (TextUtils.isEmpty(str)) {
            MainUtil.e8(this.g, R.string.empty);
            return;
        }
        String[] split2 = str.split(",");
        if (split2 != null && split2.length == 4) {
            int H6 = MainUtil.H6(split2[0]);
            int H62 = MainUtil.H6(split2[1]);
            int H63 = MainUtil.H6(split2[2]);
            int H64 = MainUtil.H6(split2[3]);
            if (H6 != -1 && H62 != -1 && H63 != -1 && H64 != -1) {
                if (H6 == H63 && H62 == H64) {
                    MainUtil.e8(this.g, R.string.play_error);
                    return;
                }
                if (H6 > H63 || (H6 == H63 && H62 > H64)) {
                    H62 = H64;
                    H64 = H62;
                    H63 = H6;
                    H6 = H63;
                }
                this.a1 = true;
                this.b1 = H6;
                this.c1 = H62;
                this.d1 = H63;
                this.e1 = H64;
                if (this.d2 && !this.l2) {
                    L(false);
                } else {
                    F0(true);
                }
                D0(true);
                return;
            }
            MainUtil.e8(this.g, R.string.play_error);
            return;
        }
        MainUtil.e8(this.g, R.string.play_error);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPos(boolean z) {
        MyWebBody myWebBody;
        int a2;
        int a3;
        if (this.C1 && this.f15086c && (myWebBody = this.k) != null) {
            if (z || this.k1 == null) {
                int paddingLeft = myWebBody.getPaddingLeft();
                int paddingTop = myWebBody.getPaddingTop();
                int width = (myWebBody.getWidth() - paddingLeft) - myWebBody.getPaddingRight();
                int height = (myWebBody.getHeight() - paddingTop) - myWebBody.getPaddingBottom();
                if (z || paddingLeft != this.P1 || paddingTop != this.Q1 || width != this.R1 || height != this.S1) {
                    this.P1 = paddingLeft;
                    this.Q1 = paddingTop;
                    this.R1 = width;
                    this.S1 = height;
                    float f = PrefZtri.d0;
                    float f2 = PrefZtri.e0;
                    float f3 = PrefZtri.f0;
                    float f4 = PrefZtri.g0;
                    if (f < 0.0f && f2 < 0.0f && f3 < 0.0f && f4 < 0.0f) {
                        a2 = (width - this.N1) / 2;
                        a3 = (height - this.O1) / 2;
                    } else {
                        a2 = a.a(f, f2, width - this.N1, f);
                        a3 = a.a(f3, f4, this.S1 - this.O1, f3);
                    }
                    v0(a2, a3);
                    if (Float.compare(f, PrefZtri.d0) != 0 || Float.compare(f2, PrefZtri.e0) != 0 || Float.compare(f3, PrefZtri.f0) != 0 || Float.compare(f4, PrefZtri.g0) != 0) {
                        w0();
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setProgressBar(int i) {
        this.B2 = i;
        MyProgressBar myProgressBar = this.z;
        if (myProgressBar != null) {
            int round = Math.round(myProgressBar.getProgress());
            if (i == 100 && round == 100) {
                this.z.setSkipDraw(true);
                if (this.h1) {
                    this.h1 = false;
                    MyCoverView myCoverView = this.S;
                    if (myCoverView != null) {
                        myCoverView.m(true);
                        return;
                    }
                    return;
                }
                return;
            }
            MyCoverView myCoverView2 = this.S;
            if (myCoverView2 != null) {
                myCoverView2.f(false);
            }
            MyProgressBar myProgressBar2 = this.z;
            if (myProgressBar2.B) {
                myProgressBar2.setProgress(0.0f);
                this.z.setSkipDraw(false);
                setProgressBar(Math.max(i, 50));
            } else if (round < i) {
                myProgressBar2.setProgress(round + 3);
                Runnable runnable = this.C2;
                if (runnable != null) {
                    this.z.removeCallbacks(runnable);
                    this.z.post(runnable);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0028, code lost:
    
        if (r4 > 500) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setScaleGesture(android.view.ScaleGestureDetector r4) {
        /*
            r3 = this;
            if (r4 != 0) goto L3
            goto L7
        L3:
            com.mycompany.app.web.WebNestView r0 = r3.y
            if (r0 != 0) goto L8
        L7:
            return
        L8:
            int r0 = com.mycompany.app.pref.PrefRead.m
            if (r0 != 0) goto Le
            r0 = 100
        Le:
            float r0 = (float) r0
            r1 = 1120403456(0x42c80000, float:100.0)
            float r0 = r1 / r0
            r2 = 1065353216(0x3f800000, float:1.0)
            float r4 = r4.getScaleFactor()
            float r2 = r2 - r4
            float r2 = r2 + r0
            float r1 = r1 / r2
            int r4 = java.lang.Math.round(r1)
            r0 = 50
            if (r4 >= r0) goto L26
        L24:
            r4 = r0
            goto L2b
        L26:
            r0 = 500(0x1f4, float:7.0E-43)
            if (r4 <= r0) goto L2b
            goto L24
        L2b:
            r3.setTextSize(r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogViewRead.setScaleGesture(android.view.ScaleGestureDetector):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setTextSize(int i) {
        WebNestView webNestView = this.y;
        if (webNestView != null && PrefRead.m != i) {
            PrefRead.m = i;
            webNestView.getSettings().setTextZoom(PrefRead.m);
            if (this.m == null) {
                return;
            }
            this.y.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewRead.124
                @Override // java.lang.Runnable
                public final void run() {
                    int i2 = DialogViewRead.S2;
                    DialogViewRead.this.e0(true);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setTransJs(boolean z) {
        if (this.Z1 && !TextUtils.isEmpty(this.b2)) {
            String str = this.b2;
            this.Z1 = false;
            this.b2 = null;
            if (z) {
                C0();
            }
            MainUtil.J(this.y, str, true);
        }
    }

    private void setTtsMove(int i) {
        ArrayList arrayList;
        int i2;
        TtsItem ttsItem;
        if (this.y != null && (arrayList = this.p0) != null) {
            if (this.w0 == -1234) {
                this.w0 = this.q0;
            }
            if (i == 1) {
                i2 = this.w0 - 1;
            } else if (i == 2) {
                i2 = this.w0 + 1;
            } else {
                i2 = this.w0;
            }
            if (i2 >= arrayList.size()) {
                i2 = this.p0.size() - 1;
            }
            if (i2 < 0) {
                i2 = 0;
            }
            ArrayList arrayList2 = this.p0;
            String str = null;
            if (arrayList2 != null && i2 >= 0 && i2 < arrayList2.size()) {
                ttsItem = (TtsItem) this.p0.get(i2);
            } else {
                ttsItem = null;
            }
            if (ttsItem != null) {
                str = ttsItem.f15242c;
            }
            if (TextUtils.isEmpty(str)) {
                return;
            }
            this.s0 = true;
            WebNestView webNestView = this.y;
            Runnable runnable = this.y2;
            webNestView.removeCallbacks(runnable);
            if (i != 0) {
                d0(false);
            }
            B0(0, str.length(), i2, true);
            this.w0 = i2;
            this.z0 = true;
            this.y.postDelayed(runnable, 200L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValAnimHide(float f) {
        MyWebBody myWebBody;
        if (this.f15086c && (myWebBody = this.k) != null) {
            setTranslationY((1.0f - f) * myWebBody.getHeight() * 0.1f);
            setAlpha(f);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValAnimMini(float f) {
        int i;
        if (this.f15086c) {
            if (this.E1 == null) {
                this.E1 = (RelativeLayout.LayoutParams) getLayoutParams();
            }
            boolean z = true;
            if (this.C1) {
                if (this.D1) {
                    DialogReadListener dialogReadListener = this.j;
                    if (dialogReadListener != null) {
                        dialogReadListener.e(this.m1, this.n1, this.o1);
                    }
                    this.m1 = this.p1;
                    this.n1 = this.q1;
                    this.o1 = this.r1;
                    this.E1.removeRule(2);
                    this.x.setVisibility(8);
                    MyFadeFrame myFadeFrame = this.C;
                    if (myFadeFrame != null) {
                        myFadeFrame.d(false);
                    }
                }
                if (Float.compare(f, 0.0f) == 0) {
                    this.w1.setVisibility(0);
                    u0();
                    t0();
                }
                z = false;
            } else {
                if (this.D1) {
                    DialogReadListener dialogReadListener2 = this.j;
                    if (dialogReadListener2 != null) {
                        dialogReadListener2.d();
                    }
                    this.w1.setVisibility(8);
                    u0();
                    t0();
                }
                if (Float.compare(f, 1.0f) == 0) {
                    boolean z2 = MainApp.K1;
                    if (z2) {
                        i = -16777216;
                    } else {
                        i = -1;
                    }
                    y0(i, z2);
                    this.x.setVisibility(0);
                    e0(true);
                    if (this.s0) {
                        setIconCurr(false);
                    }
                }
                z = false;
            }
            this.D1 = false;
            if (z) {
                if (this.C1) {
                    RelativeLayout.LayoutParams layoutParams = this.E1;
                    layoutParams.width = this.N1;
                    layoutParams.height = this.O1;
                    setLayoutParams(layoutParams);
                    Handler handler = this.h;
                    if (handler != null) {
                        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewRead.117
                            @Override // java.lang.Runnable
                            public final void run() {
                                DialogViewRead.this.setPos(true);
                            }
                        });
                    } else {
                        return;
                    }
                } else {
                    RelativeLayout.LayoutParams layoutParams2 = this.E1;
                    layoutParams2.width = -1;
                    layoutParams2.height = -1;
                    layoutParams2.addRule(2, R.id.web_cast_ctrl);
                    setLayoutParams(this.E1);
                    Handler handler2 = this.h;
                    if (handler2 != null) {
                        handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewRead.118
                            @Override // java.lang.Runnable
                            public final void run() {
                                DialogViewRead dialogViewRead = DialogViewRead.this;
                                dialogViewRead.setX(dialogViewRead.P1);
                                dialogViewRead.setY(dialogViewRead.Q1);
                            }
                        });
                    } else {
                        return;
                    }
                }
            } else {
                setAnimPos(f);
            }
            if (z) {
                this.E1 = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValAnimShow(float f) {
        MyWebBody myWebBody;
        Handler handler;
        if (this.f15086c && (myWebBody = this.k) != null) {
            setTranslationY((1.0f - f) * myWebBody.getHeight() * 0.1f);
            setAlpha(f);
            if (getVisibility() != 0) {
                setVisibility(0);
            }
            if (Float.compare(f, 1.0f) == 0 && (handler = this.h) != null) {
                handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewRead.38
                    @Override // java.lang.Runnable
                    public final void run() {
                        int i;
                        boolean z = MainApp.K1;
                        if (z) {
                            i = -16777216;
                        } else {
                            i = -1;
                        }
                        int i2 = DialogViewRead.S2;
                        DialogViewRead.this.y0(i, z);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setWebHtml(String str) {
        Handler handler;
        if (this.R != null) {
            if (TextUtils.isEmpty(str)) {
                R();
                this.R.u();
                return;
            }
            this.R.t();
            if (this.y != null) {
                String L1 = MainUtil.L1(this.a0);
                this.h2 = L1;
                MainUtil.r6(this.y, L1, str);
                this.y.setVisibility(0);
                k0(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewRead.55
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogViewRead dialogViewRead = DialogViewRead.this;
                        if (dialogViewRead.y != null) {
                            dialogViewRead.b2 = dialogViewRead.getTransJs();
                            if (PrefRead.M) {
                                dialogViewRead.setTransJs(false);
                            }
                        }
                    }
                });
                z0();
                if (!this.Y0 || (handler = this.h) == null) {
                    return;
                }
                handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewRead.56
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogViewRead dialogViewRead = DialogViewRead.this;
                        if (dialogViewRead.Y0) {
                            dialogViewRead.D0(true);
                        }
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setWebSettin2(WebView webView) {
        if (webView == null) {
            return;
        }
        webView.setWebViewClient(new LocalWebViewClient());
        webView.setWebChromeClient(new LocalChromeClient());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setWebSettin3(WebView webView) {
        if (webView == null) {
            return;
        }
        this.a2 = true;
        webView.addJavascriptInterface(new WebAppInterface(), "android");
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"SetJavaScriptEnabled"})
    public void setWebSetting(WebView webView) {
        if (webView == null) {
            return;
        }
        WebSettings settings = webView.getSettings();
        settings.setTextZoom(PrefRead.m);
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
        webView.setVerticalScrollBarEnabled(false);
        webView.setHorizontalScrollBarEnabled(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setWindowColor(int i) {
        MainActivity mainActivity;
        if (MainApp.K1 || (mainActivity = this.f) == null || this.o1 == i) {
            return;
        }
        this.o1 = i;
        mainActivity.getWindow().setBackgroundDrawable(new ColorDrawable(i));
    }

    /* JADX WARN: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0056  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void A0() {
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
            goto L4d
        Lf:
            boolean r0 = r4.d2
            if (r0 == 0) goto L1e
            java.lang.String r0 = com.mycompany.app.pref.PrefAlbum.z
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L1e
            java.lang.String r0 = com.mycompany.app.pref.PrefAlbum.z
            goto Lb
        L1e:
            boolean r0 = r4.S0
            if (r0 == 0) goto L2d
            java.util.Locale r0 = r4.getNewsLocale()
            if (r0 == 0) goto L4d
            java.lang.String r1 = r0.toString()
            goto L4d
        L2d:
            java.lang.String r0 = r4.c0
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L38
            java.lang.String r0 = r4.c0
            goto Lb
        L38:
            java.lang.String r0 = r4.n0
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L43
            java.lang.String r0 = r4.n0
            goto Lb
        L43:
            java.util.Locale r0 = com.mycompany.app.main.MainApp.j()
            if (r0 == 0) goto L4d
            java.lang.String r1 = r0.toString()
        L4d:
            java.lang.String r2 = r4.o0
            boolean r2 = com.mycompany.app.main.MainUtil.q5(r2, r1)
            if (r2 == 0) goto L56
            goto L7b
        L56:
            r4.o0 = r1
            if (r0 != 0) goto L5e
            java.util.Locale r0 = com.mycompany.app.main.MainUtil.O3(r1)
        L5e:
            if (r0 != 0) goto L65
            java.util.Locale r0 = com.mycompany.app.main.MainApp.j()
            goto L76
        L65:
            android.speech.tts.TextToSpeech r1 = r4.k0     // Catch: java.lang.Exception -> L6c
            int r1 = r1.isLanguageAvailable(r0)     // Catch: java.lang.Exception -> L6c
            goto L6d
        L6c:
            r1 = -2
        L6d:
            if (r1 == 0) goto L76
            r2 = 1
            if (r1 == r2) goto L76
            java.util.Locale r0 = com.mycompany.app.main.MainApp.j()
        L76:
            android.speech.tts.TextToSpeech r1 = r4.k0     // Catch: java.lang.Exception -> L7b
            r1.setLanguage(r0)     // Catch: java.lang.Exception -> L7b
        L7b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogViewRead.A0():void");
    }

    public final void B0(int i, int i2, int i3, boolean z) {
        TtsItem ttsItem;
        if (this.v0) {
            this.v0 = false;
            z = true;
        }
        if ((PrefZtri.j || z) && this.y != null) {
            ArrayList arrayList = this.p0;
            if (arrayList != null && i3 >= 0 && i3 < arrayList.size()) {
                ttsItem = (TtsItem) this.p0.get(i3);
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
                if (!PrefZtri.j) {
                    sb.append("window.getSelection().removeAllRanges();");
                }
            }
            sb.append("})();");
            MainUtil.J(this.y, sb.toString(), true);
        }
    }

    public final void C0() {
        MyCoverView myCoverView = this.S;
        if (myCoverView == null) {
            return;
        }
        this.h1 = false;
        myCoverView.m(true);
    }

    public final void D0(boolean z) {
        int i;
        if (this.C == null || this.h0) {
            return;
        }
        this.h0 = true;
        this.w0 = -1234;
        this.z0 = false;
        this.O = this.N;
        if (b0(true)) {
            MyButtonImage myButtonImage = this.O;
            if (MainApp.K1) {
                i = -328966;
            } else {
                i = -16777216;
            }
            myButtonImage.o(i, true);
        }
        s0();
        if (!this.C1 && this.k1 == null) {
            o0();
            this.C.h(z);
        } else {
            this.C.d(false);
        }
    }

    public final void E0(int i, boolean z) {
        Handler handler;
        if (this.J != null && this.f15086c) {
            this.r0 = i;
            if (i == 1) {
                this.s0 = true;
            } else {
                this.s0 = false;
                h0();
            }
            if ((this.r0 != 1 || !z) && (handler = this.h) != null) {
                handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewRead.60
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogViewRead dialogViewRead = DialogViewRead.this;
                        try {
                            if (!dialogViewRead.s0) {
                                dialogViewRead.V();
                            }
                            MyButtonImage myButtonImage = dialogViewRead.O;
                            if (myButtonImage != null) {
                                myButtonImage.setLoad(false);
                                dialogViewRead.O = null;
                            }
                            dialogViewRead.s0();
                        } catch (Exception unused) {
                        }
                    }
                });
            }
        }
    }

    public final void F0(boolean z) {
        List<WebReadTask.ReadItem> list;
        if (this.y == null) {
            return;
        }
        h0();
        this.s0 = true;
        this.t0 = 0;
        this.u0 = 0;
        List<WebReadTask.ReadItem> list2 = null;
        if (z) {
            if (this.a1) {
                list = getPartList();
            } else {
                list = this.Z0;
            }
            if (list != null && !list.isEmpty()) {
                list2 = list;
            } else {
                this.r0 = 0;
                this.s0 = false;
                this.p0 = null;
                this.q0 = 0;
                E0(0, false);
                return;
            }
        }
        this.w2 = list2;
        k0(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewRead.59
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
                throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogViewRead.AnonymousClass59.run():void");
            }
        });
    }

    public final void G() {
        WebNestView webNestView;
        int height;
        int height2;
        if (this.m != null && (webNestView = this.y) != null && (height = webNestView.getHeight()) != 0 && (height2 = this.m.getHeight()) != 0) {
            int computeVerticalScrollRange = this.y.computeVerticalScrollRange();
            int scrollTop = this.y.getScrollTop();
            if (scrollTop < 0) {
                scrollTop = 0;
            }
            int i = (computeVerticalScrollRange - scrollTop) - height2;
            if (i <= height && i >= (height = height - height2)) {
                height = i;
            }
            this.m.setTranslationY(height);
            if (this.m.getVisibility() != 0) {
                this.y.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewRead.48
                    @Override // java.lang.Runnable
                    public final void run() {
                        MyAdFrame myAdFrame = DialogViewRead.this.m;
                        if (myAdFrame == null) {
                            return;
                        }
                        myAdFrame.setVisibility(0);
                    }
                });
            }
        }
    }

    public final void G0() {
        h0();
        this.r0 = 0;
        this.s0 = false;
        this.p0 = null;
        this.q0 = 0;
        this.t0 = 0;
        this.u0 = 0;
        this.a1 = false;
        try {
            TextToSpeech textToSpeech = this.k0;
            if (textToSpeech != null && textToSpeech.isSpeaking()) {
                this.k0.stop();
            }
            MyButtonImage myButtonImage = this.O;
            if (myButtonImage != null) {
                myButtonImage.setLoad(false);
                this.O = null;
            }
            s0();
        } catch (Exception unused) {
        }
    }

    public final boolean H() {
        if (this.i0) {
            return true;
        }
        this.i0 = true;
        Handler handler = this.h;
        if (handler == null) {
            return false;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewRead.79
            @Override // java.lang.Runnable
            public final void run() {
                DialogViewRead.this.i0 = false;
            }
        });
        return false;
    }

    public final void I() {
        N();
        T();
        S();
        M();
        DialogReadListener dialogReadListener = this.j;
        if (dialogReadListener != null) {
            dialogReadListener.e(this.m1, this.n1, this.o1);
        }
        this.s2 = 1.0f;
        this.t2 = false;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
        this.j1 = ofFloat;
        ofFloat.setDuration(200L);
        a.r(this.j1);
        this.j1.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.dialog.DialogViewRead.41
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                DialogViewRead dialogViewRead = DialogViewRead.this;
                if (dialogViewRead.j1 != null && dialogViewRead.f15086c) {
                    float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    if (dialogViewRead.j1 != null && dialogViewRead.f15086c) {
                        dialogViewRead.s2 = floatValue;
                        if (!dialogViewRead.t2) {
                            dialogViewRead.t2 = true;
                            MainApp.N(dialogViewRead.g, dialogViewRead.u2);
                        }
                    }
                }
            }
        });
        this.j1.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.dialog.DialogViewRead.42
            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationCancel(Animator animator) {
                DialogViewRead dialogViewRead = DialogViewRead.this;
                if (dialogViewRead.j1 == null) {
                    return;
                }
                dialogViewRead.j1 = null;
                dialogViewRead.f0(dialogViewRead.j);
            }

            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                final DialogViewRead dialogViewRead = DialogViewRead.this;
                if (dialogViewRead.j1 == null) {
                    return;
                }
                MainApp.N(dialogViewRead.g, new Runnable() { // from class: com.mycompany.app.dialog.DialogViewRead.44
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogViewRead dialogViewRead2 = DialogViewRead.this;
                        if (dialogViewRead2.j1 == null) {
                            return;
                        }
                        dialogViewRead2.j1 = null;
                        dialogViewRead2.f0(dialogViewRead2.j);
                    }
                });
            }

            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
            }
        });
        ValueAnimator valueAnimator = this.i1;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.i1 = null;
        }
        this.j1.start();
    }

    public final boolean J() {
        boolean z = false;
        if (this.f15086c && this.j1 == null) {
            if (this.C1) {
                f0(this.j);
                return false;
            }
            z = true;
            if (!this.u1) {
                this.u1 = true;
                if (this.m == null) {
                    I();
                    return true;
                }
                Handler handler = this.h;
                if (handler != null) {
                    handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewRead.40
                        @Override // java.lang.Runnable
                        public final void run() {
                            int i = DialogViewRead.S2;
                            DialogViewRead dialogViewRead = DialogViewRead.this;
                            dialogViewRead.K();
                            Handler handler2 = dialogViewRead.h;
                            if (handler2 == null) {
                                return;
                            }
                            handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewRead.40.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    DialogViewRead dialogViewRead2 = DialogViewRead.this;
                                    int i2 = DialogViewRead.S2;
                                    dialogViewRead2.I();
                                }
                            });
                        }
                    });
                }
            }
            return true;
        }
        return z;
    }

    public final void K() {
        MyAdFrame myAdFrame = this.m;
        if (myAdFrame != null) {
            myAdFrame.f = null;
            this.m = null;
            MainApp.f(this.g, 0);
        }
        this.n = null;
    }

    public final void L(boolean z) {
        int i;
        if (!this.f15086c) {
            return;
        }
        if (this.m2 != null) {
            MainUtil.e8(this.g, R.string.wait_retry);
            return;
        }
        if (z) {
            this.H0 = true;
            C0();
        } else {
            this.s0 = true;
            MyButtonImage myButtonImage = this.O;
            if (myButtonImage != null) {
                if (MainApp.K1) {
                    i = -328966;
                } else {
                    i = -16777216;
                }
                myButtonImage.o(i, true);
            }
            s0();
        }
        this.m2 = new MainTransText(this.f, this.g, this.k, this.Z0, 0, this.h2, new DialogSetDesk.SetDeskListener() { // from class: com.mycompany.app.dialog.DialogViewRead.61
            @Override // com.mycompany.app.dialog.DialogSetDesk.SetDeskListener
            public final void a(boolean z2) {
                DialogViewRead dialogViewRead = DialogViewRead.this;
                MainTransText mainTransText = dialogViewRead.m2;
                if (mainTransText != null) {
                    mainTransText.b();
                    dialogViewRead.m2 = null;
                }
                if (dialogViewRead.y == null) {
                    return;
                }
                dialogViewRead.l2 = true;
                if (dialogViewRead.H0) {
                    dialogViewRead.H0 = false;
                    dialogViewRead.C0();
                    dialogViewRead.k0(new AnonymousClass69());
                } else {
                    dialogViewRead.F0(true);
                }
                MyButtonImage myButtonImage2 = dialogViewRead.O;
                if (myButtonImage2 != null) {
                    myButtonImage2.setLoad(false);
                    dialogViewRead.O = null;
                }
                dialogViewRead.s0();
            }
        });
    }

    public final void M() {
        ActionMode actionMode = this.W0;
        if (actionMode != null) {
            actionMode.finish();
            this.W0 = null;
        }
    }

    public final void N() {
        P();
        DialogSaveSource dialogSaveSource = this.G0;
        if (dialogSaveSource != null) {
            dialogSaveSource.dismiss();
            this.G0 = null;
        }
        DialogSeekBright dialogSeekBright = this.I0;
        if (dialogSeekBright != null) {
            dialogSeekBright.dismiss();
            this.I0 = null;
        }
        DialogSeekText dialogSeekText = this.J0;
        if (dialogSeekText != null) {
            dialogSeekText.dismiss();
            this.J0 = null;
        }
        DialogSeekAudio dialogSeekAudio = this.K0;
        if (dialogSeekAudio != null) {
            dialogSeekAudio.dismiss();
            this.K0 = null;
        }
        DialogSetTts dialogSetTts = this.L0;
        if (dialogSetTts != null) {
            dialogSetTts.dismiss();
            this.L0 = null;
        }
        O();
        DialogViewTrans dialogViewTrans = this.N0;
        if (dialogViewTrans != null) {
            dialogViewTrans.dismiss();
            this.N0 = null;
        }
        U();
        Q();
    }

    public final void O() {
        DialogConfirm dialogConfirm = this.M0;
        if (dialogConfirm != null) {
            dialogConfirm.dismiss();
            this.M0 = null;
        }
    }

    public final void P() {
        DialogPrintPage dialogPrintPage = this.F0;
        if (dialogPrintPage != null) {
            dialogPrintPage.dismiss();
            this.F0 = null;
        }
    }

    public final void Q() {
        DialogTransLang dialogTransLang = this.k2;
        if (dialogTransLang != null) {
            dialogTransLang.dismiss();
            this.k2 = null;
        }
    }

    public final void R() {
        MyCoverView myCoverView = this.S;
        if (myCoverView == null) {
            return;
        }
        this.h1 = false;
        myCoverView.f(false);
    }

    public final void S() {
        MyPopupMenu myPopupMenu = this.E0;
        if (myPopupMenu != null) {
            MainActivity mainActivity = this.f;
            if (mainActivity != null) {
                mainActivity.Z0 = null;
            }
            myPopupMenu.a();
            this.E0 = null;
        }
        MyFadeFrame myFadeFrame = this.C;
        if (myFadeFrame != null) {
            myFadeFrame.setAutoHide(true);
        }
    }

    public final void T() {
        MyPopupMenu myPopupMenu = this.D0;
        if (myPopupMenu != null) {
            MainActivity mainActivity = this.f;
            if (mainActivity != null) {
                mainActivity.Z0 = null;
            }
            myPopupMenu.a();
            this.D0 = null;
        }
        MyFadeFrame myFadeFrame = this.C;
        if (myFadeFrame != null) {
            myFadeFrame.setAutoHide(true);
        }
    }

    public final void U() {
        MyDialogBottom myDialogBottom = this.V1;
        if (myDialogBottom != null) {
            myDialogBottom.dismiss();
            this.V1 = null;
        }
        MyDialogRelative myDialogRelative = this.W1;
        if (myDialogRelative != null) {
            myDialogRelative.c();
            this.W1 = null;
        }
        WebTransControl webTransControl = this.X1;
        if (webTransControl != null) {
            webTransControl.c();
            this.X1 = null;
        }
    }

    public final void V() {
        MyFadeFrame myFadeFrame = this.C;
        if (myFadeFrame == null || !this.h0) {
            return;
        }
        this.h0 = false;
        this.O = null;
        myFadeFrame.d(true);
    }

    public final void W() {
        WebVideoImage webVideoImage = this.T;
        this.T = null;
        if (webVideoImage != null) {
            this.F2 = webVideoImage;
            this.G2 = webVideoImage.getVideoType();
            this.H2 = true;
            webVideoImage.u();
            Handler handler = this.h;
            if (handler == null) {
                return;
            }
            handler.post(new AnonymousClass93());
        }
    }

    public final void X(MainActivity mainActivity, MyWebBody myWebBody, String str, String str2, QuickAdapter.QuickItem quickItem, boolean z, int i, int i2, int i3, boolean z2, DialogReadListener dialogReadListener) {
        this.f = mainActivity;
        this.j = dialogReadListener;
        this.k = myWebBody;
        this.a0 = str;
        this.b0 = str2;
        boolean z3 = MainApp.K1;
        this.O0 = z3;
        this.P0 = PrefRead.m;
        this.Q0 = PrefRead.o;
        this.R0 = PrefRead.p;
        this.X0 = z;
        this.l = z2;
        this.l1 = z3;
        this.m1 = i;
        this.n1 = i2;
        this.o1 = i3;
        this.p1 = i;
        this.q1 = i2;
        this.r1 = i3;
        boolean z4 = true;
        if (quickItem != null) {
            this.S0 = true;
            this.T0 = quickItem.f;
            this.U0 = quickItem.o;
            String str3 = quickItem.p;
            if (TextUtils.isEmpty(str3) || (str3.startsWith("https://encrypted-tbn") && str3.contains("/faviconV2?"))) {
                str3 = null;
            }
            this.V0 = str3;
            if (!TextUtils.isEmpty(this.T0)) {
                this.b0 = this.T0;
            }
        }
        int i4 = PrefRead.m;
        if (i4 < 50) {
            PrefRead.m = 50;
        } else if (i4 > 500) {
            PrefRead.m = 500;
        }
        this.j0 = true;
        if (!PrefRead.L && !this.X0) {
            z4 = false;
        }
        this.Y0 = z4;
        Handler handler = this.h;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewRead.1
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r2v2, types: [android.view.View$OnClickListener, java.lang.Object] */
            /* JADX WARN: Type inference failed for: r8v5, types: [android.widget.FrameLayout, android.view.View, com.mycompany.app.view.MyAdFrame] */
            @Override // java.lang.Runnable
            public final void run() {
                MainActivity mainActivity2;
                MyAdFrame myAdFrame;
                final DialogViewRead dialogViewRead = DialogViewRead.this;
                if (dialogViewRead.x == null && (mainActivity2 = dialogViewRead.f) != null) {
                    MyRoundItem myRoundItem = new MyRoundItem(mainActivity2);
                    dialogViewRead.addView(myRoundItem, -1, -1);
                    MyProgressBar myProgressBar = new MyProgressBar(mainActivity2, 0);
                    myProgressBar.setVisibility(8);
                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, MainApp.G1);
                    if (!PrefWeb.t) {
                        layoutParams.topMargin = MainApp.G1 / 2;
                    }
                    myRoundItem.addView(myProgressBar, layoutParams);
                    if (dialogViewRead.l) {
                        ?? frameLayout = new FrameLayout(mainActivity2);
                        frameLayout.setFixedHeight((int) MainUtil.G(dialogViewRead.g, 420.0f));
                        frameLayout.setVisibility(4);
                        myRoundItem.addView((View) frameLayout, -1, -2);
                        myAdFrame = frameLayout;
                    } else {
                        myAdFrame = null;
                    }
                    View view = new View(mainActivity2);
                    view.setBackgroundResource(R.drawable.shadow_list_up);
                    view.setVisibility(8);
                    myRoundItem.addView(view, -1, MainApp.e1);
                    View view2 = new View(mainActivity2);
                    view2.setVisibility(8);
                    RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams((int) MainUtil.G(mainActivity2, 130.0f), (int) MainUtil.G(mainActivity2, 24.0f));
                    layoutParams2.addRule(12);
                    layoutParams2.addRule(21);
                    myRoundItem.addView(view2, layoutParams2);
                    MyScrollBar myScrollBar = new MyScrollBar(mainActivity2);
                    myScrollBar.n();
                    myScrollBar.setVisibility(4);
                    RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams((int) MainUtil.G(mainActivity2, 32.0f), -1);
                    if (PrefZone.x == 1) {
                        layoutParams3.addRule(9);
                        myScrollBar.setPosLeft(true);
                    } else {
                        layoutParams3.addRule(11);
                    }
                    myRoundItem.addView(myScrollBar, layoutParams3);
                    MyFadeFrame myFadeFrame = new MyFadeFrame(mainActivity2);
                    myFadeFrame.setTouchable(true);
                    myFadeFrame.setAutoHide(true);
                    myFadeFrame.setVisibility(8);
                    myRoundItem.addView(myFadeFrame, -1, -1);
                    MyFadeText myFadeText = new MyFadeText(mainActivity2);
                    int i5 = MainApp.f1;
                    myFadeText.setPadding(i5, i5, i5, i5);
                    myFadeText.setGravity(17);
                    myFadeText.setTextSize(1, 16.0f);
                    myFadeText.setText(R.string.reader_empty);
                    myFadeText.setVisibility(8);
                    myRoundItem.addView(myFadeText, -1, -1);
                    MyCoverView myCoverView = new MyCoverView(mainActivity2);
                    myCoverView.setVisibility(8);
                    myRoundItem.addView(myCoverView, -1, -1);
                    dialogViewRead.x = myRoundItem;
                    dialogViewRead.z = myProgressBar;
                    dialogViewRead.m = myAdFrame;
                    dialogViewRead.A = view;
                    dialogViewRead.U1 = view2;
                    dialogViewRead.B = myScrollBar;
                    dialogViewRead.C = myFadeFrame;
                    dialogViewRead.R = myFadeText;
                    dialogViewRead.S = myCoverView;
                    dialogViewRead.setVisibility(4);
                    dialogViewRead.setOnClickListener(new Object());
                    MyRoundItem myRoundItem2 = dialogViewRead.x;
                    int i6 = MainApp.E1;
                    myRoundItem2.n = true;
                    myRoundItem2.o = true;
                    myRoundItem2.q = i6;
                    myRoundItem2.e();
                    dialogViewRead.x.setListener(new ImageSizeListener() { // from class: com.mycompany.app.dialog.DialogViewRead.3
                        @Override // com.mycompany.app.image.ImageSizeListener
                        public final void a(View view3, int i7, int i8) {
                            int i9 = DialogViewRead.S2;
                            DialogViewRead.this.G();
                        }
                    });
                    MyAdFrame myAdFrame2 = dialogViewRead.m;
                    if (myAdFrame2 != null) {
                        myAdFrame2.setListener(new ImageSizeListener() { // from class: com.mycompany.app.dialog.DialogViewRead.4
                            @Override // com.mycompany.app.image.ImageSizeListener
                            public final void a(View view3, int i7, int i8) {
                                int i9 = DialogViewRead.S2;
                                DialogViewRead.this.G();
                            }
                        });
                    }
                    dialogViewRead.B.setListener(new MyScrollBar.ScrollBarListener() { // from class: com.mycompany.app.dialog.DialogViewRead.5
                        @Override // com.mycompany.app.view.MyScrollBar.ScrollBarListener
                        public final void c(int i7) {
                            WebNestView webNestView = DialogViewRead.this.y;
                            if (webNestView == null) {
                                return;
                            }
                            webNestView.scrollTo(0, i7);
                        }

                        @Override // com.mycompany.app.view.MyScrollBar.ScrollBarListener
                        public final int d() {
                            WebNestView webNestView = DialogViewRead.this.y;
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
                            WebNestView webNestView = DialogViewRead.this.y;
                            if (webNestView == null) {
                                return 0;
                            }
                            return webNestView.Y0;
                        }

                        @Override // com.mycompany.app.view.MyScrollBar.ScrollBarListener
                        public final int g() {
                            WebNestView webNestView = DialogViewRead.this.y;
                            if (webNestView == null) {
                                return 0;
                            }
                            return webNestView.X0;
                        }
                    });
                    dialogViewRead.m0();
                    dialogViewRead.V = new GestureDetector(dialogViewRead.g, new GestureDetector.SimpleOnGestureListener() { // from class: com.mycompany.app.dialog.DialogViewRead.6
                        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
                        public final boolean onDoubleTap(MotionEvent motionEvent) {
                            boolean z5;
                            int i7;
                            DialogViewRead dialogViewRead2 = DialogViewRead.this;
                            if (!dialogViewRead2.C1 && dialogViewRead2.y != null) {
                                LinearLayout linearLayout = dialogViewRead2.F;
                                if (linearLayout == null || linearLayout.getVisibility() != 0) {
                                    z5 = false;
                                } else {
                                    z5 = MainUtil.J5((int) motionEvent.getX(), (int) motionEvent.getY(), 0, dialogViewRead2.F);
                                }
                                if (!z5) {
                                    int i8 = PrefRead.m;
                                    if (i8 > 90 && i8 < 110) {
                                        i7 = HttpStatusCodes.STATUS_CODE_OK;
                                    } else {
                                        i7 = 100;
                                    }
                                    dialogViewRead2.setTextSize(i7);
                                    return true;
                                }
                            }
                            return false;
                        }

                        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
                        public final boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                            DialogViewRead dialogViewRead2 = DialogViewRead.this;
                            if (dialogViewRead2.C1 || dialogViewRead2.y == null) {
                                return false;
                            }
                            if (MainUtil.J5((int) motionEvent2.getX(), (int) motionEvent2.getY(), 0, dialogViewRead2.m)) {
                                dialogViewRead2.y.flingScroll(Math.round(-f), Math.round(-f2));
                            }
                            return super.onFling(motionEvent, motionEvent2, f, f2);
                        }

                        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
                        public final boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                            DialogViewRead dialogViewRead2 = DialogViewRead.this;
                            if (dialogViewRead2.C1 || dialogViewRead2.y == null) {
                                return false;
                            }
                            if (MainUtil.J5((int) motionEvent2.getX(), (int) motionEvent2.getY(), 0, dialogViewRead2.m)) {
                                dialogViewRead2.y.scrollBy(Math.round(f), Math.round(f2));
                            }
                            return super.onScroll(motionEvent, motionEvent2, f, f2);
                        }

                        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
                        public final boolean onSingleTapConfirmed(MotionEvent motionEvent) {
                            boolean z5;
                            DialogViewRead dialogViewRead2 = DialogViewRead.this;
                            if (!dialogViewRead2.C1 && dialogViewRead2.x != null && !dialogViewRead2.a0() && dialogViewRead2.D0 == null && dialogViewRead2.E0 == null) {
                                if (MainUtil.J5((int) motionEvent.getX(), (int) motionEvent.getY(), 0, dialogViewRead2.x) && dialogViewRead2.C != null) {
                                    LinearLayout linearLayout = dialogViewRead2.F;
                                    if (linearLayout == null || linearLayout.getVisibility() != 0) {
                                        z5 = false;
                                    } else {
                                        z5 = MainUtil.J5((int) motionEvent.getX(), (int) motionEvent.getY(), 0, dialogViewRead2.F);
                                    }
                                    if (!z5) {
                                        boolean e = dialogViewRead2.C.e();
                                        boolean z6 = !e;
                                        if (!e) {
                                            dialogViewRead2.o0();
                                        }
                                        dialogViewRead2.C.i(z6);
                                        return true;
                                    }
                                }
                            }
                            return false;
                        }
                    });
                    WebReadTask webReadTask = new WebReadTask(dialogViewRead.f, dialogViewRead.g, dialogViewRead.S0, true, dialogViewRead.l, new WebReadTask.WebReadListener() { // from class: com.mycompany.app.dialog.DialogViewRead.7
                        @Override // com.mycompany.app.web.WebReadTask.WebReadListener
                        public final void a() {
                            int i7 = DialogViewRead.S2;
                            DialogViewRead.this.R();
                        }

                        @Override // com.mycompany.app.web.WebReadTask.WebReadListener
                        public final void b(String str4, String str5, String str6, ArrayList arrayList) {
                            DialogViewRead dialogViewRead2 = DialogViewRead.this;
                            dialogViewRead2.b0 = str5;
                            dialogViewRead2.Z0 = arrayList;
                            if (!dialogViewRead2.S0) {
                                dialogViewRead2.R();
                            }
                            dialogViewRead2.setWebHtml(str6);
                            if (dialogViewRead2.Y0) {
                                DialogViewRead.F(dialogViewRead2);
                            }
                        }

                        @Override // com.mycompany.app.web.WebReadTask.WebReadListener
                        public final void c() {
                            DialogViewRead dialogViewRead2 = DialogViewRead.this;
                            dialogViewRead2.f0 = true;
                            MyAdFrame myAdFrame3 = dialogViewRead2.m;
                            if (myAdFrame3 == null) {
                                return;
                            }
                            myAdFrame3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewRead.7.2
                                @Override // java.lang.Runnable
                                public final void run() {
                                    DialogViewRead dialogViewRead3 = DialogViewRead.this;
                                    int i7 = DialogViewRead.S2;
                                    dialogViewRead3.K();
                                }
                            });
                        }

                        /* JADX WARN: Removed duplicated region for block: B:13:0x0034  */
                        @Override // com.mycompany.app.web.WebReadTask.WebReadListener
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                            To view partially-correct add '--show-bad-code' argument
                        */
                        public final void d(java.lang.String r5) {
                            /*
                                r4 = this;
                                com.mycompany.app.dialog.DialogViewRead r0 = com.mycompany.app.dialog.DialogViewRead.this
                                r0.V0 = r5
                                boolean r1 = r0.S0
                                if (r1 != 0) goto L9
                                goto L40
                            L9:
                                boolean r1 = android.text.TextUtils.isEmpty(r5)
                                if (r1 != 0) goto L3c
                                android.content.Context r1 = r0.g
                                com.mycompany.app.data.DataNews r1 = com.mycompany.app.data.DataNews.a(r1)
                                int r2 = r0.U0
                                if (r2 < 0) goto L2d
                                java.util.List r3 = r1.f12897a
                                if (r3 == 0) goto L30
                                int r3 = r3.size()
                                if (r2 < r3) goto L24
                                goto L30
                            L24:
                                java.util.List r3 = r1.f12897a
                                java.lang.Object r2 = r3.get(r2)
                                com.mycompany.app.quick.QuickAdapter$QuickItem r2 = (com.mycompany.app.quick.QuickAdapter.QuickItem) r2
                                goto L31
                            L2d:
                                r1.getClass()
                            L30:
                                r2 = 0
                            L31:
                                if (r2 != 0) goto L34
                                goto L3c
                            L34:
                                r2.p = r5
                                long r2 = java.lang.System.currentTimeMillis()
                                r1.f12898c = r2
                            L3c:
                                android.os.Handler r5 = r0.h
                                if (r5 != 0) goto L41
                            L40:
                                return
                            L41:
                                com.mycompany.app.dialog.DialogViewRead$7$1 r0 = new com.mycompany.app.dialog.DialogViewRead$7$1
                                r0.<init>()
                                r5.post(r0)
                                return
                            */
                            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogViewRead.AnonymousClass7.d(java.lang.String):void");
                        }
                    });
                    dialogViewRead.g0 = webReadTask;
                    MyWebBody myWebBody2 = dialogViewRead.k;
                    WebReadTask.ReadWebListener readWebListener = new WebReadTask.ReadWebListener() { // from class: com.mycompany.app.dialog.DialogViewRead.8
                        @Override // com.mycompany.app.web.WebReadTask.ReadWebListener
                        public final void a(int i7) {
                            DialogViewRead.this.setProgressBar(i7);
                        }

                        @Override // com.mycompany.app.web.WebReadTask.ReadWebListener
                        public final void b() {
                            DialogViewRead dialogViewRead2 = DialogViewRead.this;
                            MyProgressBar myProgressBar2 = dialogViewRead2.z;
                            if (myProgressBar2 == null) {
                                return;
                            }
                            if (!myProgressBar2.B) {
                                dialogViewRead2.h1 = true;
                            } else {
                                dialogViewRead2.C0();
                            }
                        }
                    };
                    webReadTask.s = myWebBody2;
                    webReadTask.r = readWebListener;
                    String str4 = dialogViewRead.a0;
                    String str5 = dialogViewRead.b0;
                    String str6 = dialogViewRead.V0;
                    webReadTask.g = str4;
                    webReadTask.h = MainUtil.I1(str4, true);
                    webReadTask.i = str5;
                    webReadTask.j = str6;
                    if (PrefRead.M) {
                        dialogViewRead.Y1 = true;
                        dialogViewRead.c2 = 1;
                    }
                    dialogViewRead.f2 = PrefAlbum.y;
                    RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-1, -1);
                    if (!dialogViewRead.X0) {
                        layoutParams4.addRule(2, R.id.web_cast_ctrl);
                    }
                    dialogViewRead.k.addView(dialogViewRead, layoutParams4);
                    if (!dialogViewRead.X0) {
                        if (dialogViewRead.f15086c && dialogViewRead.i1 == null && dialogViewRead.j1 == null) {
                            dialogViewRead.p2 = 0.0f;
                            dialogViewRead.q2 = false;
                            ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
                            dialogViewRead.i1 = ofFloat;
                            ofFloat.setDuration(300L);
                            a.v(dialogViewRead.i1);
                            dialogViewRead.i1.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.dialog.DialogViewRead.35
                                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                                    DialogViewRead dialogViewRead2 = DialogViewRead.this;
                                    if (dialogViewRead2.i1 != null && dialogViewRead2.f15086c) {
                                        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                                        if (dialogViewRead2.i1 != null && dialogViewRead2.f15086c) {
                                            dialogViewRead2.p2 = floatValue;
                                            if (!dialogViewRead2.q2) {
                                                dialogViewRead2.q2 = true;
                                                MainApp.N(dialogViewRead2.g, dialogViewRead2.r2);
                                            }
                                        }
                                    }
                                }
                            });
                            dialogViewRead.i1.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.dialog.DialogViewRead.36
                                @Override // android.animation.Animator.AnimatorListener
                                public final void onAnimationCancel(Animator animator) {
                                    DialogViewRead dialogViewRead2 = DialogViewRead.this;
                                    if (dialogViewRead2.i1 == null) {
                                        return;
                                    }
                                    dialogViewRead2.i1 = null;
                                    dialogViewRead2.invalidate();
                                }

                                @Override // android.animation.Animator.AnimatorListener
                                public final void onAnimationEnd(Animator animator) {
                                    DialogViewRead dialogViewRead2 = DialogViewRead.this;
                                    if (dialogViewRead2.i1 == null) {
                                        return;
                                    }
                                    MainApp.N(dialogViewRead2.g, new AnonymousClass39());
                                }

                                @Override // android.animation.Animator.AnimatorListener
                                public final void onAnimationRepeat(Animator animator) {
                                }

                                @Override // android.animation.Animator.AnimatorListener
                                public final void onAnimationStart(Animator animator) {
                                }
                            });
                            dialogViewRead.i1.start();
                            return;
                        }
                        return;
                    }
                    Handler handler2 = dialogViewRead.h;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewRead.9
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogViewRead dialogViewRead2 = DialogViewRead.this;
                            DialogViewRead.f(dialogViewRead2);
                            Handler handler3 = dialogViewRead2.h;
                            if (handler3 == null) {
                                return;
                            }
                            handler3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewRead.9.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    DialogViewRead.this.setMiniMode(true);
                                }
                            });
                        }
                    });
                }
            }
        });
    }

    public final boolean Y() {
        if (this.g != null && this.k0 == null) {
            this.n0 = PrefTts.k;
            try {
                TextToSpeech textToSpeech = new TextToSpeech(this.g, new TextToSpeech.OnInitListener() { // from class: com.mycompany.app.dialog.DialogViewRead.57
                    @Override // android.speech.tts.TextToSpeech.OnInitListener
                    public final void onInit(int i) {
                        DialogViewRead dialogViewRead = DialogViewRead.this;
                        if (i == -1) {
                            int i2 = DialogViewRead.S2;
                            dialogViewRead.g0();
                        } else if (i == 0) {
                            dialogViewRead.j0 = false;
                            DialogViewRead.F(dialogViewRead);
                        }
                    }
                });
                this.k0 = textToSpeech;
                textToSpeech.setOnUtteranceProgressListener(new UtteranceProgressListener() { // from class: com.mycompany.app.dialog.DialogViewRead.58
                    @Override // android.speech.tts.UtteranceProgressListener
                    public final void onDone(String str) {
                        DialogViewRead dialogViewRead = DialogViewRead.this;
                        if (dialogViewRead.p0 != null && dialogViewRead.q0 < r0.size() - 1) {
                            dialogViewRead.F0(false);
                        } else {
                            dialogViewRead.E0(0, false);
                        }
                    }

                    @Override // android.speech.tts.UtteranceProgressListener
                    public final void onError(String str) {
                        int i = DialogViewRead.S2;
                        DialogViewRead.this.E0(0, false);
                    }

                    @Override // android.speech.tts.UtteranceProgressListener
                    public final void onRangeStart(String str, int i, int i2, int i3) {
                        DialogViewRead dialogViewRead = DialogViewRead.this;
                        int i4 = dialogViewRead.t0;
                        int i5 = i4 + i;
                        dialogViewRead.x0 = i5;
                        int i6 = i4 + i2;
                        dialogViewRead.y0 = i6;
                        dialogViewRead.u0 = i;
                        if (dialogViewRead.z0) {
                            return;
                        }
                        dialogViewRead.B0(i5, i6, dialogViewRead.q0, false);
                    }

                    @Override // android.speech.tts.UtteranceProgressListener
                    public final void onStart(String str) {
                        Handler handler;
                        DialogViewRead dialogViewRead = DialogViewRead.this;
                        int i = dialogViewRead.r0;
                        if (i == 1) {
                            dialogViewRead.E0(1, false);
                            return;
                        }
                        if (i == 2) {
                            dialogViewRead.d0(true);
                        } else {
                            if (dialogViewRead.h0 || (handler = dialogViewRead.h) == null) {
                                return;
                            }
                            handler.postDelayed(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewRead.58.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    DialogViewRead dialogViewRead2 = DialogViewRead.this;
                                    if (dialogViewRead2.h0) {
                                        return;
                                    }
                                    dialogViewRead2.G0();
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

    public final boolean Z(String str, boolean z, boolean z2) {
        DialogReadListener dialogReadListener;
        if (this.S0 != z || !MainUtil.q5(this.a0, str)) {
            return false;
        }
        if (z2) {
            if (!this.s0 && (dialogReadListener = this.j) != null) {
                if (!dialogReadListener.h()) {
                    q0();
                    return true;
                }
                post(new AnonymousClass120());
                return true;
            }
        } else {
            Handler handler = this.h;
            if (handler != null && !this.t1) {
                this.t1 = true;
                handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewRead.112
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogViewRead dialogViewRead = DialogViewRead.this;
                        dialogViewRead.setMiniMode(false);
                        dialogViewRead.t1 = false;
                    }
                });
                return true;
            }
        }
        return true;
    }

    public final boolean a0() {
        if (this.F0 != null || this.G0 != null || this.I0 != null || this.J0 != null || this.K0 != null || this.L0 != null || this.M0 != null || this.N0 != null || this.V1 != null || this.k2 != null) {
            return true;
        }
        return false;
    }

    public final boolean b0(boolean z) {
        MyCoverView myCoverView;
        if (this.j0 || this.Y0 || ((z && this.d2 && !this.l2) || this.c2 == 1 || ((myCoverView = this.S) != null && myCoverView.h()))) {
            return true;
        }
        return false;
    }

    public final boolean c0() {
        if (this.C1 && this.k1 == null && Build.VERSION.SDK_INT >= 29 && this.n2 != null && this.o2 != null) {
            return true;
        }
        return false;
    }

    public final void d0(boolean z) {
        if (z) {
            h0();
        }
        this.r0 = 2;
        try {
            TextToSpeech textToSpeech = this.k0;
            if (textToSpeech != null && textToSpeech.isSpeaking()) {
                this.k0.stop();
            }
            s0();
        } catch (Exception unused) {
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        RectF rectF;
        if (this.f15086c) {
            super.dispatchDraw(canvas);
            Paint paint = this.H1;
            if (paint != null && (rectF = this.F1) != null) {
                float f = MainApp.E1;
                canvas.drawRoundRect(rectF, f, f, paint);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (!this.f15086c) {
            return super.dispatchTouchEvent(motionEvent);
        }
        if (this.i1 != null || this.j1 != null || this.k1 != null) {
            return true;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked != 2) {
                    if (actionMasked != 3) {
                        if (actionMasked == 5 && !this.C1 && motionEvent.getPointerCount() > 1 && this.W == null && this.g != null) {
                            this.W = new ScaleGestureDetector(this.g, new ScaleGestureDetector.SimpleOnScaleGestureListener() { // from class: com.mycompany.app.dialog.DialogViewRead.123
                                @Override // android.view.ScaleGestureDetector.SimpleOnScaleGestureListener, android.view.ScaleGestureDetector.OnScaleGestureListener
                                public final boolean onScale(ScaleGestureDetector scaleGestureDetector) {
                                    DialogViewRead dialogViewRead = DialogViewRead.this;
                                    if (!dialogViewRead.C1) {
                                        dialogViewRead.setScaleGesture(scaleGestureDetector);
                                        return true;
                                    }
                                    return false;
                                }
                            });
                        }
                    }
                } else if (this.C1) {
                    float rawX = motionEvent.getRawX();
                    float rawY = motionEvent.getRawY();
                    float I0 = MainUtil.I0(this.J1, rawX, this.K1, rawY);
                    boolean z = this.T1;
                    if (z ? I0 >= MainApp.G1 / 2.0f : I0 >= MainApp.G1) {
                        if (!z) {
                            this.T1 = true;
                            post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewRead.122
                                @Override // java.lang.Runnable
                                public final void run() {
                                    MyButtonImage myButtonImage;
                                    DialogViewRead dialogViewRead = DialogViewRead.this;
                                    if (!dialogViewRead.T1 || (myButtonImage = dialogViewRead.x1) == null || myButtonImage.i() || dialogViewRead.y1.i() || dialogViewRead.z1.i() || dialogViewRead.A1.i()) {
                                        return;
                                    }
                                    dialogViewRead.B1.i();
                                }
                            });
                        }
                        this.J1 = Math.round(rawX);
                        int round = Math.round(rawY);
                        this.K1 = round;
                        v0(this.J1 + this.L1, round + this.M1);
                    }
                }
            }
            if (this.C1) {
                if (this.T1) {
                    w0();
                    if (c0()) {
                        invalidate();
                    }
                }
            } else {
                MyFadeFrame myFadeFrame = this.C;
                if (myFadeFrame != null) {
                    myFadeFrame.g();
                }
                MyScrollBar myScrollBar = this.B;
                if (myScrollBar != null) {
                    myScrollBar.e();
                }
            }
            this.I1 = false;
            this.T1 = false;
        } else {
            this.I1 = true;
            this.T1 = false;
            if (this.C1) {
                float rawX2 = motionEvent.getRawX();
                float rawY2 = motionEvent.getRawY();
                this.J1 = Math.round(rawX2);
                this.K1 = Math.round(rawY2);
                float f = this.R1 - this.N1;
                float f2 = PrefZtri.d0;
                int a2 = a.a(f2, PrefZtri.e0, f, f2);
                float f3 = this.S1 - this.O1;
                float f4 = PrefZtri.f0;
                int a3 = a.a(f4, PrefZtri.g0, f3, f4);
                this.L1 = a2 - this.J1;
                this.M1 = a3 - this.K1;
            }
        }
        if (!this.C1) {
            GestureDetector gestureDetector = this.V;
            if (gestureDetector != null) {
                gestureDetector.onTouchEvent(motionEvent);
            }
            ScaleGestureDetector scaleGestureDetector = this.W;
            if (scaleGestureDetector != null) {
                scaleGestureDetector.onTouchEvent(motionEvent);
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public final void e0(boolean z) {
        if (!this.C1 && this.m != null && this.y != null) {
            if (z) {
                this.f1 = 5;
            }
            if (!this.g1) {
                this.g1 = true;
                int i = this.f1;
                if (i <= 0) {
                    this.g1 = false;
                    return;
                }
                this.f1 = i - 1;
                G();
                this.y.postDelayed(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewRead.49
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogViewRead dialogViewRead = DialogViewRead.this;
                        dialogViewRead.g1 = false;
                        dialogViewRead.e0(false);
                    }
                }, 100L);
            }
        }
    }

    public final void f0(DialogReadListener dialogReadListener) {
        if (!this.f15086c) {
            return;
        }
        this.f15086c = false;
        int i = this.P0;
        int i2 = PrefRead.m;
        if (i != i2) {
            this.P0 = i2;
            PrefSet.f(this.g, 8, i2, "mTextSize");
        }
        K();
        WebReadTask webReadTask = this.g0;
        if (webReadTask != null) {
            webReadTask.z();
            this.g0 = null;
        }
        MainTransText mainTransText = this.m2;
        if (mainTransText != null) {
            mainTransText.b();
            this.m2 = null;
        }
        g0();
        MyWebBody myWebBody = this.k;
        if (myWebBody != null) {
            myWebBody.removeView(this);
            this.k = null;
        }
        this.j = null;
        if (dialogReadListener != null) {
            dialogReadListener.g();
        }
        MyButtonImage myButtonImage = this.r;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.r = null;
        }
        MyButtonImage myButtonImage2 = this.s;
        if (myButtonImage2 != null) {
            myButtonImage2.j();
            this.s = null;
        }
        MyButtonImage myButtonImage3 = this.t;
        if (myButtonImage3 != null) {
            myButtonImage3.j();
            this.t = null;
        }
        MyButtonImage myButtonImage4 = this.u;
        if (myButtonImage4 != null) {
            myButtonImage4.j();
            this.u = null;
        }
        MyButtonImage myButtonImage5 = this.v;
        if (myButtonImage5 != null) {
            myButtonImage5.j();
            this.v = null;
        }
        MyButtonImage myButtonImage6 = this.w;
        if (myButtonImage6 != null) {
            myButtonImage6.j();
            this.w = null;
        }
        MyRoundItem myRoundItem = this.x;
        if (myRoundItem != null) {
            myRoundItem.b();
            this.x = null;
        }
        WebNestView webNestView = this.y;
        if (webNestView != null) {
            MainUtil.F(webNestView, true);
            this.y = null;
        }
        MyProgressBar myProgressBar = this.z;
        if (myProgressBar != null) {
            myProgressBar.f();
            this.z = null;
        }
        MyScrollBar myScrollBar = this.B;
        if (myScrollBar != null) {
            myScrollBar.k();
            this.B = null;
        }
        MyFadeFrame myFadeFrame = this.C;
        if (myFadeFrame != null) {
            myFadeFrame.f();
            this.C = null;
        }
        MyButtonImage myButtonImage7 = this.G;
        if (myButtonImage7 != null) {
            myButtonImage7.j();
            this.G = null;
        }
        MyButtonImage myButtonImage8 = this.H;
        if (myButtonImage8 != null) {
            myButtonImage8.j();
            this.H = null;
        }
        MyButtonImage myButtonImage9 = this.I;
        if (myButtonImage9 != null) {
            myButtonImage9.j();
            this.I = null;
        }
        MyButtonImage myButtonImage10 = this.J;
        if (myButtonImage10 != null) {
            myButtonImage10.j();
            this.J = null;
        }
        MyButtonImage myButtonImage11 = this.K;
        if (myButtonImage11 != null) {
            myButtonImage11.j();
            this.K = null;
        }
        MyButtonImage myButtonImage12 = this.L;
        if (myButtonImage12 != null) {
            myButtonImage12.j();
            this.L = null;
        }
        MyButtonImage myButtonImage13 = this.M;
        if (myButtonImage13 != null) {
            myButtonImage13.j();
            this.M = null;
        }
        MyButtonImage myButtonImage14 = this.N;
        if (myButtonImage14 != null) {
            myButtonImage14.j();
            this.N = null;
        }
        MyButtonImage myButtonImage15 = this.P;
        if (myButtonImage15 != null) {
            myButtonImage15.j();
            this.P = null;
        }
        MyButtonImage myButtonImage16 = this.Q;
        if (myButtonImage16 != null) {
            myButtonImage16.j();
            this.Q = null;
        }
        MyFadeText myFadeText = this.R;
        if (myFadeText != null) {
            myFadeText.l = false;
            ValueAnimator valueAnimator = myFadeText.o;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                myFadeText.o = null;
            }
            ValueAnimator valueAnimator2 = myFadeText.p;
            if (valueAnimator2 != null) {
                valueAnimator2.cancel();
                myFadeText.p = null;
            }
            myFadeText.w = null;
            MyFadeText.EventHandler eventHandler = myFadeText.q;
            if (eventHandler != null) {
                eventHandler.removeMessages(0);
                myFadeText.q = null;
            }
            this.R = null;
        }
        MyCoverView myCoverView = this.S;
        if (myCoverView != null) {
            myCoverView.i();
            this.S = null;
        }
        WebVideoImage webVideoImage = this.T;
        if (webVideoImage != null) {
            webVideoImage.u();
            this.T = null;
        }
        MyFadeFrame myFadeFrame2 = this.U;
        if (myFadeFrame2 != null) {
            myFadeFrame2.f();
            this.U = null;
        }
        MyButtonImage myButtonImage17 = this.x1;
        if (myButtonImage17 != null) {
            myButtonImage17.j();
            this.x1 = null;
        }
        MyButtonImage myButtonImage18 = this.y1;
        if (myButtonImage18 != null) {
            myButtonImage18.j();
            this.y1 = null;
        }
        MyButtonImage myButtonImage19 = this.z1;
        if (myButtonImage19 != null) {
            myButtonImage19.j();
            this.z1 = null;
        }
        MyButtonImage myButtonImage20 = this.A1;
        if (myButtonImage20 != null) {
            myButtonImage20.j();
            this.A1 = null;
        }
        MyButtonImage myButtonImage21 = this.B1;
        if (myButtonImage21 != null) {
            myButtonImage21.j();
            this.B1 = null;
        }
        MyDialogRelative myDialogRelative = this.W1;
        if (myDialogRelative != null) {
            myDialogRelative.c();
            this.W1 = null;
        }
        WebTransControl webTransControl = this.X1;
        if (webTransControl != null) {
            webTransControl.c();
            this.X1 = null;
        }
        this.f = null;
        this.g = null;
        MainUtil.R6(this.h);
        this.h = null;
        this.A = null;
        this.D = null;
        this.E = null;
        this.F = null;
        this.V = null;
        this.W = null;
        this.a0 = null;
        this.b0 = null;
        this.c0 = null;
        this.A0 = null;
        this.B0 = null;
        this.C0 = null;
        this.Q0 = null;
        this.T0 = null;
        this.V0 = null;
        this.Z0 = null;
        this.s1 = null;
        this.w1 = null;
        this.E1 = null;
        this.F1 = null;
        this.H1 = null;
        this.U1 = null;
        this.b2 = null;
        this.e2 = null;
        this.f2 = null;
        this.g2 = null;
        this.h2 = null;
        this.n2 = null;
        this.o2 = null;
    }

    public final void g0() {
        h0();
        this.r0 = 0;
        this.s0 = false;
        this.n0 = null;
        this.o0 = null;
        this.p0 = null;
        this.q0 = 0;
        this.t0 = 0;
        this.u0 = 0;
        TextToSpeech textToSpeech = this.k0;
        if (textToSpeech != null) {
            try {
                if (textToSpeech.isSpeaking()) {
                    this.k0.stop();
                }
                this.k0.shutdown();
            } catch (Exception unused) {
            }
            this.k0 = null;
        }
    }

    public final void h0() {
        WebNestView webNestView;
        if (!PrefZtri.j || (webNestView = this.y) == null) {
            return;
        }
        MainUtil.J(webNestView, "window.getSelection().removeAllRanges();", true);
    }

    public final void i0() {
        WebNestView webNestView = this.y;
        if (webNestView != null) {
            if (this.P0 != PrefRead.m) {
                webNestView.getSettings().setTextZoom(PrefRead.m);
                e0(true);
            }
            if (this.R0 == PrefRead.p && MainUtil.q5(this.Q0, PrefRead.o)) {
                return;
            }
            this.Q0 = PrefRead.o;
            this.R0 = PrefRead.p;
            this.y.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewRead.45
                @Override // java.lang.Runnable
                public final void run() {
                    DialogViewRead dialogViewRead = DialogViewRead.this;
                    WebNestView webNestView2 = dialogViewRead.y;
                    if (webNestView2 == null) {
                        return;
                    }
                    webNestView2.clearCache(false);
                    dialogViewRead.y.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewRead.45.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            WebNestView webNestView3 = DialogViewRead.this.y;
                            if (webNestView3 == null) {
                                return;
                            }
                            webNestView3.reload();
                        }
                    });
                }
            });
        }
    }

    @Override // android.view.View
    public final void invalidate() {
        if (!this.f15086c) {
            return;
        }
        super.invalidate();
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0035 A[Catch: Exception -> 0x0081, TryCatch #0 {Exception -> 0x0081, blocks: (B:5:0x0010, B:8:0x0018, B:11:0x001f, B:14:0x002f, B:16:0x0035, B:19:0x0041, B:21:0x0052, B:23:0x005e, B:25:0x0066, B:26:0x006b, B:28:0x0078, B:34:0x007c, B:35:0x002d), top: B:4:0x0010 }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0041 A[Catch: Exception -> 0x0081, TryCatch #0 {Exception -> 0x0081, blocks: (B:5:0x0010, B:8:0x0018, B:11:0x001f, B:14:0x002f, B:16:0x0035, B:19:0x0041, B:21:0x0052, B:23:0x005e, B:25:0x0066, B:26:0x006b, B:28:0x0078, B:34:0x007c, B:35:0x002d), top: B:4:0x0010 }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x002d A[Catch: Exception -> 0x0081, TryCatch #0 {Exception -> 0x0081, blocks: (B:5:0x0010, B:8:0x0018, B:11:0x001f, B:14:0x002f, B:16:0x0035, B:19:0x0041, B:21:0x0052, B:23:0x005e, B:25:0x0066, B:26:0x006b, B:28:0x0078, B:34:0x007c, B:35:0x002d), top: B:4:0x0010 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void j0() {
        /*
            r6 = this;
            r6.Y()
            android.speech.tts.TextToSpeech r0 = r6.k0
            if (r0 != 0) goto L9
            goto L90
        L9:
            r0 = 1
            r6.r0 = r0
            r6.s0 = r0
            r1 = 0
            r2 = 0
            int r3 = r6.q0     // Catch: java.lang.Exception -> L81
            java.util.ArrayList r4 = r6.p0     // Catch: java.lang.Exception -> L81
            if (r4 == 0) goto L28
            if (r3 < 0) goto L28
            int r4 = r4.size()     // Catch: java.lang.Exception -> L81
            if (r3 < r4) goto L1f
            goto L28
        L1f:
            java.util.ArrayList r4 = r6.p0     // Catch: java.lang.Exception -> L81
            java.lang.Object r3 = r4.get(r3)     // Catch: java.lang.Exception -> L81
            com.mycompany.app.dialog.DialogViewRead$TtsItem r3 = (com.mycompany.app.dialog.DialogViewRead.TtsItem) r3     // Catch: java.lang.Exception -> L81
            goto L29
        L28:
            r3 = r1
        L29:
            if (r3 != 0) goto L2d
            r3 = r1
            goto L2f
        L2d:
            java.lang.String r3 = r3.f15242c     // Catch: java.lang.Exception -> L81
        L2f:
            boolean r4 = android.text.TextUtils.isEmpty(r3)     // Catch: java.lang.Exception -> L81
            if (r4 == 0) goto L41
            r6.r0 = r2     // Catch: java.lang.Exception -> L81
            r6.s0 = r2     // Catch: java.lang.Exception -> L81
            r6.p0 = r1     // Catch: java.lang.Exception -> L81
            r6.q0 = r2     // Catch: java.lang.Exception -> L81
            r6.E0(r2, r2)     // Catch: java.lang.Exception -> L81
            return
        L41:
            int r4 = r6.t0     // Catch: java.lang.Exception -> L81
            int r5 = r6.u0     // Catch: java.lang.Exception -> L81
            int r4 = r4 + r5
            r6.t0 = r4     // Catch: java.lang.Exception -> L81
            java.lang.String r3 = r3.substring(r4)     // Catch: java.lang.Exception -> L81
            boolean r4 = android.text.TextUtils.isEmpty(r3)     // Catch: java.lang.Exception -> L81
            if (r4 == 0) goto L5e
            r6.r0 = r2     // Catch: java.lang.Exception -> L81
            r6.s0 = r2     // Catch: java.lang.Exception -> L81
            r6.p0 = r1     // Catch: java.lang.Exception -> L81
            r6.q0 = r2     // Catch: java.lang.Exception -> L81
            r6.E0(r2, r2)     // Catch: java.lang.Exception -> L81
            return
        L5e:
            android.speech.tts.TextToSpeech r4 = r6.k0     // Catch: java.lang.Exception -> L81
            boolean r4 = r4.isSpeaking()     // Catch: java.lang.Exception -> L81
            if (r4 == 0) goto L6b
            android.speech.tts.TextToSpeech r4 = r6.k0     // Catch: java.lang.Exception -> L81
            r4.stop()     // Catch: java.lang.Exception -> L81
        L6b:
            r6.A0()     // Catch: java.lang.Exception -> L81
            android.speech.tts.TextToSpeech r4 = r6.k0     // Catch: java.lang.Exception -> L81
            java.lang.String r5 = "0"
            int r3 = r4.speak(r3, r2, r1, r5)     // Catch: java.lang.Exception -> L81
            if (r3 != 0) goto L7c
            r6.E0(r0, r0)     // Catch: java.lang.Exception -> L81
            goto L85
        L7c:
            r6.r0 = r2     // Catch: java.lang.Exception -> L81
            r6.s0 = r2     // Catch: java.lang.Exception -> L81
            goto L85
        L81:
            r6.r0 = r2
            r6.s0 = r2
        L85:
            int r0 = r6.r0
            if (r0 != 0) goto L90
            r6.p0 = r1
            r6.q0 = r2
            r6.E0(r2, r2)
        L90:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogViewRead.j0():void");
    }

    public final void k0(Runnable runnable) {
        ExecutorService executorService = this.s1;
        if (executorService == null || executorService.isShutdown() || executorService.isTerminated()) {
            executorService = MainApp.i(this.g);
            if (executorService == null) {
                return;
            } else {
                this.s1 = executorService;
            }
        }
        try {
            executorService.execute(runnable);
        } catch (Exception unused) {
        }
    }

    public final void l0() {
        MyAdNative myAdNative;
        if (this.m != null && (myAdNative = this.n) != null) {
            if (!myAdNative.p()) {
                this.n.setVisibility(8);
            } else {
                this.n.setDarkMode(true);
                this.n.setVisibility(0);
            }
        }
    }

    public final void m0() {
        if (!this.f15086c || this.x == null) {
            return;
        }
        if (MainApp.K1) {
            setBackgroundColor(-16777216);
            this.x.setBackgroundColor(-14606047);
            this.z.g(-922746881, -16777216);
            this.B.setPreColor(-12632257);
            this.R.setTextColor(-328966);
            this.S.setBackColor(-1593835520);
            WebNestView webNestView = this.y;
            if (webNestView != null) {
                webNestView.setBackgroundColor(-14606047);
            }
        } else {
            setBackgroundColor(-1);
            this.x.setBackgroundColor(-1);
            this.z.g(-13022805, -460552);
            this.B.setPreColor(-2434342);
            this.R.setTextColor(-16777216);
            this.S.setBackColor(-1577058305);
            WebNestView webNestView2 = this.y;
            if (webNestView2 != null) {
                webNestView2.setBackgroundColor(-1);
            }
        }
        View view = this.U1;
        if (view != null) {
            if (MainApp.K1) {
                view.setBackgroundResource(R.drawable.trans_logo_short_back_dark);
            } else {
                view.setBackgroundResource(R.drawable.trans_logo_short_back_color);
            }
        }
        r0();
        t0();
        n0();
    }

    public final void n0() {
        RelativeLayout relativeLayout;
        if (!this.f15086c || (relativeLayout = this.D) == null) {
            return;
        }
        if (MainApp.K1) {
            relativeLayout.setBackgroundColor(-14606047);
            this.E.setBackgroundColor(-14606047);
            this.F.setBackgroundColor(-14606047);
            this.r.setImageResource(R.drawable.outline_chevron_left_dark_24);
            this.s.setImageResource(R.drawable.outline_picture_in_picture_alt_dark_24);
            this.u.setImageResource(R.drawable.outline_download_dark_20);
            this.v.setImageResource(R.drawable.outline_refresh_dark_20);
            this.w.setImageResource(R.drawable.outline_more_vert_dark_20);
            this.G.setImageResource(R.drawable.outline_brightness_6_dark_24);
            this.H.setImageResource(R.drawable.outline_text_fields_dark_24);
            this.I.setImageResource(R.drawable.outline_volume_up_dark_24);
            this.J.setImageResource(R.drawable.baseline_play_arrow_dark_24);
            this.K.setImageResource(R.drawable.outline_g_translate_dark_24);
            this.M.setImageResource(R.drawable.baseline_pause_dark_24);
            this.N.setImageResource(R.drawable.baseline_stop_dark_24);
            this.P.setImageResource(R.drawable.outline_search_dark_24);
            this.r.setBgPreColor(-12632257);
            this.s.setBgPreColor(-12632257);
            this.u.setBgPreColor(-12632257);
            this.v.setBgPreColor(-12632257);
            this.w.setBgPreColor(-12632257);
            this.G.setBgPreColor(-12632257);
            this.H.setBgPreColor(-12632257);
            this.I.setBgPreColor(-12632257);
            this.J.setBgPreColor(-12632257);
            this.K.setBgPreColor(-12632257);
            this.L.setBgPreColor(-12632257);
            this.M.setBgPreColor(-12632257);
            this.N.setBgPreColor(-12632257);
            this.P.setBgPreColor(-12632257);
            this.Q.setBgPreColor(-12632257);
            this.G.setBgNorColor(-11513776);
            this.H.setBgNorColor(-11513776);
            this.I.setBgNorColor(-11513776);
            this.J.setBgNorColor(-11513776);
            this.K.setBgNorColor(-11513776);
            this.L.setBgNorColor(-11513776);
            this.M.setBgNorColor(-11513776);
            this.N.setBgNorColor(-11513776);
            this.P.setBgNorColor(-11513776);
            this.Q.setBgNorColor(-11513776);
            if (this.S0) {
                this.t.setImageResource(R.drawable.outline_open_in_new_dark_20);
                this.t.setBgPreColor(-12632257);
            }
        } else {
            relativeLayout.setBackgroundColor(-1);
            this.E.setBackgroundColor(-1);
            this.F.setBackgroundColor(-1);
            this.r.setImageResource(R.drawable.outline_chevron_left_black_24);
            this.s.setImageResource(R.drawable.outline_picture_in_picture_alt_black_24);
            this.u.setImageResource(R.drawable.outline_download_black_20);
            this.v.setImageResource(R.drawable.outline_refresh_black_20);
            this.w.setImageResource(R.drawable.outline_more_vert_black_20);
            this.G.setImageResource(R.drawable.outline_brightness_6_black_24);
            this.H.setImageResource(R.drawable.outline_text_fields_black_24);
            this.I.setImageResource(R.drawable.outline_volume_up_black_24);
            this.J.setImageResource(R.drawable.baseline_play_arrow_black_24);
            this.K.setImageResource(R.drawable.outline_g_translate_black_24);
            this.M.setImageResource(R.drawable.baseline_pause_black_24);
            this.N.setImageResource(R.drawable.baseline_stop_black_24);
            this.P.setImageResource(R.drawable.outline_search_black_24);
            this.r.setBgPreColor(-2039584);
            this.s.setBgPreColor(-2039584);
            this.u.setBgPreColor(-2039584);
            this.v.setBgPreColor(-2039584);
            this.w.setBgPreColor(-2039584);
            this.G.setBgPreColor(-2039584);
            this.H.setBgPreColor(-2039584);
            this.I.setBgPreColor(-2039584);
            this.J.setBgPreColor(-2039584);
            this.K.setBgPreColor(-2039584);
            this.L.setBgPreColor(-2039584);
            this.M.setBgPreColor(-2039584);
            this.N.setBgPreColor(-2039584);
            this.P.setBgPreColor(-2039584);
            this.Q.setBgPreColor(-2039584);
            this.G.setBgNorColor(-460552);
            this.H.setBgNorColor(-460552);
            this.I.setBgNorColor(-460552);
            this.J.setBgNorColor(-460552);
            this.K.setBgNorColor(-460552);
            this.L.setBgNorColor(-460552);
            this.M.setBgNorColor(-460552);
            this.N.setBgNorColor(-460552);
            this.P.setBgNorColor(-460552);
            this.Q.setBgNorColor(-460552);
            if (this.S0) {
                this.t.setImageResource(R.drawable.outline_open_in_new_black_20);
                this.t.setBgPreColor(-2039584);
            }
        }
        x0();
    }

    public final void o0() {
        LinearLayout linearLayout = this.E;
        if (linearLayout == null) {
            return;
        }
        if (this.s0) {
            linearLayout.setVisibility(8);
            this.F.setVisibility(0);
        } else {
            linearLayout.setVisibility(0);
            this.F.setVisibility(8);
        }
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        setPos(false);
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (c0()) {
            p0(0, 0, getWidth(), getHeight());
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        setPos(false);
        if (z && c0()) {
            p0(i, i2, i3, i4);
        }
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        setPos(false);
        RectF rectF = this.F1;
        if (rectF != null) {
            float f = MainApp.n1 / 2.0f;
            rectF.set(f, f, i - f, i2 - f);
        }
    }

    public final void p0(int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        if (Build.VERSION.SDK_INT >= 29 && this.n2 != null && this.o2 != null) {
            int x = (int) getX();
            int i7 = MainApp.g1;
            if (x < i7) {
                i6 = i7 - x;
                if (i6 > i) {
                    i5 = i6 - i7;
                } else {
                    return;
                }
            } else {
                MyWebBody myWebBody = this.k;
                if (myWebBody != null) {
                    int i8 = x + i3;
                    int width = myWebBody.getWidth();
                    int i9 = MainApp.g1;
                    int i10 = width - i9;
                    if (i8 > i10 && (i5 = i3 - (i8 - i10)) < i3) {
                        i6 = i5 + i9;
                    } else {
                        return;
                    }
                } else {
                    return;
                }
            }
            if (i5 >= i) {
                i = i5;
            }
            if (i6 <= i3) {
                i3 = i6;
            }
            try {
                this.n2.set(i, i2, i3, i4);
                setSystemGestureExclusionRects(this.o2);
            } catch (Exception unused) {
            }
        }
    }

    public final void q0() {
        if (this.s0) {
            return;
        }
        if (b0(false)) {
            MainUtil.e8(this.g, R.string.wait_retry);
            return;
        }
        int i = this.r0;
        if (i == 2) {
            j0();
        } else if (i == 0) {
            this.a1 = false;
            if (this.d2 && !this.l2) {
                L(false);
            } else {
                F0(true);
            }
        }
        this.v0 = true;
        D0(false);
    }

    public final void r0() {
        FrameLayout frameLayout;
        if (!this.C1 || (frameLayout = this.w1) == null) {
            return;
        }
        if (MainApp.K1) {
            frameLayout.setBackgroundColor(-14606047);
            this.x1.setImageResource(R.drawable.outline_fullscreen_dark_24);
            this.y1.setImageResource(R.drawable.outline_close_dark_24);
            this.x1.setBgPreColor(-12632257);
            this.y1.setBgPreColor(-12632257);
            this.z1.setBgPreColor(-12632257);
            this.A1.setBgPreColor(-12632257);
            this.B1.setBgPreColor(-12632257);
        } else {
            frameLayout.setBackgroundColor(-1);
            this.x1.setImageResource(R.drawable.outline_fullscreen_black_24);
            this.y1.setImageResource(R.drawable.outline_close_black_24);
            this.x1.setBgPreColor(-2039584);
            this.y1.setBgPreColor(-2039584);
            this.z1.setBgPreColor(-2039584);
            this.A1.setBgPreColor(-2039584);
            this.B1.setBgPreColor(-2039584);
        }
        x0();
        s0();
    }

    public final void s0() {
        MyButtonImage myButtonImage;
        int i;
        if (!this.C1 || (myButtonImage = this.A1) == null) {
            return;
        }
        if (MainApp.K1) {
            if (this.s0) {
                myButtonImage.setImageResource(R.drawable.baseline_pause_dark_24);
            } else {
                myButtonImage.setImageResource(R.drawable.baseline_play_arrow_dark_24);
            }
        } else if (this.s0) {
            myButtonImage.setImageResource(R.drawable.baseline_pause_black_24);
        } else {
            myButtonImage.setImageResource(R.drawable.baseline_play_arrow_black_24);
        }
        if (b0(false)) {
            MyButtonImage myButtonImage2 = this.A1;
            if (MainApp.K1) {
                i = -328966;
            } else {
                i = -16777216;
            }
            myButtonImage2.o(i, true);
            return;
        }
        this.A1.setLoad(false);
    }

    public void setActionMode(ActionMode actionMode) {
        this.W0 = null;
        if (actionMode != null) {
            try {
                Menu menu = actionMode.getMenu();
                if (menu != null) {
                    int size = menu.size();
                    int i = -1;
                    int i2 = -1;
                    for (int i3 = 0; i3 < size; i3++) {
                        MenuItem item = menu.getItem(i3);
                        if (item != null) {
                            i = Math.max(i, item.getItemId());
                            i2 = Math.max(i2, item.getOrder());
                        }
                    }
                    menu.add(0, i + 1, i2 + 1, R.string.play).setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: com.mycompany.app.dialog.DialogViewRead.105
                        @Override // android.view.MenuItem.OnMenuItemClickListener
                        public final boolean onMenuItemClick(MenuItem menuItem) {
                            DialogViewRead dialogViewRead = DialogViewRead.this;
                            if (dialogViewRead.y == null) {
                                return true;
                            }
                            if (dialogViewRead.c2 != 1) {
                                String partJs = dialogViewRead.getPartJs();
                                if (TextUtils.isEmpty(partJs)) {
                                    MainUtil.e8(dialogViewRead.g, R.string.play_error);
                                    return true;
                                }
                                MainUtil.I(dialogViewRead.y, partJs, true);
                                return true;
                            }
                            MainUtil.e8(dialogViewRead.g, R.string.wait_retry);
                            return true;
                        }
                    });
                    menu.add(0, i + 2, i2 + 2, R.string.google_trans).setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: com.mycompany.app.dialog.DialogViewRead.106
                        @Override // android.view.MenuItem.OnMenuItemClickListener
                        public final boolean onMenuItemClick(MenuItem menuItem) {
                            WebNestView webNestView = DialogViewRead.this.y;
                            if (webNestView == null) {
                                return true;
                            }
                            MainUtil.I(webNestView, "(function(){var tag='onActionTrans';var val=window.getSelection().toString();android.onJsResult(tag,val);})();", true);
                            return true;
                        }
                    });
                    this.W0 = actionMode;
                    WebNestView webNestView = this.y;
                    if (webNestView != null) {
                        webNestView.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewRead.107
                            @Override // java.lang.Runnable
                            public final void run() {
                                ActionMode actionMode2 = DialogViewRead.this.W0;
                                if (actionMode2 != null) {
                                    try {
                                        actionMode2.invalidateContentRect();
                                    } catch (Exception unused) {
                                    }
                                }
                            }
                        });
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    public void setReadHtml(String str) {
        WebReadTask webReadTask = this.g0;
        if (webReadTask == null) {
            return;
        }
        webReadTask.j(str);
    }

    public final void t0() {
        int i;
        if (this.w1 != null) {
            if (!this.C1) {
                this.G1 = 0;
                this.F1 = null;
                this.H1 = null;
                return;
            }
            if (this.F1 == null) {
                this.F1 = new RectF();
            }
            if (MainApp.K1) {
                i = -5197648;
            } else {
                i = -16777216;
            }
            if (this.G1 != i) {
                this.G1 = i;
                if (this.H1 == null) {
                    Paint paint = new Paint();
                    this.H1 = paint;
                    paint.setAntiAlias(true);
                    this.H1.setStyle(Paint.Style.STROKE);
                    this.H1.setStrokeWidth(MainApp.n1);
                }
                this.H1.setColor(this.G1);
                invalidate();
            }
        }
    }

    public final void u0() {
        if (this.w1 == null) {
            return;
        }
        if (!this.C1) {
            setElevation(0.0f);
            setClipToOutline(false);
        } else {
            setElevation(MainApp.H1);
            setOutlineProvider(new ViewOutlineProvider());
            setClipToOutline(true);
        }
    }

    public final void v0(int i, int i2) {
        if (!this.f15086c) {
            return;
        }
        int i3 = MainApp.g1;
        int i4 = i3 - this.N1;
        int i5 = i3 - this.O1;
        int i6 = i + i3;
        int i7 = this.R1;
        if (i6 > i7) {
            i = i7 - i3;
        }
        int i8 = i2 + i3;
        int i9 = this.S1;
        if (i8 > i9) {
            i2 = i9 - i3;
        }
        if (i >= i4) {
            i4 = i;
        }
        if (i2 >= i5) {
            i5 = i2;
        }
        PrefZtri.d0 = i4;
        PrefZtri.e0 = i7 - (r1 + i4);
        PrefZtri.f0 = i5;
        PrefZtri.g0 = i9 - (r3 + i5);
        setX(i4 + this.P1);
        setY(i5 + this.Q1);
    }

    public final void w0() {
        PrefZtri r;
        Context context = this.g;
        if (context == null || (r = PrefZtri.r(context)) == null) {
            return;
        }
        r.m("mReadLtX", PrefZtri.d0);
        r.m("mReadRtX", PrefZtri.e0);
        r.m("mReadUpY", PrefZtri.f0);
        r.m("mReadDnY", PrefZtri.g0);
        r.a();
    }

    public final void x0() {
        int i;
        int i2;
        if (this.i) {
            if (MainApp.K1) {
                i = R.drawable.baseline_fast_forward_dark_24;
                i2 = R.drawable.baseline_fast_rewind_dark_24;
            } else {
                i = R.drawable.baseline_fast_forward_black_24;
                i2 = R.drawable.baseline_fast_rewind_black_24;
            }
        } else if (MainApp.K1) {
            i = R.drawable.baseline_fast_rewind_dark_24;
            i2 = R.drawable.baseline_fast_forward_dark_24;
        } else {
            i = R.drawable.baseline_fast_rewind_black_24;
            i2 = R.drawable.baseline_fast_forward_black_24;
        }
        MyButtonImage myButtonImage = this.L;
        if (myButtonImage != null) {
            myButtonImage.setImageResource(i);
            this.Q.setImageResource(i2);
        }
        MyButtonImage myButtonImage2 = this.z1;
        if (myButtonImage2 != null) {
            myButtonImage2.setImageResource(i);
            this.B1.setImageResource(i2);
        }
    }

    public final void y0(int i, boolean z) {
        boolean z2;
        MainActivity mainActivity = this.f;
        if (mainActivity != null) {
            int i2 = Build.VERSION.SDK_INT;
            Window window = mainActivity.getWindow();
            if (window != null) {
                boolean z3 = this.l1;
                boolean z4 = MainApp.K1;
                boolean z5 = true;
                if (z3 != z4) {
                    this.l1 = z4;
                    z2 = true;
                } else {
                    z2 = false;
                }
                int l1 = MainUtil.l1();
                if (l1 != 0) {
                    i = MainUtil.q1(i, l1);
                }
                if (this.m1 != i) {
                    this.m1 = i;
                    if (MainConst.d) {
                        this.k.setTopColor(i);
                    } else {
                        MainUtil.D7(window, i);
                    }
                    z2 = true;
                }
                if (i2 >= 26) {
                    if (this.n1 != i) {
                        this.n1 = i;
                        if (MainConst.d) {
                            this.k.setBotColor(i);
                        } else {
                            MainUtil.t7(window, i);
                        }
                    }
                    z5 = z2;
                } else {
                    if (this.n1 != -16777216) {
                        this.n1 = -16777216;
                        if (MainConst.d) {
                            this.k.setBotColor(-16777216);
                        } else {
                            MainUtil.t7(window, -16777216);
                        }
                    }
                    z5 = z2;
                }
                if (!z5) {
                    return;
                }
                this.O2 = z;
                post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewRead.111
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogViewRead dialogViewRead = DialogViewRead.this;
                        boolean z6 = dialogViewRead.O2;
                        MainActivity mainActivity2 = dialogViewRead.f;
                        if (mainActivity2 == null) {
                            return;
                        }
                        MainUtil.E7(mainActivity2.getWindow(), dialogViewRead.f.a0(), dialogViewRead.f.c0(), z6, z6);
                    }
                });
            }
        }
    }

    public final void z0() {
        boolean Y = Y();
        if (this.k0 != null) {
            float f = PrefTts.l;
            if (f < 0.5f) {
                PrefTts.l = 0.5f;
            } else if (f > 3.0f) {
                PrefTts.l = 3.0f;
            }
            float f2 = PrefTts.m;
            if (f2 < 0.5f) {
                PrefTts.m = 0.5f;
            } else if (f2 > 2.0f) {
                PrefTts.m = 2.0f;
            }
            try {
                if (Y) {
                    float f3 = PrefTts.l;
                    this.l0 = f3;
                    this.m0 = PrefTts.m;
                    if (Float.compare(f3, 1.0f) != 0) {
                        this.k0.setSpeechRate(PrefTts.l);
                    }
                    if (Float.compare(PrefTts.m, 1.0f) != 0) {
                        this.k0.setPitch(PrefTts.m);
                        return;
                    }
                    return;
                }
                if (Float.compare(PrefTts.l, this.l0) != 0) {
                    float f4 = PrefTts.l;
                    this.l0 = f4;
                    this.k0.setSpeechRate(f4);
                }
                if (Float.compare(PrefTts.m, this.m0) != 0) {
                    float f5 = PrefTts.m;
                    this.m0 = f5;
                    this.k0.setPitch(f5);
                }
            } catch (Exception unused) {
            }
        }
    }

    /* loaded from: classes3.dex */
    public class LocalWebViewClient extends WebViewClient {
        public LocalWebViewClient() {
        }

        @Override // android.webkit.WebViewClient
        public final void onPageCommitVisible(WebView webView, String str) {
            Handler handler;
            super.onPageCommitVisible(webView, str);
            DialogViewRead dialogViewRead = DialogViewRead.this;
            dialogViewRead.d0 = true;
            DialogViewRead.j(dialogViewRead);
            dialogViewRead.e0(true);
            if (dialogViewRead.S0) {
                dialogViewRead.R();
            }
            if (PrefRead.j && (handler = dialogViewRead.h) != null) {
                handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewRead.LocalWebViewClient.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        Handler handler2;
                        final DialogViewRead dialogViewRead2 = DialogViewRead.this;
                        if (PrefRead.j) {
                            if (dialogViewRead2.U == null && dialogViewRead2.f15086c && (handler2 = dialogViewRead2.h) != null) {
                                handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewRead.50
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        MainActivity mainActivity;
                                        if (PrefRead.j) {
                                            final DialogViewRead dialogViewRead3 = DialogViewRead.this;
                                            if (dialogViewRead3.U == null && dialogViewRead3.f15086c && (mainActivity = dialogViewRead3.f) != null) {
                                                MyFadeFrame myFadeFrame = new MyFadeFrame(mainActivity);
                                                int i = MainApp.F1;
                                                myFadeFrame.setPadding(i, i, i, i);
                                                FrameLayout frameLayout = new FrameLayout(mainActivity);
                                                int i2 = MainApp.E1;
                                                frameLayout.setPadding(i2, i2, i2, i2);
                                                frameLayout.setBackgroundResource(R.drawable.round_guide_16);
                                                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) MainUtil.G(mainActivity, 132.0f), -2);
                                                layoutParams.gravity = 17;
                                                myFadeFrame.addView(frameLayout, layoutParams);
                                                View view = new View(mainActivity);
                                                int G = (int) MainUtil.G(mainActivity, 84.0f);
                                                FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(G, G);
                                                layoutParams2.gravity = 1;
                                                frameLayout.addView(view, layoutParams2);
                                                AppCompatTextView appCompatTextView = new AppCompatTextView(mainActivity, null);
                                                appCompatTextView.setTextSize(1, 16.0f);
                                                appCompatTextView.setTextColor(-1);
                                                FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-2, -2);
                                                layoutParams3.topMargin = (int) MainUtil.G(mainActivity, 92.0f);
                                                layoutParams3.gravity = 1;
                                                frameLayout.addView(appCompatTextView, layoutParams3);
                                                dialogViewRead3.U = myFadeFrame;
                                                view.setBackgroundResource(R.drawable.outline_pinch);
                                                appCompatTextView.setText(R.string.guide_pinch);
                                                dialogViewRead3.U.setListener(new MyFadeListener() { // from class: com.mycompany.app.dialog.DialogViewRead.51
                                                    @Override // com.mycompany.app.view.MyFadeListener
                                                    public final void a(boolean z) {
                                                        if (z) {
                                                            return;
                                                        }
                                                        DialogViewRead dialogViewRead4 = DialogViewRead.this;
                                                        MyFadeFrame myFadeFrame2 = dialogViewRead4.U;
                                                        if (myFadeFrame2 != null) {
                                                            myFadeFrame2.f();
                                                            dialogViewRead4.removeView(dialogViewRead4.U);
                                                            dialogViewRead4.U = null;
                                                        }
                                                        DialogViewRead.D(dialogViewRead4);
                                                    }

                                                    @Override // com.mycompany.app.view.MyFadeListener
                                                    public final void b(boolean z, boolean z2) {
                                                    }
                                                });
                                                dialogViewRead3.U.setOnTouchListener(new View.OnTouchListener() { // from class: com.mycompany.app.dialog.DialogViewRead.52
                                                    @Override // android.view.View.OnTouchListener
                                                    public final boolean onTouch(View view2, MotionEvent motionEvent) {
                                                        boolean z = PrefRead.j;
                                                        DialogViewRead dialogViewRead4 = DialogViewRead.this;
                                                        if (z) {
                                                            PrefRead.j = false;
                                                            PrefSet.d(8, dialogViewRead4.g, "mGuideRead", false);
                                                        }
                                                        MyFadeFrame myFadeFrame2 = dialogViewRead4.U;
                                                        if (myFadeFrame2 != null) {
                                                            myFadeFrame2.d(true);
                                                        }
                                                        return false;
                                                    }
                                                });
                                                dialogViewRead3.addView(dialogViewRead3.U, -1, -1);
                                                return;
                                            }
                                            return;
                                        }
                                        int i3 = DialogViewRead.S2;
                                    }
                                });
                                return;
                            }
                            return;
                        }
                        int i = DialogViewRead.S2;
                    }
                });
            }
            if (dialogViewRead.Y1) {
                DialogViewRead.i(dialogViewRead);
            }
            if (dialogViewRead.Y0) {
                dialogViewRead.e0 = true;
                WebNestView webNestView = dialogViewRead.y;
                if (webNestView == null) {
                    return;
                }
                webNestView.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewRead.LocalWebViewClient.2
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogViewRead.F(DialogViewRead.this);
                    }
                });
            }
        }

        @Override // android.webkit.WebViewClient
        public final void onPageFinished(WebView webView, String str) {
            final DialogViewRead dialogViewRead = DialogViewRead.this;
            WebNestView webNestView = dialogViewRead.y;
            if (webNestView != null) {
                webNestView.setWebLoading(false);
                DialogViewRead.a(dialogViewRead, str);
                if (!dialogViewRead.z2 && !TextUtils.isEmpty(str) && !str.equals(dialogViewRead.A2)) {
                    dialogViewRead.z2 = true;
                    dialogViewRead.A2 = str;
                    Handler handler = dialogViewRead.h;
                    if (handler != null) {
                        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewRead.85
                            @Override // java.lang.Runnable
                            public final void run() {
                                DialogViewRead dialogViewRead2 = DialogViewRead.this;
                                MainUtil.l(dialogViewRead2.y);
                                dialogViewRead2.z2 = false;
                            }
                        });
                    }
                }
                DialogViewRead.j(dialogViewRead);
                DialogViewRead.i(dialogViewRead);
                if (!TextUtils.isEmpty(dialogViewRead.A0)) {
                    MainUtil.J(dialogViewRead.y, dialogViewRead.A0, true);
                } else {
                    dialogViewRead.k0(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewRead.62
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogViewRead dialogViewRead2 = DialogViewRead.this;
                            if (dialogViewRead2.y != null) {
                                dialogViewRead2.A0 = MainUtil.N2();
                                if (TextUtils.isEmpty(dialogViewRead2.A0)) {
                                    return;
                                }
                                MainUtil.J(dialogViewRead2.y, dialogViewRead2.A0, true);
                            }
                        }
                    });
                }
                if (!dialogViewRead.p) {
                    dialogViewRead.p = true;
                    DialogViewRead.h(dialogViewRead);
                }
            }
        }

        @Override // android.webkit.WebViewClient
        public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            DialogViewRead dialogViewRead = DialogViewRead.this;
            WebNestView webNestView = dialogViewRead.y;
            if (webNestView == null) {
                return;
            }
            webNestView.setWebLoading(true);
            DialogViewRead.a(dialogViewRead, str);
        }

        @Override // android.webkit.WebViewClient
        public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            final DialogViewRead dialogViewRead = DialogViewRead.this;
            dialogViewRead.y = null;
            MainUtil.D(webView, renderProcessGoneDetail);
            Handler handler = dialogViewRead.h;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogViewRead.86
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogViewRead.this.J();
                    }
                });
                return true;
            }
            return true;
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x004d A[RETURN] */
        @Override // android.webkit.WebViewClient
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final android.webkit.WebResourceResponse shouldInterceptRequest(android.webkit.WebView r4, android.webkit.WebResourceRequest r5) {
            /*
                r3 = this;
                com.mycompany.app.dialog.DialogViewRead r4 = com.mycompany.app.dialog.DialogViewRead.this
                com.mycompany.app.web.WebNestView r0 = r4.y
                r1 = 0
                if (r0 != 0) goto L8
                return r1
            L8:
                if (r5 == 0) goto L4e
                android.net.Uri r0 = r5.getUrl()
                if (r0 != 0) goto L11
                goto L4e
            L11:
                android.net.Uri r5 = r5.getUrl()
                java.lang.String r5 = r5.toString()
                com.mycompany.app.dialog.DialogViewRead.a(r4, r5)
                android.content.Context r4 = r4.g
                boolean r0 = android.text.TextUtils.isEmpty(r5)
                if (r0 == 0) goto L26
            L24:
                r5 = r1
                goto L4b
            L26:
                boolean r0 = com.mycompany.app.pref.PrefRead.n
                if (r0 == 0) goto L44
                java.lang.String r0 = "soul_user_font.ttf"
                boolean r5 = r5.contains(r0)
                if (r5 == 0) goto L44
                java.lang.String r4 = com.mycompany.app.main.MainUtil.j3(r4)     // Catch: java.lang.Exception -> L44
                java.io.InputStream r4 = com.mycompany.app.main.MainUtil.a1(r4)     // Catch: java.lang.Exception -> L44
                android.webkit.WebResourceResponse r5 = new android.webkit.WebResourceResponse     // Catch: java.lang.Exception -> L45
                java.lang.String r0 = "application/x-font-ttf"
                java.lang.String r2 = "UTF-8"
                r5.<init>(r0, r2, r4)     // Catch: java.lang.Exception -> L45
                goto L4b
            L44:
                r4 = r1
            L45:
                if (r4 == 0) goto L24
                r4.close()     // Catch: java.lang.Exception -> L24
                goto L24
            L4b:
                if (r5 == 0) goto L4e
                return r5
            L4e:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogViewRead.LocalWebViewClient.shouldInterceptRequest(android.webkit.WebView, android.webkit.WebResourceRequest):android.webkit.WebResourceResponse");
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
            DialogViewRead dialogViewRead = DialogViewRead.this;
            if (dialogViewRead.y != null && !TextUtils.isEmpty(str)) {
                DialogViewRead.a(dialogViewRead, str);
                if (dialogViewRead.f0) {
                    DialogReadListener dialogReadListener = dialogViewRead.j;
                    if (dialogReadListener != null) {
                        dialogReadListener.b(str);
                    }
                } else {
                    dialogViewRead.y.z(str, null);
                    return true;
                }
            }
            return true;
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            DialogViewRead dialogViewRead = DialogViewRead.this;
            if (dialogViewRead.y == null || webResourceRequest == null || webResourceRequest.getUrl() == null) {
                return false;
            }
            String uri = webResourceRequest.getUrl().toString();
            if (TextUtils.isEmpty(uri)) {
                return false;
            }
            DialogViewRead.a(dialogViewRead, uri);
            if (!dialogViewRead.f0) {
                return false;
            }
            DialogReadListener dialogReadListener = dialogViewRead.j;
            if (dialogReadListener == null) {
                return true;
            }
            dialogReadListener.b(uri);
            return true;
        }
    }
}
