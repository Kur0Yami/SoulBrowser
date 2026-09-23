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
import com.mycompany.app.async.MyAsyncTask;
import com.mycompany.app.data.DataTrans;
import com.mycompany.app.db.book.DbBookLocale;
import com.mycompany.app.db.book.DbRecentLang;
import com.mycompany.app.dialog.DialogSetMsg;
import com.mycompany.app.dialog.DialogTransLang;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainLangAdapter;
import com.mycompany.app.main.MainSelectAdapter;
import com.mycompany.app.main.MainTransLocale;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.pref.PrefZtwo;
import com.mycompany.app.setting.SettingNews;
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
import java.util.Locale;

/* loaded from: classes3.dex */
public class DialogNewsLocale extends MyDialogBottom {
    public static final /* synthetic */ int S0 = 0;
    public int A0;
    public int B0;
    public boolean C0;
    public boolean D0;
    public MyWebSafe E0;
    public boolean F0;
    public boolean G0;
    public boolean H0;
    public String I0;
    public String J0;
    public String K0;
    public boolean L0;
    public DialogSetMsg M0;
    public boolean N0;
    public boolean O0;
    public String P0;
    public String Q0;
    public String R0;
    public MainActivity a0;
    public Context b0;
    public MainSelectAdapter.MainSelectListener c0;
    public DialogTransLang.TransNotiListener d0;
    public String[] e0;
    public int f0;
    public int g0;
    public MyDialogRelative h0;
    public MyEditPure i0;
    public MyButtonImage j0;
    public MyRoundView k0;
    public MyButtonImage l0;
    public MyButtonImage m0;
    public MyCoverView n0;
    public View o0;
    public MyRecyclerView p0;
    public MyLineText q0;
    public DialogTask r0;
    public List s0;
    public ArrayList t0;
    public MainLangAdapter u0;
    public MyManagerLinear v0;
    public boolean w0;
    public boolean x0;
    public MainTransLocale y0;
    public List z0;

    /* renamed from: com.mycompany.app.dialog.DialogNewsLocale$16, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass16 implements Runnable {

        /* renamed from: com.mycompany.app.dialog.DialogNewsLocale$16$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 implements Runnable {
            public AnonymousClass1() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                DialogNewsLocale dialogNewsLocale = DialogNewsLocale.this;
                MyWebSafe myWebSafe = dialogNewsLocale.E0;
                if (myWebSafe != null) {
                    myWebSafe.setWebViewClient(new LocalWebViewClient());
                    Handler handler = dialogNewsLocale.i;
                    if (handler == null) {
                        return;
                    }
                    handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogNewsLocale.16.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            AnonymousClass16 anonymousClass16 = AnonymousClass16.this;
                            DialogNewsLocale dialogNewsLocale2 = DialogNewsLocale.this;
                            MyWebSafe myWebSafe2 = dialogNewsLocale2.E0;
                            if (myWebSafe2 != null) {
                                dialogNewsLocale2.H0 = true;
                                myWebSafe2.addJavascriptInterface(new WebAppInterface(), "android");
                                Handler handler2 = DialogNewsLocale.this.i;
                                if (handler2 == null) {
                                    return;
                                }
                                handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogNewsLocale.16.1.1.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        DialogNewsLocale dialogNewsLocale3 = DialogNewsLocale.this;
                                        if (dialogNewsLocale3.E0 == null) {
                                            return;
                                        }
                                        dialogNewsLocale3.s(new AnonymousClass21());
                                    }
                                });
                            }
                        }
                    });
                }
            }
        }

        public AnonymousClass16() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            DialogNewsLocale dialogNewsLocale = DialogNewsLocale.this;
            MyWebSafe myWebSafe = dialogNewsLocale.E0;
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
                Handler handler = dialogNewsLocale.i;
                if (handler == null) {
                    return;
                }
                handler.post(new AnonymousClass1());
            }
        }
    }

    /* renamed from: com.mycompany.app.dialog.DialogNewsLocale$21, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass21 implements Runnable {
        public AnonymousClass21() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            int i = DialogNewsLocale.S0;
            DialogNewsLocale dialogNewsLocale = DialogNewsLocale.this;
            dialogNewsLocale.I();
            int i2 = DialogTransLang.J0;
            dialogNewsLocale.Q0 = "<!DOCTYPE html><html><head><meta charset=\"utf-8\"/><meta name='viewport' content='width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=5.0,user-scalable=yes'/></head><body><p>test</p></body></html>";
            dialogNewsLocale.K0 = MainUtil.M1("soul_lang_", dialogNewsLocale.J0);
            MyWebSafe myWebSafe = dialogNewsLocale.E0;
            if (myWebSafe == null) {
                return;
            }
            myWebSafe.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogNewsLocale.21.1
                @Override // java.lang.Runnable
                public final void run() {
                    MyWebSafe myWebSafe2;
                    DialogNewsLocale dialogNewsLocale2 = DialogNewsLocale.this;
                    String str = dialogNewsLocale2.Q0;
                    dialogNewsLocale2.Q0 = null;
                    if (TextUtils.isEmpty(str) || (myWebSafe2 = dialogNewsLocale2.E0) == null) {
                        return;
                    }
                    MainUtil.r6(myWebSafe2, dialogNewsLocale2.K0, str);
                    dialogNewsLocale2.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogNewsLocale.21.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            String str2;
                            DialogNewsLocale dialogNewsLocale3;
                            AnonymousClass21 anonymousClass21 = AnonymousClass21.this;
                            DialogNewsLocale dialogNewsLocale4 = DialogNewsLocale.this;
                            if (dialogNewsLocale4.E0 != null) {
                                StringBuilder N3 = MainUtil.N3();
                                if (N3 != null) {
                                    String M2 = MainUtil.M2(null);
                                    if (!TextUtils.isEmpty(M2)) {
                                        N3.insert(0, M2);
                                        str2 = N3.toString();
                                        dialogNewsLocale4.I0 = str2;
                                        dialogNewsLocale3 = DialogNewsLocale.this;
                                        if (!dialogNewsLocale3.G0 && !TextUtils.isEmpty(dialogNewsLocale3.I0)) {
                                            dialogNewsLocale3.G0 = false;
                                            MainUtil.J(dialogNewsLocale3.E0, dialogNewsLocale3.I0, true);
                                            dialogNewsLocale3.I0 = null;
                                            return;
                                        }
                                    }
                                }
                                str2 = null;
                                dialogNewsLocale4.I0 = str2;
                                dialogNewsLocale3 = DialogNewsLocale.this;
                                if (!dialogNewsLocale3.G0) {
                                }
                            }
                        }
                    });
                }
            });
        }
    }

    /* renamed from: com.mycompany.app.dialog.DialogNewsLocale$24, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass24 implements DialogSetMsg.DialogMsgListener {
        public AnonymousClass24() {
        }

        @Override // com.mycompany.app.dialog.DialogSetMsg.DialogMsgListener
        public final void a() {
            DialogNewsLocale dialogNewsLocale = DialogNewsLocale.this;
            DialogSetMsg dialogSetMsg = dialogNewsLocale.M0;
            if (dialogSetMsg == null) {
                return;
            }
            dialogNewsLocale.N0 = false;
            dialogSetMsg.C();
            dialogNewsLocale.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogNewsLocale.24.1
                @Override // java.lang.Runnable
                public final void run() {
                    DialogNewsLocale dialogNewsLocale2 = DialogNewsLocale.this;
                    MainLangAdapter mainLangAdapter = dialogNewsLocale2.u0;
                    if (mainLangAdapter == null) {
                        return;
                    }
                    mainLangAdapter.v();
                    dialogNewsLocale2.i.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogNewsLocale.24.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            AnonymousClass24 anonymousClass24 = AnonymousClass24.this;
                            DialogNewsLocale dialogNewsLocale3 = DialogNewsLocale.this;
                            if (dialogNewsLocale3.u0 == null) {
                                return;
                            }
                            dialogNewsLocale3.G(dialogNewsLocale3.w0);
                            DialogNewsLocale.this.u0.g();
                            DialogNewsLocale.this.F();
                        }
                    });
                }
            });
        }

        @Override // com.mycompany.app.dialog.DialogSetMsg.DialogMsgListener
        public final void b() {
            DialogNewsLocale dialogNewsLocale = DialogNewsLocale.this;
            DialogTransLang.TransNotiListener transNotiListener = dialogNewsLocale.d0;
            if (transNotiListener != null) {
                transNotiListener.a();
                return;
            }
            if (dialogNewsLocale.a0 == null) {
                return;
            }
            dialogNewsLocale.N0 = true;
            Intent intent = new Intent(dialogNewsLocale.b0, (Class<?>) SettingNews.class);
            intent.putExtra("EXTRA_NOTI", true);
            intent.putExtra("EXTRA_INDEX", 6);
            dialogNewsLocale.a0.startActivity(intent);
        }
    }

    /* loaded from: classes3.dex */
    public static class DialogTask extends MyAsyncTask {
        public final WeakReference e;
        public List f;
        public List g;
        public boolean h;
        public String i;

        public DialogTask(DialogNewsLocale dialogNewsLocale, String str) {
            WeakReference weakReference = new WeakReference(dialogNewsLocale);
            this.e = weakReference;
            if (((DialogNewsLocale) weakReference.get()) == null) {
                return;
            }
            this.h = false;
            this.i = str;
        }

        /* JADX WARN: Code restructure failed: missing block: B:187:0x00fd, code lost:
        
            r8.close();
         */
        /* JADX WARN: Removed duplicated region for block: B:114:0x0108  */
        /* JADX WARN: Removed duplicated region for block: B:125:0x0130  */
        /* JADX WARN: Type inference failed for: r2v11, types: [java.lang.Object, com.mycompany.app.main.MainLangAdapter$MainLangItem] */
        /* JADX WARN: Type inference failed for: r2v9, types: [java.lang.Object, com.mycompany.app.main.MainLangAdapter$MainLangItem] */
        /* JADX WARN: Type inference failed for: r6v3, types: [java.lang.Object, com.mycompany.app.main.MainLangAdapter$MainLangItem] */
        @Override // com.mycompany.app.async.MyAsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a() {
            /*
                Method dump skipped, instructions count: 612
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogNewsLocale.DialogTask.a():void");
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            DialogNewsLocale dialogNewsLocale;
            WeakReference weakReference = this.e;
            if (weakReference == null || (dialogNewsLocale = (DialogNewsLocale) weakReference.get()) == null) {
                return;
            }
            dialogNewsLocale.r0 = null;
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            final DialogNewsLocale dialogNewsLocale;
            WeakReference weakReference = this.e;
            if (weakReference != null && (dialogNewsLocale = (DialogNewsLocale) weakReference.get()) != null) {
                dialogNewsLocale.r0 = null;
                List list = this.f;
                List list2 = this.g;
                boolean z = this.h;
                if (dialogNewsLocale.p0 == null) {
                    return;
                }
                MainLangAdapter mainLangAdapter = dialogNewsLocale.u0;
                if (mainLangAdapter != null) {
                    mainLangAdapter.g = list2;
                    mainLangAdapter.k = z;
                    mainLangAdapter.o = -1;
                    mainLangAdapter.p = -1;
                    mainLangAdapter.g();
                    return;
                }
                MainLangAdapter mainLangAdapter2 = new MainLangAdapter(dialogNewsLocale.b0, 0, list, list2, dialogNewsLocale.f0, new MainLangAdapter.MainLangListener() { // from class: com.mycompany.app.dialog.DialogNewsLocale.11
                    @Override // com.mycompany.app.main.MainLangAdapter.MainLangListener
                    public final void a(int i, String str) {
                        List list3;
                        DialogNewsLocale dialogNewsLocale2 = DialogNewsLocale.this;
                        if (dialogNewsLocale2.c0 == null || TextUtils.isEmpty(str)) {
                            return;
                        }
                        MainLangAdapter mainLangAdapter3 = dialogNewsLocale2.u0;
                        String str2 = null;
                        if (mainLangAdapter3 != null && (((list3 = mainLangAdapter3.f) == null || list3.isEmpty()) && !MainUtil.q5(mainLangAdapter3.i, str))) {
                            str2 = mainLangAdapter3.i;
                        }
                        DbRecentLang.j(0, dialogNewsLocale2.b0, str2, str);
                        dialogNewsLocale2.c0.a(i);
                    }

                    @Override // com.mycompany.app.main.MainLangAdapter.MainLangListener
                    public final void b() {
                        DialogNewsLocale dialogNewsLocale2 = DialogNewsLocale.this;
                        dialogNewsLocale2.G(dialogNewsLocale2.w0);
                    }
                });
                dialogNewsLocale.u0 = mainLangAdapter2;
                mainLangAdapter2.l = PrefZtwo.Y;
                dialogNewsLocale.p0.setAdapter(mainLangAdapter2);
                dialogNewsLocale.G(dialogNewsLocale.w0);
                dialogNewsLocale.H();
            }
        }
    }

    /* loaded from: classes3.dex */
    public class WebAppInterface {
        public WebAppInterface() {
        }

        @JavascriptInterface
        public void onJsResult(String str, String str2) {
            if (!TextUtils.isEmpty(str) && str.equals("onTransList")) {
                final DialogNewsLocale dialogNewsLocale = DialogNewsLocale.this;
                if (dialogNewsLocale.E0 != null) {
                    if (TextUtils.isEmpty(str2)) {
                        Handler handler = dialogNewsLocale.i;
                        if (handler != null) {
                            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogNewsLocale.22
                                @Override // java.lang.Runnable
                                public final void run() {
                                    MyWebSafe myWebSafe;
                                    DialogNewsLocale dialogNewsLocale2 = DialogNewsLocale.this;
                                    if (dialogNewsLocale2.h0 != null && (myWebSafe = dialogNewsLocale2.E0) != null) {
                                        if (dialogNewsLocale2.F0) {
                                            dialogNewsLocale2.F0 = false;
                                            myWebSafe.stopLoading();
                                        }
                                        MainUtil.P6(dialogNewsLocale2.E0);
                                        dialogNewsLocale2.E0 = null;
                                    }
                                }
                            });
                            return;
                        }
                        return;
                    }
                    dialogNewsLocale.R0 = str2;
                    dialogNewsLocale.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogNewsLocale.23
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogNewsLocale dialogNewsLocale2 = DialogNewsLocale.this;
                            String str3 = dialogNewsLocale2.R0;
                            dialogNewsLocale2.R0 = null;
                            if (dialogNewsLocale2.E0 != null) {
                                MainUtil.P7(dialogNewsLocale2.b0, str3);
                                Handler handler2 = dialogNewsLocale2.i;
                                if (handler2 == null) {
                                    return;
                                }
                                handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogNewsLocale.23.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        MyWebSafe myWebSafe;
                                        DialogNewsLocale dialogNewsLocale3 = DialogNewsLocale.this;
                                        if (dialogNewsLocale3.h0 != null && (myWebSafe = dialogNewsLocale3.E0) != null) {
                                            if (dialogNewsLocale3.F0) {
                                                dialogNewsLocale3.F0 = false;
                                                myWebSafe.stopLoading();
                                            }
                                            MainUtil.P6(dialogNewsLocale3.E0);
                                            dialogNewsLocale3.E0 = null;
                                        }
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
            if (i == 0 || (handler = DialogNewsLocale.this.i) == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogNewsLocale.WebAppInterface.1
                @Override // java.lang.Runnable
                public final void run() {
                    DialogNewsLocale dialogNewsLocale = DialogNewsLocale.this;
                    Context context = dialogNewsLocale.b0;
                    if (context == null || DataTrans.a(context).b()) {
                        return;
                    }
                    MainUtil.M3(dialogNewsLocale.E0);
                }
            });
        }
    }

    public DialogNewsLocale(MainActivity mainActivity, String[] strArr, MainSelectAdapter.MainSelectListener mainSelectListener) {
        super(mainActivity);
        this.a0 = mainActivity;
        this.b0 = getContext();
        this.c0 = mainSelectListener;
        this.e0 = strArr;
        this.f0 = PrefZtwo.N;
        this.g0 = -1;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogNewsLocale.1
            @Override // java.lang.Runnable
            public final void run() {
                DialogNewsLocale.D(DialogNewsLocale.this);
            }
        });
    }

    public static void B(DialogNewsLocale dialogNewsLocale, String str) {
        if (dialogNewsLocale.E0 != null) {
            if (MainUtil.D5(str)) {
                if (dialogNewsLocale.H0) {
                    dialogNewsLocale.H0 = false;
                    MyWebSafe myWebSafe = dialogNewsLocale.E0;
                    if (myWebSafe != null) {
                        myWebSafe.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogNewsLocale.19
                            @Override // java.lang.Runnable
                            public final void run() {
                                DialogNewsLocale dialogNewsLocale2 = DialogNewsLocale.this;
                                MyWebSafe myWebSafe2 = dialogNewsLocale2.E0;
                                if (myWebSafe2 == null) {
                                    return;
                                }
                                dialogNewsLocale2.H0 = false;
                                myWebSafe2.removeJavascriptInterface("android");
                            }
                        });
                        return;
                    }
                    return;
                }
                return;
            }
            if (!dialogNewsLocale.H0) {
                dialogNewsLocale.H0 = true;
                MyWebSafe myWebSafe2 = dialogNewsLocale.E0;
                if (myWebSafe2 == null) {
                    return;
                }
                myWebSafe2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogNewsLocale.20
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogNewsLocale dialogNewsLocale2 = DialogNewsLocale.this;
                        MyWebSafe myWebSafe3 = dialogNewsLocale2.E0;
                        if (myWebSafe3 == null) {
                            return;
                        }
                        dialogNewsLocale2.H0 = true;
                        myWebSafe3.addJavascriptInterface(new WebAppInterface(), "android");
                    }
                });
            }
        }
    }

    public static void C(DialogNewsLocale dialogNewsLocale) {
        if (dialogNewsLocale.h0 != null && dialogNewsLocale.y0 == null) {
            dialogNewsLocale.I();
            dialogNewsLocale.y0 = new MainTransLocale(dialogNewsLocale.a0, dialogNewsLocale.b0, dialogNewsLocale.h0, dialogNewsLocale.s0, dialogNewsLocale.t0, dialogNewsLocale.J0, new MainTransLocale.TransLocaleListener() { // from class: com.mycompany.app.dialog.DialogNewsLocale.14
                @Override // com.mycompany.app.main.MainTransLocale.TransLocaleListener
                public final void a(ArrayList arrayList) {
                    DialogNewsLocale dialogNewsLocale2 = DialogNewsLocale.this;
                    MainTransLocale mainTransLocale = dialogNewsLocale2.y0;
                    if (mainTransLocale == null) {
                        return;
                    }
                    mainTransLocale.b();
                    dialogNewsLocale2.y0 = null;
                    dialogNewsLocale2.z0 = arrayList;
                    dialogNewsLocale2.J();
                    MainLangAdapter mainLangAdapter = dialogNewsLocale2.u0;
                    if (mainLangAdapter != null) {
                        boolean z = PrefZtwo.Y;
                        boolean z2 = dialogNewsLocale2.w0;
                        mainLangAdapter.l = z;
                        if (!z2) {
                            mainLangAdapter.o = -1;
                            mainLangAdapter.p = -1;
                            mainLangAdapter.g();
                        }
                    }
                    dialogNewsLocale2.H();
                }
            });
            Handler handler = dialogNewsLocale.i;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogNewsLocale.15
                @Override // java.lang.Runnable
                public final void run() {
                    int i = DialogNewsLocale.S0;
                    DialogNewsLocale.this.J();
                }
            });
        }
    }

    public static void D(DialogNewsLocale dialogNewsLocale) {
        int i;
        Context context = dialogNewsLocale.b0;
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
            dialogNewsLocale.h0 = myDialogRelative;
            dialogNewsLocale.i0 = myEditPure;
            dialogNewsLocale.j0 = myButtonImage3;
            dialogNewsLocale.k0 = myRoundView;
            dialogNewsLocale.l0 = myButtonImage2;
            dialogNewsLocale.m0 = myButtonImage;
            dialogNewsLocale.n0 = myCoverView;
            dialogNewsLocale.o0 = view;
            dialogNewsLocale.p0 = u;
            dialogNewsLocale.q0 = myLineText;
            Handler handler = dialogNewsLocale.i;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogNewsLocale.2
                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Type inference failed for: r1v22, types: [com.mycompany.app.view.MyManagerLinear, androidx.recyclerview.widget.RecyclerView$LayoutManager, androidx.recyclerview.widget.LinearLayoutManager] */
                @Override // java.lang.Runnable
                public final void run() {
                    final DialogNewsLocale dialogNewsLocale2 = DialogNewsLocale.this;
                    if (dialogNewsLocale2.h0 != null && dialogNewsLocale2.b0 != null) {
                        MainUtil.r7(dialogNewsLocale2.p0);
                        int i4 = -1;
                        if (MainApp.K1) {
                            dialogNewsLocale2.h0.setBackgroundColor(-16777216);
                            dialogNewsLocale2.i0.setTextColor(-328966);
                            dialogNewsLocale2.j0.setImageResource(R.drawable.outline_cancel_dark_18);
                            dialogNewsLocale2.j0.setBgPreColor(-12632257);
                            dialogNewsLocale2.l0.setImageResource(R.drawable.outline_delete_dark_20);
                            dialogNewsLocale2.l0.setBgPreColor(-12632257);
                            dialogNewsLocale2.m0.setBgPreColor(-12632257);
                            dialogNewsLocale2.o0.setBackgroundResource(R.drawable.trans_logo_short_back_dark);
                            dialogNewsLocale2.p0.setBackgroundColor(-14606047);
                            dialogNewsLocale2.q0.setBackgroundResource(R.drawable.selector_list_back_dark);
                            dialogNewsLocale2.q0.setTextColor(-328966);
                        } else {
                            dialogNewsLocale2.h0.setBackgroundColor(-460552);
                            dialogNewsLocale2.i0.setTextColor(-16777216);
                            dialogNewsLocale2.j0.setImageResource(R.drawable.outline_cancel_black_18);
                            dialogNewsLocale2.j0.setBgPreColor(-2039584);
                            dialogNewsLocale2.l0.setImageResource(R.drawable.outline_delete_black_20);
                            dialogNewsLocale2.l0.setBgPreColor(-2039584);
                            dialogNewsLocale2.m0.setBgPreColor(-2039584);
                            dialogNewsLocale2.o0.setBackgroundResource(R.drawable.trans_logo_short_back_color);
                            dialogNewsLocale2.p0.setBackgroundColor(-1);
                            dialogNewsLocale2.q0.setBackgroundResource(R.drawable.selector_list_back);
                            dialogNewsLocale2.q0.setTextColor(-16777216);
                        }
                        MyRoundView myRoundView2 = dialogNewsLocale2.k0;
                        if (MainApp.K1) {
                            i4 = -14606047;
                        }
                        myRoundView2.setBackColor(i4);
                        dialogNewsLocale2.n0.setForeSize(MainApp.z1 + MainApp.F1);
                        dialogNewsLocale2.J();
                        dialogNewsLocale2.j0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogNewsLocale.3
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view2) {
                                DialogNewsLocale dialogNewsLocale3 = DialogNewsLocale.this;
                                if (dialogNewsLocale3.j0 == null) {
                                    return;
                                }
                                dialogNewsLocale3.G(false);
                                dialogNewsLocale3.i0.setText((CharSequence) null);
                                DialogTask dialogTask = dialogNewsLocale3.r0;
                                if (dialogTask != null) {
                                    dialogTask.f12839c = true;
                                }
                                dialogNewsLocale3.r0 = null;
                                DialogTask dialogTask2 = new DialogTask(dialogNewsLocale3, null);
                                dialogNewsLocale3.r0 = dialogTask2;
                                dialogTask2.b(dialogNewsLocale3.b0);
                            }
                        });
                        dialogNewsLocale2.i0.addTextChangedListener(new TextWatcher() { // from class: com.mycompany.app.dialog.DialogNewsLocale.4
                            @Override // android.text.TextWatcher
                            public final void afterTextChanged(Editable editable) {
                                String str;
                                DialogNewsLocale dialogNewsLocale3 = DialogNewsLocale.this;
                                if (dialogNewsLocale3.j0 == null) {
                                    return;
                                }
                                if (!TextUtils.isEmpty(editable)) {
                                    str = editable.toString();
                                } else {
                                    str = null;
                                }
                                if (TextUtils.isEmpty(str)) {
                                    dialogNewsLocale3.G(false);
                                } else {
                                    dialogNewsLocale3.G(true);
                                    str = str.trim();
                                }
                                boolean isEmpty = TextUtils.isEmpty(str);
                                boolean z = !isEmpty;
                                if (!isEmpty || dialogNewsLocale3.x0) {
                                    DialogTask dialogTask = dialogNewsLocale3.r0;
                                    if (dialogTask != null) {
                                        dialogTask.f12839c = true;
                                    }
                                    dialogNewsLocale3.r0 = null;
                                    DialogTask dialogTask2 = new DialogTask(dialogNewsLocale3, str);
                                    dialogNewsLocale3.r0 = dialogTask2;
                                    dialogTask2.b(dialogNewsLocale3.b0);
                                }
                                dialogNewsLocale3.x0 = z;
                            }

                            @Override // android.text.TextWatcher
                            public final void beforeTextChanged(CharSequence charSequence, int i5, int i6, int i7) {
                            }

                            @Override // android.text.TextWatcher
                            public final void onTextChanged(CharSequence charSequence, int i5, int i6, int i7) {
                            }
                        });
                        dialogNewsLocale2.l0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogNewsLocale.5
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view2) {
                                MyButtonImage myButtonImage4 = DialogNewsLocale.this.l0;
                                if (myButtonImage4 == null) {
                                    return;
                                }
                                myButtonImage4.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogNewsLocale.5.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        final DialogNewsLocale dialogNewsLocale3 = DialogNewsLocale.this;
                                        if (dialogNewsLocale3.a0 == null || dialogNewsLocale3.M0 != null) {
                                            return;
                                        }
                                        dialogNewsLocale3.F();
                                        dialogNewsLocale3.N0 = false;
                                        DialogSetMsg dialogSetMsg = new DialogSetMsg(dialogNewsLocale3.a0, true, R.string.lang_delete, R.string.delete, 0, new AnonymousClass24());
                                        dialogNewsLocale3.M0 = dialogSetMsg;
                                        dialogSetMsg.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogNewsLocale.25
                                            @Override // android.content.DialogInterface.OnDismissListener
                                            public final void onDismiss(DialogInterface dialogInterface) {
                                                int i5 = DialogNewsLocale.S0;
                                                final DialogNewsLocale dialogNewsLocale4 = DialogNewsLocale.this;
                                                dialogNewsLocale4.F();
                                                if (dialogNewsLocale4.N0) {
                                                    dialogNewsLocale4.N0 = false;
                                                    if (dialogNewsLocale4.u0 == null) {
                                                        return;
                                                    }
                                                    dialogNewsLocale4.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogNewsLocale.26
                                                        @Override // java.lang.Runnable
                                                        public final void run() {
                                                            DialogNewsLocale dialogNewsLocale5 = DialogNewsLocale.this;
                                                            MainLangAdapter mainLangAdapter = dialogNewsLocale5.u0;
                                                            if (mainLangAdapter == null || !mainLangAdapter.x()) {
                                                                return;
                                                            }
                                                            dialogNewsLocale5.i.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogNewsLocale.26.1
                                                                @Override // java.lang.Runnable
                                                                public final void run() {
                                                                    DialogNewsLocale dialogNewsLocale6 = DialogNewsLocale.this;
                                                                    if (dialogNewsLocale6.u0 == null) {
                                                                        return;
                                                                    }
                                                                    dialogNewsLocale6.G(dialogNewsLocale6.w0);
                                                                    dialogNewsLocale6.u0.g();
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
                        if (PrefZtwo.X) {
                            dialogNewsLocale2.m0.setNoti(true);
                        }
                        dialogNewsLocale2.m0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogNewsLocale.6
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view2) {
                                DialogNewsLocale dialogNewsLocale3 = DialogNewsLocale.this;
                                ArrayList arrayList = dialogNewsLocale3.t0;
                                if (arrayList != null && !arrayList.isEmpty() && dialogNewsLocale3.m0 != null) {
                                    if (dialogNewsLocale3.y0 != null) {
                                        MainUtil.e8(dialogNewsLocale3.b0, R.string.wait_retry);
                                        return;
                                    }
                                    if (!DataTrans.a(dialogNewsLocale3.b0).b()) {
                                        MainUtil.e8(dialogNewsLocale3.b0, R.string.wait_retry);
                                    } else if (!dialogNewsLocale3.D0) {
                                        dialogNewsLocale3.D0 = true;
                                        dialogNewsLocale3.m0.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogNewsLocale.6.1
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                final DialogNewsLocale dialogNewsLocale4 = DialogNewsLocale.this;
                                                if (PrefZtwo.X) {
                                                    PrefZtwo.X = false;
                                                    PrefSet.d(16, dialogNewsLocale4.b0, "mLocNoti", false);
                                                    MyButtonImage myButtonImage4 = dialogNewsLocale4.m0;
                                                    if (myButtonImage4 != null) {
                                                        myButtonImage4.setNoti(false);
                                                    }
                                                }
                                                int i5 = DialogNewsLocale.S0;
                                                boolean z = !PrefZtwo.Y;
                                                PrefZtwo.Y = z;
                                                PrefSet.d(16, dialogNewsLocale4.b0, "mLocTrans", z);
                                                if (!PrefZtwo.Y) {
                                                    dialogNewsLocale4.J();
                                                    MainLangAdapter mainLangAdapter = dialogNewsLocale4.u0;
                                                    if (mainLangAdapter != null) {
                                                        boolean z2 = PrefZtwo.Y;
                                                        boolean z3 = dialogNewsLocale4.w0;
                                                        mainLangAdapter.l = z2;
                                                        if (!z3) {
                                                            mainLangAdapter.o = -1;
                                                            mainLangAdapter.p = -1;
                                                            mainLangAdapter.g();
                                                        }
                                                    }
                                                    dialogNewsLocale4.D0 = false;
                                                    return;
                                                }
                                                dialogNewsLocale4.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogNewsLocale.13
                                                    @Override // java.lang.Runnable
                                                    public final void run() {
                                                        int i6 = DialogNewsLocale.S0;
                                                        DialogNewsLocale dialogNewsLocale5 = DialogNewsLocale.this;
                                                        dialogNewsLocale5.I();
                                                        List list = dialogNewsLocale5.z0;
                                                        if (list == null || list.isEmpty()) {
                                                            dialogNewsLocale5.z0 = DbBookLocale.b(dialogNewsLocale5.b0, dialogNewsLocale5.J0);
                                                        }
                                                        List list2 = dialogNewsLocale5.z0;
                                                        if (list2 != null && !list2.isEmpty()) {
                                                            DialogNewsLocale.E(dialogNewsLocale5);
                                                            Handler handler2 = dialogNewsLocale5.i;
                                                            if (handler2 == null) {
                                                                return;
                                                            }
                                                            handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogNewsLocale.13.1
                                                                @Override // java.lang.Runnable
                                                                public final void run() {
                                                                    DialogNewsLocale dialogNewsLocale6 = DialogNewsLocale.this;
                                                                    if (dialogNewsLocale6.b0 == null) {
                                                                        return;
                                                                    }
                                                                    dialogNewsLocale6.J();
                                                                    MainLangAdapter mainLangAdapter2 = dialogNewsLocale6.u0;
                                                                    if (mainLangAdapter2 != null) {
                                                                        boolean z4 = PrefZtwo.Y;
                                                                        boolean z5 = dialogNewsLocale6.w0;
                                                                        mainLangAdapter2.l = z4;
                                                                        if (!z5) {
                                                                            mainLangAdapter2.o = -1;
                                                                            mainLangAdapter2.p = -1;
                                                                            mainLangAdapter2.g();
                                                                        }
                                                                    }
                                                                    dialogNewsLocale6.H();
                                                                    dialogNewsLocale6.D0 = false;
                                                                }
                                                            });
                                                            return;
                                                        }
                                                        DialogNewsLocale.C(dialogNewsLocale5);
                                                        dialogNewsLocale5.D0 = false;
                                                    }
                                                });
                                            }
                                        });
                                    }
                                }
                            }
                        });
                        ?? linearLayoutManager = new LinearLayoutManager(1);
                        dialogNewsLocale2.v0 = linearLayoutManager;
                        dialogNewsLocale2.p0.setLayoutManager(linearLayoutManager);
                        dialogNewsLocale2.t(dialogNewsLocale2.p0, new MyDialogBottom.BotListListener() { // from class: com.mycompany.app.dialog.DialogNewsLocale.7
                            @Override // com.mycompany.app.view.MyDialogBottom.BotListListener
                            public final void a(boolean z) {
                                View view2;
                                int height;
                                DialogNewsLocale dialogNewsLocale3 = DialogNewsLocale.this;
                                MyRecyclerView myRecyclerView = dialogNewsLocale3.p0;
                                if (myRecyclerView == null) {
                                    return;
                                }
                                if (z) {
                                    myRecyclerView.w0();
                                } else {
                                    myRecyclerView.r0();
                                }
                                int computeVerticalScrollOffset = dialogNewsLocale3.p0.computeVerticalScrollOffset();
                                int i5 = dialogNewsLocale3.B0;
                                if (dialogNewsLocale3.C0 && (view2 = dialogNewsLocale3.o0) != null && view2.getVisibility() == 0 && (height = dialogNewsLocale3.o0.getHeight()) != 0) {
                                    int i6 = (computeVerticalScrollOffset - i5) + dialogNewsLocale3.A0;
                                    dialogNewsLocale3.A0 = i6;
                                    if (i6 > height) {
                                        dialogNewsLocale3.A0 = height;
                                    } else if (i6 < 0) {
                                        dialogNewsLocale3.A0 = 0;
                                    }
                                    dialogNewsLocale3.o0.setAlpha(1.0f - (dialogNewsLocale3.A0 / height));
                                    dialogNewsLocale3.o0.setTranslationY(dialogNewsLocale3.A0);
                                }
                                dialogNewsLocale3.B0 = computeVerticalScrollOffset;
                                dialogNewsLocale3.C0 = true;
                            }
                        });
                        dialogNewsLocale2.q0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogNewsLocale.8
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view2) {
                                DialogNewsLocale.this.dismiss();
                            }
                        });
                        dialogNewsLocale2.f(dialogNewsLocale2.h0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogNewsLocale.9
                            @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                            public final void a(View view2) {
                                final DialogNewsLocale dialogNewsLocale3 = DialogNewsLocale.this;
                                if (dialogNewsLocale3.h0 != null) {
                                    dialogNewsLocale3.show();
                                    Handler handler2 = dialogNewsLocale3.i;
                                    if (handler2 == null) {
                                        return;
                                    }
                                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogNewsLocale.10
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            DialogNewsLocale dialogNewsLocale4 = DialogNewsLocale.this;
                                            DialogTask dialogTask = dialogNewsLocale4.r0;
                                            if (dialogTask != null) {
                                                dialogTask.f12839c = true;
                                            }
                                            dialogNewsLocale4.r0 = null;
                                            DialogTask dialogTask2 = new DialogTask(dialogNewsLocale4, null);
                                            dialogNewsLocale4.r0 = dialogTask2;
                                            dialogTask2.b(dialogNewsLocale4.b0);
                                            if (!DataTrans.a(dialogNewsLocale4.b0).b() && dialogNewsLocale4.E0 == null && dialogNewsLocale4.h0 != null) {
                                                MyWebSafe myWebSafe = new MyWebSafe(dialogNewsLocale4.a0);
                                                dialogNewsLocale4.E0 = myWebSafe;
                                                MainApp.I(dialogNewsLocale4.b0, myWebSafe);
                                                dialogNewsLocale4.E0.setVisibility(4);
                                                dialogNewsLocale4.h0.addView(dialogNewsLocale4.E0, 0, new ViewGroup.LayoutParams(-1, -1));
                                                Handler handler3 = dialogNewsLocale4.i;
                                                if (handler3 != null) {
                                                    handler3.post(new AnonymousClass16());
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

    /* JADX WARN: Removed duplicated region for block: B:50:0x008f A[Catch: Exception -> 0x009c, TryCatch #0 {Exception -> 0x009c, blocks: (B:25:0x004a, B:27:0x004e, B:32:0x0055, B:33:0x0059, B:35:0x005f, B:38:0x0068, B:41:0x006e, B:44:0x0078, B:47:0x007f, B:48:0x0087, B:50:0x008f, B:51:0x0099), top: B:24:0x004a }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void E(com.mycompany.app.dialog.DialogNewsLocale r9) {
        /*
            java.util.ArrayList r0 = r9.t0
            if (r0 == 0) goto L9c
            boolean r1 = r0.isEmpty()
            if (r1 == 0) goto Lc
            goto L9c
        Lc:
            int r1 = r0.size()
            r2 = 0
        L11:
            r3 = 0
            r4 = 2
            if (r2 >= r1) goto L4a
            java.lang.Object r5 = r0.get(r2)
            int r2 = r2 + 1
            com.mycompany.app.main.MainLangAdapter$MainLangItem r5 = (com.mycompany.app.main.MainLangAdapter.MainLangItem) r5
            if (r5 != 0) goto L20
            goto L11
        L20:
            int r6 = r5.f16561c
            java.util.List r7 = r9.z0
            if (r7 == 0) goto L35
            if (r6 < 0) goto L35
            int r8 = r7.size()
            if (r6 < r8) goto L2f
            goto L35
        L2f:
            java.lang.Object r3 = r7.get(r6)
            java.lang.String r3 = (java.lang.String) r3
        L35:
            r5.h = r3
            boolean r3 = android.text.TextUtils.isEmpty(r3)
            if (r3 != 0) goto L47
            java.lang.String r3 = r5.h
            java.util.Locale r6 = java.util.Locale.US
            java.lang.String r3 = r3.toLowerCase(r6)
            r5.j = r3
        L47:
            r5.k = r4
            goto L11
        L4a:
            java.util.List r0 = r9.s0     // Catch: java.lang.Exception -> L9c
            if (r0 == 0) goto L9c
            boolean r1 = r0.isEmpty()     // Catch: java.lang.Exception -> L9c
            if (r1 == 0) goto L55
            goto L9c
        L55:
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Exception -> L9c
        L59:
            boolean r1 = r0.hasNext()     // Catch: java.lang.Exception -> L9c
            if (r1 == 0) goto L9c
            java.lang.Object r1 = r0.next()     // Catch: java.lang.Exception -> L9c
            com.mycompany.app.main.MainLangAdapter$MainLangItem r1 = (com.mycompany.app.main.MainLangAdapter.MainLangItem) r1     // Catch: java.lang.Exception -> L9c
            if (r1 != 0) goto L68
            goto L59
        L68:
            int r2 = r1.f16560a     // Catch: java.lang.Exception -> L9c
            r5 = 1
            if (r2 == r5) goto L6e
            goto L59
        L6e:
            int r2 = r1.f16561c     // Catch: java.lang.Exception -> L9c
            int r2 = r2 + (-1000)
            java.util.List r5 = r9.z0     // Catch: java.lang.Exception -> L9c
            if (r5 == 0) goto L86
            if (r2 < 0) goto L86
            int r6 = r5.size()     // Catch: java.lang.Exception -> L9c
            if (r2 < r6) goto L7f
            goto L86
        L7f:
            java.lang.Object r2 = r5.get(r2)     // Catch: java.lang.Exception -> L9c
            java.lang.String r2 = (java.lang.String) r2     // Catch: java.lang.Exception -> L9c
            goto L87
        L86:
            r2 = r3
        L87:
            r1.h = r2     // Catch: java.lang.Exception -> L9c
            boolean r2 = android.text.TextUtils.isEmpty(r2)     // Catch: java.lang.Exception -> L9c
            if (r2 != 0) goto L99
            java.lang.String r2 = r1.h     // Catch: java.lang.Exception -> L9c
            java.util.Locale r5 = java.util.Locale.US     // Catch: java.lang.Exception -> L9c
            java.lang.String r2 = r2.toLowerCase(r5)     // Catch: java.lang.Exception -> L9c
            r1.j = r2     // Catch: java.lang.Exception -> L9c
        L99:
            r1.k = r4     // Catch: java.lang.Exception -> L9c
            goto L59
        L9c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogNewsLocale.E(com.mycompany.app.dialog.DialogNewsLocale):void");
    }

    public final void F() {
        DialogSetMsg dialogSetMsg = this.M0;
        if (dialogSetMsg != null) {
            dialogSetMsg.dismiss();
            this.M0 = null;
        }
    }

    public final void G(boolean z) {
        this.w0 = z;
        MyButtonImage myButtonImage = this.j0;
        if (myButtonImage == null) {
            return;
        }
        if (z) {
            myButtonImage.setVisibility(0);
            this.l0.setVisibility(8);
            this.m0.setVisibility(8);
            this.n0.setVisibility(8);
            return;
        }
        myButtonImage.setVisibility(8);
        MainLangAdapter mainLangAdapter = this.u0;
        List list = null;
        if (mainLangAdapter != null && DbRecentLang.e(mainLangAdapter.e) != 0) {
            list = mainLangAdapter.f;
        }
        if (list != null && !list.isEmpty()) {
            this.l0.setVisibility(0);
        } else {
            this.l0.setVisibility(8);
        }
        this.m0.setVisibility(0);
        if (this.y0 != null) {
            this.n0.setVisibility(0);
        } else {
            this.n0.setVisibility(8);
        }
    }

    public final void H() {
        final int i = this.g0;
        this.g0 = -1;
        if (i >= 1 && !this.w0) {
            this.C0 = false;
            MyRecyclerView myRecyclerView = this.p0;
            if (myRecyclerView == null) {
                return;
            }
            myRecyclerView.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogNewsLocale.12
                @Override // java.lang.Runnable
                public final void run() {
                    MyManagerLinear myManagerLinear;
                    DialogNewsLocale dialogNewsLocale = DialogNewsLocale.this;
                    if (dialogNewsLocale.u0 != null && !dialogNewsLocale.w0 && (myManagerLinear = dialogNewsLocale.v0) != null) {
                        myManagerLinear.x0(i);
                    }
                }
            });
        }
    }

    public final void I() {
        if (!TextUtils.isEmpty(this.J0)) {
            return;
        }
        String g2 = MainUtil.g2();
        this.J0 = g2;
        boolean z = false;
        if (!TextUtils.isEmpty(g2)) {
            String lowerCase = g2.toLowerCase(Locale.US);
            if (!TextUtils.isEmpty(lowerCase)) {
                z = lowerCase.startsWith("ko");
            }
        }
        this.L0 = z;
    }

    public final void J() {
        MyButtonImage myButtonImage = this.m0;
        if (myButtonImage != null) {
            if (PrefZtwo.Y) {
                myButtonImage.setImageResource(R.drawable.outline_g_translate_color_18);
            } else if (MainApp.K1) {
                myButtonImage.setImageResource(R.drawable.outline_g_translate_dark_18);
            } else {
                myButtonImage.setImageResource(R.drawable.outline_g_translate_black_18);
            }
            G(this.w0);
            View view = this.o0;
            if (view != null) {
                if (PrefZtwo.Y && this.y0 == null) {
                    if (view.getVisibility() != 0) {
                        this.C0 = false;
                        this.A0 = 0;
                        this.o0.setAlpha(1.0f);
                        this.o0.setTranslationY(0.0f);
                        this.o0.setVisibility(0);
                        return;
                    }
                    return;
                }
                view.setVisibility(8);
            }
        }
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.b0 == null) {
            return;
        }
        MainTransLocale mainTransLocale = this.y0;
        if (mainTransLocale != null) {
            mainTransLocale.b();
            this.y0 = null;
        }
        F();
        DialogTask dialogTask = this.r0;
        if (dialogTask != null) {
            dialogTask.f12839c = true;
        }
        this.r0 = null;
        MyDialogRelative myDialogRelative = this.h0;
        if (myDialogRelative != null) {
            myDialogRelative.c();
            this.h0 = null;
        }
        MyButtonImage myButtonImage = this.j0;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.j0 = null;
        }
        MyRoundView myRoundView = this.k0;
        if (myRoundView != null) {
            myRoundView.a();
            this.k0 = null;
        }
        MyButtonImage myButtonImage2 = this.l0;
        if (myButtonImage2 != null) {
            myButtonImage2.j();
            this.l0 = null;
        }
        MyButtonImage myButtonImage3 = this.m0;
        if (myButtonImage3 != null) {
            myButtonImage3.j();
            this.m0 = null;
        }
        MyCoverView myCoverView = this.n0;
        if (myCoverView != null) {
            myCoverView.i();
            this.n0 = null;
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
        MainLangAdapter mainLangAdapter = this.u0;
        if (mainLangAdapter != null) {
            mainLangAdapter.q = mainLangAdapter.d();
            mainLangAdapter.d = null;
            mainLangAdapter.f = null;
            mainLangAdapter.g = null;
            mainLangAdapter.i = null;
            mainLangAdapter.j = null;
            MainUtil.R6(mainLangAdapter.n);
            mainLangAdapter.n = null;
            this.u0 = null;
        }
        MyWebSafe myWebSafe = this.E0;
        if (myWebSafe != null) {
            if (this.F0) {
                this.F0 = false;
                myWebSafe.stopLoading();
            }
            MainUtil.P6(this.E0);
            this.E0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.c0 = null;
        this.d0 = null;
        this.e0 = null;
        this.i0 = null;
        this.o0 = null;
        this.s0 = null;
        this.t0 = null;
        this.v0 = null;
        this.z0 = null;
        this.I0 = null;
        this.J0 = null;
        this.K0 = null;
        super.dismiss();
    }

    /* loaded from: classes3.dex */
    public class LocalWebViewClient extends WebViewClient {
        public LocalWebViewClient() {
        }

        @Override // android.webkit.WebViewClient
        public final void onPageFinished(WebView webView, String str) {
            final DialogNewsLocale dialogNewsLocale = DialogNewsLocale.this;
            if (dialogNewsLocale.E0 != null) {
                dialogNewsLocale.F0 = false;
                DialogNewsLocale.B(dialogNewsLocale, str);
                if (!dialogNewsLocale.O0 && !TextUtils.isEmpty(str) && !str.equals(dialogNewsLocale.P0)) {
                    dialogNewsLocale.O0 = true;
                    dialogNewsLocale.P0 = str;
                    Handler handler = dialogNewsLocale.i;
                    if (handler != null) {
                        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogNewsLocale.17
                            @Override // java.lang.Runnable
                            public final void run() {
                                DialogNewsLocale dialogNewsLocale2 = DialogNewsLocale.this;
                                MainUtil.l(dialogNewsLocale2.E0);
                                dialogNewsLocale2.O0 = false;
                            }
                        });
                    }
                }
                dialogNewsLocale.G0 = true;
                if (TextUtils.isEmpty(dialogNewsLocale.I0)) {
                    return;
                }
                dialogNewsLocale.G0 = false;
                MainUtil.J(dialogNewsLocale.E0, dialogNewsLocale.I0, true);
                dialogNewsLocale.I0 = null;
            }
        }

        @Override // android.webkit.WebViewClient
        public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            DialogNewsLocale dialogNewsLocale = DialogNewsLocale.this;
            if (dialogNewsLocale.E0 == null) {
                return;
            }
            dialogNewsLocale.F0 = true;
            DialogNewsLocale.B(dialogNewsLocale, str);
        }

        @Override // android.webkit.WebViewClient
        public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            final DialogNewsLocale dialogNewsLocale = DialogNewsLocale.this;
            dialogNewsLocale.E0 = null;
            MainUtil.D(webView, renderProcessGoneDetail);
            Handler handler = dialogNewsLocale.i;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogNewsLocale.18
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogNewsLocale.this.dismiss();
                    }
                });
                return true;
            }
            return true;
        }

        @Override // android.webkit.WebViewClient
        public final WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
            DialogNewsLocale dialogNewsLocale = DialogNewsLocale.this;
            if (dialogNewsLocale.E0 != null && webResourceRequest != null && webResourceRequest.getUrl() != null) {
                DialogNewsLocale.B(dialogNewsLocale, webResourceRequest.getUrl().toString());
            }
            return null;
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
            DialogNewsLocale dialogNewsLocale = DialogNewsLocale.this;
            if (dialogNewsLocale.E0 == null || TextUtils.isEmpty(str)) {
                return true;
            }
            DialogNewsLocale.B(dialogNewsLocale, str);
            dialogNewsLocale.E0.loadUrl(str);
            return true;
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            DialogNewsLocale dialogNewsLocale = DialogNewsLocale.this;
            if (dialogNewsLocale.E0 != null && webResourceRequest != null && webResourceRequest.getUrl() != null) {
                String uri = webResourceRequest.getUrl().toString();
                if (!TextUtils.isEmpty(uri)) {
                    DialogNewsLocale.B(dialogNewsLocale, uri);
                }
            }
            return false;
        }
    }
}
