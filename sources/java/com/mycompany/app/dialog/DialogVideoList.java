package com.mycompany.app.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.mycompany.app.async.MyAsyncTask;
import com.mycompany.app.dialog.DialogPreview;
import com.mycompany.app.image.ImageSizeListener;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainDownAdapter;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyAdFrame;
import com.mycompany.app.view.MyAdNative;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyLineFrame;
import com.mycompany.app.view.MyRecyclerView;
import com.mycompany.app.view.MyRoundLinear;
import com.mycompany.app.view.MyWebSafe;
import com.mycompany.app.web.WebNestView;
import com.mycompany.app.web.WebSnsLoad;
import com.mycompany.app.web.WebViewActivity;
import com.mycompany.app.web.WebVkvLoad;
import java.lang.ref.WeakReference;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;

/* loaded from: classes3.dex */
public class DialogVideoList extends MyDialogBottom {
    public static final /* synthetic */ int O0 = 0;
    public MainDownAdapter A0;
    public DialogTask B0;
    public List C0;
    public int D0;
    public DialogDownLink E0;
    public int F0;
    public boolean G0;
    public boolean H0;
    public MainDownAdapter.DownListItem I0;
    public MainDownAdapter.DownListItem J0;
    public MainDownAdapter.DownListItem K0;
    public MainDownAdapter.DownListItem L0;
    public String M0;
    public MainDownAdapter.DownListItem N0;
    public WebViewActivity a0;
    public Context b0;
    public VideoListListener c0;
    public WebNestView d0;
    public String e0;
    public final int f0;
    public int g0;
    public boolean h0;
    public ViewGroup i0;
    public VkvListListener j0;
    public WebVkvLoad k0;
    public List l0;
    public MyDialogLinear m0;
    public final boolean n0;
    public MyAdFrame o0;
    public MyAdNative p0;
    public boolean q0;
    public boolean r0;
    public boolean s0;
    public MyRoundLinear t0;
    public MyLineFrame u0;
    public ImageView v0;
    public AppCompatTextView w0;
    public MyRecyclerView x0;
    public AppCompatTextView y0;
    public AppCompatTextView z0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.dialog.DialogVideoList$13, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass13 implements Runnable {
        public AnonymousClass13() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            VideoListListener videoListListener;
            DialogVideoList dialogVideoList = DialogVideoList.this;
            MainDownAdapter.DownListItem downListItem = dialogVideoList.I0;
            dialogVideoList.I0 = null;
            if (downListItem != null && (videoListListener = dialogVideoList.c0) != null) {
                videoListListener.a(downListItem.b, dialogVideoList.f0, null, downListItem.g);
            }
            dialogVideoList.G0 = false;
        }
    }

    /* loaded from: classes3.dex */
    public static class DialogTask extends MyAsyncTask {
        public final WeakReference e;

        public DialogTask(DialogVideoList dialogVideoList) {
            this.e = new WeakReference(dialogVideoList);
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void a() {
            DialogVideoList dialogVideoList;
            WeakReference weakReference = this.e;
            if (weakReference != null && (dialogVideoList = (DialogVideoList) weakReference.get()) != null && !this.f12839c) {
                try {
                    try {
                        DialogVideoList.C(dialogVideoList);
                    } catch (Exception unused) {
                    }
                } catch (Exception unused2) {
                    DialogVideoList.C(dialogVideoList);
                }
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            DialogVideoList dialogVideoList;
            WeakReference weakReference = this.e;
            if (weakReference == null || (dialogVideoList = (DialogVideoList) weakReference.get()) == null) {
                return;
            }
            dialogVideoList.B0 = null;
            dialogVideoList.dismiss();
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            DialogVideoList dialogVideoList;
            WeakReference weakReference = this.e;
            if (weakReference == null || (dialogVideoList = (DialogVideoList) weakReference.get()) == null) {
                return;
            }
            dialogVideoList.B0 = null;
            dialogVideoList.K();
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void f() {
            DialogVideoList dialogVideoList;
            WeakReference weakReference = this.e;
            if (weakReference == null || (dialogVideoList = (DialogVideoList) weakReference.get()) == null) {
                return;
            }
            int i = DialogVideoList.O0;
            dialogVideoList.L(true);
        }
    }

    /* loaded from: classes3.dex */
    public static class SortSub implements Comparator<MainDownAdapter.DownListItem> {
        @Override // java.util.Comparator
        public final int compare(MainDownAdapter.DownListItem downListItem, MainDownAdapter.DownListItem downListItem2) {
            MainDownAdapter.DownListItem downListItem3 = downListItem;
            MainDownAdapter.DownListItem downListItem4 = downListItem2;
            if (downListItem3 != null || downListItem4 != null) {
                if (downListItem3 != null) {
                    if (downListItem4 != null) {
                        boolean z = downListItem3.g;
                        if (z && !downListItem4.g) {
                            return 1;
                        }
                        if (!z && downListItem4.g) {
                            return -1;
                        }
                        return 0;
                    }
                    return -1;
                }
                return 1;
            }
            return 0;
        }
    }

    /* loaded from: classes3.dex */
    public interface VideoListListener {
        void a(String str, int i, String str2, boolean z);

        void b(String str, String str2);

        void c(String str, String str2, String str3);

        void d();

        void e(String str, String str2, boolean z);
    }

    /* loaded from: classes3.dex */
    public interface VkvListListener {
        void a(List list);
    }

    public DialogVideoList(WebViewActivity webViewActivity, WebNestView webNestView, String str, int i, boolean z, VideoListListener videoListListener) {
        super(webViewActivity);
        boolean z2;
        this.a0 = webViewActivity;
        this.b0 = getContext();
        this.c0 = videoListListener;
        this.d0 = webNestView;
        this.e0 = str;
        this.f0 = i;
        this.n0 = z;
        if (webNestView == null) {
            z2 = false;
        } else {
            z2 = webNestView.m0;
        }
        if (z2) {
            this.g0 = 1;
            if (!this.h0) {
                this.h0 = true;
                MainUtil.I(webNestView, "function mySrc(src){return src&&(src.indexOf('http')==0)&&!src.includes('youtube.com');}(function(){var src=null;var pst=null;var ele=document.querySelector(\"video\");if(ele){if(mySrc(ele.src)){src=ele.src;}else{var el2=ele.querySelector(\"source[type*='video']\");if(el2){if(mySrc(el2.src)){src=el2.src;}}}pst=ele.poster;}android.onVidDe2(src,pst);})();", true);
            }
        }
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogVideoList.1
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r10v0, types: [android.widget.LinearLayout, android.view.View, com.mycompany.app.view.MyRoundLinear, android.view.ViewGroup] */
            /* JADX WARN: Type inference failed for: r4v0, types: [com.mycompany.app.view.MyDialogLinear, android.view.ViewGroup] */
            /* JADX WARN: Type inference failed for: r5v3, types: [android.widget.FrameLayout, android.view.View] */
            @Override // java.lang.Runnable
            public final void run() {
                MyAdFrame myAdFrame;
                final DialogVideoList dialogVideoList = DialogVideoList.this;
                Context context = dialogVideoList.b0;
                if (context != null) {
                    ?? q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
                    if (dialogVideoList.n0) {
                        ?? frameLayout = new FrameLayout(context);
                        frameLayout.setMinimumHeight((int) MainUtil.G(context, 340.0f));
                        frameLayout.setVisibility(8);
                        q.addView(frameLayout, -1, -2);
                        myAdFrame = frameLayout;
                    } else {
                        myAdFrame = null;
                    }
                    ?? myRoundLinear = new MyRoundLinear(context);
                    myRoundLinear.setOrientation(1);
                    q.addView(myRoundLinear, -1, -2);
                    MyLineFrame myLineFrame = new MyLineFrame(context);
                    myLineFrame.a(MainApp.E1);
                    myRoundLinear.addView(myLineFrame, -1, MainApp.g1);
                    ImageView imageView = new ImageView(context);
                    imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                    int i2 = MainApp.f1;
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i2, i2);
                    layoutParams.gravity = 8388627;
                    layoutParams.setMarginStart(MainApp.E1);
                    myLineFrame.addView(imageView, layoutParams);
                    AppCompatTextView j = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
                    FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -2);
                    layoutParams2.gravity = 8388627;
                    layoutParams2.setMarginStart((int) MainUtil.G(context, 72.0f));
                    myLineFrame.addView(j, layoutParams2);
                    MyRecyclerView u = com.google.android.gms.internal.mlkit_vision_text_common.a.u(context, true, false);
                    LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, 0);
                    layoutParams3.gravity = 8388627;
                    layoutParams3.weight = 1.0f;
                    myRoundLinear.addView(u, layoutParams3);
                    AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
                    int i3 = MainApp.E1;
                    appCompatTextView.setPadding(i3, i3, i3, i3);
                    appCompatTextView.setMinHeight((int) MainUtil.G(context, 160.0f));
                    appCompatTextView.setGravity(17);
                    appCompatTextView.setLineSpacing(MainApp.F1, 1.0f);
                    appCompatTextView.setTextSize(1, 16.0f);
                    appCompatTextView.setVisibility(8);
                    myRoundLinear.addView(appCompatTextView, -1, -2);
                    dialogVideoList.m0 = q;
                    dialogVideoList.t0 = myRoundLinear;
                    dialogVideoList.u0 = myLineFrame;
                    dialogVideoList.v0 = imageView;
                    dialogVideoList.w0 = j;
                    dialogVideoList.x0 = u;
                    dialogVideoList.o0 = myAdFrame;
                    dialogVideoList.z0 = appCompatTextView;
                    Handler handler2 = dialogVideoList.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogVideoList.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            Context context2;
                            int i4;
                            final DialogVideoList dialogVideoList2 = DialogVideoList.this;
                            if (dialogVideoList2.x0 != null && (context2 = dialogVideoList2.b0) != null) {
                                int G = (int) MainUtil.G(context2, 112.0f);
                                dialogVideoList2.F0 = G;
                                dialogVideoList2.x0.setMinimumHeight(G);
                                dialogVideoList2.u0.setVisibility(4);
                                dialogVideoList2.x0.setVisibility(4);
                                if (MainApp.K1) {
                                    dialogVideoList2.w0.setTextColor(-328966);
                                } else {
                                    dialogVideoList2.w0.setTextColor(-16777216);
                                }
                                int i5 = dialogVideoList2.f0;
                                if (i5 == 2) {
                                    if (MainApp.K1) {
                                        dialogVideoList2.v0.setImageResource(R.drawable.outline_picture_in_picture_alt_dark_24);
                                    } else {
                                        dialogVideoList2.v0.setImageResource(R.drawable.outline_picture_in_picture_alt_black_24);
                                    }
                                    dialogVideoList2.w0.setText(R.string.pip_mode);
                                } else if (i5 == 1) {
                                    if (MainApp.K1) {
                                        dialogVideoList2.v0.setImageResource(R.drawable.outline_fullscreen_dark_24);
                                    } else {
                                        dialogVideoList2.v0.setImageResource(R.drawable.outline_fullscreen_black_24);
                                    }
                                    dialogVideoList2.w0.setText(R.string.full_screen);
                                } else {
                                    if (MainApp.K1) {
                                        dialogVideoList2.v0.setImageResource(R.drawable.outline_download_dark_24);
                                    } else {
                                        dialogVideoList2.v0.setImageResource(R.drawable.outline_download_black_24);
                                    }
                                    dialogVideoList2.w0.setText(R.string.download);
                                }
                                dialogVideoList2.x0.u0(true, false);
                                if (dialogVideoList2.o0 != null) {
                                    dialogVideoList2.q = new MyDialogBottom.ShowAdListener() { // from class: com.mycompany.app.dialog.DialogVideoList.5
                                        @Override // com.mycompany.app.view.MyDialogBottom.ShowAdListener
                                        public final void a() {
                                            DialogVideoList dialogVideoList3 = DialogVideoList.this;
                                            if (!dialogVideoList3.q0) {
                                                dialogVideoList3.q0 = true;
                                                DialogVideoList.B(dialogVideoList3);
                                            }
                                        }
                                    };
                                    dialogVideoList2.m0.setBackground(null);
                                    dialogVideoList2.o0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogVideoList.3
                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view) {
                                            DialogVideoList.this.dismiss();
                                        }
                                    });
                                    MyRoundLinear myRoundLinear2 = dialogVideoList2.t0;
                                    if (MainApp.K1) {
                                        i4 = -14606047;
                                    } else {
                                        i4 = -1;
                                    }
                                    int i6 = MainApp.l1;
                                    myRoundLinear2.n = i4;
                                    myRoundLinear2.m = i6;
                                    myRoundLinear2.c(true, false);
                                    dialogVideoList2.u0.setLineUp(true);
                                }
                                dialogVideoList2.H(dialogVideoList2.p());
                                dialogVideoList2.g(dialogVideoList2.m0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogVideoList.4
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view) {
                                        DialogVideoList dialogVideoList3 = DialogVideoList.this;
                                        if (dialogVideoList3.m0 != null) {
                                            dialogVideoList3.show();
                                            int i7 = dialogVideoList3.g0;
                                            if (i7 == 0) {
                                                if (dialogVideoList3.B0 != null) {
                                                    return;
                                                }
                                                DialogTask dialogTask = new DialogTask(dialogVideoList3);
                                                dialogVideoList3.B0 = dialogTask;
                                                dialogTask.b(dialogVideoList3.b0);
                                                return;
                                            }
                                            if (i7 == 5) {
                                                List list = dialogVideoList3.C0;
                                                if (list != null && !list.isEmpty()) {
                                                    dialogVideoList3.O();
                                                    dialogVideoList3.K();
                                                    return;
                                                } else {
                                                    dialogVideoList3.L(true);
                                                    return;
                                                }
                                            }
                                            dialogVideoList3.L(true);
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

    public static void B(DialogVideoList dialogVideoList) {
        MyAdFrame myAdFrame;
        if (dialogVideoList.q0 && dialogVideoList.r0 && (myAdFrame = dialogVideoList.o0) != null && dialogVideoList.p0 == null && !dialogVideoList.s0) {
            dialogVideoList.s0 = true;
            myAdFrame.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogVideoList.6
                @Override // java.lang.Runnable
                public final void run() {
                    WebViewActivity webViewActivity;
                    final DialogVideoList dialogVideoList2 = DialogVideoList.this;
                    if (dialogVideoList2.o0 != null && dialogVideoList2.p0 == null && MainApp.A(dialogVideoList2.b0) && (webViewActivity = dialogVideoList2.a0) != null) {
                        dialogVideoList2.p0 = MainApp.d(webViewActivity, 0, new MainApp.AdLocalListener() { // from class: com.mycompany.app.dialog.DialogVideoList.7
                            @Override // com.mycompany.app.main.MainApp.AdLocalListener
                            public final void b(MyAdNative myAdNative) {
                                int i = DialogVideoList.O0;
                                DialogVideoList.this.J();
                            }

                            @Override // com.mycompany.app.main.MainApp.AdLocalListener
                            public final void c(MyAdNative myAdNative) {
                                int i = DialogVideoList.O0;
                                DialogVideoList.this.J();
                            }

                            @Override // com.mycompany.app.main.MainApp.AdLocalListener
                            public final void e() {
                                DialogVideoList.this.dismiss();
                            }

                            @Override // com.mycompany.app.main.MainApp.AdLocalListener
                            public final void f(MyAdNative myAdNative) {
                                int i = DialogVideoList.O0;
                                DialogVideoList.this.J();
                            }
                        });
                        dialogVideoList2.J();
                        dialogVideoList2.o0.a(dialogVideoList2.p0, true, dialogVideoList2.i);
                    }
                    dialogVideoList2.s0 = false;
                }
            });
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:110:0x0242  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0275  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x02ad  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x02c4  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0303  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0317  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x0320  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x032e  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x02df  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x02b9  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x029e  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x02a4  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x027b  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x0267  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x033e  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x014c  */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.Object, java.util.Comparator] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void C(com.mycompany.app.dialog.DialogVideoList r30) {
        /*
            Method dump skipped, instructions count: 871
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogVideoList.C(com.mycompany.app.dialog.DialogVideoList):void");
    }

    public static boolean F(String str) {
        if (str != null && !str.equals("vid_dummy") && !str.equals("pub_dummy") && !str.equals("pgf_dummy") && !str.equals("vkv_dummy")) {
            return false;
        }
        return true;
    }

    public final void D() {
        this.f18633c = false;
        if (this.b0 == null) {
            return;
        }
        E();
        DialogTask dialogTask = this.B0;
        if (dialogTask != null) {
            dialogTask.f12839c = true;
        }
        this.B0 = null;
        I();
        MyDialogLinear myDialogLinear = this.m0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.m0 = null;
        }
        MyRoundLinear myRoundLinear = this.t0;
        if (myRoundLinear != null) {
            myRoundLinear.a();
            this.t0 = null;
        }
        MyLineFrame myLineFrame = this.u0;
        if (myLineFrame != null) {
            myLineFrame.g();
            this.u0 = null;
        }
        MyRecyclerView myRecyclerView = this.x0;
        if (myRecyclerView != null) {
            myRecyclerView.s0();
            this.x0 = null;
        }
        MainDownAdapter mainDownAdapter = this.A0;
        if (mainDownAdapter != null) {
            mainDownAdapter.x();
            this.A0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.c0 = null;
        this.d0 = null;
        this.e0 = null;
        this.l0 = null;
        this.v0 = null;
        this.w0 = null;
        this.y0 = null;
        super.dismiss();
    }

    public final void E() {
        DialogDownLink dialogDownLink = this.E0;
        if (dialogDownLink != null) {
            dialogDownLink.dismiss();
            this.E0 = null;
        }
        this.L0 = null;
    }

    public final void G() {
        if (this.m0 == null) {
            this.g0 = 0;
            return;
        }
        if (this.g0 == 1) {
            this.g0 = 0;
        }
        if (this.B0 != null) {
            return;
        }
        DialogTask dialogTask = new DialogTask(this);
        this.B0 = dialogTask;
        dialogTask.b(this.b0);
    }

    public final void H(boolean z) {
        if (this.o0 == null) {
            return;
        }
        if (this.y0 != null) {
            MyAdNative myAdNative = this.p0;
            if (myAdNative != null) {
                myAdNative.setVisibility(8);
            }
            this.o0.setVisibility(8);
            return;
        }
        if (z) {
            z = q();
        }
        if (z) {
            MyAdNative myAdNative2 = this.p0;
            if (myAdNative2 != null) {
                myAdNative2.setVisibility(8);
            }
            this.o0.setVisibility(8);
            return;
        }
        MyAdNative myAdNative3 = this.p0;
        if (myAdNative3 != null) {
            if (myAdNative3.p()) {
                this.p0.setVisibility(0);
            } else {
                this.p0.setVisibility(8);
            }
        }
        this.o0.setVisibility(0);
    }

    public final void I() {
        WebVkvLoad webVkvLoad = this.k0;
        if (webVkvLoad != null) {
            MyWebSafe myWebSafe = webVkvLoad.e;
            if (myWebSafe != null) {
                if (webVkvLoad.f) {
                    webVkvLoad.f = false;
                    myWebSafe.stopLoading();
                }
                MainUtil.P6(webVkvLoad.e);
                webVkvLoad.e = null;
            }
            webVkvLoad.f20722a = null;
            webVkvLoad.b = null;
            webVkvLoad.f20723c = null;
            webVkvLoad.d = null;
            webVkvLoad.g = null;
            this.k0 = null;
        }
        this.i0 = null;
        this.j0 = null;
    }

    public final void J() {
        MyAdNative myAdNative;
        int i;
        if (this.o0 != null && (myAdNative = this.p0) != null) {
            if (!myAdNative.p()) {
                H(p());
                return;
            }
            MyDialogLinear myDialogLinear = this.m0;
            if (MainApp.K1) {
                i = -14606047;
            } else {
                i = -1;
            }
            myDialogLinear.setBackgroundColor(i);
            this.o0.setOnClickListener(null);
            this.p0.setDarkMode(true);
            H(p());
        }
    }

    public final void K() {
        VideoListListener videoListListener;
        if (this.m0 != null) {
            List list = this.C0;
            int i = this.D0;
            this.C0 = null;
            L(false);
            if (list != null && !list.isEmpty()) {
                if (list.size() == 1) {
                    if (this.c0 != null) {
                        MainDownAdapter.DownListItem downListItem = (MainDownAdapter.DownListItem) list.get(0);
                        if (downListItem != null) {
                            if (!this.G0) {
                                this.G0 = true;
                                this.I0 = downListItem;
                                Handler handler = this.i;
                                if (handler == null) {
                                    return;
                                }
                                handler.post(new AnonymousClass13());
                                return;
                            }
                            return;
                        }
                        M();
                        return;
                    }
                    return;
                }
                this.l0 = list;
                this.u0.setVisibility(0);
                this.x0.setVisibility(0);
                this.A0 = new MainDownAdapter(this.a0, this.l0, i, this.e0, new MainDownAdapter.MainDownListener() { // from class: com.mycompany.app.dialog.DialogVideoList.10
                    @Override // com.mycompany.app.main.MainDownAdapter.MainDownListener
                    public final void a(int i2) {
                        List list2;
                        MainDownAdapter.DownListItem downListItem2;
                        DialogVideoList dialogVideoList = DialogVideoList.this;
                        if (dialogVideoList.c0 != null && (list2 = dialogVideoList.l0) != null && i2 >= 0 && i2 < list2.size() && (downListItem2 = (MainDownAdapter.DownListItem) dialogVideoList.l0.get(i2)) != null && !dialogVideoList.G0) {
                            dialogVideoList.G0 = true;
                            dialogVideoList.I0 = downListItem2;
                            Handler handler2 = dialogVideoList.i;
                            if (handler2 != null) {
                                handler2.post(new AnonymousClass13());
                            }
                        }
                    }

                    @Override // com.mycompany.app.main.MainDownAdapter.MainDownListener
                    public final void b(int i2) {
                        List list2;
                        MainDownAdapter.DownListItem downListItem2;
                        final DialogVideoList dialogVideoList = DialogVideoList.this;
                        if (dialogVideoList.c0 != null && (list2 = dialogVideoList.l0) != null && i2 >= 0 && i2 < list2.size() && (downListItem2 = (MainDownAdapter.DownListItem) dialogVideoList.l0.get(i2)) != null && !dialogVideoList.G0) {
                            dialogVideoList.G0 = true;
                            dialogVideoList.K0 = downListItem2;
                            Handler handler2 = dialogVideoList.i;
                            if (handler2 != null) {
                                handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogVideoList.15
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        DialogVideoList dialogVideoList2 = DialogVideoList.this;
                                        MainDownAdapter.DownListItem downListItem3 = dialogVideoList2.K0;
                                        dialogVideoList2.K0 = null;
                                        if (downListItem3 != null) {
                                            String str = downListItem3.d;
                                            String str2 = downListItem3.f16460c;
                                            if (!TextUtils.isEmpty(str)) {
                                                StringBuilder v = android.support.v4.media.a.v(str2, ".");
                                                v.append(str.toLowerCase(Locale.US));
                                                str2 = v.toString();
                                            }
                                            VideoListListener videoListListener2 = dialogVideoList2.c0;
                                            if (videoListListener2 != null) {
                                                videoListListener2.e(downListItem3.b, str2, downListItem3.g);
                                            }
                                        }
                                        dialogVideoList2.G0 = false;
                                    }
                                });
                            }
                        }
                    }

                    @Override // com.mycompany.app.main.MainDownAdapter.MainDownListener
                    public final void c(int i2) {
                        List list2;
                        MainDownAdapter.DownListItem downListItem2;
                        final DialogVideoList dialogVideoList = DialogVideoList.this;
                        if (dialogVideoList.c0 != null && (list2 = dialogVideoList.l0) != null && i2 >= 0 && i2 < list2.size() && (downListItem2 = (MainDownAdapter.DownListItem) dialogVideoList.l0.get(i2)) != null && !TextUtils.isEmpty(downListItem2.b) && !dialogVideoList.G0) {
                            dialogVideoList.G0 = true;
                            dialogVideoList.J0 = downListItem2;
                            Handler handler2 = dialogVideoList.i;
                            if (handler2 != null) {
                                handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogVideoList.14
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        final DialogVideoList dialogVideoList2 = DialogVideoList.this;
                                        MainDownAdapter.DownListItem downListItem3 = dialogVideoList2.J0;
                                        dialogVideoList2.J0 = null;
                                        if (downListItem3 != null) {
                                            String O02 = MainUtil.O0(downListItem3.b);
                                            if (dialogVideoList2.a0 != null && dialogVideoList2.E0 == null) {
                                                dialogVideoList2.E();
                                                dialogVideoList2.L0 = downListItem3;
                                                DialogDownLink dialogDownLink = new DialogDownLink(dialogVideoList2.a0, O02, dialogVideoList2.e0, downListItem3.l, new DialogPreview.PreviewListener() { // from class: com.mycompany.app.dialog.DialogVideoList.16
                                                    @Override // com.mycompany.app.dialog.DialogPreview.PreviewListener
                                                    public final void a(String str) {
                                                    }

                                                    @Override // com.mycompany.app.dialog.DialogPreview.PreviewListener
                                                    public final void b(String str, long j, boolean z) {
                                                        MainDownAdapter.DownListItem downListItem4 = DialogVideoList.this.L0;
                                                        if (downListItem4 == null) {
                                                            return;
                                                        }
                                                        downListItem4.l = j;
                                                    }

                                                    @Override // com.mycompany.app.dialog.DialogPreview.PreviewListener
                                                    public final void c(String str, String str2) {
                                                        DialogVideoList dialogVideoList3 = DialogVideoList.this;
                                                        if (dialogVideoList3.c0 != null && !dialogVideoList3.G0) {
                                                            dialogVideoList3.G0 = true;
                                                            dialogVideoList3.M0 = str;
                                                            dialogVideoList3.N0 = dialogVideoList3.L0;
                                                            dialogVideoList3.E();
                                                            Handler handler3 = dialogVideoList3.i;
                                                            if (handler3 == null) {
                                                                return;
                                                            }
                                                            handler3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogVideoList.16.1
                                                                @Override // java.lang.Runnable
                                                                public final void run() {
                                                                    VideoListListener videoListListener2;
                                                                    AnonymousClass16 anonymousClass16 = AnonymousClass16.this;
                                                                    DialogVideoList dialogVideoList4 = DialogVideoList.this;
                                                                    String str3 = dialogVideoList4.M0;
                                                                    MainDownAdapter.DownListItem downListItem4 = dialogVideoList4.N0;
                                                                    dialogVideoList4.M0 = null;
                                                                    dialogVideoList4.N0 = null;
                                                                    if (downListItem4 != null && (videoListListener2 = dialogVideoList4.c0) != null) {
                                                                        videoListListener2.c(str3, downListItem4.f16460c, MainUtil.t2(downListItem4.d));
                                                                    }
                                                                    DialogVideoList.this.G0 = false;
                                                                }
                                                            });
                                                        }
                                                    }

                                                    @Override // com.mycompany.app.dialog.DialogPreview.PreviewListener
                                                    public final void d(String str) {
                                                        DialogVideoList dialogVideoList3 = DialogVideoList.this;
                                                        if (dialogVideoList3.c0 != null && !dialogVideoList3.G0) {
                                                            dialogVideoList3.G0 = true;
                                                            dialogVideoList3.M0 = str;
                                                            dialogVideoList3.N0 = dialogVideoList3.L0;
                                                            dialogVideoList3.E();
                                                            Handler handler3 = dialogVideoList3.i;
                                                            if (handler3 == null) {
                                                                return;
                                                            }
                                                            handler3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogVideoList.16.2
                                                                @Override // java.lang.Runnable
                                                                public final void run() {
                                                                    VideoListListener videoListListener2;
                                                                    AnonymousClass16 anonymousClass16 = AnonymousClass16.this;
                                                                    DialogVideoList dialogVideoList4 = DialogVideoList.this;
                                                                    String str2 = dialogVideoList4.M0;
                                                                    MainDownAdapter.DownListItem downListItem4 = dialogVideoList4.N0;
                                                                    dialogVideoList4.M0 = null;
                                                                    dialogVideoList4.N0 = null;
                                                                    if (downListItem4 != null && (videoListListener2 = dialogVideoList4.c0) != null) {
                                                                        videoListListener2.b(str2, downListItem4.f16460c);
                                                                    }
                                                                    DialogVideoList.this.G0 = false;
                                                                }
                                                            });
                                                        }
                                                    }

                                                    @Override // com.mycompany.app.dialog.DialogPreview.PreviewListener
                                                    public final void e(String str, String str2) {
                                                    }
                                                });
                                                dialogVideoList2.E0 = dialogDownLink;
                                                dialogDownLink.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogVideoList.17
                                                    @Override // android.content.DialogInterface.OnDismissListener
                                                    public final void onDismiss(DialogInterface dialogInterface) {
                                                        int i3 = DialogVideoList.O0;
                                                        DialogVideoList.this.E();
                                                    }
                                                });
                                            }
                                        }
                                        dialogVideoList2.G0 = false;
                                    }
                                });
                            }
                        }
                    }
                });
                com.google.android.gms.internal.mlkit_vision_text_common.a.w(1, this.x0);
                this.x0.setSizeListener(new ImageSizeListener() { // from class: com.mycompany.app.dialog.DialogVideoList.11
                    @Override // com.mycompany.app.image.ImageSizeListener
                    public final void a(View view, int i2, int i3) {
                        DialogVideoList dialogVideoList = DialogVideoList.this;
                        if (!dialogVideoList.r0) {
                            dialogVideoList.r0 = true;
                            DialogVideoList.B(dialogVideoList);
                        }
                    }
                });
                this.x0.setAdapter(this.A0);
                t(this.x0, new MyDialogBottom.BotListListener() { // from class: com.mycompany.app.dialog.DialogVideoList.12
                    @Override // com.mycompany.app.view.MyDialogBottom.BotListListener
                    public final void a(boolean z) {
                        MyRecyclerView myRecyclerView = DialogVideoList.this.x0;
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
                return;
            }
            if (this.g0 == 0 && (videoListListener = this.c0) != null) {
                videoListListener.d();
            }
            M();
        }
    }

    public final void L(boolean z) {
        MyDialogLinear myDialogLinear = this.m0;
        if (myDialogLinear == null) {
            return;
        }
        myDialogLinear.e(this.F0 + MainApp.g1, 0, z, false);
    }

    public final void M() {
        if (this.y0 == null && this.m0 != null) {
            AppCompatTextView appCompatTextView = this.z0;
            this.y0 = appCompatTextView;
            if (MainApp.K1) {
                appCompatTextView.setTextColor(-328966);
            } else {
                appCompatTextView.setTextColor(-16777216);
            }
            if (this.f0 == 0) {
                this.y0.setText(R.string.no_down_video);
            } else {
                this.y0.setText(R.string.video_link_1);
            }
            this.u0.setVisibility(8);
            this.x0.setVisibility(8);
            this.y0.setVisibility(0);
            H(false);
        }
    }

    public final void N(int i) {
        this.g0 = i;
        if (i == 1) {
            if (!this.h0) {
                this.h0 = true;
                MainUtil.I(this.d0, "function mySrc(src){return src&&(src.indexOf('http')==0)&&!src.includes('youtube.com');}(function(){var src=null;var pst=null;var ele=document.querySelector(\"video\");if(ele){if(mySrc(ele.src)){src=ele.src;}else{var el2=ele.querySelector(\"source[type*='video']\");if(el2){if(mySrc(el2.src)){src=el2.src;}}}pst=ele.poster;}android.onVidDe2(src,pst);})();", true);
                return;
            }
            return;
        }
        if (i == 2) {
            MainUtil.I(this.d0, "(function(){var htm=null;var eles=document.querySelectorAll(\"div[id='mobileContainer']>script[type='text/javascript']\");if(eles&&(eles.length>0)){for(var i=0;i<eles.length;i++){var val=eles[i].innerHTML;if(val&&val.includes('mediaDefinitions')){htm=val;break;}}}android.onVidDe3(htm,1);})();", true);
        } else if (i == 3) {
            MainUtil.I(this.d0, "(function(){var htm=null;var eles=document.querySelectorAll(\"div[id='js-gifWebMWrapper'][data-gif^='http']\");if(eles&&(eles.length>0)){for(var i=0;i<eles.length;i++){var ele=eles[i];var val=ele.dataset.gif;if(!val)continue;if(ele.dataset.jpg)val+='!@!'+ele.dataset.jpg;if(ele.dataset.mp4)val+='!@!'+ele.dataset.mp4;if(ele.dataset.webm)val+='!@!'+ele.dataset.webm;htm=val;break;}}android.onVidDe3(htm,2);})();", true);
        } else if (i == 4) {
            MainUtil.I(this.d0, "(function(){var htm=null;var ele=document.querySelector(\"script[id='initials-script']\");if(ele){htm=ele.innerHTML;}android.onVidDe3(htm,3);})();", true);
        }
    }

    public final void O() {
        WebNestView webNestView;
        boolean z;
        boolean z2;
        List<MainDownAdapter.DownListItem> list = this.C0;
        if (list != null && !list.isEmpty() && (webNestView = this.d0) != null) {
            List<String> downloaded = webNestView.getDownloaded();
            if (downloaded != null && !downloaded.isEmpty()) {
                z = true;
            } else {
                z = false;
            }
            List<String> downFail = webNestView.getDownFail();
            if (downFail != null && !downFail.isEmpty()) {
                z2 = true;
            } else {
                z2 = false;
            }
            for (MainDownAdapter.DownListItem downListItem : list) {
                if (this.m0 != null) {
                    String str = downListItem.b;
                    if (str != null) {
                        if (z2 && downFail.contains(str)) {
                            downListItem.e = 2;
                        } else if (z && downloaded.contains(str)) {
                            downListItem.e = 1;
                        } else {
                            downListItem.e = 0;
                        }
                    }
                } else {
                    return;
                }
            }
        }
    }

    public final void P(ViewGroup viewGroup, VkvListListener vkvListListener) {
        this.g0 = 5;
        this.i0 = viewGroup;
        this.j0 = vkvListListener;
        if (this.k0 == null && viewGroup != null) {
            this.k0 = new WebVkvLoad(this.a0, viewGroup, this.e0, new WebSnsLoad.SnsLoadListener() { // from class: com.mycompany.app.dialog.DialogVideoList.9
                @Override // com.mycompany.app.web.WebSnsLoad.SnsLoadListener
                public final void a(int i, List list) {
                    DialogVideoList dialogVideoList = DialogVideoList.this;
                    if (dialogVideoList.k0 == null) {
                        return;
                    }
                    VkvListListener vkvListListener2 = dialogVideoList.j0;
                    if (vkvListListener2 != null) {
                        vkvListListener2.a(list);
                    }
                    dialogVideoList.I();
                    dialogVideoList.C0 = list;
                    dialogVideoList.D0 = 0;
                    dialogVideoList.O();
                    dialogVideoList.K();
                }

                @Override // com.mycompany.app.web.WebSnsLoad.SnsLoadListener
                public final void b() {
                }

                @Override // com.mycompany.app.web.WebSnsLoad.SnsLoadListener
                public final void onError(int i) {
                    DialogVideoList dialogVideoList = DialogVideoList.this;
                    if (dialogVideoList.m0 == null) {
                        return;
                    }
                    dialogVideoList.L(false);
                    dialogVideoList.M();
                }
            });
        }
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        if (!this.H0) {
            this.H0 = true;
            if (this.o0 == null) {
                D();
                return;
            }
            Handler handler = this.i;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogVideoList.8
                @Override // java.lang.Runnable
                public final void run() {
                    DialogVideoList dialogVideoList = DialogVideoList.this;
                    MyAdFrame myAdFrame = dialogVideoList.o0;
                    if (myAdFrame != null) {
                        myAdFrame.f = null;
                        dialogVideoList.o0 = null;
                        MainApp.f(dialogVideoList.b0, 0);
                    }
                    dialogVideoList.p0 = null;
                    Handler handler2 = dialogVideoList.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogVideoList.8.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogVideoList dialogVideoList2 = DialogVideoList.this;
                            int i = DialogVideoList.O0;
                            dialogVideoList2.D();
                        }
                    });
                }
            });
        }
    }
}
