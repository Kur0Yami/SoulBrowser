package com.mycompany.app.web;

import android.content.Context;
import android.content.DialogInterface;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.Window;
import android.webkit.WebView;
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
import com.mycompany.app.web.WebLoadTask;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* loaded from: classes3.dex */
public class WebGridDialog extends DialogCast {
    public static final /* synthetic */ int I0 = 0;
    public int A0;
    public WebLoadView B0;
    public boolean C0;
    public boolean D0;
    public boolean E0;
    public final Runnable F0;
    public WebViewActivity G;
    public int G0;
    public Context H;
    public CastUtil H0;
    public WebImgListener I;
    public boolean J;
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
    public WebGridAdapter Z;
    public MyManagerGrid a0;
    public int b0;
    public int c0;
    public int d0;
    public int e0;
    public int f0;
    public String g0;
    public String h0;
    public List i0;
    public DataUrl.ImgCntItem j0;
    public TypeTask k0;
    public DialogConfirm l0;
    public DialogImageType m0;
    public int n0;
    public DialogDownList o0;
    public DialogDownZip p0;
    public DialogCreateAlbum q0;
    public final boolean r0;
    public final boolean s0;
    public boolean t0;
    public int u0;
    public int v0;
    public long w0;
    public boolean x0;
    public int y0;
    public boolean z0;

    /* loaded from: classes3.dex */
    public static class TypeTask extends MyAsyncTask {
        public final WeakReference e;
        public final List f;
        public ArrayList g;
        public final int h;

        public TypeTask(WebGridDialog webGridDialog, List list, int i) {
            WeakReference weakReference = new WeakReference(webGridDialog);
            this.e = weakReference;
            WebGridDialog webGridDialog2 = (WebGridDialog) weakReference.get();
            if (webGridDialog2 != null) {
                this.f = list;
                this.h = i;
                MyCoverView myCoverView = webGridDialog2.V;
                if (myCoverView != null) {
                    myCoverView.setBackColor(0);
                    webGridDialog2.V.n(true, 1.0f, 200L);
                }
                MyRecyclerView myRecyclerView = webGridDialog2.S;
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
            if (weakReference != null && ((WebGridDialog) weakReference.get()) != null && !this.f12839c && (i = this.h) != 0 && (list = this.f) != null && !list.isEmpty()) {
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
                        String W3 = MainUtil.W3(str, true);
                        if (TextUtils.isEmpty(W3)) {
                            if ((i & 64) == 64) {
                                this.g.add(str);
                            }
                        } else if (W3.equals("jpg")) {
                            if ((i & 2) == 2) {
                                this.g.add(str);
                            }
                        } else if (W3.equals("png")) {
                            if ((i & 4) == 4) {
                                this.g.add(str);
                            }
                        } else if (W3.equals("gif")) {
                            if ((i & 8) == 8) {
                                this.g.add(str);
                            }
                        } else if (W3.equals("webp")) {
                            if ((i & 16) == 16) {
                                this.g.add(str);
                            }
                        } else if ((i & 32) == 32) {
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
            WebGridDialog webGridDialog;
            WeakReference weakReference = this.e;
            if (weakReference != null && (webGridDialog = (WebGridDialog) weakReference.get()) != null) {
                webGridDialog.k0 = null;
                MyCoverView myCoverView = webGridDialog.V;
                if (myCoverView != null) {
                    myCoverView.f(true);
                }
                if (webGridDialog.y()) {
                    webGridDialog.S.setEnabled(true);
                    webGridDialog.R.setIncrease(2);
                    webGridDialog.E();
                }
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            WebGridDialog webGridDialog;
            int size;
            int size2;
            WeakReference weakReference = this.e;
            if (weakReference != null && (webGridDialog = (WebGridDialog) weakReference.get()) != null) {
                webGridDialog.k0 = null;
                if (webGridDialog.Z != null) {
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
                            webGridDialog.n0 = size - size2;
                            MainUtil.f8(webGridDialog.H, String.format(Locale.US, webGridDialog.H.getString(R.string.filtered_image), Integer.valueOf(webGridDialog.n0)));
                        }
                        webGridDialog.Z.F(this.g);
                    }
                    MyCoverView myCoverView = webGridDialog.V;
                    if (myCoverView != null) {
                        myCoverView.f(true);
                    }
                    if (webGridDialog.y()) {
                        webGridDialog.S.setEnabled(true);
                        webGridDialog.R.setIncrease(2);
                        webGridDialog.E();
                    }
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface WebImgListener {
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public WebGridDialog(com.mycompany.app.web.WebViewActivity r2, java.lang.String r3, boolean r4, boolean r5, int r6, com.mycompany.app.web.WebGridDialog.WebImgListener r7) {
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
            com.mycompany.app.web.WebGridDialog$19 r0 = new com.mycompany.app.web.WebGridDialog$19
            r0.<init>()
            r1.F0 = r0
            r1.j()
            r1.G = r2
            android.content.Context r2 = r1.getContext()
            r1.H = r2
            r1.I = r7
            r2 = 1
            r1.J = r2
            boolean r2 = com.mycompany.app.main.MainApp.K1
            r1.C0 = r2
            r1.g0 = r3
            r1.r0 = r4
            r1.s0 = r5
            r1.e0 = r6
            r2 = 0
            r1.f0 = r2
            android.os.Handler r2 = r1.i
            if (r2 != 0) goto L37
            return
        L37:
            com.mycompany.app.web.WebGridDialog$1 r3 = new com.mycompany.app.web.WebGridDialog$1
            r3.<init>()
            r2.post(r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.web.WebGridDialog.<init>(com.mycompany.app.web.WebViewActivity, java.lang.String, boolean, boolean, int, com.mycompany.app.web.WebGridDialog$WebImgListener):void");
    }

    public static void r(WebGridDialog webGridDialog) {
        WebGridAdapter webGridAdapter = webGridDialog.Z;
        if (webGridAdapter == null) {
            return;
        }
        if (webGridAdapter.i) {
            webGridDialog.H(webGridDialog.g0, webGridDialog.h0, webGridAdapter.x());
        } else {
            webGridDialog.H(webGridDialog.g0, webGridDialog.h0, webGridAdapter.f);
        }
    }

    public static void s(WebGridDialog webGridDialog) {
        WebGridAdapter webGridAdapter = webGridDialog.Z;
        if (webGridAdapter == null) {
            return;
        }
        if (webGridAdapter.i) {
            webGridDialog.J(webGridDialog.g0, webGridDialog.h0, webGridAdapter.x());
        } else {
            webGridDialog.J(webGridDialog.g0, webGridDialog.h0, webGridAdapter.f);
        }
    }

    public static void t(WebGridDialog webGridDialog) {
        WebGridAdapter webGridAdapter = webGridDialog.Z;
        if (webGridAdapter == null) {
            return;
        }
        if (webGridAdapter.i) {
            webGridDialog.I(webGridDialog.g0, webGridDialog.h0, webGridAdapter.x());
        } else {
            webGridDialog.I(webGridDialog.g0, webGridDialog.h0, webGridAdapter.f);
        }
    }

    public static void u(WebGridDialog webGridDialog, final int i) {
        if (!PrefAlbum.j || webGridDialog.G == null || webGridDialog.z()) {
            return;
        }
        webGridDialog.x();
        DialogConfirm dialogConfirm = new DialogConfirm(webGridDialog.G, new DialogConfirm.DialogConfListener() { // from class: com.mycompany.app.web.WebGridDialog.21
            @Override // com.mycompany.app.dialog.DialogConfirm.DialogConfListener
            public final void a(boolean z) {
                WebGridDialog webGridDialog2 = WebGridDialog.this;
                if (z) {
                    PrefAlbum.j = false;
                    PrefSet.d(0, webGridDialog2.H, "mGuideDown", false);
                }
                int i2 = WebGridDialog.I0;
                webGridDialog2.x();
            }
        });
        webGridDialog.l0 = dialogConfirm;
        dialogConfirm.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.web.WebGridDialog.22
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                int i2 = WebGridDialog.I0;
                WebGridDialog webGridDialog2 = WebGridDialog.this;
                webGridDialog2.x();
                int i3 = i;
                if (i3 == 0) {
                    WebGridDialog.t(webGridDialog2);
                } else if (i3 == 1) {
                    WebGridDialog.s(webGridDialog2);
                } else {
                    WebGridDialog.r(webGridDialog2);
                }
            }
        });
    }

    public final void A(int i) {
        int progress;
        if (this.S != null && this.f0 != 2) {
            if (i == -1) {
                WebView webView = WebLoadTask.c().b;
                if (webView == null) {
                    progress = 0;
                } else {
                    progress = webView.getProgress();
                }
                this.u0 = progress;
                this.v0 = i;
                this.y0 = 0;
            } else if (i != 100) {
                if (this.v0 == i) {
                    if (!this.x0) {
                        long currentTimeMillis = System.currentTimeMillis();
                        long j = this.w0;
                        if (j == 0) {
                            this.w0 = currentTimeMillis;
                            return;
                        } else {
                            if (currentTimeMillis - j > 5000) {
                                this.x0 = true;
                                MainUtil.e8(this.H, R.string.server_delay);
                                return;
                            }
                            return;
                        }
                    }
                    return;
                }
                this.v0 = i;
                this.w0 = 0L;
                if (i < 30) {
                    return;
                }
            }
            if (this.f0 != 0) {
                return;
            }
            if (this.e0 == 0) {
                WebLoadTask c2 = WebLoadTask.c();
                String str = this.g0;
                c2.f = false;
                WebView webView2 = c2.b;
                if (webView2 == null) {
                    WebLoadTask.WebLoadTaskListener webLoadTaskListener = c2.f19285c;
                    if (webLoadTaskListener != null) {
                        webLoadTaskListener.a();
                    }
                } else {
                    webView2.loadUrl(str);
                }
            } else if (this.t0) {
                this.t0 = false;
            } else {
                this.f0 = 1;
                this.V.postDelayed(new Runnable() { // from class: com.mycompany.app.web.WebGridDialog.17
                    @Override // java.lang.Runnable
                    public final void run() {
                        WebGridDialog webGridDialog = WebGridDialog.this;
                        if (webGridDialog.S == null || webGridDialog.f0 == 2) {
                            return;
                        }
                        WebLoadTask.c().e(webGridDialog.g0);
                    }
                }, 200L);
            }
            G();
        }
    }

    public final void B() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        if (this.Z != null && this.a0 != null) {
            this.c0 = w();
            MyManagerGrid myManagerGrid = this.a0;
            int i6 = myManagerGrid.F;
            int i7 = this.b0;
            if (i6 != i7) {
                myManagerGrid.x1(i7);
            }
            WebGridAdapter webGridAdapter = this.Z;
            int i8 = this.c0;
            if (webGridAdapter.h != i8) {
                webGridAdapter.h = i8;
                webGridAdapter.g();
            }
            boolean z = this.C0;
            boolean z2 = MainApp.K1;
            if (z != z2) {
                this.C0 = z2;
                MyMainRelative myMainRelative = this.K;
                if (myMainRelative != null) {
                    Window window = getWindow();
                    if (MainApp.K1) {
                        i = -16777216;
                    } else {
                        i = -460552;
                    }
                    myMainRelative.b(window, i);
                    int i9 = -328966;
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
                        if (!MainApp.K1) {
                            i9 = -14784824;
                        }
                        appCompatTextView.setTextColor(i9);
                    } else {
                        AppCompatTextView appCompatTextView2 = this.Y;
                        if (MainApp.K1) {
                            i10 = -8355712;
                        }
                        appCompatTextView2.setTextColor(i10);
                    }
                    WebGridAdapter webGridAdapter2 = this.Z;
                    if (webGridAdapter2 != null) {
                        webGridAdapter2.g();
                    }
                }
            }
            f();
        }
    }

    public final void C(boolean z) {
        if (z) {
            x();
            DialogImageType dialogImageType = this.m0;
            if (dialogImageType != null) {
                dialogImageType.dismiss();
                this.m0 = null;
            }
            DialogDownList dialogDownList = this.o0;
            if (dialogDownList != null) {
                dialogDownList.dismiss();
                this.o0 = null;
            }
            DialogDownZip dialogDownZip = this.p0;
            if (dialogDownZip != null) {
                dialogDownZip.dismiss();
                this.p0 = null;
            }
            DialogCreateAlbum dialogCreateAlbum = this.q0;
            if (dialogCreateAlbum != null) {
                dialogCreateAlbum.dismiss();
                this.q0 = null;
            }
            TypeTask typeTask = this.k0;
            if (typeTask != null) {
                typeTask.f12839c = true;
            }
            this.k0 = null;
            WebLoadTask c2 = WebLoadTask.c();
            c2.f = false;
            WebLoadTask.LoadTask loadTask = c2.d;
            if (loadTask != null) {
                loadTask.f12839c = true;
            }
            c2.d = null;
            c2.f19284a = false;
            c2.b = null;
            c2.f19285c = null;
            c2.e = 0;
            c2.f = false;
            WebLoadView webLoadView = this.B0;
            if (webLoadView != null) {
                webLoadView.b();
                this.B0 = null;
                return;
            }
            return;
        }
        this.A0 = PrefAlbum.k;
    }

    public final void D() {
        if (!this.J) {
            if (y()) {
                this.S.setEnabled(true);
                this.R.setIncrease(2);
                E();
            }
            int i = this.A0;
            int i2 = PrefAlbum.k;
            if (i != i2 && MainUtil.f(this.j0, i, i2)) {
                v(PrefAlbum.k, this.i0);
            }
        }
        this.J = false;
    }

    public final void E() {
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
        WebGridAdapter webGridAdapter = this.Z;
        if (webGridAdapter != null && this.W != null) {
            int i9 = -2434342;
            int i10 = -14784824;
            if (webGridAdapter.i) {
                if (webGridAdapter.k > 0) {
                    z2 = y();
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
                z = y();
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

    public final void F(int i, boolean z) {
        WebGridAdapter webGridAdapter = this.Z;
        if (webGridAdapter != null && z != webGridAdapter.i) {
            webGridAdapter.E(i, z);
            E();
            if (z) {
                AppCompatTextView appCompatTextView = this.P;
                if (appCompatTextView != null) {
                    WebGridAdapter webGridAdapter2 = this.Z;
                    appCompatTextView.setText(MainUtil.h3(webGridAdapter2.k, webGridAdapter2.y()));
                }
                MyButtonCheck myButtonCheck = this.Q;
                if (myButtonCheck != null) {
                    myButtonCheck.q(this.Z.A(), true);
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

    public final void G() {
        MyProgressBar myProgressBar = this.R;
        if (myProgressBar != null && myProgressBar.B) {
            this.S.setEnabled(false);
            E();
            this.R.k(true, 1, new MyProgressBar.MyProgressListener() { // from class: com.mycompany.app.web.WebGridDialog.18
                @Override // com.mycompany.app.view.MyProgressBar.MyProgressListener
                public final void a() {
                    WebGridDialog webGridDialog = WebGridDialog.this;
                    MyProgressBar myProgressBar2 = webGridDialog.R;
                    if (myProgressBar2 != null) {
                        myProgressBar2.setSkipDraw(true);
                        if (webGridDialog.y()) {
                            webGridDialog.S.setEnabled(true);
                            webGridDialog.R.setIncrease(2);
                            webGridDialog.E();
                        }
                    }
                }

                @Override // com.mycompany.app.view.MyProgressBar.MyProgressListener
                public final int b() {
                    WebGridDialog webGridDialog = WebGridDialog.this;
                    WebGridAdapter webGridAdapter = webGridDialog.Z;
                    if (webGridAdapter == null || webGridAdapter.y() != 0) {
                        return 0;
                    }
                    webGridDialog.A(webGridDialog.u0);
                    int i = webGridDialog.u0;
                    if (i == 100) {
                        return 0;
                    }
                    int i2 = webGridDialog.d0;
                    if (i2 == 0) {
                        webGridDialog.d0 = i2 + 1;
                    } else {
                        if (i2 == 100) {
                            return i2;
                        }
                        if (i2 < Math.max(i, 50)) {
                            webGridDialog.d0++;
                        }
                    }
                    return webGridDialog.d0;
                }

                @Override // com.mycompany.app.view.MyProgressBar.MyProgressListener
                public final boolean c() {
                    WebGridDialog webGridDialog = WebGridDialog.this;
                    int i = webGridDialog.y0;
                    if (i > 0 && i < 3) {
                        webGridDialog.y0 = i + 1;
                    }
                    if (webGridDialog.f0 != 2) {
                        return true;
                    }
                    return false;
                }
            });
        }
    }

    public final void H(String str, String str2, List list) {
        if (this.G == null || z()) {
            return;
        }
        DialogCreateAlbum dialogCreateAlbum = this.q0;
        if (dialogCreateAlbum != null) {
            dialogCreateAlbum.dismiss();
            this.q0 = null;
        }
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            if (list != null && !list.isEmpty()) {
                DialogCreateAlbum dialogCreateAlbum2 = new DialogCreateAlbum(this.G, str2, list, this.g0, new DialogSetFull.DialogApplyListener() { // from class: com.mycompany.app.web.WebGridDialog.29
                    @Override // com.mycompany.app.dialog.DialogSetFull.DialogApplyListener
                    public final void a() {
                        int i = WebGridDialog.I0;
                        WebGridDialog.this.F(-1, false);
                    }
                });
                this.q0 = dialogCreateAlbum2;
                dialogCreateAlbum2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.web.WebGridDialog.30
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        int i = WebGridDialog.I0;
                        WebGridDialog webGridDialog = WebGridDialog.this;
                        DialogCreateAlbum dialogCreateAlbum3 = webGridDialog.q0;
                        if (dialogCreateAlbum3 != null) {
                            dialogCreateAlbum3.dismiss();
                            webGridDialog.q0 = null;
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

    public final void I(String str, String str2, List list) {
        if (this.G == null || z()) {
            return;
        }
        DialogDownList dialogDownList = this.o0;
        if (dialogDownList != null) {
            dialogDownList.dismiss();
            this.o0 = null;
        }
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            if (list != null && !list.isEmpty()) {
                DialogDownList dialogDownList2 = new DialogDownList(this.G, str2, list, this.g0, new DialogSetFull.DialogApplyListener() { // from class: com.mycompany.app.web.WebGridDialog.25
                    @Override // com.mycompany.app.dialog.DialogSetFull.DialogApplyListener
                    public final void a() {
                        int i = WebGridDialog.I0;
                        WebGridDialog.this.F(-1, false);
                    }
                });
                this.o0 = dialogDownList2;
                dialogDownList2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.web.WebGridDialog.26
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        int i = WebGridDialog.I0;
                        WebGridDialog webGridDialog = WebGridDialog.this;
                        DialogDownList dialogDownList3 = webGridDialog.o0;
                        if (dialogDownList3 != null) {
                            dialogDownList3.dismiss();
                            webGridDialog.o0 = null;
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

    public final void J(String str, String str2, List list) {
        if (this.G == null || z()) {
            return;
        }
        DialogDownZip dialogDownZip = this.p0;
        if (dialogDownZip != null) {
            dialogDownZip.dismiss();
            this.p0 = null;
        }
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            if (list != null && !list.isEmpty()) {
                DialogDownZip dialogDownZip2 = new DialogDownZip(this.G, str2, list, this.g0, new DialogSetFull.DialogApplyListener() { // from class: com.mycompany.app.web.WebGridDialog.27
                    @Override // com.mycompany.app.dialog.DialogSetFull.DialogApplyListener
                    public final void a() {
                        int i = WebGridDialog.I0;
                        WebGridDialog.this.F(-1, false);
                    }
                });
                this.p0 = dialogDownZip2;
                dialogDownZip2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.web.WebGridDialog.28
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        int i = WebGridDialog.I0;
                        WebGridDialog webGridDialog = WebGridDialog.this;
                        DialogDownZip dialogDownZip3 = webGridDialog.p0;
                        if (dialogDownZip3 != null) {
                            dialogDownZip3.dismiss();
                            webGridDialog.p0 = null;
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
        C(true);
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
        this.a0 = null;
        this.g0 = null;
        this.h0 = null;
        this.i0 = null;
        this.j0 = null;
        WebGridAdapter webGridAdapter = this.Z;
        if (webGridAdapter != null) {
            webGridAdapter.C();
            this.Z = null;
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
        WebGridAdapter webGridAdapter = this.Z;
        if (webGridAdapter != null && webGridAdapter.i) {
            F(-1, false);
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

    public final void v(int i, List list) {
        boolean z;
        boolean z2;
        TypeTask typeTask = this.k0;
        if (typeTask != null) {
            typeTask.f12839c = true;
        }
        this.k0 = null;
        this.n0 = 0;
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
            this.n0 = list.size();
            MainUtil.f8(this.H, String.format(Locale.US, this.H.getString(R.string.filtered_image), Integer.valueOf(this.n0)));
        }
        if (!z2 && i != 126) {
            TypeTask typeTask2 = new TypeTask(this, list, i);
            this.k0 = typeTask2;
            typeTask2.b(this.H);
            return;
        }
        WebGridAdapter webGridAdapter = this.Z;
        if (webGridAdapter != null) {
            if (z2) {
                list = null;
            }
            webGridAdapter.F(list);
            MyCoverView myCoverView = this.V;
            if (myCoverView != null) {
                myCoverView.f(true);
            }
            if (y()) {
                this.S.setEnabled(true);
                this.R.setIncrease(2);
                E();
            }
        }
    }

    public final int w() {
        int i;
        MainUtil.SizeItem E0 = MainUtil.E0(this.G);
        if (E0 == null) {
            i = 0;
        } else {
            i = E0.f17015a;
        }
        this.b0 = 3;
        int i2 = (i - (4 * MainApp.p1)) / 3;
        while (i2 > MainApp.o1) {
            int i3 = this.b0;
            int i4 = i3 + 1;
            this.b0 = i4;
            i2 = (i - ((i3 + 2) * MainApp.p1)) / i4;
        }
        return i2;
    }

    public final void x() {
        DialogConfirm dialogConfirm = this.l0;
        if (dialogConfirm != null) {
            dialogConfirm.dismiss();
            this.l0 = null;
        }
    }

    public final boolean y() {
        if (this.R == null || this.f0 != 2 || this.k0 != null) {
            return false;
        }
        return true;
    }

    public final boolean z() {
        if (this.l0 != null || this.m0 != null || this.o0 != null || this.p0 != null || this.q0 != null) {
            return true;
        }
        return false;
    }
}
