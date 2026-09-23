package com.mycompany.app.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.view.Window;
import android.webkit.JavascriptInterface;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.mycompany.app.data.book.DataBookScript;
import com.mycompany.app.db.DbUtil;
import com.mycompany.app.db.book.DbBookScript;
import com.mycompany.app.dialog.DialogEditUrl;
import com.mycompany.app.dialog.DialogSeekAudio;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.script.Script;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyCoverView;
import com.mycompany.app.view.MyMainRelative;
import com.mycompany.app.view.MyScrollBar;
import com.mycompany.app.web.WebNestView;
import com.mycompany.app.web.WebSrcView;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

/* loaded from: classes3.dex */
public class DialogEditScript extends DialogCast {
    public static final /* synthetic */ int t0 = 0;
    public MainActivity G;
    public Context H;
    public DialogEditUrl.EditUrlListener I;
    public MainItem.ChildItem J;
    public boolean K;
    public MyMainRelative L;
    public MyButtonImage M;
    public AppCompatTextView N;
    public MyButtonImage O;
    public RelativeLayout P;
    public FrameLayout Q;
    public WebSrcView R;
    public boolean S;
    public MyScrollBar T;
    public View U;
    public MyCoverView V;
    public boolean W;
    public boolean X;
    public String Y;
    public String Z;
    public String a0;
    public String b0;
    public String c0;
    public DialogSaveConfirm d0;
    public boolean e0;
    public boolean f0;
    public String g0;
    public boolean h0;
    public boolean i0;
    public String j0;
    public String k0;
    public boolean l0;
    public String m0;
    public String n0;
    public boolean o0;
    public boolean p0;
    public String q0;
    public boolean r0;
    public long s0;

    /* renamed from: com.mycompany.app.dialog.DialogEditScript$10, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass10 implements Runnable {
        public AnonymousClass10() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            DialogEditScript dialogEditScript = DialogEditScript.this;
            WebSrcView webSrcView = dialogEditScript.R;
            if (webSrcView != null) {
                WebSettings settings = webSrcView.getSettings();
                settings.setSupportZoom(true);
                settings.setBuiltInZoomControls(true);
                settings.setDisplayZoomControls(false);
                settings.setUseWideViewPort(true);
                settings.setLoadWithOverviewMode(true);
                settings.setJavaScriptCanOpenWindowsAutomatically(false);
                settings.setSupportMultipleWindows(false);
                settings.setMediaPlaybackRequiresUserGesture(false);
                settings.setJavaScriptEnabled(true);
                webSrcView.setOverScrollMode(2);
                webSrcView.setVerticalScrollBarEnabled(false);
                webSrcView.setHorizontalScrollBarEnabled(false);
                Handler handler = dialogEditScript.i;
                if (handler == null) {
                    return;
                }
                handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditScript.10.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        final DialogEditScript dialogEditScript2 = DialogEditScript.this;
                        WebSrcView webSrcView2 = dialogEditScript2.R;
                        if (webSrcView2 != null) {
                            webSrcView2.setWebViewClient(new LocalWebViewClient());
                            webSrcView2.setWebChromeClient(new LocalChromeClient());
                            webSrcView2.setListener(new WebNestView.WebViewListener() { // from class: com.mycompany.app.dialog.DialogEditScript.11
                                @Override // com.mycompany.app.web.WebNestView.WebViewListener
                                public final void a(int i) {
                                }

                                @Override // com.mycompany.app.web.WebNestView.WebViewListener
                                public final void b() {
                                }

                                @Override // com.mycompany.app.web.WebNestView.WebViewListener
                                public final void c(int i) {
                                    DialogEditScript dialogEditScript3 = DialogEditScript.this;
                                    View view = dialogEditScript3.U;
                                    if (view != null) {
                                        if (i > 0) {
                                            view.setVisibility(0);
                                        } else {
                                            view.setVisibility(8);
                                        }
                                        MyScrollBar myScrollBar = dialogEditScript3.T;
                                        if (myScrollBar != null) {
                                            myScrollBar.p(0, 0);
                                        }
                                    }
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
                            Handler handler2 = dialogEditScript2.i;
                            if (handler2 == null) {
                                return;
                            }
                            handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditScript.10.1.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    Handler handler3;
                                    AnonymousClass10 anonymousClass10 = AnonymousClass10.this;
                                    DialogEditScript dialogEditScript3 = DialogEditScript.this;
                                    WebSrcView webSrcView3 = dialogEditScript3.R;
                                    if (webSrcView3 != null) {
                                        dialogEditScript3.f0 = true;
                                        webSrcView3.addJavascriptInterface(new WebAppInterface(), "android");
                                        DialogEditScript dialogEditScript4 = DialogEditScript.this;
                                        dialogEditScript4.W = true;
                                        if (TextUtils.isEmpty(dialogEditScript4.n0) || (handler3 = dialogEditScript4.i) == null) {
                                            return;
                                        }
                                        handler3.post(new AnonymousClass16());
                                    }
                                }
                            });
                        }
                    }
                });
            }
        }
    }

    /* renamed from: com.mycompany.app.dialog.DialogEditScript$16, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass16 implements Runnable {
        public AnonymousClass16() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            DialogEditScript dialogEditScript = DialogEditScript.this;
            if (dialogEditScript.W && !TextUtils.isEmpty(dialogEditScript.n0)) {
                String str = dialogEditScript.n0;
                dialogEditScript.n0 = null;
                if (dialogEditScript.R != null) {
                    dialogEditScript.V.setVisibility(8);
                    MainUtil.r6(dialogEditScript.R, dialogEditScript.g0, str);
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    public class LocalChromeClient extends WebChromeClient {
        public LocalChromeClient() {
        }

        @Override // android.webkit.WebChromeClient
        public final void onProgressChanged(WebView webView, int i) {
            if (i == 100) {
                DialogEditScript dialogEditScript = DialogEditScript.this;
                if (!dialogEditScript.X) {
                    dialogEditScript.X = true;
                    MyButtonImage myButtonImage = dialogEditScript.O;
                    if (myButtonImage != null) {
                        myButtonImage.setVisibility(0);
                    }
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    public class WebAppInterface {
        public WebAppInterface() {
        }

        @JavascriptInterface
        public void onEditText(String str) {
            int i = DialogEditScript.t0;
            if (TextUtils.isEmpty(str)) {
                str = null;
            }
            final DialogEditScript dialogEditScript = DialogEditScript.this;
            dialogEditScript.c0 = str;
            dialogEditScript.p0 = !MainUtil.q5(str, dialogEditScript.b0);
            Handler handler = dialogEditScript.i;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditScript.17
                @Override // java.lang.Runnable
                public final void run() {
                    final DialogEditScript dialogEditScript2 = DialogEditScript.this;
                    boolean z = dialogEditScript2.o0;
                    boolean z2 = dialogEditScript2.p0;
                    dialogEditScript2.o0 = false;
                    dialogEditScript2.h0 = false;
                    if (z2) {
                        if (z) {
                            if (dialogEditScript2.G == null || dialogEditScript2.d0 != null) {
                                return;
                            }
                            dialogEditScript2.v();
                            DialogSaveConfirm dialogSaveConfirm = new DialogSaveConfirm(dialogEditScript2.G, new DialogSeekAudio.DialogSeekListener() { // from class: com.mycompany.app.dialog.DialogEditScript.18
                                @Override // com.mycompany.app.dialog.DialogSeekAudio.DialogSeekListener
                                public final void a(int i2) {
                                    int i3 = DialogEditScript.t0;
                                    DialogEditScript dialogEditScript3 = DialogEditScript.this;
                                    dialogEditScript3.v();
                                    if (i2 == 0) {
                                        DialogEditScript.s(dialogEditScript3);
                                    } else {
                                        dialogEditScript3.dismiss();
                                    }
                                }
                            });
                            dialogEditScript2.d0 = dialogSaveConfirm;
                            dialogSaveConfirm.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogEditScript.19
                                @Override // android.content.DialogInterface.OnDismissListener
                                public final void onDismiss(DialogInterface dialogInterface) {
                                    int i2 = DialogEditScript.t0;
                                    DialogEditScript.this.v();
                                }
                            });
                            return;
                        }
                        DialogEditScript.s(dialogEditScript2);
                        return;
                    }
                    if (!z && !dialogEditScript2.K) {
                        DialogEditScript.s(dialogEditScript2);
                    } else {
                        dialogEditScript2.dismiss();
                    }
                }
            });
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public DialogEditScript(com.mycompany.app.main.MainActivity r2, com.mycompany.app.main.MainItem.ChildItem r3, com.mycompany.app.dialog.DialogEditUrl.EditUrlListener r4) {
        /*
            r1 = this;
            boolean r0 = com.mycompany.app.main.MainApp.K1
            if (r0 == 0) goto L7
            int r0 = com.mycompany.app.soulbrowser.R.style.DialogFullBlack
            goto L9
        L7:
            int r0 = com.mycompany.app.soulbrowser.R.style.DialogFullTheme
        L9:
            r1.<init>(r2, r0)
            r1.j()
            r1.G = r2
            android.content.Context r2 = r1.getContext()
            r1.H = r2
            r1.I = r4
            r1.J = r3
            boolean r2 = com.mycompany.app.main.MainApp.K1
            r1.e0 = r2
            android.os.Handler r2 = r1.i
            if (r2 != 0) goto L24
            return
        L24:
            com.mycompany.app.dialog.DialogEditScript$1 r3 = new com.mycompany.app.dialog.DialogEditScript$1
            r3.<init>()
            r2.post(r3)
            com.mycompany.app.dialog.DialogEditScript$2 r2 = new com.mycompany.app.dialog.DialogEditScript$2
            r2.<init>()
            r1.m(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogEditScript.<init>(com.mycompany.app.main.MainActivity, com.mycompany.app.main.MainItem$ChildItem, com.mycompany.app.dialog.DialogEditUrl$EditUrlListener):void");
    }

    public static void r(DialogEditScript dialogEditScript, String str) {
        if (dialogEditScript.R != null) {
            if (MainUtil.D5(str)) {
                if (dialogEditScript.f0) {
                    dialogEditScript.f0 = false;
                    WebSrcView webSrcView = dialogEditScript.R;
                    if (webSrcView != null) {
                        webSrcView.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditScript.14
                            @Override // java.lang.Runnable
                            public final void run() {
                                DialogEditScript dialogEditScript2 = DialogEditScript.this;
                                WebSrcView webSrcView2 = dialogEditScript2.R;
                                if (webSrcView2 == null) {
                                    return;
                                }
                                dialogEditScript2.f0 = false;
                                webSrcView2.removeJavascriptInterface("android");
                            }
                        });
                        return;
                    }
                    return;
                }
                return;
            }
            if (!dialogEditScript.f0) {
                dialogEditScript.f0 = true;
                WebSrcView webSrcView2 = dialogEditScript.R;
                if (webSrcView2 == null) {
                    return;
                }
                webSrcView2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditScript.15
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogEditScript dialogEditScript2 = DialogEditScript.this;
                        WebSrcView webSrcView3 = dialogEditScript2.R;
                        if (webSrcView3 == null) {
                            return;
                        }
                        dialogEditScript2.f0 = true;
                        webSrcView3.addJavascriptInterface(new WebAppInterface(), "android");
                    }
                });
            }
        }
    }

    public static void s(DialogEditScript dialogEditScript) {
        if (dialogEditScript.R != null && dialogEditScript.I != null) {
            if (TextUtils.isEmpty(dialogEditScript.c0)) {
                MainUtil.e8(dialogEditScript.H, R.string.empty);
                return;
            }
            dialogEditScript.i0 = true;
            dialogEditScript.M.setEnabled(false);
            dialogEditScript.O.setEnabled(false);
            dialogEditScript.V.setVisibility(0);
            dialogEditScript.m(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditScript.20
                @Override // java.lang.Runnable
                public final void run() {
                    String str;
                    String str2;
                    Locale j;
                    String str3;
                    DialogEditScript dialogEditScript2 = DialogEditScript.this;
                    Context context = dialogEditScript2.H;
                    if (context != null) {
                        dialogEditScript2.q0 = null;
                        dialogEditScript2.r0 = false;
                        dialogEditScript2.s0 = 0L;
                        MainItem.ChildItem childItem = dialogEditScript2.J;
                        String str4 = dialogEditScript2.c0;
                        if (childItem != null) {
                            str = childItem.g;
                            str2 = childItem.h;
                        } else {
                            str = null;
                            str2 = null;
                        }
                        if (TextUtils.isEmpty(str)) {
                            str2 = dialogEditScript2.u();
                            if (TextUtils.isEmpty(str2)) {
                                str = null;
                            } else {
                                str = "userscript://" + str2.toLowerCase(Locale.US);
                            }
                        }
                        if (TextUtils.isEmpty(dialogEditScript2.j0) && (j = MainApp.j()) != null) {
                            String language = j.getLanguage();
                            if (!TextUtils.isEmpty(language)) {
                                Locale locale = Locale.US;
                                String lowerCase = language.toLowerCase(locale);
                                String country = j.getCountry();
                                if (!TextUtils.isEmpty(country)) {
                                    str3 = android.support.v4.media.a.D(lowerCase, "-", country.toLowerCase(locale));
                                } else {
                                    str3 = null;
                                }
                                dialogEditScript2.j0 = lowerCase;
                                dialogEditScript2.k0 = str3;
                            }
                        }
                        Script c2 = Script.c(context, str, str2, str4, dialogEditScript2.j0, dialogEditScript2.k0, true);
                        dialogEditScript2.q0 = Script.x;
                        Script.x = null;
                        if (c2 != null) {
                            String str5 = c2.f17548a;
                            String str6 = c2.b;
                            if (!MainUtil.q5(str5, dialogEditScript2.Z) || !MainUtil.q5(str6, dialogEditScript2.a0)) {
                                Context context2 = dialogEditScript2.H;
                                DbBookScript dbBookScript = DbBookScript.f12949c;
                                if (!TextUtils.isEmpty(str5) && !TextUtils.isEmpty(str6)) {
                                    if (DbUtil.d(DbBookScript.d(context2).getWritableDatabase(), "DbBookScript_table", null, "_name=? AND _namespace=?", new String[]{str5, str6}) == 1) {
                                        dialogEditScript2.r0 = true;
                                    }
                                }
                            }
                            MainItem.ChildItem o = DbBookScript.o(context, c2, childItem, dialogEditScript2.j0, dialogEditScript2.k0);
                            if (o != null) {
                                dialogEditScript2.Z = str5;
                                dialogEditScript2.a0 = str6;
                                DataBookScript k = DataBookScript.k(context);
                                List list = k.b;
                                if (list != null && list.size() > 0) {
                                    k.j(o);
                                }
                                dialogEditScript2.s0 = o.y;
                            }
                        }
                    }
                    Handler handler = dialogEditScript2.i;
                    if (handler == null) {
                        return;
                    }
                    handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditScript.20.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogEditScript dialogEditScript3 = DialogEditScript.this;
                            String str7 = dialogEditScript3.q0;
                            dialogEditScript3.q0 = null;
                            MyButtonImage myButtonImage = dialogEditScript3.M;
                            if (myButtonImage != null) {
                                myButtonImage.setEnabled(true);
                                dialogEditScript3.O.setEnabled(true);
                                dialogEditScript3.V.setVisibility(8);
                                if (dialogEditScript3.r0) {
                                    MainUtil.e8(dialogEditScript3.H, R.string.exist_name);
                                } else if (dialogEditScript3.s0 > 0) {
                                    dialogEditScript3.dismiss();
                                } else {
                                    if (TextUtils.isEmpty(str7)) {
                                        StringBuilder sb = new StringBuilder("Error\n");
                                        str7 = com.google.android.gms.internal.mlkit_vision_text_common.a.v(R.string.check_format, dialogEditScript3.H, sb);
                                    }
                                    MainUtil.f8(dialogEditScript3.H, str7);
                                }
                            }
                            dialogEditScript3.i0 = false;
                        }
                    });
                }
            });
        }
    }

    @Override // com.mycompany.app.dialog.DialogCast, com.mycompany.app.view.MyDialogNormal, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18667c = false;
        if (this.H == null) {
            return;
        }
        v();
        DialogEditUrl.EditUrlListener editUrlListener = this.I;
        if (editUrlListener != null) {
            long j = this.s0;
            if (j > 0) {
                editUrlListener.a(j, null, null);
            }
            this.I = null;
        }
        MyButtonImage myButtonImage = this.M;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.M = null;
        }
        MyButtonImage myButtonImage2 = this.O;
        if (myButtonImage2 != null) {
            myButtonImage2.j();
            this.O = null;
        }
        WebSrcView webSrcView = this.R;
        if (webSrcView != null) {
            if (this.S) {
                this.S = false;
                webSrcView.stopLoading();
            }
            MainUtil.P6(this.R);
            this.R = null;
        }
        MyScrollBar myScrollBar = this.T;
        if (myScrollBar != null) {
            myScrollBar.k();
            this.T = null;
        }
        MyCoverView myCoverView = this.V;
        if (myCoverView != null) {
            myCoverView.i();
            this.V = null;
        }
        this.G = null;
        this.H = null;
        this.J = null;
        this.L = null;
        this.N = null;
        this.P = null;
        this.Q = null;
        this.U = null;
        this.Y = null;
        this.Z = null;
        this.a0 = null;
        this.b0 = null;
        this.c0 = null;
        this.g0 = null;
        this.j0 = null;
        this.k0 = null;
        super.dismiss();
    }

    @Override // com.mycompany.app.view.MyDialogNormal
    public final void l() {
        if (t(true)) {
            return;
        }
        dismiss();
    }

    @Override // com.mycompany.app.view.MyDialogNormal, android.app.Dialog
    public final void onBackPressed() {
        if (e()) {
            return;
        }
        l();
    }

    public final boolean t(boolean z) {
        WebSrcView webSrcView;
        if (this.X && (webSrcView = this.R) != null) {
            if (!this.h0 && !this.i0) {
                this.h0 = true;
                this.o0 = z;
                MainUtil.I(webSrcView, "android.onEditText(document.querySelector('textarea').value);", true);
            }
            return true;
        }
        return false;
    }

    public final String u() {
        String l;
        String C;
        if (!TextUtils.isEmpty(this.Y)) {
            return this.Y;
        }
        long currentTimeMillis = System.currentTimeMillis();
        try {
            l = new SimpleDateFormat("yyyyMMddhhmmssSSS", MainApp.j()).format(new Date(currentTimeMillis));
        } catch (Exception unused) {
            l = Long.toString(currentTimeMillis);
        }
        if (TextUtils.isEmpty(l)) {
            C = null;
        } else {
            C = android.support.v4.media.a.C("User.", l);
        }
        this.Y = C;
        return C;
    }

    public final void v() {
        DialogSaveConfirm dialogSaveConfirm = this.d0;
        if (dialogSaveConfirm != null) {
            dialogSaveConfirm.dismiss();
            this.d0 = null;
        }
    }

    public final void w() {
        int i;
        MyMainRelative myMainRelative = this.L;
        if (myMainRelative == null) {
            return;
        }
        Window window = getWindow();
        if (MainApp.K1) {
            i = -16777216;
        } else {
            i = -460552;
        }
        myMainRelative.b(window, i);
        if (MainApp.K1) {
            if (Build.VERSION.SDK_INT >= 30) {
                getWindow().setBackgroundDrawable(new ColorDrawable(-16777216));
            }
            this.M.setImageResource(R.drawable.outline_chevron_left_dark_24);
            this.N.setTextColor(-328966);
            this.O.setImageResource(R.drawable.outline_check_dark_20);
            this.P.setBackgroundColor(-14606047);
            WebSrcView webSrcView = this.R;
            if (webSrcView != null) {
                webSrcView.setBackgroundColor(-14606047);
            }
            this.T.setPreColor(-12632257);
            this.M.setBgPreColor(-12632257);
            this.O.setBgPreColor(-12632257);
            return;
        }
        if (Build.VERSION.SDK_INT >= 30) {
            getWindow().setBackgroundDrawable(new ColorDrawable(-460552));
        }
        this.M.setImageResource(R.drawable.outline_chevron_left_black_24);
        this.N.setTextColor(-16777216);
        this.O.setImageResource(R.drawable.outline_check_black_20);
        this.P.setBackgroundColor(-1);
        WebSrcView webSrcView2 = this.R;
        if (webSrcView2 != null) {
            webSrcView2.setBackgroundColor(-1);
        }
        this.T.setPreColor(-2434342);
        this.M.setBgPreColor(553648128);
        this.O.setBgPreColor(553648128);
    }

    /* loaded from: classes3.dex */
    public class LocalWebViewClient extends WebViewClient {
        public LocalWebViewClient() {
        }

        @Override // android.webkit.WebViewClient
        public final void onPageFinished(WebView webView, String str) {
            final DialogEditScript dialogEditScript = DialogEditScript.this;
            if (dialogEditScript.R != null) {
                dialogEditScript.S = false;
                DialogEditScript.r(dialogEditScript, str);
                if (!dialogEditScript.l0 && !TextUtils.isEmpty(str) && !str.equals(dialogEditScript.m0)) {
                    dialogEditScript.l0 = true;
                    dialogEditScript.m0 = str;
                    Handler handler = dialogEditScript.i;
                    if (handler != null) {
                        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditScript.12
                            @Override // java.lang.Runnable
                            public final void run() {
                                DialogEditScript dialogEditScript2 = DialogEditScript.this;
                                MainUtil.l(dialogEditScript2.R);
                                dialogEditScript2.l0 = false;
                            }
                        });
                    }
                }
                if (!dialogEditScript.X) {
                    dialogEditScript.X = true;
                    MyButtonImage myButtonImage = dialogEditScript.O;
                    if (myButtonImage == null) {
                        return;
                    }
                    myButtonImage.setVisibility(0);
                }
            }
        }

        @Override // android.webkit.WebViewClient
        public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            DialogEditScript dialogEditScript = DialogEditScript.this;
            if (dialogEditScript.R == null) {
                return;
            }
            dialogEditScript.S = true;
            DialogEditScript.r(dialogEditScript, str);
        }

        @Override // android.webkit.WebViewClient
        public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            final DialogEditScript dialogEditScript = DialogEditScript.this;
            dialogEditScript.R = null;
            MainUtil.D(webView, renderProcessGoneDetail);
            Handler handler = dialogEditScript.i;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditScript.13
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogEditScript.this.dismiss();
                    }
                });
                return true;
            }
            return true;
        }

        @Override // android.webkit.WebViewClient
        public final WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
            DialogEditScript dialogEditScript = DialogEditScript.this;
            if (dialogEditScript.R != null && webResourceRequest != null && webResourceRequest.getUrl() != null) {
                DialogEditScript.r(dialogEditScript, webResourceRequest.getUrl().toString());
            }
            return null;
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
            DialogEditScript dialogEditScript = DialogEditScript.this;
            if (dialogEditScript.R == null || TextUtils.isEmpty(str)) {
                return true;
            }
            DialogEditScript.r(dialogEditScript, str);
            return true;
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            DialogEditScript dialogEditScript = DialogEditScript.this;
            if (dialogEditScript.R != null && webResourceRequest != null && webResourceRequest.getUrl() != null) {
                String uri = webResourceRequest.getUrl().toString();
                if (TextUtils.isEmpty(uri)) {
                    return true;
                }
                DialogEditScript.r(dialogEditScript, uri);
            }
            return true;
        }
    }
}
