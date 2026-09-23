package com.mycompany.app.main.image;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.main.image.MainImageView;
import com.mycompany.app.pref.PrefMain;
import com.mycompany.app.pref.PrefPdf;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.video.VideoActivity;
import com.mycompany.app.view.MyAreaView;
import com.mycompany.app.view.MyCoverView;
import com.mycompany.app.view.MyFadeFrame;
import com.mycompany.app.view.MyFadeListener;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MySizeFrame;

/* loaded from: classes3.dex */
public class MainImageWallpaper extends MainActivity {
    public static final /* synthetic */ int u1 = 0;
    public Context f1;
    public String g1;
    public String h1;
    public String i1;
    public MySizeFrame j1;
    public MainImageView k1;
    public MyFadeFrame l1;
    public MyAreaView m1;
    public AppCompatTextView n1;
    public MyLineText o1;
    public MyCoverView p1;
    public MyFadeFrame q1;
    public boolean r1;
    public Bitmap s1;
    public boolean t1;

    /* renamed from: com.mycompany.app.main.image.MainImageWallpaper$10, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass10 implements Runnable {
        public AnonymousClass10() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            MainImageWallpaper mainImageWallpaper = MainImageWallpaper.this;
            MainImageView mainImageView = mainImageWallpaper.k1;
            if (mainImageView == null) {
                return;
            }
            mainImageWallpaper.s1 = mainImageView.getImageBitmap();
            mainImageWallpaper.m0(new Runnable() { // from class: com.mycompany.app.main.image.MainImageWallpaper.10.1
                /* JADX WARN: Removed duplicated region for block: B:6:0x0021 A[RETURN] */
                /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
                @Override // java.lang.Runnable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final void run() {
                    /*
                        r3 = this;
                        com.mycompany.app.main.image.MainImageWallpaper$10 r0 = com.mycompany.app.main.image.MainImageWallpaper.AnonymousClass10.this
                        com.mycompany.app.main.image.MainImageWallpaper r0 = com.mycompany.app.main.image.MainImageWallpaper.this
                        android.graphics.Bitmap r1 = r0.s1
                        r2 = 0
                        r0.s1 = r2
                        boolean r2 = com.mycompany.app.main.MainUtil.f6(r1)
                        if (r2 == 0) goto L1a
                        android.content.Context r2 = r0.f1     // Catch: java.lang.Exception -> L1a
                        android.app.WallpaperManager r2 = android.app.WallpaperManager.getInstance(r2)     // Catch: java.lang.Exception -> L1a
                        r2.setBitmap(r1)     // Catch: java.lang.Exception -> L1a
                        r1 = 1
                        goto L1b
                    L1a:
                        r1 = 0
                    L1b:
                        r0.t1 = r1
                        android.os.Handler r0 = r0.O0
                        if (r0 != 0) goto L22
                        return
                    L22:
                        com.mycompany.app.main.image.MainImageWallpaper$10$1$1 r1 = new com.mycompany.app.main.image.MainImageWallpaper$10$1$1
                        r1.<init>()
                        r0.post(r1)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.main.image.MainImageWallpaper.AnonymousClass10.AnonymousClass1.run():void");
                }
            });
        }
    }

    /* renamed from: com.mycompany.app.main.image.MainImageWallpaper$11, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass11 implements MainActivity.SystemBarListener {
        @Override // com.mycompany.app.main.MainActivity.SystemBarListener
        public final boolean a() {
            return true;
        }

        @Override // com.mycompany.app.main.MainActivity.SystemBarListener
        public final boolean b() {
            return false;
        }

        @Override // com.mycompany.app.main.MainActivity.SystemBarListener
        public final boolean c() {
            return true;
        }
    }

    @Override // android.app.Activity
    public final void finish() {
        if (this.r1) {
            return;
        }
        super.finish();
    }

    @Override // com.mycompany.app.main.MainActivity
    public final void l0() {
        if (this.r1) {
            return;
        }
        finish();
    }

    @Override // com.mycompany.app.main.MainActivity, androidx.activity.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        if (Y()) {
            return;
        }
        l0();
    }

    /* JADX WARN: Type inference failed for: r1v8, types: [com.mycompany.app.main.MainActivity$SystemBarListener, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v9, types: [com.mycompany.app.view.MySizeFrame, android.widget.FrameLayout, android.view.View, android.view.ViewGroup] */
    /* JADX WARN: Type inference failed for: r5v4, types: [com.mycompany.app.main.image.MainImageView$ZoomItem, java.lang.Object] */
    @Override // com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f1 = getApplicationContext();
        String stringExtra = getIntent().getStringExtra("EXTRA_PATH");
        this.g1 = stringExtra;
        if (TextUtils.isEmpty(stringExtra)) {
            MainUtil.e8(this, R.string.invalid_path);
            finish();
            return;
        }
        this.h1 = getIntent().getStringExtra("EXTRA_REFERER");
        this.i1 = getIntent().getStringExtra("EXTRA_TYPE");
        this.V0 = new Object();
        r0();
        ?? frameLayout = new FrameLayout(this);
        frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        MainImageView mainImageView = new MainImageView(this);
        mainImageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        frameLayout.addView(mainImageView, layoutParams);
        MyFadeFrame myFadeFrame = new MyFadeFrame(this);
        myFadeFrame.setTouchable(true);
        myFadeFrame.setAutoHide(true);
        myFadeFrame.setVisibility(8);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -1);
        int i = MainApp.G1;
        layoutParams2.topMargin = i;
        layoutParams2.setMarginEnd(i);
        frameLayout.addView(myFadeFrame, layoutParams2);
        MyAreaView myAreaView = new MyAreaView(this);
        int G = (int) MainUtil.G(this, 160.0f);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(G, G);
        int i2 = MainApp.F1;
        layoutParams3.topMargin = i2;
        layoutParams3.setMarginStart(i2);
        myFadeFrame.addView(myAreaView, layoutParams3);
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setBaselineAligned(false);
        linearLayout.setOrientation(0);
        linearLayout.setBackgroundColor(-1593835520);
        FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-1, MainApp.g1);
        layoutParams4.gravity = 8388691;
        frameLayout.addView(linearLayout, layoutParams4);
        MyLineText myLineText = new MyLineText(this);
        myLineText.setGravity(17);
        myLineText.setTextSize(1, 16.0f);
        myLineText.setTextColor(-1);
        myLineText.setText(R.string.cancel);
        myLineText.setBackgroundResource(R.drawable.selector_view);
        myLineText.s(this);
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(0, -1);
        layoutParams5.weight = 1.0f;
        linearLayout.addView(myLineText, layoutParams5);
        AppCompatTextView appCompatTextView = new AppCompatTextView(this, null);
        appCompatTextView.setGravity(17);
        appCompatTextView.setTextSize(1, 16.0f);
        appCompatTextView.setTextColor(-1);
        appCompatTextView.setBackgroundResource(R.drawable.selector_view);
        LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(0, -1);
        layoutParams6.weight = 1.0f;
        linearLayout.addView(appCompatTextView, layoutParams6);
        MyCoverView myCoverView = new MyCoverView(this, -1, MainApp.y1, MainApp.z1);
        myCoverView.setBackColor(-1593835520);
        myCoverView.setVisibility(8);
        frameLayout.addView(myCoverView, -1, -1);
        this.j1 = frameLayout;
        this.k1 = mainImageView;
        this.l1 = myFadeFrame;
        this.m1 = myAreaView;
        this.n1 = appCompatTextView;
        this.o1 = myLineText;
        this.p1 = myCoverView;
        mainImageView.o(myFadeFrame, myAreaView);
        MainImageView mainImageView2 = this.k1;
        String str = this.g1;
        String str2 = this.h1;
        String str3 = this.i1;
        mainImageView2.getClass();
        ?? obj = new Object();
        obj.b = str;
        obj.f17205c = str2;
        obj.d = str3;
        mainImageView2.x = obj;
        this.k1.q(this, true, 0, new MainImageView.MainImageListener() { // from class: com.mycompany.app.main.image.MainImageWallpaper.2
            @Override // com.mycompany.app.main.image.MainImageView.MainImageListener
            public final void d() {
                Handler handler;
                if (PrefMain.j) {
                    final MainImageWallpaper mainImageWallpaper = MainImageWallpaper.this;
                    if (mainImageWallpaper.q1 == null && mainImageWallpaper.j1 != null && (handler = mainImageWallpaper.O0) != null) {
                        handler.post(new Runnable() { // from class: com.mycompany.app.main.image.MainImageWallpaper.7
                            @Override // java.lang.Runnable
                            public final void run() {
                                MyFadeFrame Z0;
                                if (PrefMain.j) {
                                    final MainImageWallpaper mainImageWallpaper2 = MainImageWallpaper.this;
                                    if (mainImageWallpaper2.q1 == null && mainImageWallpaper2.j1 != null && (Z0 = VideoActivity.Z0(mainImageWallpaper2)) != null) {
                                        mainImageWallpaper2.q1 = Z0;
                                        Z0.setListener(new MyFadeListener() { // from class: com.mycompany.app.main.image.MainImageWallpaper.8
                                            @Override // com.mycompany.app.view.MyFadeListener
                                            public final void a(boolean z) {
                                                MainImageWallpaper mainImageWallpaper3;
                                                MyFadeFrame myFadeFrame2;
                                                if (!z && (myFadeFrame2 = (mainImageWallpaper3 = MainImageWallpaper.this).q1) != null && mainImageWallpaper3.j1 != null) {
                                                    myFadeFrame2.f();
                                                    mainImageWallpaper3.j1.removeView(mainImageWallpaper3.q1);
                                                    mainImageWallpaper3.q1 = null;
                                                }
                                            }

                                            @Override // com.mycompany.app.view.MyFadeListener
                                            public final void b(boolean z, boolean z2) {
                                            }
                                        });
                                        mainImageWallpaper2.q1.setOnTouchListener(new View.OnTouchListener() { // from class: com.mycompany.app.main.image.MainImageWallpaper.9
                                            @Override // android.view.View.OnTouchListener
                                            public final boolean onTouch(View view, MotionEvent motionEvent) {
                                                boolean z = PrefMain.j;
                                                MainImageWallpaper mainImageWallpaper3 = MainImageWallpaper.this;
                                                if (z) {
                                                    PrefMain.j = false;
                                                    PrefSet.d(5, mainImageWallpaper3.f1, "mGuideWall", false);
                                                }
                                                MyFadeFrame myFadeFrame2 = mainImageWallpaper3.q1;
                                                if (myFadeFrame2 != null) {
                                                    myFadeFrame2.d(true);
                                                }
                                                return false;
                                            }
                                        });
                                        mainImageWallpaper2.j1.addView(mainImageWallpaper2.q1, -1, -1);
                                        return;
                                    }
                                    return;
                                }
                                int i3 = MainImageWallpaper.u1;
                            }
                        });
                        return;
                    }
                    return;
                }
                int i3 = MainImageWallpaper.u1;
            }

            @Override // com.mycompany.app.main.image.MainImageView.MainImageListener
            public final void e(Bitmap bitmap) {
            }
        });
        Handler handler = this.O0;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.mycompany.app.main.image.MainImageWallpaper.3
                @Override // java.lang.Runnable
                public final void run() {
                    final MainImageWallpaper mainImageWallpaper = MainImageWallpaper.this;
                    if (mainImageWallpaper.j1 != null) {
                        mainImageWallpaper.n1.setText(R.string.set_wallpaper);
                        mainImageWallpaper.n1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.image.MainImageWallpaper.4
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                MainImageWallpaper mainImageWallpaper2 = MainImageWallpaper.this;
                                MainImageView mainImageView3 = mainImageWallpaper2.k1;
                                if (mainImageView3 != null) {
                                    if (mainImageView3.p) {
                                        MainUtil.e8(mainImageWallpaper2, R.string.wait_retry);
                                        return;
                                    }
                                    if (mainImageView3.F) {
                                        MainUtil.e8(mainImageWallpaper2, R.string.image_fail);
                                        return;
                                    }
                                    if (!mainImageWallpaper2.r1) {
                                        mainImageWallpaper2.r1 = true;
                                        mainImageWallpaper2.p1.m(true);
                                        Handler handler2 = mainImageWallpaper2.O0;
                                        if (handler2 == null) {
                                            return;
                                        }
                                        handler2.post(new AnonymousClass10());
                                    }
                                }
                            }
                        });
                        mainImageWallpaper.o1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.image.MainImageWallpaper.5
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                MainImageWallpaper.this.finish();
                            }
                        });
                        Handler handler2 = mainImageWallpaper.O0;
                        if (handler2 == null) {
                            return;
                        }
                        handler2.post(new Runnable() { // from class: com.mycompany.app.main.image.MainImageWallpaper.6
                            @Override // java.lang.Runnable
                            public final void run() {
                                int i3 = MainImageWallpaper.u1;
                                MainImageWallpaper mainImageWallpaper2 = MainImageWallpaper.this;
                                mainImageWallpaper2.getClass();
                                try {
                                    if (4 == mainImageWallpaper2.getRequestedOrientation()) {
                                        return;
                                    }
                                } catch (IllegalStateException | Exception unused) {
                                }
                                MainUtil.B7(mainImageWallpaper2, 4);
                            }
                        });
                    }
                }
            });
        }
        setContentView(this.j1);
        initMainScreenOn(this.j1);
    }

    @Override // com.mycompany.app.main.MainActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        MainUtil.w7(this);
        MySizeFrame mySizeFrame = this.j1;
        if (mySizeFrame != null) {
            mySizeFrame.f18961c = null;
            this.j1 = null;
        }
        MainImageView mainImageView = this.k1;
        if (mainImageView != null) {
            mainImageView.l();
            this.k1 = null;
        }
        MyFadeFrame myFadeFrame = this.l1;
        if (myFadeFrame != null) {
            myFadeFrame.f();
            this.l1 = null;
        }
        MyAreaView myAreaView = this.m1;
        if (myAreaView != null) {
            myAreaView.c();
            this.m1 = null;
        }
        MyLineText myLineText = this.o1;
        if (myLineText != null) {
            myLineText.u();
            this.o1 = null;
        }
        MyCoverView myCoverView = this.p1;
        if (myCoverView != null) {
            myCoverView.i();
            this.p1 = null;
        }
        MyFadeFrame myFadeFrame2 = this.q1;
        if (myFadeFrame2 != null) {
            myFadeFrame2.f();
            this.q1 = null;
        }
        this.f1 = null;
        this.g1 = null;
        this.h1 = null;
        this.i1 = null;
        this.n1 = null;
    }

    @Override // com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        super.onPause();
        if (isFinishing()) {
            MainApp.T1 = null;
        }
    }

    @Override // com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        Handler handler = this.O0;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.main.image.MainImageWallpaper.1
            @Override // java.lang.Runnable
            public final void run() {
                MainImageWallpaper mainImageWallpaper = MainImageWallpaper.this;
                if (mainImageWallpaper.O0 == null) {
                    return;
                }
                MainUtil.g7(mainImageWallpaper.getWindow(), PrefPdf.o, PrefPdf.n);
            }
        });
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        r0();
    }
}
