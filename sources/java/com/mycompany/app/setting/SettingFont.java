package com.mycompany.app.setting;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.media.a;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.material.tabs.TabLayout;
import com.google.android.material.tabs.TabLayoutMediator;
import com.mycompany.app.async.MyAsyncTask;
import com.mycompany.app.compress.Compress;
import com.mycompany.app.dialog.DialogConfirm;
import com.mycompany.app.dialog.DialogSaveConfirm;
import com.mycompany.app.dialog.DialogSeekAudio;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUri;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefPath;
import com.mycompany.app.pref.PrefRead;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.pref.PrefZone;
import com.mycompany.app.setting.SettingFontAdapter;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyCoverView;
import com.mycompany.app.view.MyHeaderView;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyMainRelative;
import com.mycompany.app.view.MyManagerLinear;
import com.mycompany.app.view.MyRecyclerView;
import com.mycompany.app.view.MyRoundItem;
import com.mycompany.app.view.MyRoundRelative;
import com.mycompany.app.view.MySwitchView;
import com.mycompany.app.web.WebNestView;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;

/* loaded from: classes3.dex */
public class SettingFont extends CastActivity {
    public static final /* synthetic */ int J2 = 0;
    public String A2;
    public String B2;
    public MyMainRelative C1;
    public boolean C2;
    public MyButtonImage D1;
    public String D2;
    public AppCompatTextView E1;
    public long E2;
    public MyButtonImage F1;
    public boolean F2;
    public MyButtonImage G1;
    public boolean G2;
    public MyRoundRelative H1;
    public boolean H2;
    public WebNestView I1;
    public boolean I2;
    public MyRoundItem J1;
    public AppCompatTextView K1;
    public MyRoundItem L1;
    public MySwitchView M1;
    public AppCompatTextView N1;
    public MyLineText O1;
    public AppCompatTextView P1;
    public TabLayout Q1;
    public ViewPager2 R1;
    public ViewPager2.OnPageChangeCallback S1;
    public RelativeLayout T1;
    public MyRecyclerView U1;
    public ImageView V1;
    public MyCoverView W1;
    public MyManagerLinear X1;
    public SettingFontAdapter Y1;
    public BaseTask Z1;
    public AppTask a2;
    public boolean b2;
    public boolean c2;
    public ArrayList d2;
    public ArrayList e2;
    public List f2;
    public int g2;
    public boolean h2;
    public RelativeLayout i2;
    public MyRecyclerView j2;
    public ImageView k2;
    public MyButtonImage l2;
    public MyCoverView m2;
    public MyManagerLinear n2;
    public SettingFontAdapter o2;
    public UserTask p2;
    public DialogConfirm q2;
    public DialogSaveConfirm r2;
    public boolean s2;
    public boolean t2;
    public boolean u2;
    public String v2;
    public boolean w2;
    public String x2;
    public String y2;
    public String z2;

    /* renamed from: com.mycompany.app.setting.SettingFont$10, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass10 implements Runnable {
        public AnonymousClass10() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            SettingFont settingFont = SettingFont.this;
            SettingFont.F0(settingFont, true);
            Handler handler = settingFont.O0;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.setting.SettingFont.10.1
                @Override // java.lang.Runnable
                public final void run() {
                    SettingFont settingFont2 = SettingFont.this;
                    SettingFont.F0(settingFont2, false);
                    Handler handler2 = settingFont2.O0;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.setting.SettingFont.10.1.1
                        /* JADX WARN: Type inference failed for: r1v11, types: [com.mycompany.app.view.MyManagerLinear, androidx.recyclerview.widget.LinearLayoutManager] */
                        /* JADX WARN: Type inference failed for: r1v16, types: [com.mycompany.app.view.MyManagerLinear, androidx.recyclerview.widget.LinearLayoutManager] */
                        /* JADX WARN: Type inference failed for: r5v0, types: [com.google.android.material.tabs.TabLayoutMediator$TabConfigurationStrategy, java.lang.Object] */
                        @Override // java.lang.Runnable
                        public final void run() {
                            int i;
                            boolean z;
                            boolean z2;
                            int i2;
                            final SettingFont settingFont3 = SettingFont.this;
                            if (settingFont3.C1 == null) {
                                return;
                            }
                            if (settingFont3.h2) {
                                MyRecyclerView myRecyclerView = settingFont3.U1;
                                if (MainApp.K1) {
                                    i2 = -16777216;
                                } else {
                                    i2 = -460552;
                                }
                                myRecyclerView.setBackgroundColor(i2);
                            } else {
                                MyRecyclerView myRecyclerView2 = settingFont3.U1;
                                if (MainApp.K1) {
                                    i = -14606047;
                                } else {
                                    i = -1;
                                }
                                myRecyclerView2.setBackgroundColor(i);
                            }
                            if (MainApp.K1) {
                                settingFont3.j2.setBackgroundColor(-14606047);
                            } else {
                                settingFont3.j2.setBackgroundColor(-1);
                            }
                            if (Build.VERSION.SDK_INT < 31) {
                                settingFont3.R1.setOverScrollMode(2);
                            }
                            if (MainUtil.O5(settingFont3.f1)) {
                                settingFont3.R1.setLayoutDirection(1);
                            }
                            MainUtil.q7(settingFont3.R1);
                            ViewPager2 viewPager2 = settingFont3.R1;
                            if (viewPager2 != null) {
                                settingFont3.S1 = new ViewPager2.OnPageChangeCallback() { // from class: com.mycompany.app.setting.SettingFont.17
                                    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
                                    public final void c(int i3) {
                                        int i4 = SettingFont.J2;
                                        SettingFont.this.S0(i3);
                                    }
                                };
                                viewPager2.setAdapter(new ViewPagerAdapter());
                                settingFont3.R1.b(settingFont3.S1);
                            }
                            new TabLayoutMediator(settingFont3.Q1, settingFont3.R1, new Object()).a();
                            settingFont3.X1 = new LinearLayoutManager(1);
                            settingFont3.Y1 = new SettingFontAdapter(settingFont3.x2, new SettingFontAdapter.SettingFontListener() { // from class: com.mycompany.app.setting.SettingFont.12
                                @Override // com.mycompany.app.setting.SettingFontAdapter.SettingFontListener
                                public final void a(String str, String str2) {
                                    SettingFont.M0(SettingFont.this, str, str2);
                                }
                            });
                            settingFont3.U1.setLayoutManager(settingFont3.X1);
                            settingFont3.U1.setAdapter(settingFont3.Y1);
                            settingFont3.U1.j(new RecyclerView.OnScrollListener() { // from class: com.mycompany.app.setting.SettingFont.13
                                @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                                public final void b(RecyclerView recyclerView, int i3, int i4) {
                                    SettingFont settingFont4 = SettingFont.this;
                                    MyRecyclerView myRecyclerView3 = settingFont4.U1;
                                    if (myRecyclerView3 == null) {
                                        return;
                                    }
                                    if (myRecyclerView3.computeVerticalScrollOffset() > 0) {
                                        settingFont4.U1.w0();
                                    } else {
                                        settingFont4.U1.r0();
                                    }
                                }
                            });
                            settingFont3.n2 = new LinearLayoutManager(1);
                            settingFont3.o2 = new SettingFontAdapter(settingFont3.x2, new SettingFontAdapter.SettingFontListener() { // from class: com.mycompany.app.setting.SettingFont.14
                                @Override // com.mycompany.app.setting.SettingFontAdapter.SettingFontListener
                                public final void a(String str, String str2) {
                                    SettingFont.M0(SettingFont.this, str, str2);
                                }
                            });
                            settingFont3.j2.setLayoutManager(settingFont3.n2);
                            settingFont3.j2.setAdapter(settingFont3.o2);
                            settingFont3.j2.j(new RecyclerView.OnScrollListener() { // from class: com.mycompany.app.setting.SettingFont.15
                                @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                                public final void b(RecyclerView recyclerView, int i3, int i4) {
                                    SettingFont settingFont4 = SettingFont.this;
                                    MyRecyclerView myRecyclerView3 = settingFont4.j2;
                                    if (myRecyclerView3 == null) {
                                        return;
                                    }
                                    if (myRecyclerView3.computeVerticalScrollOffset() > 0) {
                                        settingFont4.j2.w0();
                                    } else {
                                        settingFont4.j2.r0();
                                    }
                                }
                            });
                            settingFont3.l2.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingFont.16
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view) {
                                    MainUtil.F4(SettingFont.this, PrefPath.v);
                                }
                            });
                            settingFont3.W1.m(true);
                            settingFont3.m2.m(true);
                            if (!settingFont3.t2 ? PrefZone.k : PrefRead.n) {
                                if (MainUri.q(settingFont3.v2)) {
                                    settingFont3.R1.d(1, false);
                                    z2 = true;
                                    z = false;
                                } else {
                                    z = true;
                                    z2 = false;
                                }
                            } else {
                                z = false;
                                z2 = false;
                            }
                            BaseTask baseTask = settingFont3.Z1;
                            if (baseTask != null) {
                                baseTask.f12839c = true;
                            }
                            settingFont3.Z1 = null;
                            BaseTask baseTask2 = new BaseTask(settingFont3, z);
                            settingFont3.Z1 = baseTask2;
                            baseTask2.b(settingFont3.f1);
                            AppTask appTask = settingFont3.a2;
                            if (appTask != null) {
                                appTask.f12839c = true;
                            }
                            settingFont3.a2 = null;
                            AppTask appTask2 = new AppTask(settingFont3, z);
                            settingFont3.a2 = appTask2;
                            appTask2.b(settingFont3.f1);
                            UserTask userTask = settingFont3.p2;
                            if (userTask != null) {
                                userTask.f12839c = true;
                            }
                            settingFont3.p2 = null;
                            UserTask userTask2 = new UserTask(settingFont3, z2, false);
                            settingFont3.p2 = userTask2;
                            userTask2.b(settingFont3.f1);
                        }
                    });
                }
            });
        }
    }

    /* renamed from: com.mycompany.app.setting.SettingFont$11, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass11 implements TabLayoutMediator.TabConfigurationStrategy {
    }

    /* renamed from: com.mycompany.app.setting.SettingFont$18, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass18 implements View.OnLongClickListener {
        @Override // android.view.View.OnLongClickListener
        public final boolean onLongClick(View view) {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.setting.SettingFont$24, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass24 implements Runnable {

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ String f17720c;

        public AnonymousClass24(String str) {
            this.f17720c = str;
        }

        @Override // java.lang.Runnable
        public final void run() {
            boolean startsWith;
            boolean h6;
            int i = SettingFont.J2;
            String str = this.f17720c;
            if (TextUtils.isEmpty(str)) {
                startsWith = false;
            } else {
                startsWith = str.startsWith("app://");
            }
            SettingFont settingFont = SettingFont.this;
            if (startsWith) {
                h6 = true;
            } else {
                h6 = MainUtil.h6(settingFont.f1, str);
            }
            if (!h6) {
                MyMainRelative myMainRelative = settingFont.C1;
                if (myMainRelative != null) {
                    myMainRelative.post(new Runnable() { // from class: com.mycompany.app.setting.SettingFont.24.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            SettingFont settingFont2 = SettingFont.this;
                            MainUtil.e8(settingFont2, R.string.invalid_file);
                            settingFont2.H2 = false;
                        }
                    });
                    return;
                }
                return;
            }
            if (MainUtil.q5(settingFont.z2, str)) {
                SettingFont.L0(settingFont);
                return;
            }
            MyMainRelative myMainRelative2 = settingFont.C1;
            if (myMainRelative2 == null) {
                return;
            }
            myMainRelative2.post(new Runnable() { // from class: com.mycompany.app.setting.SettingFont.24.2
                @Override // java.lang.Runnable
                public final void run() {
                    AnonymousClass24 anonymousClass24 = AnonymousClass24.this;
                    SettingFont settingFont2 = SettingFont.this;
                    if (settingFont2.s2) {
                        return;
                    }
                    settingFont2.s2 = true;
                    settingFont2.W1.m(true);
                    settingFont2.m2.m(true);
                    settingFont2.z2 = anonymousClass24.f17720c;
                    settingFont2.m0(new Runnable() { // from class: com.mycompany.app.setting.SettingFont.24.2.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                            SettingFont.J0(SettingFont.this);
                            SettingFont.L0(SettingFont.this);
                        }
                    });
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.setting.SettingFont$26, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass26 implements Runnable {

        /* renamed from: com.mycompany.app.setting.SettingFont$26$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 implements Runnable {

            /* renamed from: com.mycompany.app.setting.SettingFont$26$1$1, reason: invalid class name and collision with other inner class name */
            /* loaded from: classes3.dex */
            class RunnableC02041 implements Runnable {

                /* renamed from: com.mycompany.app.setting.SettingFont$26$1$1$1, reason: invalid class name and collision with other inner class name */
                /* loaded from: classes3.dex */
                class RunnableC02051 implements Runnable {
                    public RunnableC02051() {
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                        SettingFont settingFont = SettingFont.this;
                        SettingFontAdapter settingFontAdapter = settingFont.Y1;
                        if (settingFontAdapter != null) {
                            settingFontAdapter.v(settingFont.x2);
                            MyMainRelative myMainRelative = SettingFont.this.C1;
                            if (myMainRelative == null) {
                                return;
                            }
                            myMainRelative.post(new Runnable() { // from class: com.mycompany.app.setting.SettingFont.26.1.1.1.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    RunnableC02041 runnableC02041 = RunnableC02041.this;
                                    SettingFont settingFont2 = SettingFont.this;
                                    SettingFontAdapter settingFontAdapter2 = settingFont2.o2;
                                    if (settingFontAdapter2 != null) {
                                        settingFontAdapter2.v(settingFont2.x2);
                                        MyMainRelative myMainRelative2 = SettingFont.this.C1;
                                        if (myMainRelative2 == null) {
                                            return;
                                        }
                                        myMainRelative2.post(new Runnable() { // from class: com.mycompany.app.setting.SettingFont.26.1.1.1.1.1
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                SettingFont settingFont3 = SettingFont.this;
                                                MyCoverView myCoverView = settingFont3.W1;
                                                if (myCoverView != null) {
                                                    myCoverView.f(true);
                                                }
                                                MyCoverView myCoverView2 = settingFont3.m2;
                                                if (myCoverView2 != null) {
                                                    myCoverView2.f(true);
                                                }
                                                settingFont3.s2 = false;
                                                settingFont3.H2 = false;
                                            }
                                        });
                                    }
                                }
                            });
                        }
                    }
                }

                public RunnableC02041() {
                }

                @Override // java.lang.Runnable
                public final void run() {
                    AnonymousClass26 anonymousClass26 = AnonymousClass26.this;
                    WebNestView webNestView = SettingFont.this.I1;
                    if (webNestView != null) {
                        webNestView.reload();
                        MyMainRelative myMainRelative = SettingFont.this.C1;
                        if (myMainRelative == null) {
                            return;
                        }
                        myMainRelative.post(new RunnableC02051());
                    }
                }
            }

            public AnonymousClass1() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                SettingFont settingFont = SettingFont.this;
                WebNestView webNestView = settingFont.I1;
                if (webNestView != null) {
                    webNestView.clearCache(false);
                    MyMainRelative myMainRelative = settingFont.C1;
                    if (myMainRelative == null) {
                        return;
                    }
                    myMainRelative.post(new RunnableC02041());
                }
            }
        }

        public AnonymousClass26() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            SettingFont settingFont = SettingFont.this;
            if (settingFont.I1 != null) {
                settingFont.x2 = settingFont.z2;
                MyMainRelative myMainRelative = settingFont.C1;
                if (myMainRelative == null) {
                    return;
                }
                myMainRelative.post(new AnonymousClass1());
            }
        }
    }

    /* renamed from: com.mycompany.app.setting.SettingFont$5, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass5 implements View.OnClickListener {

        /* renamed from: com.mycompany.app.setting.SettingFont$5$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 implements Runnable {

            /* renamed from: com.mycompany.app.setting.SettingFont$5$1$1, reason: invalid class name and collision with other inner class name */
            /* loaded from: classes3.dex */
            class RunnableC02081 implements Runnable {

                /* renamed from: com.mycompany.app.setting.SettingFont$5$1$1$1, reason: invalid class name and collision with other inner class name */
                /* loaded from: classes3.dex */
                class RunnableC02091 implements Runnable {
                    public RunnableC02091() {
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                        SettingFont settingFont = SettingFont.this;
                        SettingFontAdapter settingFontAdapter = settingFont.Y1;
                        if (settingFontAdapter != null) {
                            settingFontAdapter.v(settingFont.x2);
                            MyMainRelative myMainRelative = SettingFont.this.C1;
                            if (myMainRelative == null) {
                                return;
                            }
                            myMainRelative.post(new Runnable() { // from class: com.mycompany.app.setting.SettingFont.5.1.1.1.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    RunnableC02081 runnableC02081 = RunnableC02081.this;
                                    SettingFont settingFont2 = SettingFont.this;
                                    SettingFontAdapter settingFontAdapter2 = settingFont2.o2;
                                    if (settingFontAdapter2 != null) {
                                        settingFontAdapter2.v(settingFont2.x2);
                                        MyMainRelative myMainRelative2 = SettingFont.this.C1;
                                        if (myMainRelative2 == null) {
                                            return;
                                        }
                                        myMainRelative2.post(new Runnable() { // from class: com.mycompany.app.setting.SettingFont.5.1.1.1.1.1
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                SettingFont.this.F2 = false;
                                            }
                                        });
                                    }
                                }
                            });
                        }
                    }
                }

                public RunnableC02081() {
                }

                @Override // java.lang.Runnable
                public final void run() {
                    AnonymousClass5 anonymousClass5 = AnonymousClass5.this;
                    WebNestView webNestView = SettingFont.this.I1;
                    if (webNestView != null) {
                        webNestView.reload();
                        MyMainRelative myMainRelative = SettingFont.this.C1;
                        if (myMainRelative == null) {
                            return;
                        }
                        myMainRelative.post(new RunnableC02091());
                    }
                }
            }

            public AnonymousClass1() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                SettingFont settingFont = SettingFont.this;
                WebNestView webNestView = settingFont.I1;
                if (webNestView != null) {
                    webNestView.clearCache(false);
                    MyMainRelative myMainRelative = settingFont.C1;
                    if (myMainRelative == null) {
                        return;
                    }
                    myMainRelative.post(new RunnableC02081());
                }
            }
        }

        public AnonymousClass5() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            SettingFont settingFont = SettingFont.this;
            if (settingFont.I1 != null && !settingFont.P0()) {
                settingFont.F2 = true;
                settingFont.x2 = null;
                MyMainRelative myMainRelative = settingFont.C1;
                if (myMainRelative == null) {
                    return;
                }
                myMainRelative.post(new AnonymousClass1());
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class AppTask extends MyAsyncTask {
        public final WeakReference e;
        public ArrayList f;
        public final boolean g;
        public final int h = -1;

        public AppTask(SettingFont settingFont, boolean z) {
            this.e = new WeakReference(settingFont);
            this.g = z;
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x0048 A[Catch: Exception -> 0x0111, TryCatch #2 {Exception -> 0x0111, blocks: (B:9:0x0017, B:11:0x0024, B:16:0x0037, B:17:0x0042, B:19:0x0048, B:104:0x0053, B:119:0x002f), top: B:8:0x0017 }] */
        /* JADX WARN: Type inference failed for: r13v3, types: [java.lang.Object, com.mycompany.app.setting.SettingFont$FontItem] */
        /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.Object, java.util.Comparator] */
        @Override // com.mycompany.app.async.MyAsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a() {
            /*
                Method dump skipped, instructions count: 307
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.setting.SettingFont.AppTask.a():void");
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            SettingFont settingFont;
            WeakReference weakReference = this.e;
            if (weakReference == null || (settingFont = (SettingFont) weakReference.get()) == null) {
                return;
            }
            settingFont.a2 = null;
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            SettingFont settingFont;
            WeakReference weakReference = this.e;
            if (weakReference == null || (settingFont = (SettingFont) weakReference.get()) == null) {
                return;
            }
            settingFont.a2 = null;
            SettingFont.I0(settingFont);
        }
    }

    /* loaded from: classes3.dex */
    public static class BaseTask extends MyAsyncTask {
        public final WeakReference e;
        public ArrayList f;
        public final boolean g;
        public final int h = -1;

        public BaseTask(SettingFont settingFont, boolean z) {
            this.e = new WeakReference(settingFont);
            this.g = z;
        }

        /* JADX WARN: Type inference failed for: r2v5, types: [java.lang.Object, java.util.Comparator] */
        /* JADX WARN: Type inference failed for: r4v2, types: [java.lang.Object, com.mycompany.app.setting.SettingFont$FontItem] */
        @Override // com.mycompany.app.async.MyAsyncTask
        public final void a() {
            SettingFont settingFont;
            File[] listFiles;
            WeakReference weakReference = this.e;
            if (weakReference != null && (settingFont = (SettingFont) weakReference.get()) != null && !this.f12839c && (listFiles = new File("/system/fonts").listFiles()) != null && listFiles.length != 0) {
                this.f = new ArrayList();
                for (File file : listFiles) {
                    if (this.f12839c) {
                        this.f = null;
                        return;
                    }
                    if (file != null) {
                        String path = file.getPath();
                        if (!TextUtils.isEmpty(path)) {
                            String name = file.getName();
                            if (!TextUtils.isEmpty(name) && Compress.B(MainUtil.W0(name)) && file.length() != 0) {
                                ?? obj = new Object();
                                obj.b = path;
                                obj.f17751c = name;
                                obj.d = name.toLowerCase(Locale.US);
                                this.f.add(obj);
                            }
                        }
                    }
                }
                ArrayList arrayList = this.f;
                if (arrayList != null && !arrayList.isEmpty()) {
                    try {
                        Collections.sort(this.f, new Object());
                    } catch (Exception unused) {
                    }
                }
                settingFont.d2 = this.f;
                settingFont.b2 = true;
                SettingFont.H0(settingFont, this.g, this.h);
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            SettingFont settingFont;
            WeakReference weakReference = this.e;
            if (weakReference == null || (settingFont = (SettingFont) weakReference.get()) == null) {
                return;
            }
            settingFont.Z1 = null;
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            SettingFont settingFont;
            WeakReference weakReference = this.e;
            if (weakReference == null || (settingFont = (SettingFont) weakReference.get()) == null) {
                return;
            }
            settingFont.Z1 = null;
            SettingFont.I0(settingFont);
        }
    }

    /* loaded from: classes3.dex */
    public static class FontItem {

        /* renamed from: a, reason: collision with root package name */
        public int f17750a;
        public String b;

        /* renamed from: c, reason: collision with root package name */
        public String f17751c;
        public String d;
        public Typeface e;
    }

    /* loaded from: classes3.dex */
    public class LocalWebViewClient extends WebViewClient {
        public LocalWebViewClient() {
        }

        @Override // android.webkit.WebViewClient
        public final void onPageFinished(WebView webView, String str) {
            final SettingFont settingFont = SettingFont.this;
            WebNestView webNestView = settingFont.I1;
            if (webNestView != null) {
                webNestView.setWebLoading(false);
                if (!settingFont.C2 && !TextUtils.isEmpty(str) && !str.equals(settingFont.D2)) {
                    settingFont.C2 = true;
                    settingFont.D2 = str;
                    Handler handler = settingFont.O0;
                    if (handler != null) {
                        handler.post(new Runnable() { // from class: com.mycompany.app.setting.SettingFont.22
                            @Override // java.lang.Runnable
                            public final void run() {
                                SettingFont settingFont2 = SettingFont.this;
                                MainUtil.l(settingFont2.I1);
                                settingFont2.C2 = false;
                            }
                        });
                    }
                }
            }
        }

        @Override // android.webkit.WebViewClient
        public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            WebNestView webNestView = SettingFont.this.I1;
            if (webNestView == null) {
                return;
            }
            webNestView.setWebLoading(true);
        }

        @Override // android.webkit.WebViewClient
        public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            final SettingFont settingFont = SettingFont.this;
            settingFont.I1 = null;
            MainUtil.D(webView, renderProcessGoneDetail);
            Handler handler = settingFont.O0;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.mycompany.app.setting.SettingFont.23
                    @Override // java.lang.Runnable
                    public final void run() {
                        SettingFont.this.finish();
                    }
                });
                return true;
            }
            return true;
        }

        /* JADX WARN: Removed duplicated region for block: B:27:0x0054 A[RETURN] */
        @Override // android.webkit.WebViewClient
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final android.webkit.WebResourceResponse shouldInterceptRequest(android.webkit.WebView r4, android.webkit.WebResourceRequest r5) {
            /*
                r3 = this;
                com.mycompany.app.setting.SettingFont r4 = com.mycompany.app.setting.SettingFont.this
                com.mycompany.app.web.WebNestView r0 = r4.I1
                r1 = 0
                if (r0 != 0) goto L8
                return r1
            L8:
                if (r5 == 0) goto L55
                android.net.Uri r0 = r5.getUrl()
                if (r0 != 0) goto L11
                goto L55
            L11:
                android.net.Uri r5 = r5.getUrl()
                java.lang.String r5 = r5.toString()
                android.content.Context r0 = r4.f1
                java.lang.String r0 = r4.y2
                boolean r0 = android.text.TextUtils.isEmpty(r0)
                if (r0 != 0) goto L51
                java.lang.String r0 = r4.x2
                boolean r0 = android.text.TextUtils.isEmpty(r0)
                if (r0 == 0) goto L2c
                goto L51
            L2c:
                boolean r0 = android.text.TextUtils.isEmpty(r5)
                if (r0 == 0) goto L33
                goto L51
            L33:
                java.lang.String r0 = "soul_user_font.ttf"
                boolean r5 = r5.contains(r0)
                if (r5 == 0) goto L4b
                java.lang.String r4 = r4.y2     // Catch: java.lang.Exception -> L4b
                java.io.InputStream r4 = com.mycompany.app.main.MainUtil.a1(r4)     // Catch: java.lang.Exception -> L4b
                android.webkit.WebResourceResponse r5 = new android.webkit.WebResourceResponse     // Catch: java.lang.Exception -> L4c
                java.lang.String r0 = "application/x-font-ttf"
                java.lang.String r2 = "UTF-8"
                r5.<init>(r0, r2, r4)     // Catch: java.lang.Exception -> L4c
                goto L52
            L4b:
                r4 = r1
            L4c:
                if (r4 == 0) goto L51
                r4.close()     // Catch: java.lang.Exception -> L51
            L51:
                r5 = r1
            L52:
                if (r5 == 0) goto L55
                return r5
            L55:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.setting.SettingFont.LocalWebViewClient.shouldInterceptRequest(android.webkit.WebView, android.webkit.WebResourceRequest):android.webkit.WebResourceResponse");
        }
    }

    /* loaded from: classes3.dex */
    public static class SortFont implements Comparator<FontItem> {
        @Override // java.util.Comparator
        public final int compare(FontItem fontItem, FontItem fontItem2) {
            FontItem fontItem3 = fontItem;
            FontItem fontItem4 = fontItem2;
            if (fontItem3 == null && fontItem4 == null) {
                return 0;
            }
            if (fontItem3 == null) {
                return 1;
            }
            if (fontItem4 == null) {
                return -1;
            }
            return MainUtil.n(fontItem3.d, fontItem4.d, false);
        }
    }

    /* loaded from: classes3.dex */
    public static class UserTask extends MyAsyncTask {
        public final WeakReference e;
        public ArrayList f;
        public final boolean g;
        public int h = -1;
        public final boolean i;

        public UserTask(SettingFont settingFont, boolean z, boolean z2) {
            this.e = new WeakReference(settingFont);
            this.g = z;
            this.i = z2;
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x00c2  */
        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, java.util.Comparator] */
        /* JADX WARN: Type inference failed for: r9v2, types: [java.lang.Object, com.mycompany.app.setting.SettingFont$FontItem] */
        @Override // com.mycompany.app.async.MyAsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a() {
            /*
                Method dump skipped, instructions count: 266
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.setting.SettingFont.UserTask.a():void");
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            SettingFont settingFont;
            WeakReference weakReference = this.e;
            if (weakReference == null || (settingFont = (SettingFont) weakReference.get()) == null) {
                return;
            }
            settingFont.p2 = null;
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            SettingFont settingFont;
            WeakReference weakReference = this.e;
            if (weakReference != null && (settingFont = (SettingFont) weakReference.get()) != null) {
                settingFont.p2 = null;
                SettingFontAdapter settingFontAdapter = settingFont.o2;
                if (settingFontAdapter != null) {
                    settingFontAdapter.d = this.f;
                    settingFontAdapter.g();
                }
                MyCoverView myCoverView = settingFont.m2;
                if (myCoverView != null) {
                    myCoverView.f(true);
                    ArrayList arrayList = this.f;
                    boolean z = this.i;
                    if (arrayList != null && !arrayList.isEmpty()) {
                        settingFont.k2.setVisibility(8);
                        if (z) {
                            MainUtil.f8(settingFont, String.format(Locale.US, settingFont.f1.getString(R.string.file_found), Integer.valueOf(this.f.size())));
                        }
                    } else {
                        settingFont.k2.setVisibility(0);
                        if (z) {
                            MainUtil.e8(settingFont, R.string.no_found);
                        }
                    }
                    int i = this.h;
                    if (i != -1) {
                        settingFont.n2.x0(i);
                    }
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    public class ViewPagerAdapter extends RecyclerView.Adapter<ViewPagerHolder> {
        public ViewPagerAdapter() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final int d() {
            return 2;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final int f(int i) {
            return i;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final /* bridge */ /* synthetic */ void n(RecyclerView.ViewHolder viewHolder, int i) {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final RecyclerView.ViewHolder o(ViewGroup viewGroup, int i) {
            View view;
            SettingFont settingFont = SettingFont.this;
            if (i == 0) {
                view = settingFont.T1;
            } else {
                view = settingFont.i2;
            }
            try {
                MainUtil.W6(view);
                view.setLayoutParams(new RecyclerView.LayoutParams(-1, -1));
            } catch (Exception unused) {
                settingFont.finish();
            }
            int i2 = SettingFont.J2;
            if (view == null) {
                try {
                    View view2 = new View(settingFont.f1);
                    try {
                        view2.setLayoutParams(new RecyclerView.LayoutParams(-1, -1));
                    } catch (Exception unused2) {
                    }
                    view = view2;
                } catch (Exception unused3) {
                }
            }
            return new RecyclerView.ViewHolder(view);
        }
    }

    /* loaded from: classes3.dex */
    public static class ViewPagerHolder extends RecyclerView.ViewHolder {
    }

    /* JADX WARN: Type inference failed for: r9v1, types: [java.lang.Object, com.mycompany.app.setting.SettingFont$FontItem] */
    public static ArrayList D0(SettingFont settingFont, AssetManager assetManager, String str, String str2) {
        try {
            String[] list = assetManager.list(str2);
            if (list != null && list.length != 0) {
                ArrayList arrayList = new ArrayList();
                try {
                    for (String str3 : list) {
                        AppTask appTask = settingFont.a2;
                        if (appTask != null && !appTask.f12839c) {
                            if (!TextUtils.isEmpty(str3) && str3.endsWith(".ttf")) {
                                StringBuilder sb = new StringBuilder();
                                sb.append(str2);
                                sb.append("/");
                                sb.append(str3);
                                ?? obj = new Object();
                                obj.b = "app://" + str + "," + str2 + "," + str3;
                                obj.f17751c = str3;
                                obj.d = str3.toLowerCase(Locale.US);
                                obj.e = Typeface.createFromAsset(assetManager, sb.toString());
                                arrayList.add(obj);
                            }
                        }
                        return null;
                    }
                    return arrayList;
                } catch (Exception unused) {
                    return arrayList;
                }
            }
            return null;
        } catch (Exception unused2) {
            return null;
        }
    }

    public static String E0(SettingFont settingFont) {
        String str;
        if (MainApp.K1) {
            str = "white;}";
        } else {
            str = "black;}";
        }
        StringBuilder sb = new StringBuilder("<!DOCTYPE html><html><head><meta charset=\"utf-8\"/><meta name='viewport' content='width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no'/><style>@font-face{font-family:soul_user_font;src:url(\"soul_user_font.ttf\")}body,body *:not([class*=\"icon\"]):not([class^=\"fa\"]):not(ion-icon){font-family:soul_user_font !important;");
        if (settingFont.w2) {
            sb.append("font-weight:bold !important;");
        }
        a.y(sb, "}body{margin:0;}p{margin:0;width:100%;line-height:1.8;word-wrap:break-word;font-size:18px;text-align:center;color:", str, "</style></head><body><div style='position:absolute;top:50%;transform:translate(0,-50%);margin:0;width:100%;user-select:none;'><p>ABCDEabcde</p><p>1234567890</p><p>");
        sb.append(settingFont.getString(R.string.font_preview));
        sb.append("</p></div></body></html>");
        return sb.toString();
    }

    public static void F0(SettingFont settingFont, boolean z) {
        MyButtonImage myButtonImage;
        RelativeLayout relativeLayout = new RelativeLayout(settingFont);
        relativeLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        MyRecyclerView myRecyclerView = new MyRecyclerView(settingFont);
        myRecyclerView.setVerticalScrollBarEnabled(true);
        myRecyclerView.setHorizontalScrollBarEnabled(false);
        relativeLayout.addView(myRecyclerView, -1, -1);
        ImageView imageView = new ImageView(settingFont);
        ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_INSIDE;
        imageView.setScaleType(scaleType);
        imageView.setImageResource(R.drawable.logo_gray);
        imageView.setVisibility(8);
        relativeLayout.addView(imageView, new RelativeLayout.LayoutParams(-1, -1));
        if (!z) {
            myButtonImage = new MyButtonImage(settingFont);
            myButtonImage.setScaleType(scaleType);
            myButtonImage.setImageResource(R.drawable.outline_sd_card_white_24);
            myButtonImage.setBgNorRadius(MainApp.f1 / 2);
            myButtonImage.k(-5854742, -5854742);
            int i = MainApp.g1;
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i, i);
            layoutParams.addRule(12);
            layoutParams.addRule(21);
            layoutParams.setMarginEnd(MainApp.F1);
            layoutParams.bottomMargin = MainApp.F1;
            relativeLayout.addView(myButtonImage, layoutParams);
        } else {
            myButtonImage = null;
        }
        MyCoverView myCoverView = new MyCoverView(settingFont);
        myCoverView.setVisibility(8);
        relativeLayout.addView(myCoverView, -1, -1);
        if (z) {
            settingFont.T1 = relativeLayout;
            settingFont.U1 = myRecyclerView;
            settingFont.V1 = imageView;
            settingFont.W1 = myCoverView;
            return;
        }
        settingFont.i2 = relativeLayout;
        settingFont.j2 = myRecyclerView;
        settingFont.k2 = imageView;
        settingFont.l2 = myButtonImage;
        settingFont.m2 = myCoverView;
    }

    public static void G0(SettingFont settingFont) {
        if (settingFont.m2 == null || settingFont.P0() || settingFont.s2) {
            return;
        }
        settingFont.s2 = true;
        settingFont.I2 = true;
        settingFont.W1.m(true);
        settingFont.m2.m(true);
        settingFont.m0(new Runnable() { // from class: com.mycompany.app.setting.SettingFont.31
            @Override // java.lang.Runnable
            public final void run() {
                PrefZone r;
                PrefRead r2;
                SettingFont settingFont2 = SettingFont.this;
                if (settingFont2.t2) {
                    if (!TextUtils.isEmpty(settingFont2.x2)) {
                        if (!settingFont2.x2.equals(PrefRead.o) && !MainUtil.q5(settingFont2.z2, settingFont2.x2)) {
                            settingFont2.z2 = settingFont2.x2;
                            SettingFont.J0(settingFont2);
                        }
                        PrefRead.n = true;
                        PrefRead.o = settingFont2.x2;
                    } else {
                        PrefRead.n = false;
                        PrefRead.o = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                    }
                    PrefRead.p = settingFont2.w2;
                    Context context = settingFont2.f1;
                    if (context != null && (r2 = PrefRead.r(context, false)) != null) {
                        r2.l("mUserFont", PrefRead.n);
                        r2.p("mFontPath", PrefRead.o);
                        r2.l("mFontBold", PrefRead.p);
                        r2.a();
                    }
                } else {
                    if (!TextUtils.isEmpty(settingFont2.x2)) {
                        if (!settingFont2.x2.equals(PrefZone.l) && !MainUtil.q5(settingFont2.z2, settingFont2.x2)) {
                            settingFont2.z2 = settingFont2.x2;
                            SettingFont.J0(settingFont2);
                        }
                        PrefZone.k = true;
                        PrefZone.l = settingFont2.x2;
                    } else {
                        PrefZone.k = false;
                        PrefZone.l = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                    }
                    PrefZone.m = settingFont2.w2;
                    Context context2 = settingFont2.f1;
                    if (context2 != null && (r = PrefZone.r(context2, false)) != null) {
                        r.l("mUserFont", PrefZone.k);
                        r.p("mFontPath", PrefZone.l);
                        r.l("mFontBold", PrefZone.m);
                        r.a();
                    }
                }
                settingFont2.finish();
                settingFont2.I2 = false;
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0092 A[EDGE_INSN: B:42:0x0092->B:43:0x0092 BREAK  A[LOOP:0: B:29:0x006f->B:39:0x008f], SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r3v8, types: [java.lang.Object, com.mycompany.app.setting.SettingFont$FontItem] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void H0(com.mycompany.app.setting.SettingFont r9, boolean r10, int r11) {
        /*
            boolean r0 = r9.b2
            if (r0 == 0) goto L9d
            boolean r0 = r9.c2
            if (r0 != 0) goto La
            goto L9d
        La:
            r0 = 0
            r9.b2 = r0
            r9.c2 = r0
            java.util.ArrayList r1 = r9.d2
            java.util.ArrayList r2 = r9.e2
            r3 = 0
            r9.d2 = r3
            r9.e2 = r3
            r4 = 1
            if (r1 == 0) goto L23
            boolean r5 = r1.isEmpty()
            if (r5 != 0) goto L23
            r5 = r4
            goto L24
        L23:
            r5 = r0
        L24:
            if (r2 == 0) goto L2e
            boolean r6 = r2.isEmpty()
            if (r6 != 0) goto L2e
            r6 = r4
            goto L2f
        L2e:
            r6 = r0
        L2f:
            if (r5 == 0) goto L57
            if (r6 == 0) goto L57
            java.lang.Object r3 = android.support.v4.media.a.c(r4, r2)
            com.mycompany.app.setting.SettingFont$FontItem r3 = (com.mycompany.app.setting.SettingFont.FontItem) r3
            if (r3 == 0) goto L3e
            r7 = 2
            r3.f17750a = r7
        L3e:
            java.lang.Object r3 = r1.get(r0)
            com.mycompany.app.setting.SettingFont$FontItem r3 = (com.mycompany.app.setting.SettingFont.FontItem) r3
            if (r3 == 0) goto L48
            r3.f17750a = r4
        L48:
            com.mycompany.app.setting.SettingFont$FontItem r3 = new com.mycompany.app.setting.SettingFont$FontItem
            r3.<init>()
            r7 = 3
            r3.f17750a = r7
            r2.add(r3)
            r2.addAll(r1)
            goto L5c
        L57:
            if (r5 == 0) goto L5a
            goto L5f
        L5a:
            if (r6 == 0) goto L5e
        L5c:
            r1 = r2
            goto L5f
        L5e:
            r1 = r3
        L5f:
            if (r10 == 0) goto L92
            if (r1 == 0) goto L92
            boolean r10 = r1.isEmpty()
            if (r10 != 0) goto L92
            int r10 = r1.size()
            r2 = r0
            r3 = r2
        L6f:
            if (r3 >= r10) goto L92
            java.lang.Object r7 = r1.get(r3)
            int r3 = r3 + 1
            com.mycompany.app.setting.SettingFont$FontItem r7 = (com.mycompany.app.setting.SettingFont.FontItem) r7
            if (r7 == 0) goto L8f
            java.lang.String r8 = r7.b
            boolean r8 = android.text.TextUtils.isEmpty(r8)
            if (r8 != 0) goto L8f
            java.lang.String r7 = r7.b
            java.lang.String r8 = r9.v2
            boolean r7 = r7.equals(r8)
            if (r7 == 0) goto L8f
            r11 = r2
            goto L92
        L8f:
            int r2 = r2 + 1
            goto L6f
        L92:
            r9.f2 = r1
            r9.g2 = r11
            if (r5 == 0) goto L9b
            if (r6 == 0) goto L9b
            r0 = r4
        L9b:
            r9.h2 = r0
        L9d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.setting.SettingFont.H0(com.mycompany.app.setting.SettingFont, boolean, int):void");
    }

    public static void I0(SettingFont settingFont) {
        if (settingFont.Z1 == null && settingFont.a2 == null) {
            List list = settingFont.f2;
            int i = settingFont.g2;
            settingFont.f2 = null;
            SettingFontAdapter settingFontAdapter = settingFont.Y1;
            if (settingFontAdapter != null) {
                settingFontAdapter.d = list;
                settingFontAdapter.g();
            }
            MyCoverView myCoverView = settingFont.W1;
            if (myCoverView != null) {
                myCoverView.f(true);
                if (list != null && !list.isEmpty()) {
                    settingFont.V1.setVisibility(8);
                } else {
                    settingFont.V1.setVisibility(0);
                }
                if (i != -1) {
                    settingFont.X1.x0(i);
                }
                if (settingFont.h2) {
                    settingFont.U1.post(new Runnable() { // from class: com.mycompany.app.setting.SettingFont.21
                        @Override // java.lang.Runnable
                        public final void run() {
                            int i2;
                            MyRecyclerView myRecyclerView = SettingFont.this.U1;
                            if (myRecyclerView == null) {
                                return;
                            }
                            if (MainApp.K1) {
                                i2 = -16777216;
                            } else {
                                i2 = -460552;
                            }
                            myRecyclerView.setBackgroundColor(i2);
                        }
                    });
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00a8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:49:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00a3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void J0(com.mycompany.app.setting.SettingFont r7) {
        /*
            java.lang.String r0 = r7.z2
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            r2 = 0
            if (r1 == 0) goto Lb
            r1 = r2
            goto L11
        Lb:
            java.lang.String r1 = "app://"
            boolean r1 = r0.startsWith(r1)
        L11:
            if (r1 == 0) goto Lac
            java.lang.String r1 = "/"
            if (r0 == 0) goto Lab
            int r3 = r0.length()
            r4 = 6
            if (r3 > r4) goto L20
            goto Lab
        L20:
            java.lang.String r0 = r0.substring(r4)
            boolean r3 = android.text.TextUtils.isEmpty(r0)
            if (r3 == 0) goto L2c
            goto Lab
        L2c:
            java.lang.String r3 = ","
            java.lang.String[] r0 = r0.split(r3)
            if (r0 == 0) goto Lab
            int r3 = r0.length
            r4 = 3
            if (r3 == r4) goto L3a
            goto Lab
        L3a:
            r3 = r0[r2]
            r4 = 1
            r4 = r0[r4]
            r5 = 2
            r0 = r0[r5]
            boolean r5 = android.text.TextUtils.isEmpty(r3)
            if (r5 == 0) goto L4a
            goto Lab
        L4a:
            boolean r5 = android.text.TextUtils.isEmpty(r4)
            if (r5 == 0) goto L51
            goto Lab
        L51:
            boolean r5 = android.text.TextUtils.isEmpty(r0)
            if (r5 == 0) goto L58
            goto Lab
        L58:
            r5 = 0
            android.content.Context r3 = r7.createPackageContext(r3, r2)     // Catch: java.lang.Exception -> L65
            if (r3 != 0) goto L60
            goto Lab
        L60:
            android.content.res.AssetManager r3 = r3.getAssets()     // Catch: java.lang.Exception -> L65
            goto L66
        L65:
            r3 = r5
        L66:
            if (r3 != 0) goto L69
            goto Lab
        L69:
            boolean r6 = r4.equals(r1)     // Catch: java.lang.Exception -> L82
            if (r6 != 0) goto L84
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L82
            r6.<init>()     // Catch: java.lang.Exception -> L82
            r6.append(r4)     // Catch: java.lang.Exception -> L82
            r6.append(r1)     // Catch: java.lang.Exception -> L82
            r6.append(r0)     // Catch: java.lang.Exception -> L82
            java.lang.String r0 = r6.toString()     // Catch: java.lang.Exception -> L82
            goto L84
        L82:
            r7 = r5
            goto L9f
        L84:
            java.io.InputStream r0 = r3.open(r0)     // Catch: java.lang.Exception -> L82
            java.lang.String r7 = r7.y2     // Catch: java.lang.Exception -> L9d
            java.io.OutputStream r5 = com.mycompany.app.main.MainUtil.c1(r7, r2)     // Catch: java.lang.Exception -> L9d
            r7 = 8192(0x2000, float:1.148E-41)
            byte[] r1 = new byte[r7]     // Catch: java.lang.Exception -> L9d
        L92:
            int r3 = r0.read(r1, r2, r7)     // Catch: java.lang.Exception -> L9d
            r4 = -1
            if (r3 == r4) goto La1
            r5.write(r1, r2, r3)     // Catch: java.lang.Exception -> L9d
            goto L92
        L9d:
            r7 = r5
            r5 = r0
        L9f:
            r0 = r5
            r5 = r7
        La1:
            if (r5 == 0) goto La6
            r5.close()     // Catch: java.lang.Exception -> La6
        La6:
            if (r0 == 0) goto Lab
            r0.close()     // Catch: java.lang.Exception -> Lab
        Lab:
            return
        Lac:
            android.content.Context r1 = r7.f1
            java.lang.String r7 = r7.y2
            com.mycompany.app.main.MainUtil.t(r1, r0, r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.setting.SettingFont.J0(com.mycompany.app.setting.SettingFont):void");
    }

    public static void K0(SettingFont settingFont) {
        if (settingFont.M1 == null || settingFont.P0()) {
            return;
        }
        settingFont.G2 = true;
        boolean z = !settingFont.w2;
        settingFont.w2 = z;
        settingFont.M1.b(z, true);
        settingFont.m0(new Runnable() { // from class: com.mycompany.app.setting.SettingFont.20
            @Override // java.lang.Runnable
            public final void run() {
                SettingFont settingFont2 = SettingFont.this;
                settingFont2.B2 = SettingFont.E0(settingFont2);
                if (TextUtils.isEmpty(settingFont2.A2)) {
                    settingFont2.A2 = MainUtil.M1("soul_font_", null);
                }
                WebNestView webNestView = settingFont2.I1;
                if (webNestView == null) {
                    return;
                }
                webNestView.post(new Runnable() { // from class: com.mycompany.app.setting.SettingFont.20.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        AnonymousClass20 anonymousClass20 = AnonymousClass20.this;
                        SettingFont settingFont3 = SettingFont.this;
                        String str = settingFont3.B2;
                        settingFont3.B2 = null;
                        if (TextUtils.isEmpty(str)) {
                            SettingFont.this.G2 = false;
                            return;
                        }
                        SettingFont settingFont4 = SettingFont.this;
                        WebNestView webNestView2 = settingFont4.I1;
                        if (webNestView2 == null) {
                            return;
                        }
                        MainUtil.r6(webNestView2, settingFont4.A2, str);
                        SettingFont.this.G2 = false;
                    }
                });
            }
        });
    }

    public static void L0(SettingFont settingFont) {
        if (!MainUtil.h6(settingFont.f1, settingFont.y2)) {
            MyMainRelative myMainRelative = settingFont.C1;
            if (myMainRelative != null) {
                myMainRelative.post(new Runnable() { // from class: com.mycompany.app.setting.SettingFont.25
                    @Override // java.lang.Runnable
                    public final void run() {
                        int i = R.string.invalid_file;
                        SettingFont settingFont2 = SettingFont.this;
                        MainUtil.e8(settingFont2, i);
                        MyCoverView myCoverView = settingFont2.W1;
                        if (myCoverView != null) {
                            myCoverView.f(true);
                        }
                        MyCoverView myCoverView2 = settingFont2.m2;
                        if (myCoverView2 != null) {
                            myCoverView2.f(true);
                        }
                        settingFont2.s2 = false;
                        settingFont2.H2 = false;
                    }
                });
                return;
            }
            return;
        }
        MyMainRelative myMainRelative2 = settingFont.C1;
        if (myMainRelative2 == null) {
            return;
        }
        myMainRelative2.post(new AnonymousClass26());
    }

    public static void M0(SettingFont settingFont, String str, String str2) {
        boolean z;
        int lastIndexOf;
        if (settingFont.I1 != null) {
            if (TextUtils.isEmpty(str2) || (lastIndexOf = str2.lastIndexOf(46)) == -1) {
                z = false;
            } else {
                z = Compress.B(str2.substring(lastIndexOf + 1).toLowerCase(Locale.US));
            }
            if (!z) {
                MainUtil.e8(settingFont, R.string.invalid_file);
            } else {
                if (settingFont.P0()) {
                    return;
                }
                settingFont.H2 = true;
                settingFont.m0(new AnonymousClass24(str));
            }
        }
    }

    public final void N0() {
        DialogConfirm dialogConfirm = this.q2;
        if (dialogConfirm != null) {
            dialogConfirm.dismiss();
            this.q2 = null;
        }
    }

    public final void O0() {
        DialogSaveConfirm dialogSaveConfirm = this.r2;
        if (dialogSaveConfirm != null) {
            dialogSaveConfirm.dismiss();
            this.r2 = null;
        }
    }

    public final boolean P0() {
        if (!this.F2 && !this.G2 && !this.H2 && !this.I2) {
            return false;
        }
        return true;
    }

    public final boolean Q0() {
        if (this.t2) {
            if (this.w2 != PrefRead.p) {
                return true;
            }
        } else if (this.w2 != PrefZone.m) {
            return true;
        }
        if (TextUtils.isEmpty(this.v2) && TextUtils.isEmpty(this.x2)) {
            return false;
        }
        return !MainUtil.q5(this.v2, this.x2);
    }

    public final void R0() {
        MyButtonImage myButtonImage = this.D1;
        if (myButtonImage != null) {
            int i = -1;
            int i2 = -16777216;
            if (MainApp.K1) {
                myButtonImage.setImageResource(R.drawable.outline_chevron_left_dark_24);
                this.E1.setTextColor(-328966);
                this.F1.setImageResource(R.drawable.outline_check_dark_24);
                this.G1.setImageResource(R.drawable.outline_help_dark_24);
                this.D1.setBgPreColor(-12632257);
                this.F1.setBgPreColor(-12632257);
                this.G1.setBgPreColor(-12632257);
                this.J1.setBackgroundColor(-14606047);
                this.K1.setTextColor(-328966);
                this.K1.setBackgroundResource(R.drawable.selector_normal_dark);
                this.L1.setBackgroundResource(R.drawable.selector_list_back_dark);
                this.N1.setTextColor(-328966);
                this.O1.setBackgroundResource(R.drawable.selector_normal_dark);
                this.P1.setBackgroundResource(R.drawable.selector_normal_dark);
                this.Q1.setSelectedTabIndicatorColor(-5197648);
                MyRecyclerView myRecyclerView = this.j2;
                if (myRecyclerView != null) {
                    myRecyclerView.setBackgroundColor(-14606047);
                }
            } else {
                myButtonImage.setImageResource(R.drawable.outline_chevron_left_black_24);
                this.E1.setTextColor(-16777216);
                this.F1.setImageResource(R.drawable.outline_check_black_24);
                this.G1.setImageResource(R.drawable.outline_help_black_24);
                this.D1.setBgPreColor(553648128);
                this.F1.setBgPreColor(553648128);
                this.G1.setBgPreColor(553648128);
                this.J1.setBackgroundColor(-1);
                this.K1.setTextColor(-16777216);
                this.K1.setBackgroundResource(R.drawable.selector_normal);
                this.L1.setBackgroundResource(R.drawable.selector_list_back);
                this.N1.setTextColor(-16777216);
                this.O1.setBackgroundResource(R.drawable.selector_normal_gray);
                this.P1.setBackgroundResource(R.drawable.selector_normal_gray);
                this.Q1.setSelectedTabIndicatorColor(-5854742);
                MyRecyclerView myRecyclerView2 = this.j2;
                if (myRecyclerView2 != null) {
                    myRecyclerView2.setBackgroundColor(-1);
                }
            }
            MyRecyclerView myRecyclerView3 = this.U1;
            if (myRecyclerView3 != null) {
                if (this.h2) {
                    if (!MainApp.K1) {
                        i2 = -460552;
                    }
                    myRecyclerView3.setBackgroundColor(i2);
                } else {
                    if (MainApp.K1) {
                        i = -14606047;
                    }
                    myRecyclerView3.setBackgroundColor(i);
                }
            }
        }
    }

    public final void S0(int i) {
        MyLineText myLineText = this.O1;
        if (myLineText == null) {
            return;
        }
        if (i == 0) {
            if (MainApp.K1) {
                myLineText.setTextColor(-328966);
                this.P1.setTextColor(-4079167);
                return;
            } else {
                myLineText.setTextColor(-14784824);
                this.P1.setTextColor(-10395295);
                return;
            }
        }
        if (MainApp.K1) {
            myLineText.setTextColor(-4079167);
            this.P1.setTextColor(-328966);
        } else {
            myLineText.setTextColor(-10395295);
            this.P1.setTextColor(-14784824);
        }
    }

    public final void T0() {
        if (this.q2 != null || this.r2 != null) {
            return;
        }
        O0();
        DialogSaveConfirm dialogSaveConfirm = new DialogSaveConfirm(this, new DialogSeekAudio.DialogSeekListener() { // from class: com.mycompany.app.setting.SettingFont.29
            @Override // com.mycompany.app.dialog.DialogSeekAudio.DialogSeekListener
            public final void a(int i) {
                int i2 = SettingFont.J2;
                SettingFont settingFont = SettingFont.this;
                settingFont.O0();
                if (i == 0) {
                    SettingFont.G0(settingFont);
                } else {
                    settingFont.finish();
                }
            }
        });
        this.r2 = dialogSaveConfirm;
        dialogSaveConfirm.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingFont.30
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                int i = SettingFont.J2;
                SettingFont.this.O0();
            }
        });
    }

    @Override // com.mycompany.app.main.MainActivity, android.app.Activity, android.view.Window.Callback
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (P0()) {
            if (motionEvent != null) {
                int actionMasked = motionEvent.getActionMasked();
                if (actionMasked == 0) {
                    if (this.E2 == 0) {
                        this.E2 = System.currentTimeMillis();
                        return true;
                    }
                } else if ((actionMasked == 1 || actionMasked == 3) && System.currentTimeMillis() - this.E2 > 500) {
                    this.E2 = 0L;
                    this.F2 = false;
                    this.G2 = false;
                    this.H2 = false;
                    this.I2 = false;
                }
            }
            return true;
        }
        this.E2 = 0L;
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // com.mycompany.app.main.MainActivity
    public final void k0(int i, int i2, Intent intent) {
        if (i == 19 && i2 == -1 && intent != null) {
            Uri data = intent.getData();
            if (data == null) {
                MainUtil.e8(this, R.string.invalid_path);
                return;
            }
            String a2 = MainUri.a(data);
            if (TextUtils.isEmpty(a2)) {
                MainUtil.e8(this, R.string.invalid_path);
                return;
            }
            if (!a2.equals(PrefPath.v)) {
                PrefPath.v = a2;
                PrefSet.c(6, this.f1, "mScanFont", a2);
            }
            MainUtil.z7(this.f1, data);
            MainUtil.e8(this, R.string.dir_scanning);
            MyCoverView myCoverView = this.m2;
            if (myCoverView != null) {
                myCoverView.m(true);
                UserTask userTask = this.p2;
                if (userTask != null) {
                    userTask.f12839c = true;
                }
                this.p2 = null;
                UserTask userTask2 = new UserTask(this, false, true);
                this.p2 = userTask2;
                userTask2.b(this.f1);
            }
        }
    }

    @Override // com.mycompany.app.main.MainActivity
    public final void l0() {
        if (P0()) {
            if (this.E2 == 0) {
                this.E2 = System.currentTimeMillis();
                return;
            }
            if (System.currentTimeMillis() - this.E2 > 500) {
                this.E2 = 0L;
                this.F2 = false;
                this.G2 = false;
                this.H2 = false;
                this.I2 = false;
                return;
            }
            return;
        }
        this.E2 = 0L;
        if (this.s2) {
            return;
        }
        if (Q0()) {
            T0();
        } else {
            finish();
        }
    }

    @Override // com.mycompany.app.main.MainActivity, androidx.activity.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        if (Y()) {
            return;
        }
        l0();
    }

    @Override // com.mycompany.app.main.MainActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        int i;
        super.onConfigurationChanged(configuration);
        MainApp.K1 = MainUtil.i5(true, configuration);
        MainApp.L1 = MainUtil.i5(false, configuration);
        boolean z = this.u2;
        boolean z2 = MainApp.K1;
        if (z != z2) {
            this.u2 = z2;
            MyMainRelative myMainRelative = this.C1;
            if (myMainRelative != null) {
                try {
                    Window window = getWindow();
                    if (MainApp.K1) {
                        i = -16777216;
                    } else {
                        i = -460552;
                    }
                    myMainRelative.b(window, i);
                    R0();
                    this.H1.a();
                    ViewPager2 viewPager2 = this.R1;
                    if (viewPager2 != null) {
                        S0(viewPager2.getCurrentItem());
                        SettingFontAdapter settingFontAdapter = this.Y1;
                        if (settingFontAdapter != null) {
                            settingFontAdapter.g();
                        }
                        SettingFontAdapter settingFontAdapter2 = this.o2;
                        if (settingFontAdapter2 != null) {
                            settingFontAdapter2.g();
                        }
                        A0();
                    }
                } catch (Exception unused) {
                }
            }
        }
    }

    @Override // com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        int i;
        super.onCreate(bundle);
        boolean booleanExtra = getIntent().getBooleanExtra("EXTRA_PAGE", false);
        this.t2 = booleanExtra;
        this.u2 = MainApp.K1;
        if (booleanExtra) {
            this.v2 = PrefRead.o;
            this.w2 = PrefRead.p;
        } else {
            this.v2 = PrefZone.l;
            this.w2 = PrefZone.m;
        }
        o0(null, 19);
        StringBuilder sb = new StringBuilder();
        sb.append(getString(R.string.font));
        sb.append(" (");
        if (this.t2) {
            sb.append(getString(R.string.reader_mode));
        } else {
            sb.append(getString(R.string.web_page));
        }
        sb.append(")");
        String sb2 = sb.toString();
        int i2 = R.id.set_icon_frame;
        int i3 = R.id.set_cast_ctrl;
        MyMainRelative myMainRelative = new MyMainRelative(this);
        myMainRelative.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        myMainRelative.addView(linearLayout, androidx.work.impl.workers.a.h(-1, -1, 2, i3));
        MyHeaderView myHeaderView = new MyHeaderView(this);
        linearLayout.addView(myHeaderView, -1, MainApp.b1);
        MyButtonImage myButtonImage = new MyButtonImage(this);
        ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_INSIDE;
        myButtonImage.setScaleType(scaleType);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(MainApp.g1, MainApp.b1);
        layoutParams.setMarginStart(MainApp.F1);
        myHeaderView.addView(myButtonImage, layoutParams);
        AppCompatTextView appCompatTextView = new AppCompatTextView(this, null);
        appCompatTextView.setGravity(16);
        appCompatTextView.setSingleLine(true);
        appCompatTextView.setTextSize(1, 18.0f);
        appCompatTextView.setText(sb2);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, MainApp.b1);
        layoutParams2.addRule(16, i2);
        layoutParams2.setMarginStart(MainApp.i1);
        myHeaderView.addView(appCompatTextView, layoutParams2);
        LinearLayout linearLayout2 = new LinearLayout(this);
        linearLayout2.setId(i2);
        linearLayout2.setBaselineAligned(false);
        linearLayout2.setOrientation(0);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, MainApp.g1);
        layoutParams3.addRule(21);
        layoutParams3.topMargin = MainApp.G1;
        myHeaderView.addView(linearLayout2, layoutParams3);
        int G = (int) MainUtil.G(this, 14.0f);
        MyButtonImage myButtonImage2 = new MyButtonImage(this);
        myButtonImage2.setPadding(G, G, G, G);
        myButtonImage2.setScaleType(scaleType);
        int i4 = MainApp.g1;
        linearLayout2.addView(myButtonImage2, i4, i4);
        MyButtonImage myButtonImage3 = new MyButtonImage(this);
        myButtonImage3.setPadding(G, G, G, G);
        myButtonImage3.setScaleType(scaleType);
        int i5 = MainApp.g1;
        linearLayout2.addView(myButtonImage3, i5, i5);
        FrameLayout frameLayout = new FrameLayout(this);
        frameLayout.setVisibility(4);
        linearLayout2.addView(frameLayout, -2, MainApp.g1);
        int G2 = (int) MainUtil.G(this, 148.0f);
        MyRoundRelative myRoundRelative = new MyRoundRelative(this);
        linearLayout.addView(myRoundRelative, -1, G2);
        MyRoundItem myRoundItem = new MyRoundItem(this);
        myRoundItem.d(true, false);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-1, MainApp.g1);
        layoutParams4.topMargin = MainApp.E1;
        linearLayout.addView(myRoundItem, layoutParams4);
        AppCompatTextView appCompatTextView2 = new AppCompatTextView(this, null);
        appCompatTextView2.setGravity(17);
        appCompatTextView2.setTextSize(1, 16.0f);
        appCompatTextView2.setText(R.string.font_default);
        myRoundItem.addView(appCompatTextView2, -1, MainApp.g1);
        MyRoundItem myRoundItem2 = new MyRoundItem(this);
        myRoundItem2.d(false, true);
        myRoundItem2.setPadding(MainApp.E1, 0, MainApp.F1, 0);
        int i6 = MainApp.E1;
        myRoundItem2.g = true;
        myRoundItem2.h = true;
        myRoundItem2.j = i6;
        if (MainApp.K1) {
            i = -12632257;
        } else {
            i = -2434342;
        }
        myRoundItem2.l = i;
        myRoundItem2.k = 0.5f;
        Paint paint = new Paint();
        myRoundItem2.m = paint;
        paint.setAntiAlias(true);
        myRoundItem2.m.setStyle(Paint.Style.STROKE);
        myRoundItem2.m.setColor(myRoundItem2.l);
        myRoundItem2.m.setStrokeWidth(1.0f);
        linearLayout.addView(myRoundItem2, -1, MainApp.g1);
        MySwitchView mySwitchView = new MySwitchView(this);
        int i7 = MainApp.g1;
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(i7, i7);
        layoutParams5.addRule(21);
        layoutParams5.addRule(15);
        myRoundItem2.addView(mySwitchView, layoutParams5);
        AppCompatTextView appCompatTextView3 = new AppCompatTextView(this, null);
        appCompatTextView3.setTextSize(1, 16.0f);
        appCompatTextView3.setText(R.string.font_bold);
        RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams6.setMarginEnd(MainApp.g1 + MainApp.F1);
        layoutParams6.addRule(15);
        myRoundItem2.addView(appCompatTextView3, layoutParams6);
        LinearLayout linearLayout3 = new LinearLayout(this);
        linearLayout3.setBaselineAligned(false);
        linearLayout3.setOrientation(0);
        linearLayout.addView(linearLayout3, -1, MainApp.g1);
        MyLineText myLineText = new MyLineText(this);
        myLineText.setGravity(17);
        myLineText.setTextSize(1, 16.0f);
        myLineText.setText(R.string.system_name);
        myLineText.s(this);
        LinearLayout.LayoutParams layoutParams7 = new LinearLayout.LayoutParams(0, -1);
        layoutParams7.weight = 1.0f;
        linearLayout3.addView(myLineText, layoutParams7);
        AppCompatTextView appCompatTextView4 = new AppCompatTextView(this, null);
        appCompatTextView4.setGravity(17);
        appCompatTextView4.setTextSize(1, 16.0f);
        LinearLayout.LayoutParams e = com.google.android.gms.internal.mlkit_vision_text_common.a.e(appCompatTextView4, R.string.storage, 0, -1);
        e.weight = 1.0f;
        linearLayout3.addView(appCompatTextView4, e);
        TabLayout tabLayout = new TabLayout(this);
        tabLayout.setTabMode(1);
        tabLayout.setTabGravity(0);
        LinearLayout.LayoutParams layoutParams8 = new LinearLayout.LayoutParams(-1, (int) MainUtil.G(this, 2.0f));
        layoutParams8.setMarginStart(MainApp.E1);
        layoutParams8.setMarginEnd(MainApp.E1);
        linearLayout.addView(tabLayout, layoutParams8);
        ViewPager2 viewPager2 = new ViewPager2(this);
        viewPager2.setOrientation(0);
        linearLayout.addView(viewPager2, -1, -1);
        FrameLayout frameLayout2 = new FrameLayout(this);
        frameLayout2.setId(i3);
        frameLayout2.setVisibility(8);
        RelativeLayout.LayoutParams layoutParams9 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams9.addRule(12);
        myMainRelative.addView(frameLayout2, layoutParams9);
        this.C1 = myMainRelative;
        this.D1 = myButtonImage;
        this.E1 = appCompatTextView;
        this.F1 = myButtonImage2;
        this.G1 = myButtonImage3;
        this.H1 = myRoundRelative;
        this.J1 = myRoundItem;
        this.K1 = appCompatTextView2;
        this.L1 = myRoundItem2;
        this.M1 = mySwitchView;
        this.N1 = appCompatTextView3;
        this.O1 = myLineText;
        this.P1 = appCompatTextView4;
        this.Q1 = tabLayout;
        this.R1 = viewPager2;
        B0(myMainRelative, frameLayout, frameLayout2);
        this.C1.setWindow(getWindow());
        initMainScreenOn(this.C1);
        Handler handler = this.O0;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.setting.SettingFont.1
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r4v1, types: [android.view.View$OnLongClickListener, java.lang.Object] */
            @Override // java.lang.Runnable
            public final void run() {
                final SettingFont settingFont = SettingFont.this;
                if (settingFont.C1 != null) {
                    if (settingFont.H1 != null) {
                        WebNestView webNestView = new WebNestView(settingFont);
                        settingFont.I1 = webNestView;
                        webNestView.setNoAutofill(true);
                        settingFont.I1.setVisibility(8);
                        settingFont.I1.setOnLongClickListener(new Object());
                        WebNestView webNestView2 = settingFont.I1;
                        if (webNestView2 != null) {
                            WebSettings settings = webNestView2.getSettings();
                            settings.setSupportZoom(true);
                            settings.setBuiltInZoomControls(true);
                            settings.setDisplayZoomControls(false);
                            settings.setUseWideViewPort(true);
                            settings.setLoadWithOverviewMode(true);
                            settings.setJavaScriptCanOpenWindowsAutomatically(false);
                            settings.setSupportMultipleWindows(false);
                            settings.setMediaPlaybackRequiresUserGesture(false);
                            settings.setJavaScriptEnabled(true);
                            webNestView2.setVerticalScrollBarEnabled(false);
                            webNestView2.setHorizontalScrollBarEnabled(false);
                            webNestView2.setOverScrollMode(2);
                            webNestView2.setWebViewClient(new LocalWebViewClient());
                        }
                        settingFont.H1.addView(settingFont.I1, -1, -1);
                        settingFont.m0(new Runnable() { // from class: com.mycompany.app.setting.SettingFont.19
                            @Override // java.lang.Runnable
                            public final void run() {
                                SettingFont settingFont2 = SettingFont.this;
                                if (settingFont2.t2) {
                                    settingFont2.y2 = MainUtil.j3(settingFont2.f1);
                                    if (PrefRead.n) {
                                        settingFont2.x2 = PrefRead.o;
                                    }
                                } else {
                                    settingFont2.y2 = MainUtil.u1(settingFont2.f1);
                                    if (PrefZone.k) {
                                        settingFont2.x2 = PrefZone.l;
                                    }
                                }
                                settingFont2.B2 = SettingFont.E0(settingFont2);
                                if (TextUtils.isEmpty(settingFont2.A2)) {
                                    settingFont2.A2 = MainUtil.M1("soul_font_", null);
                                }
                                WebNestView webNestView3 = settingFont2.I1;
                                if (webNestView3 == null) {
                                    return;
                                }
                                webNestView3.post(new Runnable() { // from class: com.mycompany.app.setting.SettingFont.19.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        SettingFont settingFont3;
                                        WebNestView webNestView4;
                                        AnonymousClass19 anonymousClass19 = AnonymousClass19.this;
                                        SettingFont settingFont4 = SettingFont.this;
                                        String str = settingFont4.B2;
                                        settingFont4.B2 = null;
                                        if (TextUtils.isEmpty(str) || (webNestView4 = (settingFont3 = SettingFont.this).I1) == null) {
                                            return;
                                        }
                                        MainUtil.r6(webNestView4, settingFont3.A2, str);
                                        SettingFont.this.I1.setVisibility(0);
                                    }
                                });
                            }
                        });
                    }
                    settingFont.S0(0);
                    settingFont.R0();
                    settingFont.D1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingFont.2
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            SettingFont settingFont2 = SettingFont.this;
                            if (settingFont2.s2) {
                                return;
                            }
                            if (settingFont2.Q0()) {
                                settingFont2.T0();
                            } else {
                                settingFont2.finish();
                            }
                        }
                    });
                    settingFont.F1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingFont.3
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            SettingFont settingFont2 = SettingFont.this;
                            if (settingFont2.s2) {
                                return;
                            }
                            if (settingFont2.Q0()) {
                                SettingFont.G0(settingFont2);
                            } else {
                                settingFont2.finish();
                            }
                        }
                    });
                    settingFont.G1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingFont.4
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            int i8 = SettingFont.J2;
                            final SettingFont settingFont2 = SettingFont.this;
                            if (settingFont2.q2 != null || settingFont2.r2 != null) {
                                return;
                            }
                            settingFont2.N0();
                            DialogConfirm dialogConfirm = new DialogConfirm((Activity) settingFont2, settingFont2.getString(R.string.font_guide_1) + "\n" + settingFont2.getString(R.string.font_guide_2) + "\n\n" + settingFont2.getString(R.string.font_guide_3), false, new DialogConfirm.DialogConfListener() { // from class: com.mycompany.app.setting.SettingFont.27
                                @Override // com.mycompany.app.dialog.DialogConfirm.DialogConfListener
                                public final void a(boolean z) {
                                    int i9 = SettingFont.J2;
                                    SettingFont.this.N0();
                                }
                            });
                            settingFont2.q2 = dialogConfirm;
                            dialogConfirm.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingFont.28
                                @Override // android.content.DialogInterface.OnDismissListener
                                public final void onDismiss(DialogInterface dialogInterface) {
                                    int i9 = SettingFont.J2;
                                    SettingFont.this.N0();
                                }
                            });
                        }
                    });
                    settingFont.K1.setOnClickListener(new AnonymousClass5());
                    settingFont.L1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingFont.6
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            SettingFont.K0(SettingFont.this);
                        }
                    });
                    settingFont.M1.b(settingFont.w2, false);
                    settingFont.M1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingFont.7
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            SettingFont.K0(SettingFont.this);
                        }
                    });
                    settingFont.O1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingFont.8
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            ViewPager2 viewPager22 = SettingFont.this.R1;
                            if (viewPager22 != null) {
                                viewPager22.setCurrentItem(0);
                            }
                        }
                    });
                    settingFont.P1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingFont.9
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            ViewPager2 viewPager22 = SettingFont.this.R1;
                            if (viewPager22 != null) {
                                viewPager22.setCurrentItem(1);
                            }
                        }
                    });
                    Handler handler2 = settingFont.O0;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new AnonymousClass10());
                }
            }
        });
    }

    @Override // com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        ViewPager2 viewPager2 = this.R1;
        ViewPager2.OnPageChangeCallback onPageChangeCallback = this.S1;
        this.R1 = null;
        this.S1 = null;
        if (viewPager2 != null) {
            if (onPageChangeCallback != null) {
                viewPager2.f(onPageChangeCallback);
            }
            viewPager2.setAdapter(null);
        }
        MyButtonImage myButtonImage = this.F1;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.F1 = null;
        }
        MyButtonImage myButtonImage2 = this.G1;
        if (myButtonImage2 != null) {
            myButtonImage2.j();
            this.G1 = null;
        }
        MyRoundRelative myRoundRelative = this.H1;
        if (myRoundRelative != null) {
            myRoundRelative.f = null;
            myRoundRelative.g = null;
            this.H1 = null;
        }
        WebNestView webNestView = this.I1;
        if (webNestView != null) {
            MainUtil.F(webNestView, true);
            this.I1 = null;
        }
        MyRoundItem myRoundItem = this.J1;
        if (myRoundItem != null) {
            myRoundItem.b();
            this.J1 = null;
        }
        MyRoundItem myRoundItem2 = this.L1;
        if (myRoundItem2 != null) {
            myRoundItem2.b();
            this.L1 = null;
        }
        MySwitchView mySwitchView = this.M1;
        if (mySwitchView != null) {
            mySwitchView.a();
            this.M1 = null;
        }
        MyLineText myLineText = this.O1;
        if (myLineText != null) {
            myLineText.u();
            this.O1 = null;
        }
        MyRecyclerView myRecyclerView = this.U1;
        if (myRecyclerView != null) {
            myRecyclerView.s0();
            this.U1 = null;
        }
        MyCoverView myCoverView = this.W1;
        if (myCoverView != null) {
            myCoverView.i();
            this.W1 = null;
        }
        SettingFontAdapter settingFontAdapter = this.Y1;
        if (settingFontAdapter != null) {
            settingFontAdapter.h = settingFontAdapter.d();
            settingFontAdapter.d = null;
            settingFontAdapter.e = null;
            settingFontAdapter.f = null;
            settingFontAdapter.g = null;
            this.Y1 = null;
        }
        MyRecyclerView myRecyclerView2 = this.j2;
        if (myRecyclerView2 != null) {
            myRecyclerView2.s0();
            this.j2 = null;
        }
        MyButtonImage myButtonImage3 = this.l2;
        if (myButtonImage3 != null) {
            myButtonImage3.j();
            this.l2 = null;
        }
        MyCoverView myCoverView2 = this.m2;
        if (myCoverView2 != null) {
            myCoverView2.i();
            this.m2 = null;
        }
        SettingFontAdapter settingFontAdapter2 = this.o2;
        if (settingFontAdapter2 != null) {
            settingFontAdapter2.h = settingFontAdapter2.d();
            settingFontAdapter2.d = null;
            settingFontAdapter2.e = null;
            settingFontAdapter2.f = null;
            settingFontAdapter2.g = null;
            this.o2 = null;
        }
        this.K1 = null;
        this.N1 = null;
        this.P1 = null;
        this.Q1 = null;
        this.T1 = null;
        this.V1 = null;
        this.X1 = null;
        this.i2 = null;
        this.k2 = null;
        this.n2 = null;
        this.v2 = null;
        this.x2 = null;
        this.A2 = null;
    }

    @Override // com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        super.onPause();
        if (isFinishing()) {
            N0();
            O0();
            BaseTask baseTask = this.Z1;
            if (baseTask != null) {
                baseTask.f12839c = true;
            }
            this.Z1 = null;
            AppTask appTask = this.a2;
            if (appTask != null) {
                appTask.f12839c = true;
            }
            this.a2 = null;
            UserTask userTask = this.p2;
            if (userTask != null) {
                userTask.f12839c = true;
            }
            this.p2 = null;
            if (!this.s2) {
                if (this.t2) {
                    if (PrefRead.n) {
                        String str = PrefRead.o;
                        if (!MainUtil.q5(this.z2, str)) {
                            this.z2 = str;
                            m0(new Runnable() { // from class: com.mycompany.app.setting.SettingFont.32
                                @Override // java.lang.Runnable
                                public final void run() {
                                    SettingFont.J0(SettingFont.this);
                                }
                            });
                            return;
                        }
                        return;
                    }
                    return;
                }
                if (PrefZone.k) {
                    String str2 = PrefZone.l;
                    if (!MainUtil.q5(this.z2, str2)) {
                        this.z2 = str2;
                        m0(new Runnable() { // from class: com.mycompany.app.setting.SettingFont.33
                            @Override // java.lang.Runnable
                            public final void run() {
                                SettingFont.J0(SettingFont.this);
                            }
                        });
                    }
                }
            }
        }
    }
}
