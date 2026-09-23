package com.mycompany.app.dialog;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Handler;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.widget.NestedScrollView;
import com.mycompany.app.async.MyAsyncTask;
import com.mycompany.app.db.book.DbBookWeb;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUri;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefPath;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyEditText;
import com.mycompany.app.view.MyLineFrame;
import com.mycompany.app.view.MyLineLinear;
import com.mycompany.app.view.MyLineRelative;
import com.mycompany.app.view.MyPopupAdapter;
import com.mycompany.app.view.MyPopupMenu;
import com.mycompany.app.view.MyRoundImage;
import java.io.BufferedWriter;
import java.io.ByteArrayOutputStream;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class DialogWebBookSave extends MyDialogBottom {
    public static final /* synthetic */ int z0 = 0;
    public MainActivity a0;
    public Context b0;
    public MyDialogLinear c0;
    public MyRoundImage d0;
    public AppCompatTextView e0;
    public MyLineLinear f0;
    public AppCompatTextView g0;
    public AppCompatTextView h0;
    public MyEditText i0;
    public MyLineRelative j0;
    public AppCompatTextView k0;
    public AppCompatTextView l0;
    public AppCompatTextView m0;
    public RelativeLayout n0;
    public String o0;
    public String p0;
    public String q0;
    public boolean r0;
    public DialogTask s0;
    public ArrayList t0;
    public boolean u0;
    public boolean v0;
    public ArrayList w0;
    public String x0;
    public MyPopupMenu y0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.dialog.DialogWebBookSave$9, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass9 implements Runnable {
        public AnonymousClass9() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            DialogWebBookSave dialogWebBookSave = DialogWebBookSave.this;
            if (dialogWebBookSave.b0 != null) {
                String e = MainUri.e();
                PrefSet.h(dialogWebBookSave.b0, e);
                dialogWebBookSave.x0 = MainUri.h(dialogWebBookSave.b0, e);
                Handler handler = dialogWebBookSave.i;
                if (handler == null) {
                    return;
                }
                handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebBookSave.9.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        int i;
                        DialogWebBookSave dialogWebBookSave2 = DialogWebBookSave.this;
                        AppCompatTextView appCompatTextView = dialogWebBookSave2.l0;
                        if (appCompatTextView == null) {
                            return;
                        }
                        appCompatTextView.setText(dialogWebBookSave2.x0);
                        AppCompatTextView appCompatTextView2 = dialogWebBookSave2.l0;
                        if (MainApp.K1) {
                            i = -328966;
                        } else {
                            i = -16777216;
                        }
                        appCompatTextView2.setTextColor(i);
                    }
                });
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class DialogTask extends MyAsyncTask {
        public final WeakReference e;
        public final String f;
        public boolean g;

        public DialogTask(DialogWebBookSave dialogWebBookSave, String str) {
            WeakReference weakReference = new WeakReference(dialogWebBookSave);
            this.e = weakReference;
            DialogWebBookSave dialogWebBookSave2 = (DialogWebBookSave) weakReference.get();
            if (dialogWebBookSave2 == null) {
                return;
            }
            this.f = str;
            dialogWebBookSave2.v0 = false;
            dialogWebBookSave2.t0 = null;
            dialogWebBookSave2.c0.e(0, 0, true, false);
            dialogWebBookSave2.i0.setEnabled(false);
            dialogWebBookSave2.j0.setEnabled(false);
            dialogWebBookSave2.m0.setEnabled(true);
            dialogWebBookSave2.m0.setText(R.string.cancel);
            dialogWebBookSave2.setCanceledOnTouchOutside(false);
        }

        /* JADX WARN: Removed duplicated region for block: B:36:0x007c A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:40:0x0075 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        @Override // com.mycompany.app.async.MyAsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a() {
            /*
                r8 = this;
                java.lang.ref.WeakReference r0 = r8.e
                if (r0 != 0) goto L6
                goto L82
            L6:
                java.lang.Object r0 = r0.get()
                com.mycompany.app.dialog.DialogWebBookSave r0 = (com.mycompany.app.dialog.DialogWebBookSave) r0
                if (r0 == 0) goto L82
                boolean r1 = r8.f12839c
                if (r1 == 0) goto L14
                goto L82
            L14:
                android.content.Context r1 = r0.b0
                r2 = 0
                if (r1 != 0) goto L1b
                goto L80
            L1b:
                java.lang.String r3 = "/"
                java.util.ArrayList r3 = r0.E(r3)     // Catch: java.lang.Exception -> L31
                r0.t0 = r3     // Catch: java.lang.Exception -> L31
                if (r3 == 0) goto L80
                boolean r3 = r3.isEmpty()     // Catch: java.lang.Exception -> L31
                if (r3 == 0) goto L2c
                goto L80
            L2c:
                java.util.ArrayList r3 = r0.t0     // Catch: java.lang.Exception -> L31
                r0.F(r3)     // Catch: java.lang.Exception -> L31
            L31:
                java.util.ArrayList r3 = r0.t0
                if (r3 == 0) goto L80
                boolean r3 = r3.isEmpty()
                if (r3 == 0) goto L3c
                goto L80
            L3c:
                java.lang.String r3 = com.mycompany.app.main.MainUri.e()
                r4 = 0
                java.lang.String r5 = r8.f
                com.mycompany.app.main.MainUri$UriItem r3 = com.mycompany.app.main.MainUri.c(r1, r3, r4, r5)
                if (r3 != 0) goto L4a
                goto L80
            L4a:
                android.content.ContentResolver r5 = r1.getContentResolver()     // Catch: java.lang.Exception -> L70
                android.net.Uri r3 = r3.b     // Catch: java.lang.Exception -> L70
                java.io.OutputStream r3 = r5.openOutputStream(r3)     // Catch: java.lang.Exception -> L70
                java.io.BufferedWriter r5 = new java.io.BufferedWriter     // Catch: java.lang.Exception -> L6e
                java.io.OutputStreamWriter r6 = new java.io.OutputStreamWriter     // Catch: java.lang.Exception -> L6e
                java.nio.charset.Charset r7 = java.nio.charset.StandardCharsets.UTF_8     // Catch: java.lang.Exception -> L6e
                r6.<init>(r3, r7)     // Catch: java.lang.Exception -> L6e
                r5.<init>(r6)     // Catch: java.lang.Exception -> L6e
                java.lang.String r4 = "<!DOCTYPE NETSCAPE-Bookmark-file-1>\n<!-- This is an automatically generated file.\n     It will be read and overwritten.\n     DO NOT EDIT! -->\n<META HTTP-EQUIV=\"Content-Type\" CONTENT=\"text/html; charset=UTF-8\">\n<TITLE>Bookmarks</TITLE>\n<H1>Bookmarks</H1>\n"
                r5.write(r4)     // Catch: java.lang.Exception -> L6c
                java.util.ArrayList r4 = r0.t0     // Catch: java.lang.Exception -> L6c
                boolean r0 = r0.I(r1, r5, r4, r2)     // Catch: java.lang.Exception -> L6c
                goto L73
            L6c:
                r4 = r3
                goto L71
            L6e:
                r5 = r4
                goto L6c
            L70:
                r5 = r4
            L71:
                r0 = r2
                r3 = r4
            L73:
                if (r5 == 0) goto L7a
                r5.close()     // Catch: java.lang.Exception -> L79
                goto L7a
            L79:
                r0 = r2
            L7a:
                if (r3 == 0) goto L7f
                r3.close()     // Catch: java.lang.Exception -> L80
            L7f:
                r2 = r0
            L80:
                r8.g = r2
            L82:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogWebBookSave.DialogTask.a():void");
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            DialogWebBookSave dialogWebBookSave;
            WeakReference weakReference = this.e;
            if (weakReference == null || (dialogWebBookSave = (DialogWebBookSave) weakReference.get()) == null) {
                return;
            }
            dialogWebBookSave.s0 = null;
            dialogWebBookSave.t0 = null;
            MainUtil.e8(dialogWebBookSave.b0, R.string.cancelled);
            dialogWebBookSave.dismiss();
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            DialogWebBookSave dialogWebBookSave;
            WeakReference weakReference = this.e;
            if (weakReference != null && (dialogWebBookSave = (DialogWebBookSave) weakReference.get()) != null) {
                dialogWebBookSave.s0 = null;
                if (dialogWebBookSave.G()) {
                    dialogWebBookSave.t0 = null;
                    MainUtil.e8(dialogWebBookSave.b0, R.string.cancelled);
                    dialogWebBookSave.dismiss();
                    return;
                }
                ArrayList arrayList = dialogWebBookSave.t0;
                if (arrayList != null && !arrayList.isEmpty()) {
                    if (!this.g) {
                        if (dialogWebBookSave.c0 == null) {
                            return;
                        }
                        MainUtil.e8(dialogWebBookSave.b0, R.string.fail);
                        dialogWebBookSave.t0 = null;
                        dialogWebBookSave.c0.e(0, 0, false, false);
                        dialogWebBookSave.i0.setEnabled(true);
                        dialogWebBookSave.j0.setEnabled(true);
                        dialogWebBookSave.m0.setEnabled(true);
                        dialogWebBookSave.m0.setText(R.string.retry);
                        dialogWebBookSave.setCanceledOnTouchOutside(true);
                        return;
                    }
                    dialogWebBookSave.t0 = null;
                    MainUtil.e8(dialogWebBookSave.b0, R.string.success);
                    dialogWebBookSave.dismiss();
                    return;
                }
                dialogWebBookSave.t0 = null;
                MainUtil.e8(dialogWebBookSave.b0, R.string.no_bookmark);
                dialogWebBookSave.dismiss();
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class HtmlItem {

        /* renamed from: a, reason: collision with root package name */
        public int f15421a;
        public boolean b;

        /* renamed from: c, reason: collision with root package name */
        public String f15422c;
        public String d;
        public String e;
        public String f;
        public long g;
        public long h;
        public long i;
        public ArrayList j;
    }

    /* loaded from: classes3.dex */
    public static class SortHtml implements Comparator<HtmlItem> {
        @Override // java.util.Comparator
        public final int compare(HtmlItem htmlItem, HtmlItem htmlItem2) {
            HtmlItem htmlItem3 = htmlItem;
            HtmlItem htmlItem4 = htmlItem2;
            if (htmlItem3 == null && htmlItem4 == null) {
                return 0;
            }
            if (htmlItem3 != null) {
                if (htmlItem4 != null) {
                    boolean z = htmlItem3.b;
                    if (z || htmlItem4.b) {
                        if (!htmlItem4.b) {
                            return -1;
                        }
                        if (!z) {
                            return 1;
                        }
                    }
                    int o = MainUtil.o(htmlItem3.i, htmlItem4.i, false);
                    if (o != 0) {
                        return o;
                    }
                    int o2 = MainUtil.o(htmlItem3.h, htmlItem4.h, false);
                    if (o2 != 0) {
                        return o2;
                    }
                    int m = MainUtil.m(htmlItem3.e, htmlItem4.e, false);
                    if (m != 0) {
                        return m;
                    }
                    return MainUtil.n(htmlItem3.d, htmlItem4.d, false);
                }
                return -1;
            }
            return 1;
        }
    }

    public static void B(DialogWebBookSave dialogWebBookSave) {
        Context context = dialogWebBookSave.b0;
        if (context != null) {
            MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
            NestedScrollView m = com.google.android.gms.internal.mlkit_vision_text_common.a.m(context, null, 2);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0);
            layoutParams.weight = 1.0f;
            LinearLayout g = com.google.android.gms.internal.mlkit_vision_text_common.a.g(q, m, layoutParams, context, 1);
            m.addView(g, -1, -2);
            FrameLayout frameLayout = new FrameLayout(context);
            g.addView(frameLayout, -1, -2);
            MyLineFrame myLineFrame = new MyLineFrame(context);
            myLineFrame.setLinePad(MainApp.E1);
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -2);
            layoutParams2.gravity = 80;
            frameLayout.addView(myLineFrame, layoutParams2);
            MyRoundImage myRoundImage = new MyRoundImage(context);
            myRoundImage.setScaleType(ImageView.ScaleType.CENTER_CROP);
            myRoundImage.setCircleRadius(MainApp.f1 / 2.0f);
            int i = MainApp.f1;
            FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(i, i);
            layoutParams3.gravity = 8388627;
            layoutParams3.setMarginStart(MainApp.E1);
            myLineFrame.addView(myRoundImage, layoutParams3);
            AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
            appCompatTextView.setGravity(16);
            appCompatTextView.setMaxLines(2);
            appCompatTextView.setEllipsize(TextUtils.TruncateAt.END);
            appCompatTextView.setTextSize(1, 16.0f);
            int G = (int) MainUtil.G(context, 72.0f);
            FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-1, G);
            layoutParams4.setMarginStart(G);
            layoutParams4.setMarginEnd(MainApp.E1);
            myLineFrame.addView(appCompatTextView, layoutParams4);
            RelativeLayout relativeLayout = new RelativeLayout(context);
            g.addView(relativeLayout, -1, -2);
            MyLineLinear myLineLinear = new MyLineLinear(context);
            myLineLinear.setOrientation(1);
            myLineLinear.setLinePad(MainApp.E1);
            myLineLinear.setLineUp(true);
            relativeLayout.addView(myLineLinear, -1, -2);
            AppCompatTextView appCompatTextView2 = new AppCompatTextView(context, null);
            int i2 = MainApp.E1;
            appCompatTextView2.setPadding(i2, 0, i2, 0);
            appCompatTextView2.setGravity(16);
            appCompatTextView2.setTextSize(1, 14.0f);
            appCompatTextView2.setText(R.string.exist_file);
            appCompatTextView2.setVisibility(8);
            myLineLinear.addView(appCompatTextView2, -1, (int) MainUtil.G(context, 32.0f));
            FrameLayout frameLayout2 = new FrameLayout(context);
            int G2 = (int) MainUtil.G(context, 12.0f);
            frameLayout2.setPaddingRelative(MainApp.E1, G2, (int) MainUtil.G(context, 10.0f), G2);
            myLineLinear.addView(frameLayout2, -1, (int) MainUtil.G(context, 88.0f));
            AppCompatTextView j = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 14.0f);
            j.setText(R.string.name);
            frameLayout2.addView(j, -2, -2);
            MyEditText myEditText = new MyEditText(context);
            com.google.android.gms.internal.mlkit_vision_text_common.a.z(myEditText, 16, true, 3);
            myEditText.setTextSize(1, 16.0f);
            if (Build.VERSION.SDK_INT >= 29) {
                myEditText.setTextCursorDrawable(R.drawable.edit_cursor);
            }
            myEditText.setImeOptions(268435456);
            myEditText.setBackground(null);
            FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(-1, MainApp.g1);
            layoutParams5.gravity = 8388691;
            layoutParams5.setMarginEnd((int) MainUtil.G(context, 6.0f));
            frameLayout2.addView(myEditText, layoutParams5);
            dialogWebBookSave.c0 = q;
            dialogWebBookSave.n0 = relativeLayout;
            dialogWebBookSave.d0 = myRoundImage;
            dialogWebBookSave.e0 = appCompatTextView;
            dialogWebBookSave.f0 = myLineLinear;
            dialogWebBookSave.g0 = appCompatTextView2;
            dialogWebBookSave.h0 = j;
            dialogWebBookSave.i0 = myEditText;
            Handler handler = dialogWebBookSave.i;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebBookSave.2
                @Override // java.lang.Runnable
                public final void run() {
                    MyDialogLinear myDialogLinear;
                    MyLineLinear myLineLinear2;
                    final DialogWebBookSave dialogWebBookSave2 = DialogWebBookSave.this;
                    Context context2 = dialogWebBookSave2.b0;
                    if (context2 != null && (myDialogLinear = dialogWebBookSave2.c0) != null && dialogWebBookSave2.n0 != null && (myLineLinear2 = dialogWebBookSave2.f0) != null) {
                        int i3 = R.id.down_icon_frame;
                        int i4 = R.id.down_path_title;
                        MyLineRelative myLineRelative = new MyLineRelative(context2);
                        myLineRelative.setPaddingRelative(MainApp.E1, 0, (int) MainUtil.G(context2, 6.0f), 0);
                        myLineRelative.setMinimumHeight(MainApp.h1);
                        myLineRelative.c(MainApp.E1);
                        myLineLinear2.addView(myLineRelative, -1, -2);
                        RelativeLayout relativeLayout2 = new RelativeLayout(context2);
                        int i5 = MainApp.E1;
                        relativeLayout2.setPadding(0, i5, 0, i5);
                        RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(-1, -2);
                        layoutParams6.addRule(16, i3);
                        layoutParams6.addRule(15);
                        layoutParams6.setMarginEnd((int) MainUtil.G(context2, 10.0f));
                        myLineRelative.addView(relativeLayout2, layoutParams6);
                        AppCompatTextView k = com.google.android.gms.internal.mlkit_vision_text_common.a.k(context2, null, i4, 1, 14.0f);
                        k.setText(R.string.down_location);
                        relativeLayout2.addView(k, -2, -2);
                        AppCompatTextView i6 = com.google.android.gms.internal.mlkit_vision_text_common.a.i(context2, null, 2);
                        i6.setEllipsize(TextUtils.TruncateAt.END);
                        i6.setTextSize(1, 16.0f);
                        RelativeLayout.LayoutParams h = androidx.work.impl.workers.a.h(-2, -2, 3, i4);
                        h.topMargin = MainApp.F1;
                        relativeLayout2.addView(i6, h);
                        MyLineLinear myLineLinear3 = new MyLineLinear(context2);
                        myLineLinear3.setBaselineAligned(false);
                        myLineLinear3.setOrientation(0);
                        myLineLinear3.setLinePad(MainApp.E1);
                        myLineLinear3.setLineUp(true);
                        myDialogLinear.addView(myLineLinear3, -1, MainApp.g1);
                        AppCompatTextView C = com.google.android.gms.internal.mlkit_vision_text_common.a.C(context2, null, 17, 1, 16.0f);
                        LinearLayout.LayoutParams e = com.google.android.gms.internal.mlkit_vision_text_common.a.e(C, R.string.download, 0, -1);
                        e.weight = 1.0f;
                        myLineLinear3.addView(C, e);
                        dialogWebBookSave2.j0 = myLineRelative;
                        dialogWebBookSave2.k0 = k;
                        dialogWebBookSave2.l0 = i6;
                        dialogWebBookSave2.m0 = C;
                        Handler handler2 = dialogWebBookSave2.i;
                        if (handler2 == null) {
                            return;
                        }
                        handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebBookSave.3
                            @Override // java.lang.Runnable
                            public final void run() {
                                String C2;
                                String str;
                                final DialogWebBookSave dialogWebBookSave3 = DialogWebBookSave.this;
                                if (dialogWebBookSave3.c0 != null && dialogWebBookSave3.b0 != null) {
                                    int i7 = -16777216;
                                    if (MainApp.K1) {
                                        dialogWebBookSave3.h0.setTextColor(-4079167);
                                        dialogWebBookSave3.k0.setTextColor(-4079167);
                                        dialogWebBookSave3.d0.o(-460552, R.drawable.outline_kid_star_dark_24);
                                        dialogWebBookSave3.g0.setBackgroundColor(-12632257);
                                        dialogWebBookSave3.g0.setTextColor(-2434342);
                                        dialogWebBookSave3.e0.setTextColor(-328966);
                                        dialogWebBookSave3.i0.setTextColor(-328966);
                                        dialogWebBookSave3.l0.setTextColor(-328966);
                                        dialogWebBookSave3.j0.setBackgroundResource(R.drawable.selector_normal_dark);
                                        dialogWebBookSave3.m0.setBackgroundResource(R.drawable.selector_normal_dark);
                                        dialogWebBookSave3.m0.setTextColor(-328966);
                                    } else {
                                        dialogWebBookSave3.h0.setTextColor(-10395295);
                                        dialogWebBookSave3.k0.setTextColor(-10395295);
                                        dialogWebBookSave3.d0.o(-460552, R.drawable.outline_kid_star_black_24);
                                        dialogWebBookSave3.g0.setBackgroundColor(-460552);
                                        dialogWebBookSave3.g0.setTextColor(-12303292);
                                        dialogWebBookSave3.e0.setTextColor(-16777216);
                                        dialogWebBookSave3.i0.setTextColor(-16777216);
                                        dialogWebBookSave3.l0.setTextColor(-16777216);
                                        dialogWebBookSave3.j0.setBackgroundResource(R.drawable.selector_normal);
                                        dialogWebBookSave3.m0.setBackgroundResource(R.drawable.selector_normal);
                                        dialogWebBookSave3.m0.setTextColor(-14784824);
                                    }
                                    dialogWebBookSave3.k0.setText(R.string.save_location);
                                    dialogWebBookSave3.m0.setText(R.string.save);
                                    String m3 = MainUtil.m3(System.currentTimeMillis());
                                    if (!TextUtils.isEmpty(m3) && m3.endsWith(".")) {
                                        m3 = android.support.v4.media.a.d(1, 0, m3);
                                    }
                                    if (TextUtils.isEmpty(m3)) {
                                        C2 = "Soul_bookmarks";
                                    } else {
                                        C2 = android.support.v4.media.a.C("Soul_bookmarks_", m3);
                                    }
                                    dialogWebBookSave3.o0 = C2;
                                    dialogWebBookSave3.e0.setText(C2);
                                    String str2 = dialogWebBookSave3.o0;
                                    if (dialogWebBookSave3.i0 != null) {
                                        if (!TextUtils.isEmpty(str2)) {
                                            dialogWebBookSave3.p0 = str2;
                                        }
                                        if (dialogWebBookSave3.r0) {
                                            str = MainUtil.Q0(dialogWebBookSave3.i0, true);
                                        } else {
                                            str = dialogWebBookSave3.p0;
                                        }
                                        String p3 = MainUtil.p3(str);
                                        if (TextUtils.isEmpty(MainUri.e())) {
                                            dialogWebBookSave3.q0 = p3;
                                            dialogWebBookSave3.i0.setText(p3);
                                            dialogWebBookSave3.l0.setText(R.string.not_selected);
                                            dialogWebBookSave3.l0.setTextColor(-769226);
                                            dialogWebBookSave3.f0.setDrawLine(true);
                                            dialogWebBookSave3.g0.setVisibility(8);
                                        } else {
                                            dialogWebBookSave3.l0.setText(dialogWebBookSave3.x0);
                                            AppCompatTextView appCompatTextView3 = dialogWebBookSave3.l0;
                                            if (MainApp.K1) {
                                                i7 = -328966;
                                            }
                                            appCompatTextView3.setTextColor(i7);
                                            if (TextUtils.isEmpty(p3)) {
                                                dialogWebBookSave3.q0 = p3;
                                                dialogWebBookSave3.i0.setText(p3);
                                                dialogWebBookSave3.f0.setDrawLine(true);
                                                dialogWebBookSave3.g0.setVisibility(8);
                                            } else {
                                                MainUri.e();
                                                dialogWebBookSave3.f0.setDrawLine(true);
                                                dialogWebBookSave3.g0.setVisibility(8);
                                                dialogWebBookSave3.q0 = p3;
                                                dialogWebBookSave3.i0.setText(p3);
                                            }
                                        }
                                    }
                                    MainUtil.k7(dialogWebBookSave3.i0, false);
                                    dialogWebBookSave3.i0.addTextChangedListener(new TextWatcher() { // from class: com.mycompany.app.dialog.DialogWebBookSave.4
                                        @Override // android.text.TextWatcher
                                        public final void afterTextChanged(Editable editable) {
                                            DialogWebBookSave dialogWebBookSave4 = DialogWebBookSave.this;
                                            if (!dialogWebBookSave4.r0 && editable != null && !MainUtil.q5(dialogWebBookSave4.q0, editable.toString())) {
                                                dialogWebBookSave4.r0 = true;
                                            }
                                        }

                                        @Override // android.text.TextWatcher
                                        public final void beforeTextChanged(CharSequence charSequence, int i8, int i9, int i10) {
                                        }

                                        @Override // android.text.TextWatcher
                                        public final void onTextChanged(CharSequence charSequence, int i8, int i9, int i10) {
                                        }
                                    });
                                    dialogWebBookSave3.i0.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.mycompany.app.dialog.DialogWebBookSave.5
                                        @Override // android.widget.TextView.OnEditorActionListener
                                        public final boolean onEditorAction(TextView textView, int i8, KeyEvent keyEvent) {
                                            DialogWebBookSave dialogWebBookSave4 = DialogWebBookSave.this;
                                            MyEditText myEditText2 = dialogWebBookSave4.i0;
                                            if (myEditText2 == null || dialogWebBookSave4.u0) {
                                                return true;
                                            }
                                            dialogWebBookSave4.u0 = true;
                                            myEditText2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebBookSave.5.1
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    AnonymousClass5 anonymousClass5 = AnonymousClass5.this;
                                                    DialogWebBookSave.C(DialogWebBookSave.this);
                                                    DialogWebBookSave.this.u0 = false;
                                                }
                                            });
                                            return true;
                                        }
                                    });
                                    dialogWebBookSave3.j0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogWebBookSave.6
                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view) {
                                            final DialogWebBookSave dialogWebBookSave4 = DialogWebBookSave.this;
                                            ArrayList arrayList = dialogWebBookSave4.w0;
                                            if (arrayList != null && !arrayList.isEmpty()) {
                                                MyPopupMenu myPopupMenu = dialogWebBookSave4.y0;
                                                if (myPopupMenu == null) {
                                                    if (myPopupMenu != null) {
                                                        dialogWebBookSave4.Y = null;
                                                        myPopupMenu.a();
                                                        dialogWebBookSave4.y0 = null;
                                                    }
                                                    if (dialogWebBookSave4.a0 != null && view != null && dialogWebBookSave4.w0 != null) {
                                                        ArrayList arrayList2 = new ArrayList();
                                                        ArrayList arrayList3 = dialogWebBookSave4.w0;
                                                        int size = arrayList3.size();
                                                        int i8 = 0;
                                                        int i9 = 0;
                                                        while (i9 < size) {
                                                            Object obj = arrayList3.get(i9);
                                                            i9++;
                                                            arrayList2.add(new MyPopupAdapter.PopMenuItem(i8, MainUri.o(dialogWebBookSave4.b0, (String) obj)));
                                                            i8++;
                                                        }
                                                        arrayList2.add(new MyPopupAdapter.PopMenuItem(i8, R.string.direct_select));
                                                        MyPopupMenu myPopupMenu2 = new MyPopupMenu(dialogWebBookSave4.a0, dialogWebBookSave4.c0, view, arrayList2, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.dialog.DialogWebBookSave.10
                                                            @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                            public final void a() {
                                                                int i10 = DialogWebBookSave.z0;
                                                                DialogWebBookSave dialogWebBookSave5 = DialogWebBookSave.this;
                                                                MyPopupMenu myPopupMenu3 = dialogWebBookSave5.y0;
                                                                if (myPopupMenu3 != null) {
                                                                    dialogWebBookSave5.Y = null;
                                                                    myPopupMenu3.a();
                                                                    dialogWebBookSave5.y0 = null;
                                                                }
                                                            }

                                                            @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                            public final boolean b(View view2, int i10) {
                                                                DialogWebBookSave dialogWebBookSave5 = DialogWebBookSave.this;
                                                                ArrayList arrayList4 = dialogWebBookSave5.w0;
                                                                if (arrayList4 != null && i10 < arrayList4.size()) {
                                                                    String str3 = (String) dialogWebBookSave5.w0.get(i10);
                                                                    if (TextUtils.isEmpty(str3) || str3.equals(PrefPath.r)) {
                                                                        return true;
                                                                    }
                                                                    PrefPath.r = str3;
                                                                    dialogWebBookSave5.s(new AnonymousClass9());
                                                                    return true;
                                                                }
                                                                MainUtil.F4(dialogWebBookSave5.a0, MainUri.e());
                                                                return true;
                                                            }
                                                        });
                                                        dialogWebBookSave4.y0 = myPopupMenu2;
                                                        dialogWebBookSave4.Y = myPopupMenu2;
                                                        return;
                                                    }
                                                    return;
                                                }
                                                return;
                                            }
                                            MainUtil.F4(dialogWebBookSave4.a0, MainUri.e());
                                        }
                                    });
                                    dialogWebBookSave3.m0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogWebBookSave.7
                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view) {
                                            DialogWebBookSave dialogWebBookSave4 = DialogWebBookSave.this;
                                            AppCompatTextView appCompatTextView4 = dialogWebBookSave4.m0;
                                            if (appCompatTextView4 == null || dialogWebBookSave4.u0) {
                                                return;
                                            }
                                            dialogWebBookSave4.u0 = true;
                                            appCompatTextView4.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebBookSave.7.1
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    AnonymousClass7 anonymousClass7 = AnonymousClass7.this;
                                                    DialogWebBookSave dialogWebBookSave5 = DialogWebBookSave.this;
                                                    if (dialogWebBookSave5.s0 != null) {
                                                        dialogWebBookSave5.H();
                                                    } else {
                                                        DialogWebBookSave.C(dialogWebBookSave5);
                                                    }
                                                    DialogWebBookSave.this.u0 = false;
                                                }
                                            });
                                        }
                                    });
                                    dialogWebBookSave3.g(dialogWebBookSave3.c0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogWebBookSave.8
                                        @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                        public final void a(View view) {
                                            DialogWebBookSave dialogWebBookSave4 = DialogWebBookSave.this;
                                            if (dialogWebBookSave4.c0 != null && dialogWebBookSave4.b0 != null) {
                                                dialogWebBookSave4.show();
                                            }
                                        }
                                    });
                                }
                            }
                        });
                    }
                }
            });
        }
    }

    public static void C(DialogWebBookSave dialogWebBookSave) {
        if (dialogWebBookSave.b0 != null && dialogWebBookSave.i0 != null) {
            if (TextUtils.isEmpty(MainUri.e())) {
                MainUtil.e8(dialogWebBookSave.b0, R.string.select_dir);
                return;
            }
            String Q0 = MainUtil.Q0(dialogWebBookSave.i0, true);
            if (TextUtils.isEmpty(Q0)) {
                MainUtil.e8(dialogWebBookSave.b0, R.string.input_name);
                return;
            }
            byte[] bytes = Q0.getBytes();
            if (bytes != null && bytes.length > 200) {
                MainUtil.e8(dialogWebBookSave.b0, R.string.long_name);
                return;
            }
            String p3 = MainUtil.p3(Q0.concat(".html"));
            MainUri.e();
            MainUtil.X4(dialogWebBookSave.b0, dialogWebBookSave.i0);
            DialogTask dialogTask = dialogWebBookSave.s0;
            if (dialogTask != null) {
                dialogTask.f12839c = true;
            }
            dialogWebBookSave.s0 = null;
            DialogTask dialogTask2 = new DialogTask(dialogWebBookSave, p3);
            dialogWebBookSave.s0 = dialogTask2;
            dialogTask2.b(dialogWebBookSave.b0);
        }
    }

    public static String D(long j, Context context, String str) {
        byte[] e;
        if (j > 0 || !TextUtils.isEmpty(str)) {
            try {
                Bitmap n4 = MainUtil.n4(MainUtil.O1(str));
                if (MainUtil.f6(n4)) {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    n4.compress(Bitmap.CompressFormat.PNG, 0, byteArrayOutputStream);
                    e = byteArrayOutputStream.toByteArray();
                } else {
                    e = DbBookWeb.e(context, j);
                }
                return MainUtil.h0(e);
            } catch (Exception | OutOfMemoryError unused) {
                return null;
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00c4 A[Catch: Exception -> 0x00cc, TRY_LEAVE, TryCatch #0 {Exception -> 0x00cc, blocks: (B:24:0x0033, B:26:0x0039, B:27:0x005d, B:30:0x006b, B:32:0x0077, B:34:0x0082, B:35:0x0085, B:36:0x00a9, B:37:0x00be, B:39:0x00c4, B:44:0x0094, B:47:0x00a1), top: B:23:0x0033 }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00cc A[EDGE_INSN: B:43:0x00cc->B:10:0x00cc BREAK  A[LOOP:0: B:27:0x005d->B:42:?], SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r10v0, types: [com.mycompany.app.dialog.DialogWebBookSave$HtmlItem, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r14v3, types: [java.lang.Object, java.util.Comparator] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.ArrayList E(java.lang.String r14) {
        /*
            r13 = this;
            java.lang.String r0 = "/"
            boolean r1 = android.text.TextUtils.isEmpty(r14)
            r2 = 0
            if (r1 == 0) goto Lb
            goto Ld7
        Lb:
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            java.lang.String r6 = "_secret=? AND _dir=?"
            boolean r3 = com.mycompany.app.pref.PrefSync.k
            if (r3 == 0) goto L19
            java.lang.String r3 = "1"
            goto L1b
        L19:
            java.lang.String r3 = "0"
        L1b:
            java.lang.String[] r7 = new java.lang.String[]{r3, r14}
            android.content.Context r3 = r13.b0     // Catch: java.lang.Exception -> Lcb
            com.mycompany.app.db.book.DbBookWeb r3 = com.mycompany.app.db.book.DbBookWeb.f(r3)     // Catch: java.lang.Exception -> Lcb
            android.database.sqlite.SQLiteDatabase r3 = r3.getWritableDatabase()     // Catch: java.lang.Exception -> Lcb
            java.lang.String r4 = "DbBookWeb_table"
            r5 = 0
            r8 = 0
            android.database.Cursor r3 = com.mycompany.app.db.DbUtil.g(r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Exception -> Lcb
            if (r3 == 0) goto Lcc
            boolean r4 = r3.moveToFirst()     // Catch: java.lang.Exception -> Lcc
            if (r4 == 0) goto Lcc
            java.lang.String r4 = "_id"
            int r4 = r3.getColumnIndex(r4)     // Catch: java.lang.Exception -> Lcc
            java.lang.String r5 = "_isdir"
            int r5 = r3.getColumnIndex(r5)     // Catch: java.lang.Exception -> Lcc
            java.lang.String r6 = "_path"
            int r6 = r3.getColumnIndex(r6)     // Catch: java.lang.Exception -> Lcc
            java.lang.String r7 = "_title"
            int r7 = r3.getColumnIndex(r7)     // Catch: java.lang.Exception -> Lcc
            java.lang.String r8 = "_time"
            int r8 = r3.getColumnIndex(r8)     // Catch: java.lang.Exception -> Lcc
            java.lang.String r9 = "_rsv4"
            int r9 = r3.getColumnIndex(r9)     // Catch: java.lang.Exception -> Lcc
        L5d:
            com.mycompany.app.dialog.DialogWebBookSave$HtmlItem r10 = new com.mycompany.app.dialog.DialogWebBookSave$HtmlItem     // Catch: java.lang.Exception -> Lcc
            r10.<init>()     // Catch: java.lang.Exception -> Lcc
            int r11 = r3.getInt(r5)     // Catch: java.lang.Exception -> Lcc
            r12 = 1
            if (r11 != r12) goto L6a
            goto L6b
        L6a:
            r12 = 0
        L6b:
            r10.b = r12     // Catch: java.lang.Exception -> Lcc
            java.lang.String r11 = r3.getString(r7)     // Catch: java.lang.Exception -> Lcc
            r10.e = r11     // Catch: java.lang.Exception -> Lcc
            boolean r11 = r10.b     // Catch: java.lang.Exception -> Lcc
            if (r11 == 0) goto L94
            java.lang.StringBuilder r11 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> Lcc
            r11.<init>()     // Catch: java.lang.Exception -> Lcc
            boolean r12 = r14.equals(r0)     // Catch: java.lang.Exception -> Lcc
            if (r12 != 0) goto L85
            r11.append(r14)     // Catch: java.lang.Exception -> Lcc
        L85:
            r11.append(r0)     // Catch: java.lang.Exception -> Lcc
            java.lang.String r12 = r10.e     // Catch: java.lang.Exception -> Lcc
            r11.append(r12)     // Catch: java.lang.Exception -> Lcc
            java.lang.String r11 = r11.toString()     // Catch: java.lang.Exception -> Lcc
            r10.d = r11     // Catch: java.lang.Exception -> Lcc
            goto La9
        L94:
            java.lang.String r11 = r3.getString(r6)     // Catch: java.lang.Exception -> Lcc
            r10.d = r11     // Catch: java.lang.Exception -> Lcc
            boolean r11 = android.text.TextUtils.isEmpty(r11)     // Catch: java.lang.Exception -> Lcc
            if (r11 == 0) goto La1
            goto Lbe
        La1:
            java.lang.String r11 = r10.d     // Catch: java.lang.Exception -> Lcc
            java.lang.String r11 = com.mycompany.app.main.MainUtil.p4(r11)     // Catch: java.lang.Exception -> Lcc
            r10.f = r11     // Catch: java.lang.Exception -> Lcc
        La9:
            long r11 = r3.getLong(r4)     // Catch: java.lang.Exception -> Lcc
            r10.g = r11     // Catch: java.lang.Exception -> Lcc
            long r11 = r3.getLong(r8)     // Catch: java.lang.Exception -> Lcc
            r10.h = r11     // Catch: java.lang.Exception -> Lcc
            long r11 = r3.getLong(r9)     // Catch: java.lang.Exception -> Lcc
            r10.i = r11     // Catch: java.lang.Exception -> Lcc
            r1.add(r10)     // Catch: java.lang.Exception -> Lcc
        Lbe:
            boolean r10 = r13.G()     // Catch: java.lang.Exception -> Lcc
            if (r10 != 0) goto Lcc
            boolean r10 = r3.moveToNext()     // Catch: java.lang.Exception -> Lcc
            if (r10 != 0) goto L5d
            goto Lcc
        Lcb:
            r3 = r2
        Lcc:
            if (r3 == 0) goto Ld1
            r3.close()
        Ld1:
            boolean r14 = r13.G()
            if (r14 == 0) goto Ld8
        Ld7:
            return r2
        Ld8:
            boolean r14 = r1.isEmpty()
            if (r14 != 0) goto Le6
            com.mycompany.app.dialog.DialogWebBookSave$SortHtml r14 = new com.mycompany.app.dialog.DialogWebBookSave$SortHtml
            r14.<init>()
            java.util.Collections.sort(r1, r14)     // Catch: java.lang.Exception -> Le6
        Le6:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogWebBookSave.E(java.lang.String):java.util.ArrayList");
    }

    public final void F(List list) {
        if (list != null && !list.isEmpty()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                HtmlItem htmlItem = (HtmlItem) it.next();
                if (!G()) {
                    if (htmlItem.b) {
                        ArrayList E = E(htmlItem.d);
                        htmlItem.j = E;
                        if (E != null && !E.isEmpty()) {
                            F(htmlItem.j);
                        }
                    }
                } else {
                    return;
                }
            }
        }
    }

    public final boolean G() {
        if (!this.v0) {
            DialogTask dialogTask = this.s0;
            if (dialogTask != null && dialogTask.f12839c) {
                return true;
            }
            return false;
        }
        return true;
    }

    public final void H() {
        int i;
        if (this.m0 != null && this.s0 != null) {
            this.i0.setEnabled(false);
            this.j0.setEnabled(false);
            this.m0.setEnabled(false);
            this.m0.setText(R.string.canceling);
            AppCompatTextView appCompatTextView = this.m0;
            if (MainApp.K1) {
                i = -8355712;
            } else {
                i = -2434342;
            }
            appCompatTextView.setTextColor(i);
            this.v0 = true;
            DialogTask dialogTask = this.s0;
            if (dialogTask != null) {
                dialogTask.f12839c = true;
            }
            this.s0 = null;
            return;
        }
        dismiss();
    }

    public final boolean I(Context context, BufferedWriter bufferedWriter, List list, int i) {
        if (list != null && !list.isEmpty()) {
            try {
                StringBuilder sb = new StringBuilder();
                for (int i2 = 0; i2 < i; i2++) {
                    sb.append("    ");
                }
                String sb2 = sb.toString();
                bufferedWriter.write(sb2 + "<DL><p>\n");
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    HtmlItem htmlItem = (HtmlItem) it.next();
                    if (!G()) {
                        if (htmlItem.b) {
                            bufferedWriter.write(sb2 + "    <DT><H3 ADD_DATE=\"" + htmlItem.h + "\" LAST_MODIFIED=\"" + htmlItem.h + "\">" + htmlItem.e + "</H3>\n");
                            I(context, bufferedWriter, htmlItem.j, 1 + i);
                        } else {
                            bufferedWriter.write(sb2 + "    <DT><A HREF=\"" + htmlItem.d + "\" ADD_DATE=\"" + htmlItem.h + "\" ICON=\"" + D(htmlItem.g, context, htmlItem.f) + "\">" + htmlItem.e + "</A>\n");
                        }
                    }
                }
                bufferedWriter.write(sb2 + "</DL><p>\n");
                return true;
            } catch (Exception | OutOfMemoryError unused) {
            }
        }
        return false;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void cancel() {
        H();
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.b0 == null) {
            return;
        }
        DialogTask dialogTask = this.s0;
        if (dialogTask != null) {
            dialogTask.f12839c = true;
        }
        this.s0 = null;
        MyPopupMenu myPopupMenu = this.y0;
        if (myPopupMenu != null) {
            this.Y = null;
            myPopupMenu.a();
            this.y0 = null;
        }
        MyDialogLinear myDialogLinear = this.c0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.c0 = null;
        }
        MyRoundImage myRoundImage = this.d0;
        if (myRoundImage != null) {
            myRoundImage.k();
            this.d0 = null;
        }
        MyLineLinear myLineLinear = this.f0;
        if (myLineLinear != null) {
            myLineLinear.a();
            this.f0 = null;
        }
        MyEditText myEditText = this.i0;
        if (myEditText != null) {
            myEditText.c();
            this.i0 = null;
        }
        MyLineRelative myLineRelative = this.j0;
        if (myLineRelative != null) {
            myLineRelative.e();
            this.j0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.e0 = null;
        this.g0 = null;
        this.l0 = null;
        this.m0 = null;
        this.o0 = null;
        this.p0 = null;
        this.q0 = null;
        this.t0 = null;
        this.w0 = null;
        this.x0 = null;
        super.dismiss();
    }
}
