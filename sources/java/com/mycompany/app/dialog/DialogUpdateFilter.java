package com.mycompany.app.dialog;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.webkit.URLUtil;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.async.MyAsyncTask;
import com.mycompany.app.data.book.DataBookFilter;
import com.mycompany.app.db.book.DbBookFilter;
import com.mycompany.app.dialog.DialogSetFull;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyCoverView;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyLineLinear;
import com.mycompany.app.view.MyLineRelative;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyProgressBar;
import java.io.File;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class DialogUpdateFilter extends MyDialogBottom {
    public InputStream A0;
    public OutputStream B0;
    public boolean C0;
    public Context a0;
    public DialogSetFull.DialogApplyListener b0;
    public List c0;
    public MyDialogLinear d0;
    public MyLineRelative e0;
    public AppCompatTextView f0;
    public AppCompatTextView g0;
    public AppCompatTextView h0;
    public RelativeLayout i0;
    public FrameLayout j0;
    public AppCompatTextView k0;
    public AppCompatTextView l0;
    public MyProgressBar m0;
    public long n0;
    public long o0;
    public AppCompatTextView p0;
    public MyCoverView q0;
    public MyLineText r0;
    public AppCompatTextView s0;
    public DialogTask t0;
    public int u0;
    public boolean v0;
    public boolean w0;
    public boolean x0;
    public boolean y0;
    public HttpURLConnection z0;

    /* loaded from: classes3.dex */
    public static class DialogTask extends MyAsyncTask {
        public final WeakReference e;
        public final List f;
        public final String g;
        public final String h;
        public boolean i;

        public DialogTask(DialogUpdateFilter dialogUpdateFilter) {
            MainItem.ChildItem childItem;
            WeakReference weakReference = new WeakReference(dialogUpdateFilter);
            this.e = weakReference;
            DialogUpdateFilter dialogUpdateFilter2 = (DialogUpdateFilter) weakReference.get();
            if (dialogUpdateFilter2 != null) {
                List list = dialogUpdateFilter2.c0;
                this.f = list;
                int i = dialogUpdateFilter2.u0;
                if (list != null && i < list.size() && (childItem = (MainItem.ChildItem) list.get(i)) != null) {
                    this.g = childItem.g;
                    String str = childItem.h;
                    this.h = str;
                    dialogUpdateFilter2.n0 = 0L;
                    dialogUpdateFilter2.o0 = 0L;
                    String h3 = MainUtil.h3(i + 1, list.size());
                    dialogUpdateFilter2.f0.setText(str);
                    dialogUpdateFilter2.g0.setText(h3);
                    dialogUpdateFilter2.h0.setText(h3);
                    dialogUpdateFilter2.l0.setText(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                    dialogUpdateFilter2.m0.setMax(100);
                    dialogUpdateFilter2.m0.setProgress(0.0f);
                    dialogUpdateFilter2.e0.setVisibility(0);
                    dialogUpdateFilter2.g0.setVisibility(0);
                    dialogUpdateFilter2.i0.setVisibility(0);
                    dialogUpdateFilter2.j0.setVisibility(0);
                    dialogUpdateFilter2.m0.setVisibility(0);
                    dialogUpdateFilter2.p0.setVisibility(8);
                    dialogUpdateFilter2.x0 = false;
                    dialogUpdateFilter2.v0 = false;
                    dialogUpdateFilter2.r0.setVisibility(8);
                    dialogUpdateFilter2.s0.setEnabled(true);
                    dialogUpdateFilter2.s0.setText(R.string.cancel);
                    dialogUpdateFilter2.setCanceledOnTouchOutside(false);
                }
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void a() {
            DialogUpdateFilter dialogUpdateFilter;
            List list;
            WeakReference weakReference = this.e;
            if (weakReference != null && (dialogUpdateFilter = (DialogUpdateFilter) weakReference.get()) != null && !this.f12839c && (list = this.f) != null && !list.isEmpty()) {
                String str = this.g;
                if (URLUtil.isNetworkUrl(str)) {
                    boolean E = dialogUpdateFilter.E(dialogUpdateFilter.a0, str, str);
                    this.i = E;
                    if (E) {
                        long max = Math.max(dialogUpdateFilter.n0, dialogUpdateFilter.o0);
                        dialogUpdateFilter.n0 = max;
                        dialogUpdateFilter.o0 = max;
                    }
                } else {
                    this.i = true;
                    dialogUpdateFilter.n0 = 1L;
                    dialogUpdateFilter.o0 = 1L;
                }
                if (this.i) {
                    MainItem.ChildItem i = DbBookFilter.i(dialogUpdateFilter.a0, str, this.h);
                    DataBookFilter k = DataBookFilter.k(dialogUpdateFilter.a0);
                    List list2 = k.b;
                    if (list2 != null && list2.size() > 0) {
                        k.j(i);
                    }
                    dialogUpdateFilter.y0 = true;
                }
                Context context = dialogUpdateFilter.a0;
                if (dialogUpdateFilter.u0 == 0) {
                    String a4 = MainUtil.a4(context, "https://raw.githubusercontent.com/SoulBrowser/SoulBrowser/master/Image/test.txt");
                    if (!TextUtils.isEmpty(a4)) {
                        File file = new File(a4);
                        if (!file.exists() || System.currentTimeMillis() - file.lastModified() >= 3600000) {
                            dialogUpdateFilter.E(context, "https://raw.githubusercontent.com/SoulBrowser/SoulBrowser/master/Image/test.txt", "https://raw.githubusercontent.com/SoulBrowser/SoulBrowser/master/Image/test.txt");
                        }
                    }
                }
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            DialogUpdateFilter dialogUpdateFilter;
            WeakReference weakReference = this.e;
            if (weakReference == null || (dialogUpdateFilter = (DialogUpdateFilter) weakReference.get()) == null) {
                return;
            }
            dialogUpdateFilter.t0 = null;
            MainUtil.e8(dialogUpdateFilter.a0, R.string.cancelled);
            dialogUpdateFilter.dismiss();
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            final DialogUpdateFilter dialogUpdateFilter;
            WeakReference weakReference = this.e;
            if (weakReference == null || (dialogUpdateFilter = (DialogUpdateFilter) weakReference.get()) == null) {
                return;
            }
            dialogUpdateFilter.t0 = null;
            if (dialogUpdateFilter.C()) {
                MainUtil.e8(dialogUpdateFilter.a0, R.string.cancelled);
                dialogUpdateFilter.dismiss();
                return;
            }
            List list = this.f;
            if (list != null && !list.isEmpty()) {
                if (!this.i) {
                    dialogUpdateFilter.p0.setText(R.string.update_fail);
                    dialogUpdateFilter.v0 = true;
                    dialogUpdateFilter.j0.setVisibility(4);
                    dialogUpdateFilter.m0.setVisibility(4);
                    dialogUpdateFilter.p0.setVisibility(0);
                    if (list.size() > 1) {
                        dialogUpdateFilter.r0.setVisibility(0);
                    } else {
                        dialogUpdateFilter.r0.setVisibility(8);
                    }
                    dialogUpdateFilter.s0.setEnabled(true);
                    dialogUpdateFilter.s0.setText(R.string.retry);
                    dialogUpdateFilter.setCanceledOnTouchOutside(true);
                    return;
                }
                String h1 = MainUtil.h1(dialogUpdateFilter.n0);
                dialogUpdateFilter.l0.setText(MainUtil.i3(h1, h1));
                dialogUpdateFilter.m0.setProgress(100.0f);
                dialogUpdateFilter.m0.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogUpdateFilter.DialogTask.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogUpdateFilter.B(DialogUpdateFilter.this);
                    }
                });
                return;
            }
            dialogUpdateFilter.dismiss();
        }
    }

    /* JADX WARN: Type inference failed for: r1v4, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
    public DialogUpdateFilter(Activity activity, List list, String str, String str2, DialogSetFull.DialogApplyListener dialogApplyListener) {
        super(activity);
        this.a0 = getContext();
        this.b0 = dialogApplyListener;
        List list2 = list;
        if (!TextUtils.isEmpty(str)) {
            ?? obj = new Object();
            obj.g = str;
            obj.h = str2;
            ArrayList arrayList = new ArrayList();
            arrayList.add(obj);
            list2 = arrayList;
        }
        this.c0 = list2;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogUpdateFilter.1
            @Override // java.lang.Runnable
            public final void run() {
                final DialogUpdateFilter dialogUpdateFilter = DialogUpdateFilter.this;
                Context context = dialogUpdateFilter.a0;
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
                    dialogUpdateFilter.d0 = q;
                    dialogUpdateFilter.e0 = myLineRelative;
                    dialogUpdateFilter.f0 = j;
                    dialogUpdateFilter.g0 = appCompatTextView2;
                    dialogUpdateFilter.h0 = appCompatTextView;
                    dialogUpdateFilter.i0 = relativeLayout2;
                    dialogUpdateFilter.j0 = frameLayout;
                    dialogUpdateFilter.k0 = j2;
                    dialogUpdateFilter.l0 = j3;
                    dialogUpdateFilter.m0 = myProgressBar;
                    dialogUpdateFilter.p0 = appCompatTextView3;
                    dialogUpdateFilter.q0 = myCoverView;
                    dialogUpdateFilter.r0 = s;
                    dialogUpdateFilter.s0 = l;
                    Handler handler2 = dialogUpdateFilter.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogUpdateFilter.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            final DialogUpdateFilter dialogUpdateFilter2 = DialogUpdateFilter.this;
                            if (dialogUpdateFilter2.d0 != null && dialogUpdateFilter2.a0 != null) {
                                if (MainApp.K1) {
                                    dialogUpdateFilter2.f0.setTextColor(-328966);
                                    dialogUpdateFilter2.g0.setTextColor(-328966);
                                    dialogUpdateFilter2.k0.setTextColor(-328966);
                                    dialogUpdateFilter2.l0.setTextColor(-328966);
                                    dialogUpdateFilter2.p0.setTextColor(-328966);
                                    dialogUpdateFilter2.r0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogUpdateFilter2.r0.setTextColor(-328966);
                                    dialogUpdateFilter2.s0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogUpdateFilter2.s0.setTextColor(-328966);
                                } else {
                                    dialogUpdateFilter2.f0.setTextColor(-16777216);
                                    dialogUpdateFilter2.g0.setTextColor(-16777216);
                                    dialogUpdateFilter2.k0.setTextColor(-16777216);
                                    dialogUpdateFilter2.l0.setTextColor(-16777216);
                                    dialogUpdateFilter2.p0.setTextColor(-16777216);
                                    dialogUpdateFilter2.r0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogUpdateFilter2.r0.setTextColor(-14784824);
                                    dialogUpdateFilter2.s0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogUpdateFilter2.s0.setTextColor(-14784824);
                                }
                                dialogUpdateFilter2.r0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogUpdateFilter.3
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        DialogUpdateFilter dialogUpdateFilter3 = DialogUpdateFilter.this;
                                        MyLineText myLineText = dialogUpdateFilter3.r0;
                                        if (myLineText == null || dialogUpdateFilter3.w0) {
                                            return;
                                        }
                                        dialogUpdateFilter3.w0 = true;
                                        myLineText.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogUpdateFilter.3.1
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                                                DialogUpdateFilter.B(DialogUpdateFilter.this);
                                                DialogUpdateFilter.this.w0 = false;
                                            }
                                        });
                                    }
                                });
                                dialogUpdateFilter2.s0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogUpdateFilter.4
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        DialogUpdateFilter dialogUpdateFilter3 = DialogUpdateFilter.this;
                                        AppCompatTextView appCompatTextView4 = dialogUpdateFilter3.s0;
                                        if (appCompatTextView4 == null || dialogUpdateFilter3.w0) {
                                            return;
                                        }
                                        dialogUpdateFilter3.w0 = true;
                                        appCompatTextView4.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogUpdateFilter.4.1
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                DialogUpdateFilter dialogUpdateFilter4 = DialogUpdateFilter.this;
                                                if (dialogUpdateFilter4.s0 == null) {
                                                    return;
                                                }
                                                if (dialogUpdateFilter4.v0) {
                                                    dialogUpdateFilter4.v0 = false;
                                                    DialogTask dialogTask = dialogUpdateFilter4.t0;
                                                    if (dialogTask != null) {
                                                        dialogTask.f12839c = true;
                                                    }
                                                    dialogUpdateFilter4.t0 = null;
                                                    DialogTask dialogTask2 = new DialogTask(dialogUpdateFilter4);
                                                    dialogUpdateFilter4.t0 = dialogTask2;
                                                    dialogTask2.b(dialogUpdateFilter4.a0);
                                                } else {
                                                    dialogUpdateFilter4.D();
                                                }
                                                dialogUpdateFilter4.w0 = false;
                                            }
                                        });
                                    }
                                });
                                DialogTask dialogTask = dialogUpdateFilter2.t0;
                                if (dialogTask != null) {
                                    dialogTask.f12839c = true;
                                }
                                dialogUpdateFilter2.t0 = null;
                                DialogTask dialogTask2 = new DialogTask(dialogUpdateFilter2);
                                dialogUpdateFilter2.t0 = dialogTask2;
                                dialogTask2.b(dialogUpdateFilter2.a0);
                                dialogUpdateFilter2.g(dialogUpdateFilter2.d0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogUpdateFilter.5
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view) {
                                        DialogUpdateFilter dialogUpdateFilter3 = DialogUpdateFilter.this;
                                        if (dialogUpdateFilter3.d0 == null) {
                                            return;
                                        }
                                        dialogUpdateFilter3.show();
                                    }
                                });
                            }
                        }
                    });
                }
            }
        });
    }

    public static void B(DialogUpdateFilter dialogUpdateFilter) {
        if (dialogUpdateFilter.a0 == null) {
            return;
        }
        int i = dialogUpdateFilter.u0 + 1;
        dialogUpdateFilter.u0 = i;
        List list = dialogUpdateFilter.c0;
        if (list != null && i < list.size()) {
            DialogTask dialogTask = dialogUpdateFilter.t0;
            if (dialogTask != null) {
                dialogTask.f12839c = true;
            }
            dialogUpdateFilter.t0 = null;
            DialogTask dialogTask2 = new DialogTask(dialogUpdateFilter);
            dialogUpdateFilter.t0 = dialogTask2;
            dialogTask2.b(dialogUpdateFilter.a0);
            return;
        }
        MainUtil.e8(dialogUpdateFilter.a0, R.string.success);
        dialogUpdateFilter.dismiss();
    }

    public final boolean C() {
        if (!this.x0) {
            DialogTask dialogTask = this.t0;
            if (dialogTask != null && dialogTask.f12839c) {
                return true;
            }
            return false;
        }
        return true;
    }

    public final void D() {
        int i;
        AppCompatTextView appCompatTextView = this.s0;
        if (appCompatTextView != null && this.t0 != null) {
            appCompatTextView.setEnabled(false);
            this.s0.setText(R.string.canceling);
            AppCompatTextView appCompatTextView2 = this.s0;
            if (MainApp.K1) {
                i = -8355712;
            } else {
                i = -2434342;
            }
            appCompatTextView2.setTextColor(i);
            this.x0 = true;
            F(false);
            DialogTask dialogTask = this.t0;
            if (dialogTask != null) {
                dialogTask.f12839c = true;
            }
            this.t0 = null;
            return;
        }
        dismiss();
    }

    /* JADX WARN: Code restructure failed: missing block: B:240:0x015a, code lost:
    
        if (r15 == false) goto L54;
     */
    /* JADX WARN: Removed duplicated region for block: B:145:0x0313  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0325  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x01dc A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:188:0x01d7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:241:0x0157 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:245:0x0152 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01ea  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0303  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0304 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean E(android.content.Context r30, java.lang.String r31, java.lang.String r32) {
        /*
            Method dump skipped, instructions count: 834
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogUpdateFilter.E(android.content.Context, java.lang.String, java.lang.String):boolean");
    }

    public final void F(boolean z) {
        OutputStream outputStream;
        if (!this.C0 && (outputStream = this.B0) != null) {
            try {
                outputStream.close();
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
        s(new Runnable() { // from class: com.mycompany.app.dialog.DialogUpdateFilter.7
            @Override // java.lang.Runnable
            public final void run() {
                httpURLConnection2.disconnect();
            }
        });
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void cancel() {
        D();
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.a0 == null) {
            return;
        }
        F(false);
        DialogTask dialogTask = this.t0;
        if (dialogTask != null) {
            dialogTask.f12839c = true;
        }
        this.t0 = null;
        DialogSetFull.DialogApplyListener dialogApplyListener = this.b0;
        if (dialogApplyListener != null) {
            if (this.y0) {
                dialogApplyListener.a();
            }
            this.b0 = null;
        }
        MyDialogLinear myDialogLinear = this.d0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.d0 = null;
        }
        MyLineRelative myLineRelative = this.e0;
        if (myLineRelative != null) {
            myLineRelative.e();
            this.e0 = null;
        }
        MyProgressBar myProgressBar = this.m0;
        if (myProgressBar != null) {
            myProgressBar.f();
            this.m0 = null;
        }
        MyCoverView myCoverView = this.q0;
        if (myCoverView != null) {
            myCoverView.i();
            this.q0 = null;
        }
        MyLineText myLineText = this.r0;
        if (myLineText != null) {
            myLineText.u();
            this.r0 = null;
        }
        this.a0 = null;
        this.c0 = null;
        this.f0 = null;
        this.g0 = null;
        this.h0 = null;
        this.i0 = null;
        this.j0 = null;
        this.k0 = null;
        this.l0 = null;
        this.p0 = null;
        this.s0 = null;
        super.dismiss();
    }
}
