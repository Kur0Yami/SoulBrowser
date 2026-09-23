package com.mycompany.app.dialog;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.widget.NestedScrollView;
import com.mycompany.app.async.MyAsyncTask;
import com.mycompany.app.compress.Compress;
import com.mycompany.app.compress.CompressUtilZip2;
import com.mycompany.app.db.book.DbAdsCmd;
import com.mycompany.app.db.book.DbBookAds;
import com.mycompany.app.db.book.DbBookAgent;
import com.mycompany.app.db.book.DbBookBlock;
import com.mycompany.app.db.book.DbBookDc;
import com.mycompany.app.db.book.DbBookFilter;
import com.mycompany.app.db.book.DbBookHistory;
import com.mycompany.app.db.book.DbBookIcon;
import com.mycompany.app.db.book.DbBookJava;
import com.mycompany.app.db.book.DbBookTheme;
import com.mycompany.app.db.book.DbBookLink;
import com.mycompany.app.db.book.DbBookLocale;
import com.mycompany.app.db.book.DbBookMemo;
import com.mycompany.app.db.book.DbBookOver;
import com.mycompany.app.db.book.DbBookPass;
import com.mycompany.app.db.book.DbBookPop;
import com.mycompany.app.db.book.DbBookQuick;
import com.mycompany.app.db.book.DbBookRecent;
import com.mycompany.app.db.book.DbBookScript;
import com.mycompany.app.db.book.DbBookSearch;
import com.mycompany.app.db.book.DbBookTab;
import com.mycompany.app.db.book.DbBookTabOld;
import com.mycompany.app.db.book.DbBookTmem;
import com.mycompany.app.db.book.DbBookTrans;
import com.mycompany.app.db.book.DbBookUser;
import com.mycompany.app.db.book.DbBookWeb;
import com.mycompany.app.db.book.DbRecentLang;
import com.mycompany.app.db.book.DbTabState;
import com.mycompany.app.db.book.DbTabThumb;
import com.mycompany.app.dialog.DialogSetFull;
import com.mycompany.app.gdrive.GdriveManager;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.setting.SettingBackup;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonCheck;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyLineFrame;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyProgressBar;
import com.mycompany.app.view.MyRoundItem;
import java.io.File;
import java.io.OutputStream;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Locale;
import net.lingala.zip4j.core.ZipFile;
import net.lingala.zip4j.io.ZipInputStream;
import net.lingala.zip4j.model.FileHeader;

/* loaded from: classes3.dex */
public class DialogBackupLoad extends MyDialogBottom {
    public int A0;
    public int B0;
    public long C0;
    public AppCompatTextView D0;
    public MyLineText E0;
    public DialogTask F0;
    public boolean G0;
    public String H0;
    public String I0;
    public String J0;
    public boolean K0;
    public boolean L0;
    public boolean M0;
    public String N0;
    public String O0;
    public boolean P0;
    public boolean Q0;
    public int R0;
    public final Runnable S0;
    public Context a0;
    public DialogSetFull.DialogApplyListener b0;
    public GdriveManager c0;
    public MyDialogLinear d0;
    public NestedScrollView e0;
    public MyLineFrame f0;
    public AppCompatTextView g0;
    public MyButtonCheck h0;
    public MyLineFrame i0;
    public AppCompatTextView j0;
    public MyButtonCheck k0;
    public MyLineFrame l0;
    public AppCompatTextView m0;
    public MyButtonCheck n0;
    public MyLineFrame o0;
    public AppCompatTextView p0;
    public MyButtonCheck q0;
    public MyLineFrame r0;
    public AppCompatTextView s0;
    public MyButtonCheck t0;
    public MyRoundItem u0;
    public AppCompatTextView v0;
    public MyButtonCheck w0;
    public FrameLayout x0;
    public AppCompatTextView y0;
    public MyProgressBar z0;

    /* loaded from: classes3.dex */
    public static class DbItem {

        /* renamed from: a, reason: collision with root package name */
        public SQLiteDatabase f13008a;
        public String b;

        /* renamed from: c, reason: collision with root package name */
        public boolean f13009c;
    }

    /* loaded from: classes3.dex */
    public static class DialogTask extends MyAsyncTask {
        public final WeakReference e;
        public final String f;
        public boolean g;
        public boolean h;

        public DialogTask(DialogBackupLoad dialogBackupLoad) {
            WeakReference weakReference = new WeakReference(dialogBackupLoad);
            this.e = weakReference;
            DialogBackupLoad dialogBackupLoad2 = (DialogBackupLoad) weakReference.get();
            if (dialogBackupLoad2 == null) {
                return;
            }
            this.f = dialogBackupLoad2.H0;
            dialogBackupLoad2.K0 = false;
            dialogBackupLoad2.L0 = false;
            dialogBackupLoad2.M0 = false;
            dialogBackupLoad2.L(true);
            dialogBackupLoad2.e0.setVisibility(8);
            dialogBackupLoad2.M(R.string.loading);
            dialogBackupLoad2.I(true);
            dialogBackupLoad2.E0.setText(R.string.cancel);
            dialogBackupLoad2.setCanceledOnTouchOutside(false);
        }

        /* JADX WARN: Code restructure failed: missing block: B:314:0x0524, code lost:
        
            if (r7 == null) goto L353;
         */
        /* JADX WARN: Code restructure failed: missing block: B:315:0x0526, code lost:
        
            r24 = r20;
            r20 = r23;
         */
        /* JADX WARN: Code restructure failed: missing block: B:317:0x052a, code lost:
        
            r23 = r7.toString();
         */
        /* JADX WARN: Code restructure failed: missing block: B:318:0x052e, code lost:
        
            if (r24 == false) goto L335;
         */
        /* JADX WARN: Code restructure failed: missing block: B:320:0x0534, code lost:
        
            r28 = r4;
         */
        /* JADX WARN: Code restructure failed: missing block: B:322:0x0537, code lost:
        
            com.mycompany.app.db.DbUtil.a(r3.f13008a, r3.b, null, null);
            r0 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:323:0x0549, code lost:
        
            r2.H();
            r4 = com.mycompany.app.script.Script.c(r20, r21, r22, r23, r2.N0, r2.O0, false);
         */
        /* JADX WARN: Code restructure failed: missing block: B:325:0x055c, code lost:
        
            if (r4 == null) goto L350;
         */
        /* JADX WARN: Code restructure failed: missing block: B:326:0x055e, code lost:
        
            r20 = r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:329:0x0562, code lost:
        
            r29 = r6;
         */
        /* JADX WARN: Code restructure failed: missing block: B:332:0x0566, code lost:
        
            r30 = r8;
         */
        /* JADX WARN: Code restructure failed: missing block: B:335:0x056d, code lost:
        
            if (com.mycompany.app.db.book.DbBookScript.o(r20, r4, null, r2.N0, r2.O0) == null) goto L351;
         */
        /* JADX WARN: Code restructure failed: missing block: B:336:0x056f, code lost:
        
            r2.L0 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:337:0x0582, code lost:
        
            r2.N();
         */
        /* JADX WARN: Code restructure failed: missing block: B:338:0x0585, code lost:
        
            r24 = r20;
            r20 = r20;
            r7 = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:343:0x0573, code lost:
        
            r4 = r20;
         */
        /* JADX WARN: Code restructure failed: missing block: B:346:0x0576, code lost:
        
            r30 = r8;
         */
        /* JADX WARN: Code restructure failed: missing block: B:348:0x0579, code lost:
        
            r29 = r6;
         */
        /* JADX WARN: Code restructure failed: missing block: B:349:0x057c, code lost:
        
            r20 = r0;
            r29 = r6;
            r30 = r8;
         */
        /* JADX WARN: Code restructure failed: missing block: B:352:0x053c, code lost:
        
            r29 = r6;
            r30 = r8;
         */
        /* JADX WARN: Code restructure failed: missing block: B:353:0x0545, code lost:
        
            r28 = r4;
            r0 = r24;
         */
        /* JADX WARN: Code restructure failed: missing block: B:355:0x0542, code lost:
        
            r28 = r4;
         */
        /* JADX WARN: Code restructure failed: missing block: B:356:0x058b, code lost:
        
            r28 = r4;
            r29 = r6;
            r30 = r8;
            r24 = r20;
            r20 = r23;
         */
        /* JADX WARN: Code restructure failed: missing block: B:462:0x06a0, code lost:
        
            r23 = r7;
         */
        /* JADX WARN: Removed duplicated region for block: B:102:0x024f  */
        /* JADX WARN: Removed duplicated region for block: B:118:0x0281  */
        /* JADX WARN: Removed duplicated region for block: B:11:0x00b4  */
        /* JADX WARN: Removed duplicated region for block: B:134:0x02b4  */
        /* JADX WARN: Removed duplicated region for block: B:150:0x02e8  */
        /* JADX WARN: Removed duplicated region for block: B:166:0x031c  */
        /* JADX WARN: Removed duplicated region for block: B:182:0x0350  */
        /* JADX WARN: Removed duplicated region for block: B:234:0x0744  */
        /* JADX WARN: Removed duplicated region for block: B:305:0x0634 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:309:0x062f A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:418:0x06f5  */
        /* JADX WARN: Removed duplicated region for block: B:428:0x072b A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:432:0x0726 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:520:0x040f A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:524:0x040a A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:550:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:582:0x00b0  */
        /* JADX WARN: Removed duplicated region for block: B:583:0x00a6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:587:0x00a1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:595:0x0099  */
        /* JADX WARN: Removed duplicated region for block: B:86:0x021a  */
        /* JADX WARN: Type inference failed for: r0v118, types: [com.nostra13.universalimageloader.cache.disc.naming.Md5FileNameGenerator, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r3v9, types: [com.nostra13.universalimageloader.cache.disc.naming.Md5FileNameGenerator, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r5v39, types: [com.mycompany.app.dialog.DialogBackupLoad$PrefName, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r7v46, types: [com.mycompany.app.dialog.DialogBackupLoad$PrefName, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r7v47, types: [com.nostra13.universalimageloader.cache.disc.naming.Md5FileNameGenerator, java.lang.Object] */
        @Override // com.mycompany.app.async.MyAsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a() {
            /*
                Method dump skipped, instructions count: 1872
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogBackupLoad.DialogTask.a():void");
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            DialogBackupLoad dialogBackupLoad;
            WeakReference weakReference = this.e;
            if (weakReference != null && (dialogBackupLoad = (DialogBackupLoad) weakReference.get()) != null) {
                dialogBackupLoad.F0 = null;
                if (dialogBackupLoad.D0 == null) {
                    return;
                }
                if (dialogBackupLoad.L0) {
                    dialogBackupLoad.M(R.string.app_restart);
                    DialogSetFull.DialogApplyListener dialogApplyListener = dialogBackupLoad.b0;
                    if (dialogApplyListener != null) {
                        dialogApplyListener.a();
                    }
                    dialogBackupLoad.L(false);
                    dialogBackupLoad.I(true);
                    dialogBackupLoad.E0.setText(R.string.ok);
                    dialogBackupLoad.setCanceledOnTouchOutside(true);
                    return;
                }
                MainUtil.e8(dialogBackupLoad.a0, R.string.cancelled);
                dialogBackupLoad.dismiss();
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            DialogBackupLoad dialogBackupLoad;
            WeakReference weakReference = this.e;
            if (weakReference != null && (dialogBackupLoad = (DialogBackupLoad) weakReference.get()) != null) {
                dialogBackupLoad.F0 = null;
                if (dialogBackupLoad.D0 == null) {
                    return;
                }
                if (dialogBackupLoad.L0) {
                    dialogBackupLoad.M(R.string.app_restart);
                    DialogSetFull.DialogApplyListener dialogApplyListener = dialogBackupLoad.b0;
                    if (dialogApplyListener != null) {
                        dialogApplyListener.a();
                    }
                    dialogBackupLoad.L(false);
                    dialogBackupLoad.I(true);
                    dialogBackupLoad.E0.setText(R.string.ok);
                    dialogBackupLoad.setCanceledOnTouchOutside(true);
                    return;
                }
                if (dialogBackupLoad.F()) {
                    MainUtil.e8(dialogBackupLoad.a0, R.string.cancelled);
                    dialogBackupLoad.dismiss();
                    return;
                }
                if (this.g) {
                    dialogBackupLoad.M0 = true;
                    StringBuilder sb = new StringBuilder();
                    com.google.android.gms.internal.mlkit_vision_text_common.a.x(dialogBackupLoad.a0, R.string.backup_changed_1, sb, "\n");
                    com.google.android.gms.internal.mlkit_vision_text_common.a.x(dialogBackupLoad.a0, R.string.backup_changed_2, sb, "\n");
                    sb.append(dialogBackupLoad.a0.getString(R.string.backup_changed_3));
                    dialogBackupLoad.L(false);
                    String sb2 = sb.toString();
                    AppCompatTextView appCompatTextView = dialogBackupLoad.D0;
                    if (appCompatTextView != null) {
                        appCompatTextView.setText(sb2);
                        dialogBackupLoad.x0.setVisibility(8);
                        dialogBackupLoad.D0.setVisibility(0);
                    }
                    dialogBackupLoad.I(true);
                    dialogBackupLoad.E0.setText(R.string.ok);
                    dialogBackupLoad.setCanceledOnTouchOutside(true);
                    return;
                }
                if (this.h) {
                    dialogBackupLoad.M0 = true;
                    dialogBackupLoad.L(false);
                    dialogBackupLoad.M(R.string.not_changed);
                    dialogBackupLoad.I(true);
                    dialogBackupLoad.E0.setText(R.string.ok);
                    dialogBackupLoad.setCanceledOnTouchOutside(true);
                    return;
                }
                dialogBackupLoad.L(false);
                dialogBackupLoad.M(R.string.fail);
                dialogBackupLoad.I(true);
                dialogBackupLoad.E0.setText(R.string.retry);
                dialogBackupLoad.setCanceledOnTouchOutside(true);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class PrefName {

        /* renamed from: a, reason: collision with root package name */
        public String f13010a;
        public String b;
    }

    public DialogBackupLoad(SettingBackup settingBackup, String str, GdriveManager gdriveManager, DialogSetFull.DialogApplyListener dialogApplyListener) {
        super(settingBackup);
        this.S0 = new Runnable() { // from class: com.mycompany.app.dialog.DialogBackupLoad.19
            @Override // java.lang.Runnable
            public final void run() {
                DialogBackupLoad dialogBackupLoad = DialogBackupLoad.this;
                MyProgressBar myProgressBar = dialogBackupLoad.z0;
                if (myProgressBar == null) {
                    return;
                }
                int i = dialogBackupLoad.B0;
                int i2 = dialogBackupLoad.A0;
                if (i > i2) {
                    dialogBackupLoad.B0 = i2;
                }
                myProgressBar.setMax(i2);
                dialogBackupLoad.z0.setProgress(dialogBackupLoad.B0);
            }
        };
        this.a0 = getContext();
        this.b0 = dialogApplyListener;
        this.H0 = str;
        this.c0 = gdriveManager;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogBackupLoad.1
            @Override // java.lang.Runnable
            public final void run() {
                final DialogBackupLoad dialogBackupLoad = DialogBackupLoad.this;
                Context context = dialogBackupLoad.a0;
                if (context != null) {
                    int i = R.id.item_seek_text;
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
                    int i2 = MainApp.g1;
                    FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(i2, i2);
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
                    int i3 = MainApp.g1;
                    FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(i3, i3);
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
                    int i4 = MainApp.g1;
                    FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(i4, i4);
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
                    int i5 = MainApp.g1;
                    FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(i5, i5);
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
                    int i6 = MainApp.g1;
                    FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(i6, i6);
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
                    int i7 = MainApp.g1;
                    RelativeLayout.LayoutParams layoutParams8 = new RelativeLayout.LayoutParams(i7, i7);
                    layoutParams8.addRule(15);
                    layoutParams8.addRule(21);
                    myRoundItem.addView(myButtonCheck6, layoutParams8);
                    int G2 = (int) MainUtil.G(context, 88.0f);
                    FrameLayout frameLayout = new FrameLayout(context);
                    int i8 = MainApp.E1;
                    frameLayout.setPadding(i8, 0, i8, 0);
                    frameLayout.setVisibility(8);
                    q.addView(frameLayout, -1, G2);
                    RelativeLayout relativeLayout = new RelativeLayout(context);
                    FrameLayout.LayoutParams layoutParams9 = new FrameLayout.LayoutParams(-1, -2);
                    layoutParams9.gravity = 16;
                    frameLayout.addView(relativeLayout, layoutParams9);
                    AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
                    appCompatTextView.setId(i);
                    appCompatTextView.setTextSize(1, 16.0f);
                    appCompatTextView.setText(R.string.size);
                    relativeLayout.addView(appCompatTextView, -2, -2);
                    int G3 = (int) MainUtil.G(context, 12.0f);
                    MyProgressBar myProgressBar = new MyProgressBar(context);
                    RelativeLayout.LayoutParams h = androidx.work.impl.workers.a.h(-1, G3, 3, i);
                    h.topMargin = MainApp.F1;
                    relativeLayout.addView(myProgressBar, h);
                    AppCompatTextView appCompatTextView2 = new AppCompatTextView(context, null);
                    int i9 = MainApp.E1;
                    appCompatTextView2.setPadding(i9, i9, i9, i9);
                    appCompatTextView2.setGravity(17);
                    appCompatTextView2.setLineSpacing(MainApp.F1, 1.0f);
                    appCompatTextView2.setTextSize(1, 16.0f);
                    appCompatTextView2.setMinHeight(G2);
                    appCompatTextView2.setVisibility(8);
                    q.addView(appCompatTextView2, -1, -2);
                    MyLineText myLineText = new MyLineText(context);
                    myLineText.setGravity(17);
                    myLineText.setTextSize(1, 16.0f);
                    myLineText.setLinePad(MainApp.E1);
                    myLineText.setLineUp(true);
                    q.addView(myLineText, -1, MainApp.g1);
                    dialogBackupLoad.d0 = q;
                    dialogBackupLoad.e0 = m;
                    dialogBackupLoad.f0 = myLineFrame;
                    dialogBackupLoad.g0 = j;
                    dialogBackupLoad.h0 = myButtonCheck;
                    dialogBackupLoad.i0 = myLineFrame2;
                    dialogBackupLoad.j0 = j2;
                    dialogBackupLoad.k0 = myButtonCheck2;
                    dialogBackupLoad.l0 = myLineFrame3;
                    dialogBackupLoad.m0 = j3;
                    dialogBackupLoad.n0 = myButtonCheck3;
                    dialogBackupLoad.o0 = myLineFrame4;
                    dialogBackupLoad.p0 = j4;
                    dialogBackupLoad.q0 = myButtonCheck4;
                    dialogBackupLoad.r0 = myLineFrame5;
                    dialogBackupLoad.s0 = j5;
                    dialogBackupLoad.t0 = myButtonCheck5;
                    dialogBackupLoad.u0 = myRoundItem;
                    dialogBackupLoad.v0 = j6;
                    dialogBackupLoad.w0 = myButtonCheck6;
                    dialogBackupLoad.x0 = frameLayout;
                    dialogBackupLoad.y0 = appCompatTextView;
                    dialogBackupLoad.z0 = myProgressBar;
                    dialogBackupLoad.D0 = appCompatTextView2;
                    dialogBackupLoad.E0 = myLineText;
                    Handler handler2 = dialogBackupLoad.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogBackupLoad.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            final DialogBackupLoad dialogBackupLoad2 = DialogBackupLoad.this;
                            if (dialogBackupLoad2.d0 != null && dialogBackupLoad2.a0 != null) {
                                if (MainApp.K1) {
                                    dialogBackupLoad2.g0.setTextColor(-328966);
                                    dialogBackupLoad2.j0.setTextColor(-328966);
                                    dialogBackupLoad2.m0.setTextColor(-328966);
                                    dialogBackupLoad2.p0.setTextColor(-328966);
                                    dialogBackupLoad2.s0.setTextColor(-328966);
                                    dialogBackupLoad2.v0.setTextColor(-328966);
                                    dialogBackupLoad2.f0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogBackupLoad2.i0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogBackupLoad2.l0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogBackupLoad2.o0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogBackupLoad2.r0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogBackupLoad2.u0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogBackupLoad2.y0.setTextColor(-328966);
                                    dialogBackupLoad2.D0.setTextColor(-328966);
                                    dialogBackupLoad2.E0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogBackupLoad2.E0.setTextColor(-328966);
                                    dialogBackupLoad2.h0.p(R.drawable.baseline_check_circle_dark_24, R.drawable.outline_radio_button_unchecked_dark_24);
                                    dialogBackupLoad2.h0.setBgPreColor(-12632257);
                                    dialogBackupLoad2.k0.p(R.drawable.baseline_check_circle_dark_24, R.drawable.outline_radio_button_unchecked_dark_24);
                                    dialogBackupLoad2.k0.setBgPreColor(-12632257);
                                    dialogBackupLoad2.n0.p(R.drawable.baseline_check_circle_dark_24, R.drawable.outline_radio_button_unchecked_dark_24);
                                    dialogBackupLoad2.n0.setBgPreColor(-12632257);
                                    dialogBackupLoad2.q0.p(R.drawable.baseline_check_circle_dark_24, R.drawable.outline_radio_button_unchecked_dark_24);
                                    dialogBackupLoad2.q0.setBgPreColor(-12632257);
                                    dialogBackupLoad2.t0.p(R.drawable.baseline_check_circle_dark_24, R.drawable.outline_radio_button_unchecked_dark_24);
                                    dialogBackupLoad2.t0.setBgPreColor(-12632257);
                                    dialogBackupLoad2.w0.p(R.drawable.baseline_check_circle_dark_24, R.drawable.outline_radio_button_unchecked_dark_24);
                                    dialogBackupLoad2.w0.setBgPreColor(-12632257);
                                } else {
                                    dialogBackupLoad2.g0.setTextColor(-16777216);
                                    dialogBackupLoad2.j0.setTextColor(-16777216);
                                    dialogBackupLoad2.m0.setTextColor(-16777216);
                                    dialogBackupLoad2.p0.setTextColor(-16777216);
                                    dialogBackupLoad2.s0.setTextColor(-16777216);
                                    dialogBackupLoad2.v0.setTextColor(-16777216);
                                    dialogBackupLoad2.f0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogBackupLoad2.i0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogBackupLoad2.l0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogBackupLoad2.o0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogBackupLoad2.r0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogBackupLoad2.u0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogBackupLoad2.y0.setTextColor(-16777216);
                                    dialogBackupLoad2.D0.setTextColor(-16777216);
                                    dialogBackupLoad2.E0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogBackupLoad2.E0.setTextColor(-14784824);
                                    dialogBackupLoad2.h0.p(R.drawable.baseline_check_circle_black_24, R.drawable.outline_radio_button_unchecked_black_24);
                                    dialogBackupLoad2.h0.setBgPreColor(-2039584);
                                    dialogBackupLoad2.k0.p(R.drawable.baseline_check_circle_black_24, R.drawable.outline_radio_button_unchecked_black_24);
                                    dialogBackupLoad2.k0.setBgPreColor(-2039584);
                                    dialogBackupLoad2.n0.p(R.drawable.baseline_check_circle_black_24, R.drawable.outline_radio_button_unchecked_black_24);
                                    dialogBackupLoad2.n0.setBgPreColor(-2039584);
                                    dialogBackupLoad2.q0.p(R.drawable.baseline_check_circle_black_24, R.drawable.outline_radio_button_unchecked_black_24);
                                    dialogBackupLoad2.q0.setBgPreColor(-2039584);
                                    dialogBackupLoad2.t0.p(R.drawable.baseline_check_circle_black_24, R.drawable.outline_radio_button_unchecked_black_24);
                                    dialogBackupLoad2.t0.setBgPreColor(-2039584);
                                    dialogBackupLoad2.w0.p(R.drawable.baseline_check_circle_black_24, R.drawable.outline_radio_button_unchecked_black_24);
                                    dialogBackupLoad2.w0.setBgPreColor(-2039584);
                                }
                                dialogBackupLoad2.h0.q(true, false);
                                dialogBackupLoad2.k0.q(true, false);
                                dialogBackupLoad2.n0.q(true, false);
                                dialogBackupLoad2.q0.q(true, false);
                                dialogBackupLoad2.t0.q(true, false);
                                dialogBackupLoad2.w0.q(true, false);
                                dialogBackupLoad2.E0.setText(R.string.backup_import);
                                dialogBackupLoad2.f0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogBackupLoad.3
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        MyButtonCheck myButtonCheck7 = DialogBackupLoad.this.h0;
                                        if (myButtonCheck7 == null) {
                                            return;
                                        }
                                        myButtonCheck7.q(!myButtonCheck7.D, true);
                                    }
                                });
                                dialogBackupLoad2.h0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogBackupLoad.4
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        MyButtonCheck myButtonCheck7 = DialogBackupLoad.this.h0;
                                        if (myButtonCheck7 == null) {
                                            return;
                                        }
                                        myButtonCheck7.q(!myButtonCheck7.D, true);
                                    }
                                });
                                dialogBackupLoad2.i0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogBackupLoad.5
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        MyButtonCheck myButtonCheck7 = DialogBackupLoad.this.k0;
                                        if (myButtonCheck7 == null) {
                                            return;
                                        }
                                        myButtonCheck7.q(!myButtonCheck7.D, true);
                                    }
                                });
                                dialogBackupLoad2.k0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogBackupLoad.6
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        MyButtonCheck myButtonCheck7 = DialogBackupLoad.this.k0;
                                        if (myButtonCheck7 == null) {
                                            return;
                                        }
                                        myButtonCheck7.q(!myButtonCheck7.D, true);
                                    }
                                });
                                dialogBackupLoad2.l0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogBackupLoad.7
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        MyButtonCheck myButtonCheck7 = DialogBackupLoad.this.n0;
                                        if (myButtonCheck7 == null) {
                                            return;
                                        }
                                        myButtonCheck7.q(!myButtonCheck7.D, true);
                                    }
                                });
                                dialogBackupLoad2.n0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogBackupLoad.8
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        MyButtonCheck myButtonCheck7 = DialogBackupLoad.this.n0;
                                        if (myButtonCheck7 == null) {
                                            return;
                                        }
                                        myButtonCheck7.q(!myButtonCheck7.D, true);
                                    }
                                });
                                dialogBackupLoad2.o0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogBackupLoad.9
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        MyButtonCheck myButtonCheck7 = DialogBackupLoad.this.q0;
                                        if (myButtonCheck7 == null) {
                                            return;
                                        }
                                        myButtonCheck7.q(!myButtonCheck7.D, true);
                                    }
                                });
                                dialogBackupLoad2.q0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogBackupLoad.10
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        MyButtonCheck myButtonCheck7 = DialogBackupLoad.this.q0;
                                        if (myButtonCheck7 == null) {
                                            return;
                                        }
                                        myButtonCheck7.q(!myButtonCheck7.D, true);
                                    }
                                });
                                dialogBackupLoad2.r0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogBackupLoad.11
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        MyButtonCheck myButtonCheck7 = DialogBackupLoad.this.t0;
                                        if (myButtonCheck7 == null) {
                                            return;
                                        }
                                        myButtonCheck7.q(!myButtonCheck7.D, true);
                                    }
                                });
                                dialogBackupLoad2.t0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogBackupLoad.12
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        MyButtonCheck myButtonCheck7 = DialogBackupLoad.this.t0;
                                        if (myButtonCheck7 == null) {
                                            return;
                                        }
                                        myButtonCheck7.q(!myButtonCheck7.D, true);
                                    }
                                });
                                dialogBackupLoad2.u0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogBackupLoad.13
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        MyButtonCheck myButtonCheck7 = DialogBackupLoad.this.w0;
                                        if (myButtonCheck7 == null) {
                                            return;
                                        }
                                        myButtonCheck7.q(!myButtonCheck7.D, true);
                                    }
                                });
                                dialogBackupLoad2.w0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogBackupLoad.14
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        MyButtonCheck myButtonCheck7 = DialogBackupLoad.this.w0;
                                        if (myButtonCheck7 == null) {
                                            return;
                                        }
                                        myButtonCheck7.q(!myButtonCheck7.D, true);
                                    }
                                });
                                dialogBackupLoad2.E0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogBackupLoad.15
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        DialogBackupLoad dialogBackupLoad3 = DialogBackupLoad.this;
                                        MyLineText myLineText2 = dialogBackupLoad3.E0;
                                        if (myLineText2 == null || dialogBackupLoad3.G0) {
                                            return;
                                        }
                                        dialogBackupLoad3.G0 = true;
                                        myLineText2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogBackupLoad.15.1
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                DialogBackupLoad dialogBackupLoad4 = DialogBackupLoad.this;
                                                if (!dialogBackupLoad4.L0 && !dialogBackupLoad4.M0) {
                                                    DialogTask dialogTask = dialogBackupLoad4.F0;
                                                    if (dialogTask != null) {
                                                        dialogBackupLoad4.G();
                                                    } else {
                                                        MyButtonCheck myButtonCheck7 = dialogBackupLoad4.h0;
                                                        if (myButtonCheck7 == null) {
                                                            return;
                                                        }
                                                        if (!myButtonCheck7.D && !dialogBackupLoad4.k0.D && !dialogBackupLoad4.n0.D && !dialogBackupLoad4.q0.D && !dialogBackupLoad4.t0.D && !dialogBackupLoad4.w0.D) {
                                                            MainUtil.b7(dialogBackupLoad4.f0);
                                                            MainUtil.e8(dialogBackupLoad4.a0, R.string.backup_target);
                                                            dialogBackupLoad4.G0 = false;
                                                            return;
                                                        } else {
                                                            if (dialogTask != null) {
                                                                dialogTask.f12839c = true;
                                                            }
                                                            dialogBackupLoad4.F0 = null;
                                                            DialogTask dialogTask2 = new DialogTask(dialogBackupLoad4);
                                                            dialogBackupLoad4.F0 = dialogTask2;
                                                            dialogTask2.b(dialogBackupLoad4.a0);
                                                        }
                                                    }
                                                } else {
                                                    dialogBackupLoad4.dismiss();
                                                }
                                                dialogBackupLoad4.G0 = false;
                                            }
                                        });
                                    }
                                });
                                dialogBackupLoad2.g(dialogBackupLoad2.d0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogBackupLoad.16
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view) {
                                        DialogBackupLoad dialogBackupLoad3 = DialogBackupLoad.this;
                                        if (dialogBackupLoad3.d0 == null) {
                                            return;
                                        }
                                        dialogBackupLoad3.show();
                                    }
                                });
                            }
                        }
                    });
                }
            }
        });
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [com.mycompany.app.compress.CompressUtilZip, com.mycompany.app.compress.Compress] */
    public static boolean B(DialogBackupLoad dialogBackupLoad, int i) {
        Context context;
        CompressUtilZip2 compressUtilZip2;
        ZipFile zipFile;
        ArrayList arrayList;
        if (!MainApp.R1 || (context = dialogBackupLoad.a0) == null) {
            return false;
        }
        OutputStream outputStream = null;
        ?? compress = new Compress(context, dialogBackupLoad.I0, null);
        compress.f = MainConst.J;
        compress.g = MainUtil.D2(i);
        if (!compress.N() || compress.j == 0) {
            return false;
        }
        if (TextUtils.isEmpty(dialogBackupLoad.J0)) {
            dialogBackupLoad.J0 = android.support.v4.media.a.p(new StringBuilder(), dialogBackupLoad.I0, "2");
        }
        File file = new File(dialogBackupLoad.J0);
        MainUtil.y(file);
        if (!file.mkdirs()) {
            return false;
        }
        String str = dialogBackupLoad.J0;
        if (TextUtils.isEmpty(compress.b) || (compressUtilZip2 = compress.m) == null || (zipFile = compressUtilZip2.f12876a) == null) {
            return false;
        }
        try {
            arrayList = zipFile.d();
        } catch (Exception unused) {
            arrayList = null;
        }
        if (arrayList == null || arrayList.isEmpty()) {
            return false;
        }
        int size = arrayList.size();
        boolean z = false;
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            FileHeader fileHeader = (FileHeader) obj;
            if (fileHeader != null) {
                try {
                    if (!fileHeader.q) {
                        ZipInputStream e = compressUtilZip2.f12876a.e(fileHeader);
                        outputStream = MainUtil.c1(str + "/" + fileHeader.p, false);
                        byte[] bArr = new byte[8192];
                        while (true) {
                            int read = e.read(bArr, 0, 8192);
                            if (read == -1) {
                                break;
                            }
                            outputStream.write(bArr, 0, read);
                        }
                        z = true;
                    }
                } catch (Exception unused2) {
                }
            }
        }
        if (outputStream != null) {
            try {
                outputStream.close();
            } catch (Exception unused3) {
            }
        }
        return z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x01ee, code lost:
    
        if (android.net.VpnService.prepare(r17) == null) goto L109;
     */
    /* JADX WARN: Type inference failed for: r13v6, types: [com.mycompany.app.dialog.DialogBackupLoad$PrefName, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r14v6, types: [com.nostra13.universalimageloader.cache.disc.naming.Md5FileNameGenerator, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void C(com.mycompany.app.dialog.DialogBackupLoad r16, android.content.Context r17, java.io.File[] r18, boolean r19) {
        /*
            Method dump skipped, instructions count: 643
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogBackupLoad.C(com.mycompany.app.dialog.DialogBackupLoad, android.content.Context, java.io.File[], boolean):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x00ae  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.content.ContentValues J(android.content.ContentValues r2, android.content.Context r3, java.lang.String r4, java.lang.String r5, java.lang.String r6) {
        /*
            if (r3 != 0) goto L4
            goto Lbd
        L4:
            boolean r0 = android.text.TextUtils.isEmpty(r4)
            if (r0 != 0) goto Lbd
            boolean r0 = android.text.TextUtils.isEmpty(r5)
            if (r0 != 0) goto Lbd
            boolean r0 = android.text.TextUtils.isEmpty(r6)
            if (r0 == 0) goto L18
            goto Lbd
        L18:
            java.lang.String r0 = "s"
            boolean r0 = r0.equals(r5)     // Catch: java.lang.Exception -> Lbd
            java.lang.String r1 = "null"
            if (r0 == 0) goto L37
            boolean r3 = r6.equals(r1)     // Catch: java.lang.Exception -> Lbd
            if (r3 == 0) goto L2a
            goto Lbd
        L2a:
            if (r2 != 0) goto L32
            android.content.ContentValues r3 = new android.content.ContentValues     // Catch: java.lang.Exception -> Lbd
            r3.<init>()     // Catch: java.lang.Exception -> Lbd
            r2 = r3
        L32:
            r2.put(r4, r6)     // Catch: java.lang.Exception -> Lbd
            goto Lbd
        L37:
            java.lang.String r0 = "b"
            boolean r0 = r0.equals(r5)     // Catch: java.lang.Exception -> Lbd
            if (r0 == 0) goto L72
            boolean r5 = r6.equals(r1)     // Catch: java.lang.Exception -> Lbd
            if (r5 == 0) goto L47
            goto Lbd
        L47:
            android.graphics.Bitmap r3 = com.mycompany.app.main.MainUtil.d0(r3, r6)     // Catch: java.lang.Exception -> Lbd
            boolean r5 = com.mycompany.app.main.MainUtil.f6(r3)     // Catch: java.lang.Exception -> Lbd
            if (r5 != 0) goto L53
            goto Lbd
        L53:
            java.io.ByteArrayOutputStream r5 = new java.io.ByteArrayOutputStream     // Catch: java.lang.Exception -> Lbd
            r5.<init>()     // Catch: java.lang.Exception -> Lbd
            android.graphics.Bitmap$CompressFormat r6 = android.graphics.Bitmap.CompressFormat.PNG     // Catch: java.lang.Exception -> Lbd
            r0 = 100
            r3.compress(r6, r0, r5)     // Catch: java.lang.Exception -> Lbd
            if (r2 != 0) goto L67
            android.content.ContentValues r3 = new android.content.ContentValues     // Catch: java.lang.Exception -> Lbd
            r3.<init>()     // Catch: java.lang.Exception -> Lbd
            r2 = r3
        L67:
            byte[] r3 = r5.toByteArray()     // Catch: java.lang.Exception -> Lbd
            r2.put(r4, r3)     // Catch: java.lang.Exception -> Lbd
            r5.close()     // Catch: java.lang.Exception -> Lbd
            goto Lbd
        L72:
            java.lang.String r3 = "i"
            boolean r3 = r3.equals(r5)     // Catch: java.lang.Exception -> Lbd
            if (r3 == 0) goto L92
            int r3 = com.mycompany.app.main.MainUtil.H6(r6)     // Catch: java.lang.Exception -> Lbd
            r5 = -1
            if (r3 != r5) goto L82
            goto Lbd
        L82:
            if (r2 != 0) goto L8a
            android.content.ContentValues r5 = new android.content.ContentValues     // Catch: java.lang.Exception -> Lbd
            r5.<init>()     // Catch: java.lang.Exception -> Lbd
            r2 = r5
        L8a:
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)     // Catch: java.lang.Exception -> Lbd
            r2.put(r4, r3)     // Catch: java.lang.Exception -> Lbd
            goto Lbd
        L92:
            java.lang.String r3 = "l"
            boolean r3 = r3.equals(r5)     // Catch: java.lang.Exception -> Lbd
            if (r3 == 0) goto Lbd
            boolean r3 = android.text.TextUtils.isEmpty(r6)     // Catch: java.lang.Exception -> Lbd
            r0 = -1
            if (r3 == 0) goto La3
            goto La8
        La3:
            long r5 = java.lang.Long.parseLong(r6)     // Catch: java.lang.Throwable -> La8
            goto La9
        La8:
            r5 = r0
        La9:
            int r3 = (r5 > r0 ? 1 : (r5 == r0 ? 0 : -1))
            if (r3 != 0) goto Lae
            goto Lbd
        Lae:
            if (r2 != 0) goto Lb6
            android.content.ContentValues r3 = new android.content.ContentValues     // Catch: java.lang.Exception -> Lbd
            r3.<init>()     // Catch: java.lang.Exception -> Lbd
            r2 = r3
        Lb6:
            java.lang.Long r3 = java.lang.Long.valueOf(r5)     // Catch: java.lang.Exception -> Lbd
            r2.put(r4, r3)     // Catch: java.lang.Exception -> Lbd
        Lbd:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogBackupLoad.J(android.content.ContentValues, android.content.Context, java.lang.String, java.lang.String, java.lang.String):android.content.ContentValues");
    }

    public final void D(boolean z) {
        if (TextUtils.isEmpty(this.I0) && TextUtils.isEmpty(this.J0)) {
            return;
        }
        final String str = this.I0;
        final String str2 = this.J0;
        this.I0 = null;
        this.J0 = null;
        if (z) {
            if (!TextUtils.isEmpty(str)) {
                new File(str).delete();
            }
            MainUtil.z(str2);
            return;
        }
        s(new Runnable() { // from class: com.mycompany.app.dialog.DialogBackupLoad.17
            @Override // java.lang.Runnable
            public final void run() {
                String str3 = str;
                if (!TextUtils.isEmpty(str3)) {
                    new File(str3).delete();
                }
                MainUtil.z(str2);
            }
        });
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.mycompany.app.dialog.DialogBackupLoad$DbItem, java.lang.Object] */
    public final DbItem E(Context context, String str) {
        SQLiteDatabase sQLiteDatabase;
        String str2;
        MyButtonCheck myButtonCheck;
        if (context == null || TextUtils.isEmpty(str)) {
            return null;
        }
        boolean z = false;
        if ("DbAdsCmd.db".equals(str)) {
            MyButtonCheck myButtonCheck2 = this.h0;
            if (myButtonCheck2 == null || !myButtonCheck2.D) {
                return null;
            }
            sQLiteDatabase = DbAdsCmd.b(context).getWritableDatabase();
            str2 = "DbAdsCmd_table";
        } else if ("DbBookAds.db".equals(str)) {
            MyButtonCheck myButtonCheck3 = this.h0;
            if (myButtonCheck3 == null || !myButtonCheck3.D) {
                return null;
            }
            sQLiteDatabase = DbBookAds.a(context).getWritableDatabase();
            str2 = "DbBookAds_table";
        } else if ("DbBookAgent.db".equals(str)) {
            MyButtonCheck myButtonCheck4 = this.h0;
            if (myButtonCheck4 == null || !myButtonCheck4.D) {
                return null;
            }
            sQLiteDatabase = DbBookAgent.a(context).getWritableDatabase();
            str2 = "DbBookAgent_table";
        } else if ("DbBookBlock.db".equals(str)) {
            MyButtonCheck myButtonCheck5 = this.h0;
            if (myButtonCheck5 == null || !myButtonCheck5.D) {
                return null;
            }
            sQLiteDatabase = DbBookBlock.a(context).getWritableDatabase();
            str2 = "DbBookBlock_table";
        } else if ("DbBookDc.db".equals(str)) {
            MyButtonCheck myButtonCheck6 = this.h0;
            if (myButtonCheck6 == null || !myButtonCheck6.D) {
                return null;
            }
            sQLiteDatabase = DbBookDc.b(context).getWritableDatabase();
            str2 = "DbBookDc_table";
        } else if ("DbBookFilter.db".equals(str)) {
            MyButtonCheck myButtonCheck7 = this.h0;
            if (myButtonCheck7 == null || !myButtonCheck7.D) {
                return null;
            }
            sQLiteDatabase = DbBookFilter.f(context).getWritableDatabase();
            str2 = "DbBookFilter_table";
        } else if ("DbBookJava.db".equals(str)) {
            MyButtonCheck myButtonCheck8 = this.h0;
            if (myButtonCheck8 == null || !myButtonCheck8.D) {
                return null;
            }
            sQLiteDatabase = DbBookJava.a(context).getWritableDatabase();
            str2 = "DbBookJava_table";
        } else if ("DbBookTheme.db".equals(str)) {
            MyButtonCheck myButtonCheckTheme = this.h0;
            if (myButtonCheckTheme == null || !myButtonCheckTheme.D) {
                return null;
            }
            sQLiteDatabase = DbBookTheme.a(context).getWritableDatabase();
            str2 = "DbBookTheme_table";
        } else if ("DbBookLink.db".equals(str)) {
            MyButtonCheck myButtonCheck9 = this.h0;
            if (myButtonCheck9 == null || !myButtonCheck9.D) {
                return null;
            }
            sQLiteDatabase = DbBookLink.a(context).getWritableDatabase();
            str2 = "DbBookLink_table";
        } else if ("DbBookLocale.db".equals(str)) {
            MyButtonCheck myButtonCheck10 = this.h0;
            if (myButtonCheck10 == null || !myButtonCheck10.D) {
                return null;
            }
            sQLiteDatabase = DbBookLocale.a(context).getWritableDatabase();
            str2 = "DbBookLocale_table";
        } else if ("DbBookMemo.db".equals(str)) {
            MyButtonCheck myButtonCheck11 = this.h0;
            if (myButtonCheck11 == null || !myButtonCheck11.D) {
                return null;
            }
            sQLiteDatabase = DbBookMemo.a(context).getWritableDatabase();
            str2 = "DbBookMemo_table";
        } else if ("DbBookOver.db".equals(str)) {
            MyButtonCheck myButtonCheck12 = this.h0;
            if (myButtonCheck12 == null || !myButtonCheck12.D) {
                return null;
            }
            sQLiteDatabase = DbBookOver.a(context).getWritableDatabase();
            str2 = "DbBookOver_table";
        } else if ("DbBookPop.db".equals(str)) {
            MyButtonCheck myButtonCheck13 = this.h0;
            if (myButtonCheck13 == null || !myButtonCheck13.D) {
                return null;
            }
            sQLiteDatabase = DbBookPop.a(context).getWritableDatabase();
            str2 = "DbBookPop_table";
        } else if ("DbBookRecent.db".equals(str)) {
            MyButtonCheck myButtonCheck14 = this.h0;
            if (myButtonCheck14 == null || !myButtonCheck14.D) {
                return null;
            }
            sQLiteDatabase = DbBookRecent.d(context).getWritableDatabase();
            str2 = "DbBookRecent_table";
        } else if ("DbBookScript.db".equals(str)) {
            MyButtonCheck myButtonCheck15 = this.h0;
            if (myButtonCheck15 == null || !myButtonCheck15.D) {
                return null;
            }
            sQLiteDatabase = DbBookScript.d(context).getWritableDatabase();
            str2 = "DbBookScript_table";
        } else if ("DbBookSearch.db".equals(str)) {
            MyButtonCheck myButtonCheck16 = this.h0;
            if (myButtonCheck16 == null || !myButtonCheck16.D) {
                return null;
            }
            sQLiteDatabase = DbBookSearch.f(context).getWritableDatabase();
            str2 = "DbBookSearch_table";
        } else if ("DbBookTmem.db".equals(str)) {
            MyButtonCheck myButtonCheck17 = this.h0;
            if (myButtonCheck17 == null || !myButtonCheck17.D) {
                return null;
            }
            sQLiteDatabase = DbBookTmem.b(context).getWritableDatabase();
            str2 = "DbBookTmem_table";
        } else if ("DbBookTrans.db".equals(str)) {
            MyButtonCheck myButtonCheck18 = this.h0;
            if (myButtonCheck18 == null || !myButtonCheck18.D) {
                return null;
            }
            sQLiteDatabase = DbBookTrans.b(context).getWritableDatabase();
            str2 = "DbBookTrans_table";
        } else if ("DbBookUser.db".equals(str)) {
            MyButtonCheck myButtonCheck19 = this.h0;
            if (myButtonCheck19 == null || !myButtonCheck19.D) {
                return null;
            }
            sQLiteDatabase = DbBookUser.d(context).getWritableDatabase();
            str2 = "DbBookUser_table";
        } else if ("DbRecentLang.db".equals(str)) {
            MyButtonCheck myButtonCheck20 = this.h0;
            if (myButtonCheck20 == null || !myButtonCheck20.D) {
                return null;
            }
            sQLiteDatabase = DbRecentLang.d(context).getWritableDatabase();
            str2 = "DbRecentLang_table";
        } else if ("DbBookQuick.db".equals(str)) {
            MyButtonCheck myButtonCheck21 = this.k0;
            if (myButtonCheck21 == null || !myButtonCheck21.D) {
                return null;
            }
            sQLiteDatabase = DbBookQuick.i(context).getWritableDatabase();
            str2 = "DbBookQuick_table";
        } else if ("DbBookWeb.db".equals(str)) {
            MyButtonCheck myButtonCheck22 = this.n0;
            if (myButtonCheck22 == null || !myButtonCheck22.D) {
                return null;
            }
            sQLiteDatabase = DbBookWeb.f(context).getWritableDatabase();
            str2 = "DbBookWeb_table";
        } else if ("DbBookHistory.db".equals(str)) {
            MyButtonCheck myButtonCheck23 = this.q0;
            if (myButtonCheck23 == null || !myButtonCheck23.D) {
                return null;
            }
            sQLiteDatabase = DbBookHistory.b(context).getWritableDatabase();
            str2 = "DbBookHistory_table";
        } else if ("DbBookIcon.db".equals(str)) {
            MyButtonCheck myButtonCheck24 = this.q0;
            if ((myButtonCheck24 == null || !myButtonCheck24.D) && ((myButtonCheck = this.t0) == null || !myButtonCheck.D)) {
                return null;
            }
            sQLiteDatabase = DbBookIcon.d(context).getWritableDatabase();
            str2 = "DbBookIcon_table";
        } else if ("DbBookTab2.db".equals(str)) {
            MyButtonCheck myButtonCheck25 = this.t0;
            if (myButtonCheck25 == null || !myButtonCheck25.D) {
                return null;
            }
            sQLiteDatabase = DbBookTabOld.a(context).getWritableDatabase();
            str2 = "DbBookTab2_table";
            z = true;
        } else if ("DbBookTab3.db".equals(str)) {
            MyButtonCheck myButtonCheck26 = this.t0;
            if (myButtonCheck26 == null || !myButtonCheck26.D) {
                return null;
            }
            sQLiteDatabase = DbBookTab.b(context).getWritableDatabase();
            str2 = "DbBookTab3_table";
        } else if ("DbTabState.db".equals(str)) {
            MyButtonCheck myButtonCheck27 = this.t0;
            if (myButtonCheck27 == null || !myButtonCheck27.D) {
                return null;
            }
            sQLiteDatabase = DbTabState.b(context).getWritableDatabase();
            str2 = "DbTabState_table";
        } else if ("DbTabThumb.db".equals(str)) {
            MyButtonCheck myButtonCheck28 = this.t0;
            if (myButtonCheck28 == null || !myButtonCheck28.D) {
                return null;
            }
            sQLiteDatabase = DbTabThumb.b(context).getWritableDatabase();
            str2 = "DbTabThumb_table";
        } else if ("DbBookPass.db".equals(str)) {
            MyButtonCheck myButtonCheck29 = this.w0;
            if (myButtonCheck29 == null || !myButtonCheck29.D) {
                return null;
            }
            sQLiteDatabase = DbBookPass.d(context).getWritableDatabase();
            str2 = "DbBookPass_table";
        } else {
            sQLiteDatabase = null;
            str2 = null;
        }
        if (sQLiteDatabase == null || str2 == null) {
            return null;
        }
        ?? obj = new Object();
        obj.f13008a = sQLiteDatabase;
        obj.b = str2;
        obj.f13009c = z;
        return obj;
    }

    public final boolean F() {
        if (!this.K0) {
            DialogTask dialogTask = this.F0;
            if (dialogTask != null && dialogTask.f12839c) {
                return true;
            }
            return false;
        }
        return true;
    }

    public final void G() {
        if (this.E0 != null && this.F0 != null) {
            L(true);
            M(R.string.canceling);
            I(false);
            this.K0 = true;
            DialogTask dialogTask = this.F0;
            if (dialogTask != null) {
                dialogTask.f12839c = true;
            }
            this.F0 = null;
            return;
        }
        dismiss();
    }

    public final void H() {
        Locale j;
        String str;
        if (TextUtils.isEmpty(this.N0) && (j = MainApp.j()) != null) {
            String language = j.getLanguage();
            if (TextUtils.isEmpty(language)) {
                return;
            }
            Locale locale = Locale.US;
            String lowerCase = language.toLowerCase(locale);
            String country = j.getCountry();
            if (!TextUtils.isEmpty(country)) {
                str = android.support.v4.media.a.D(lowerCase, "-", country.toLowerCase(locale));
            } else {
                str = null;
            }
            this.N0 = lowerCase;
            this.O0 = str;
        }
    }

    public final void I(boolean z) {
        int i;
        int i2;
        MyLineText myLineText = this.E0;
        if (myLineText == null) {
            return;
        }
        myLineText.setEnabled(z);
        if (z) {
            MyLineText myLineText2 = this.E0;
            if (MainApp.K1) {
                i2 = -328966;
            } else {
                i2 = -14784824;
            }
            myLineText2.setTextColor(i2);
            return;
        }
        MyLineText myLineText3 = this.E0;
        if (MainApp.K1) {
            i = -8355712;
        } else {
            i = -2434342;
        }
        myLineText3.setTextColor(i);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0039  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void K(android.content.Context r18, java.lang.String r19, java.util.ArrayList r20) {
        /*
            r17 = this;
            r0 = r17
            r1 = r18
            if (r1 == 0) goto Lb5
            boolean r2 = android.text.TextUtils.isEmpty(r19)
            if (r2 != 0) goto Lb5
            boolean r2 = r20.isEmpty()
            if (r2 == 0) goto L14
            goto Lb5
        L14:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            r3 = r19
            r2.append(r3)
            java.lang.String r3 = ".db"
            r2.append(r3)
            java.lang.String r2 = r2.toString()
            com.mycompany.app.dialog.DialogBackupLoad$DbItem r2 = r0.E(r1, r2)
            if (r2 != 0) goto L2f
            goto Lb5
        L2f:
            int r3 = r20.size()
            r6 = 0
            r7 = 1
            r8 = 0
        L36:
            r9 = 0
            if (r8 >= r3) goto L97
            r10 = r20
            java.lang.Object r11 = r10.get(r8)
            int r8 = r8 + 1
            java.lang.String r11 = (java.lang.String) r11
            boolean r12 = r0.F()
            if (r12 == 0) goto L4b
            goto Lb5
        L4b:
            if (r11 != 0) goto L4e
            goto L36
        L4e:
            java.lang.String r12 = "##"
            java.lang.String[] r11 = r11.split(r12)
            if (r11 == 0) goto L36
            int r12 = r11.length
            if (r12 == 0) goto L36
            int r12 = r11.length
            int r12 = r12 % 3
            if (r12 == 0) goto L5f
            goto L36
        L5f:
            int r12 = r11.length     // Catch: java.lang.Exception -> L36
            r14 = r9
            r13 = 0
        L62:
            if (r13 >= r12) goto L7c
            boolean r15 = r0.F()     // Catch: java.lang.Exception -> L36
            if (r15 == 0) goto L6b
            goto Lb5
        L6b:
            r15 = r11[r13]     // Catch: java.lang.Exception -> L36
            int r16 = r13 + 1
            r4 = r11[r16]     // Catch: java.lang.Exception -> L36
            int r16 = r13 + 2
            r5 = r11[r16]     // Catch: java.lang.Exception -> L36
            android.content.ContentValues r14 = J(r14, r1, r15, r4, r5)     // Catch: java.lang.Exception -> L36
            int r13 = r13 + 3
            goto L62
        L7c:
            if (r14 == 0) goto L36
            if (r7 == 0) goto L8b
            android.database.sqlite.SQLiteDatabase r4 = r2.f13008a     // Catch: java.lang.Exception -> L89
            java.lang.String r5 = r2.b     // Catch: java.lang.Exception -> L89
            com.mycompany.app.db.DbUtil.a(r4, r5, r9, r9)     // Catch: java.lang.Exception -> L89
            r7 = 0
            goto L8b
        L89:
            r7 = 0
            goto L36
        L8b:
            android.database.sqlite.SQLiteDatabase r4 = r2.f13008a     // Catch: java.lang.Exception -> L36
            java.lang.String r5 = r2.b     // Catch: java.lang.Exception -> L36
            com.mycompany.app.db.DbUtil.e(r4, r5, r14)     // Catch: java.lang.Exception -> L36
            r4 = 1
            r0.L0 = r4     // Catch: java.lang.Exception -> L36
            r6 = 1
            goto L36
        L97:
            boolean r2 = r2.f13009c
            if (r2 == 0) goto Lb5
            if (r6 == 0) goto Lb5
            com.mycompany.app.db.book.DbBookTab.m(r1)
            r2 = 0
            com.mycompany.app.db.book.DbBookTabOld.b(r1, r2)
            r4 = 1
            com.mycompany.app.db.book.DbBookTabOld.b(r1, r4)
            com.mycompany.app.db.book.DbBookTabOld r1 = com.mycompany.app.db.book.DbBookTabOld.a(r1)
            android.database.sqlite.SQLiteDatabase r1 = r1.getWritableDatabase()
            java.lang.String r2 = "DbBookTab2_table"
            com.mycompany.app.db.DbUtil.a(r1, r2, r9, r9)
        Lb5:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogBackupLoad.K(android.content.Context, java.lang.String, java.util.ArrayList):void");
    }

    public final void L(boolean z) {
        MyDialogLinear myDialogLinear = this.d0;
        if (myDialogLinear == null) {
            return;
        }
        myDialogLinear.e(0, MainApp.g1, z, false);
    }

    public final void M(int i) {
        AppCompatTextView appCompatTextView = this.D0;
        if (appCompatTextView == null) {
            return;
        }
        appCompatTextView.setText(i);
        this.x0.setVisibility(8);
        this.D0.setVisibility(0);
    }

    public final void N() {
        int i = this.A0;
        if (i != 0) {
            int i2 = this.B0 + 1;
            this.B0 = i2;
            if (i2 < i) {
                long currentTimeMillis = System.currentTimeMillis();
                if (currentTimeMillis - this.C0 >= 200) {
                    this.C0 = currentTimeMillis;
                } else {
                    return;
                }
            }
            Handler handler = this.i;
            if (handler == null) {
                return;
            }
            Runnable runnable = this.S0;
            handler.removeCallbacks(runnable);
            this.i.post(runnable);
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void cancel() {
        G();
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.a0 == null) {
            return;
        }
        DialogTask dialogTask = this.F0;
        if (dialogTask != null) {
            dialogTask.f12839c = true;
        }
        this.F0 = null;
        D(false);
        MyDialogLinear myDialogLinear = this.d0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.d0 = null;
        }
        MyLineFrame myLineFrame = this.f0;
        if (myLineFrame != null) {
            myLineFrame.g();
            this.f0 = null;
        }
        MyButtonCheck myButtonCheck = this.h0;
        if (myButtonCheck != null) {
            myButtonCheck.l();
            this.h0 = null;
        }
        MyLineFrame myLineFrame2 = this.i0;
        if (myLineFrame2 != null) {
            myLineFrame2.g();
            this.i0 = null;
        }
        MyButtonCheck myButtonCheck2 = this.k0;
        if (myButtonCheck2 != null) {
            myButtonCheck2.l();
            this.k0 = null;
        }
        MyLineFrame myLineFrame3 = this.l0;
        if (myLineFrame3 != null) {
            myLineFrame3.g();
            this.l0 = null;
        }
        MyButtonCheck myButtonCheck3 = this.n0;
        if (myButtonCheck3 != null) {
            myButtonCheck3.l();
            this.n0 = null;
        }
        MyLineFrame myLineFrame4 = this.o0;
        if (myLineFrame4 != null) {
            myLineFrame4.g();
            this.o0 = null;
        }
        MyButtonCheck myButtonCheck4 = this.q0;
        if (myButtonCheck4 != null) {
            myButtonCheck4.l();
            this.q0 = null;
        }
        MyLineFrame myLineFrame5 = this.r0;
        if (myLineFrame5 != null) {
            myLineFrame5.g();
            this.r0 = null;
        }
        MyButtonCheck myButtonCheck5 = this.t0;
        if (myButtonCheck5 != null) {
            myButtonCheck5.l();
            this.t0 = null;
        }
        MyRoundItem myRoundItem = this.u0;
        if (myRoundItem != null) {
            myRoundItem.b();
            this.u0 = null;
        }
        MyButtonCheck myButtonCheck6 = this.w0;
        if (myButtonCheck6 != null) {
            myButtonCheck6.l();
            this.w0 = null;
        }
        MyProgressBar myProgressBar = this.z0;
        if (myProgressBar != null) {
            myProgressBar.f();
            this.z0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.H0 = null;
        this.c0 = null;
        this.e0 = null;
        this.g0 = null;
        this.j0 = null;
        this.m0 = null;
        this.p0 = null;
        this.s0 = null;
        this.v0 = null;
        this.x0 = null;
        this.y0 = null;
        this.D0 = null;
        this.E0 = null;
        this.N0 = null;
        this.O0 = null;
        super.dismiss();
    }
}
