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
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* loaded from: classes3.dex */
public class WebHmgDialog extends DialogCast {
    public static final /* synthetic */ int I0 = 0;
    public boolean A0;
    public boolean B0;
    public boolean C0;
    public boolean D0;
    public String E0;
    public boolean F0;
    public WebViewActivity G;
    public final Runnable G0;
    public Context H;
    public int H0;
    public boolean I;
    public MyMainRelative J;
    public MyButtonImage K;
    public AppCompatTextView L;
    public MyButtonImage M;
    public MyButtonImage N;
    public AppCompatTextView O;
    public MyButtonCheck P;
    public MyProgressBar Q;
    public MyRecyclerView R;
    public MyScrollBar S;
    public MyFadeImage T;
    public MyCoverView U;
    public MyLineText V;
    public MyLineText W;
    public AppCompatTextView X;
    public AppCompatTextView Y;
    public boolean Z;
    public WebGridAdapter a0;
    public MyManagerGrid b0;
    public int c0;
    public int d0;
    public int e0;
    public WebHmgTask f0;
    public WebNestView g0;
    public String h0;
    public String i0;
    public List j0;
    public DataUrl.ImgCntItem k0;
    public TypeTask l0;
    public DialogConfirm m0;
    public DialogImageType n0;
    public int o0;
    public DialogDownList p0;
    public DialogDownZip q0;
    public DialogCreateAlbum r0;
    public int s0;
    public long t0;
    public boolean u0;
    public boolean v0;
    public boolean w0;
    public int x0;
    public WebHmgLoad y0;
    public WebHmgLoad z0;

    /* renamed from: com.mycompany.app.web.WebHmgDialog$22, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass22 implements Runnable {

        /* renamed from: com.mycompany.app.web.WebHmgDialog$22$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 implements Runnable {

            /* renamed from: com.mycompany.app.web.WebHmgDialog$22$1$1, reason: invalid class name and collision with other inner class name */
            /* loaded from: classes3.dex */
            class RunnableC02471 implements Runnable {
                public RunnableC02471() {
                }

                @Override // java.lang.Runnable
                public final void run() {
                    AnonymousClass22 anonymousClass22 = AnonymousClass22.this;
                    WebHmgDialog webHmgDialog = WebHmgDialog.this;
                    WebNestView webNestView = webHmgDialog.g0;
                    if (webNestView != null) {
                        webHmgDialog.B0 = true;
                        webNestView.addJavascriptInterface(new WebAppInterface(), "android");
                        Handler handler = WebHmgDialog.this.i;
                        if (handler == null) {
                            return;
                        }
                        handler.post(new Runnable() { // from class: com.mycompany.app.web.WebHmgDialog.22.1.1.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                WebHmgDialog webHmgDialog2 = WebHmgDialog.this;
                                if (webHmgDialog2.g0 != null) {
                                    WebHmgDialog.w(webHmgDialog2);
                                    Handler handler2 = WebHmgDialog.this.i;
                                    if (handler2 == null) {
                                        return;
                                    }
                                    handler2.post(new Runnable() { // from class: com.mycompany.app.web.WebHmgDialog.22.1.1.1.1
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            WebHmgDialog webHmgDialog3 = WebHmgDialog.this;
                                            WebNestView webNestView2 = webHmgDialog3.g0;
                                            if (webNestView2 == null) {
                                                return;
                                            }
                                            webHmgDialog3.e0 = 0;
                                            webNestView2.z(webHmgDialog3.h0, null);
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
                WebHmgDialog webHmgDialog = WebHmgDialog.this;
                WebNestView webNestView = webHmgDialog.g0;
                if (webNestView != null) {
                    webNestView.setWebViewClient(new LocalWebViewClient());
                    Handler handler = webHmgDialog.i;
                    if (handler == null) {
                        return;
                    }
                    handler.post(new RunnableC02471());
                }
            }
        }

        public AnonymousClass22() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            WebHmgDialog webHmgDialog = WebHmgDialog.this;
            WebNestView webNestView = webHmgDialog.g0;
            if (webNestView != null) {
                MainUtil.W7(webNestView, false);
                Handler handler = webHmgDialog.i;
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

        public TypeTask(WebHmgDialog webHmgDialog, List list, int i) {
            WeakReference weakReference = new WeakReference(webHmgDialog);
            this.e = weakReference;
            WebHmgDialog webHmgDialog2 = (WebHmgDialog) weakReference.get();
            if (webHmgDialog2 != null) {
                this.f = list;
                this.h = i;
                MyCoverView myCoverView = webHmgDialog2.U;
                if (myCoverView != null) {
                    myCoverView.setBackColor(0);
                    webHmgDialog2.U.n(true, 1.0f, 200L);
                }
                MyRecyclerView myRecyclerView = webHmgDialog2.R;
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
            if (weakReference != null && ((WebHmgDialog) weakReference.get()) != null && !this.f12839c && (i = this.h) != 0 && (list = this.f) != null && !list.isEmpty()) {
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
                        if ((i & 16) == 16) {
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
            WebHmgDialog webHmgDialog;
            WeakReference weakReference = this.e;
            if (weakReference != null && (webHmgDialog = (WebHmgDialog) weakReference.get()) != null) {
                webHmgDialog.l0 = null;
                MyCoverView myCoverView = webHmgDialog.U;
                if (myCoverView != null) {
                    myCoverView.f(true);
                }
                if (webHmgDialog.C()) {
                    webHmgDialog.R.setEnabled(true);
                    webHmgDialog.Q.setIncrease(2);
                    webHmgDialog.H();
                }
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            WebHmgDialog webHmgDialog;
            int size;
            int size2;
            WeakReference weakReference = this.e;
            if (weakReference != null && (webHmgDialog = (WebHmgDialog) weakReference.get()) != null) {
                webHmgDialog.l0 = null;
                if (webHmgDialog.a0 != null) {
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
                            webHmgDialog.o0 = size - size2;
                            MainUtil.f8(webHmgDialog.H, String.format(Locale.US, webHmgDialog.H.getString(R.string.filtered_image), Integer.valueOf(webHmgDialog.o0)));
                        }
                        webHmgDialog.a0.F(this.g);
                    }
                    MyCoverView myCoverView = webHmgDialog.U;
                    if (myCoverView != null) {
                        myCoverView.f(true);
                    }
                    if (webHmgDialog.C()) {
                        webHmgDialog.R.setEnabled(true);
                        webHmgDialog.Q.setIncrease(2);
                        webHmgDialog.H();
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
            WebNestView webNestView = WebHmgDialog.this.g0;
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
    public WebHmgDialog(com.mycompany.app.web.WebViewActivity r2, java.lang.String r3) {
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
            com.mycompany.app.web.WebHmgDialog$31 r0 = new com.mycompany.app.web.WebHmgDialog$31
            r0.<init>()
            r1.G0 = r0
            r1.j()
            r1.G = r2
            android.content.Context r2 = r1.getContext()
            r1.H = r2
            r2 = 1
            r1.I = r2
            boolean r2 = com.mycompany.app.main.MainApp.K1
            r1.A0 = r2
            r1.h0 = r3
            r2 = 0
            r1.e0 = r2
            android.os.Handler r2 = r1.i
            if (r2 != 0) goto L2f
            return
        L2f:
            com.mycompany.app.web.WebHmgDialog$1 r3 = new com.mycompany.app.web.WebHmgDialog$1
            r3.<init>()
            r2.post(r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.web.WebHmgDialog.<init>(com.mycompany.app.web.WebViewActivity, java.lang.String):void");
    }

    public static void r(WebHmgDialog webHmgDialog, String str) {
        if (webHmgDialog.g0 != null) {
            if (MainUtil.D5(str)) {
                if (webHmgDialog.B0) {
                    webHmgDialog.B0 = false;
                    WebNestView webNestView = webHmgDialog.g0;
                    if (webNestView != null) {
                        webNestView.post(new Runnable() { // from class: com.mycompany.app.web.WebHmgDialog.17
                            @Override // java.lang.Runnable
                            public final void run() {
                                WebHmgDialog webHmgDialog2 = WebHmgDialog.this;
                                WebNestView webNestView2 = webHmgDialog2.g0;
                                if (webNestView2 == null) {
                                    return;
                                }
                                webHmgDialog2.B0 = false;
                                webNestView2.removeJavascriptInterface("android");
                            }
                        });
                        return;
                    }
                    return;
                }
                return;
            }
            if (!webHmgDialog.B0) {
                webHmgDialog.B0 = true;
                WebNestView webNestView2 = webHmgDialog.g0;
                if (webNestView2 == null) {
                    return;
                }
                webNestView2.post(new Runnable() { // from class: com.mycompany.app.web.WebHmgDialog.18
                    @Override // java.lang.Runnable
                    public final void run() {
                        WebHmgDialog webHmgDialog2 = WebHmgDialog.this;
                        WebNestView webNestView3 = webHmgDialog2.g0;
                        if (webNestView3 == null) {
                            return;
                        }
                        webHmgDialog2.B0 = true;
                        webNestView3.addJavascriptInterface(new WebAppInterface(), "android");
                    }
                });
            }
        }
    }

    public static void s(WebHmgDialog webHmgDialog, int i) {
        int i2;
        if (webHmgDialog.R != null && (i2 = webHmgDialog.e0) != 2) {
            if (i == -1) {
                webHmgDialog.s0 = i;
                webHmgDialog.v0 = true;
            } else if (i != 100) {
                if (webHmgDialog.s0 == i) {
                    if (!webHmgDialog.u0) {
                        long currentTimeMillis = System.currentTimeMillis();
                        long j = webHmgDialog.t0;
                        if (j == 0) {
                            webHmgDialog.t0 = currentTimeMillis;
                        } else if (currentTimeMillis - j > 5000) {
                            webHmgDialog.u0 = true;
                            MainUtil.e8(webHmgDialog.H, R.string.server_delay);
                        }
                    }
                    webHmgDialog.U.postDelayed(new Runnable() { // from class: com.mycompany.app.web.WebHmgDialog.23
                        @Override // java.lang.Runnable
                        public final void run() {
                            WebHmgDialog webHmgDialog2 = WebHmgDialog.this;
                            WebHmgTask webHmgTask = webHmgDialog2.f0;
                            if (webHmgTask == null) {
                                return;
                            }
                            WebHmgDialog.s(webHmgDialog2, webHmgTask.d());
                        }
                    }, 400L);
                    return;
                }
                webHmgDialog.s0 = i;
                webHmgDialog.t0 = 0L;
                if (i < 30) {
                    webHmgDialog.U.postDelayed(new Runnable() { // from class: com.mycompany.app.web.WebHmgDialog.24
                        @Override // java.lang.Runnable
                        public final void run() {
                            WebHmgDialog webHmgDialog2 = WebHmgDialog.this;
                            WebHmgTask webHmgTask = webHmgDialog2.f0;
                            if (webHmgTask == null) {
                                return;
                            }
                            WebHmgDialog.s(webHmgDialog2, webHmgTask.d());
                        }
                    }, 400L);
                    return;
                }
            }
            if (i2 != 0) {
                return;
            }
            webHmgDialog.e0 = 1;
            webHmgDialog.U.postDelayed(new Runnable() { // from class: com.mycompany.app.web.WebHmgDialog.25
                @Override // java.lang.Runnable
                public final void run() {
                    WebHmgDialog webHmgDialog2 = WebHmgDialog.this;
                    WebHmgTask webHmgTask = webHmgDialog2.f0;
                    if (webHmgTask == null || webHmgDialog2.e0 == 2) {
                        return;
                    }
                    webHmgTask.e();
                }
            }, 200L);
        }
    }

    public static void t(WebHmgDialog webHmgDialog) {
        WebGridAdapter webGridAdapter = webHmgDialog.a0;
        if (webGridAdapter == null) {
            return;
        }
        if (webGridAdapter.i) {
            webHmgDialog.K(webHmgDialog.h0, webHmgDialog.i0, webGridAdapter.x());
        } else {
            webHmgDialog.K(webHmgDialog.h0, webHmgDialog.i0, webGridAdapter.f);
        }
    }

    public static void u(WebHmgDialog webHmgDialog) {
        WebGridAdapter webGridAdapter = webHmgDialog.a0;
        if (webGridAdapter == null) {
            return;
        }
        if (webGridAdapter.i) {
            webHmgDialog.M(webHmgDialog.h0, webHmgDialog.i0, webGridAdapter.x());
        } else {
            webHmgDialog.M(webHmgDialog.h0, webHmgDialog.i0, webGridAdapter.f);
        }
    }

    public static void v(WebHmgDialog webHmgDialog) {
        WebGridAdapter webGridAdapter = webHmgDialog.a0;
        if (webGridAdapter == null) {
            return;
        }
        if (webGridAdapter.i) {
            webHmgDialog.L(webHmgDialog.h0, webHmgDialog.i0, webGridAdapter.x());
        } else {
            webHmgDialog.L(webHmgDialog.h0, webHmgDialog.i0, webGridAdapter.f);
        }
    }

    public static void w(WebHmgDialog webHmgDialog) {
        MyProgressBar myProgressBar = webHmgDialog.Q;
        if (myProgressBar == null) {
            return;
        }
        myProgressBar.k(true, 1, new MyProgressBar.MyProgressListener() { // from class: com.mycompany.app.web.WebHmgDialog.26
            @Override // com.mycompany.app.view.MyProgressBar.MyProgressListener
            public final void a() {
            }

            @Override // com.mycompany.app.view.MyProgressBar.MyProgressListener
            public final int b() {
                return 0;
            }

            @Override // com.mycompany.app.view.MyProgressBar.MyProgressListener
            public final boolean c() {
                int i = WebHmgDialog.I0;
                if (WebHmgDialog.this.e0 != 2) {
                    return true;
                }
                return false;
            }
        });
    }

    public static void x(WebHmgDialog webHmgDialog, final int i) {
        if (!PrefAlbum.j || webHmgDialog.G == null || webHmgDialog.D()) {
            return;
        }
        webHmgDialog.B();
        DialogConfirm dialogConfirm = new DialogConfirm(webHmgDialog.G, new DialogConfirm.DialogConfListener() { // from class: com.mycompany.app.web.WebHmgDialog.32
            @Override // com.mycompany.app.dialog.DialogConfirm.DialogConfListener
            public final void a(boolean z) {
                WebHmgDialog webHmgDialog2 = WebHmgDialog.this;
                if (z) {
                    PrefAlbum.j = false;
                    PrefSet.d(0, webHmgDialog2.H, "mGuideDown", false);
                }
                int i2 = WebHmgDialog.I0;
                webHmgDialog2.B();
            }
        });
        webHmgDialog.m0 = dialogConfirm;
        dialogConfirm.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.web.WebHmgDialog.33
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                int i2 = WebHmgDialog.I0;
                WebHmgDialog webHmgDialog2 = WebHmgDialog.this;
                webHmgDialog2.B();
                int i3 = i;
                if (i3 == 0) {
                    WebHmgDialog.v(webHmgDialog2);
                } else if (i3 == 1) {
                    WebHmgDialog.u(webHmgDialog2);
                } else {
                    WebHmgDialog.t(webHmgDialog2);
                }
            }
        });
    }

    public static void y(WebHmgDialog webHmgDialog) {
        List list;
        int size;
        if (!webHmgDialog.Z && webHmgDialog.a0 != null && webHmgDialog.j0 != null && (list = DataUrl.b(webHmgDialog.H).f12901a) != null && !list.isEmpty() && (size = list.size()) == webHmgDialog.j0.size()) {
            for (int i = 0; i < size; i++) {
                webHmgDialog.j0.set(i, (String) list.get(i));
            }
            webHmgDialog.a0.I(list);
            Handler handler = webHmgDialog.i;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.mycompany.app.web.WebHmgDialog.29
                    @Override // java.lang.Runnable
                    public final void run() {
                        WebHmgDialog webHmgDialog2 = WebHmgDialog.this;
                        WebGridAdapter webGridAdapter = webHmgDialog2.a0;
                        if (webGridAdapter != null) {
                            if (!webHmgDialog2.Z) {
                                webHmgDialog2.Z = true;
                                webGridAdapter.g();
                            }
                            AppCompatTextView appCompatTextView = webHmgDialog2.Y;
                            if (appCompatTextView != null && appCompatTextView.getVisibility() != 8) {
                                webHmgDialog2.Y.setVisibility(8);
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
        this.c0 = 3;
        int i2 = (i - (4 * MainApp.p1)) / 3;
        while (i2 > MainApp.o1) {
            int i3 = this.c0;
            int i4 = i3 + 1;
            this.c0 = i4;
            i2 = (i - ((i3 + 2) * MainApp.p1)) / i4;
        }
        return i2;
    }

    public final void B() {
        DialogConfirm dialogConfirm = this.m0;
        if (dialogConfirm != null) {
            dialogConfirm.dismiss();
            this.m0 = null;
        }
    }

    public final boolean C() {
        if (this.Q == null || this.e0 != 2 || this.l0 != null) {
            return false;
        }
        return true;
    }

    public final boolean D() {
        if (this.m0 != null || this.n0 != null || this.p0 != null || this.q0 != null || this.r0 != null) {
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
        if (this.a0 != null && this.b0 != null) {
            this.d0 = A();
            MyManagerGrid myManagerGrid = this.b0;
            int i6 = myManagerGrid.F;
            int i7 = this.c0;
            if (i6 != i7) {
                myManagerGrid.x1(i7);
            }
            WebGridAdapter webGridAdapter = this.a0;
            int i8 = this.d0;
            if (webGridAdapter.h != i8) {
                webGridAdapter.h = i8;
                webGridAdapter.g();
            }
            boolean z = this.A0;
            boolean z2 = MainApp.K1;
            if (z != z2) {
                this.A0 = z2;
                MyMainRelative myMainRelative = this.J;
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
                        this.L.setTextColor(-328966);
                        this.O.setTextColor(-328966);
                        this.K.setImageResource(R.drawable.outline_chevron_left_dark_24);
                        this.M.setImageResource(R.drawable.outline_filter_list_dark_24);
                        this.N.setImageResource(R.drawable.outline_refresh_dark_24);
                        this.R.setBackgroundColor(-14606047);
                        this.V.setBackgroundResource(R.drawable.selector_normal_dark);
                        this.W.setBackgroundResource(R.drawable.selector_normal_dark);
                        this.X.setBackgroundResource(R.drawable.selector_normal_dark);
                        this.Y.setBackgroundColor(-16777216);
                        this.Y.setTextColor(-328966);
                        this.P.p(R.drawable.baseline_check_circle_dark_24, R.drawable.outline_radio_button_unchecked_dark_24);
                        this.K.setBgPreColor(-12632257);
                        this.M.setBgPreColor(-12632257);
                        this.N.setBgPreColor(-12632257);
                        this.P.setBgPreColor(-12632257);
                    } else {
                        this.L.setTextColor(-16777216);
                        this.O.setTextColor(-16777216);
                        this.K.setImageResource(R.drawable.outline_chevron_left_black_24);
                        this.M.setImageResource(R.drawable.outline_filter_list_black_24);
                        this.N.setImageResource(R.drawable.outline_refresh_black_24);
                        this.R.setBackgroundColor(-328966);
                        this.V.setBackgroundResource(R.drawable.selector_normal_gray);
                        this.W.setBackgroundResource(R.drawable.selector_normal_gray);
                        this.X.setBackgroundResource(R.drawable.selector_normal_gray);
                        this.Y.setBackgroundColor(-460552);
                        this.Y.setTextColor(-14784824);
                        this.P.p(R.drawable.baseline_check_circle_black_24, R.drawable.outline_radio_button_unchecked_black_24);
                        this.K.setBgPreColor(553648128);
                        this.M.setBgPreColor(553648128);
                        this.N.setBgPreColor(553648128);
                        this.P.setBgPreColor(553648128);
                    }
                    int i10 = -2434342;
                    if (this.V.isEnabled()) {
                        MyLineText myLineText = this.V;
                        if (MainApp.K1) {
                            i5 = -328966;
                        } else {
                            i5 = -14784824;
                        }
                        myLineText.setTextColor(i5);
                    } else {
                        MyLineText myLineText2 = this.V;
                        if (MainApp.K1) {
                            i2 = -8355712;
                        } else {
                            i2 = -2434342;
                        }
                        myLineText2.setTextColor(i2);
                    }
                    if (this.W.isEnabled()) {
                        MyLineText myLineText3 = this.W;
                        if (MainApp.K1) {
                            i4 = -328966;
                        } else {
                            i4 = -14784824;
                        }
                        myLineText3.setTextColor(i4);
                    } else {
                        MyLineText myLineText4 = this.W;
                        if (MainApp.K1) {
                            i3 = -8355712;
                        } else {
                            i3 = -2434342;
                        }
                        myLineText4.setTextColor(i3);
                    }
                    if (this.X.isEnabled()) {
                        AppCompatTextView appCompatTextView = this.X;
                        if (MainApp.K1) {
                            i9 = -328966;
                        }
                        appCompatTextView.setTextColor(i9);
                    } else {
                        AppCompatTextView appCompatTextView2 = this.X;
                        if (MainApp.K1) {
                            i10 = -8355712;
                        }
                        appCompatTextView2.setTextColor(i10);
                    }
                    WebGridAdapter webGridAdapter2 = this.a0;
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
            DialogImageType dialogImageType = this.n0;
            if (dialogImageType != null) {
                dialogImageType.dismiss();
                this.n0 = null;
            }
            DialogDownList dialogDownList = this.p0;
            if (dialogDownList != null) {
                dialogDownList.dismiss();
                this.p0 = null;
            }
            DialogDownZip dialogDownZip = this.q0;
            if (dialogDownZip != null) {
                dialogDownZip.dismiss();
                this.q0 = null;
            }
            DialogCreateAlbum dialogCreateAlbum = this.r0;
            if (dialogCreateAlbum != null) {
                dialogCreateAlbum.dismiss();
                this.r0 = null;
            }
            TypeTask typeTask = this.l0;
            if (typeTask != null) {
                typeTask.f12839c = true;
            }
            this.l0 = null;
            WebHmgTask webHmgTask = this.f0;
            if (webHmgTask != null) {
                webHmgTask.g();
                this.f0 = null;
            }
            WebHmgLoad webHmgLoad = this.y0;
            if (webHmgLoad != null) {
                webHmgLoad.b();
                this.y0 = null;
            }
            WebHmgLoad webHmgLoad2 = this.z0;
            if (webHmgLoad2 != null) {
                webHmgLoad2.b();
                this.z0 = null;
                return;
            }
            return;
        }
        this.x0 = PrefAlbum.k;
    }

    public final void G() {
        if (this.I) {
            this.I = false;
            return;
        }
        if (C()) {
            this.R.setEnabled(true);
            this.Q.setIncrease(2);
            H();
        }
        int i = this.x0;
        int i2 = PrefAlbum.k;
        if (i != i2 && MainUtil.f(this.k0, i, i2)) {
            z(PrefAlbum.k, this.j0);
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
        WebGridAdapter webGridAdapter = this.a0;
        if (webGridAdapter != null && this.V != null) {
            int i9 = -2434342;
            int i10 = -14784824;
            if (webGridAdapter.i) {
                if (webGridAdapter.k > 0) {
                    z2 = C();
                } else {
                    z2 = false;
                }
                if (z2) {
                    this.V.setEnabled(true);
                    this.W.setEnabled(true);
                    this.X.setEnabled(true);
                    MyLineText myLineText = this.V;
                    if (MainApp.K1) {
                        i7 = -328966;
                    } else {
                        i7 = -14784824;
                    }
                    myLineText.setTextColor(i7);
                    MyLineText myLineText2 = this.W;
                    if (MainApp.K1) {
                        i8 = -328966;
                    } else {
                        i8 = -14784824;
                    }
                    myLineText2.setTextColor(i8);
                    AppCompatTextView appCompatTextView = this.X;
                    if (MainApp.K1) {
                        i10 = -328966;
                    }
                    appCompatTextView.setTextColor(i10);
                    return;
                }
                this.V.setEnabled(false);
                this.W.setEnabled(false);
                this.X.setEnabled(false);
                MyLineText myLineText3 = this.V;
                if (MainApp.K1) {
                    i5 = -8355712;
                } else {
                    i5 = -2434342;
                }
                myLineText3.setTextColor(i5);
                MyLineText myLineText4 = this.W;
                if (MainApp.K1) {
                    i6 = -8355712;
                } else {
                    i6 = -2434342;
                }
                myLineText4.setTextColor(i6);
                AppCompatTextView appCompatTextView2 = this.X;
                if (MainApp.K1) {
                    i9 = -8355712;
                }
                appCompatTextView2.setTextColor(i9);
                return;
            }
            if (webGridAdapter.y() > 0) {
                this.T.d();
                z = C();
            } else {
                this.T.f();
                z = false;
            }
            if (z) {
                this.V.setEnabled(true);
                this.W.setEnabled(true);
                this.X.setEnabled(true);
                MyLineText myLineText5 = this.V;
                if (MainApp.K1) {
                    i3 = -328966;
                } else {
                    i3 = -14784824;
                }
                myLineText5.setTextColor(i3);
                MyLineText myLineText6 = this.W;
                if (MainApp.K1) {
                    i4 = -328966;
                } else {
                    i4 = -14784824;
                }
                myLineText6.setTextColor(i4);
                AppCompatTextView appCompatTextView3 = this.X;
                if (MainApp.K1) {
                    i10 = -328966;
                }
                appCompatTextView3.setTextColor(i10);
                return;
            }
            this.V.setEnabled(false);
            this.W.setEnabled(false);
            this.X.setEnabled(false);
            MyLineText myLineText7 = this.V;
            if (MainApp.K1) {
                i = -8355712;
            } else {
                i = -2434342;
            }
            myLineText7.setTextColor(i);
            MyLineText myLineText8 = this.W;
            if (MainApp.K1) {
                i2 = -8355712;
            } else {
                i2 = -2434342;
            }
            myLineText8.setTextColor(i2);
            AppCompatTextView appCompatTextView4 = this.X;
            if (MainApp.K1) {
                i9 = -8355712;
            }
            appCompatTextView4.setTextColor(i9);
        }
    }

    public final void I() {
        AppCompatTextView appCompatTextView = this.Y;
        if (appCompatTextView == null) {
            return;
        }
        if (this.Z) {
            appCompatTextView.setVisibility(8);
            return;
        }
        List list = this.j0;
        if (list != null && !list.isEmpty()) {
            m(new Runnable() { // from class: com.mycompany.app.web.WebHmgDialog.30
                @Override // java.lang.Runnable
                public final void run() {
                    WebHmgDialog webHmgDialog = WebHmgDialog.this;
                    List list2 = webHmgDialog.j0;
                    final int i = 0;
                    if (list2 != null && !list2.isEmpty()) {
                        Iterator it = list2.iterator();
                        while (it.hasNext()) {
                            if (URLUtil.isNetworkUrl((String) it.next())) {
                                i++;
                            }
                        }
                    }
                    final int size = list2.size();
                    if (i >= size) {
                        webHmgDialog.Z = true;
                    }
                    AppCompatTextView appCompatTextView2 = webHmgDialog.Y;
                    if (appCompatTextView2 == null) {
                        return;
                    }
                    appCompatTextView2.post(new Runnable() { // from class: com.mycompany.app.web.WebHmgDialog.30.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            WebHmgDialog webHmgDialog2 = WebHmgDialog.this;
                            WebGridAdapter webGridAdapter = webHmgDialog2.a0;
                            if (webGridAdapter != null) {
                                if (webHmgDialog2.Z) {
                                    webGridAdapter.g();
                                }
                                AppCompatTextView appCompatTextView3 = webHmgDialog2.Y;
                                if (appCompatTextView3 == null) {
                                    return;
                                }
                                if (webHmgDialog2.Z) {
                                    appCompatTextView3.setVisibility(8);
                                } else {
                                    appCompatTextView3.setVisibility(0);
                                    webHmgDialog2.Y.setText(MainUtil.h3(i, size));
                                }
                            }
                        }
                    });
                }
            });
        } else {
            this.Y.setVisibility(0);
        }
    }

    public final void J(int i, boolean z) {
        WebGridAdapter webGridAdapter = this.a0;
        if (webGridAdapter != null && z != webGridAdapter.i) {
            webGridAdapter.E(i, z);
            H();
            if (z) {
                AppCompatTextView appCompatTextView = this.O;
                if (appCompatTextView != null) {
                    WebGridAdapter webGridAdapter2 = this.a0;
                    appCompatTextView.setText(MainUtil.h3(webGridAdapter2.k, webGridAdapter2.y()));
                }
                MyButtonCheck myButtonCheck = this.P;
                if (myButtonCheck != null) {
                    myButtonCheck.q(this.a0.A(), true);
                }
                MyButtonImage myButtonImage = this.M;
                if (myButtonImage != null) {
                    MainUtil.h8(this.H, myButtonImage, R.anim.ic_scale_out, true);
                }
                MyButtonImage myButtonImage2 = this.N;
                if (myButtonImage2 != null) {
                    MainUtil.h8(this.H, myButtonImage2, R.anim.ic_rotate_out, true);
                }
                AppCompatTextView appCompatTextView2 = this.O;
                if (appCompatTextView2 != null) {
                    MainUtil.h8(this.H, appCompatTextView2, R.anim.ic_scale_in, false);
                }
                MyButtonCheck myButtonCheck2 = this.P;
                if (myButtonCheck2 != null) {
                    MainUtil.h8(this.H, myButtonCheck2, R.anim.ic_rotate_in, false);
                    return;
                }
                return;
            }
            MyButtonImage myButtonImage3 = this.M;
            if (myButtonImage3 != null) {
                MainUtil.h8(this.H, myButtonImage3, R.anim.ic_scale_in, false);
            }
            MyButtonImage myButtonImage4 = this.N;
            if (myButtonImage4 != null) {
                MainUtil.h8(this.H, myButtonImage4, R.anim.ic_rotate_in, false);
            }
            AppCompatTextView appCompatTextView3 = this.O;
            if (appCompatTextView3 != null) {
                MainUtil.h8(this.H, appCompatTextView3, R.anim.ic_scale_out, true);
            }
            MyButtonCheck myButtonCheck3 = this.P;
            if (myButtonCheck3 != null) {
                MainUtil.h8(this.H, myButtonCheck3, R.anim.ic_rotate_out, true);
            }
        }
    }

    public final void K(String str, String str2, List list) {
        if (this.G == null || D()) {
            return;
        }
        DialogCreateAlbum dialogCreateAlbum = this.r0;
        if (dialogCreateAlbum != null) {
            dialogCreateAlbum.dismiss();
            this.r0 = null;
        }
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            if (list != null && !list.isEmpty()) {
                DialogCreateAlbum dialogCreateAlbum2 = new DialogCreateAlbum(this.G, str2, list, this.h0, new DialogSetFull.DialogApplyListener() { // from class: com.mycompany.app.web.WebHmgDialog.40
                    @Override // com.mycompany.app.dialog.DialogSetFull.DialogApplyListener
                    public final void a() {
                        int i = WebHmgDialog.I0;
                        WebHmgDialog.this.J(-1, false);
                    }
                });
                this.r0 = dialogCreateAlbum2;
                dialogCreateAlbum2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.web.WebHmgDialog.41
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        int i = WebHmgDialog.I0;
                        WebHmgDialog webHmgDialog = WebHmgDialog.this;
                        DialogCreateAlbum dialogCreateAlbum3 = webHmgDialog.r0;
                        if (dialogCreateAlbum3 != null) {
                            dialogCreateAlbum3.dismiss();
                            webHmgDialog.r0 = null;
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
        DialogDownList dialogDownList = this.p0;
        if (dialogDownList != null) {
            dialogDownList.dismiss();
            this.p0 = null;
        }
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            if (list != null && !list.isEmpty()) {
                DialogDownList dialogDownList2 = new DialogDownList(this.G, str2, list, this.h0, new DialogSetFull.DialogApplyListener() { // from class: com.mycompany.app.web.WebHmgDialog.36
                    @Override // com.mycompany.app.dialog.DialogSetFull.DialogApplyListener
                    public final void a() {
                        int i = WebHmgDialog.I0;
                        WebHmgDialog.this.J(-1, false);
                    }
                });
                this.p0 = dialogDownList2;
                dialogDownList2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.web.WebHmgDialog.37
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        int i = WebHmgDialog.I0;
                        WebHmgDialog webHmgDialog = WebHmgDialog.this;
                        DialogDownList dialogDownList3 = webHmgDialog.p0;
                        if (dialogDownList3 != null) {
                            dialogDownList3.dismiss();
                            webHmgDialog.p0 = null;
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
        DialogDownZip dialogDownZip = this.q0;
        if (dialogDownZip != null) {
            dialogDownZip.dismiss();
            this.q0 = null;
        }
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            if (list != null && !list.isEmpty()) {
                DialogDownZip dialogDownZip2 = new DialogDownZip(this.G, str2, list, this.h0, new DialogSetFull.DialogApplyListener() { // from class: com.mycompany.app.web.WebHmgDialog.38
                    @Override // com.mycompany.app.dialog.DialogSetFull.DialogApplyListener
                    public final void a() {
                        int i = WebHmgDialog.I0;
                        WebHmgDialog.this.J(-1, false);
                    }
                });
                this.q0 = dialogDownZip2;
                dialogDownZip2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.web.WebHmgDialog.39
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        int i = WebHmgDialog.I0;
                        WebHmgDialog webHmgDialog = WebHmgDialog.this;
                        DialogDownZip dialogDownZip3 = webHmgDialog.q0;
                        if (dialogDownZip3 != null) {
                            dialogDownZip3.dismiss();
                            webHmgDialog.q0 = null;
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
        MyButtonImage myButtonImage = this.K;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.K = null;
        }
        MyButtonImage myButtonImage2 = this.M;
        if (myButtonImage2 != null) {
            myButtonImage2.j();
            this.M = null;
        }
        MyButtonImage myButtonImage3 = this.N;
        if (myButtonImage3 != null) {
            myButtonImage3.j();
            this.N = null;
        }
        MyButtonCheck myButtonCheck = this.P;
        if (myButtonCheck != null) {
            myButtonCheck.l();
            this.P = null;
        }
        MyProgressBar myProgressBar = this.Q;
        if (myProgressBar != null) {
            myProgressBar.f();
            this.Q = null;
        }
        MyRecyclerView myRecyclerView = this.R;
        if (myRecyclerView != null) {
            myRecyclerView.s0();
            this.R = null;
        }
        MyScrollBar myScrollBar = this.S;
        if (myScrollBar != null) {
            myScrollBar.k();
            this.S = null;
        }
        MyFadeImage myFadeImage = this.T;
        if (myFadeImage != null) {
            myFadeImage.e();
            this.T = null;
        }
        MyCoverView myCoverView = this.U;
        if (myCoverView != null) {
            myCoverView.i();
            this.U = null;
        }
        MyLineText myLineText = this.V;
        if (myLineText != null) {
            myLineText.u();
            this.V = null;
        }
        MyLineText myLineText2 = this.W;
        if (myLineText2 != null) {
            myLineText2.u();
            this.W = null;
        }
        WebNestView webNestView = this.g0;
        if (webNestView != null) {
            MainUtil.F(webNestView, true);
            this.g0 = null;
        }
        WebViewActivity webViewActivity = this.G;
        if (webViewActivity != null) {
            webViewActivity.n0(null, false);
            this.G = null;
        }
        this.H = null;
        this.J = null;
        this.L = null;
        this.O = null;
        this.X = null;
        this.b0 = null;
        this.Y = null;
        this.h0 = null;
        this.i0 = null;
        this.j0 = null;
        this.k0 = null;
        WebGridAdapter webGridAdapter = this.a0;
        if (webGridAdapter != null) {
            webGridAdapter.C();
            this.a0 = null;
        }
        super.dismiss();
    }

    @Override // com.mycompany.app.dialog.DialogCast, android.app.Dialog, android.view.Window.Callback
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent != null && this.S != null) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 1 || actionMasked == 3) {
                this.S.e();
            }
            return super.dispatchTouchEvent(motionEvent);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // com.mycompany.app.view.MyDialogNormal
    public final void l() {
        WebGridAdapter webGridAdapter = this.a0;
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

    public final void z(int i, List list) {
        boolean z;
        boolean z2;
        TypeTask typeTask = this.l0;
        if (typeTask != null) {
            typeTask.f12839c = true;
        }
        this.l0 = null;
        this.o0 = 0;
        if (list != null && list.size() > 0) {
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
            this.o0 = list.size();
            MainUtil.f8(this.H, String.format(Locale.US, this.H.getString(R.string.filtered_image), Integer.valueOf(this.o0)));
        }
        if (!z2 && i != 126) {
            TypeTask typeTask2 = new TypeTask(this, list, i);
            this.l0 = typeTask2;
            typeTask2.b(this.H);
            return;
        }
        WebGridAdapter webGridAdapter = this.a0;
        if (webGridAdapter != null) {
            if (z2) {
                list = null;
            }
            webGridAdapter.F(list);
            MyCoverView myCoverView = this.U;
            if (myCoverView != null) {
                myCoverView.f(true);
            }
            if (C()) {
                this.R.setEnabled(true);
                this.Q.setIncrease(2);
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
            final WebHmgDialog webHmgDialog = WebHmgDialog.this;
            WebNestView webNestView = webHmgDialog.g0;
            if (webNestView == null) {
                return;
            }
            webNestView.setWebLoading(false);
            if (!URLUtil.isNetworkUrl(str)) {
                webHmgDialog.g0.postDelayed(new Runnable() { // from class: com.mycompany.app.web.WebHmgDialog.LocalWebViewClient.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        WebHmgDialog webHmgDialog2 = WebHmgDialog.this;
                        WebNestView webNestView2 = webHmgDialog2.g0;
                        if (webNestView2 == null) {
                            return;
                        }
                        webHmgDialog2.e0 = 0;
                        webNestView2.z(webHmgDialog2.h0, null);
                    }
                }, 1000L);
                return;
            }
            WebHmgDialog.r(webHmgDialog, str);
            if (!webHmgDialog.D0 && !TextUtils.isEmpty(str) && !str.equals(webHmgDialog.E0)) {
                webHmgDialog.D0 = true;
                webHmgDialog.E0 = str;
                Handler handler = webHmgDialog.i;
                if (handler != null) {
                    handler.post(new Runnable() { // from class: com.mycompany.app.web.WebHmgDialog.19
                        @Override // java.lang.Runnable
                        public final void run() {
                            WebHmgDialog webHmgDialog2 = WebHmgDialog.this;
                            MainUtil.l(webHmgDialog2.g0);
                            webHmgDialog2.D0 = false;
                        }
                    });
                }
            }
            webHmgDialog.h0 = str;
            WebHmgDialog.s(webHmgDialog, -1);
        }

        @Override // android.webkit.WebViewClient
        public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            WebHmgDialog webHmgDialog = WebHmgDialog.this;
            WebNestView webNestView = webHmgDialog.g0;
            if (webNestView != null) {
                webNestView.setWebLoading(true);
                WebHmgDialog.r(webHmgDialog, str);
                if (URLUtil.isNetworkUrl(str)) {
                    webHmgDialog.h0 = str;
                }
            }
        }

        @Override // android.webkit.WebViewClient
        public final void onReceivedError(WebView webView, int i, String str, String str2) {
            super.onReceivedError(webView, i, str, str2);
            WebHmgTask webHmgTask = WebHmgDialog.this.f0;
            if (webHmgTask != null) {
                webHmgTask.f(i);
            }
        }

        @Override // android.webkit.WebViewClient
        public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            final WebHmgDialog webHmgDialog = WebHmgDialog.this;
            webHmgDialog.g0 = null;
            MainUtil.D(webView, renderProcessGoneDetail);
            Handler handler = webHmgDialog.i;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.mycompany.app.web.WebHmgDialog.20
                    @Override // java.lang.Runnable
                    public final void run() {
                        WebHmgDialog.this.dismiss();
                    }
                });
                return true;
            }
            return true;
        }

        @Override // android.webkit.WebViewClient
        public final WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
            WebHmgDialog webHmgDialog = WebHmgDialog.this;
            if (webHmgDialog.g0 != null && webResourceRequest != null && webResourceRequest.getUrl() != null) {
                WebHmgDialog.r(webHmgDialog, webResourceRequest.getUrl().toString());
            }
            return null;
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
            WebHmgDialog webHmgDialog = WebHmgDialog.this;
            if (webHmgDialog.g0 == null || TextUtils.isEmpty(str)) {
                return true;
            }
            WebHmgDialog.r(webHmgDialog, str);
            webHmgDialog.g0.z(str, null);
            return true;
        }

        @Override // android.webkit.WebViewClient
        public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            WebHmgTask webHmgTask;
            super.onReceivedError(webView, webResourceRequest, webResourceError);
            if (webResourceError == null || (webHmgTask = WebHmgDialog.this.f0) == null) {
                return;
            }
            webHmgTask.f(webResourceError.getErrorCode());
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            WebHmgDialog webHmgDialog = WebHmgDialog.this;
            if (webHmgDialog.g0 != null && webResourceRequest != null && webResourceRequest.getUrl() != null) {
                String uri = webResourceRequest.getUrl().toString();
                if (TextUtils.isEmpty(uri)) {
                    return true;
                }
                WebHmgDialog.r(webHmgDialog, uri);
                webHmgDialog.g0.z(uri, null);
            }
            return true;
        }
    }
}
