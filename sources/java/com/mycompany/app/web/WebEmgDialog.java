package com.mycompany.app.web;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.os.Handler;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.Window;
import android.webkit.JavascriptInterface;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.URLUtil;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.appcompat.widget.AppCompatTextView;
import com.mycompany.app.async.MyAsyncTask;
import com.mycompany.app.cast.CastUtil;
import com.mycompany.app.data.DataUrl;
import com.mycompany.app.dialog.DialogCast;
import com.mycompany.app.dialog.DialogConfirm;
import com.mycompany.app.dialog.DialogCreateAlbum;
import com.mycompany.app.dialog.DialogDownList;
import com.mycompany.app.dialog.DialogDownZip;
import com.mycompany.app.dialog.DialogImageType;
import com.mycompany.app.dialog.DialogSetFull;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefAlbum;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonCheck;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyCoverView;
import com.mycompany.app.view.MyFadeImage;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyMainRelative;
import com.mycompany.app.view.MyManagerGrid;
import com.mycompany.app.view.MyProgressBar;
import com.mycompany.app.view.MyRecyclerView;
import com.mycompany.app.view.MyScrollBar;
import com.mycompany.app.web.WebGridDialog;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* loaded from: classes3.dex */
public class WebEmgDialog extends DialogCast {
    public static final /* synthetic */ int K0 = 0;
    public WebEmgLoad A0;
    public boolean B0;
    public boolean C0;
    public boolean D0;
    public boolean E0;
    public String F0;
    public WebViewActivity G;
    public boolean G0;
    public Context H;
    public final Runnable H0;
    public WebGridDialog.WebImgListener I;
    public int I0;
    public boolean J;
    public CastUtil J0;
    public MyMainRelative K;
    public MyButtonImage L;
    public AppCompatTextView M;
    public MyButtonImage N;
    public MyButtonImage O;
    public AppCompatTextView P;
    public MyButtonCheck Q;
    public MyProgressBar R;
    public MyRecyclerView S;
    public MyScrollBar T;
    public MyFadeImage U;
    public MyCoverView V;
    public MyLineText W;
    public MyLineText X;
    public AppCompatTextView Y;
    public AppCompatTextView Z;
    public boolean a0;
    public WebGridAdapter b0;
    public MyManagerGrid c0;
    public int d0;
    public int e0;
    public int f0;
    public WebEmgTask g0;
    public WebNestView h0;
    public String i0;
    public String j0;
    public ArrayList k0;
    public DataUrl.ImgCntItem l0;
    public TypeTask m0;
    public DialogConfirm n0;
    public DialogImageType o0;
    public int p0;
    public DialogDownList q0;
    public DialogDownZip r0;
    public DialogCreateAlbum s0;
    public int t0;
    public long u0;
    public boolean v0;
    public boolean w0;
    public boolean x0;
    public int y0;
    public WebEmgLoad z0;

    /* renamed from: com.mycompany.app.web.WebEmgDialog$23, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass23 implements Runnable {

        /* renamed from: com.mycompany.app.web.WebEmgDialog$23$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 implements Runnable {

            /* renamed from: com.mycompany.app.web.WebEmgDialog$23$1$1, reason: invalid class name and collision with other inner class name */
            /* loaded from: classes3.dex */
            class RunnableC02381 implements Runnable {
                public RunnableC02381() {
                }

                @Override // java.lang.Runnable
                public final void run() {
                    AnonymousClass23 anonymousClass23 = AnonymousClass23.this;
                    WebEmgDialog webEmgDialog = WebEmgDialog.this;
                    WebNestView webNestView = webEmgDialog.h0;
                    if (webNestView != null) {
                        webEmgDialog.C0 = true;
                        webNestView.addJavascriptInterface(new WebAppInterface(), "android");
                        Handler handler = WebEmgDialog.this.i;
                        if (handler == null) {
                            return;
                        }
                        handler.post(new Runnable() { // from class: com.mycompany.app.web.WebEmgDialog.23.1.1.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                WebEmgDialog webEmgDialog2 = WebEmgDialog.this;
                                if (webEmgDialog2.h0 != null) {
                                    WebEmgDialog.w(webEmgDialog2);
                                    WebEmgDialog.this.G();
                                    Handler handler2 = WebEmgDialog.this.i;
                                    if (handler2 == null) {
                                        return;
                                    }
                                    handler2.post(new Runnable() { // from class: com.mycompany.app.web.WebEmgDialog.23.1.1.1.1
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            WebEmgDialog webEmgDialog3 = WebEmgDialog.this;
                                            WebNestView webNestView2 = webEmgDialog3.h0;
                                            if (webNestView2 == null) {
                                                return;
                                            }
                                            webEmgDialog3.f0 = 0;
                                            webNestView2.z(webEmgDialog3.i0, null);
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
                WebEmgDialog webEmgDialog = WebEmgDialog.this;
                WebNestView webNestView = webEmgDialog.h0;
                if (webNestView != null) {
                    webNestView.setWebViewClient(new LocalWebViewClient());
                    Handler handler = webEmgDialog.i;
                    if (handler == null) {
                        return;
                    }
                    handler.post(new RunnableC02381());
                }
            }
        }

        public AnonymousClass23() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            WebEmgDialog webEmgDialog = WebEmgDialog.this;
            WebNestView webNestView = webEmgDialog.h0;
            if (webNestView != null) {
                MainUtil.W7(webNestView, false);
                Handler handler = webEmgDialog.i;
                if (handler == null) {
                    return;
                }
                handler.post(new AnonymousClass1());
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class TypeTask extends MyAsyncTask {
        public final WeakReference e;
        public final List f;
        public ArrayList g;
        public final int h;

        public TypeTask(WebEmgDialog webEmgDialog, List list, int i) {
            WeakReference weakReference = new WeakReference(webEmgDialog);
            this.e = weakReference;
            WebEmgDialog webEmgDialog2 = (WebEmgDialog) weakReference.get();
            if (webEmgDialog2 != null) {
                this.f = list;
                this.h = i;
                MyCoverView myCoverView = webEmgDialog2.V;
                if (myCoverView != null) {
                    myCoverView.setBackColor(0);
                    webEmgDialog2.V.n(true, 1.0f, 200L);
                }
                MyRecyclerView myRecyclerView = webEmgDialog2.S;
                if (myRecyclerView != null) {
                    myRecyclerView.setEnabled(false);
                }
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void a() {
            int i;
            List list;
            WeakReference weakReference = this.e;
            if (weakReference != null && ((WebEmgDialog) weakReference.get()) != null && !this.f12839c && (i = this.h) != 0 && (list = this.f) != null && !list.isEmpty()) {
                if (i == 126) {
                    this.g = new ArrayList(list);
                    return;
                }
                this.g = new ArrayList();
                ArrayList arrayList = new ArrayList(list);
                int size = arrayList.size();
                int i2 = 0;
                while (i2 < size) {
                    Object obj = arrayList.get(i2);
                    i2++;
                    String str = (String) obj;
                    if (!this.f12839c) {
                        if ((i & 2) == 2) {
                            this.g.add(str);
                        }
                    } else {
                        return;
                    }
                }
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            WebEmgDialog webEmgDialog;
            WeakReference weakReference = this.e;
            if (weakReference != null && (webEmgDialog = (WebEmgDialog) weakReference.get()) != null) {
                webEmgDialog.m0 = null;
                MyCoverView myCoverView = webEmgDialog.V;
                if (myCoverView != null) {
                    myCoverView.f(true);
                }
                if (webEmgDialog.C()) {
                    webEmgDialog.S.setEnabled(true);
                    webEmgDialog.R.setIncrease(2);
                    webEmgDialog.H();
                }
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            WebEmgDialog webEmgDialog;
            int size;
            int size2;
            WeakReference weakReference = this.e;
            if (weakReference != null && (webEmgDialog = (WebEmgDialog) weakReference.get()) != null) {
                webEmgDialog.m0 = null;
                if (webEmgDialog.b0 != null) {
                    if (!this.f12839c) {
                        List list = this.f;
                        if (list == null) {
                            size = 0;
                        } else {
                            size = list.size();
                        }
                        ArrayList arrayList = this.g;
                        if (arrayList == null) {
                            size2 = 0;
                        } else {
                            size2 = arrayList.size();
                        }
                        if (size > size2) {
                            webEmgDialog.p0 = size - size2;
                            MainUtil.f8(webEmgDialog.H, String.format(Locale.US, webEmgDialog.H.getString(R.string.filtered_image), Integer.valueOf(webEmgDialog.p0)));
                        }
                        webEmgDialog.b0.F(this.g);
                    }
                    MyCoverView myCoverView = webEmgDialog.V;
                    if (myCoverView != null) {
                        myCoverView.f(true);
                    }
                    if (webEmgDialog.C()) {
                        webEmgDialog.S.setEnabled(true);
                        webEmgDialog.R.setIncrease(2);
                        webEmgDialog.H();
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
        public void onViewHtml(String str, String str2) {
            WebNestView webNestView = WebEmgDialog.this.h0;
            if (webNestView != null) {
                webNestView.U(str, str2);
            }
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public WebEmgDialog(com.mycompany.app.web.WebViewActivity r2, java.lang.String r3, com.mycompany.app.web.WebGridDialog.WebImgListener r4) {
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
            com.mycompany.app.web.WebEmgDialog$32 r0 = new com.mycompany.app.web.WebEmgDialog$32
            r0.<init>()
            r1.H0 = r0
            r1.j()
            r1.G = r2
            android.content.Context r2 = r1.getContext()
            r1.H = r2
            r1.I = r4
            r2 = 1
            r1.J = r2
            boolean r2 = com.mycompany.app.main.MainApp.K1
            r1.B0 = r2
            r1.i0 = r3
            r2 = 0
            r1.f0 = r2
            android.os.Handler r2 = r1.i
            if (r2 != 0) goto L31
            return
        L31:
            com.mycompany.app.web.WebEmgDialog$1 r3 = new com.mycompany.app.web.WebEmgDialog$1
            r3.<init>()
            r2.post(r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.web.WebEmgDialog.<init>(com.mycompany.app.web.WebViewActivity, java.lang.String, com.mycompany.app.web.WebGridDialog$WebImgListener):void");
    }

    public static void r(WebEmgDialog webEmgDialog, String str) {
        if (webEmgDialog.h0 != null) {
            if (MainUtil.D5(str)) {
                if (webEmgDialog.C0) {
                    webEmgDialog.C0 = false;
                    WebNestView webNestView = webEmgDialog.h0;
                    if (webNestView != null) {
                        webNestView.post(new Runnable() { // from class: com.mycompany.app.web.WebEmgDialog.18
                            @Override // java.lang.Runnable
                            public final void run() {
                                WebEmgDialog webEmgDialog2 = WebEmgDialog.this;
                                WebNestView webNestView2 = webEmgDialog2.h0;
                                if (webNestView2 == null) {
                                    return;
                                }
                                webEmgDialog2.C0 = false;
                                webNestView2.removeJavascriptInterface("android");
                            }
                        });
                        return;
                    }
                    return;
                }
                return;
            }
            if (!webEmgDialog.C0) {
                webEmgDialog.C0 = true;
                WebNestView webNestView2 = webEmgDialog.h0;
                if (webNestView2 == null) {
                    return;
                }
                webNestView2.post(new Runnable() { // from class: com.mycompany.app.web.WebEmgDialog.19
                    @Override // java.lang.Runnable
                    public final void run() {
                        WebEmgDialog webEmgDialog2 = WebEmgDialog.this;
                        WebNestView webNestView3 = webEmgDialog2.h0;
                        if (webNestView3 == null) {
                            return;
                        }
                        webEmgDialog2.C0 = true;
                        webNestView3.addJavascriptInterface(new WebAppInterface(), "android");
                    }
                });
            }
        }
    }

    public static void s(WebEmgDialog webEmgDialog, int i) {
        int i2;
        if (webEmgDialog.S != null && (i2 = webEmgDialog.f0) != 2) {
            if (i == -1) {
                webEmgDialog.t0 = i;
                webEmgDialog.w0 = true;
            } else if (i != 100) {
                if (webEmgDialog.t0 == i) {
                    if (!webEmgDialog.v0) {
                        long currentTimeMillis = System.currentTimeMillis();
                        long j = webEmgDialog.u0;
                        if (j == 0) {
                            webEmgDialog.u0 = currentTimeMillis;
                        } else if (currentTimeMillis - j > 5000) {
                            webEmgDialog.v0 = true;
                            MainUtil.e8(webEmgDialog.H, R.string.server_delay);
                        }
                    }
                    webEmgDialog.V.postDelayed(new Runnable() { // from class: com.mycompany.app.web.WebEmgDialog.24
                        @Override // java.lang.Runnable
                        public final void run() {
                            WebEmgDialog webEmgDialog2 = WebEmgDialog.this;
                            WebEmgTask webEmgTask = webEmgDialog2.g0;
                            if (webEmgTask == null) {
                                return;
                            }
                            WebEmgDialog.s(webEmgDialog2, webEmgTask.a());
                        }
                    }, 400L);
                    return;
                }
                webEmgDialog.t0 = i;
                webEmgDialog.u0 = 0L;
                if (i < 30) {
                    webEmgDialog.V.postDelayed(new Runnable() { // from class: com.mycompany.app.web.WebEmgDialog.25
                        @Override // java.lang.Runnable
                        public final void run() {
                            WebEmgDialog webEmgDialog2 = WebEmgDialog.this;
                            WebEmgTask webEmgTask = webEmgDialog2.g0;
                            if (webEmgTask == null) {
                                return;
                            }
                            WebEmgDialog.s(webEmgDialog2, webEmgTask.a());
                        }
                    }, 400L);
                    return;
                }
            }
            if (i2 != 0) {
                return;
            }
            webEmgDialog.f0 = 1;
            webEmgDialog.V.postDelayed(new Runnable() { // from class: com.mycompany.app.web.WebEmgDialog.26
                @Override // java.lang.Runnable
                public final void run() {
                    WebEmgDialog webEmgDialog2 = WebEmgDialog.this;
                    WebEmgTask webEmgTask = webEmgDialog2.g0;
                    if (webEmgTask == null || webEmgDialog2.f0 == 2) {
                        return;
                    }
                    webEmgTask.b();
                }
            }, 200L);
        }
    }

    public static void t(WebEmgDialog webEmgDialog) {
        WebGridAdapter webGridAdapter = webEmgDialog.b0;
        if (webGridAdapter == null) {
            return;
        }
        if (webGridAdapter.i) {
            webEmgDialog.K(webEmgDialog.i0, webEmgDialog.j0, webGridAdapter.x());
        } else {
            webEmgDialog.K(webEmgDialog.i0, webEmgDialog.j0, webGridAdapter.f);
        }
    }

    public static void u(WebEmgDialog webEmgDialog) {
        WebGridAdapter webGridAdapter = webEmgDialog.b0;
        if (webGridAdapter == null) {
            return;
        }
        if (webGridAdapter.i) {
            webEmgDialog.M(webEmgDialog.i0, webEmgDialog.j0, webGridAdapter.x());
        } else {
            webEmgDialog.M(webEmgDialog.i0, webEmgDialog.j0, webGridAdapter.f);
        }
    }

    public static void v(WebEmgDialog webEmgDialog) {
        WebGridAdapter webGridAdapter = webEmgDialog.b0;
        if (webGridAdapter == null) {
            return;
        }
        if (webGridAdapter.i) {
            webEmgDialog.L(webEmgDialog.i0, webEmgDialog.j0, webGridAdapter.x());
        } else {
            webEmgDialog.L(webEmgDialog.i0, webEmgDialog.j0, webGridAdapter.f);
        }
    }

    public static void w(WebEmgDialog webEmgDialog) {
        MyProgressBar myProgressBar = webEmgDialog.R;
        if (myProgressBar == null) {
            return;
        }
        myProgressBar.k(true, 1, new MyProgressBar.MyProgressListener() { // from class: com.mycompany.app.web.WebEmgDialog.27
            @Override // com.mycompany.app.view.MyProgressBar.MyProgressListener
            public final void a() {
            }

            @Override // com.mycompany.app.view.MyProgressBar.MyProgressListener
            public final int b() {
                return 0;
            }

            @Override // com.mycompany.app.view.MyProgressBar.MyProgressListener
            public final boolean c() {
                int i = WebEmgDialog.K0;
                if (WebEmgDialog.this.f0 != 2) {
                    return true;
                }
                return false;
            }
        });
    }

    public static void x(WebEmgDialog webEmgDialog, final int i) {
        if (!PrefAlbum.j || webEmgDialog.G == null || webEmgDialog.D()) {
            return;
        }
        webEmgDialog.B();
        DialogConfirm dialogConfirm = new DialogConfirm(webEmgDialog.G, new DialogConfirm.DialogConfListener() { // from class: com.mycompany.app.web.WebEmgDialog.34
            @Override // com.mycompany.app.dialog.DialogConfirm.DialogConfListener
            public final void a(boolean z) {
                WebEmgDialog webEmgDialog2 = WebEmgDialog.this;
                if (z) {
                    PrefAlbum.j = false;
                    PrefSet.d(0, webEmgDialog2.H, "mGuideDown", false);
                }
                int i2 = WebEmgDialog.K0;
                webEmgDialog2.B();
            }
        });
        webEmgDialog.n0 = dialogConfirm;
        dialogConfirm.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.web.WebEmgDialog.35
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                int i2 = WebEmgDialog.K0;
                WebEmgDialog webEmgDialog2 = WebEmgDialog.this;
                webEmgDialog2.B();
                int i3 = i;
                if (i3 == 0) {
                    WebEmgDialog.v(webEmgDialog2);
                } else if (i3 == 1) {
                    WebEmgDialog.u(webEmgDialog2);
                } else {
                    WebEmgDialog.t(webEmgDialog2);
                }
            }
        });
    }

    public static void y(WebEmgDialog webEmgDialog) {
        List list;
        int size;
        if (!webEmgDialog.a0 && webEmgDialog.b0 != null && webEmgDialog.k0 != null && (list = DataUrl.b(webEmgDialog.H).f12901a) != null && !list.isEmpty() && (size = list.size()) == webEmgDialog.k0.size()) {
            for (int i = 0; i < size; i++) {
                webEmgDialog.k0.set(i, (String) list.get(i));
            }
            webEmgDialog.b0.I(list);
            Handler handler = webEmgDialog.i;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.mycompany.app.web.WebEmgDialog.30
                    @Override // java.lang.Runnable
                    public final void run() {
                        WebEmgDialog webEmgDialog2 = WebEmgDialog.this;
                        WebGridAdapter webGridAdapter = webEmgDialog2.b0;
                        if (webGridAdapter != null) {
                            if (!webEmgDialog2.a0) {
                                webEmgDialog2.a0 = true;
                                webGridAdapter.g();
                            }
                            AppCompatTextView appCompatTextView = webEmgDialog2.Z;
                            if (appCompatTextView != null && appCompatTextView.getVisibility() != 8) {
                                webEmgDialog2.Z.setVisibility(8);
                            }
                        }
                    }
                });
            }
        }
    }

    public final int A() {
        int i;
        MainUtil.SizeItem E0 = MainUtil.E0(this.G);
        if (E0 == null) {
            i = 0;
        } else {
            i = E0.f17015a;
        }
        this.d0 = 3;
        int i2 = (i - (4 * MainApp.p1)) / 3;
        while (i2 > MainApp.o1) {
            int i3 = this.d0;
            int i4 = i3 + 1;
            this.d0 = i4;
            i2 = (i - ((i3 + 2) * MainApp.p1)) / i4;
        }
        return i2;
    }

    public final void B() {
        DialogConfirm dialogConfirm = this.n0;
        if (dialogConfirm != null) {
            dialogConfirm.dismiss();
            this.n0 = null;
        }
    }

    public final boolean C() {
        if (this.R == null || this.f0 != 2 || this.m0 != null) {
            return false;
        }
        return true;
    }

    public final boolean D() {
        if (this.n0 != null || this.o0 != null || this.q0 != null || this.r0 != null || this.s0 != null) {
            return true;
        }
        return false;
    }

    public final void E() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        if (this.b0 != null && this.c0 != null) {
            this.e0 = A();
            MyManagerGrid myManagerGrid = this.c0;
            int i6 = myManagerGrid.F;
            int i7 = this.d0;
            if (i6 != i7) {
                myManagerGrid.x1(i7);
            }
            WebGridAdapter webGridAdapter = this.b0;
            int i8 = this.e0;
            if (webGridAdapter.h != i8) {
                webGridAdapter.h = i8;
                webGridAdapter.g();
            }
            boolean z = this.B0;
            boolean z2 = MainApp.K1;
            if (z != z2) {
                this.B0 = z2;
                MyMainRelative myMainRelative = this.K;
                if (myMainRelative != null) {
                    Window window = getWindow();
                    if (MainApp.K1) {
                        i = -16777216;
                    } else {
                        i = -460552;
                    }
                    myMainRelative.b(window, i);
                    int i9 = -14784824;
                    if (MainApp.K1) {
                        this.M.setTextColor(-328966);
                        this.P.setTextColor(-328966);
                        this.L.setImageResource(R.drawable.outline_chevron_left_dark_24);
                        this.N.setImageResource(R.drawable.outline_filter_list_dark_24);
                        this.O.setImageResource(R.drawable.outline_refresh_dark_24);
                        this.S.setBackgroundColor(-14606047);
                        this.W.setBackgroundResource(R.drawable.selector_normal_dark);
                        this.X.setBackgroundResource(R.drawable.selector_normal_dark);
                        this.Y.setBackgroundResource(R.drawable.selector_normal_dark);
                        this.Z.setBackgroundColor(-16777216);
                        this.Z.setTextColor(-328966);
                        this.Q.p(R.drawable.baseline_check_circle_dark_24, R.drawable.outline_radio_button_unchecked_dark_24);
                        this.L.setBgPreColor(-12632257);
                        this.N.setBgPreColor(-12632257);
                        this.O.setBgPreColor(-12632257);
                        this.Q.setBgPreColor(-12632257);
                    } else {
                        this.M.setTextColor(-16777216);
                        this.P.setTextColor(-16777216);
                        this.L.setImageResource(R.drawable.outline_chevron_left_black_24);
                        this.N.setImageResource(R.drawable.outline_filter_list_black_24);
                        this.O.setImageResource(R.drawable.outline_refresh_black_24);
                        this.S.setBackgroundColor(-328966);
                        this.W.setBackgroundResource(R.drawable.selector_normal_gray);
                        this.X.setBackgroundResource(R.drawable.selector_normal_gray);
                        this.Y.setBackgroundResource(R.drawable.selector_normal_gray);
                        this.Z.setBackgroundColor(-460552);
                        this.Z.setTextColor(-14784824);
                        this.Q.p(R.drawable.baseline_check_circle_black_24, R.drawable.outline_radio_button_unchecked_black_24);
                        this.L.setBgPreColor(553648128);
                        this.N.setBgPreColor(553648128);
                        this.O.setBgPreColor(553648128);
                        this.Q.setBgPreColor(553648128);
                    }
                    int i10 = -2434342;
                    if (this.W.isEnabled()) {
                        MyLineText myLineText = this.W;
                        if (MainApp.K1) {
                            i5 = -328966;
                        } else {
                            i5 = -14784824;
                        }
                        myLineText.setTextColor(i5);
                    } else {
                        MyLineText myLineText2 = this.W;
                        if (MainApp.K1) {
                            i2 = -8355712;
                        } else {
                            i2 = -2434342;
                        }
                        myLineText2.setTextColor(i2);
                    }
                    if (this.X.isEnabled()) {
                        MyLineText myLineText3 = this.X;
                        if (MainApp.K1) {
                            i4 = -328966;
                        } else {
                            i4 = -14784824;
                        }
                        myLineText3.setTextColor(i4);
                    } else {
                        MyLineText myLineText4 = this.X;
                        if (MainApp.K1) {
                            i3 = -8355712;
                        } else {
                            i3 = -2434342;
                        }
                        myLineText4.setTextColor(i3);
                    }
                    if (this.Y.isEnabled()) {
                        AppCompatTextView appCompatTextView = this.Y;
                        if (MainApp.K1) {
                            i9 = -328966;
                        }
                        appCompatTextView.setTextColor(i9);
                    } else {
                        AppCompatTextView appCompatTextView2 = this.Y;
                        if (MainApp.K1) {
                            i10 = -8355712;
                        }
                        appCompatTextView2.setTextColor(i10);
                    }
                    WebGridAdapter webGridAdapter2 = this.b0;
                    if (webGridAdapter2 != null) {
                        webGridAdapter2.g();
                    }
                }
            }
            f();
        }
    }

    public final void F(boolean z) {
        if (z) {
            B();
            DialogImageType dialogImageType = this.o0;
            if (dialogImageType != null) {
                dialogImageType.dismiss();
                this.o0 = null;
            }
            DialogDownList dialogDownList = this.q0;
            if (dialogDownList != null) {
                dialogDownList.dismiss();
                this.q0 = null;
            }
            DialogDownZip dialogDownZip = this.r0;
            if (dialogDownZip != null) {
                dialogDownZip.dismiss();
                this.r0 = null;
            }
            DialogCreateAlbum dialogCreateAlbum = this.s0;
            if (dialogCreateAlbum != null) {
                dialogCreateAlbum.dismiss();
                this.s0 = null;
            }
            TypeTask typeTask = this.m0;
            if (typeTask != null) {
                typeTask.f12839c = true;
            }
            this.m0 = null;
            WebEmgTask webEmgTask = this.g0;
            if (webEmgTask != null) {
                webEmgTask.d();
                this.g0 = null;
            }
            WebEmgLoad webEmgLoad = this.z0;
            if (webEmgLoad != null) {
                webEmgLoad.b();
                this.z0 = null;
            }
            WebEmgLoad webEmgLoad2 = this.A0;
            if (webEmgLoad2 != null) {
                webEmgLoad2.b();
                this.A0 = null;
                return;
            }
            return;
        }
        this.y0 = PrefAlbum.k;
    }

    public final void G() {
        if (this.J) {
            this.J = false;
            return;
        }
        if (C()) {
            this.S.setEnabled(true);
            this.R.setIncrease(2);
            H();
        }
        int i = this.y0;
        int i2 = PrefAlbum.k;
        if (i != i2 && MainUtil.f(this.l0, i, i2)) {
            z(PrefAlbum.k, this.k0);
        }
    }

    public final void H() {
        boolean z;
        int i;
        int i2;
        int i3;
        int i4;
        boolean z2;
        int i5;
        int i6;
        int i7;
        int i8;
        WebGridAdapter webGridAdapter = this.b0;
        if (webGridAdapter != null && this.W != null) {
            int i9 = -2434342;
            int i10 = -14784824;
            if (webGridAdapter.i) {
                if (webGridAdapter.k > 0) {
                    z2 = C();
                } else {
                    z2 = false;
                }
                if (z2) {
                    this.W.setEnabled(true);
                    this.X.setEnabled(true);
                    this.Y.setEnabled(true);
                    MyLineText myLineText = this.W;
                    if (MainApp.K1) {
                        i7 = -328966;
                    } else {
                        i7 = -14784824;
                    }
                    myLineText.setTextColor(i7);
                    MyLineText myLineText2 = this.X;
                    if (MainApp.K1) {
                        i8 = -328966;
                    } else {
                        i8 = -14784824;
                    }
                    myLineText2.setTextColor(i8);
                    AppCompatTextView appCompatTextView = this.Y;
                    if (MainApp.K1) {
                        i10 = -328966;
                    }
                    appCompatTextView.setTextColor(i10);
                    return;
                }
                this.W.setEnabled(false);
                this.X.setEnabled(false);
                this.Y.setEnabled(false);
                MyLineText myLineText3 = this.W;
                if (MainApp.K1) {
                    i5 = -8355712;
                } else {
                    i5 = -2434342;
                }
                myLineText3.setTextColor(i5);
                MyLineText myLineText4 = this.X;
                if (MainApp.K1) {
                    i6 = -8355712;
                } else {
                    i6 = -2434342;
                }
                myLineText4.setTextColor(i6);
                AppCompatTextView appCompatTextView2 = this.Y;
                if (MainApp.K1) {
                    i9 = -8355712;
                }
                appCompatTextView2.setTextColor(i9);
                return;
            }
            if (webGridAdapter.y() > 0) {
                this.U.d();
                z = C();
            } else {
                this.U.f();
                z = false;
            }
            if (z) {
                this.W.setEnabled(true);
                this.X.setEnabled(true);
                this.Y.setEnabled(true);
                MyLineText myLineText5 = this.W;
                if (MainApp.K1) {
                    i3 = -328966;
                } else {
                    i3 = -14784824;
                }
                myLineText5.setTextColor(i3);
                MyLineText myLineText6 = this.X;
                if (MainApp.K1) {
                    i4 = -328966;
                } else {
                    i4 = -14784824;
                }
                myLineText6.setTextColor(i4);
                AppCompatTextView appCompatTextView3 = this.Y;
                if (MainApp.K1) {
                    i10 = -328966;
                }
                appCompatTextView3.setTextColor(i10);
                return;
            }
            this.W.setEnabled(false);
            this.X.setEnabled(false);
            this.Y.setEnabled(false);
            MyLineText myLineText7 = this.W;
            if (MainApp.K1) {
                i = -8355712;
            } else {
                i = -2434342;
            }
            myLineText7.setTextColor(i);
            MyLineText myLineText8 = this.X;
            if (MainApp.K1) {
                i2 = -8355712;
            } else {
                i2 = -2434342;
            }
            myLineText8.setTextColor(i2);
            AppCompatTextView appCompatTextView4 = this.Y;
            if (MainApp.K1) {
                i9 = -8355712;
            }
            appCompatTextView4.setTextColor(i9);
        }
    }

    public final void I() {
        AppCompatTextView appCompatTextView = this.Z;
        if (appCompatTextView == null) {
            return;
        }
        if (this.a0) {
            appCompatTextView.setVisibility(8);
            return;
        }
        ArrayList arrayList = this.k0;
        if (arrayList != null && !arrayList.isEmpty()) {
            m(new Runnable() { // from class: com.mycompany.app.web.WebEmgDialog.31
                @Override // java.lang.Runnable
                public final void run() {
                    WebEmgDialog webEmgDialog = WebEmgDialog.this;
                    ArrayList arrayList2 = webEmgDialog.k0;
                    final int i = 0;
                    if (arrayList2 != null && !arrayList2.isEmpty()) {
                        int size = arrayList2.size();
                        int i2 = 0;
                        while (i2 < size) {
                            Object obj = arrayList2.get(i2);
                            i2++;
                            if (URLUtil.isNetworkUrl((String) obj)) {
                                i++;
                            }
                        }
                    }
                    final int size2 = arrayList2.size();
                    if (i >= size2) {
                        webEmgDialog.a0 = true;
                    }
                    AppCompatTextView appCompatTextView2 = webEmgDialog.Z;
                    if (appCompatTextView2 == null) {
                        return;
                    }
                    appCompatTextView2.post(new Runnable() { // from class: com.mycompany.app.web.WebEmgDialog.31.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            WebEmgDialog webEmgDialog2 = WebEmgDialog.this;
                            WebGridAdapter webGridAdapter = webEmgDialog2.b0;
                            if (webGridAdapter != null) {
                                if (webEmgDialog2.a0) {
                                    webGridAdapter.g();
                                }
                                AppCompatTextView appCompatTextView3 = webEmgDialog2.Z;
                                if (appCompatTextView3 == null) {
                                    return;
                                }
                                if (webEmgDialog2.a0) {
                                    appCompatTextView3.setVisibility(8);
                                } else {
                                    appCompatTextView3.setVisibility(0);
                                    webEmgDialog2.Z.setText(MainUtil.h3(i, size2));
                                }
                            }
                        }
                    });
                }
            });
        } else {
            this.Z.setVisibility(0);
        }
    }

    public final void J(int i, boolean z) {
        WebGridAdapter webGridAdapter = this.b0;
        if (webGridAdapter != null && z != webGridAdapter.i) {
            webGridAdapter.E(i, z);
            H();
            if (z) {
                AppCompatTextView appCompatTextView = this.P;
                if (appCompatTextView != null) {
                    WebGridAdapter webGridAdapter2 = this.b0;
                    appCompatTextView.setText(MainUtil.h3(webGridAdapter2.k, webGridAdapter2.y()));
                }
                MyButtonCheck myButtonCheck = this.Q;
                if (myButtonCheck != null) {
                    myButtonCheck.q(this.b0.A(), true);
                }
                MyButtonImage myButtonImage = this.N;
                if (myButtonImage != null) {
                    MainUtil.h8(this.H, myButtonImage, R.anim.ic_scale_out, true);
                }
                MyButtonImage myButtonImage2 = this.O;
                if (myButtonImage2 != null) {
                    MainUtil.h8(this.H, myButtonImage2, R.anim.ic_rotate_out, true);
                }
                AppCompatTextView appCompatTextView2 = this.P;
                if (appCompatTextView2 != null) {
                    MainUtil.h8(this.H, appCompatTextView2, R.anim.ic_scale_in, false);
                }
                MyButtonCheck myButtonCheck2 = this.Q;
                if (myButtonCheck2 != null) {
                    MainUtil.h8(this.H, myButtonCheck2, R.anim.ic_rotate_in, false);
                    return;
                }
                return;
            }
            MyButtonImage myButtonImage3 = this.N;
            if (myButtonImage3 != null) {
                MainUtil.h8(this.H, myButtonImage3, R.anim.ic_scale_in, false);
            }
            MyButtonImage myButtonImage4 = this.O;
            if (myButtonImage4 != null) {
                MainUtil.h8(this.H, myButtonImage4, R.anim.ic_rotate_in, false);
            }
            AppCompatTextView appCompatTextView3 = this.P;
            if (appCompatTextView3 != null) {
                MainUtil.h8(this.H, appCompatTextView3, R.anim.ic_scale_out, true);
            }
            MyButtonCheck myButtonCheck3 = this.Q;
            if (myButtonCheck3 != null) {
                MainUtil.h8(this.H, myButtonCheck3, R.anim.ic_rotate_out, true);
            }
        }
    }

    public final void K(String str, String str2, List list) {
        if (this.G == null || D()) {
            return;
        }
        DialogCreateAlbum dialogCreateAlbum = this.s0;
        if (dialogCreateAlbum != null) {
            dialogCreateAlbum.dismiss();
            this.s0 = null;
        }
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            if (list != null && !list.isEmpty()) {
                DialogCreateAlbum dialogCreateAlbum2 = new DialogCreateAlbum(this.G, str2, list, this.i0, new DialogSetFull.DialogApplyListener() { // from class: com.mycompany.app.web.WebEmgDialog.42
                    @Override // com.mycompany.app.dialog.DialogSetFull.DialogApplyListener
                    public final void a() {
                        int i = WebEmgDialog.K0;
                        WebEmgDialog.this.J(-1, false);
                    }
                });
                this.s0 = dialogCreateAlbum2;
                dialogCreateAlbum2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.web.WebEmgDialog.43
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        int i = WebEmgDialog.K0;
                        WebEmgDialog webEmgDialog = WebEmgDialog.this;
                        DialogCreateAlbum dialogCreateAlbum3 = webEmgDialog.s0;
                        if (dialogCreateAlbum3 != null) {
                            dialogCreateAlbum3.dismiss();
                            webEmgDialog.s0 = null;
                        }
                    }
                });
                return;
            }
            MainUtil.e8(this.H, R.string.no_image);
            return;
        }
        MainUtil.e8(this.H, R.string.invalid_url);
    }

    public final void L(String str, String str2, List list) {
        if (this.G == null || D()) {
            return;
        }
        DialogDownList dialogDownList = this.q0;
        if (dialogDownList != null) {
            dialogDownList.dismiss();
            this.q0 = null;
        }
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            if (list != null && !list.isEmpty()) {
                DialogDownList dialogDownList2 = new DialogDownList(this.G, str2, list, this.i0, new DialogSetFull.DialogApplyListener() { // from class: com.mycompany.app.web.WebEmgDialog.38
                    @Override // com.mycompany.app.dialog.DialogSetFull.DialogApplyListener
                    public final void a() {
                        int i = WebEmgDialog.K0;
                        WebEmgDialog.this.J(-1, false);
                    }
                });
                this.q0 = dialogDownList2;
                dialogDownList2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.web.WebEmgDialog.39
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        int i = WebEmgDialog.K0;
                        WebEmgDialog webEmgDialog = WebEmgDialog.this;
                        DialogDownList dialogDownList3 = webEmgDialog.q0;
                        if (dialogDownList3 != null) {
                            dialogDownList3.dismiss();
                            webEmgDialog.q0 = null;
                        }
                    }
                });
                return;
            }
            MainUtil.e8(this.H, R.string.no_image);
            return;
        }
        MainUtil.e8(this.H, R.string.invalid_url);
    }

    public final void M(String str, String str2, List list) {
        if (this.G == null || D()) {
            return;
        }
        DialogDownZip dialogDownZip = this.r0;
        if (dialogDownZip != null) {
            dialogDownZip.dismiss();
            this.r0 = null;
        }
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            if (list != null && !list.isEmpty()) {
                DialogDownZip dialogDownZip2 = new DialogDownZip(this.G, str2, list, this.i0, new DialogSetFull.DialogApplyListener() { // from class: com.mycompany.app.web.WebEmgDialog.40
                    @Override // com.mycompany.app.dialog.DialogSetFull.DialogApplyListener
                    public final void a() {
                        int i = WebEmgDialog.K0;
                        WebEmgDialog.this.J(-1, false);
                    }
                });
                this.r0 = dialogDownZip2;
                dialogDownZip2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.web.WebEmgDialog.41
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        int i = WebEmgDialog.K0;
                        WebEmgDialog webEmgDialog = WebEmgDialog.this;
                        DialogDownZip dialogDownZip3 = webEmgDialog.r0;
                        if (dialogDownZip3 != null) {
                            dialogDownZip3.dismiss();
                            webEmgDialog.r0 = null;
                        }
                    }
                });
                return;
            }
            MainUtil.e8(this.H, R.string.no_image);
            return;
        }
        MainUtil.e8(this.H, R.string.invalid_url);
    }

    @Override // com.mycompany.app.dialog.DialogCast, com.mycompany.app.view.MyDialogNormal, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18667c = false;
        if (this.H == null) {
            return;
        }
        F(true);
        MyButtonImage myButtonImage = this.L;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.L = null;
        }
        MyButtonImage myButtonImage2 = this.N;
        if (myButtonImage2 != null) {
            myButtonImage2.j();
            this.N = null;
        }
        MyButtonImage myButtonImage3 = this.O;
        if (myButtonImage3 != null) {
            myButtonImage3.j();
            this.O = null;
        }
        MyButtonCheck myButtonCheck = this.Q;
        if (myButtonCheck != null) {
            myButtonCheck.l();
            this.Q = null;
        }
        MyProgressBar myProgressBar = this.R;
        if (myProgressBar != null) {
            myProgressBar.f();
            this.R = null;
        }
        MyRecyclerView myRecyclerView = this.S;
        if (myRecyclerView != null) {
            myRecyclerView.s0();
            this.S = null;
        }
        MyScrollBar myScrollBar = this.T;
        if (myScrollBar != null) {
            myScrollBar.k();
            this.T = null;
        }
        MyFadeImage myFadeImage = this.U;
        if (myFadeImage != null) {
            myFadeImage.e();
            this.U = null;
        }
        MyCoverView myCoverView = this.V;
        if (myCoverView != null) {
            myCoverView.i();
            this.V = null;
        }
        MyLineText myLineText = this.W;
        if (myLineText != null) {
            myLineText.u();
            this.W = null;
        }
        MyLineText myLineText2 = this.X;
        if (myLineText2 != null) {
            myLineText2.u();
            this.X = null;
        }
        WebNestView webNestView = this.h0;
        if (webNestView != null) {
            MainUtil.F(webNestView, true);
            this.h0 = null;
        }
        WebViewActivity webViewActivity = this.G;
        if (webViewActivity != null) {
            webViewActivity.n0(null, false);
            this.G = null;
        }
        this.H = null;
        this.I = null;
        this.K = null;
        this.M = null;
        this.P = null;
        this.Y = null;
        this.c0 = null;
        this.Z = null;
        this.i0 = null;
        this.j0 = null;
        this.k0 = null;
        this.l0 = null;
        WebGridAdapter webGridAdapter = this.b0;
        if (webGridAdapter != null) {
            webGridAdapter.C();
            this.b0 = null;
        }
        super.dismiss();
    }

    @Override // com.mycompany.app.dialog.DialogCast, android.app.Dialog, android.view.Window.Callback
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent != null && this.T != null) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 1 || actionMasked == 3) {
                this.T.e();
            }
            return super.dispatchTouchEvent(motionEvent);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // com.mycompany.app.view.MyDialogNormal
    public final void l() {
        WebGridAdapter webGridAdapter = this.b0;
        if (webGridAdapter != null && webGridAdapter.i) {
            J(-1, false);
        } else {
            dismiss();
        }
    }

    @Override // com.mycompany.app.view.MyDialogNormal, android.app.Dialog
    public final void onBackPressed() {
        if (e()) {
            return;
        }
        l();
    }

    public final void z(int i, ArrayList arrayList) {
        boolean z;
        boolean z2;
        TypeTask typeTask = this.m0;
        if (typeTask != null) {
            typeTask.f12839c = true;
        }
        this.m0 = null;
        this.p0 = 0;
        if (arrayList != null && arrayList.size() > 0) {
            z = true;
        } else {
            z = false;
        }
        if (z && i != 0) {
            z2 = false;
        } else {
            z2 = true;
        }
        if (z && i == 0) {
            this.p0 = arrayList.size();
            MainUtil.f8(this.H, String.format(Locale.US, this.H.getString(R.string.filtered_image), Integer.valueOf(this.p0)));
        }
        if (!z2 && i != 126) {
            TypeTask typeTask2 = new TypeTask(this, arrayList, i);
            this.m0 = typeTask2;
            typeTask2.b(this.H);
            return;
        }
        WebGridAdapter webGridAdapter = this.b0;
        if (webGridAdapter != null) {
            if (z2) {
                arrayList = null;
            }
            webGridAdapter.F(arrayList);
            MyCoverView myCoverView = this.V;
            if (myCoverView != null) {
                myCoverView.f(true);
            }
            if (C()) {
                this.S.setEnabled(true);
                this.R.setIncrease(2);
                H();
            }
        }
    }

    /* loaded from: classes3.dex */
    public class LocalWebViewClient extends WebViewClient {
        public LocalWebViewClient() {
        }

        @Override // android.webkit.WebViewClient
        public final void onPageFinished(WebView webView, String str) {
            final WebEmgDialog webEmgDialog = WebEmgDialog.this;
            WebNestView webNestView = webEmgDialog.h0;
            if (webNestView == null) {
                return;
            }
            webNestView.setWebLoading(false);
            if (!URLUtil.isNetworkUrl(str)) {
                webEmgDialog.h0.postDelayed(new Runnable() { // from class: com.mycompany.app.web.WebEmgDialog.LocalWebViewClient.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        WebEmgDialog webEmgDialog2 = WebEmgDialog.this;
                        WebNestView webNestView2 = webEmgDialog2.h0;
                        if (webNestView2 == null) {
                            return;
                        }
                        webEmgDialog2.f0 = 0;
                        webNestView2.z(webEmgDialog2.i0, null);
                    }
                }, 1000L);
                return;
            }
            WebEmgDialog.r(webEmgDialog, str);
            if (!webEmgDialog.E0 && !TextUtils.isEmpty(str) && !str.equals(webEmgDialog.F0)) {
                webEmgDialog.E0 = true;
                webEmgDialog.F0 = str;
                Handler handler = webEmgDialog.i;
                if (handler != null) {
                    handler.post(new Runnable() { // from class: com.mycompany.app.web.WebEmgDialog.20
                        @Override // java.lang.Runnable
                        public final void run() {
                            WebEmgDialog webEmgDialog2 = WebEmgDialog.this;
                            MainUtil.l(webEmgDialog2.h0);
                            webEmgDialog2.E0 = false;
                        }
                    });
                }
            }
            webEmgDialog.i0 = str;
            WebEmgDialog.s(webEmgDialog, -1);
        }

        @Override // android.webkit.WebViewClient
        public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            WebEmgDialog webEmgDialog = WebEmgDialog.this;
            WebNestView webNestView = webEmgDialog.h0;
            if (webNestView != null) {
                webNestView.setWebLoading(true);
                WebEmgDialog.r(webEmgDialog, str);
                if (URLUtil.isNetworkUrl(str)) {
                    webEmgDialog.i0 = str;
                }
            }
        }

        @Override // android.webkit.WebViewClient
        public final void onReceivedError(WebView webView, int i, String str, String str2) {
            super.onReceivedError(webView, i, str, str2);
            WebEmgTask webEmgTask = WebEmgDialog.this.g0;
            if (webEmgTask != null) {
                webEmgTask.c(i);
            }
        }

        @Override // android.webkit.WebViewClient
        public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            final WebEmgDialog webEmgDialog = WebEmgDialog.this;
            webEmgDialog.h0 = null;
            MainUtil.D(webView, renderProcessGoneDetail);
            Handler handler = webEmgDialog.i;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.mycompany.app.web.WebEmgDialog.21
                    @Override // java.lang.Runnable
                    public final void run() {
                        WebEmgDialog.this.dismiss();
                    }
                });
                return true;
            }
            return true;
        }

        @Override // android.webkit.WebViewClient
        public final WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
            WebEmgDialog webEmgDialog = WebEmgDialog.this;
            if (webEmgDialog.h0 != null && webResourceRequest != null && webResourceRequest.getUrl() != null) {
                WebEmgDialog.r(webEmgDialog, webResourceRequest.getUrl().toString());
            }
            return null;
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
            WebEmgDialog webEmgDialog = WebEmgDialog.this;
            if (webEmgDialog.h0 == null || TextUtils.isEmpty(str)) {
                return true;
            }
            WebEmgDialog.r(webEmgDialog, str);
            webEmgDialog.h0.z(str, null);
            return true;
        }

        @Override // android.webkit.WebViewClient
        public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            WebEmgTask webEmgTask;
            super.onReceivedError(webView, webResourceRequest, webResourceError);
            if (webResourceError == null || (webEmgTask = WebEmgDialog.this.g0) == null) {
                return;
            }
            webEmgTask.c(webResourceError.getErrorCode());
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            WebEmgDialog webEmgDialog = WebEmgDialog.this;
            if (webEmgDialog.h0 != null && webResourceRequest != null && webResourceRequest.getUrl() != null) {
                String uri = webResourceRequest.getUrl().toString();
                if (TextUtils.isEmpty(uri)) {
                    return true;
                }
                WebEmgDialog.r(webEmgDialog, uri);
                webEmgDialog.h0.z(uri, null);
            }
            return true;
        }
    }
}
