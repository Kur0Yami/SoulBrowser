package com.mycompany.app.dialog;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.webkit.URLUtil;
import android.webkit.WebView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.mycompany.app.data.DataUrl;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefMain;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyLineLinear;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyProgressBar;
import com.mycompany.app.web.WebLoadTask;
import com.mycompany.app.web.WebViewActivity;
import java.util.List;

/* loaded from: classes3.dex */
public class DialogLoadImg extends MyDialogBottom {
    public int A0;
    public final Runnable B0;
    public WebViewActivity a0;
    public Context b0;
    public LoadImgListener c0;
    public MyDialogLinear d0;
    public AppCompatTextView e0;
    public MyProgressBar f0;
    public AppCompatTextView g0;
    public MyLineLinear h0;
    public AppCompatTextView i0;
    public MyLineText j0;
    public int k0;
    public int l0;
    public boolean m0;
    public boolean n0;
    public String o0;
    public List p0;
    public final boolean q0;
    public final boolean r0;
    public boolean s0;
    public long t0;
    public int u0;
    public int v0;
    public long w0;
    public boolean x0;
    public int y0;
    public boolean z0;

    /* loaded from: classes3.dex */
    public interface LoadImgListener {
        void b(String str);

        void c(boolean z);

        boolean d(String str, List list);
    }

    public DialogLoadImg(WebViewActivity webViewActivity, String str, boolean z, boolean z2, int i, LoadImgListener loadImgListener) {
        super(webViewActivity);
        this.B0 = new Runnable() { // from class: com.mycompany.app.dialog.DialogLoadImg.9
            @Override // java.lang.Runnable
            public final void run() {
                DialogLoadImg dialogLoadImg = DialogLoadImg.this;
                dialogLoadImg.D(dialogLoadImg.A0, false);
            }
        };
        this.a0 = webViewActivity;
        this.b0 = getContext();
        this.c0 = loadImgListener;
        this.o0 = str;
        this.q0 = z;
        this.r0 = z2;
        this.k0 = i;
        this.l0 = 0;
        this.m0 = i == 2;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogLoadImg.1
            @Override // java.lang.Runnable
            public final void run() {
                final DialogLoadImg dialogLoadImg = DialogLoadImg.this;
                Context context = dialogLoadImg.b0;
                if (context != null) {
                    MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
                    int G = (int) MainUtil.G(context, 72.0f);
                    LinearLayout linearLayout = new LinearLayout(context);
                    int i2 = MainApp.E1;
                    linearLayout.setPadding(i2, 0, i2, 0);
                    linearLayout.setMinimumHeight(G);
                    linearLayout.setOrientation(1);
                    q.addView(linearLayout, -1, -2);
                    AppCompatTextView j = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
                    LinearLayout.LayoutParams e = com.google.android.gms.internal.mlkit_vision_text_common.a.e(j, R.string.loading, -1, -2);
                    e.topMargin = (int) MainUtil.G(context, 12.0f);
                    linearLayout.addView(j, e);
                    MyProgressBar myProgressBar = new MyProgressBar(context);
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, MainApp.x1);
                    layoutParams.topMargin = (int) MainUtil.G(context, 14.0f);
                    linearLayout.addView(myProgressBar, layoutParams);
                    AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
                    appCompatTextView.setMinimumHeight(G);
                    appCompatTextView.setGravity(17);
                    appCompatTextView.setTextSize(1, 16.0f);
                    appCompatTextView.setVisibility(8);
                    LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams2.gravity = 17;
                    linearLayout.addView(appCompatTextView, layoutParams2);
                    MyLineLinear myLineLinear = new MyLineLinear(context);
                    myLineLinear.setBaselineAligned(false);
                    myLineLinear.setOrientation(0);
                    myLineLinear.setLinePad(MainApp.E1);
                    myLineLinear.setLineUp(true);
                    myLineLinear.setVisibility(8);
                    MyLineText s = com.google.android.gms.internal.mlkit_vision_text_common.a.s(q, myLineLinear, -1, MainApp.g1, context);
                    s.setGravity(17);
                    s.setTextSize(1, 16.0f);
                    s.setText(R.string.new_url);
                    s.s(context);
                    s.setVisibility(8);
                    LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(0, -1);
                    layoutParams3.weight = 1.0f;
                    AppCompatTextView l = com.google.android.gms.internal.mlkit_vision_text_common.a.l(myLineLinear, s, layoutParams3, context, null);
                    l.setGravity(17);
                    l.setTextSize(1, 16.0f);
                    LinearLayout.LayoutParams e2 = com.google.android.gms.internal.mlkit_vision_text_common.a.e(l, R.string.retry, 0, -1);
                    e2.weight = 1.0f;
                    myLineLinear.addView(l, e2);
                    dialogLoadImg.d0 = q;
                    dialogLoadImg.e0 = j;
                    dialogLoadImg.f0 = myProgressBar;
                    dialogLoadImg.g0 = appCompatTextView;
                    dialogLoadImg.h0 = myLineLinear;
                    dialogLoadImg.i0 = l;
                    dialogLoadImg.j0 = s;
                    Handler handler2 = dialogLoadImg.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogLoadImg.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            boolean z3;
                            final DialogLoadImg dialogLoadImg2 = DialogLoadImg.this;
                            if (dialogLoadImg2.d0 != null && dialogLoadImg2.b0 != null) {
                                if (MainApp.K1) {
                                    dialogLoadImg2.e0.setTextColor(-328966);
                                    dialogLoadImg2.g0.setTextColor(-328966);
                                    dialogLoadImg2.i0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogLoadImg2.j0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogLoadImg2.i0.setTextColor(-328966);
                                    dialogLoadImg2.j0.setTextColor(-328966);
                                } else {
                                    dialogLoadImg2.e0.setTextColor(-16777216);
                                    dialogLoadImg2.g0.setTextColor(-16777216);
                                    dialogLoadImg2.i0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogLoadImg2.j0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogLoadImg2.i0.setTextColor(-14784824);
                                    dialogLoadImg2.j0.setTextColor(-14784824);
                                }
                                dialogLoadImg2.i0.setActivated(true);
                                dialogLoadImg2.i0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogLoadImg.3
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        DialogLoadImg dialogLoadImg3 = DialogLoadImg.this;
                                        AppCompatTextView appCompatTextView2 = dialogLoadImg3.i0;
                                        if (appCompatTextView2 == null) {
                                            return;
                                        }
                                        if (appCompatTextView2.isActivated()) {
                                            dialogLoadImg3.dismiss();
                                            return;
                                        }
                                        int i3 = 0;
                                        dialogLoadImg3.z0 = false;
                                        dialogLoadImg3.l0 = 0;
                                        dialogLoadImg3.w0 = 0L;
                                        dialogLoadImg3.x0 = false;
                                        dialogLoadImg3.C(-1);
                                        WebView webView = WebLoadTask.c().b;
                                        if (webView != null) {
                                            i3 = webView.getProgress();
                                        }
                                        dialogLoadImg3.D(i3, true);
                                    }
                                });
                                dialogLoadImg2.j0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogLoadImg.4
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        DialogLoadImg dialogLoadImg3 = DialogLoadImg.this;
                                        LoadImgListener loadImgListener2 = dialogLoadImg3.c0;
                                        if (loadImgListener2 != null) {
                                            loadImgListener2.b(dialogLoadImg3.o0);
                                        }
                                    }
                                });
                                if (!URLUtil.isNetworkUrl(dialogLoadImg2.o0)) {
                                    dialogLoadImg2.k0 = 2;
                                    dialogLoadImg2.l0 = 2;
                                    dialogLoadImg2.B(true, false, false);
                                } else {
                                    WebLoadTask.c().f19285c = new WebLoadTask.WebLoadTaskListener() { // from class: com.mycompany.app.dialog.DialogLoadImg.6
                                        @Override // com.mycompany.app.web.WebLoadTask.WebLoadTaskListener
                                        public final void a() {
                                            DialogLoadImg dialogLoadImg3 = DialogLoadImg.this;
                                            dialogLoadImg3.k0 = 2;
                                            dialogLoadImg3.l0 = 2;
                                            dialogLoadImg3.B(false, false, false);
                                        }

                                        @Override // com.mycompany.app.web.WebLoadTask.WebLoadTaskListener
                                        public final void b() {
                                            DialogLoadImg dialogLoadImg3 = DialogLoadImg.this;
                                            if (dialogLoadImg3.l0 == 2) {
                                                return;
                                            }
                                            dialogLoadImg3.l0 = 1;
                                        }

                                        @Override // com.mycompany.app.web.WebLoadTask.WebLoadTaskListener
                                        public final void c(String str2, List list, DataUrl.ImgCntItem imgCntItem) {
                                            DialogLoadImg dialogLoadImg3 = DialogLoadImg.this;
                                            if (dialogLoadImg3.f0 != null && dialogLoadImg3.l0 != 2) {
                                                int i3 = 0;
                                                boolean z4 = false;
                                                dialogLoadImg3.l0 = 0;
                                                if (list == null || list.isEmpty()) {
                                                    dialogLoadImg3.z0 = false;
                                                    if (dialogLoadImg3.y0 != 4) {
                                                        WebView webView = WebLoadTask.c().b;
                                                        if (webView != null) {
                                                            i3 = webView.getProgress();
                                                        }
                                                        dialogLoadImg3.C(i3);
                                                        int i4 = dialogLoadImg3.y0;
                                                        if (i4 == 0) {
                                                            if (i3 == 100) {
                                                                dialogLoadImg3.y0 = 1;
                                                                return;
                                                            }
                                                            return;
                                                        } else {
                                                            if (i4 == 3) {
                                                                dialogLoadImg3.y0 = 4;
                                                                return;
                                                            }
                                                            return;
                                                        }
                                                    }
                                                }
                                                dialogLoadImg3.p0 = list;
                                                dialogLoadImg3.l0 = 2;
                                                if (list != null && !list.isEmpty()) {
                                                    if (!dialogLoadImg3.n0 && dialogLoadImg3.a0 != null) {
                                                        dialogLoadImg3.n0 = true;
                                                        if (TextUtils.isEmpty(str2)) {
                                                            Context context2 = dialogLoadImg3.b0;
                                                            if (context2 == null) {
                                                                str2 = "No title";
                                                            } else {
                                                                str2 = context2.getString(R.string.no_title);
                                                            }
                                                        }
                                                        LoadImgListener loadImgListener2 = dialogLoadImg3.c0;
                                                        if (loadImgListener2 == null || !loadImgListener2.d(str2, list)) {
                                                            DataUrl b = DataUrl.b(dialogLoadImg3.b0);
                                                            b.f12901a = list;
                                                            b.f12902c = imgCntItem;
                                                            Intent R1 = MainUtil.R1(dialogLoadImg3.b0);
                                                            R1.putExtra("EXTRA_TYPE", 12);
                                                            R1.putExtra("EXTRA_NAME", str2);
                                                            R1.putExtra("EXTRA_INDEX", 0);
                                                            R1.putExtra("EXTRA_REFERER", dialogLoadImg3.o0);
                                                            R1.putExtra("EXTRA_PRELOAD", true);
                                                            int i5 = PrefMain.p;
                                                            if (i5 < 100) {
                                                                int i6 = i5 + 1;
                                                                PrefMain.p = i6;
                                                                PrefSet.f(dialogLoadImg3.b0, 5, i6, "mShowAdsImage");
                                                                dialogLoadImg3.a0.startActivity(R1);
                                                            } else {
                                                                dialogLoadImg3.a0.t0(R1, 18);
                                                                z4 = true;
                                                            }
                                                            LoadImgListener loadImgListener3 = dialogLoadImg3.c0;
                                                            if (loadImgListener3 != null) {
                                                                loadImgListener3.c(z4);
                                                                return;
                                                            }
                                                            return;
                                                        }
                                                        return;
                                                    }
                                                    return;
                                                }
                                                if (!dialogLoadImg3.z0) {
                                                    dialogLoadImg3.z0 = false;
                                                }
                                                if (WebLoadTask.c().f) {
                                                    dialogLoadImg3.B(false, true, false);
                                                } else if (dialogLoadImg3.z0) {
                                                    dialogLoadImg3.B(false, false, true);
                                                } else {
                                                    dialogLoadImg3.B(false, false, false);
                                                }
                                            }
                                        }

                                        @Override // com.mycompany.app.web.WebLoadTask.WebLoadTaskListener
                                        public final void d(int i3) {
                                            DialogLoadImg dialogLoadImg3 = DialogLoadImg.this;
                                            if (dialogLoadImg3.f0 == null) {
                                                return;
                                            }
                                            dialogLoadImg3.u0 = i3;
                                            dialogLoadImg3.k0 = 1;
                                            dialogLoadImg3.D(i3, false);
                                        }

                                        @Override // com.mycompany.app.web.WebLoadTask.WebLoadTaskListener
                                        public final void e() {
                                            DialogLoadImg dialogLoadImg3 = DialogLoadImg.this;
                                            if (dialogLoadImg3.f0 != null) {
                                                dialogLoadImg3.k0 = 2;
                                                if (dialogLoadImg3.l0 == 2) {
                                                    return;
                                                }
                                                dialogLoadImg3.l0 = 0;
                                                dialogLoadImg3.C(-1);
                                            }
                                        }
                                    };
                                    if (dialogLoadImg2.k0 == 0) {
                                        dialogLoadImg2.k0 = WebLoadTask.c().e;
                                    }
                                    if ((dialogLoadImg2.r0 || dialogLoadImg2.q0) && dialogLoadImg2.k0 == 1) {
                                        z3 = true;
                                    } else {
                                        z3 = false;
                                    }
                                    dialogLoadImg2.s0 = z3;
                                    dialogLoadImg2.C(-1);
                                    if (dialogLoadImg2.m0) {
                                        MyProgressBar myProgressBar2 = dialogLoadImg2.f0;
                                        if (myProgressBar2 != null) {
                                            myProgressBar2.k(true, 1, new MyProgressBar.MyProgressListener() { // from class: com.mycompany.app.dialog.DialogLoadImg.8
                                                @Override // com.mycompany.app.view.MyProgressBar.MyProgressListener
                                                public final void a() {
                                                    DialogLoadImg.this.m0 = false;
                                                }

                                                @Override // com.mycompany.app.view.MyProgressBar.MyProgressListener
                                                public final int b() {
                                                    return 0;
                                                }

                                                @Override // com.mycompany.app.view.MyProgressBar.MyProgressListener
                                                public final boolean c() {
                                                    DialogLoadImg dialogLoadImg3 = DialogLoadImg.this;
                                                    int i3 = dialogLoadImg3.y0;
                                                    if (i3 > 0 && i3 < 3) {
                                                        dialogLoadImg3.y0 = i3 + 1;
                                                    }
                                                    if (dialogLoadImg3.l0 != 2) {
                                                        return true;
                                                    }
                                                    return false;
                                                }
                                            });
                                        }
                                    } else {
                                        dialogLoadImg2.D(0, true);
                                    }
                                }
                                dialogLoadImg2.g(dialogLoadImg2.d0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogLoadImg.5
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view) {
                                        DialogLoadImg dialogLoadImg3 = DialogLoadImg.this;
                                        if (dialogLoadImg3.d0 == null) {
                                            return;
                                        }
                                        dialogLoadImg3.show();
                                    }
                                });
                            }
                        }
                    });
                }
            }
        });
    }

    public final void B(boolean z, boolean z2, boolean z3) {
        if (this.f0 == null) {
            return;
        }
        this.l0 = 2;
        this.e0.setVisibility(8);
        this.f0.setVisibility(8);
        this.g0.setVisibility(0);
        int i = -328966;
        if (z) {
            this.g0.setText(R.string.no_image);
            this.i0.setActivated(true);
            this.i0.setText(R.string.close);
            AppCompatTextView appCompatTextView = this.i0;
            if (!MainApp.K1) {
                i = -16777216;
            }
            appCompatTextView.setTextColor(i);
            return;
        }
        if (z2) {
            this.g0.setText(R.string.server_error);
        } else if (z3) {
            this.g0.setText(R.string.check_network);
        } else {
            this.g0.setText(R.string.no_image);
        }
        this.i0.setActivated(false);
        this.i0.setText(R.string.retry);
        AppCompatTextView appCompatTextView2 = this.i0;
        if (!MainApp.K1) {
            i = -14784824;
        }
        appCompatTextView2.setTextColor(i);
        if (this.r0) {
            this.j0.setVisibility(0);
        }
        this.h0.setVisibility(0);
    }

    public final void C(int i) {
        int i2;
        int progress;
        if (this.d0 != null && this.l0 != 2) {
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
                                this.e0.setText(R.string.server_delay);
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
            if (this.l0 != 0) {
                return;
            }
            if (this.k0 == 0) {
                WebLoadTask c2 = WebLoadTask.c();
                String str = this.o0;
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
            } else if (this.s0) {
                this.s0 = false;
            } else {
                this.l0 = 1;
                this.i.postDelayed(new Runnable() { // from class: com.mycompany.app.dialog.DialogLoadImg.7
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogLoadImg dialogLoadImg = DialogLoadImg.this;
                        if (dialogLoadImg.d0 == null || dialogLoadImg.l0 == 2) {
                            return;
                        }
                        WebLoadTask.c().e(dialogLoadImg.o0);
                    }
                }, 200L);
            }
            if (!this.x0) {
                this.e0.setText(R.string.loading);
            }
            this.g0.setVisibility(8);
            this.i0.setActivated(true);
            this.i0.setText(R.string.cancel);
            AppCompatTextView appCompatTextView = this.i0;
            if (MainApp.K1) {
                i2 = -328966;
            } else {
                i2 = -16777216;
            }
            appCompatTextView.setTextColor(i2);
            this.j0.setVisibility(8);
        }
    }

    public final void D(int i, boolean z) {
        MyProgressBar myProgressBar;
        int i2;
        this.A0 = i;
        if (!this.n0 && (myProgressBar = this.f0) != null) {
            if (z) {
                this.e0.setVisibility(0);
                this.f0.setProgress(0.0f);
                this.f0.setVisibility(0);
                D(Math.max(i, 50), false);
                return;
            }
            int round = Math.round(myProgressBar.getProgress());
            if (round == 100 && (i2 = this.y0) > 0 && i2 < 3) {
                this.y0 = i2 + 1;
                round = -1;
            }
            C(this.u0);
            if (round < i) {
                long currentTimeMillis = System.currentTimeMillis();
                if (round == -1 || currentTimeMillis - this.t0 > 1) {
                    this.f0.setProgress(round + 1);
                }
                this.t0 = currentTimeMillis;
            }
            Runnable runnable = this.B0;
            if (runnable != null && this.f0.getVisibility() == 0) {
                this.f0.removeCallbacks(runnable);
                this.f0.post(runnable);
            }
        }
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.b0 == null) {
            return;
        }
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
        MyDialogLinear myDialogLinear = this.d0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.d0 = null;
        }
        MyProgressBar myProgressBar = this.f0;
        if (myProgressBar != null) {
            myProgressBar.f();
            this.f0 = null;
        }
        MyLineLinear myLineLinear = this.h0;
        if (myLineLinear != null) {
            myLineLinear.a();
            this.h0 = null;
        }
        MyLineText myLineText = this.j0;
        if (myLineText != null) {
            myLineText.u();
            this.j0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.c0 = null;
        this.e0 = null;
        this.g0 = null;
        this.i0 = null;
        this.o0 = null;
        this.p0 = null;
        super.dismiss();
    }
}
