package com.mycompany.app.dialog;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.widget.NestedScrollView;
import com.mycompany.app.async.MyAsyncTask;
import com.mycompany.app.gdrive.GdriveManager;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.MainUri;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefPath;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.pref.PrefWeb;
import com.mycompany.app.setting.SettingBackup;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonCheck;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyEditText;
import com.mycompany.app.view.MyLineFrame;
import com.mycompany.app.view.MyLineRelative;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyPopupAdapter;
import com.mycompany.app.view.MyPopupMenu;
import com.mycompany.app.view.MyProgressBar;
import com.mycompany.app.view.MyRoundItem;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import net.lingala.zip4j.core.ZipFile;
import net.lingala.zip4j.exception.ZipException;
import net.lingala.zip4j.model.ZipParameters;
import net.lingala.zip4j.progress.ProgressMonitor;

/* loaded from: classes3.dex */
public class DialogBackupSave extends MyDialogBottom {
    public static final String[] V0 = {"PrefAlbum", "PrefEditor", "PrefFloat", "PrefImage", "PrefList", "PrefMain", "PrefPdf", "PrefRead", "PrefSecret", "PrefSync", "PrefTts", "PrefVideo", "PrefWeb", "PrefZone", "PrefZtwo", "PrefZtri"};
    public static final String[] W0 = {"back.jpg", "nor_land.jpg", "sec_port.jpg", "sec_land.jpg"};
    public static final String[] X0 = {"DbAdsCmd.db", "DbBookAds.db", "DbBookAgent.db", "DbBookBlock.db", "DbBookDc.db", "DbBookFilter.db", "DbBookJava.db", "DbBookLink.db", "DbBookLocale.db", "DbBookMemo.db", "DbBookOver.db", "DbBookPop.db", "DbBookRecent.db", "DbBookScript.db", "DbBookSearch.db", "DbBookTheme.db", "DbBookTmem.db", "DbBookTrans.db", "DbBookUser.db", "DbRecentLang.db"};
    public static final String[] Y0 = {"DbBookHistory.db", "DbBookIcon.db", "DbBookPass.db", "DbBookQuick.db", "DbBookTab3.db", "DbBookWeb.db", "DbTabState.db", "DbTabThumb.db"};
    public MyEditText A0;
    public MyLineRelative B0;
    public AppCompatTextView C0;
    public AppCompatTextView D0;
    public FrameLayout E0;
    public AppCompatTextView F0;
    public MyProgressBar G0;
    public int H0;
    public int I0;
    public long J0;
    public AppCompatTextView K0;
    public MyLineText L0;
    public DialogTask M0;
    public boolean N0;
    public boolean O0;
    public int P0;
    public ArrayList Q0;
    public String R0;
    public MyPopupMenu S0;
    public DialogSetMsg T0;
    public final Runnable U0;
    public final int a0;
    public SettingBackup b0;
    public Context c0;
    public GdriveManager d0;
    public MyDialogLinear e0;
    public NestedScrollView f0;
    public MyLineFrame g0;
    public AppCompatTextView h0;
    public MyButtonCheck i0;
    public MyLineFrame j0;
    public AppCompatTextView k0;
    public MyButtonCheck l0;
    public MyLineFrame m0;
    public AppCompatTextView n0;
    public MyButtonCheck o0;
    public MyLineFrame p0;
    public AppCompatTextView q0;
    public MyButtonCheck r0;
    public MyLineFrame s0;
    public AppCompatTextView t0;
    public MyButtonCheck u0;
    public MyRoundItem v0;
    public AppCompatTextView w0;
    public MyButtonCheck x0;
    public MyRoundItem y0;
    public AppCompatTextView z0;

    /* loaded from: classes3.dex */
    public static class DialogTask extends MyAsyncTask {
        public final WeakReference e;
        public final String f;
        public final boolean g;
        public boolean h;

        public DialogTask(DialogBackupSave dialogBackupSave, String str, boolean z) {
            int i;
            boolean z2;
            int i2;
            WeakReference weakReference = new WeakReference(dialogBackupSave);
            this.e = weakReference;
            DialogBackupSave dialogBackupSave2 = (DialogBackupSave) weakReference.get();
            if (dialogBackupSave2 != null) {
                this.f = str;
                this.g = z;
                dialogBackupSave2.O0 = false;
                dialogBackupSave2.P0 = 0;
                dialogBackupSave2.f0.setVisibility(8);
                boolean z3 = true;
                dialogBackupSave2.K(true);
                dialogBackupSave2.L0.setText(R.string.cancel);
                dialogBackupSave2.setCanceledOnTouchOutside(false);
                if (dialogBackupSave2.E0 == null) {
                    return;
                }
                dialogBackupSave2.I0 = 0;
                MyButtonCheck myButtonCheck = dialogBackupSave2.i0;
                if (myButtonCheck == null) {
                    i2 = 0;
                } else {
                    if (myButtonCheck.D) {
                        i = 19;
                    } else {
                        i = 0;
                    }
                    i = dialogBackupSave2.l0.D ? i + 1 : i;
                    i = dialogBackupSave2.o0.D ? i + 1 : i;
                    if (dialogBackupSave2.r0.D) {
                        i++;
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (dialogBackupSave2.u0.D) {
                        i += 3;
                    } else {
                        z3 = z2;
                    }
                    i = z3 ? i + 1 : i;
                    i2 = (dialogBackupSave2.x0.D ? i + 1 : i) + 5;
                }
                dialogBackupSave2.H0 = i2;
                dialogBackupSave2.J0 = 0L;
                dialogBackupSave2.F0.setText(R.string.saving);
                dialogBackupSave2.G0.setMax(dialogBackupSave2.H0);
                dialogBackupSave2.G0.setProgress(0.0f);
                dialogBackupSave2.L(false);
                dialogBackupSave2.E0.setVisibility(0);
                dialogBackupSave2.K0.setVisibility(8);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:103:0x01aa A[Catch: Exception -> 0x0076, TryCatch #2 {Exception -> 0x0076, blocks: (B:187:0x0063, B:190:0x006a, B:192:0x0072, B:193:0x0079, B:195:0x0081, B:24:0x008e, B:26:0x0096, B:27:0x009f, B:30:0x00a7, B:31:0x009a, B:34:0x00b0, B:36:0x00b8, B:37:0x00c1, B:40:0x00c9, B:41:0x00bc, B:44:0x00d2, B:46:0x00da, B:47:0x00e5, B:50:0x00ed, B:53:0x00f8, B:55:0x0100, B:56:0x010c, B:59:0x0114, B:61:0x0119, B:63:0x0121, B:64:0x0124, B:67:0x012c, B:69:0x0137, B:70:0x013a, B:73:0x0142, B:74:0x0106, B:76:0x0147, B:78:0x014f, B:79:0x0152, B:82:0x015a, B:85:0x0163, B:87:0x016b, B:88:0x0174, B:91:0x017c, B:92:0x016f, B:99:0x01a3, B:101:0x01a6, B:103:0x01aa, B:110:0x01cf, B:112:0x01d5, B:113:0x01d8, B:117:0x01b8, B:120:0x01bf, B:122:0x01c9, B:132:0x01f5, B:138:0x0207, B:144:0x0219, B:150:0x022b, B:184:0x00df), top: B:186:0x0063 }] */
        /* JADX WARN: Removed duplicated region for block: B:129:0x01ed  */
        /* JADX WARN: Removed duplicated region for block: B:130:0x01ef A[Catch: Exception -> 0x0282, TRY_LEAVE, TryCatch #3 {Exception -> 0x0282, blocks: (B:19:0x0058, B:21:0x0087, B:32:0x00aa, B:42:0x00cc, B:51:0x00f2, B:83:0x015d, B:93:0x017f, B:127:0x01e4, B:130:0x01ef, B:133:0x01f8, B:136:0x0200, B:139:0x020a, B:142:0x0212, B:145:0x021c, B:148:0x0224, B:158:0x022e, B:161:0x0235, B:180:0x018b, B:183:0x019d), top: B:18:0x0058 }] */
        /* JADX WARN: Removed duplicated region for block: B:156:0x028e  */
        @Override // com.mycompany.app.async.MyAsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a() {
            /*
                Method dump skipped, instructions count: 668
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogBackupSave.DialogTask.a():void");
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            DialogBackupSave dialogBackupSave;
            WeakReference weakReference = this.e;
            if (weakReference == null || (dialogBackupSave = (DialogBackupSave) weakReference.get()) == null) {
                return;
            }
            dialogBackupSave.M0 = null;
            MainUtil.e8(dialogBackupSave.c0, R.string.cancelled);
            dialogBackupSave.dismiss();
        }

        /* JADX WARN: Type inference failed for: r1v12, types: [int, boolean] */
        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            DialogBackupSave dialogBackupSave;
            WeakReference weakReference = this.e;
            if (weakReference != null && (dialogBackupSave = (DialogBackupSave) weakReference.get()) != null) {
                dialogBackupSave.M0 = null;
                if (dialogBackupSave.H()) {
                    MainUtil.e8(dialogBackupSave.c0, R.string.cancelled);
                    dialogBackupSave.dismiss();
                    return;
                }
                if (!this.h) {
                    if (dialogBackupSave.e0 == null) {
                        return;
                    }
                    dialogBackupSave.L(false);
                    MyButtonCheck myButtonCheck = dialogBackupSave.i0;
                    if (myButtonCheck != null && !myButtonCheck.D) {
                        ?? r1 = dialogBackupSave.l0.D;
                        int i = r1;
                        if (dialogBackupSave.o0.D) {
                            i = r1 + 1;
                        }
                        int i2 = i;
                        if (dialogBackupSave.r0.D) {
                            i2 = i + 1;
                        }
                        int i3 = i2;
                        if (dialogBackupSave.u0.D) {
                            i3 = i2 + 1;
                        }
                        int i4 = i3;
                        if (dialogBackupSave.x0.D) {
                            i4 = i3 + 1;
                        }
                        if (i4 == dialogBackupSave.P0) {
                            dialogBackupSave.M(R.string.save_empty);
                            dialogBackupSave.L0.setText(R.string.retry);
                            dialogBackupSave.K(true);
                            dialogBackupSave.setCanceledOnTouchOutside(true);
                            return;
                        }
                    }
                    dialogBackupSave.M(R.string.fail);
                    dialogBackupSave.L0.setText(R.string.retry);
                    dialogBackupSave.K(true);
                    dialogBackupSave.setCanceledOnTouchOutside(true);
                    return;
                }
                MainUtil.e8(dialogBackupSave.c0, R.string.success);
                dialogBackupSave.dismiss();
            }
        }
    }

    public DialogBackupSave(SettingBackup settingBackup, GdriveManager gdriveManager) {
        super(settingBackup);
        this.U0 = new Runnable() { // from class: com.mycompany.app.dialog.DialogBackupSave.21
            @Override // java.lang.Runnable
            public final void run() {
                DialogBackupSave dialogBackupSave = DialogBackupSave.this;
                MyProgressBar myProgressBar = dialogBackupSave.G0;
                if (myProgressBar == null) {
                    return;
                }
                int i = dialogBackupSave.I0;
                int i2 = dialogBackupSave.H0;
                if (i > i2) {
                    dialogBackupSave.I0 = i2;
                }
                myProgressBar.setMax(i2);
                dialogBackupSave.G0.setProgress(dialogBackupSave.I0);
            }
        };
        this.a0 = 2;
        this.b0 = settingBackup;
        this.c0 = getContext();
        this.d0 = gdriveManager;
        s(new Runnable() { // from class: com.mycompany.app.dialog.DialogBackupSave.1
            @Override // java.lang.Runnable
            public final void run() {
                DialogBackupSave dialogBackupSave = DialogBackupSave.this;
                Context context = dialogBackupSave.c0;
                if (context != null) {
                    ArrayList n = MainUri.n(context);
                    dialogBackupSave.Q0 = n;
                    PrefPath.r = MainUri.m(dialogBackupSave.c0, PrefPath.r, n);
                    dialogBackupSave.R0 = MainUri.h(dialogBackupSave.c0, MainUri.e());
                    Handler handler = dialogBackupSave.i;
                    if (handler == null) {
                        return;
                    }
                    handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogBackupSave.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogBackupSave.B(DialogBackupSave.this);
                        }
                    });
                }
            }
        });
    }

    public static void B(DialogBackupSave dialogBackupSave) {
        MyEditText myEditText;
        AppCompatTextView appCompatTextView;
        MyLineRelative myLineRelative;
        AppCompatTextView appCompatTextView2;
        Context context = dialogBackupSave.c0;
        if (context != null) {
            int i = R.id.item_title_view;
            int i2 = R.id.item_seek_text;
            MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
            NestedScrollView m = com.google.android.gms.internal.mlkit_vision_text_common.a.m(context, null, 2);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0);
            layoutParams.weight = 1.0f;
            LinearLayout g = com.google.android.gms.internal.mlkit_vision_text_common.a.g(q, m, layoutParams, context, 1);
            m.addView(g, -1, -2);
            int G = (int) MainUtil.G(context, 52.0f);
            MyLineFrame myLineFrame = new MyLineFrame(context);
            myLineFrame.setPaddingRelative(MainApp.E1, 0, MainApp.F1, 0);
            myLineFrame.a(MainApp.E1);
            g.addView(myLineFrame, -1, G);
            AppCompatTextView j = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
            FrameLayout.LayoutParams d = com.google.android.gms.internal.mlkit_vision_text_common.a.d(j, R.string.setting, -2, -2);
            d.gravity = 8388627;
            myLineFrame.addView(j, d);
            MyButtonCheck myButtonCheck = new MyButtonCheck(context);
            int i3 = MainApp.g1;
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(i3, i3);
            layoutParams2.gravity = 8388629;
            myLineFrame.addView(myButtonCheck, layoutParams2);
            MyLineFrame myLineFrame2 = new MyLineFrame(context);
            myLineFrame2.setPaddingRelative(MainApp.E1, 0, MainApp.F1, 0);
            myLineFrame2.a(MainApp.E1);
            g.addView(myLineFrame2, -1, G);
            AppCompatTextView j2 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
            FrameLayout.LayoutParams d2 = com.google.android.gms.internal.mlkit_vision_text_common.a.d(j2, R.string.quick_access, -2, -2);
            d2.gravity = 8388627;
            myLineFrame2.addView(j2, d2);
            MyButtonCheck myButtonCheck2 = new MyButtonCheck(context);
            int i4 = MainApp.g1;
            FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(i4, i4);
            layoutParams3.gravity = 8388629;
            myLineFrame2.addView(myButtonCheck2, layoutParams3);
            MyLineFrame myLineFrame3 = new MyLineFrame(context);
            myLineFrame3.setPaddingRelative(MainApp.E1, 0, MainApp.F1, 0);
            myLineFrame3.a(MainApp.E1);
            g.addView(myLineFrame3, -1, G);
            AppCompatTextView j3 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
            FrameLayout.LayoutParams d3 = com.google.android.gms.internal.mlkit_vision_text_common.a.d(j3, R.string.bookmark, -2, -2);
            d3.gravity = 8388627;
            myLineFrame3.addView(j3, d3);
            MyButtonCheck myButtonCheck3 = new MyButtonCheck(context);
            int i5 = MainApp.g1;
            FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(i5, i5);
            layoutParams4.gravity = 8388629;
            myLineFrame3.addView(myButtonCheck3, layoutParams4);
            MyLineFrame myLineFrame4 = new MyLineFrame(context);
            myLineFrame4.setPaddingRelative(MainApp.E1, 0, MainApp.F1, 0);
            myLineFrame4.a(MainApp.E1);
            g.addView(myLineFrame4, -1, G);
            AppCompatTextView j4 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
            FrameLayout.LayoutParams d4 = com.google.android.gms.internal.mlkit_vision_text_common.a.d(j4, R.string.history, -2, -2);
            d4.gravity = 8388627;
            myLineFrame4.addView(j4, d4);
            MyButtonCheck myButtonCheck4 = new MyButtonCheck(context);
            int i6 = MainApp.g1;
            FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(i6, i6);
            layoutParams5.gravity = 8388629;
            myLineFrame4.addView(myButtonCheck4, layoutParams5);
            MyLineFrame myLineFrame5 = new MyLineFrame(context);
            myLineFrame5.setPaddingRelative(MainApp.E1, 0, MainApp.F1, 0);
            myLineFrame5.a(MainApp.E1);
            g.addView(myLineFrame5, -1, G);
            AppCompatTextView j5 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
            FrameLayout.LayoutParams d5 = com.google.android.gms.internal.mlkit_vision_text_common.a.d(j5, R.string.tab_item, -2, -2);
            d5.gravity = 8388627;
            myLineFrame5.addView(j5, d5);
            MyButtonCheck myButtonCheck5 = new MyButtonCheck(context);
            int i7 = MainApp.g1;
            FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(i7, i7);
            layoutParams6.gravity = 8388629;
            myLineFrame5.addView(myButtonCheck5, layoutParams6);
            MyRoundItem myRoundItem = new MyRoundItem(context);
            myRoundItem.setPaddingRelative(MainApp.E1, 0, MainApp.F1, 0);
            g.addView(myRoundItem, -1, G);
            AppCompatTextView j6 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
            j6.setText(R.string.password);
            RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams7.addRule(15);
            myRoundItem.addView(j6, layoutParams7);
            MyButtonCheck myButtonCheck6 = new MyButtonCheck(context);
            int i8 = MainApp.g1;
            RelativeLayout.LayoutParams layoutParams8 = new RelativeLayout.LayoutParams(i8, i8);
            layoutParams8.addRule(15);
            layoutParams8.addRule(21);
            myRoundItem.addView(myButtonCheck6, layoutParams8);
            int G2 = (int) MainUtil.G(context, 88.0f);
            int G3 = (int) MainUtil.G(context, 12.0f);
            int G4 = (int) MainUtil.G(context, 10.0f);
            MyRoundItem myRoundItem2 = new MyRoundItem(context);
            myRoundItem2.setPaddingRelative(MainApp.E1, G3, G4, G3);
            LinearLayout.LayoutParams layoutParams9 = new LinearLayout.LayoutParams(-1, G2);
            layoutParams9.topMargin = MainApp.F1;
            g.addView(myRoundItem2, layoutParams9);
            AppCompatTextView appCompatTextView3 = new AppCompatTextView(context, null);
            appCompatTextView3.setTextSize(1, 14.0f);
            appCompatTextView3.setText(R.string.name);
            myRoundItem2.addView(appCompatTextView3, -2, -2);
            MyEditText myEditText2 = new MyEditText(context);
            com.google.android.gms.internal.mlkit_vision_text_common.a.z(myEditText2, 16, true, 3);
            myEditText2.setTextSize(1, 16.0f);
            if (Build.VERSION.SDK_INT >= 29) {
                myEditText2.setTextCursorDrawable(R.drawable.edit_cursor);
            }
            myEditText2.setImeOptions(268435456);
            myEditText2.setBackground(null);
            RelativeLayout.LayoutParams layoutParams10 = new RelativeLayout.LayoutParams(-1, MainApp.g1);
            layoutParams10.addRule(12);
            layoutParams10.setMarginEnd((int) MainUtil.G(context, 6.0f));
            myRoundItem2.addView(myEditText2, layoutParams10);
            if (dialogBackupSave.d0 == null) {
                MyLineRelative myLineRelative2 = new MyLineRelative(context);
                int i9 = MainApp.E1;
                myLineRelative2.setPadding(i9, i9, i9, i9);
                myLineRelative2.setMinimumHeight(MainApp.h1);
                myLineRelative2.c(MainApp.E1);
                g.addView(myLineRelative2, -1, -2);
                RelativeLayout relativeLayout = new RelativeLayout(context);
                myEditText = myEditText2;
                RelativeLayout.LayoutParams layoutParams11 = new RelativeLayout.LayoutParams(-1, -2);
                layoutParams11.addRule(15);
                myLineRelative2.addView(relativeLayout, layoutParams11);
                AppCompatTextView k = com.google.android.gms.internal.mlkit_vision_text_common.a.k(context, null, i, 1, 14.0f);
                k.setText(R.string.save_location);
                relativeLayout.addView(k, -2, -2);
                appCompatTextView2 = com.google.android.gms.internal.mlkit_vision_text_common.a.i(context, null, 2);
                appCompatTextView2.setEllipsize(TextUtils.TruncateAt.END);
                appCompatTextView2.setTextSize(1, 16.0f);
                RelativeLayout.LayoutParams h = androidx.work.impl.workers.a.h(-2, -2, 3, i);
                h.topMargin = MainApp.F1;
                relativeLayout.addView(appCompatTextView2, h);
                appCompatTextView = k;
                myLineRelative = myLineRelative2;
            } else {
                myEditText = myEditText2;
                appCompatTextView = null;
                myLineRelative = null;
                appCompatTextView2 = null;
            }
            FrameLayout frameLayout = new FrameLayout(context);
            int i10 = MainApp.E1;
            frameLayout.setPadding(i10, 0, i10, 0);
            frameLayout.setVisibility(8);
            q.addView(frameLayout, -1, G2);
            RelativeLayout relativeLayout2 = new RelativeLayout(context);
            AppCompatTextView appCompatTextView4 = appCompatTextView2;
            AppCompatTextView appCompatTextView5 = appCompatTextView;
            FrameLayout.LayoutParams layoutParams12 = new FrameLayout.LayoutParams(-1, -2);
            layoutParams12.gravity = 16;
            frameLayout.addView(relativeLayout2, layoutParams12);
            AppCompatTextView appCompatTextView6 = new AppCompatTextView(context, null);
            appCompatTextView6.setId(i2);
            appCompatTextView6.setTextSize(1, 16.0f);
            appCompatTextView6.setText(R.string.size);
            relativeLayout2.addView(appCompatTextView6, -2, -2);
            MyProgressBar myProgressBar = new MyProgressBar(context);
            RelativeLayout.LayoutParams h2 = androidx.work.impl.workers.a.h(-1, G3, 3, i2);
            h2.topMargin = MainApp.F1;
            relativeLayout2.addView(myProgressBar, h2);
            AppCompatTextView appCompatTextView7 = new AppCompatTextView(context, null);
            int i11 = MainApp.E1;
            appCompatTextView7.setPadding(i11, i11, i11, i11);
            appCompatTextView7.setGravity(17);
            appCompatTextView7.setLineSpacing(MainApp.F1, 1.0f);
            appCompatTextView7.setTextSize(1, 16.0f);
            appCompatTextView7.setMinHeight(G2);
            appCompatTextView7.setVisibility(8);
            q.addView(appCompatTextView7, -1, -2);
            MyLineText myLineText = new MyLineText(context);
            myLineText.setGravity(17);
            myLineText.setTextSize(1, 16.0f);
            myLineText.setLinePad(MainApp.E1);
            myLineText.setLineUp(true);
            q.addView(myLineText, -1, MainApp.g1);
            dialogBackupSave.e0 = q;
            dialogBackupSave.f0 = m;
            dialogBackupSave.g0 = myLineFrame;
            dialogBackupSave.h0 = j;
            dialogBackupSave.i0 = myButtonCheck;
            dialogBackupSave.j0 = myLineFrame2;
            dialogBackupSave.k0 = j2;
            dialogBackupSave.l0 = myButtonCheck2;
            dialogBackupSave.m0 = myLineFrame3;
            dialogBackupSave.n0 = j3;
            dialogBackupSave.o0 = myButtonCheck3;
            dialogBackupSave.p0 = myLineFrame4;
            dialogBackupSave.q0 = j4;
            dialogBackupSave.r0 = myButtonCheck4;
            dialogBackupSave.s0 = myLineFrame5;
            dialogBackupSave.t0 = j5;
            dialogBackupSave.u0 = myButtonCheck5;
            dialogBackupSave.v0 = myRoundItem;
            dialogBackupSave.w0 = j6;
            dialogBackupSave.x0 = myButtonCheck6;
            dialogBackupSave.y0 = myRoundItem2;
            dialogBackupSave.z0 = appCompatTextView3;
            dialogBackupSave.A0 = myEditText;
            dialogBackupSave.B0 = myLineRelative;
            dialogBackupSave.C0 = appCompatTextView5;
            dialogBackupSave.D0 = appCompatTextView4;
            dialogBackupSave.E0 = frameLayout;
            dialogBackupSave.F0 = appCompatTextView6;
            dialogBackupSave.G0 = myProgressBar;
            dialogBackupSave.K0 = appCompatTextView7;
            dialogBackupSave.L0 = myLineText;
            Handler handler = dialogBackupSave.i;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogBackupSave.2
                @Override // java.lang.Runnable
                public final void run() {
                    String C;
                    final DialogBackupSave dialogBackupSave2 = DialogBackupSave.this;
                    MyDialogLinear myDialogLinear = dialogBackupSave2.e0;
                    if (myDialogLinear != null && dialogBackupSave2.c0 != null) {
                        int i12 = -328966;
                        if (MainApp.K1) {
                            myDialogLinear.setBackgroundColor(-16777216);
                            dialogBackupSave2.E0.setBackgroundColor(-14606047);
                            dialogBackupSave2.K0.setBackgroundColor(-14606047);
                            dialogBackupSave2.h0.setTextColor(-328966);
                            dialogBackupSave2.k0.setTextColor(-328966);
                            dialogBackupSave2.n0.setTextColor(-328966);
                            dialogBackupSave2.q0.setTextColor(-328966);
                            dialogBackupSave2.t0.setTextColor(-328966);
                            dialogBackupSave2.w0.setTextColor(-328966);
                            dialogBackupSave2.g0.setBackgroundResource(R.drawable.selector_list_back_dark);
                            dialogBackupSave2.j0.setBackgroundResource(R.drawable.selector_list_back_dark);
                            dialogBackupSave2.m0.setBackgroundResource(R.drawable.selector_list_back_dark);
                            dialogBackupSave2.p0.setBackgroundResource(R.drawable.selector_list_back_dark);
                            dialogBackupSave2.s0.setBackgroundResource(R.drawable.selector_list_back_dark);
                            dialogBackupSave2.v0.setBackgroundResource(R.drawable.selector_list_back_dark);
                            dialogBackupSave2.y0.setBackgroundColor(-14606047);
                            dialogBackupSave2.z0.setTextColor(-4079167);
                            dialogBackupSave2.A0.setTextColor(-328966);
                            dialogBackupSave2.F0.setTextColor(-328966);
                            dialogBackupSave2.K0.setTextColor(-328966);
                            dialogBackupSave2.L0.setBackgroundResource(R.drawable.selector_list_back_dark);
                            dialogBackupSave2.L0.setTextColor(-328966);
                            dialogBackupSave2.i0.p(R.drawable.baseline_check_circle_dark_24, R.drawable.outline_radio_button_unchecked_dark_24);
                            dialogBackupSave2.i0.setBgPreColor(-12632257);
                            dialogBackupSave2.l0.p(R.drawable.baseline_check_circle_dark_24, R.drawable.outline_radio_button_unchecked_dark_24);
                            dialogBackupSave2.l0.setBgPreColor(-12632257);
                            dialogBackupSave2.o0.p(R.drawable.baseline_check_circle_dark_24, R.drawable.outline_radio_button_unchecked_dark_24);
                            dialogBackupSave2.o0.setBgPreColor(-12632257);
                            dialogBackupSave2.r0.p(R.drawable.baseline_check_circle_dark_24, R.drawable.outline_radio_button_unchecked_dark_24);
                            dialogBackupSave2.r0.setBgPreColor(-12632257);
                            dialogBackupSave2.u0.p(R.drawable.baseline_check_circle_dark_24, R.drawable.outline_radio_button_unchecked_dark_24);
                            dialogBackupSave2.u0.setBgPreColor(-12632257);
                            dialogBackupSave2.x0.p(R.drawable.baseline_check_circle_dark_24, R.drawable.outline_radio_button_unchecked_dark_24);
                            dialogBackupSave2.x0.setBgPreColor(-12632257);
                        } else {
                            myDialogLinear.setBackgroundColor(-460552);
                            dialogBackupSave2.E0.setBackgroundColor(-1);
                            dialogBackupSave2.K0.setBackgroundColor(-1);
                            dialogBackupSave2.h0.setTextColor(-16777216);
                            dialogBackupSave2.k0.setTextColor(-16777216);
                            dialogBackupSave2.n0.setTextColor(-16777216);
                            dialogBackupSave2.q0.setTextColor(-16777216);
                            dialogBackupSave2.t0.setTextColor(-16777216);
                            dialogBackupSave2.w0.setTextColor(-16777216);
                            dialogBackupSave2.g0.setBackgroundResource(R.drawable.selector_list_back);
                            dialogBackupSave2.j0.setBackgroundResource(R.drawable.selector_list_back);
                            dialogBackupSave2.m0.setBackgroundResource(R.drawable.selector_list_back);
                            dialogBackupSave2.p0.setBackgroundResource(R.drawable.selector_list_back);
                            dialogBackupSave2.s0.setBackgroundResource(R.drawable.selector_list_back);
                            dialogBackupSave2.v0.setBackgroundResource(R.drawable.selector_list_back);
                            dialogBackupSave2.y0.setBackgroundColor(-1);
                            dialogBackupSave2.z0.setTextColor(-10395295);
                            dialogBackupSave2.A0.setTextColor(-16777216);
                            dialogBackupSave2.F0.setTextColor(-16777216);
                            dialogBackupSave2.K0.setTextColor(-16777216);
                            dialogBackupSave2.L0.setBackgroundResource(R.drawable.selector_list_back);
                            dialogBackupSave2.L0.setTextColor(-14784824);
                            dialogBackupSave2.i0.p(R.drawable.baseline_check_circle_black_24, R.drawable.outline_radio_button_unchecked_black_24);
                            dialogBackupSave2.i0.setBgPreColor(-2039584);
                            dialogBackupSave2.l0.p(R.drawable.baseline_check_circle_black_24, R.drawable.outline_radio_button_unchecked_black_24);
                            dialogBackupSave2.l0.setBgPreColor(-2039584);
                            dialogBackupSave2.o0.p(R.drawable.baseline_check_circle_black_24, R.drawable.outline_radio_button_unchecked_black_24);
                            dialogBackupSave2.o0.setBgPreColor(-2039584);
                            dialogBackupSave2.r0.p(R.drawable.baseline_check_circle_black_24, R.drawable.outline_radio_button_unchecked_black_24);
                            dialogBackupSave2.r0.setBgPreColor(-2039584);
                            dialogBackupSave2.u0.p(R.drawable.baseline_check_circle_black_24, R.drawable.outline_radio_button_unchecked_black_24);
                            dialogBackupSave2.u0.setBgPreColor(-2039584);
                            dialogBackupSave2.x0.p(R.drawable.baseline_check_circle_black_24, R.drawable.outline_radio_button_unchecked_black_24);
                            dialogBackupSave2.x0.setBgPreColor(-2039584);
                        }
                        dialogBackupSave2.v0.d(false, true);
                        dialogBackupSave2.y0.d(true, false);
                        dialogBackupSave2.L0.setText(R.string.save);
                        dialogBackupSave2.A0.setSelectAllOnFocus(true);
                        dialogBackupSave2.A0.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.mycompany.app.dialog.DialogBackupSave.3
                            @Override // android.widget.TextView.OnEditorActionListener
                            public final boolean onEditorAction(TextView textView, int i13, KeyEvent keyEvent) {
                                DialogBackupSave dialogBackupSave3 = DialogBackupSave.this;
                                MyEditText myEditText3 = dialogBackupSave3.A0;
                                if (myEditText3 == null || dialogBackupSave3.N0) {
                                    return true;
                                }
                                dialogBackupSave3.N0 = true;
                                myEditText3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogBackupSave.3.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                                        DialogBackupSave.C(DialogBackupSave.this);
                                        DialogBackupSave.this.N0 = false;
                                    }
                                });
                                return true;
                            }
                        });
                        dialogBackupSave2.i0.q(true, false);
                        dialogBackupSave2.l0.q(true, false);
                        dialogBackupSave2.o0.q(true, false);
                        dialogBackupSave2.r0.q(true, false);
                        dialogBackupSave2.u0.q(true, false);
                        dialogBackupSave2.x0.q(true, false);
                        dialogBackupSave2.g0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogBackupSave.4
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                MyButtonCheck myButtonCheck7 = DialogBackupSave.this.i0;
                                if (myButtonCheck7 == null) {
                                    return;
                                }
                                myButtonCheck7.q(!myButtonCheck7.D, true);
                            }
                        });
                        dialogBackupSave2.i0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogBackupSave.5
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                MyButtonCheck myButtonCheck7 = DialogBackupSave.this.i0;
                                if (myButtonCheck7 == null) {
                                    return;
                                }
                                myButtonCheck7.q(!myButtonCheck7.D, true);
                            }
                        });
                        dialogBackupSave2.j0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogBackupSave.6
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                MyButtonCheck myButtonCheck7 = DialogBackupSave.this.l0;
                                if (myButtonCheck7 == null) {
                                    return;
                                }
                                myButtonCheck7.q(!myButtonCheck7.D, true);
                            }
                        });
                        dialogBackupSave2.l0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogBackupSave.7
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                MyButtonCheck myButtonCheck7 = DialogBackupSave.this.l0;
                                if (myButtonCheck7 == null) {
                                    return;
                                }
                                myButtonCheck7.q(!myButtonCheck7.D, true);
                            }
                        });
                        dialogBackupSave2.m0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogBackupSave.8
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                MyButtonCheck myButtonCheck7 = DialogBackupSave.this.o0;
                                if (myButtonCheck7 == null) {
                                    return;
                                }
                                myButtonCheck7.q(!myButtonCheck7.D, true);
                            }
                        });
                        dialogBackupSave2.o0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogBackupSave.9
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                MyButtonCheck myButtonCheck7 = DialogBackupSave.this.o0;
                                if (myButtonCheck7 == null) {
                                    return;
                                }
                                myButtonCheck7.q(!myButtonCheck7.D, true);
                            }
                        });
                        dialogBackupSave2.p0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogBackupSave.10
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                MyButtonCheck myButtonCheck7 = DialogBackupSave.this.r0;
                                if (myButtonCheck7 == null) {
                                    return;
                                }
                                myButtonCheck7.q(!myButtonCheck7.D, true);
                            }
                        });
                        dialogBackupSave2.r0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogBackupSave.11
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                MyButtonCheck myButtonCheck7 = DialogBackupSave.this.r0;
                                if (myButtonCheck7 == null) {
                                    return;
                                }
                                myButtonCheck7.q(!myButtonCheck7.D, true);
                            }
                        });
                        dialogBackupSave2.s0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogBackupSave.12
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                MyButtonCheck myButtonCheck7 = DialogBackupSave.this.u0;
                                if (myButtonCheck7 == null) {
                                    return;
                                }
                                myButtonCheck7.q(!myButtonCheck7.D, true);
                            }
                        });
                        dialogBackupSave2.u0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogBackupSave.13
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                MyButtonCheck myButtonCheck7 = DialogBackupSave.this.u0;
                                if (myButtonCheck7 == null) {
                                    return;
                                }
                                myButtonCheck7.q(!myButtonCheck7.D, true);
                            }
                        });
                        dialogBackupSave2.v0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogBackupSave.14
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                MyButtonCheck myButtonCheck7 = DialogBackupSave.this.x0;
                                if (myButtonCheck7 == null) {
                                    return;
                                }
                                myButtonCheck7.q(!myButtonCheck7.D, true);
                            }
                        });
                        dialogBackupSave2.x0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogBackupSave.15
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                MyButtonCheck myButtonCheck7 = DialogBackupSave.this.x0;
                                if (myButtonCheck7 == null) {
                                    return;
                                }
                                myButtonCheck7.q(!myButtonCheck7.D, true);
                            }
                        });
                        MyLineRelative myLineRelative3 = dialogBackupSave2.B0;
                        if (myLineRelative3 != null) {
                            if (MainApp.K1) {
                                myLineRelative3.setBackgroundResource(R.drawable.selector_list_back_dark);
                                dialogBackupSave2.C0.setTextColor(-4079167);
                                dialogBackupSave2.D0.setTextColor(-328966);
                            } else {
                                myLineRelative3.setBackgroundResource(R.drawable.selector_list_back);
                                dialogBackupSave2.C0.setTextColor(-10395295);
                                dialogBackupSave2.D0.setTextColor(-16777216);
                            }
                            dialogBackupSave2.B0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogBackupSave.16
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view) {
                                    final DialogBackupSave dialogBackupSave3 = DialogBackupSave.this;
                                    ArrayList arrayList = dialogBackupSave3.Q0;
                                    if (arrayList != null && !arrayList.isEmpty()) {
                                        MyPopupMenu myPopupMenu = dialogBackupSave3.S0;
                                        if (myPopupMenu == null) {
                                            if (myPopupMenu != null) {
                                                dialogBackupSave3.Y = null;
                                                myPopupMenu.a();
                                                dialogBackupSave3.S0 = null;
                                            }
                                            if (dialogBackupSave3.b0 != null && view != null && dialogBackupSave3.Q0 != null) {
                                                ArrayList arrayList2 = new ArrayList();
                                                ArrayList arrayList3 = dialogBackupSave3.Q0;
                                                int size = arrayList3.size();
                                                int i13 = 0;
                                                int i14 = 0;
                                                while (i14 < size) {
                                                    Object obj = arrayList3.get(i14);
                                                    i14++;
                                                    arrayList2.add(new MyPopupAdapter.PopMenuItem(i13, MainUri.o(dialogBackupSave3.c0, (String) obj)));
                                                    i13++;
                                                }
                                                arrayList2.add(new MyPopupAdapter.PopMenuItem(i13, R.string.direct_select));
                                                MyPopupMenu myPopupMenu2 = new MyPopupMenu(dialogBackupSave3.b0, dialogBackupSave3.e0, view, arrayList2, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.dialog.DialogBackupSave.22
                                                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                    public final void a() {
                                                        String[] strArr = DialogBackupSave.V0;
                                                        DialogBackupSave dialogBackupSave4 = DialogBackupSave.this;
                                                        MyPopupMenu myPopupMenu3 = dialogBackupSave4.S0;
                                                        if (myPopupMenu3 != null) {
                                                            dialogBackupSave4.Y = null;
                                                            myPopupMenu3.a();
                                                            dialogBackupSave4.S0 = null;
                                                        }
                                                    }

                                                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                    public final boolean b(View view2, int i15) {
                                                        DialogBackupSave dialogBackupSave4 = DialogBackupSave.this;
                                                        ArrayList arrayList4 = dialogBackupSave4.Q0;
                                                        if (arrayList4 != null && i15 < arrayList4.size()) {
                                                            dialogBackupSave4.O((String) dialogBackupSave4.Q0.get(i15));
                                                            return true;
                                                        }
                                                        MainUtil.F4(dialogBackupSave4.b0, MainUri.e());
                                                        return true;
                                                    }
                                                });
                                                dialogBackupSave3.S0 = myPopupMenu2;
                                                dialogBackupSave3.Y = myPopupMenu2;
                                                return;
                                            }
                                            return;
                                        }
                                        return;
                                    }
                                    MainUtil.F4(dialogBackupSave3.b0, MainUri.e());
                                }
                            });
                        }
                        if (dialogBackupSave2.A0 != null) {
                            String m3 = MainUtil.m3(System.currentTimeMillis());
                            if (!TextUtils.isEmpty(m3) && m3.endsWith(".")) {
                                m3 = android.support.v4.media.a.d(1, 0, m3);
                            }
                            if (TextUtils.isEmpty(m3)) {
                                C = "Soul_backup";
                            } else {
                                C = android.support.v4.media.a.C("Soul_backup_", m3);
                            }
                            dialogBackupSave2.A0.setText(C);
                            if (dialogBackupSave2.D0 != null) {
                                if (TextUtils.isEmpty(MainUri.e())) {
                                    dialogBackupSave2.D0.setText(R.string.not_selected);
                                    dialogBackupSave2.D0.setTextColor(-769226);
                                } else {
                                    dialogBackupSave2.D0.setText(dialogBackupSave2.R0);
                                    AppCompatTextView appCompatTextView8 = dialogBackupSave2.D0;
                                    if (!MainApp.K1) {
                                        i12 = -16777216;
                                    }
                                    appCompatTextView8.setTextColor(i12);
                                }
                            }
                        }
                        dialogBackupSave2.L0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogBackupSave.17
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                DialogBackupSave dialogBackupSave3 = DialogBackupSave.this;
                                MyLineText myLineText2 = dialogBackupSave3.L0;
                                if (myLineText2 == null || dialogBackupSave3.N0) {
                                    return;
                                }
                                dialogBackupSave3.N0 = true;
                                myLineText2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogBackupSave.17.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        AnonymousClass17 anonymousClass17 = AnonymousClass17.this;
                                        DialogBackupSave dialogBackupSave4 = DialogBackupSave.this;
                                        if (dialogBackupSave4.M0 != null) {
                                            dialogBackupSave4.I();
                                        } else {
                                            DialogBackupSave.C(dialogBackupSave4);
                                        }
                                        DialogBackupSave.this.N0 = false;
                                    }
                                });
                            }
                        });
                        dialogBackupSave2.g(dialogBackupSave2.e0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogBackupSave.18
                            @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                            public final void a(View view) {
                                DialogBackupSave dialogBackupSave3 = DialogBackupSave.this;
                                if (dialogBackupSave3.e0 == null) {
                                    return;
                                }
                                dialogBackupSave3.show();
                            }
                        });
                    }
                }
            });
        }
    }

    public static void C(DialogBackupSave dialogBackupSave) {
        if (dialogBackupSave.c0 != null && dialogBackupSave.A0 != null) {
            if (dialogBackupSave.B0 != null && TextUtils.isEmpty(MainUri.e())) {
                MainUtil.b7(dialogBackupSave.B0);
                MainUtil.e8(dialogBackupSave.c0, R.string.select_dir);
                return;
            }
            String Q0 = MainUtil.Q0(dialogBackupSave.A0, true);
            if (TextUtils.isEmpty(Q0)) {
                MainUtil.b7(dialogBackupSave.A0);
                MainUtil.e8(dialogBackupSave.c0, R.string.input_name);
                return;
            }
            byte[] bytes = Q0.getBytes();
            if (bytes != null && bytes.length > 200) {
                MainUtil.b7(dialogBackupSave.A0);
                MainUtil.e8(dialogBackupSave.c0, R.string.long_name);
                return;
            }
            if (!dialogBackupSave.i0.D && !dialogBackupSave.l0.D && !dialogBackupSave.o0.D && !dialogBackupSave.r0.D && !dialogBackupSave.u0.D && !dialogBackupSave.x0.D) {
                MainUtil.b7(dialogBackupSave.g0);
                MainUtil.e8(dialogBackupSave.c0, R.string.backup_target);
                return;
            }
            final String p3 = MainUtil.p3(Q0.concat(".dat"));
            if (dialogBackupSave.d0 == null) {
                MainUri.e();
                MainUtil.X4(dialogBackupSave.c0, dialogBackupSave.A0);
                dialogBackupSave.D(p3, false);
            } else {
                MainUtil.X4(dialogBackupSave.c0, dialogBackupSave.A0);
                dialogBackupSave.N0 = true;
                dialogBackupSave.L(true);
                dialogBackupSave.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogBackupSave.20
                    /* JADX WARN: Code restructure failed: missing block: B:18:0x005a, code lost:
                    
                        if (r1.size() != 0) goto L15;
                     */
                    @Override // java.lang.Runnable
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public final void run() {
                        /*
                            r8 = this;
                            com.mycompany.app.dialog.DialogBackupSave r0 = com.mycompany.app.dialog.DialogBackupSave.this
                            com.mycompany.app.gdrive.GdriveManager r1 = r0.d0
                            if (r1 != 0) goto L7
                            goto L60
                        L7:
                            java.lang.String r2 = r2
                            java.lang.String r3 = "'"
                            java.lang.String r4 = "/"
                            android.text.TextUtils.isEmpty(r4)
                            r5 = 1
                            java.lang.String r4 = r1.c(r4, r5)
                            boolean r6 = android.text.TextUtils.isEmpty(r4)
                            r7 = 0
                            if (r6 == 0) goto L1e
                        L1c:
                            r5 = r7
                            goto L5c
                        L1e:
                            com.google.api.services.drive.Drive r6 = r1.b
                            if (r6 != 0) goto L23
                            goto L1c
                        L23:
                            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L1c
                            r6.<init>(r3)     // Catch: java.lang.Exception -> L1c
                            r6.append(r4)     // Catch: java.lang.Exception -> L1c
                            java.lang.String r3 = "' in parents and name='"
                            r6.append(r3)     // Catch: java.lang.Exception -> L1c
                            r6.append(r2)     // Catch: java.lang.Exception -> L1c
                            java.lang.String r2 = "' and mimeType!='application/vnd.google-apps.folder' and trashed=false"
                            r6.append(r2)     // Catch: java.lang.Exception -> L1c
                            com.google.api.services.drive.Drive r1 = r1.b     // Catch: java.lang.Exception -> L1c
                            com.google.api.services.drive.Drive$Files r1 = r1.files()     // Catch: java.lang.Exception -> L1c
                            com.google.api.services.drive.Drive$Files$List r1 = r1.list()     // Catch: java.lang.Exception -> L1c
                            java.lang.String r2 = r6.toString()     // Catch: java.lang.Exception -> L1c
                            com.google.api.services.drive.Drive$Files$List r1 = r1.setQ(r2)     // Catch: java.lang.Exception -> L1c
                            java.lang.Object r1 = r1.execute()     // Catch: java.lang.Exception -> L1c
                            com.google.api.services.drive.model.FileList r1 = (com.google.api.services.drive.model.FileList) r1     // Catch: java.lang.Exception -> L1c
                            java.util.List r1 = r1.getFiles()     // Catch: java.lang.Exception -> L1c
                            if (r1 == 0) goto L1c
                            int r1 = r1.size()     // Catch: java.lang.Exception -> L1c
                            if (r1 == 0) goto L1c
                        L5c:
                            com.mycompany.app.view.MyEditText r0 = r0.A0
                            if (r0 != 0) goto L61
                        L60:
                            return
                        L61:
                            com.mycompany.app.dialog.DialogBackupSave$20$1 r1 = new com.mycompany.app.dialog.DialogBackupSave$20$1
                            r1.<init>()
                            r0.post(r1)
                            return
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogBackupSave.AnonymousClass20.run():void");
                    }
                });
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [com.nostra13.universalimageloader.cache.disc.naming.Md5FileNameGenerator, java.lang.Object] */
    public static File E(File file, String str, String str2) {
        if (!TextUtils.isEmpty(str2)) {
            StringBuilder v = android.support.v4.media.a.v(str, "/");
            v.append(new Object().a(str2));
            String sb = v.toString();
            if (!MainUtil.u(file.getPath(), sb)) {
                return null;
            }
            return new File(sb);
        }
        return null;
    }

    public static File J(Context context, String str, boolean z, boolean z2) {
        if (z) {
            if (!PrefWeb.T) {
                return null;
            }
        } else if (!PrefWeb.S) {
            return null;
        }
        try {
            String V = MainUtil.V(context, z, z2);
            if (!TextUtils.isEmpty(V)) {
                File file = new File(V);
                if (file.exists()) {
                    return E(file, str, file.getName());
                }
                return null;
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public final void D(String str, boolean z) {
        DialogTask dialogTask = this.M0;
        if (dialogTask != null) {
            dialogTask.f12839c = true;
        }
        this.M0 = null;
        DialogTask dialogTask2 = new DialogTask(this, str, z);
        this.M0 = dialogTask2;
        dialogTask2.b(this.c0);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(5:(5:161|162|163|164|(2:166|136))|169|170|(2:178|179)(0)|136) */
    /* JADX WARN: Can't wrap try/catch for region: R(5:(5:234|235|236|237|(2:239|209))|242|243|(2:249|250)(0)|209) */
    /* JADX WARN: Can't wrap try/catch for region: R(5:(5:303|304|305|306|(2:308|278))|311|312|(2:322|323)(0)|278) */
    /* JADX WARN: Can't wrap try/catch for region: R(5:(5:468|469|470|471|(2:473|443))|476|477|(2:487|488)(0)|443) */
    /* JADX WARN: Can't wrap try/catch for region: R(5:(5:545|546|547|548|(2:550|520))|553|554|(2:562|563)(0)|520) */
    /* JADX WARN: Can't wrap try/catch for region: R(5:(5:618|619|620|621|(2:623|593))|626|627|(2:635|636)(0)|593) */
    /* JADX WARN: Can't wrap try/catch for region: R(5:(5:691|692|693|694|(2:696|666))|699|700|(2:708|709)(0)|666) */
    /* JADX WARN: Can't wrap try/catch for region: R(5:(5:764|765|766|767|(2:769|739))|772|773|(2:781|782)(0)|739) */
    /* JADX WARN: Can't wrap try/catch for region: R(5:(5:837|838|839|840|(2:842|812))|845|846|(2:854|855)(0)|812) */
    /* JADX WARN: Can't wrap try/catch for region: R(5:(5:912|913|914|915|(2:944|935))(1:947)|917|918|(2:926|927)(0)|935) */
    /* JADX WARN: Can't wrap try/catch for region: R(5:(8:380|381|382|383|384|385|386|(2:422|355))(1:428)|388|389|(2:401|402)(0)|355) */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:109:0x00d0 A[EDGE_INSN: B:109:0x00d0->B:23:0x00d0 BREAK  A[LOOP:0: B:52:0x00a6->B:73:0x0134], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:138:0x0226  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x0235  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x0245  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x0230 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:151:0x022b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:211:0x02ce  */
    /* JADX WARN: Removed duplicated region for block: B:215:0x02dd  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x02ed  */
    /* JADX WARN: Removed duplicated region for block: B:220:0x02d8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:224:0x02d3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0166  */
    /* JADX WARN: Removed duplicated region for block: B:280:0x0394  */
    /* JADX WARN: Removed duplicated region for block: B:284:0x03a3  */
    /* JADX WARN: Removed duplicated region for block: B:287:0x03b3  */
    /* JADX WARN: Removed duplicated region for block: B:289:0x039e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:293:0x0399 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0189  */
    /* JADX WARN: Removed duplicated region for block: B:357:0x0472  */
    /* JADX WARN: Removed duplicated region for block: B:361:0x0481  */
    /* JADX WARN: Removed duplicated region for block: B:364:0x0491  */
    /* JADX WARN: Removed duplicated region for block: B:366:0x047c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0170 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:370:0x0477 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x016b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:422:0x041e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:445:0x0536  */
    /* JADX WARN: Removed duplicated region for block: B:449:0x0545  */
    /* JADX WARN: Removed duplicated region for block: B:452:0x0555  */
    /* JADX WARN: Removed duplicated region for block: B:454:0x0540 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:458:0x053b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:522:0x05e9  */
    /* JADX WARN: Removed duplicated region for block: B:526:0x05f8  */
    /* JADX WARN: Removed duplicated region for block: B:529:0x0608  */
    /* JADX WARN: Removed duplicated region for block: B:531:0x05f3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:535:0x05ee A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00e2 A[Catch: Exception -> 0x0142, TryCatch #86 {Exception -> 0x0142, blocks: (B:56:0x00db, B:58:0x00e2, B:60:0x00ed, B:62:0x00f8, B:64:0x0103, B:66:0x010e, B:68:0x0119), top: B:55:0x00db }] */
    /* JADX WARN: Removed duplicated region for block: B:595:0x069c  */
    /* JADX WARN: Removed duplicated region for block: B:599:0x06ab  */
    /* JADX WARN: Removed duplicated region for block: B:602:0x06bb  */
    /* JADX WARN: Removed duplicated region for block: B:604:0x06a6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:608:0x06a1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:668:0x0753  */
    /* JADX WARN: Removed duplicated region for block: B:672:0x0762  */
    /* JADX WARN: Removed duplicated region for block: B:675:0x0772  */
    /* JADX WARN: Removed duplicated region for block: B:677:0x075d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:681:0x0758 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x012a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:741:0x0808  */
    /* JADX WARN: Removed duplicated region for block: B:745:0x0817  */
    /* JADX WARN: Removed duplicated region for block: B:748:0x0827  */
    /* JADX WARN: Removed duplicated region for block: B:750:0x0812 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:754:0x080d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0127 A[EDGE_INSN: B:79:0x0127->B:80:0x0127 BREAK  A[LOOP:0: B:52:0x00a6->B:73:0x0134], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:814:0x08bb  */
    /* JADX WARN: Removed duplicated region for block: B:818:0x08ca  */
    /* JADX WARN: Removed duplicated region for block: B:821:0x08da  */
    /* JADX WARN: Removed duplicated region for block: B:823:0x08c5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:827:0x08c0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:887:0x0971  */
    /* JADX WARN: Removed duplicated region for block: B:891:0x0980  */
    /* JADX WARN: Removed duplicated region for block: B:896:0x0991  */
    /* JADX WARN: Removed duplicated region for block: B:898:0x097b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:902:0x0976 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x00e1 A[ADDED_TO_REGION, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r10v60 */
    /* JADX WARN: Type inference failed for: r10v62 */
    /* JADX WARN: Type inference failed for: r10v63 */
    /* JADX WARN: Type inference failed for: r10v65 */
    /* JADX WARN: Type inference failed for: r10v66 */
    /* JADX WARN: Type inference failed for: r10v67, types: [java.io.BufferedWriter] */
    /* JADX WARN: Type inference failed for: r10v68 */
    /* JADX WARN: Type inference failed for: r10v69 */
    /* JADX WARN: Type inference failed for: r10v70 */
    /* JADX WARN: Type inference failed for: r10v73 */
    /* JADX WARN: Type inference failed for: r10v75 */
    /* JADX WARN: Type inference failed for: r10v76 */
    /* JADX WARN: Type inference failed for: r10v78 */
    /* JADX WARN: Type inference failed for: r10v79 */
    /* JADX WARN: Type inference failed for: r10v80, types: [java.io.BufferedWriter] */
    /* JADX WARN: Type inference failed for: r10v81 */
    /* JADX WARN: Type inference failed for: r10v82 */
    /* JADX WARN: Type inference failed for: r10v83 */
    /* JADX WARN: Type inference failed for: r12v35 */
    /* JADX WARN: Type inference failed for: r12v37 */
    /* JADX WARN: Type inference failed for: r12v38 */
    /* JADX WARN: Type inference failed for: r12v40 */
    /* JADX WARN: Type inference failed for: r12v41 */
    /* JADX WARN: Type inference failed for: r12v42, types: [java.io.BufferedWriter] */
    /* JADX WARN: Type inference failed for: r12v43 */
    /* JADX WARN: Type inference failed for: r12v44 */
    /* JADX WARN: Type inference failed for: r12v46 */
    /* JADX WARN: Type inference failed for: r12v47 */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v21 */
    /* JADX WARN: Type inference failed for: r1v24, types: [java.io.BufferedWriter] */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v15 */
    /* JADX WARN: Type inference failed for: r4v16 */
    /* JADX WARN: Type inference failed for: r4v17, types: [java.io.BufferedWriter] */
    /* JADX WARN: Type inference failed for: r4v18 */
    /* JADX WARN: Type inference failed for: r4v19 */
    /* JADX WARN: Type inference failed for: r4v20 */
    /* JADX WARN: Type inference failed for: r5v3, types: [com.nostra13.universalimageloader.cache.disc.naming.Md5FileNameGenerator, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v11, types: [java.io.BufferedWriter] */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v13 */
    /* JADX WARN: Type inference failed for: r7v14 */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* JADX WARN: Type inference failed for: r7v9 */
    /* JADX WARN: Type inference failed for: r8v13 */
    /* JADX WARN: Type inference failed for: r8v15 */
    /* JADX WARN: Type inference failed for: r8v16 */
    /* JADX WARN: Type inference failed for: r8v18 */
    /* JADX WARN: Type inference failed for: r8v19 */
    /* JADX WARN: Type inference failed for: r8v20, types: [java.io.BufferedWriter] */
    /* JADX WARN: Type inference failed for: r8v21 */
    /* JADX WARN: Type inference failed for: r8v22 */
    /* JADX WARN: Type inference failed for: r8v23 */
    /* JADX WARN: Type inference failed for: r8v24 */
    /* JADX WARN: Type inference failed for: r8v26 */
    /* JADX WARN: Type inference failed for: r8v27 */
    /* JADX WARN: Type inference failed for: r8v29 */
    /* JADX WARN: Type inference failed for: r8v3, types: [java.io.BufferedWriter] */
    /* JADX WARN: Type inference failed for: r8v30 */
    /* JADX WARN: Type inference failed for: r8v31, types: [java.io.BufferedWriter] */
    /* JADX WARN: Type inference failed for: r8v32 */
    /* JADX WARN: Type inference failed for: r8v33 */
    /* JADX WARN: Type inference failed for: r8v34 */
    /* JADX WARN: Type inference failed for: r8v35 */
    /* JADX WARN: Type inference failed for: r8v37 */
    /* JADX WARN: Type inference failed for: r8v38 */
    /* JADX WARN: Type inference failed for: r8v40 */
    /* JADX WARN: Type inference failed for: r8v41 */
    /* JADX WARN: Type inference failed for: r8v42, types: [java.io.BufferedWriter] */
    /* JADX WARN: Type inference failed for: r8v43 */
    /* JADX WARN: Type inference failed for: r8v44 */
    /* JADX WARN: Type inference failed for: r8v45 */
    /* JADX WARN: Type inference failed for: r8v46 */
    /* JADX WARN: Type inference failed for: r8v48 */
    /* JADX WARN: Type inference failed for: r8v49 */
    /* JADX WARN: Type inference failed for: r8v51 */
    /* JADX WARN: Type inference failed for: r8v52 */
    /* JADX WARN: Type inference failed for: r8v53, types: [java.io.BufferedWriter] */
    /* JADX WARN: Type inference failed for: r8v54 */
    /* JADX WARN: Type inference failed for: r8v55 */
    /* JADX WARN: Type inference failed for: r8v56 */
    /* JADX WARN: Type inference failed for: r8v69 */
    /* JADX WARN: Type inference failed for: r8v71 */
    /* JADX WARN: Type inference failed for: r8v72 */
    /* JADX WARN: Type inference failed for: r8v74 */
    /* JADX WARN: Type inference failed for: r8v75 */
    /* JADX WARN: Type inference failed for: r8v76, types: [java.io.BufferedWriter] */
    /* JADX WARN: Type inference failed for: r8v77 */
    /* JADX WARN: Type inference failed for: r8v78 */
    /* JADX WARN: Type inference failed for: r8v79 */
    /* JADX WARN: Type inference failed for: r8v93 */
    /* JADX WARN: Type inference failed for: r8v94 */
    /* JADX WARN: Type inference failed for: r8v95 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.io.File F(android.content.Context r23, java.lang.String r24, java.lang.String r25) {
        /*
            Method dump skipped, instructions count: 2651
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogBackupSave.F(android.content.Context, java.lang.String, java.lang.String):java.io.File");
    }

    public final void G() {
        DialogSetMsg dialogSetMsg = this.T0;
        if (dialogSetMsg != null) {
            dialogSetMsg.dismiss();
            this.T0 = null;
        }
    }

    public final boolean H() {
        if (!this.O0) {
            DialogTask dialogTask = this.M0;
            if (dialogTask != null && dialogTask.f12839c) {
                return true;
            }
            return false;
        }
        return true;
    }

    public final void I() {
        if (this.L0 != null && this.M0 != null) {
            L(true);
            M(R.string.canceling);
            K(false);
            this.O0 = true;
            DialogTask dialogTask = this.M0;
            if (dialogTask != null) {
                dialogTask.f12839c = true;
            }
            this.M0 = null;
            return;
        }
        dismiss();
    }

    public final void K(boolean z) {
        int i;
        int i2;
        MyLineText myLineText = this.L0;
        if (myLineText == null) {
            return;
        }
        myLineText.setEnabled(z);
        if (z) {
            MyLineText myLineText2 = this.L0;
            if (MainApp.K1) {
                i2 = -328966;
            } else {
                i2 = -14784824;
            }
            myLineText2.setTextColor(i2);
            return;
        }
        MyLineText myLineText3 = this.L0;
        if (MainApp.K1) {
            i = -8355712;
        } else {
            i = -2434342;
        }
        myLineText3.setTextColor(i);
    }

    public final void L(boolean z) {
        MyDialogLinear myDialogLinear = this.e0;
        if (myDialogLinear == null) {
            return;
        }
        myDialogLinear.e(0, MainApp.g1, z, false);
    }

    public final void M(int i) {
        AppCompatTextView appCompatTextView = this.K0;
        if (appCompatTextView == null) {
            return;
        }
        appCompatTextView.setText(i);
        this.E0.setVisibility(8);
        this.K0.setVisibility(0);
    }

    public final void N() {
        int i = this.H0;
        if (i != 0) {
            int i2 = this.I0 + 1;
            this.I0 = i2;
            if (i2 < i) {
                long currentTimeMillis = System.currentTimeMillis();
                if (currentTimeMillis - this.J0 >= 200) {
                    this.J0 = currentTimeMillis;
                } else {
                    return;
                }
            }
            Handler handler = this.i;
            if (handler == null) {
                return;
            }
            Runnable runnable = this.U0;
            handler.removeCallbacks(runnable);
            this.i.post(runnable);
        }
    }

    public final void O(String str) {
        if (TextUtils.isEmpty(str) || str.equals(PrefPath.r)) {
            return;
        }
        PrefPath.r = str;
        s(new Runnable() { // from class: com.mycompany.app.dialog.DialogBackupSave.19
            @Override // java.lang.Runnable
            public final void run() {
                DialogBackupSave dialogBackupSave = DialogBackupSave.this;
                if (dialogBackupSave.c0 != null) {
                    String e = MainUri.e();
                    PrefSet.h(dialogBackupSave.c0, e);
                    dialogBackupSave.R0 = MainUri.h(dialogBackupSave.c0, e);
                    Handler handler = dialogBackupSave.i;
                    if (handler == null) {
                        return;
                    }
                    handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogBackupSave.19.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            int i;
                            DialogBackupSave dialogBackupSave2 = DialogBackupSave.this;
                            AppCompatTextView appCompatTextView = dialogBackupSave2.D0;
                            if (appCompatTextView == null) {
                                return;
                            }
                            appCompatTextView.setText(dialogBackupSave2.R0);
                            AppCompatTextView appCompatTextView2 = dialogBackupSave2.D0;
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
        });
    }

    public final boolean P(ArrayList arrayList, String str) {
        if (!arrayList.isEmpty()) {
            try {
                ZipFile zipFile = new ZipFile(str);
                zipFile.h(MainConst.J);
                ProgressMonitor progressMonitor = zipFile.e;
                ZipParameters zipParameters = new ZipParameters();
                zipParameters.f22013c = 8;
                zipParameters.f = 5;
                zipParameters.g = true;
                zipParameters.h = 0;
                String D2 = MainUtil.D2(this.a0);
                if (D2 != null) {
                    zipParameters.i = D2.toCharArray();
                }
                zipFile.a(arrayList, zipParameters);
                if (progressMonitor != null) {
                    if (progressMonitor.d != 2) {
                        return true;
                    }
                }
            } catch (ZipException unused) {
            }
        }
        return false;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void cancel() {
        I();
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.c0 == null) {
            return;
        }
        DialogTask dialogTask = this.M0;
        if (dialogTask != null) {
            dialogTask.f12839c = true;
        }
        this.M0 = null;
        G();
        MyPopupMenu myPopupMenu = this.S0;
        if (myPopupMenu != null) {
            this.Y = null;
            myPopupMenu.a();
            this.S0 = null;
        }
        MyDialogLinear myDialogLinear = this.e0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.e0 = null;
        }
        MyLineFrame myLineFrame = this.g0;
        if (myLineFrame != null) {
            myLineFrame.g();
            this.g0 = null;
        }
        MyButtonCheck myButtonCheck = this.i0;
        if (myButtonCheck != null) {
            myButtonCheck.l();
            this.i0 = null;
        }
        MyLineFrame myLineFrame2 = this.j0;
        if (myLineFrame2 != null) {
            myLineFrame2.g();
            this.j0 = null;
        }
        MyButtonCheck myButtonCheck2 = this.l0;
        if (myButtonCheck2 != null) {
            myButtonCheck2.l();
            this.l0 = null;
        }
        MyLineFrame myLineFrame3 = this.m0;
        if (myLineFrame3 != null) {
            myLineFrame3.g();
            this.m0 = null;
        }
        MyButtonCheck myButtonCheck3 = this.o0;
        if (myButtonCheck3 != null) {
            myButtonCheck3.l();
            this.o0 = null;
        }
        MyLineFrame myLineFrame4 = this.p0;
        if (myLineFrame4 != null) {
            myLineFrame4.g();
            this.p0 = null;
        }
        MyButtonCheck myButtonCheck4 = this.r0;
        if (myButtonCheck4 != null) {
            myButtonCheck4.l();
            this.r0 = null;
        }
        MyLineFrame myLineFrame5 = this.s0;
        if (myLineFrame5 != null) {
            myLineFrame5.g();
            this.s0 = null;
        }
        MyButtonCheck myButtonCheck5 = this.u0;
        if (myButtonCheck5 != null) {
            myButtonCheck5.l();
            this.u0 = null;
        }
        MyRoundItem myRoundItem = this.v0;
        if (myRoundItem != null) {
            myRoundItem.b();
            this.v0 = null;
        }
        MyButtonCheck myButtonCheck6 = this.x0;
        if (myButtonCheck6 != null) {
            myButtonCheck6.l();
            this.x0 = null;
        }
        MyRoundItem myRoundItem2 = this.y0;
        if (myRoundItem2 != null) {
            myRoundItem2.b();
            this.y0 = null;
        }
        MyEditText myEditText = this.A0;
        if (myEditText != null) {
            myEditText.c();
            this.A0 = null;
        }
        MyLineRelative myLineRelative = this.B0;
        if (myLineRelative != null) {
            myLineRelative.e();
            this.B0 = null;
        }
        MyProgressBar myProgressBar = this.G0;
        if (myProgressBar != null) {
            myProgressBar.f();
            this.G0 = null;
        }
        this.b0 = null;
        this.c0 = null;
        this.d0 = null;
        this.f0 = null;
        this.h0 = null;
        this.k0 = null;
        this.n0 = null;
        this.q0 = null;
        this.t0 = null;
        this.w0 = null;
        this.z0 = null;
        this.C0 = null;
        this.D0 = null;
        this.E0 = null;
        this.F0 = null;
        this.K0 = null;
        this.L0 = null;
        this.Q0 = null;
        this.R0 = null;
        super.dismiss();
    }
}
