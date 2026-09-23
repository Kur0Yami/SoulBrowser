package com.mycompany.app.dialog;

import android.content.Context;
import android.os.Handler;
import android.view.View;
import android.webkit.URLUtil;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.mycompany.app.dialog.DialogLoadImg;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyLineLinear;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyProgressBar;
import com.mycompany.app.web.WebEmgTask;
import com.mycompany.app.web.WebNestView;
import com.mycompany.app.web.WebViewActivity;

/* loaded from: classes3.dex */
public class DialogLoadEmg extends MyDialogBottom {
    public WebViewActivity a0;
    public Context b0;
    public DialogLoadImg.LoadImgListener c0;
    public MyDialogLinear d0;
    public AppCompatTextView e0;
    public MyProgressBar f0;
    public AppCompatTextView g0;
    public MyLineLinear h0;
    public AppCompatTextView i0;
    public MyLineText j0;
    public int k0;
    public boolean l0;
    public WebEmgTask m0;
    public WebNestView n0;
    public String o0;
    public final boolean p0;
    public int q0;
    public long r0;
    public boolean s0;
    public boolean t0;
    public boolean u0;

    /* renamed from: com.mycompany.app.dialog.DialogLoadEmg$10, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass10 implements MyProgressBar.MyProgressListener {
        public AnonymousClass10() {
        }

        @Override // com.mycompany.app.view.MyProgressBar.MyProgressListener
        public final void a() {
        }

        @Override // com.mycompany.app.view.MyProgressBar.MyProgressListener
        public final int b() {
            return 0;
        }

        @Override // com.mycompany.app.view.MyProgressBar.MyProgressListener
        public final boolean c() {
            if (DialogLoadEmg.this.k0 != 2) {
                return true;
            }
            return false;
        }
    }

    public DialogLoadEmg(WebViewActivity webViewActivity, WebNestView webNestView, String str, boolean z, DialogLoadImg.LoadImgListener loadImgListener) {
        super(webViewActivity);
        this.a0 = webViewActivity;
        this.b0 = getContext();
        this.c0 = loadImgListener;
        this.n0 = webNestView;
        this.o0 = str;
        this.p0 = z;
        this.k0 = 0;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogLoadEmg.1
            @Override // java.lang.Runnable
            public final void run() {
                final DialogLoadEmg dialogLoadEmg = DialogLoadEmg.this;
                Context context = dialogLoadEmg.b0;
                if (context != null) {
                    MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
                    int G = (int) MainUtil.G(context, 72.0f);
                    LinearLayout linearLayout = new LinearLayout(context);
                    int i = MainApp.E1;
                    linearLayout.setPadding(i, 0, i, 0);
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
                    dialogLoadEmg.d0 = q;
                    dialogLoadEmg.e0 = j;
                    dialogLoadEmg.f0 = myProgressBar;
                    dialogLoadEmg.g0 = appCompatTextView;
                    dialogLoadEmg.h0 = myLineLinear;
                    dialogLoadEmg.i0 = l;
                    dialogLoadEmg.j0 = s;
                    Handler handler2 = dialogLoadEmg.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogLoadEmg.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            final DialogLoadEmg dialogLoadEmg2 = DialogLoadEmg.this;
                            if (dialogLoadEmg2.d0 != null && dialogLoadEmg2.b0 != null) {
                                if (MainApp.K1) {
                                    dialogLoadEmg2.e0.setTextColor(-328966);
                                    dialogLoadEmg2.g0.setTextColor(-328966);
                                    dialogLoadEmg2.i0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogLoadEmg2.j0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogLoadEmg2.i0.setTextColor(-328966);
                                    dialogLoadEmg2.j0.setTextColor(-328966);
                                } else {
                                    dialogLoadEmg2.e0.setTextColor(-16777216);
                                    dialogLoadEmg2.g0.setTextColor(-16777216);
                                    dialogLoadEmg2.i0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogLoadEmg2.j0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogLoadEmg2.i0.setTextColor(-14784824);
                                    dialogLoadEmg2.j0.setTextColor(-14784824);
                                }
                                dialogLoadEmg2.i0.setActivated(true);
                                dialogLoadEmg2.i0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogLoadEmg.3
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        DialogLoadEmg dialogLoadEmg3 = DialogLoadEmg.this;
                                        AppCompatTextView appCompatTextView2 = dialogLoadEmg3.i0;
                                        if (appCompatTextView2 != null) {
                                            if (appCompatTextView2.isActivated()) {
                                                dialogLoadEmg3.dismiss();
                                                return;
                                            }
                                            dialogLoadEmg3.u0 = false;
                                            dialogLoadEmg3.k0 = 0;
                                            dialogLoadEmg3.r0 = 0L;
                                            dialogLoadEmg3.s0 = false;
                                            dialogLoadEmg3.C(-1);
                                            if (dialogLoadEmg3.f0 == null) {
                                                return;
                                            }
                                            dialogLoadEmg3.e0.setVisibility(0);
                                            dialogLoadEmg3.f0.setVisibility(0);
                                            dialogLoadEmg3.f0.k(true, 1, new AnonymousClass10());
                                        }
                                    }
                                });
                                dialogLoadEmg2.j0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogLoadEmg.4
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        DialogLoadEmg dialogLoadEmg3 = DialogLoadEmg.this;
                                        DialogLoadImg.LoadImgListener loadImgListener2 = dialogLoadEmg3.c0;
                                        if (loadImgListener2 != null) {
                                            loadImgListener2.b(dialogLoadEmg3.o0);
                                        }
                                    }
                                });
                                if (!URLUtil.isNetworkUrl(dialogLoadEmg2.o0)) {
                                    dialogLoadEmg2.k0 = 2;
                                    dialogLoadEmg2.B(true, false, false);
                                } else {
                                    dialogLoadEmg2.m0 = new WebEmgTask(dialogLoadEmg2.b0, dialogLoadEmg2.n0, new WebEmgTask.EmgTaskListener() { // from class: com.mycompany.app.dialog.DialogLoadEmg.6
                                        @Override // com.mycompany.app.web.WebEmgTask.EmgTaskListener
                                        public final void a() {
                                            DialogLoadEmg dialogLoadEmg3 = DialogLoadEmg.this;
                                            dialogLoadEmg3.k0 = 2;
                                            dialogLoadEmg3.B(false, false, false);
                                        }

                                        @Override // com.mycompany.app.web.WebEmgTask.EmgTaskListener
                                        public final void b() {
                                            DialogLoadEmg dialogLoadEmg3 = DialogLoadEmg.this;
                                            if (dialogLoadEmg3.k0 == 2) {
                                                return;
                                            }
                                            dialogLoadEmg3.k0 = 1;
                                        }

                                        /* JADX WARN: Code restructure failed: missing block: B:67:0x0102, code lost:
                                        
                                            if (android.text.TextUtils.isEmpty(r14) == false) goto L69;
                                         */
                                        /* JADX WARN: Type inference failed for: r11v5, types: [com.mycompany.app.data.DataUrl$ImgCntItem, java.lang.Object] */
                                        @Override // com.mycompany.app.web.WebEmgTask.EmgTaskListener
                                        /*
                                            Code decompiled incorrectly, please refer to instructions dump.
                                            To view partially-correct add '--show-bad-code' argument
                                        */
                                        public final void c(java.util.ArrayList r11, int r12, int r13, java.lang.String r14) {
                                            /*
                                                Method dump skipped, instructions count: 366
                                                To view this dump add '--comments-level debug' option
                                            */
                                            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogLoadEmg.AnonymousClass6.c(java.util.ArrayList, int, int, java.lang.String):void");
                                        }
                                    });
                                    dialogLoadEmg2.C(-1);
                                    if (dialogLoadEmg2.f0 != null) {
                                        dialogLoadEmg2.e0.setVisibility(0);
                                        dialogLoadEmg2.f0.setVisibility(0);
                                        dialogLoadEmg2.f0.k(true, 1, new AnonymousClass10());
                                    }
                                }
                                dialogLoadEmg2.g(dialogLoadEmg2.d0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogLoadEmg.5
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view) {
                                        DialogLoadEmg dialogLoadEmg3 = DialogLoadEmg.this;
                                        if (dialogLoadEmg3.d0 == null) {
                                            return;
                                        }
                                        dialogLoadEmg3.show();
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
        this.k0 = 2;
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
        if (this.p0) {
            this.j0.setVisibility(0);
        }
        this.h0.setVisibility(0);
    }

    public final void C(int i) {
        int i2;
        int i3;
        if (this.d0 != null && (i2 = this.k0) != 2) {
            if (i == -1) {
                this.q0 = i;
                this.t0 = true;
            } else if (i != 100) {
                if (this.q0 == i) {
                    if (!this.s0) {
                        long currentTimeMillis = System.currentTimeMillis();
                        long j = this.r0;
                        if (j == 0) {
                            this.r0 = currentTimeMillis;
                        } else if (currentTimeMillis - j > 5000) {
                            this.s0 = true;
                            this.e0.setText(R.string.server_delay);
                        }
                    }
                    this.i.postDelayed(new Runnable() { // from class: com.mycompany.app.dialog.DialogLoadEmg.7
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogLoadEmg dialogLoadEmg = DialogLoadEmg.this;
                            WebEmgTask webEmgTask = dialogLoadEmg.m0;
                            if (webEmgTask == null) {
                                return;
                            }
                            dialogLoadEmg.C(webEmgTask.a());
                        }
                    }, 400L);
                    return;
                }
                this.q0 = i;
                this.r0 = 0L;
                if (i < 30) {
                    this.i.postDelayed(new Runnable() { // from class: com.mycompany.app.dialog.DialogLoadEmg.8
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogLoadEmg dialogLoadEmg = DialogLoadEmg.this;
                            WebEmgTask webEmgTask = dialogLoadEmg.m0;
                            if (webEmgTask == null) {
                                return;
                            }
                            dialogLoadEmg.C(webEmgTask.a());
                        }
                    }, 400L);
                    return;
                }
            }
            if (i2 != 0) {
                return;
            }
            this.k0 = 1;
            this.i.postDelayed(new Runnable() { // from class: com.mycompany.app.dialog.DialogLoadEmg.9
                @Override // java.lang.Runnable
                public final void run() {
                    DialogLoadEmg dialogLoadEmg = DialogLoadEmg.this;
                    WebEmgTask webEmgTask = dialogLoadEmg.m0;
                    if (webEmgTask == null || dialogLoadEmg.k0 == 2) {
                        return;
                    }
                    webEmgTask.b();
                }
            }, 200L);
            if (!this.s0) {
                this.e0.setText(R.string.loading);
            }
            this.g0.setVisibility(8);
            this.i0.setActivated(true);
            this.i0.setText(R.string.cancel);
            AppCompatTextView appCompatTextView = this.i0;
            if (MainApp.K1) {
                i3 = -328966;
            } else {
                i3 = -16777216;
            }
            appCompatTextView.setTextColor(i3);
            this.j0.setVisibility(8);
        }
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.b0 == null) {
            return;
        }
        WebEmgTask webEmgTask = this.m0;
        if (webEmgTask != null) {
            webEmgTask.d();
            this.m0 = null;
        }
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
        this.n0 = null;
        this.o0 = null;
        super.dismiss();
    }
}
