package com.mycompany.app.dialog;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.async.MyAsyncTask;
import com.mycompany.app.dialog.DialogEditUrl;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.script.UnicodeReader;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyCoverView;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyLineLinear;
import com.mycompany.app.view.MyLineRelative;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyProgressBar;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class DialogUpdateScript extends MyDialogBottom {
    public InputStream A0;
    public UnicodeReader B0;
    public long C0;
    public String D0;
    public String E0;
    public Context a0;
    public DialogEditUrl.EditUrlListener b0;
    public final boolean c0;
    public List d0;
    public MyDialogLinear e0;
    public MyLineRelative f0;
    public AppCompatTextView g0;
    public AppCompatTextView h0;
    public AppCompatTextView i0;
    public RelativeLayout j0;
    public FrameLayout k0;
    public AppCompatTextView l0;
    public AppCompatTextView m0;
    public MyProgressBar n0;
    public long o0;
    public long p0;
    public AppCompatTextView q0;
    public MyCoverView r0;
    public MyLineText s0;
    public AppCompatTextView t0;
    public DialogTask u0;
    public int v0;
    public boolean w0;
    public boolean x0;
    public boolean y0;
    public HttpURLConnection z0;

    /* loaded from: classes3.dex */
    public static class DialogTask extends MyAsyncTask {
        public final WeakReference e;
        public final List f;
        public final MainItem.ChildItem g;
        public final String h;
        public final String i;
        public boolean j;
        public int k;
        public String l;

        public DialogTask(DialogUpdateScript dialogUpdateScript) {
            WeakReference weakReference = new WeakReference(dialogUpdateScript);
            this.e = weakReference;
            DialogUpdateScript dialogUpdateScript2 = (DialogUpdateScript) weakReference.get();
            if (dialogUpdateScript2 != null) {
                List list = dialogUpdateScript2.d0;
                this.f = list;
                int i = dialogUpdateScript2.v0;
                if (list != null && i < list.size()) {
                    MainItem.ChildItem childItem = (MainItem.ChildItem) list.get(i);
                    this.g = childItem;
                    if (childItem != null) {
                        this.h = childItem.g;
                        String str = childItem.h;
                        this.i = str;
                        dialogUpdateScript2.o0 = 0L;
                        dialogUpdateScript2.p0 = 0L;
                        String h3 = MainUtil.h3(i + 1, list.size());
                        dialogUpdateScript2.g0.setText(str);
                        dialogUpdateScript2.h0.setText(h3);
                        dialogUpdateScript2.i0.setText(h3);
                        dialogUpdateScript2.m0.setText(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                        dialogUpdateScript2.n0.setMax(100);
                        dialogUpdateScript2.n0.setProgress(0.0f);
                        dialogUpdateScript2.f0.setVisibility(0);
                        dialogUpdateScript2.h0.setVisibility(0);
                        dialogUpdateScript2.j0.setVisibility(0);
                        dialogUpdateScript2.k0.setVisibility(0);
                        dialogUpdateScript2.n0.setVisibility(0);
                        dialogUpdateScript2.q0.setVisibility(8);
                        dialogUpdateScript2.y0 = false;
                        dialogUpdateScript2.w0 = false;
                        dialogUpdateScript2.s0.setVisibility(8);
                        dialogUpdateScript2.t0.setEnabled(true);
                        dialogUpdateScript2.t0.setText(R.string.cancel);
                        dialogUpdateScript2.setCanceledOnTouchOutside(false);
                    }
                }
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:55:0x006e  */
        /* JADX WARN: Removed duplicated region for block: B:56:0x0075  */
        @Override // com.mycompany.app.async.MyAsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a() {
            /*
                Method dump skipped, instructions count: 247
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogUpdateScript.DialogTask.a():void");
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            DialogUpdateScript dialogUpdateScript;
            WeakReference weakReference = this.e;
            if (weakReference == null || (dialogUpdateScript = (DialogUpdateScript) weakReference.get()) == null) {
                return;
            }
            dialogUpdateScript.u0 = null;
            MainUtil.e8(dialogUpdateScript.a0, R.string.cancelled);
            dialogUpdateScript.dismiss();
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            final DialogUpdateScript dialogUpdateScript;
            WeakReference weakReference = this.e;
            if (weakReference == null || (dialogUpdateScript = (DialogUpdateScript) weakReference.get()) == null) {
                return;
            }
            dialogUpdateScript.u0 = null;
            if (dialogUpdateScript.D()) {
                MainUtil.e8(dialogUpdateScript.a0, R.string.cancelled);
                dialogUpdateScript.dismiss();
                return;
            }
            List list = this.f;
            if (list != null && !list.isEmpty()) {
                if (!this.j) {
                    int i = this.k;
                    if (i != 0) {
                        dialogUpdateScript.q0.setText(i);
                    } else if (!TextUtils.isEmpty(this.l)) {
                        dialogUpdateScript.q0.setText(this.l);
                    } else if (dialogUpdateScript.c0) {
                        dialogUpdateScript.q0.setText(R.string.install_fail);
                    } else {
                        dialogUpdateScript.q0.setText(R.string.update_fail);
                    }
                    dialogUpdateScript.w0 = true;
                    dialogUpdateScript.k0.setVisibility(4);
                    dialogUpdateScript.n0.setVisibility(4);
                    dialogUpdateScript.q0.setVisibility(0);
                    if (list.size() > 1) {
                        dialogUpdateScript.s0.setVisibility(0);
                    } else {
                        dialogUpdateScript.s0.setVisibility(8);
                    }
                    dialogUpdateScript.t0.setEnabled(true);
                    dialogUpdateScript.t0.setText(R.string.retry);
                    dialogUpdateScript.setCanceledOnTouchOutside(true);
                    return;
                }
                String h1 = MainUtil.h1(dialogUpdateScript.o0);
                dialogUpdateScript.m0.setText(MainUtil.i3(h1, h1));
                dialogUpdateScript.n0.setProgress(100.0f);
                dialogUpdateScript.n0.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogUpdateScript.DialogTask.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogUpdateScript.B(DialogUpdateScript.this);
                    }
                });
                return;
            }
            dialogUpdateScript.dismiss();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r3v2, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
    public DialogUpdateScript(Activity activity, List list, MainItem.ChildItem childItem, String str, DialogEditUrl.EditUrlListener editUrlListener) {
        super(activity);
        this.a0 = getContext();
        this.b0 = editUrlListener;
        MainItem.ChildItem childItem2 = childItem;
        if (list == 0) {
            if (childItem == null) {
                childItem2 = childItem;
                if (!TextUtils.isEmpty(str)) {
                    ?? obj = new Object();
                    obj.g = str;
                    obj.h = MainUtil.Z3(this.a0, str);
                    this.c0 = true;
                    childItem2 = obj;
                }
            }
            if (childItem2 != null) {
                list = new ArrayList();
                list.add(childItem2);
            }
        }
        this.d0 = list;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogUpdateScript.1
            @Override // java.lang.Runnable
            public final void run() {
                final DialogUpdateScript dialogUpdateScript = DialogUpdateScript.this;
                Context context = dialogUpdateScript.a0;
                if (context != null) {
                    int i = R.id.item_frame_view;
                    int i2 = R.id.item_info_view;
                    int i3 = R.id.item_count_view;
                    MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
                    RelativeLayout relativeLayout = new RelativeLayout(context);
                    int i4 = MainApp.E1;
                    relativeLayout.setPadding(i4, i4, i4, i4);
                    q.addView(relativeLayout, -1, -2);
                    MyLineRelative myLineRelative = new MyLineRelative(context);
                    myLineRelative.setId(i);
                    myLineRelative.setPadding(0, 0, 0, MainApp.E1);
                    myLineRelative.b(MainApp.E1);
                    myLineRelative.setVisibility(8);
                    relativeLayout.addView(myLineRelative, -1, -2);
                    AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
                    appCompatTextView.setId(i3);
                    appCompatTextView.setTextDirection(3);
                    appCompatTextView.setTextSize(1, 16.0f);
                    appCompatTextView.setVisibility(4);
                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
                    layoutParams.addRule(21);
                    myLineRelative.addView(appCompatTextView, layoutParams);
                    AppCompatTextView j = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
                    RelativeLayout.LayoutParams h = androidx.work.impl.workers.a.h(-1, -2, 16, i3);
                    h.setMarginEnd(MainApp.E1);
                    myLineRelative.addView(j, h);
                    AppCompatTextView appCompatTextView2 = new AppCompatTextView(context, null);
                    appCompatTextView2.setTextDirection(3);
                    appCompatTextView2.setTextSize(1, 16.0f);
                    appCompatTextView2.setVisibility(8);
                    RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
                    layoutParams2.addRule(8, i);
                    layoutParams2.addRule(21);
                    layoutParams2.bottomMargin = MainApp.E1;
                    relativeLayout.addView(appCompatTextView2, layoutParams2);
                    RelativeLayout relativeLayout2 = new RelativeLayout(context);
                    relativeLayout2.setVisibility(8);
                    RelativeLayout.LayoutParams h2 = androidx.work.impl.workers.a.h(-1, -2, 3, i);
                    h2.topMargin = MainApp.E1;
                    relativeLayout.addView(relativeLayout2, h2);
                    FrameLayout frameLayout = new FrameLayout(context);
                    frameLayout.setId(i2);
                    relativeLayout2.addView(frameLayout, -1, -2);
                    AppCompatTextView j2 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
                    j2.setText(R.string.size);
                    frameLayout.addView(j2, -2, -2);
                    AppCompatTextView j3 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
                    FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-2, -2);
                    layoutParams3.gravity = 8388613;
                    frameLayout.addView(j3, layoutParams3);
                    int G = (int) MainUtil.G(context, 12.0f);
                    MyProgressBar myProgressBar = new MyProgressBar(context);
                    RelativeLayout.LayoutParams h3 = androidx.work.impl.workers.a.h(-1, G, 3, i2);
                    h3.topMargin = MainApp.F1;
                    relativeLayout2.addView(myProgressBar, h3);
                    AppCompatTextView appCompatTextView3 = new AppCompatTextView(context, null);
                    appCompatTextView3.setGravity(1);
                    appCompatTextView3.setLineSpacing(MainApp.F1, 1.0f);
                    appCompatTextView3.setTextSize(1, 16.0f);
                    appCompatTextView3.setVisibility(8);
                    RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-2, -2);
                    layoutParams4.addRule(13);
                    relativeLayout2.addView(appCompatTextView3, layoutParams4);
                    MyCoverView myCoverView = new MyCoverView(context);
                    myCoverView.setVisibility(8);
                    int i5 = MainApp.g1;
                    RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(i5, i5);
                    layoutParams5.addRule(13);
                    relativeLayout.addView(myCoverView, layoutParams5);
                    MyLineLinear myLineLinear = new MyLineLinear(context);
                    myLineLinear.setBaselineAligned(false);
                    myLineLinear.setOrientation(0);
                    myLineLinear.setLinePad(MainApp.E1);
                    myLineLinear.setLineUp(true);
                    MyLineText s = com.google.android.gms.internal.mlkit_vision_text_common.a.s(q, myLineLinear, -1, MainApp.g1, context);
                    s.setGravity(17);
                    s.setTextSize(1, 16.0f);
                    s.setText(R.string.skip);
                    s.s(context);
                    s.setVisibility(8);
                    LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(0, -1);
                    layoutParams6.weight = 1.0f;
                    AppCompatTextView l = com.google.android.gms.internal.mlkit_vision_text_common.a.l(myLineLinear, s, layoutParams6, context, null);
                    l.setGravity(17);
                    l.setTextSize(1, 16.0f);
                    LinearLayout.LayoutParams e = com.google.android.gms.internal.mlkit_vision_text_common.a.e(l, R.string.cancel, 0, -1);
                    e.weight = 1.0f;
                    myLineLinear.addView(l, e);
                    dialogUpdateScript.e0 = q;
                    dialogUpdateScript.f0 = myLineRelative;
                    dialogUpdateScript.g0 = j;
                    dialogUpdateScript.h0 = appCompatTextView2;
                    dialogUpdateScript.i0 = appCompatTextView;
                    dialogUpdateScript.j0 = relativeLayout2;
                    dialogUpdateScript.k0 = frameLayout;
                    dialogUpdateScript.l0 = j2;
                    dialogUpdateScript.m0 = j3;
                    dialogUpdateScript.n0 = myProgressBar;
                    dialogUpdateScript.q0 = appCompatTextView3;
                    dialogUpdateScript.r0 = myCoverView;
                    dialogUpdateScript.s0 = s;
                    dialogUpdateScript.t0 = l;
                    Handler handler2 = dialogUpdateScript.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogUpdateScript.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            final DialogUpdateScript dialogUpdateScript2 = DialogUpdateScript.this;
                            if (dialogUpdateScript2.e0 != null && dialogUpdateScript2.a0 != null) {
                                if (MainApp.K1) {
                                    dialogUpdateScript2.g0.setTextColor(-328966);
                                    dialogUpdateScript2.h0.setTextColor(-328966);
                                    dialogUpdateScript2.l0.setTextColor(-328966);
                                    dialogUpdateScript2.m0.setTextColor(-328966);
                                    dialogUpdateScript2.q0.setTextColor(-328966);
                                    dialogUpdateScript2.s0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogUpdateScript2.s0.setTextColor(-328966);
                                    dialogUpdateScript2.t0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogUpdateScript2.t0.setTextColor(-328966);
                                } else {
                                    dialogUpdateScript2.g0.setTextColor(-16777216);
                                    dialogUpdateScript2.h0.setTextColor(-16777216);
                                    dialogUpdateScript2.l0.setTextColor(-16777216);
                                    dialogUpdateScript2.m0.setTextColor(-16777216);
                                    dialogUpdateScript2.q0.setTextColor(-16777216);
                                    dialogUpdateScript2.s0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogUpdateScript2.s0.setTextColor(-14784824);
                                    dialogUpdateScript2.t0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogUpdateScript2.t0.setTextColor(-14784824);
                                }
                                dialogUpdateScript2.s0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogUpdateScript.3
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        DialogUpdateScript dialogUpdateScript3 = DialogUpdateScript.this;
                                        MyLineText myLineText = dialogUpdateScript3.s0;
                                        if (myLineText == null || dialogUpdateScript3.x0) {
                                            return;
                                        }
                                        dialogUpdateScript3.x0 = true;
                                        myLineText.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogUpdateScript.3.1
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                                                DialogUpdateScript.B(DialogUpdateScript.this);
                                                DialogUpdateScript.this.x0 = false;
                                            }
                                        });
                                    }
                                });
                                dialogUpdateScript2.t0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogUpdateScript.4
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        DialogUpdateScript dialogUpdateScript3 = DialogUpdateScript.this;
                                        AppCompatTextView appCompatTextView4 = dialogUpdateScript3.t0;
                                        if (appCompatTextView4 == null || dialogUpdateScript3.x0) {
                                            return;
                                        }
                                        dialogUpdateScript3.x0 = true;
                                        appCompatTextView4.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogUpdateScript.4.1
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                DialogUpdateScript dialogUpdateScript4 = DialogUpdateScript.this;
                                                if (dialogUpdateScript4.t0 == null) {
                                                    return;
                                                }
                                                if (dialogUpdateScript4.w0) {
                                                    dialogUpdateScript4.w0 = false;
                                                    DialogTask dialogTask = dialogUpdateScript4.u0;
                                                    if (dialogTask != null) {
                                                        dialogTask.f12839c = true;
                                                    }
                                                    dialogUpdateScript4.u0 = null;
                                                    DialogTask dialogTask2 = new DialogTask(dialogUpdateScript4);
                                                    dialogUpdateScript4.u0 = dialogTask2;
                                                    dialogTask2.b(dialogUpdateScript4.a0);
                                                } else {
                                                    dialogUpdateScript4.E();
                                                }
                                                dialogUpdateScript4.x0 = false;
                                            }
                                        });
                                    }
                                });
                                DialogTask dialogTask = dialogUpdateScript2.u0;
                                if (dialogTask != null) {
                                    dialogTask.f12839c = true;
                                }
                                dialogUpdateScript2.u0 = null;
                                DialogTask dialogTask2 = new DialogTask(dialogUpdateScript2);
                                dialogUpdateScript2.u0 = dialogTask2;
                                dialogTask2.b(dialogUpdateScript2.a0);
                                dialogUpdateScript2.g(dialogUpdateScript2.e0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogUpdateScript.5
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view) {
                                        DialogUpdateScript dialogUpdateScript3 = DialogUpdateScript.this;
                                        if (dialogUpdateScript3.e0 == null) {
                                            return;
                                        }
                                        dialogUpdateScript3.show();
                                    }
                                });
                            }
                        }
                    });
                }
            }
        });
    }

    public static void B(DialogUpdateScript dialogUpdateScript) {
        if (dialogUpdateScript.a0 == null) {
            return;
        }
        int i = dialogUpdateScript.v0 + 1;
        dialogUpdateScript.v0 = i;
        List list = dialogUpdateScript.d0;
        if (list != null && i < list.size()) {
            DialogTask dialogTask = dialogUpdateScript.u0;
            if (dialogTask != null) {
                dialogTask.f12839c = true;
            }
            dialogUpdateScript.u0 = null;
            DialogTask dialogTask2 = new DialogTask(dialogUpdateScript);
            dialogUpdateScript.u0 = dialogTask2;
            dialogTask2.b(dialogUpdateScript.a0);
            return;
        }
        MainUtil.e8(dialogUpdateScript.a0, R.string.success);
        dialogUpdateScript.dismiss();
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x00a6, code lost:
    
        r1 = r4.toString();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String C(com.mycompany.app.dialog.DialogUpdateScript r13, android.content.Context r14, java.lang.String r15) {
        /*
            r0 = 1
            r13.F(r0)
            r1 = 0
            if (r14 != 0) goto L8
            goto L10
        L8:
            java.net.HttpURLConnection r14 = com.mycompany.app.main.MainUtil.m1(r14, r15)
            r13.z0 = r14
            if (r14 != 0) goto L11
        L10:
            return r1
        L11:
            r14.setDoInput(r0)     // Catch: java.lang.Exception -> Laa
            java.net.HttpURLConnection r14 = r13.z0     // Catch: java.lang.Exception -> Laa
            r14.connect()     // Catch: java.lang.Exception -> Laa
            int r14 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Exception -> Laa
            r15 = 24
            if (r14 < r15) goto L28
            java.net.HttpURLConnection r14 = r13.z0     // Catch: java.lang.Exception -> Laa
            long r14 = r14.getContentLengthLong()     // Catch: java.lang.Exception -> Laa
            r13.o0 = r14     // Catch: java.lang.Exception -> Laa
            goto L31
        L28:
            java.net.HttpURLConnection r14 = r13.z0     // Catch: java.lang.Exception -> Laa
            int r14 = r14.getContentLength()     // Catch: java.lang.Exception -> Laa
            long r14 = (long) r14     // Catch: java.lang.Exception -> Laa
            r13.o0 = r14     // Catch: java.lang.Exception -> Laa
        L31:
            long r14 = r13.o0     // Catch: java.lang.Exception -> Laa
            r2 = 0
            int r14 = (r14 > r2 ? 1 : (r14 == r2 ? 0 : -1))
            if (r14 >= 0) goto L3b
            r13.o0 = r2     // Catch: java.lang.Exception -> Laa
        L3b:
            r13.p0 = r2     // Catch: java.lang.Exception -> Laa
            java.net.HttpURLConnection r14 = r13.z0     // Catch: java.lang.Exception -> Laa
            java.io.InputStream r14 = r14.getInputStream()     // Catch: java.lang.Exception -> Laa
            r13.A0 = r14     // Catch: java.lang.Exception -> Laa
            com.mycompany.app.script.UnicodeReader r14 = new com.mycompany.app.script.UnicodeReader     // Catch: java.lang.Exception -> Laa
            java.io.InputStream r15 = r13.A0     // Catch: java.lang.Exception -> Laa
            java.net.HttpURLConnection r4 = r13.z0     // Catch: java.lang.Exception -> Laa
            java.lang.String r4 = r4.getContentEncoding()     // Catch: java.lang.Exception -> Laa
            r14.<init>(r15, r4)     // Catch: java.lang.Exception -> Laa
            r13.B0 = r14     // Catch: java.lang.Exception -> Laa
            r14 = 4096(0x1000, float:5.74E-42)
            char[] r15 = new char[r14]     // Catch: java.lang.Exception -> Laa
            r4 = r1
            r5 = r2
        L5a:
            boolean r7 = r13.D()     // Catch: java.lang.Exception -> Laa
            if (r7 != 0) goto La4
            com.mycompany.app.script.UnicodeReader r7 = r13.B0     // Catch: java.lang.Exception -> Laa
            java.io.InputStreamReader r7 = r7.f17552c     // Catch: java.lang.Exception -> Laa
            r8 = 0
            int r7 = r7.read(r15, r8, r14)     // Catch: java.lang.Exception -> Laa
            r9 = -1
            if (r7 == r9) goto La4
            boolean r9 = r13.D()     // Catch: java.lang.Exception -> Laa
            if (r9 == 0) goto L73
            goto La4
        L73:
            if (r7 <= 0) goto L7f
            if (r4 != 0) goto L7c
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> Laa
            r4.<init>()     // Catch: java.lang.Exception -> Laa
        L7c:
            r4.append(r15, r8, r7)     // Catch: java.lang.Exception -> Laa
        L7f:
            long r8 = r13.p0     // Catch: java.lang.Exception -> Laa
            long r10 = (long) r7     // Catch: java.lang.Exception -> Laa
            long r8 = r8 + r10
            r13.p0 = r8     // Catch: java.lang.Exception -> Laa
            long r7 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Exception -> Laa
            int r9 = (r5 > r2 ? 1 : (r5 == r2 ? 0 : -1))
            if (r9 == 0) goto L95
            long r9 = r7 - r5
            r11 = 500(0x1f4, double:2.47E-321)
            int r9 = (r9 > r11 ? 1 : (r9 == r11 ? 0 : -1))
            if (r9 <= 0) goto L5a
        L95:
            com.mycompany.app.view.MyProgressBar r5 = r13.n0     // Catch: java.lang.Exception -> Laa
            if (r5 != 0) goto L9a
            goto La4
        L9a:
            com.mycompany.app.dialog.DialogUpdateScript$6 r6 = new com.mycompany.app.dialog.DialogUpdateScript$6     // Catch: java.lang.Exception -> Laa
            r6.<init>()     // Catch: java.lang.Exception -> Laa
            r5.post(r6)     // Catch: java.lang.Exception -> Laa
            r5 = r7
            goto L5a
        La4:
            if (r4 == 0) goto Laa
            java.lang.String r1 = r4.toString()     // Catch: java.lang.Exception -> Laa
        Laa:
            r13.F(r0)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogUpdateScript.C(com.mycompany.app.dialog.DialogUpdateScript, android.content.Context, java.lang.String):java.lang.String");
    }

    public final boolean D() {
        if (!this.y0) {
            DialogTask dialogTask = this.u0;
            if (dialogTask != null && dialogTask.f12839c) {
                return true;
            }
            return false;
        }
        return true;
    }

    public final void E() {
        int i;
        AppCompatTextView appCompatTextView = this.t0;
        if (appCompatTextView != null && this.u0 != null) {
            appCompatTextView.setEnabled(false);
            this.t0.setText(R.string.canceling);
            AppCompatTextView appCompatTextView2 = this.t0;
            if (MainApp.K1) {
                i = -8355712;
            } else {
                i = -2434342;
            }
            appCompatTextView2.setTextColor(i);
            this.y0 = true;
            F(false);
            DialogTask dialogTask = this.u0;
            if (dialogTask != null) {
                dialogTask.f12839c = true;
            }
            this.u0 = null;
            return;
        }
        dismiss();
    }

    public final void F(boolean z) {
        UnicodeReader unicodeReader = this.B0;
        if (unicodeReader != null) {
            try {
                unicodeReader.close();
            } catch (Exception unused) {
            }
            this.B0 = null;
        }
        InputStream inputStream = this.A0;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (Exception unused2) {
            }
            this.A0 = null;
        }
        if (z) {
            HttpURLConnection httpURLConnection = this.z0;
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
                this.z0 = null;
                return;
            }
            return;
        }
        final HttpURLConnection httpURLConnection2 = this.z0;
        this.z0 = null;
        if (httpURLConnection2 == null) {
            return;
        }
        s(new Runnable() { // from class: com.mycompany.app.dialog.DialogUpdateScript.7
            @Override // java.lang.Runnable
            public final void run() {
                httpURLConnection2.disconnect();
            }
        });
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void cancel() {
        E();
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.a0 == null) {
            return;
        }
        F(false);
        DialogTask dialogTask = this.u0;
        if (dialogTask != null) {
            dialogTask.f12839c = true;
        }
        this.u0 = null;
        DialogEditUrl.EditUrlListener editUrlListener = this.b0;
        if (editUrlListener != null) {
            long j = this.C0;
            if (j > 0) {
                editUrlListener.a(j, null, null);
            }
            this.b0 = null;
        }
        MyDialogLinear myDialogLinear = this.e0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.e0 = null;
        }
        MyLineRelative myLineRelative = this.f0;
        if (myLineRelative != null) {
            myLineRelative.e();
            this.f0 = null;
        }
        MyProgressBar myProgressBar = this.n0;
        if (myProgressBar != null) {
            myProgressBar.f();
            this.n0 = null;
        }
        MyCoverView myCoverView = this.r0;
        if (myCoverView != null) {
            myCoverView.i();
            this.r0 = null;
        }
        MyLineText myLineText = this.s0;
        if (myLineText != null) {
            myLineText.u();
            this.s0 = null;
        }
        this.a0 = null;
        this.d0 = null;
        this.g0 = null;
        this.h0 = null;
        this.i0 = null;
        this.j0 = null;
        this.k0 = null;
        this.l0 = null;
        this.m0 = null;
        this.q0 = null;
        this.t0 = null;
        this.D0 = null;
        this.E0 = null;
        super.dismiss();
    }
}
