package com.mycompany.app.main.image;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.transition.ChangeBounds;
import android.transition.Scene;
import android.transition.Transition;
import android.transition.TransitionManager;
import android.view.MotionEvent;
import android.view.OrientationEventListener;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.gms.internal.mlkit_vision_text_common.a;
import com.mycompany.app.dialog.DialogEditText;
import com.mycompany.app.image.ImageSizeListener;
import com.mycompany.app.main.BitmapUtil;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.main.image.MainImageView;
import com.mycompany.app.pref.PrefMain;
import com.mycompany.app.pref.PrefPdf;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.pref.PrefSync;
import com.mycompany.app.setting.SettingListAdapter;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.video.VideoActivity;
import com.mycompany.app.view.MyAreaView;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyButtonRelative;
import com.mycompany.app.view.MyCoverView;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyFadeFrame;
import com.mycompany.app.view.MyFadeListener;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyManagerLinear;
import com.mycompany.app.view.MyPopupAdapter;
import com.mycompany.app.view.MyPopupMenu;
import com.mycompany.app.view.MyRecyclerView;
import com.mycompany.app.view.MySizeFrame;
import com.mycompany.app.zoom.ZoomImageAttacher;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.utils.MemoryCacheUtils;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class MainImageQuick extends MainActivity {
    public static final /* synthetic */ int f2 = 0;
    public int A1;
    public int B1;
    public int C1;
    public int D1;
    public MyFadeFrame E1;
    public boolean F1;
    public boolean G1;
    public boolean H1;
    public boolean I1;
    public boolean J1;
    public boolean K1;
    public boolean L1;
    public boolean M1;
    public MyPopupMenu N1;
    public Uri O1;
    public DialogEditText P1;
    public MyDialogBottom Q1;
    public MyDialogLinear R1;
    public MyRecyclerView S1;
    public SettingListAdapter T1;
    public boolean U1;
    public boolean V1;
    public OrientationEventListener W1;
    public boolean X1;
    public Bitmap Y1;
    public Bitmap Z1;
    public Bitmap a2;
    public Bitmap b2;
    public Bitmap c2;
    public Bitmap d2;
    public boolean e2;
    public Context f1;
    public String g1;
    public String h1;
    public String i1;
    public boolean j1;
    public MySizeFrame k1;
    public MainImageView l1;
    public MainImageView m1;
    public MyFadeFrame n1;
    public MyAreaView o1;
    public LinearLayout p1;
    public AppCompatTextView q1;
    public MyLineText r1;
    public MyCoverView s1;
    public MyButtonRelative t1;
    public FrameLayout u1;
    public MainImageView v1;
    public MyButtonRelative w1;
    public FrameLayout x1;
    public MainImageView y1;
    public MainImageView z1;

    /* renamed from: com.mycompany.app.main.image.MainImageQuick$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass2 implements ImageSizeListener {
        public AnonymousClass2() {
        }

        @Override // com.mycompany.app.image.ImageSizeListener
        public final void a(View view, int i, int i2) {
            boolean z;
            if (i > i2) {
                z = true;
            } else {
                z = false;
            }
            MainImageQuick mainImageQuick = MainImageQuick.this;
            mainImageQuick.G1 = z;
            Handler handler = mainImageQuick.O0;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.main.image.MainImageQuick.2.1
                @Override // java.lang.Runnable
                public final void run() {
                    boolean z2;
                    int i3;
                    int i4;
                    int i5;
                    int i6;
                    int i7;
                    int i8;
                    int i9;
                    int i10;
                    int i11;
                    int i12;
                    int i13;
                    final MainImageQuick mainImageQuick2 = MainImageQuick.this;
                    MySizeFrame mySizeFrame = mainImageQuick2.k1;
                    if (mySizeFrame != null) {
                        int width = mySizeFrame.getWidth();
                        int height = mainImageQuick2.k1.getHeight();
                        Context context = mainImageQuick2.f1;
                        if (context != null && width != 0 && height != 0) {
                            if (width > height) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            int i14 = height - MainApp.g1;
                            if (z2) {
                                int i15 = width / 2;
                                int i16 = i15 - MainApp.E1;
                                int i17 = MainApp.f1;
                                i5 = i14 - i17;
                                float f = height;
                                float f2 = width;
                                i6 = (int) ((i5 / f2) * f);
                                i7 = (i16 - i6) / 2;
                                i8 = (i14 - i5) / 2;
                                int i18 = i16 - i17;
                                i3 = 2;
                                int i19 = (int) ((i18 / f2) * f);
                                int i20 = (i14 - i19) / 2;
                                i12 = i15 + MainApp.E1 + ((i16 - i18) / 2);
                                i10 = i19;
                                width = i16;
                                i9 = i18;
                                i11 = 8388613;
                                i13 = i20;
                                i4 = 0;
                            } else {
                                i3 = 2;
                                int i21 = i14 / 2;
                                int i22 = i21 - MainApp.E1;
                                i4 = MainApp.g1;
                                int i23 = MainApp.f1;
                                i5 = i22 - i23;
                                float f3 = width;
                                float f4 = height;
                                i6 = (int) ((i5 / f4) * f3);
                                i7 = (width - i6) / 2;
                                i8 = (i22 - i5) / 2;
                                i9 = width - i23;
                                i10 = (int) ((i9 / f4) * f3);
                                int i24 = i21 + MainApp.E1 + ((i22 - i10) / 2);
                                i11 = 80;
                                i12 = (width - i9) / 2;
                                i13 = i24;
                                i14 = i22;
                            }
                            MyButtonRelative myButtonRelative = mainImageQuick2.t1;
                            if (myButtonRelative != null) {
                                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) myButtonRelative.getLayoutParams();
                                if (layoutParams != null) {
                                    layoutParams.width = width;
                                    layoutParams.height = i14;
                                    mainImageQuick2.t1.setLayoutParams(layoutParams);
                                }
                                FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) mainImageQuick2.v1.getLayoutParams();
                                if (layoutParams2 != null) {
                                    layoutParams2.width = i6;
                                    layoutParams2.height = i5;
                                    layoutParams2.setMarginStart(i7);
                                    layoutParams2.topMargin = i8;
                                    mainImageQuick2.v1.setLayoutParams(layoutParams2);
                                }
                                FrameLayout.LayoutParams layoutParams3 = (FrameLayout.LayoutParams) mainImageQuick2.w1.getLayoutParams();
                                if (layoutParams3 != null) {
                                    layoutParams3.width = width;
                                    layoutParams3.height = i14;
                                    layoutParams3.gravity = i11;
                                    layoutParams3.bottomMargin = i4;
                                    mainImageQuick2.w1.setLayoutParams(layoutParams3);
                                }
                                FrameLayout.LayoutParams layoutParams4 = (FrameLayout.LayoutParams) mainImageQuick2.y1.getLayoutParams();
                                if (layoutParams4 != null) {
                                    layoutParams4.width = i9;
                                    layoutParams4.height = i10;
                                    layoutParams4.setMarginStart(i12);
                                    layoutParams4.topMargin = i13;
                                    mainImageQuick2.y1.setLayoutParams(layoutParams4);
                                }
                                mainImageQuick2.k1.requestLayout();
                                Handler handler2 = mainImageQuick2.O0;
                                if (handler2 != null) {
                                    handler2.post(new Runnable() { // from class: com.mycompany.app.main.image.MainImageQuick.10
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            MySizeFrame mySizeFrame2 = MainImageQuick.this.k1;
                                            if (mySizeFrame2 == null) {
                                                return;
                                            }
                                            mySizeFrame2.requestLayout();
                                        }
                                    });
                                }
                            } else {
                                int G = (int) MainUtil.G(context, 20.0f);
                                MyButtonRelative myButtonRelative2 = new MyButtonRelative(context);
                                int i25 = i13;
                                myButtonRelative2.setClickSize(MainApp.g1);
                                int i26 = i12;
                                myButtonRelative2.e(MainApp.E1, true);
                                myButtonRelative2.g(-14606047, -14211289);
                                int i27 = i10;
                                mainImageQuick2.k1.addView(myButtonRelative2, 0, new FrameLayout.LayoutParams(width, i14));
                                FrameLayout frameLayout = new FrameLayout(context);
                                RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-2, -2);
                                layoutParams5.addRule(13);
                                myButtonRelative2.addView(frameLayout, layoutParams5);
                                View view2 = new View(context);
                                view2.setBackgroundResource(R.drawable.outline_stay_current_portrait_dark_24);
                                FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(G, G);
                                int i28 = i9;
                                layoutParams6.gravity = 16;
                                frameLayout.addView(view2, layoutParams6);
                                AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
                                appCompatTextView.setTextSize(1, 16.0f);
                                appCompatTextView.setTextColor(-1);
                                FrameLayout.LayoutParams d = a.d(appCompatTextView, R.string.view_port, -2, -2);
                                d.gravity = 16;
                                d.setMarginStart(MainApp.E1 + G);
                                frameLayout.addView(appCompatTextView, d);
                                MyButtonImage myButtonImage = new MyButtonImage(context);
                                ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_INSIDE;
                                myButtonImage.setScaleType(scaleType);
                                myButtonImage.setImageResource(R.drawable.outline_image_white_24);
                                myButtonImage.n(MainApp.j1, MainApp.k1);
                                myButtonImage.k(-1593835520, -1586137739);
                                int i29 = MainApp.g1;
                                RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(i29, i29);
                                layoutParams7.addRule(21);
                                int i30 = MainApp.G1;
                                layoutParams7.topMargin = i30;
                                layoutParams7.setMarginEnd(i30);
                                myButtonRelative2.addView(myButtonImage, layoutParams7);
                                MyButtonRelative myButtonRelative3 = new MyButtonRelative(context);
                                myButtonRelative3.setClickSize(MainApp.g1);
                                myButtonRelative3.e(MainApp.E1, true);
                                myButtonRelative3.g(-14606047, -14211289);
                                FrameLayout.LayoutParams layoutParams8 = new FrameLayout.LayoutParams(width, i14);
                                layoutParams8.gravity = i11;
                                layoutParams8.bottomMargin = i4;
                                mainImageQuick2.k1.addView(myButtonRelative3, 1, layoutParams8);
                                FrameLayout frameLayout2 = new FrameLayout(context);
                                RelativeLayout.LayoutParams layoutParams9 = new RelativeLayout.LayoutParams(-2, -2);
                                layoutParams9.addRule(13);
                                myButtonRelative3.addView(frameLayout2, layoutParams9);
                                View view3 = new View(context);
                                view3.setBackgroundResource(R.drawable.outline_stay_current_landscape_dark_24);
                                FrameLayout.LayoutParams layoutParams10 = new FrameLayout.LayoutParams(G, G);
                                layoutParams10.gravity = 16;
                                frameLayout2.addView(view3, layoutParams10);
                                AppCompatTextView appCompatTextView2 = new AppCompatTextView(context, null);
                                appCompatTextView2.setTextSize(1, 16.0f);
                                appCompatTextView2.setTextColor(-1);
                                FrameLayout.LayoutParams d2 = a.d(appCompatTextView2, R.string.view_land, -2, -2);
                                d2.gravity = 16;
                                d2.setMarginStart(G + MainApp.E1);
                                frameLayout2.addView(appCompatTextView2, d2);
                                MainImageView mainImageView = new MainImageView(context);
                                mainImageView.q(mainImageQuick2, false, 1, null);
                                ImageView.ScaleType scaleType2 = ImageView.ScaleType.CENTER_CROP;
                                mainImageView.setScaleType(scaleType2);
                                mainImageView.setVisibility(4);
                                FrameLayout.LayoutParams layoutParams11 = new FrameLayout.LayoutParams(i6, i5);
                                layoutParams11.setMarginStart(i7);
                                layoutParams11.topMargin = i8;
                                int i31 = i3;
                                mainImageQuick2.k1.addView(mainImageView, i31, layoutParams11);
                                MainImageView mainImageView2 = new MainImageView(context);
                                mainImageView2.q(mainImageQuick2, false, i31, null);
                                mainImageView2.setScaleType(scaleType2);
                                mainImageView2.setVisibility(4);
                                FrameLayout.LayoutParams layoutParams12 = new FrameLayout.LayoutParams(i28, i27);
                                layoutParams12.setMarginStart(i26);
                                layoutParams12.topMargin = i25;
                                mainImageQuick2.k1.addView(mainImageView2, 3, layoutParams12);
                                MyButtonImage myButtonImage2 = new MyButtonImage(context);
                                myButtonImage2.setScaleType(scaleType);
                                myButtonImage2.setImageResource(R.drawable.outline_image_white_24);
                                myButtonImage2.n(MainApp.j1, MainApp.k1);
                                myButtonImage2.k(-1593835520, -1586137739);
                                int i32 = MainApp.g1;
                                RelativeLayout.LayoutParams layoutParams13 = new RelativeLayout.LayoutParams(i32, i32);
                                layoutParams13.addRule(21);
                                int i33 = MainApp.G1;
                                layoutParams13.topMargin = i33;
                                layoutParams13.setMarginEnd(i33);
                                myButtonRelative3.addView(myButtonImage2, layoutParams13);
                                mainImageQuick2.t1 = myButtonRelative2;
                                mainImageQuick2.u1 = frameLayout;
                                mainImageQuick2.v1 = mainImageView;
                                mainImageQuick2.w1 = myButtonRelative3;
                                mainImageQuick2.x1 = frameLayout2;
                                mainImageQuick2.y1 = mainImageView2;
                                mainImageQuick2.F1 = true;
                                myButtonRelative2.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.image.MainImageQuick.11
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view4) {
                                        MainImageQuick.u0(MainImageQuick.this, false);
                                    }
                                });
                                myButtonRelative3.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.image.MainImageQuick.12
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view4) {
                                        MainImageQuick.u0(MainImageQuick.this, true);
                                    }
                                });
                                myButtonImage.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.image.MainImageQuick.13
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view4) {
                                        int i34 = MainImageQuick.f2;
                                        MainImageQuick.this.G0(view4, false);
                                    }
                                });
                                myButtonImage2.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.image.MainImageQuick.14
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view4) {
                                        int i34 = MainImageQuick.f2;
                                        MainImageQuick.this.G0(view4, true);
                                    }
                                });
                                if (mainImageQuick2.j1) {
                                    mainImageQuick2.B0(mainImageQuick2.Y1, false, false);
                                    mainImageQuick2.B0(mainImageQuick2.Z1, false, true);
                                }
                            }
                        }
                        Handler handler3 = mainImageQuick2.O0;
                        if (handler3 == null) {
                            return;
                        }
                        handler3.post(new Runnable() { // from class: com.mycompany.app.main.image.MainImageQuick.2.1.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                MainImageQuick mainImageQuick3 = MainImageQuick.this;
                                if (mainImageQuick3.k1 != null && mainImageQuick3.H1 && mainImageQuick3.G1 == mainImageQuick3.J1) {
                                    mainImageQuick3.H1 = false;
                                    mainImageQuick3.I0();
                                }
                            }
                        });
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.main.image.MainImageQuick$20, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass20 implements Runnable {
        public AnonymousClass20() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            MyFadeFrame Z0;
            if (PrefMain.j) {
                final MainImageQuick mainImageQuick = MainImageQuick.this;
                if (mainImageQuick.E1 == null && mainImageQuick.k1 != null && (Z0 = VideoActivity.Z0(mainImageQuick)) != null) {
                    mainImageQuick.E1 = Z0;
                    Z0.setListener(new MyFadeListener() { // from class: com.mycompany.app.main.image.MainImageQuick.21
                        @Override // com.mycompany.app.view.MyFadeListener
                        public final void a(boolean z) {
                            MainImageQuick mainImageQuick2;
                            MyFadeFrame myFadeFrame;
                            if (!z && (myFadeFrame = (mainImageQuick2 = MainImageQuick.this).E1) != null && mainImageQuick2.k1 != null) {
                                myFadeFrame.f();
                                mainImageQuick2.k1.removeView(mainImageQuick2.E1);
                                mainImageQuick2.E1 = null;
                            }
                        }

                        @Override // com.mycompany.app.view.MyFadeListener
                        public final void b(boolean z, boolean z2) {
                        }
                    });
                    mainImageQuick.E1.setOnTouchListener(new View.OnTouchListener() { // from class: com.mycompany.app.main.image.MainImageQuick.22
                        @Override // android.view.View.OnTouchListener
                        public final boolean onTouch(View view, MotionEvent motionEvent) {
                            boolean z = PrefMain.j;
                            MainImageQuick mainImageQuick2 = MainImageQuick.this;
                            if (z) {
                                PrefMain.j = false;
                                PrefSet.d(5, mainImageQuick2.f1, "mGuideWall", false);
                            }
                            MyFadeFrame myFadeFrame = mainImageQuick2.E1;
                            if (myFadeFrame != null) {
                                myFadeFrame.d(true);
                            }
                            return false;
                        }
                    });
                    mainImageQuick.k1.addView(mainImageQuick.E1, -1, -1);
                    return;
                }
                return;
            }
            int i = MainImageQuick.f2;
        }
    }

    /* renamed from: com.mycompany.app.main.image.MainImageQuick$32, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass32 implements MainActivity.SystemBarListener {
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

    public static void u0(MainImageQuick mainImageQuick, boolean z) {
        FrameLayout frameLayout;
        if (z) {
            frameLayout = mainImageQuick.x1;
        } else {
            frameLayout = mainImageQuick.u1;
        }
        if (frameLayout != null) {
            if (frameLayout.getVisibility() == 0) {
                mainImageQuick.G0(frameLayout, z);
                return;
            }
            MainImageView x0 = mainImageQuick.x0(z);
            if (x0 != null) {
                if (x0.p) {
                    MainUtil.e8(mainImageQuick, R.string.wait_retry);
                    return;
                }
                MainImageView w0 = mainImageQuick.w0(z);
                if (w0 != null) {
                    mainImageQuick.J1 = z;
                    int i = 1;
                    mainImageQuick.K1 = true;
                    mainImageQuick.H1 = false;
                    w0.k();
                    mainImageQuick.I0();
                    if (mainImageQuick.J1) {
                        i = 6;
                    }
                    try {
                        if (i == mainImageQuick.getRequestedOrientation()) {
                            return;
                        }
                    } catch (IllegalStateException | Exception unused) {
                    }
                    MainUtil.B7(mainImageQuick, i);
                }
            }
        }
    }

    public static boolean v0(MainImageQuick mainImageQuick, boolean z) {
        Bitmap.CompressFormat compressFormat;
        Context context = mainImageQuick.f1;
        if (context != null) {
            try {
                Bitmap y0 = mainImageQuick.y0(z);
                if (MainUtil.f6(y0)) {
                    String W = MainUtil.W(context, PrefSync.k, z);
                    if (y0.hasAlpha()) {
                        compressFormat = Bitmap.CompressFormat.PNG;
                    } else {
                        compressFormat = Bitmap.CompressFormat.JPEG;
                    }
                    if (MainUtil.q(context, y0, W, compressFormat)) {
                        Bitmap c2 = BitmapUtil.c(W);
                        if (!TextUtils.isEmpty(W) && MainUtil.f6(c2)) {
                            ImageLoader.f().g().b(MemoryCacheUtils.a(0, W), c2);
                            return true;
                        }
                        return true;
                    }
                }
            } catch (Exception unused) {
            }
        }
        return false;
    }

    public final void A0() {
        DialogEditText dialogEditText = this.P1;
        if (dialogEditText != null) {
            dialogEditText.dismiss();
            this.P1 = null;
            this.V1 = false;
            MainUtil.K7(this, false);
        }
    }

    public final void B0(Bitmap bitmap, boolean z, boolean z2) {
        if (z2) {
            if (!MainUtil.f6(this.Z1)) {
                this.Z1 = bitmap;
            } else {
                return;
            }
        } else if (!MainUtil.f6(this.Y1)) {
            this.Y1 = bitmap;
        } else {
            return;
        }
        MainImageView x0 = x0(z2);
        if (x0 == null) {
            return;
        }
        if (MainUtil.f6(bitmap)) {
            x0.setBitmap(bitmap);
        } else if (z) {
            x0.h();
        } else {
            x0.r();
        }
        F0(bitmap, z2);
    }

    public final void C0() {
        MainImageView mainImageView = this.z1;
        if (mainImageView == null) {
            return;
        }
        this.z1 = null;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) mainImageView.getLayoutParams();
        layoutParams.width = this.A1;
        layoutParams.height = this.B1;
        layoutParams.setMarginStart(this.C1);
        layoutParams.topMargin = this.D1;
        mainImageView.setLayoutParams(layoutParams);
    }

    public final void D0(boolean z) {
        int i;
        AppCompatTextView appCompatTextView = this.q1;
        if (appCompatTextView == null) {
            return;
        }
        if (z) {
            i = -1;
        } else {
            i = -8355712;
        }
        appCompatTextView.setTextColor(i);
        this.q1.setEnabled(z);
    }

    public final void E0(boolean z) {
        Handler handler;
        if (this.t1 != null && this.I1 != z) {
            this.I1 = z;
            MainImageView w0 = w0(this.J1);
            if (w0 != null) {
                if (this.I1) {
                    if (this.K1) {
                        w0.k();
                    }
                    w0.o(this.n1, this.o1);
                    w0.setVisibility(0);
                    if (this.J1) {
                        this.l1.setVisibility(4);
                    } else {
                        this.m1.setVisibility(4);
                    }
                    this.v1.setVisibility(4);
                    this.y1.setVisibility(4);
                    this.t1.setVisibility(4);
                    this.w1.setVisibility(4);
                    this.q1.setText(R.string.crop_save);
                    D0(true);
                    if (this.L1) {
                        this.L1 = false;
                        if (PrefMain.j && this.E1 == null && this.k1 != null && (handler = this.O0) != null) {
                            handler.post(new AnonymousClass20());
                            return;
                        }
                        return;
                    }
                    return;
                }
                F0(this.Y1, false);
                F0(this.Z1, true);
                this.t1.setVisibility(0);
                this.w1.setVisibility(0);
                this.q1.setText(R.string.apply);
                if (this.J1) {
                    this.l1.setVisibility(4);
                } else {
                    this.m1.setVisibility(4);
                }
                w0.o(null, null);
                if (w0.E == null && w0.getVisibility() == 0) {
                    float alpha = w0.getAlpha();
                    w0.P = alpha;
                    w0.Q = false;
                    ValueAnimator ofFloat = ValueAnimator.ofFloat(alpha, 0.0f);
                    w0.E = ofFloat;
                    ofFloat.setDuration(alpha * 400.0f);
                    w0.E.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.main.image.MainImageView.12
                        public AnonymousClass12() {
                        }

                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                            MainImageView mainImageView = MainImageView.this;
                            if (mainImageView.E != null) {
                                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                                if (mainImageView.E != null) {
                                    mainImageView.P = floatValue;
                                    if (mainImageView.Q) {
                                        return;
                                    }
                                    mainImageView.Q = true;
                                    MainApp.N(mainImageView.f, mainImageView.R);
                                }
                            }
                        }
                    });
                    w0.E.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.main.image.MainImageView.13
                        public AnonymousClass13() {
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public final void onAnimationCancel(Animator animator) {
                            MainImageView mainImageView = MainImageView.this;
                            if (mainImageView.E == null) {
                                return;
                            }
                            mainImageView.E = null;
                            mainImageView.invalidate();
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public final void onAnimationEnd(Animator animator) {
                            MainImageView mainImageView = MainImageView.this;
                            if (mainImageView.E == null) {
                                return;
                            }
                            MainApp.N(mainImageView.f, new Runnable() { // from class: com.mycompany.app.main.image.MainImageView.15
                                public AnonymousClass15() {
                                }

                                @Override // java.lang.Runnable
                                public final void run() {
                                    MainImageView mainImageView2 = MainImageView.this;
                                    if (mainImageView2.E == null) {
                                        return;
                                    }
                                    mainImageView2.E = null;
                                    mainImageView2.setOnlyVisibility(4);
                                }
                            });
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public final void onAnimationRepeat(Animator animator) {
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public final void onAnimationStart(Animator animator) {
                        }
                    });
                    w0.E.start();
                }
                Handler handler2 = this.O0;
                if (handler2 == null) {
                    return;
                }
                handler2.post(new Runnable() { // from class: com.mycompany.app.main.image.MainImageQuick.18
                    @Override // java.lang.Runnable
                    public final void run() {
                        MainImageQuick mainImageQuick = MainImageQuick.this;
                        int i = MainImageQuick.f2;
                        try {
                            if (4 == mainImageQuick.getRequestedOrientation()) {
                                return;
                            }
                        } catch (IllegalStateException | Exception unused) {
                        }
                        MainUtil.B7(mainImageQuick, 4);
                    }
                });
            }
        }
    }

    public final void F0(Bitmap bitmap, boolean z) {
        FrameLayout frameLayout;
        MainImageView x0 = x0(z);
        if (x0 != null) {
            if (z) {
                frameLayout = this.x1;
            } else {
                frameLayout = this.u1;
            }
            if (MainUtil.f6(bitmap)) {
                x0.h();
                x0.setVisibility(0);
                frameLayout.setVisibility(8);
                if (!this.I1) {
                    D0(true);
                    return;
                }
                return;
            }
            if (x0.p) {
                x0.setVisibility(0);
                frameLayout.setVisibility(8);
            } else {
                x0.h();
                x0.setVisibility(4);
                frameLayout.setVisibility(0);
            }
        }
    }

    public final void G0(View view, boolean z) {
        MyPopupMenu myPopupMenu = this.N1;
        if (myPopupMenu == null) {
            if (myPopupMenu != null) {
                this.Z0 = null;
                myPopupMenu.a();
                this.N1 = null;
            }
            if (view == null) {
                return;
            }
            this.J1 = z;
            this.K1 = false;
            this.H1 = false;
            this.O1 = null;
            ArrayList arrayList = new ArrayList();
            arrayList.add(new MyPopupAdapter.PopMenuItem(0, R.string.image));
            arrayList.add(new MyPopupAdapter.PopMenuItem(1, R.string.camera));
            arrayList.add(new MyPopupAdapter.PopMenuItem(2, R.string.url));
            MyPopupMenu myPopupMenu2 = new MyPopupMenu(this, this.k1, view, arrayList, true, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.main.image.MainImageQuick.23
                @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                public final void a() {
                    int i = MainImageQuick.f2;
                    MainImageQuick mainImageQuick = MainImageQuick.this;
                    MyPopupMenu myPopupMenu3 = mainImageQuick.N1;
                    if (myPopupMenu3 != null) {
                        mainImageQuick.Z0 = null;
                        myPopupMenu3.a();
                        mainImageQuick.N1 = null;
                    }
                }

                @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                public final boolean b(View view2, int i) {
                    final MainImageQuick mainImageQuick = MainImageQuick.this;
                    if (mainImageQuick.f1 != null) {
                        if (i == 0) {
                            MainUtil.O4(mainImageQuick, 14);
                            return true;
                        }
                        if (i == 1) {
                            if (!MainUtil.D4(mainImageQuick, 31)) {
                                mainImageQuick.O1 = MainUtil.C4(14, mainImageQuick, false);
                                return true;
                            }
                        } else if (i == 2 && mainImageQuick.P1 == null && mainImageQuick.Q1 == null) {
                            mainImageQuick.A0();
                            mainImageQuick.V1 = true;
                            MainApp.K1 = true;
                            DialogEditText dialogEditText = new DialogEditText(mainImageQuick, R.string.url, null, null, false, new DialogEditText.EditTextListener() { // from class: com.mycompany.app.main.image.MainImageQuick.24
                                @Override // com.mycompany.app.dialog.DialogEditText.EditTextListener
                                public final void a(String str) {
                                    int i2 = MainImageQuick.f2;
                                    MainImageQuick mainImageQuick2 = MainImageQuick.this;
                                    mainImageQuick2.A0();
                                    if (TextUtils.isEmpty(str)) {
                                        MainUtil.e8(mainImageQuick2, R.string.invalid_path);
                                        return;
                                    }
                                    MainImageView w0 = mainImageQuick2.w0(mainImageQuick2.J1);
                                    if (w0 != null) {
                                        w0.j(null, str, null, null);
                                        mainImageQuick2.J1 = mainImageQuick2.J1;
                                        mainImageQuick2.K1 = false;
                                        mainImageQuick2.H1 = false;
                                        int i3 = 1;
                                        mainImageQuick2.E0(true);
                                        if (mainImageQuick2.J1) {
                                            i3 = 6;
                                        }
                                        try {
                                            if (i3 == mainImageQuick2.getRequestedOrientation()) {
                                                return;
                                            }
                                        } catch (IllegalStateException | Exception unused) {
                                        }
                                        MainUtil.B7(mainImageQuick2, i3);
                                    }
                                }

                                @Override // com.mycompany.app.dialog.DialogEditText.EditTextListener
                                public final void b() {
                                }
                            });
                            mainImageQuick.P1 = dialogEditText;
                            dialogEditText.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.main.image.MainImageQuick.25
                                @Override // android.content.DialogInterface.OnDismissListener
                                public final void onDismiss(DialogInterface dialogInterface) {
                                    int i2 = MainImageQuick.f2;
                                    MainImageQuick.this.A0();
                                }
                            });
                        }
                    }
                    return true;
                }
            });
            this.N1 = myPopupMenu2;
            this.Z0 = myPopupMenu2;
        }
    }

    public final void H0(boolean z) {
        MainImageView mainImageView;
        MainImageView x0 = x0(this.J1);
        if (x0 == null) {
            return;
        }
        this.z1 = x0;
        if (this.J1) {
            if (!this.F1) {
                this.F1 = true;
                mainImageView = this.v1;
            }
            mainImageView = null;
        } else {
            if (this.F1) {
                this.F1 = false;
                mainImageView = this.y1;
            }
            mainImageView = null;
        }
        if (mainImageView != null) {
            int indexOfChild = this.k1.indexOfChild(mainImageView);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) mainImageView.getLayoutParams();
            this.k1.removeView(mainImageView);
            this.k1.addView(mainImageView, indexOfChild - 1, layoutParams);
        }
        if (z) {
            ChangeBounds changeBounds = new ChangeBounds();
            changeBounds.addListener(new Transition.TransitionListener() { // from class: com.mycompany.app.main.image.MainImageQuick.16
                @Override // android.transition.Transition.TransitionListener
                public final void onTransitionCancel(Transition transition) {
                }

                @Override // android.transition.Transition.TransitionListener
                public final void onTransitionEnd(Transition transition) {
                    int i = MainImageQuick.f2;
                    MainImageQuick.this.E0(true);
                }

                @Override // android.transition.Transition.TransitionListener
                public final void onTransitionPause(Transition transition) {
                }

                @Override // android.transition.Transition.TransitionListener
                public final void onTransitionResume(Transition transition) {
                }

                @Override // android.transition.Transition.TransitionListener
                public final void onTransitionStart(Transition transition) {
                }
            });
            TransitionManager.go(new Scene(this.k1), changeBounds);
        }
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) x0.getLayoutParams();
        this.A1 = layoutParams2.width;
        this.B1 = layoutParams2.height;
        this.C1 = layoutParams2.getMarginStart();
        this.D1 = layoutParams2.topMargin;
        layoutParams2.width = this.k1.getWidth();
        layoutParams2.height = this.k1.getHeight();
        layoutParams2.setMarginStart(0);
        layoutParams2.topMargin = 0;
        x0.setLayoutParams(layoutParams2);
    }

    public final void I0() {
        if (this.z1 == null) {
            if (this.G1 != this.J1) {
                this.H1 = true;
                AppCompatTextView appCompatTextView = this.q1;
                if (appCompatTextView == null) {
                    return;
                }
                appCompatTextView.setText(R.string.crop_save);
                D0(true);
                return;
            }
            H0(true);
        }
    }

    @Override // android.app.Activity
    public final void finish() {
        if (this.M1) {
            return;
        }
        super.finish();
    }

    @Override // com.mycompany.app.main.MainActivity
    public final void k0(int i, int i2, Intent intent) {
        Uri data;
        String type;
        if (i == 14 && this.f1 != null) {
            Uri uri = this.O1;
            this.O1 = null;
            if (i2 == -1) {
                if (intent == null) {
                    data = null;
                } else {
                    data = intent.getData();
                }
                if (data != null) {
                    uri = data;
                }
                if (uri == null) {
                    MainUtil.e8(this, R.string.invalid_path);
                    return;
                }
                MainUtil.z7(this.f1, uri);
                if (intent == null) {
                    type = null;
                } else {
                    type = intent.getType();
                }
                MainImageView w0 = w0(this.J1);
                if (w0 != null) {
                    w0.j(uri, null, null, type);
                    this.J1 = this.J1;
                    this.K1 = false;
                    this.H1 = false;
                    int i3 = 1;
                    E0(true);
                    if (this.J1) {
                        i3 = 6;
                    }
                    try {
                        if (i3 == getRequestedOrientation()) {
                            return;
                        }
                    } catch (IllegalStateException | Exception unused) {
                    }
                    MainUtil.B7(this, i3);
                }
            }
        }
    }

    @Override // com.mycompany.app.main.MainActivity
    public final void l0() {
        if (this.M1) {
            return;
        }
        if (this.I1) {
            C0();
            E0(false);
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

    /* JADX WARN: Type inference failed for: r1v4, types: [com.mycompany.app.main.MainActivity$SystemBarListener, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v6, types: [com.mycompany.app.view.MySizeFrame, android.widget.FrameLayout, android.view.View, android.view.ViewGroup] */
    /* JADX WARN: Type inference failed for: r6v3, types: [com.mycompany.app.main.image.MainImageView$ZoomItem, java.lang.Object] */
    @Override // com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f1 = getApplicationContext();
        String stringExtra = getIntent().getStringExtra("EXTRA_PATH");
        this.g1 = stringExtra;
        if (!TextUtils.isEmpty(stringExtra)) {
            this.h1 = getIntent().getStringExtra("EXTRA_REFERER");
            this.i1 = getIntent().getStringExtra("EXTRA_TYPE");
            this.j1 = true;
        }
        this.V0 = new Object();
        r0();
        o0(null, 14);
        ?? frameLayout = new FrameLayout(this);
        frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        MainImageView mainImageView = new MainImageView(this);
        ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_CROP;
        mainImageView.setScaleType(scaleType);
        mainImageView.setVisibility(8);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        frameLayout.addView(mainImageView, layoutParams);
        MainImageView mainImageView2 = new MainImageView(this);
        mainImageView2.setScaleType(scaleType);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -1);
        layoutParams2.gravity = 17;
        frameLayout.addView(mainImageView2, layoutParams2);
        MyFadeFrame myFadeFrame = new MyFadeFrame(this);
        myFadeFrame.setTouchable(true);
        myFadeFrame.setAutoHide(true);
        myFadeFrame.setVisibility(8);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, -1);
        int i = MainApp.G1;
        layoutParams3.topMargin = i;
        layoutParams3.setMarginEnd(i);
        frameLayout.addView(myFadeFrame, layoutParams3);
        MyAreaView myAreaView = new MyAreaView(this);
        int G = (int) MainUtil.G(this, 160.0f);
        FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(G, G);
        int i2 = MainApp.F1;
        layoutParams4.topMargin = i2;
        layoutParams4.setMarginStart(i2);
        myFadeFrame.addView(myAreaView, layoutParams4);
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setBaselineAligned(false);
        linearLayout.setOrientation(0);
        linearLayout.setBackgroundColor(-1593835520);
        FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(-1, MainApp.g1);
        layoutParams5.gravity = 8388691;
        frameLayout.addView(linearLayout, layoutParams5);
        MyLineText myLineText = new MyLineText(this);
        myLineText.setGravity(17);
        myLineText.setTextSize(1, 16.0f);
        myLineText.setTextColor(-1);
        myLineText.setText(R.string.cancel);
        myLineText.setBackgroundResource(R.drawable.selector_view);
        myLineText.s(this);
        LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(0, -1);
        layoutParams6.weight = 1.0f;
        linearLayout.addView(myLineText, layoutParams6);
        AppCompatTextView appCompatTextView = new AppCompatTextView(this, null);
        appCompatTextView.setGravity(17);
        appCompatTextView.setTextSize(1, 16.0f);
        appCompatTextView.setTextColor(-1);
        appCompatTextView.setBackgroundResource(R.drawable.selector_view);
        LinearLayout.LayoutParams layoutParams7 = new LinearLayout.LayoutParams(0, -1);
        layoutParams7.weight = 1.0f;
        linearLayout.addView(appCompatTextView, layoutParams7);
        MyCoverView myCoverView = new MyCoverView(this, -1, MainApp.y1, MainApp.z1);
        myCoverView.setBackColor(-1593835520);
        myCoverView.setVisibility(8);
        frameLayout.addView(myCoverView, -1, -1);
        this.k1 = frameLayout;
        this.l1 = mainImageView2;
        this.m1 = mainImageView;
        this.n1 = myFadeFrame;
        this.o1 = myAreaView;
        this.p1 = linearLayout;
        this.q1 = appCompatTextView;
        this.r1 = myLineText;
        this.s1 = myCoverView;
        frameLayout.setListener(new AnonymousClass2());
        if (this.j1) {
            MainImageView mainImageView3 = this.l1;
            String str = this.g1;
            String str2 = this.h1;
            String str3 = this.i1;
            mainImageView3.getClass();
            ?? obj = new Object();
            obj.b = str;
            obj.f17205c = str2;
            obj.d = str3;
            mainImageView3.x = obj;
        }
        this.l1.setVisibility(4);
        this.l1.q(this, true, 1, new MainImageView.MainImageListener() { // from class: com.mycompany.app.main.image.MainImageQuick.3
            @Override // com.mycompany.app.main.image.MainImageView.MainImageListener
            public final void d() {
                Handler handler;
                boolean z = PrefMain.j;
                if (!z) {
                    int i3 = MainImageQuick.f2;
                    return;
                }
                MainImageQuick mainImageQuick = MainImageQuick.this;
                if (mainImageQuick.I1) {
                    mainImageQuick.L1 = false;
                    if (z && mainImageQuick.E1 == null && mainImageQuick.k1 != null && (handler = mainImageQuick.O0) != null) {
                        handler.post(new AnonymousClass20());
                        return;
                    }
                    return;
                }
                mainImageQuick.L1 = true;
            }

            @Override // com.mycompany.app.main.image.MainImageView.MainImageListener
            public final void e(Bitmap bitmap) {
                final MainImageQuick mainImageQuick = MainImageQuick.this;
                mainImageQuick.a2 = bitmap;
                if (mainImageQuick.m1 == null) {
                    return;
                }
                mainImageQuick.m0(new Runnable() { // from class: com.mycompany.app.main.image.MainImageQuick.15
                    @Override // java.lang.Runnable
                    public final void run() {
                        MainImageQuick mainImageQuick2 = MainImageQuick.this;
                        Bitmap bitmap2 = mainImageQuick2.a2;
                        mainImageQuick2.a2 = null;
                        mainImageQuick2.b2 = MainUtil.t1(mainImageQuick2.v1, bitmap2, false);
                        mainImageQuick2.c2 = MainUtil.t1(mainImageQuick2.y1, bitmap2, true);
                        mainImageQuick2.d2 = MainUtil.s1(mainImageQuick2.m1, bitmap2, true);
                        Handler handler = mainImageQuick2.O0;
                        if (handler == null) {
                            return;
                        }
                        handler.post(new Runnable() { // from class: com.mycompany.app.main.image.MainImageQuick.15.1
                            /* JADX WARN: Type inference failed for: r8v0, types: [com.mycompany.app.main.image.MainImageView$ZoomItem, java.lang.Object] */
                            @Override // java.lang.Runnable
                            public final void run() {
                                MainImageQuick mainImageQuick3 = MainImageQuick.this;
                                Bitmap bitmap3 = mainImageQuick3.b2;
                                Bitmap bitmap4 = mainImageQuick3.c2;
                                Bitmap bitmap5 = mainImageQuick3.d2;
                                mainImageQuick3.b2 = null;
                                mainImageQuick3.c2 = null;
                                mainImageQuick3.d2 = null;
                                if (mainImageQuick3.m1 != null) {
                                    mainImageQuick3.B0(bitmap3, true, false);
                                    mainImageQuick3.B0(bitmap4, true, true);
                                    MainImageView mainImageView4 = mainImageQuick3.m1;
                                    String str4 = mainImageQuick3.g1;
                                    String str5 = mainImageQuick3.h1;
                                    String str6 = mainImageQuick3.i1;
                                    mainImageView4.getClass();
                                    ?? obj2 = new Object();
                                    obj2.b = str4;
                                    obj2.f17205c = str5;
                                    obj2.d = str6;
                                    mainImageView4.z = obj2;
                                    mainImageView4.B = bitmap5;
                                    if (MainUtil.f6(bitmap5)) {
                                        mainImageView4.setBitmap(bitmap5);
                                    } else {
                                        mainImageView4.F = true;
                                        mainImageView4.G = 0;
                                        mainImageView4.H = 0;
                                        mainImageView4.I = null;
                                        mainImageView4.h();
                                        mainImageView4.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                                        mainImageView4.setImageResource(R.drawable.outline_error_dark_web_48);
                                        ZoomImageAttacher zoomImageAttacher = mainImageView4.o;
                                        if (zoomImageAttacher != null) {
                                            zoomImageAttacher.r();
                                            mainImageView4.o = null;
                                        }
                                    }
                                    Handler handler2 = mainImageView4.g;
                                    if (handler2 == null) {
                                        return;
                                    }
                                    handler2.post(new Runnable() { // from class: com.mycompany.app.main.image.MainImageView.1
                                        public AnonymousClass1() {
                                        }

                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            MainImageView.this.m();
                                        }
                                    });
                                }
                            }
                        });
                    }
                });
            }
        });
        this.m1.setVisibility(4);
        this.m1.q(this, true, 2, new MainImageView.MainImageListener() { // from class: com.mycompany.app.main.image.MainImageQuick.4
            @Override // com.mycompany.app.main.image.MainImageView.MainImageListener
            public final void d() {
                Handler handler;
                boolean z = PrefMain.j;
                if (!z) {
                    int i3 = MainImageQuick.f2;
                    return;
                }
                MainImageQuick mainImageQuick = MainImageQuick.this;
                if (mainImageQuick.I1) {
                    mainImageQuick.L1 = false;
                    if (z && mainImageQuick.E1 == null && mainImageQuick.k1 != null && (handler = mainImageQuick.O0) != null) {
                        handler.post(new AnonymousClass20());
                        return;
                    }
                    return;
                }
                mainImageQuick.L1 = true;
            }

            @Override // com.mycompany.app.main.image.MainImageView.MainImageListener
            public final void e(Bitmap bitmap) {
            }
        });
        Handler handler = this.O0;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.mycompany.app.main.image.MainImageQuick.5
                @Override // java.lang.Runnable
                public final void run() {
                    final MainImageQuick mainImageQuick = MainImageQuick.this;
                    if (mainImageQuick.k1 != null) {
                        mainImageQuick.q1.setText(R.string.apply);
                        mainImageQuick.D0(false);
                        mainImageQuick.q1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.image.MainImageQuick.6
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                final MainImageQuick mainImageQuick2 = MainImageQuick.this;
                                if (mainImageQuick2.I1) {
                                    MainImageView w0 = mainImageQuick2.w0(mainImageQuick2.J1);
                                    if (w0 != null) {
                                        if (w0.p) {
                                            MainUtil.e8(mainImageQuick2, R.string.wait_retry);
                                            return;
                                        }
                                        if (w0.F) {
                                            MainUtil.e8(mainImageQuick2, R.string.image_fail);
                                            return;
                                        }
                                        if (!mainImageQuick2.M1) {
                                            mainImageQuick2.M1 = true;
                                            mainImageQuick2.s1.m(true);
                                            Handler handler2 = mainImageQuick2.O0;
                                            if (handler2 != null) {
                                                handler2.post(new Runnable() { // from class: com.mycompany.app.main.image.MainImageQuick.31
                                                    @Override // java.lang.Runnable
                                                    public final void run() {
                                                        boolean z;
                                                        MainImageQuick mainImageQuick3 = MainImageQuick.this;
                                                        MainImageView w02 = mainImageQuick3.w0(mainImageQuick3.J1);
                                                        if (w02 != null) {
                                                            Bitmap imageBitmap = w02.getImageBitmap();
                                                            if (MainUtil.f6(imageBitmap)) {
                                                                if (mainImageQuick3.J1) {
                                                                    mainImageQuick3.Z1 = imageBitmap;
                                                                } else {
                                                                    mainImageQuick3.Y1 = imageBitmap;
                                                                }
                                                                z = true;
                                                            } else {
                                                                z = false;
                                                            }
                                                            mainImageQuick3.e2 = z;
                                                            Handler handler3 = mainImageQuick3.O0;
                                                            if (handler3 == null) {
                                                                return;
                                                            }
                                                            handler3.post(new Runnable() { // from class: com.mycompany.app.main.image.MainImageQuick.31.1
                                                                @Override // java.lang.Runnable
                                                                public final void run() {
                                                                    Bitmap bitmap;
                                                                    final MainImageQuick mainImageQuick4 = MainImageQuick.this;
                                                                    boolean z2 = mainImageQuick4.e2;
                                                                    MyCoverView myCoverView2 = mainImageQuick4.s1;
                                                                    if (myCoverView2 != null) {
                                                                        mainImageQuick4.M1 = false;
                                                                        myCoverView2.f(true);
                                                                        if (!z2) {
                                                                            MainUtil.e8(mainImageQuick4, R.string.fail);
                                                                            return;
                                                                        }
                                                                        MainImageView w03 = mainImageQuick4.w0(mainImageQuick4.J1);
                                                                        if (w03 != null) {
                                                                            w03.m();
                                                                            MainImageView x0 = mainImageQuick4.x0(mainImageQuick4.J1);
                                                                            if (x0 != null) {
                                                                                if (mainImageQuick4.J1) {
                                                                                    bitmap = mainImageQuick4.Z1;
                                                                                } else {
                                                                                    bitmap = mainImageQuick4.Y1;
                                                                                }
                                                                                x0.setBitmap(bitmap);
                                                                                if (mainImageQuick4.X1 != mainImageQuick4.J1) {
                                                                                    mainImageQuick4.C0();
                                                                                    mainImageQuick4.E0(false);
                                                                                    return;
                                                                                }
                                                                                if (mainImageQuick4.z1 == null) {
                                                                                    mainImageQuick4.H0(false);
                                                                                }
                                                                                MainImageView x02 = mainImageQuick4.x0(mainImageQuick4.J1);
                                                                                if (x02 != null) {
                                                                                    x02.setVisibility(0);
                                                                                    Handler handler4 = mainImageQuick4.O0;
                                                                                    if (handler4 == null) {
                                                                                        return;
                                                                                    }
                                                                                    handler4.post(new Runnable() { // from class: com.mycompany.app.main.image.MainImageQuick.17
                                                                                        @Override // java.lang.Runnable
                                                                                        public final void run() {
                                                                                            MainImageQuick mainImageQuick5 = MainImageQuick.this;
                                                                                            MainImageView w04 = mainImageQuick5.w0(mainImageQuick5.J1);
                                                                                            if (w04 != null) {
                                                                                                w04.setVisibility(4);
                                                                                                mainImageQuick5.E0(false);
                                                                                                Handler handler5 = mainImageQuick5.O0;
                                                                                                if (handler5 == null) {
                                                                                                    return;
                                                                                                }
                                                                                                handler5.post(new Runnable() { // from class: com.mycompany.app.main.image.MainImageQuick.17.1
                                                                                                    @Override // java.lang.Runnable
                                                                                                    public final void run() {
                                                                                                        AnonymousClass17 anonymousClass17 = AnonymousClass17.this;
                                                                                                        MySizeFrame mySizeFrame = MainImageQuick.this.k1;
                                                                                                        if (mySizeFrame == null) {
                                                                                                            return;
                                                                                                        }
                                                                                                        TransitionManager.beginDelayedTransition(mySizeFrame);
                                                                                                        MainImageQuick.this.C0();
                                                                                                    }
                                                                                                });
                                                                                            }
                                                                                        }
                                                                                    });
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            });
                                                        }
                                                    }
                                                });
                                                return;
                                            }
                                            return;
                                        }
                                        return;
                                    }
                                    return;
                                }
                                if (mainImageQuick2.P1 == null && mainImageQuick2.Q1 == null) {
                                    mainImageQuick2.z0();
                                    MainImageView mainImageView4 = mainImageQuick2.v1;
                                    if (mainImageView4 != null) {
                                        if (mainImageView4.p && mainImageQuick2.y1.p) {
                                            MainUtil.e8(mainImageQuick2, R.string.wait_retry);
                                            return;
                                        }
                                        mainImageQuick2.V1 = true;
                                        MainApp.K1 = true;
                                        MyDialogBottom myDialogBottom = new MyDialogBottom(mainImageQuick2);
                                        mainImageQuick2.Q1 = myDialogBottom;
                                        myDialogBottom.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.main.image.MainImageQuick.26
                                            @Override // android.content.DialogInterface.OnDismissListener
                                            public final void onDismiss(DialogInterface dialogInterface) {
                                                MainImageQuick mainImageQuick3 = MainImageQuick.this;
                                                LinearLayout linearLayout2 = mainImageQuick3.p1;
                                                if (linearLayout2 == null) {
                                                    return;
                                                }
                                                linearLayout2.setVisibility(0);
                                                mainImageQuick3.z0();
                                            }
                                        });
                                        Handler handler3 = mainImageQuick2.O0;
                                        if (handler3 == null) {
                                            return;
                                        }
                                        handler3.post(new Runnable() { // from class: com.mycompany.app.main.image.MainImageQuick.27
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                Context context;
                                                final MainImageQuick mainImageQuick3 = MainImageQuick.this;
                                                if (mainImageQuick3.Q1 != null && (context = mainImageQuick3.f1) != null) {
                                                    MyDialogLinear q = a.q(context, 1);
                                                    MyRecyclerView u = a.u(context, true, false);
                                                    LinearLayout.LayoutParams layoutParams8 = new LinearLayout.LayoutParams(-1, 0);
                                                    layoutParams8.weight = 1.0f;
                                                    q.addView(u, layoutParams8);
                                                    mainImageQuick3.R1 = q;
                                                    mainImageQuick3.S1 = u;
                                                    Handler handler4 = mainImageQuick3.O0;
                                                    if (handler4 == null) {
                                                        return;
                                                    }
                                                    handler4.post(new Runnable() { // from class: com.mycompany.app.main.image.MainImageQuick.28
                                                        @Override // java.lang.Runnable
                                                        public final void run() {
                                                            final MainImageQuick mainImageQuick4 = MainImageQuick.this;
                                                            if (mainImageQuick4.R1 != null && mainImageQuick4.Q1 != null) {
                                                                ArrayList arrayList = new ArrayList();
                                                                arrayList.add(new SettingListAdapter.SettingItem(0, R.string.original_size, 0, R.string.memory_warning_1, 0));
                                                                MyManagerLinear t = a.t(arrayList, new SettingListAdapter.SettingItem(1, R.string.reduced_size, (String) null, 0), 1);
                                                                mainImageQuick4.T1 = new SettingListAdapter(arrayList, true, t, new SettingListAdapter.SettingListener() { // from class: com.mycompany.app.main.image.MainImageQuick.29
                                                                    @Override // com.mycompany.app.setting.SettingListAdapter.SettingListener
                                                                    public final void a(SettingListAdapter.ViewHolder viewHolder, int i3, boolean z, int i4) {
                                                                        boolean z2;
                                                                        int i5 = MainImageQuick.f2;
                                                                        final MainImageQuick mainImageQuick5 = MainImageQuick.this;
                                                                        mainImageQuick5.z0();
                                                                        if (i3 == 1) {
                                                                            z2 = true;
                                                                        } else {
                                                                            z2 = false;
                                                                        }
                                                                        mainImageQuick5.U1 = z2;
                                                                        MyCoverView myCoverView2 = mainImageQuick5.s1;
                                                                        if (myCoverView2 == null || mainImageQuick5.M1) {
                                                                            return;
                                                                        }
                                                                        mainImageQuick5.M1 = true;
                                                                        myCoverView2.m(true);
                                                                        mainImageQuick5.m0(new Runnable() { // from class: com.mycompany.app.main.image.MainImageQuick.19
                                                                            @Override // java.lang.Runnable
                                                                            public final void run() {
                                                                                MainImageQuick mainImageQuick6 = MainImageQuick.this;
                                                                                boolean v0 = MainImageQuick.v0(mainImageQuick6, false);
                                                                                boolean v02 = MainImageQuick.v0(mainImageQuick6, true);
                                                                                if (!v0 && !v02) {
                                                                                    Handler handler5 = mainImageQuick6.O0;
                                                                                    if (handler5 != null) {
                                                                                        handler5.post(new Runnable() { // from class: com.mycompany.app.main.image.MainImageQuick.19.1
                                                                                            @Override // java.lang.Runnable
                                                                                            public final void run() {
                                                                                                MainImageQuick mainImageQuick7 = MainImageQuick.this;
                                                                                                MyCoverView myCoverView3 = mainImageQuick7.s1;
                                                                                                if (myCoverView3 == null) {
                                                                                                    return;
                                                                                                }
                                                                                                mainImageQuick7.M1 = false;
                                                                                                myCoverView3.f(true);
                                                                                                MainUtil.e8(mainImageQuick7, R.string.fail);
                                                                                            }
                                                                                        });
                                                                                        return;
                                                                                    }
                                                                                    return;
                                                                                }
                                                                                if (!v0) {
                                                                                    MainUtil.u(MainUtil.W(mainImageQuick6.f1, PrefSync.k, true), MainUtil.W(mainImageQuick6.f1, PrefSync.k, false));
                                                                                } else if (!v02) {
                                                                                    MainUtil.u(MainUtil.W(mainImageQuick6.f1, PrefSync.k, false), MainUtil.W(mainImageQuick6.f1, PrefSync.k, true));
                                                                                }
                                                                                Handler handler6 = mainImageQuick6.O0;
                                                                                if (handler6 == null) {
                                                                                    return;
                                                                                }
                                                                                handler6.post(new Runnable() { // from class: com.mycompany.app.main.image.MainImageQuick.19.2
                                                                                    @Override // java.lang.Runnable
                                                                                    public final void run() {
                                                                                        MainImageQuick mainImageQuick7 = MainImageQuick.this;
                                                                                        MyCoverView myCoverView3 = mainImageQuick7.s1;
                                                                                        if (myCoverView3 == null) {
                                                                                            return;
                                                                                        }
                                                                                        mainImageQuick7.M1 = false;
                                                                                        myCoverView3.f(true);
                                                                                        MainUtil.e8(mainImageQuick7, R.string.setted);
                                                                                        String W = MainUtil.W(mainImageQuick7.f1, PrefSync.k, false);
                                                                                        Intent intent = new Intent();
                                                                                        intent.putExtra("EXTRA_PATH", W);
                                                                                        mainImageQuick7.setResult(-1, intent);
                                                                                        mainImageQuick7.finish();
                                                                                    }
                                                                                });
                                                                            }
                                                                        });
                                                                    }
                                                                });
                                                                mainImageQuick4.S1.setLayoutManager(t);
                                                                mainImageQuick4.S1.setAdapter(mainImageQuick4.T1);
                                                                mainImageQuick4.p1.setVisibility(4);
                                                                mainImageQuick4.Q1.g(mainImageQuick4.R1, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.main.image.MainImageQuick.30
                                                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                                                    public final void a(View view2) {
                                                                        MyDialogBottom myDialogBottom2;
                                                                        MainImageQuick mainImageQuick5 = MainImageQuick.this;
                                                                        if (mainImageQuick5.R1 != null && (myDialogBottom2 = mainImageQuick5.Q1) != null) {
                                                                            mainImageQuick5.R1 = null;
                                                                            mainImageQuick5.S1 = null;
                                                                            myDialogBottom2.show();
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
                            }
                        });
                        mainImageQuick.r1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.image.MainImageQuick.7
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                MainImageQuick mainImageQuick2 = MainImageQuick.this;
                                if (mainImageQuick2.I1) {
                                    mainImageQuick2.C0();
                                    mainImageQuick2.E0(false);
                                } else {
                                    mainImageQuick2.finish();
                                }
                            }
                        });
                        Handler handler2 = mainImageQuick.O0;
                        if (handler2 == null) {
                            return;
                        }
                        handler2.post(new Runnable() { // from class: com.mycompany.app.main.image.MainImageQuick.8
                            @Override // java.lang.Runnable
                            public final void run() {
                                int i3 = MainImageQuick.f2;
                                final MainImageQuick mainImageQuick2 = MainImageQuick.this;
                                OrientationEventListener orientationEventListener = new OrientationEventListener(mainImageQuick2) { // from class: com.mycompany.app.main.image.MainImageQuick.9
                                    @Override // android.view.OrientationEventListener
                                    public final void onOrientationChanged(int i4) {
                                        MainImageQuick mainImageQuick3 = MainImageQuick.this;
                                        if (i4 < 315 && i4 >= 45) {
                                            if (i4 >= 45 && i4 < 135) {
                                                mainImageQuick3.X1 = true;
                                                return;
                                            }
                                            if (i4 >= 135 && i4 < 225) {
                                                mainImageQuick3.X1 = false;
                                                return;
                                            } else {
                                                if (i4 >= 225 && i4 < 315) {
                                                    mainImageQuick3.X1 = true;
                                                    return;
                                                }
                                                return;
                                            }
                                        }
                                        mainImageQuick3.X1 = false;
                                    }
                                };
                                mainImageQuick2.W1 = orientationEventListener;
                                orientationEventListener.enable();
                                try {
                                    if (4 == mainImageQuick2.getRequestedOrientation()) {
                                        return;
                                    }
                                } catch (IllegalStateException | Exception unused) {
                                }
                                MainUtil.B7(mainImageQuick2, 4);
                            }
                        });
                    }
                }
            });
        }
        setContentView(this.k1);
        initMainScreenOn(this.k1);
    }

    @Override // com.mycompany.app.main.MainActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        OrientationEventListener orientationEventListener = this.W1;
        if (orientationEventListener != null) {
            orientationEventListener.disable();
            this.W1 = null;
        }
        MainUtil.w7(this);
        MySizeFrame mySizeFrame = this.k1;
        if (mySizeFrame != null) {
            mySizeFrame.f18961c = null;
            this.k1 = null;
        }
        MainImageView mainImageView = this.l1;
        if (mainImageView != null) {
            mainImageView.l();
            this.l1 = null;
        }
        MainImageView mainImageView2 = this.m1;
        if (mainImageView2 != null) {
            mainImageView2.l();
            this.m1 = null;
        }
        MyFadeFrame myFadeFrame = this.n1;
        if (myFadeFrame != null) {
            myFadeFrame.f();
            this.n1 = null;
        }
        MyAreaView myAreaView = this.o1;
        if (myAreaView != null) {
            myAreaView.c();
            this.o1 = null;
        }
        MyLineText myLineText = this.r1;
        if (myLineText != null) {
            myLineText.u();
            this.r1 = null;
        }
        MyCoverView myCoverView = this.s1;
        if (myCoverView != null) {
            myCoverView.i();
            this.s1 = null;
        }
        MyFadeFrame myFadeFrame2 = this.E1;
        if (myFadeFrame2 != null) {
            myFadeFrame2.f();
            this.E1 = null;
        }
        this.f1 = null;
        this.g1 = null;
        this.h1 = null;
        this.i1 = null;
        this.p1 = null;
        this.q1 = null;
        this.t1 = null;
        this.u1 = null;
        this.v1 = null;
        this.w1 = null;
        this.x1 = null;
        this.y1 = null;
        this.Y1 = null;
        this.Z1 = null;
    }

    @Override // com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        super.onPause();
        if (this.V1) {
            MainUtil.K7(this, false);
        }
        if (isFinishing()) {
            MyPopupMenu myPopupMenu = this.N1;
            if (myPopupMenu != null) {
                this.Z0 = null;
                myPopupMenu.a();
                this.N1 = null;
            }
            A0();
            z0();
            MainApp.T1 = null;
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public final void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        if (i == 31 && iArr != null && iArr.length > 0 && iArr[0] == 0) {
            this.O1 = MainUtil.C4(14, this, false);
        }
    }

    @Override // com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        if (this.V1) {
            MainUtil.K7(this, true);
        }
        Handler handler = this.O0;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.main.image.MainImageQuick.1
            @Override // java.lang.Runnable
            public final void run() {
                MainImageQuick mainImageQuick = MainImageQuick.this;
                if (mainImageQuick.O0 == null) {
                    return;
                }
                MainUtil.g7(mainImageQuick.getWindow(), PrefPdf.o, PrefPdf.n);
            }
        });
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        r0();
    }

    public final MainImageView w0(boolean z) {
        if (z) {
            return this.m1;
        }
        return this.l1;
    }

    public final MainImageView x0(boolean z) {
        if (z) {
            return this.y1;
        }
        return this.v1;
    }

    public final Bitmap y0(boolean z) {
        Bitmap bitmap;
        if (this.l1 == null) {
            return null;
        }
        boolean z2 = this.U1;
        if (z) {
            if (!MainUtil.f6(this.Z1)) {
                MainImageView mainImageView = this.l1;
                this.Z1 = MainUtil.n0(mainImageView, mainImageView.C, z);
                z2 = false;
            }
            bitmap = this.Z1;
        } else {
            if (!MainUtil.f6(this.Y1)) {
                MainImageView mainImageView2 = this.m1;
                this.Y1 = MainUtil.n0(mainImageView2, mainImageView2.C, z);
                z2 = false;
            }
            bitmap = this.Y1;
        }
        if (z2) {
            try {
                Bitmap k3 = MainUtil.k3(bitmap.getWidth() / 2, bitmap.getHeight() / 2, bitmap);
                if (MainUtil.f6(k3)) {
                    return k3;
                }
            } catch (Exception unused) {
            }
        }
        return bitmap;
    }

    public final void z0() {
        SettingListAdapter settingListAdapter = this.T1;
        if (settingListAdapter != null) {
            settingListAdapter.z();
            this.T1 = null;
        }
        MyDialogBottom myDialogBottom = this.Q1;
        if (myDialogBottom != null) {
            myDialogBottom.dismiss();
            this.Q1 = null;
            this.R1 = null;
            this.S1 = null;
            this.V1 = false;
            MainUtil.K7(this, false);
        }
    }
}
