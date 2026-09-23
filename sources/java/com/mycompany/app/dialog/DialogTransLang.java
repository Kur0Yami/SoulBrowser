package com.mycompany.app.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Handler;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.JavascriptInterface;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.async.MyAsyncTask;
import com.mycompany.app.data.DataTrans;
import com.mycompany.app.db.book.DbRecentLang;
import com.mycompany.app.dialog.DialogSetMsg;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainLangAdapter;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefAlbum;
import com.mycompany.app.pref.PrefZtwo;
import com.mycompany.app.setting.SettingTrans;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyCoverView;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogRelative;
import com.mycompany.app.view.MyEditPure;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyManagerLinear;
import com.mycompany.app.view.MyRecyclerView;
import com.mycompany.app.view.MyRoundView;
import com.mycompany.app.view.MyWebSafe;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class DialogTransLang extends MyDialogBottom {
    public static final /* synthetic */ int J0 = 0;
    public MyManagerLinear A0;
    public boolean B0;
    public boolean C0;
    public DialogSetMsg D0;
    public boolean E0;
    public boolean F0;
    public String G0;
    public String H0;
    public String I0;
    public MainActivity a0;
    public Context b0;
    public TransLangListener c0;
    public TransNotiListener d0;
    public final boolean e0;
    public final int f0;
    public String g0;
    public int h0;
    public int i0;
    public final boolean j0;
    public MyDialogRelative k0;
    public MyEditPure l0;
    public MyButtonImage m0;
    public MyRoundView n0;
    public MyButtonImage o0;
    public MyRecyclerView p0;
    public MyLineText q0;
    public MyWebSafe r0;
    public boolean s0;
    public boolean t0;
    public boolean u0;
    public String v0;
    public String w0;
    public DialogTask x0;
    public ArrayList y0;
    public MainLangAdapter z0;

    /* renamed from: com.mycompany.app.dialog.DialogTransLang$10, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass10 implements Runnable {

        /* renamed from: com.mycompany.app.dialog.DialogTransLang$10$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 implements Runnable {
            public AnonymousClass1() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                DialogTransLang dialogTransLang = DialogTransLang.this;
                MyWebSafe myWebSafe = dialogTransLang.r0;
                if (myWebSafe != null) {
                    myWebSafe.setWebViewClient(new LocalWebViewClient());
                    Handler handler = dialogTransLang.i;
                    if (handler == null) {
                        return;
                    }
                    handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogTransLang.10.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            AnonymousClass10 anonymousClass10 = AnonymousClass10.this;
                            DialogTransLang dialogTransLang2 = DialogTransLang.this;
                            MyWebSafe myWebSafe2 = dialogTransLang2.r0;
                            if (myWebSafe2 != null) {
                                dialogTransLang2.u0 = true;
                                myWebSafe2.addJavascriptInterface(new WebAppInterface(), "android");
                                Handler handler2 = DialogTransLang.this.i;
                                if (handler2 == null) {
                                    return;
                                }
                                handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogTransLang.10.1.1.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        DialogTransLang dialogTransLang3 = DialogTransLang.this;
                                        if (dialogTransLang3.r0 == null) {
                                            return;
                                        }
                                        dialogTransLang3.s(new AnonymousClass15());
                                    }
                                });
                            }
                        }
                    });
                }
            }
        }

        public AnonymousClass10() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            DialogTransLang dialogTransLang = DialogTransLang.this;
            MyWebSafe myWebSafe = dialogTransLang.r0;
            if (myWebSafe != null) {
                WebSettings settings = myWebSafe.getSettings();
                settings.setSupportZoom(true);
                settings.setBuiltInZoomControls(true);
                settings.setDisplayZoomControls(false);
                settings.setUseWideViewPort(true);
                settings.setLoadWithOverviewMode(true);
                settings.setJavaScriptCanOpenWindowsAutomatically(false);
                settings.setSupportMultipleWindows(false);
                settings.setMediaPlaybackRequiresUserGesture(false);
                settings.setJavaScriptEnabled(true);
                myWebSafe.setOverScrollMode(2);
                Handler handler = dialogTransLang.i;
                if (handler == null) {
                    return;
                }
                handler.post(new AnonymousClass1());
            }
        }
    }

    /* renamed from: com.mycompany.app.dialog.DialogTransLang$15, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass15 implements Runnable {
        public AnonymousClass15() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            int i = DialogTransLang.J0;
            DialogTransLang dialogTransLang = DialogTransLang.this;
            dialogTransLang.H0 = "<!DOCTYPE html><html><head><meta charset=\"utf-8\"/><meta name='viewport' content='width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=5.0,user-scalable=yes'/></head><body><p>test</p></body></html>";
            dialogTransLang.w0 = MainUtil.M1("soul_lang_", null);
            MyWebSafe myWebSafe = dialogTransLang.r0;
            if (myWebSafe == null) {
                return;
            }
            myWebSafe.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogTransLang.15.1
                @Override // java.lang.Runnable
                public final void run() {
                    MyWebSafe myWebSafe2;
                    DialogTransLang dialogTransLang2 = DialogTransLang.this;
                    String str = dialogTransLang2.H0;
                    dialogTransLang2.H0 = null;
                    if (TextUtils.isEmpty(str) || (myWebSafe2 = dialogTransLang2.r0) == null) {
                        return;
                    }
                    MainUtil.r6(myWebSafe2, dialogTransLang2.w0, str);
                    dialogTransLang2.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogTransLang.15.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            String str2;
                            DialogTransLang dialogTransLang3;
                            AnonymousClass15 anonymousClass15 = AnonymousClass15.this;
                            DialogTransLang dialogTransLang4 = DialogTransLang.this;
                            if (dialogTransLang4.r0 != null) {
                                StringBuilder N3 = MainUtil.N3();
                                if (N3 != null) {
                                    String M2 = MainUtil.M2(null);
                                    if (!TextUtils.isEmpty(M2)) {
                                        N3.insert(0, M2);
                                        str2 = N3.toString();
                                        dialogTransLang4.v0 = str2;
                                        dialogTransLang3 = DialogTransLang.this;
                                        if (!dialogTransLang3.t0 && !TextUtils.isEmpty(dialogTransLang3.v0)) {
                                            dialogTransLang3.t0 = false;
                                            MainUtil.J(dialogTransLang3.r0, dialogTransLang3.v0, true);
                                            dialogTransLang3.v0 = null;
                                            return;
                                        }
                                    }
                                }
                                str2 = null;
                                dialogTransLang4.v0 = str2;
                                dialogTransLang3 = DialogTransLang.this;
                                if (!dialogTransLang3.t0) {
                                }
                            }
                        }
                    });
                }
            });
        }
    }

    /* renamed from: com.mycompany.app.dialog.DialogTransLang$20, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass20 implements DialogSetMsg.DialogMsgListener {
        public AnonymousClass20() {
        }

        @Override // com.mycompany.app.dialog.DialogSetMsg.DialogMsgListener
        public final void a() {
            DialogTransLang dialogTransLang = DialogTransLang.this;
            DialogSetMsg dialogSetMsg = dialogTransLang.D0;
            if (dialogSetMsg == null) {
                return;
            }
            dialogTransLang.E0 = false;
            dialogSetMsg.C();
            dialogTransLang.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogTransLang.20.1
                @Override // java.lang.Runnable
                public final void run() {
                    DialogTransLang dialogTransLang2 = DialogTransLang.this;
                    MainLangAdapter mainLangAdapter = dialogTransLang2.z0;
                    if (mainLangAdapter == null) {
                        return;
                    }
                    mainLangAdapter.v();
                    dialogTransLang2.i.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogTransLang.20.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            AnonymousClass20 anonymousClass20 = AnonymousClass20.this;
                            DialogTransLang dialogTransLang3 = DialogTransLang.this;
                            if (dialogTransLang3.z0 == null) {
                                return;
                            }
                            dialogTransLang3.G(dialogTransLang3.B0);
                            DialogTransLang.this.z0.g();
                            DialogTransLang.this.F();
                        }
                    });
                }
            });
        }

        @Override // com.mycompany.app.dialog.DialogSetMsg.DialogMsgListener
        public final void b() {
            DialogTransLang dialogTransLang = DialogTransLang.this;
            TransNotiListener transNotiListener = dialogTransLang.d0;
            if (transNotiListener != null) {
                transNotiListener.a();
                return;
            }
            if (dialogTransLang.a0 == null) {
                return;
            }
            dialogTransLang.E0 = true;
            Intent intent = new Intent(dialogTransLang.b0, (Class<?>) SettingTrans.class);
            intent.putExtra("EXTRA_NOTI", true);
            intent.putExtra("EXTRA_INDEX", 3);
            dialogTransLang.a0.startActivity(intent);
        }
    }

    /* loaded from: classes3.dex */
    public static class DialogTask extends MyAsyncTask {
        public final WeakReference e;
        public List f;
        public List g;
        public boolean h;
        public String i;

        public DialogTask(DialogTransLang dialogTransLang, String str) {
            WeakReference weakReference = new WeakReference(dialogTransLang);
            this.e = weakReference;
            if (((DialogTransLang) weakReference.get()) == null) {
                return;
            }
            this.h = false;
            this.i = str;
        }

        /* JADX WARN: Code restructure failed: missing block: B:146:0x0101, code lost:
        
            r9.close();
         */
        /* JADX WARN: Removed duplicated region for block: B:76:0x010c  */
        /* JADX WARN: Removed duplicated region for block: B:87:0x0137  */
        /* JADX WARN: Type inference failed for: r14v1, types: [java.lang.Object, com.mycompany.app.main.MainLangAdapter$MainLangItem] */
        /* JADX WARN: Type inference failed for: r3v8, types: [java.lang.Object, com.mycompany.app.main.MainLangAdapter$MainLangItem] */
        /* JADX WARN: Type inference failed for: r8v2, types: [java.lang.Object, com.mycompany.app.main.MainLangAdapter$MainLangItem] */
        @Override // com.mycompany.app.async.MyAsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a() {
            /*
                Method dump skipped, instructions count: 535
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogTransLang.DialogTask.a():void");
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            DialogTransLang dialogTransLang;
            WeakReference weakReference = this.e;
            if (weakReference == null || (dialogTransLang = (DialogTransLang) weakReference.get()) == null) {
                return;
            }
            dialogTransLang.x0 = null;
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            final DialogTransLang dialogTransLang;
            WeakReference weakReference = this.e;
            if (weakReference != null && (dialogTransLang = (DialogTransLang) weakReference.get()) != null) {
                dialogTransLang.x0 = null;
                List list = this.f;
                List list2 = this.g;
                boolean z = this.h;
                if (dialogTransLang.p0 != null) {
                    MainLangAdapter mainLangAdapter = dialogTransLang.z0;
                    if (mainLangAdapter != null) {
                        mainLangAdapter.g = list2;
                        mainLangAdapter.k = z;
                        mainLangAdapter.o = -1;
                        mainLangAdapter.p = -1;
                        mainLangAdapter.g();
                        return;
                    }
                    MainLangAdapter mainLangAdapter2 = new MainLangAdapter(dialogTransLang.b0, dialogTransLang.f0, list, list2, dialogTransLang.h0, new MainLangAdapter.MainLangListener() { // from class: com.mycompany.app.dialog.DialogTransLang.18
                        @Override // com.mycompany.app.main.MainLangAdapter.MainLangListener
                        public final void a(int i, String str) {
                            List list3;
                            PrefZtwo r;
                            DialogTransLang dialogTransLang2 = DialogTransLang.this;
                            if (dialogTransLang2.c0 == null || TextUtils.isEmpty(str)) {
                                return;
                            }
                            if (dialogTransLang2.e0) {
                                if (!PrefZtwo.O || !str.equals(PrefZtwo.P)) {
                                    PrefZtwo.O = true;
                                    PrefZtwo.P = str;
                                    Context context = dialogTransLang2.b0;
                                    if (context != null && (r = PrefZtwo.r(context, false)) != null) {
                                        r.l("mNewsTitle", PrefZtwo.O);
                                        r.p("mNewsPick", PrefZtwo.P);
                                        r.a();
                                    }
                                }
                            } else if (!str.equals(PrefAlbum.y)) {
                                PrefAlbum.y = str;
                                PrefAlbum.z = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                                PrefAlbum.u(dialogTransLang2.b0);
                            }
                            MainLangAdapter mainLangAdapter3 = dialogTransLang2.z0;
                            String str2 = null;
                            if (mainLangAdapter3 != null && (((list3 = mainLangAdapter3.f) == null || list3.isEmpty()) && !MainUtil.q5(mainLangAdapter3.i, str))) {
                                str2 = mainLangAdapter3.i;
                            }
                            DbRecentLang.j(dialogTransLang2.f0, dialogTransLang2.b0, str2, str);
                            dialogTransLang2.c0.a(str);
                        }

                        @Override // com.mycompany.app.main.MainLangAdapter.MainLangListener
                        public final void b() {
                            DialogTransLang dialogTransLang2 = DialogTransLang.this;
                            dialogTransLang2.G(dialogTransLang2.B0);
                        }
                    });
                    dialogTransLang.z0 = mainLangAdapter2;
                    dialogTransLang.p0.setAdapter(mainLangAdapter2);
                    dialogTransLang.G(dialogTransLang.B0);
                    if (dialogTransLang.i0 < 1) {
                        return;
                    }
                    dialogTransLang.p0.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogTransLang.19
                        @Override // java.lang.Runnable
                        public final void run() {
                            MyManagerLinear myManagerLinear;
                            DialogTransLang dialogTransLang2 = DialogTransLang.this;
                            if (dialogTransLang2.z0 != null && (myManagerLinear = dialogTransLang2.A0) != null) {
                                myManagerLinear.x0(dialogTransLang2.i0);
                            }
                        }
                    });
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface TransLangListener {
        void a(String str);
    }

    /* loaded from: classes3.dex */
    public interface TransNotiListener {
        void a();
    }

    /* loaded from: classes3.dex */
    public class WebAppInterface {
        public WebAppInterface() {
        }

        @JavascriptInterface
        public void onJsResult(String str, String str2) {
            if (!TextUtils.isEmpty(str) && str.equals("onTransList")) {
                final DialogTransLang dialogTransLang = DialogTransLang.this;
                if (dialogTransLang.r0 != null) {
                    if (TextUtils.isEmpty(str2)) {
                        Handler handler = dialogTransLang.i;
                        if (handler != null) {
                            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogTransLang.16
                                @Override // java.lang.Runnable
                                public final void run() {
                                    DialogTransLang.D(DialogTransLang.this);
                                }
                            });
                            return;
                        }
                        return;
                    }
                    dialogTransLang.I0 = str2;
                    dialogTransLang.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogTransLang.17
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogTransLang dialogTransLang2 = DialogTransLang.this;
                            String str3 = dialogTransLang2.I0;
                            dialogTransLang2.I0 = null;
                            if (dialogTransLang2.r0 != null) {
                                MainUtil.P7(dialogTransLang2.b0, str3);
                                Handler handler2 = dialogTransLang2.i;
                                if (handler2 == null) {
                                    return;
                                }
                                handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogTransLang.17.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        DialogTransLang.D(DialogTransLang.this);
                                    }
                                });
                            }
                        }
                    });
                }
            }
        }

        @JavascriptInterface
        public void onObserDet(String str, int i) {
            Handler handler;
            if (i == 0 || (handler = DialogTransLang.this.i) == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogTransLang.WebAppInterface.1
                @Override // java.lang.Runnable
                public final void run() {
                    DialogTransLang dialogTransLang = DialogTransLang.this;
                    Context context = dialogTransLang.b0;
                    if (context == null || DataTrans.a(context).b()) {
                        return;
                    }
                    MainUtil.M3(dialogTransLang.r0);
                }
            });
        }
    }

    public DialogTransLang(MainActivity mainActivity, boolean z, TransLangListener transLangListener) {
        super(mainActivity);
        String str;
        this.a0 = mainActivity;
        this.b0 = getContext();
        this.c0 = transLangListener;
        this.e0 = z;
        if (z) {
            str = PrefZtwo.P;
        } else {
            str = PrefAlbum.y;
        }
        this.g0 = str;
        this.h0 = -1;
        this.i0 = -1;
        this.j0 = MainUtil.M5();
        if (z) {
            this.f0 = 1;
        } else {
            this.f0 = 2;
        }
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogTransLang.1
            @Override // java.lang.Runnable
            public final void run() {
                DialogTransLang.C(DialogTransLang.this);
            }
        });
    }

    public static void B(DialogTransLang dialogTransLang, String str) {
        if (dialogTransLang.r0 != null) {
            if (MainUtil.D5(str)) {
                if (dialogTransLang.u0) {
                    dialogTransLang.u0 = false;
                    MyWebSafe myWebSafe = dialogTransLang.r0;
                    if (myWebSafe != null) {
                        myWebSafe.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogTransLang.13
                            @Override // java.lang.Runnable
                            public final void run() {
                                DialogTransLang dialogTransLang2 = DialogTransLang.this;
                                MyWebSafe myWebSafe2 = dialogTransLang2.r0;
                                if (myWebSafe2 == null) {
                                    return;
                                }
                                dialogTransLang2.u0 = false;
                                myWebSafe2.removeJavascriptInterface("android");
                            }
                        });
                        return;
                    }
                    return;
                }
                return;
            }
            if (!dialogTransLang.u0) {
                dialogTransLang.u0 = true;
                MyWebSafe myWebSafe2 = dialogTransLang.r0;
                if (myWebSafe2 == null) {
                    return;
                }
                myWebSafe2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogTransLang.14
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogTransLang dialogTransLang2 = DialogTransLang.this;
                        MyWebSafe myWebSafe3 = dialogTransLang2.r0;
                        if (myWebSafe3 == null) {
                            return;
                        }
                        dialogTransLang2.u0 = true;
                        myWebSafe3.addJavascriptInterface(new WebAppInterface(), "android");
                    }
                });
            }
        }
    }

    public static void C(DialogTransLang dialogTransLang) {
        int i;
        Context context = dialogTransLang.b0;
        if (context != null) {
            int i2 = R.id.item_frame_view;
            int i3 = R.id.item_trans_view;
            MyDialogRelative myDialogRelative = new MyDialogRelative(context);
            RelativeLayout relativeLayout = new RelativeLayout(context);
            myDialogRelative.addView(relativeLayout, -1, MainApp.b1);
            MyRoundView myRoundView = new MyRoundView(context);
            relativeLayout.addView(myRoundView, -1, MainApp.b1);
            RelativeLayout relativeLayout2 = new RelativeLayout(context);
            relativeLayout2.setId(i2);
            relativeLayout2.setMinimumWidth(MainApp.g1);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, MainApp.b1);
            layoutParams.addRule(21);
            layoutParams.setMarginEnd(MainApp.G1);
            relativeLayout.addView(relativeLayout2, layoutParams);
            MyButtonImage myButtonImage = new MyButtonImage(context);
            myButtonImage.setId(i3);
            ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_INSIDE;
            myButtonImage.setScaleType(scaleType);
            myButtonImage.setVisibility(8);
            relativeLayout2.addView(myButtonImage, MainApp.g1, MainApp.b1);
            if (MainApp.K1) {
                i = -328966;
            } else {
                i = -13022805;
            }
            MyCoverView myCoverView = new MyCoverView(context, i, (int) MainUtil.G(context, 2.0f), MainApp.z1);
            myCoverView.setVisibility(8);
            relativeLayout2.addView(myCoverView, MainApp.g1, MainApp.b1);
            MyButtonImage myButtonImage2 = new MyButtonImage(context);
            myButtonImage2.setScaleType(scaleType);
            myButtonImage2.setVisibility(8);
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(MainApp.g1, MainApp.b1);
            layoutParams2.addRule(17, i3);
            relativeLayout2.addView(myButtonImage2, layoutParams2);
            MyButtonImage myButtonImage3 = new MyButtonImage(context);
            myButtonImage3.setScaleType(scaleType);
            myButtonImage3.setVisibility(8);
            relativeLayout2.addView(myButtonImage3, MainApp.g1, MainApp.b1);
            MyEditPure myEditPure = new MyEditPure(context);
            myEditPure.setGravity(16);
            myEditPure.setSingleLine(true);
            myEditPure.setTextDirection(3);
            myEditPure.setTextSize(1, 16.0f);
            if (Build.VERSION.SDK_INT >= 29) {
                myEditPure.setTextCursorDrawable(R.drawable.edit_cursor);
            }
            myEditPure.setHint(R.string.search_url);
            myEditPure.setHintTextColor(-8289919);
            myEditPure.setImeOptions(268435459);
            myEditPure.setSelectAllOnFocus(true);
            myEditPure.setBackground(null);
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, MainApp.b1);
            layoutParams3.addRule(16, i2);
            layoutParams3.setMarginStart((int) MainUtil.G(context, 20.0f));
            relativeLayout.addView(myEditPure, layoutParams3);
            MyRecyclerView u = com.google.android.gms.internal.mlkit_vision_text_common.a.u(context, true, false);
            RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams4.topMargin = MainApp.b1;
            layoutParams4.bottomMargin = MainApp.g1;
            myDialogRelative.addView(u, layoutParams4);
            View view = new View(context);
            view.setVisibility(8);
            RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams((int) MainUtil.G(context, 130.0f), (int) MainUtil.G(context, 24.0f));
            layoutParams5.addRule(21);
            layoutParams5.addRule(12);
            layoutParams5.bottomMargin = MainApp.g1;
            myDialogRelative.addView(view, layoutParams5);
            MyLineText myLineText = new MyLineText(context);
            myLineText.setGravity(17);
            myLineText.setTextSize(1, 16.0f);
            myLineText.setText(R.string.close);
            myLineText.t(MainApp.E1);
            RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(-1, MainApp.g1);
            layoutParams6.addRule(12);
            myDialogRelative.addView(myLineText, layoutParams6);
            dialogTransLang.k0 = myDialogRelative;
            dialogTransLang.l0 = myEditPure;
            dialogTransLang.m0 = myButtonImage3;
            dialogTransLang.n0 = myRoundView;
            dialogTransLang.o0 = myButtonImage2;
            dialogTransLang.p0 = u;
            dialogTransLang.q0 = myLineText;
            Handler handler = dialogTransLang.i;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogTransLang.2
                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Type inference failed for: r1v17, types: [com.mycompany.app.view.MyManagerLinear, androidx.recyclerview.widget.RecyclerView$LayoutManager, androidx.recyclerview.widget.LinearLayoutManager] */
                @Override // java.lang.Runnable
                public final void run() {
                    final DialogTransLang dialogTransLang2 = DialogTransLang.this;
                    if (dialogTransLang2.k0 != null && dialogTransLang2.b0 != null) {
                        MainUtil.r7(dialogTransLang2.p0);
                        int i4 = -1;
                        if (MainApp.K1) {
                            dialogTransLang2.k0.setBackgroundColor(-16777216);
                            dialogTransLang2.l0.setTextColor(-328966);
                            dialogTransLang2.m0.setImageResource(R.drawable.outline_cancel_dark_18);
                            dialogTransLang2.m0.setBgPreColor(-12632257);
                            dialogTransLang2.o0.setImageResource(R.drawable.outline_delete_dark_20);
                            dialogTransLang2.o0.setBgPreColor(-12632257);
                            dialogTransLang2.p0.setBackgroundColor(-14606047);
                            dialogTransLang2.q0.setBackgroundResource(R.drawable.selector_list_back_dark);
                            dialogTransLang2.q0.setTextColor(-328966);
                        } else {
                            dialogTransLang2.k0.setBackgroundColor(-460552);
                            dialogTransLang2.l0.setTextColor(-16777216);
                            dialogTransLang2.m0.setImageResource(R.drawable.outline_cancel_black_18);
                            dialogTransLang2.m0.setBgPreColor(-2039584);
                            dialogTransLang2.o0.setImageResource(R.drawable.outline_delete_black_20);
                            dialogTransLang2.o0.setBgPreColor(-2039584);
                            dialogTransLang2.p0.setBackgroundColor(-1);
                            dialogTransLang2.q0.setBackgroundResource(R.drawable.selector_list_back);
                            dialogTransLang2.q0.setTextColor(-16777216);
                        }
                        MyRoundView myRoundView2 = dialogTransLang2.n0;
                        if (MainApp.K1) {
                            i4 = -14606047;
                        }
                        myRoundView2.setBackColor(i4);
                        dialogTransLang2.m0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogTransLang.3
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view2) {
                                DialogTransLang dialogTransLang3 = DialogTransLang.this;
                                if (dialogTransLang3.m0 == null) {
                                    return;
                                }
                                dialogTransLang3.G(false);
                                dialogTransLang3.l0.setText((CharSequence) null);
                                dialogTransLang3.E(null);
                            }
                        });
                        dialogTransLang2.l0.addTextChangedListener(new TextWatcher() { // from class: com.mycompany.app.dialog.DialogTransLang.4
                            @Override // android.text.TextWatcher
                            public final void afterTextChanged(Editable editable) {
                                String str;
                                DialogTransLang dialogTransLang3 = DialogTransLang.this;
                                if (dialogTransLang3.m0 == null) {
                                    return;
                                }
                                if (!TextUtils.isEmpty(editable)) {
                                    str = editable.toString();
                                } else {
                                    str = null;
                                }
                                if (TextUtils.isEmpty(str)) {
                                    dialogTransLang3.G(false);
                                } else {
                                    dialogTransLang3.G(true);
                                    str = str.trim();
                                }
                                boolean isEmpty = TextUtils.isEmpty(str);
                                boolean z = !isEmpty;
                                if (!isEmpty || dialogTransLang3.C0) {
                                    dialogTransLang3.E(str);
                                }
                                dialogTransLang3.C0 = z;
                            }

                            @Override // android.text.TextWatcher
                            public final void beforeTextChanged(CharSequence charSequence, int i5, int i6, int i7) {
                            }

                            @Override // android.text.TextWatcher
                            public final void onTextChanged(CharSequence charSequence, int i5, int i6, int i7) {
                            }
                        });
                        dialogTransLang2.o0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogTransLang.5
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view2) {
                                MyButtonImage myButtonImage4 = DialogTransLang.this.o0;
                                if (myButtonImage4 == null) {
                                    return;
                                }
                                myButtonImage4.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogTransLang.5.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        final DialogTransLang dialogTransLang3 = DialogTransLang.this;
                                        if (dialogTransLang3.a0 == null || dialogTransLang3.D0 != null) {
                                            return;
                                        }
                                        dialogTransLang3.F();
                                        dialogTransLang3.E0 = false;
                                        DialogSetMsg dialogSetMsg = new DialogSetMsg(dialogTransLang3.a0, true, R.string.lang_delete, R.string.delete, 0, new AnonymousClass20());
                                        dialogTransLang3.D0 = dialogSetMsg;
                                        dialogSetMsg.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogTransLang.21
                                            @Override // android.content.DialogInterface.OnDismissListener
                                            public final void onDismiss(DialogInterface dialogInterface) {
                                                int i5 = DialogTransLang.J0;
                                                final DialogTransLang dialogTransLang4 = DialogTransLang.this;
                                                dialogTransLang4.F();
                                                if (dialogTransLang4.E0) {
                                                    dialogTransLang4.E0 = false;
                                                    if (dialogTransLang4.z0 == null) {
                                                        return;
                                                    }
                                                    dialogTransLang4.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogTransLang.22
                                                        @Override // java.lang.Runnable
                                                        public final void run() {
                                                            DialogTransLang dialogTransLang5 = DialogTransLang.this;
                                                            MainLangAdapter mainLangAdapter = dialogTransLang5.z0;
                                                            if (mainLangAdapter == null || !mainLangAdapter.x()) {
                                                                return;
                                                            }
                                                            dialogTransLang5.i.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogTransLang.22.1
                                                                @Override // java.lang.Runnable
                                                                public final void run() {
                                                                    DialogTransLang dialogTransLang6 = DialogTransLang.this;
                                                                    if (dialogTransLang6.z0 == null) {
                                                                        return;
                                                                    }
                                                                    dialogTransLang6.G(dialogTransLang6.B0);
                                                                    dialogTransLang6.z0.g();
                                                                }
                                                            });
                                                        }
                                                    });
                                                }
                                            }
                                        });
                                    }
                                });
                            }
                        });
                        ?? linearLayoutManager = new LinearLayoutManager(1);
                        dialogTransLang2.A0 = linearLayoutManager;
                        dialogTransLang2.p0.setLayoutManager(linearLayoutManager);
                        dialogTransLang2.t(dialogTransLang2.p0, new MyDialogBottom.BotListListener() { // from class: com.mycompany.app.dialog.DialogTransLang.6
                            @Override // com.mycompany.app.view.MyDialogBottom.BotListListener
                            public final void a(boolean z) {
                                MyRecyclerView myRecyclerView = DialogTransLang.this.p0;
                                if (myRecyclerView == null) {
                                    return;
                                }
                                if (z) {
                                    myRecyclerView.w0();
                                } else {
                                    myRecyclerView.r0();
                                }
                            }
                        });
                        dialogTransLang2.q0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogTransLang.7
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view2) {
                                DialogTransLang.this.dismiss();
                            }
                        });
                        dialogTransLang2.f(dialogTransLang2.k0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogTransLang.8
                            @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                            public final void a(View view2) {
                                final DialogTransLang dialogTransLang3 = DialogTransLang.this;
                                if (dialogTransLang3.k0 != null) {
                                    dialogTransLang3.show();
                                    Handler handler2 = dialogTransLang3.i;
                                    if (handler2 == null) {
                                        return;
                                    }
                                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogTransLang.9
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            DialogTransLang dialogTransLang4 = DialogTransLang.this;
                                            if (DataTrans.a(dialogTransLang4.b0).b()) {
                                                dialogTransLang4.E(null);
                                                return;
                                            }
                                            if (dialogTransLang4.r0 == null && dialogTransLang4.k0 != null) {
                                                MyWebSafe myWebSafe = new MyWebSafe(dialogTransLang4.a0);
                                                dialogTransLang4.r0 = myWebSafe;
                                                MainApp.I(dialogTransLang4.b0, myWebSafe);
                                                dialogTransLang4.r0.setVisibility(4);
                                                dialogTransLang4.k0.addView(dialogTransLang4.r0, 0, new ViewGroup.LayoutParams(-1, -1));
                                                dialogTransLang4.l0.setEnabled(false);
                                                dialogTransLang4.k0.e(true);
                                                Handler handler3 = dialogTransLang4.i;
                                                if (handler3 != null) {
                                                    handler3.post(new AnonymousClass10());
                                                }
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

    public static void D(DialogTransLang dialogTransLang) {
        if (dialogTransLang.k0 == null) {
            return;
        }
        MyWebSafe myWebSafe = dialogTransLang.r0;
        if (myWebSafe != null) {
            if (dialogTransLang.s0) {
                dialogTransLang.s0 = false;
                myWebSafe.stopLoading();
            }
            MainUtil.P6(dialogTransLang.r0);
            dialogTransLang.r0 = null;
        }
        dialogTransLang.l0.setEnabled(true);
        dialogTransLang.k0.e(false);
        if (DataTrans.a(dialogTransLang.b0).b()) {
            dialogTransLang.E(null);
        } else {
            MainUtil.e8(dialogTransLang.b0, R.string.fail);
        }
    }

    public final void E(String str) {
        DialogTask dialogTask = this.x0;
        if (dialogTask != null) {
            dialogTask.f12839c = true;
        }
        this.x0 = null;
        DialogTask dialogTask2 = new DialogTask(this, str);
        this.x0 = dialogTask2;
        dialogTask2.b(this.b0);
    }

    public final void F() {
        DialogSetMsg dialogSetMsg = this.D0;
        if (dialogSetMsg != null) {
            dialogSetMsg.dismiss();
            this.D0 = null;
        }
    }

    public final void G(boolean z) {
        this.B0 = z;
        MyButtonImage myButtonImage = this.m0;
        if (myButtonImage == null) {
            return;
        }
        if (z) {
            myButtonImage.setVisibility(0);
            this.o0.setVisibility(8);
            return;
        }
        myButtonImage.setVisibility(8);
        MainLangAdapter mainLangAdapter = this.z0;
        List list = null;
        if (mainLangAdapter != null && DbRecentLang.e(mainLangAdapter.e) != 0) {
            list = mainLangAdapter.f;
        }
        if (list != null && !list.isEmpty()) {
            this.o0.setVisibility(0);
        } else {
            this.o0.setVisibility(8);
        }
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.b0 == null) {
            return;
        }
        F();
        DialogTask dialogTask = this.x0;
        if (dialogTask != null) {
            dialogTask.f12839c = true;
        }
        this.x0 = null;
        MyDialogRelative myDialogRelative = this.k0;
        if (myDialogRelative != null) {
            myDialogRelative.c();
            this.k0 = null;
        }
        MyButtonImage myButtonImage = this.m0;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.m0 = null;
        }
        MyRoundView myRoundView = this.n0;
        if (myRoundView != null) {
            myRoundView.a();
            this.n0 = null;
        }
        MyButtonImage myButtonImage2 = this.o0;
        if (myButtonImage2 != null) {
            myButtonImage2.j();
            this.o0 = null;
        }
        MyRecyclerView myRecyclerView = this.p0;
        if (myRecyclerView != null) {
            myRecyclerView.s0();
            this.p0 = null;
        }
        MyLineText myLineText = this.q0;
        if (myLineText != null) {
            myLineText.u();
            this.q0 = null;
        }
        MyWebSafe myWebSafe = this.r0;
        if (myWebSafe != null) {
            if (this.s0) {
                this.s0 = false;
                myWebSafe.stopLoading();
            }
            MainUtil.P6(this.r0);
            this.r0 = null;
        }
        MainLangAdapter mainLangAdapter = this.z0;
        if (mainLangAdapter != null) {
            mainLangAdapter.q = mainLangAdapter.d();
            mainLangAdapter.d = null;
            mainLangAdapter.f = null;
            mainLangAdapter.g = null;
            mainLangAdapter.i = null;
            mainLangAdapter.j = null;
            MainUtil.R6(mainLangAdapter.n);
            mainLangAdapter.n = null;
            this.z0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.c0 = null;
        this.d0 = null;
        this.g0 = null;
        this.l0 = null;
        this.v0 = null;
        this.w0 = null;
        this.y0 = null;
        this.A0 = null;
        super.dismiss();
    }

    /* loaded from: classes3.dex */
    public class LocalWebViewClient extends WebViewClient {
        public LocalWebViewClient() {
        }

        @Override // android.webkit.WebViewClient
        public final void onPageFinished(WebView webView, String str) {
            final DialogTransLang dialogTransLang = DialogTransLang.this;
            if (dialogTransLang.r0 != null) {
                dialogTransLang.s0 = false;
                DialogTransLang.B(dialogTransLang, str);
                if (!dialogTransLang.F0 && !TextUtils.isEmpty(str) && !str.equals(dialogTransLang.G0)) {
                    dialogTransLang.F0 = true;
                    dialogTransLang.G0 = str;
                    Handler handler = dialogTransLang.i;
                    if (handler != null) {
                        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogTransLang.11
                            @Override // java.lang.Runnable
                            public final void run() {
                                DialogTransLang dialogTransLang2 = DialogTransLang.this;
                                MainUtil.l(dialogTransLang2.r0);
                                dialogTransLang2.F0 = false;
                            }
                        });
                    }
                }
                dialogTransLang.t0 = true;
                if (TextUtils.isEmpty(dialogTransLang.v0)) {
                    return;
                }
                dialogTransLang.t0 = false;
                MainUtil.J(dialogTransLang.r0, dialogTransLang.v0, true);
                dialogTransLang.v0 = null;
            }
        }

        @Override // android.webkit.WebViewClient
        public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            DialogTransLang dialogTransLang = DialogTransLang.this;
            if (dialogTransLang.r0 == null) {
                return;
            }
            dialogTransLang.s0 = true;
            DialogTransLang.B(dialogTransLang, str);
        }

        @Override // android.webkit.WebViewClient
        public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            final DialogTransLang dialogTransLang = DialogTransLang.this;
            dialogTransLang.r0 = null;
            MainUtil.D(webView, renderProcessGoneDetail);
            Handler handler = dialogTransLang.i;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogTransLang.12
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogTransLang.this.dismiss();
                    }
                });
                return true;
            }
            return true;
        }

        @Override // android.webkit.WebViewClient
        public final WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
            DialogTransLang dialogTransLang = DialogTransLang.this;
            if (dialogTransLang.r0 != null && webResourceRequest != null && webResourceRequest.getUrl() != null) {
                DialogTransLang.B(dialogTransLang, webResourceRequest.getUrl().toString());
            }
            return null;
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
            DialogTransLang dialogTransLang = DialogTransLang.this;
            if (dialogTransLang.r0 == null || TextUtils.isEmpty(str)) {
                return true;
            }
            DialogTransLang.B(dialogTransLang, str);
            dialogTransLang.r0.loadUrl(str);
            return true;
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            DialogTransLang dialogTransLang = DialogTransLang.this;
            if (dialogTransLang.r0 != null && webResourceRequest != null && webResourceRequest.getUrl() != null) {
                String uri = webResourceRequest.getUrl().toString();
                if (!TextUtils.isEmpty(uri)) {
                    DialogTransLang.B(dialogTransLang, uri);
                }
            }
            return false;
        }
    }
}
