package com.mycompany.app.setting;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Outline;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.SeekBar;
import androidx.appcompat.widget.AppCompatTextView;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.dialog.DialogSaveConfirm;
import com.mycompany.app.dialog.DialogSeekAudio;
import com.mycompany.app.dialog.DialogSetFull;
import com.mycompany.app.dialog.DialogSetMsg;
import com.mycompany.app.dialog.a;
import com.mycompany.app.image.ImageSizeListener;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefEditor;
import com.mycompany.app.pref.PrefSub;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.video.VideoSubLayout2;
import com.mycompany.app.view.GlideApp;
import com.mycompany.app.view.GlideRequests;
import com.mycompany.app.view.MyButtonCheck;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyFadeFrame;
import com.mycompany.app.view.MyHeaderView;
import com.mycompany.app.view.MyLineFrame;
import com.mycompany.app.view.MyMainRelative;
import com.mycompany.app.view.MyPaletteView;
import com.mycompany.app.view.MyRoundImage;
import com.mycompany.app.view.MyRoundItem;
import com.mycompany.app.view.MySwitchView;
import com.mycompany.app.view.MyTextSub;

/* loaded from: classes3.dex */
public class SettingVideoSub extends CastActivity {
    public static final /* synthetic */ int W2 = 0;
    public boolean A2;
    public int B2;
    public MyMainRelative C1;
    public int C2;
    public MyButtonImage D1;
    public float D2;
    public AppCompatTextView E1;
    public boolean E2;
    public MyButtonImage F1;
    public boolean F2;
    public MyButtonImage G1;
    public boolean G2;
    public MyRoundItem H1;
    public boolean H2;
    public MyRoundImage I1;
    public boolean I2;
    public VideoSubLayout2 J1;
    public boolean J2;
    public View K1;
    public boolean K2;
    public ScrollView L1;
    public boolean L2;
    public LinearLayout M1;
    public DialogSetMsg M2;
    public FrameLayout N1;
    public DialogSaveConfirm N2;
    public LinearLayout O1;
    public boolean O2;
    public AppCompatTextView P1;
    public GlideRequests P2;
    public AppCompatTextView Q1;
    public Drawable Q2;
    public SeekBar R1;
    public float R2;
    public MyButtonImage S1;
    public MyButtonImage T1;
    public LinearLayout U1;
    public AppCompatTextView V1;
    public AppCompatTextView W1;
    public SeekBar X1;
    public MyButtonImage Y1;
    public MyButtonImage Z1;
    public AppCompatTextView a2;
    public AppCompatTextView b2;
    public SeekBar c2;
    public MyButtonImage d2;
    public MyButtonImage e2;
    public LinearLayout f2;
    public MyButtonCheck[] g2;
    public MyPaletteView h2;
    public LinearLayout i2;
    public MyLineFrame j2;
    public AppCompatTextView k2;
    public MySwitchView l2;
    public AppCompatTextView m2;
    public AppCompatTextView n2;
    public SeekBar o2;
    public MyButtonImage p2;
    public MyButtonImage q2;
    public LinearLayout r2;
    public MyButtonCheck[] s2;
    public MyPaletteView t2;
    public int u2;
    public int v2;
    public int w2;
    public int x2;
    public float y2;
    public int z2;
    public final Runnable S2 = new Runnable() { // from class: com.mycompany.app.setting.SettingVideoSub.31
        @Override // java.lang.Runnable
        public final void run() {
            SettingVideoSub settingVideoSub = SettingVideoSub.this;
            SeekBar seekBar = settingVideoSub.R1;
            if (seekBar != null) {
                settingVideoSub.F2 = false;
                int progress = seekBar.getProgress() + 10;
                if (settingVideoSub.u2 != progress) {
                    SettingVideoSub.G0(settingVideoSub, progress);
                }
            }
        }
    };
    public final Runnable T2 = new Runnable() { // from class: com.mycompany.app.setting.SettingVideoSub.32
        @Override // java.lang.Runnable
        public final void run() {
            SettingVideoSub settingVideoSub = SettingVideoSub.this;
            SeekBar seekBar = settingVideoSub.X1;
            if (seekBar != null) {
                settingVideoSub.H2 = false;
                int progress = seekBar.getProgress();
                if (settingVideoSub.v2 != progress) {
                    SettingVideoSub.F0(settingVideoSub, progress);
                }
            }
        }
    };
    public final Runnable U2 = new Runnable() { // from class: com.mycompany.app.setting.SettingVideoSub.33
        @Override // java.lang.Runnable
        public final void run() {
            SettingVideoSub settingVideoSub = SettingVideoSub.this;
            SeekBar seekBar = settingVideoSub.c2;
            if (seekBar != null) {
                settingVideoSub.J2 = false;
                int progress = seekBar.getProgress();
                if (settingVideoSub.w2 != progress) {
                    SettingVideoSub.E0(settingVideoSub, progress);
                }
            }
        }
    };
    public final Runnable V2 = new Runnable() { // from class: com.mycompany.app.setting.SettingVideoSub.34
        @Override // java.lang.Runnable
        public final void run() {
            SettingVideoSub settingVideoSub = SettingVideoSub.this;
            SeekBar seekBar = settingVideoSub.o2;
            if (seekBar != null) {
                settingVideoSub.L2 = false;
                int progress = seekBar.getProgress();
                if (settingVideoSub.B2 != progress) {
                    SettingVideoSub.D0(settingVideoSub, progress);
                }
            }
        }
    };

    /* renamed from: com.mycompany.app.setting.SettingVideoSub$25, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass25 implements Runnable {

        /* renamed from: com.mycompany.app.setting.SettingVideoSub$25$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 implements Runnable {
            public AnonymousClass1() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                SettingVideoSub settingVideoSub = SettingVideoSub.this;
                if (settingVideoSub.C1 == null) {
                    return;
                }
                settingVideoSub.L0();
                settingVideoSub.C1.post(new Runnable() { // from class: com.mycompany.app.setting.SettingVideoSub.25.1.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        AnonymousClass25 anonymousClass25 = AnonymousClass25.this;
                        final SettingVideoSub settingVideoSub2 = SettingVideoSub.this;
                        if (settingVideoSub2.C1 == null) {
                            return;
                        }
                        final int length = MainConst.q.length;
                        MyButtonCheck[] H0 = settingVideoSub2.H0(settingVideoSub2.f2, length);
                        settingVideoSub2.g2 = H0;
                        if (H0 != null && H0.length == length) {
                            for (final int i = 0; i < length; i++) {
                                MyButtonCheck myButtonCheck = settingVideoSub2.g2[i];
                                int[] iArr = MainConst.q;
                                int i2 = iArr[i];
                                myButtonCheck.m(i2, i2);
                                settingVideoSub2.g2[i].p(R.drawable.outline_check_white_24, 0);
                                settingVideoSub2.g2[i].n(-12632257, MainApp.n1);
                                settingVideoSub2.g2[i].setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingVideoSub.27
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        SettingVideoSub settingVideoSub3 = SettingVideoSub.this;
                                        if (settingVideoSub3.h2 == null) {
                                            return;
                                        }
                                        int i3 = i;
                                        if (i3 < 0) {
                                            i3 = 0;
                                        } else {
                                            int i4 = length;
                                            if (i3 > i4 - 1) {
                                                i3 = i4 - 1;
                                            }
                                        }
                                        settingVideoSub3.x2 = MainConst.q[i3];
                                        settingVideoSub3.y2 = MainConst.p[i3];
                                        settingVideoSub3.O0();
                                        settingVideoSub3.h2.b(settingVideoSub3.y2, settingVideoSub3.x2);
                                    }
                                });
                                if (settingVideoSub2.x2 == iArr[i]) {
                                    settingVideoSub2.g2[i].q(true, false);
                                } else {
                                    settingVideoSub2.g2[i].q(false, false);
                                }
                            }
                        }
                        SettingVideoSub.this.C1.post(new Runnable() { // from class: com.mycompany.app.setting.SettingVideoSub.25.1.1.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                final SettingVideoSub settingVideoSub3 = SettingVideoSub.this;
                                if (settingVideoSub3.C1 != null) {
                                    final int length2 = MainConst.q.length;
                                    MyButtonCheck[] H02 = settingVideoSub3.H0(settingVideoSub3.r2, length2);
                                    settingVideoSub3.s2 = H02;
                                    if (H02 != null && H02.length == length2) {
                                        for (final int i3 = 0; i3 < length2; i3++) {
                                            MyButtonCheck myButtonCheck2 = settingVideoSub3.s2[i3];
                                            int[] iArr2 = MainConst.q;
                                            int i4 = iArr2[i3];
                                            myButtonCheck2.m(i4, i4);
                                            settingVideoSub3.s2[i3].p(R.drawable.outline_check_white_24, 0);
                                            settingVideoSub3.s2[i3].n(-12632257, MainApp.n1);
                                            settingVideoSub3.s2[i3].setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingVideoSub.28
                                                @Override // android.view.View.OnClickListener
                                                public final void onClick(View view) {
                                                    SettingVideoSub settingVideoSub4 = SettingVideoSub.this;
                                                    if (settingVideoSub4.t2 == null) {
                                                        return;
                                                    }
                                                    int i5 = i3;
                                                    if (i5 < 0) {
                                                        i5 = 0;
                                                    } else {
                                                        int i6 = length2;
                                                        if (i5 > i6 - 1) {
                                                            i5 = i6 - 1;
                                                        }
                                                    }
                                                    settingVideoSub4.C2 = MainConst.q[i5];
                                                    settingVideoSub4.D2 = MainConst.p[i5];
                                                    settingVideoSub4.N0();
                                                    settingVideoSub4.t2.b(settingVideoSub4.D2, settingVideoSub4.C2);
                                                }
                                            });
                                            if (settingVideoSub3.C2 == iArr2[i3]) {
                                                settingVideoSub3.s2[i3].q(true, false);
                                            } else {
                                                settingVideoSub3.s2[i3].q(false, false);
                                            }
                                        }
                                    }
                                }
                            }
                        });
                    }
                });
            }
        }

        public AnonymousClass25() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            SettingVideoSub settingVideoSub;
            SettingVideoSub settingVideoSub2 = SettingVideoSub.this;
            VideoSubLayout2 videoSubLayout2 = settingVideoSub2.J1;
            if (videoSubLayout2 != null) {
                if (videoSubLayout2.y == null && (settingVideoSub = videoSubLayout2.x) != null) {
                    FrameLayout frameLayout = new FrameLayout(settingVideoSub);
                    AppCompatTextView appCompatTextView = new AppCompatTextView(settingVideoSub, null);
                    appCompatTextView.setGravity(17);
                    appCompatTextView.setTextColor(-1);
                    appCompatTextView.setLineSpacing((int) MainUtil.G(settingVideoSub, 5.0f), 1.0f);
                    appCompatTextView.setVisibility(8);
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
                    layoutParams.gravity = 17;
                    frameLayout.addView(appCompatTextView, layoutParams);
                    MyTextSub myTextSub = new MyTextSub(settingVideoSub);
                    myTextSub.setGravity(17);
                    myTextSub.setTextColor(-1);
                    myTextSub.setLineSpacing((int) MainUtil.G(settingVideoSub, 5.0f), 1.0f);
                    myTextSub.setVisibility(8);
                    FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -2);
                    layoutParams2.gravity = 17;
                    frameLayout.addView(myTextSub, layoutParams2);
                    AppCompatTextView appCompatTextView2 = new AppCompatTextView(settingVideoSub, null);
                    appCompatTextView2.setGravity(17);
                    appCompatTextView2.setTextColor(-1);
                    appCompatTextView2.setLineSpacing((int) MainUtil.G(settingVideoSub, 5.0f), 1.0f);
                    FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-2, -2);
                    layoutParams3.gravity = 17;
                    frameLayout.addView(appCompatTextView2, layoutParams3);
                    videoSubLayout2.addView(frameLayout, -1, -2);
                    videoSubLayout2.y = appCompatTextView;
                    videoSubLayout2.z = myTextSub;
                    videoSubLayout2.A = appCompatTextView2;
                    myTextSub.setOutlineType(2);
                }
                MyMainRelative myMainRelative = settingVideoSub2.C1;
                if (myMainRelative == null) {
                    return;
                }
                myMainRelative.post(new AnonymousClass1());
            }
        }
    }

    /* renamed from: com.mycompany.app.setting.SettingVideoSub$26, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass26 extends ViewOutlineProvider {
        @Override // android.view.ViewOutlineProvider
        public final void getOutline(View view, Outline outline) {
            if (view != null && outline != null) {
                outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), MainApp.m1);
            }
        }
    }

    public static void D0(SettingVideoSub settingVideoSub, int i) {
        Runnable runnable = settingVideoSub.V2;
        AppCompatTextView appCompatTextView = settingVideoSub.n2;
        if (appCompatTextView != null) {
            if (i < 0) {
                i = 0;
            } else if (i > 90) {
                i = 90;
            }
            if (!settingVideoSub.L2 && settingVideoSub.B2 != i) {
                settingVideoSub.L2 = true;
                settingVideoSub.B2 = i;
                a.t(new StringBuilder(), settingVideoSub.B2, "%", appCompatTextView);
                VideoSubLayout2 videoSubLayout2 = settingVideoSub.J1;
                int i2 = settingVideoSub.C2;
                int i3 = settingVideoSub.B2;
                AppCompatTextView appCompatTextView2 = videoSubLayout2.A;
                if (appCompatTextView2 != null) {
                    CharSequence text = appCompatTextView2.getText();
                    if (!TextUtils.isEmpty(text)) {
                        videoSubLayout2.j(i2, i3, text.toString());
                    }
                }
                if (settingVideoSub.K2) {
                    settingVideoSub.K2 = false;
                    settingVideoSub.L2 = false;
                } else {
                    settingVideoSub.n2.removeCallbacks(runnable);
                    settingVideoSub.n2.postDelayed(runnable, 100L);
                }
            }
        }
    }

    public static void E0(SettingVideoSub settingVideoSub, int i) {
        Runnable runnable = settingVideoSub.U2;
        if (settingVideoSub.b2 != null) {
            if (i < 0) {
                i = 0;
            } else if (i > 90) {
                i = 90;
            }
            if (!settingVideoSub.J2 && settingVideoSub.w2 != i) {
                settingVideoSub.J2 = true;
                settingVideoSub.w2 = i;
                settingVideoSub.z2 = PrefEditor.r(settingVideoSub.x2, i);
                a.t(new StringBuilder(), settingVideoSub.w2, "%", settingVideoSub.b2);
                settingVideoSub.J1.setTextLineColor(settingVideoSub.z2);
                if (settingVideoSub.I2) {
                    settingVideoSub.I2 = false;
                    settingVideoSub.J2 = false;
                } else {
                    settingVideoSub.b2.removeCallbacks(runnable);
                    settingVideoSub.b2.postDelayed(runnable, 100L);
                }
            }
        }
    }

    public static void F0(SettingVideoSub settingVideoSub, int i) {
        Runnable runnable = settingVideoSub.T2;
        AppCompatTextView appCompatTextView = settingVideoSub.W1;
        if (appCompatTextView != null) {
            if (i < 0) {
                i = 0;
            } else if (i > 20) {
                i = 20;
            }
            if (!settingVideoSub.H2 && settingVideoSub.v2 != i) {
                settingVideoSub.H2 = true;
                settingVideoSub.v2 = i;
                com.google.android.gms.internal.mlkit_vision_text_common.a.B(new StringBuilder(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), settingVideoSub.v2, appCompatTextView);
                settingVideoSub.J1.setTextLineSize(settingVideoSub.v2);
                if (settingVideoSub.G2) {
                    settingVideoSub.G2 = false;
                    settingVideoSub.H2 = false;
                } else {
                    settingVideoSub.W1.removeCallbacks(runnable);
                    settingVideoSub.W1.postDelayed(runnable, 100L);
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x000f, code lost:
    
        if (r4 > 50) goto L7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void G0(com.mycompany.app.setting.SettingVideoSub r3, int r4) {
        /*
            java.lang.Runnable r0 = r3.S2
            androidx.appcompat.widget.AppCompatTextView r1 = r3.Q1
            if (r1 != 0) goto L7
            goto L4a
        L7:
            r2 = 10
            if (r4 >= r2) goto Ld
        Lb:
            r4 = r2
            goto L12
        Ld:
            r2 = 50
            if (r4 <= r2) goto L12
            goto Lb
        L12:
            boolean r2 = r3.F2
            if (r2 != 0) goto L4a
            int r2 = r3.u2
            if (r2 != r4) goto L1b
            goto L4a
        L1b:
            r2 = 1
            r3.F2 = r2
            r3.u2 = r4
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            java.lang.String r2 = ""
            r4.<init>(r2)
            int r2 = r3.u2
            com.google.android.gms.internal.mlkit_vision_text_common.a.B(r4, r2, r1)
            com.mycompany.app.video.VideoSubLayout2 r4 = r3.J1
            int r1 = r3.u2
            float r1 = (float) r1
            r4.setTextSize(r1)
            boolean r4 = r3.E2
            if (r4 == 0) goto L3e
            r4 = 0
            r3.E2 = r4
            r3.F2 = r4
            return
        L3e:
            androidx.appcompat.widget.AppCompatTextView r4 = r3.Q1
            r4.removeCallbacks(r0)
            androidx.appcompat.widget.AppCompatTextView r3 = r3.Q1
            r1 = 100
            r3.postDelayed(r0, r1)
        L4a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.setting.SettingVideoSub.G0(com.mycompany.app.setting.SettingVideoSub, int):void");
    }

    public final MyButtonCheck[] H0(LinearLayout linearLayout, int i) {
        Context context;
        if (linearLayout == null || (context = this.f1) == null) {
            return null;
        }
        MyButtonCheck[] myButtonCheckArr = new MyButtonCheck[i];
        for (int i2 = 0; i2 < i; i2++) {
            MyButtonCheck myButtonCheck = new MyButtonCheck(context);
            myButtonCheck.setBgNorRadius(MainApp.E1);
            linearLayout.addView(myButtonCheck, MainApp.f1, -1);
            myButtonCheckArr[i2] = myButtonCheck;
            if (i2 == i - 1) {
                break;
            }
            View view = new View(context);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, 0);
            layoutParams.weight = 1.0f;
            linearLayout.addView(view, layoutParams);
        }
        return myButtonCheckArr;
    }

    public final void I0() {
        DialogSetMsg dialogSetMsg = this.M2;
        if (dialogSetMsg != null) {
            dialogSetMsg.dismiss();
            this.M2 = null;
        }
    }

    public final void J0() {
        DialogSaveConfirm dialogSaveConfirm = this.N2;
        if (dialogSaveConfirm != null) {
            dialogSaveConfirm.dismiss();
            this.N2 = null;
        }
    }

    public final boolean K0() {
        if (this.u2 == PrefSub.n && this.v2 == PrefSub.o && this.w2 == PrefSub.p && this.x2 == PrefSub.q && this.y2 == PrefSub.r && this.z2 == PrefSub.s && this.A2 == PrefSub.t && this.B2 == PrefSub.u && this.C2 == PrefSub.v && this.D2 == PrefSub.w) {
            return false;
        }
        return true;
    }

    public final void L0() {
        int i;
        VideoSubLayout2 videoSubLayout2 = this.J1;
        if (videoSubLayout2 == null) {
            return;
        }
        String string = this.f1.getString(R.string.preview);
        float f = this.u2;
        int i2 = this.v2;
        int i3 = this.z2;
        boolean z = this.A2;
        int i4 = this.C2;
        int i5 = this.B2;
        if (videoSubLayout2.A != null) {
            if (TextUtils.isEmpty(string)) {
                videoSubLayout2.y.setText((CharSequence) null);
                videoSubLayout2.z.setText((CharSequence) null);
                videoSubLayout2.A.setText((CharSequence) null);
            } else {
                videoSubLayout2.y.setTextSize(f);
                videoSubLayout2.z.setTextSize(f);
                videoSubLayout2.A.setTextSize(f);
                videoSubLayout2.j(i4, i5, string);
                AppCompatTextView appCompatTextView = videoSubLayout2.y;
                int i6 = 8;
                if (z) {
                    i = 0;
                } else {
                    i = 8;
                }
                appCompatTextView.setVisibility(i);
                videoSubLayout2.z.setText(string);
                videoSubLayout2.z.q(i2, i3);
                MyTextSub myTextSub = videoSubLayout2.z;
                if (i2 > 0) {
                    i6 = 0;
                }
                myTextSub.setVisibility(i6);
                videoSubLayout2.A.setText(string);
            }
        }
        com.google.android.gms.internal.mlkit_vision_text_common.a.B(new StringBuilder(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), this.u2, this.Q1);
        com.google.android.gms.internal.mlkit_vision_text_common.a.B(new StringBuilder(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), this.v2, this.W1);
        a.t(new StringBuilder(), this.w2, "%", this.b2);
        a.t(new StringBuilder(), this.B2, "%", this.n2);
        this.R1.setProgress(this.u2 - 10);
        this.X1.setProgress(this.v2);
        this.c2.setProgress(this.w2);
        this.o2.setProgress(this.B2);
        this.l2.b(this.A2, false);
        O0();
        N0();
        this.h2.b(this.y2, this.x2);
        this.t2.b(this.D2, this.C2);
    }

    public final void M0(boolean z) {
        if (this.O2) {
            return;
        }
        this.O2 = true;
        if (K0()) {
            PrefSub.n = this.u2;
            PrefSub.o = this.v2;
            int i = this.w2;
            PrefSub.p = i;
            int i2 = this.x2;
            PrefSub.q = i2;
            PrefSub.r = this.y2;
            PrefSub.s = this.z2;
            PrefSub.t = this.A2;
            PrefSub.u = this.B2;
            PrefSub.v = this.C2;
            PrefSub.w = this.D2;
            PrefSub.s = PrefEditor.r(i2, i);
            PrefSub r = PrefSub.r(this.f1);
            if (z) {
                r.n(PrefSub.n, "mTextSize");
                r.n(PrefSub.o, "mLineSize");
                r.n(PrefSub.p, "mLineAlpha");
                r.n(PrefSub.q, "mLineColor");
                r.m("mLinePos", PrefSub.r);
                r.l("mBackShow", PrefSub.t);
                r.n(PrefSub.u, "mBackAlpha");
                r.n(PrefSub.v, "mBackColor");
                r.m("mBackPos", PrefSub.w);
            } else {
                r.q("mTextSize");
                r.q("mLineSize");
                r.q("mLineAlpha");
                r.q("mLineColor");
                r.q("mLinePos");
                r.q("mBackShow");
                r.q("mBackAlpha");
                r.q("mBackColor");
                r.q("mBackPos");
            }
            r.a();
        }
        if (z) {
            finish();
        } else {
            this.O2 = false;
        }
    }

    public final void N0() {
        VideoSubLayout2 videoSubLayout2 = this.J1;
        if (videoSubLayout2 != null) {
            int i = this.C2;
            int i2 = this.B2;
            AppCompatTextView appCompatTextView = videoSubLayout2.A;
            if (appCompatTextView != null) {
                CharSequence text = appCompatTextView.getText();
                if (!TextUtils.isEmpty(text)) {
                    videoSubLayout2.j(i, i2, text.toString());
                }
            }
            if (this.s2 != null) {
                int length = MainConst.q.length;
                for (int i3 = 0; i3 < length; i3++) {
                    if (this.C2 == MainConst.q[i3]) {
                        this.s2[i3].q(true, true);
                    } else {
                        this.s2[i3].q(false, true);
                    }
                }
            }
        }
    }

    public final void O0() {
        if (this.J1 != null) {
            int r = PrefEditor.r(this.x2, this.w2);
            this.z2 = r;
            this.J1.setTextLineColor(r);
            if (this.g2 != null) {
                int length = MainConst.q.length;
                for (int i = 0; i < length; i++) {
                    if (this.x2 == MainConst.q[i]) {
                        this.g2[i].q(true, true);
                    } else {
                        this.g2[i].q(false, true);
                    }
                }
            }
        }
    }

    public final void P0() {
        if (this.M2 != null || this.N2 != null) {
            return;
        }
        J0();
        DialogSaveConfirm dialogSaveConfirm = new DialogSaveConfirm(this, new DialogSeekAudio.DialogSeekListener() { // from class: com.mycompany.app.setting.SettingVideoSub.37
            @Override // com.mycompany.app.dialog.DialogSeekAudio.DialogSeekListener
            public final void a(int i) {
                int i2 = SettingVideoSub.W2;
                SettingVideoSub settingVideoSub = SettingVideoSub.this;
                settingVideoSub.J0();
                if (i == 0) {
                    settingVideoSub.M0(true);
                } else {
                    settingVideoSub.finish();
                }
            }
        });
        this.N2 = dialogSaveConfirm;
        dialogSaveConfirm.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingVideoSub.38
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                int i = SettingVideoSub.W2;
                SettingVideoSub.this.J0();
            }
        });
    }

    @Override // com.mycompany.app.main.MainActivity
    public final void l0() {
        if (this.O2) {
            return;
        }
        if (K0()) {
            P0();
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

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v5, types: [com.mycompany.app.video.VideoSubLayout2, android.view.View, com.mycompany.app.view.MyFadeFrame] */
    @Override // com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        int i = PrefSub.n;
        this.u2 = i;
        int i2 = PrefSub.o;
        this.v2 = i2;
        int i3 = PrefSub.p;
        this.w2 = i3;
        this.x2 = PrefSub.q;
        this.y2 = PrefSub.r;
        this.z2 = PrefSub.s;
        this.A2 = PrefSub.t;
        int i4 = PrefSub.u;
        this.B2 = i4;
        this.C2 = PrefSub.v;
        this.D2 = PrefSub.w;
        if (i < 10) {
            this.u2 = 10;
        } else if (i > 50) {
            this.u2 = 50;
        }
        if (i2 < 0) {
            this.v2 = 0;
        } else if (i2 > 20) {
            this.v2 = 20;
        }
        if (i3 < 0) {
            this.w2 = 0;
        } else if (i3 > 90) {
            this.w2 = 90;
        }
        if (i4 < 0) {
            this.B2 = 0;
        } else if (i4 > 90) {
            this.B2 = 90;
        }
        int i5 = R.id.set_icon_reset;
        int i6 = R.id.set_icon_apply;
        int i7 = R.id.set_prev_view;
        int i8 = R.id.set_cast_icon;
        int i9 = R.id.set_cast_ctrl;
        MyMainRelative myMainRelative = new MyMainRelative(this);
        myMainRelative.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        MyHeaderView myHeaderView = new MyHeaderView(this);
        myMainRelative.addView(myHeaderView, -1, MainApp.b1);
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
        appCompatTextView.setText(R.string.sub_setting);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams2.addRule(16, i5);
        layoutParams2.setMarginStart(MainApp.i1);
        myHeaderView.addView(appCompatTextView, layoutParams2);
        int G = (int) MainUtil.G(this, 14.0f);
        MyButtonImage myButtonImage2 = new MyButtonImage(this);
        myButtonImage2.setId(i5);
        myButtonImage2.setPadding(G, G, G, G);
        myButtonImage2.setScaleType(scaleType);
        int i10 = MainApp.g1;
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(i10, i10);
        layoutParams3.addRule(16, i6);
        layoutParams3.topMargin = MainApp.G1;
        myHeaderView.addView(myButtonImage2, layoutParams3);
        MyButtonImage myButtonImage3 = new MyButtonImage(this);
        myButtonImage3.setId(i6);
        myButtonImage3.setPadding(G, G, G, G);
        myButtonImage3.setScaleType(scaleType);
        int i11 = MainApp.g1;
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(i11, i11);
        layoutParams4.addRule(16, i8);
        layoutParams4.topMargin = MainApp.G1;
        myHeaderView.addView(myButtonImage3, layoutParams4);
        FrameLayout frameLayout = new FrameLayout(this);
        frameLayout.setId(i8);
        frameLayout.setVisibility(4);
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-2, MainApp.b1);
        layoutParams5.addRule(21);
        myHeaderView.addView(frameLayout, layoutParams5);
        MyRoundItem myRoundItem = new MyRoundItem(this);
        myRoundItem.d(true, true);
        RelativeLayout.LayoutParams h = androidx.work.impl.workers.a.h(-1, -1, 2, i9);
        h.topMargin = MainApp.b1;
        myMainRelative.addView(myRoundItem, h);
        FrameLayout frameLayout2 = new FrameLayout(this);
        frameLayout2.setId(i7);
        myRoundItem.addView(frameLayout2, -1, -2);
        MyRoundImage myRoundImage = new MyRoundImage(this);
        myRoundImage.setScaleType(ImageView.ScaleType.FIT_XY);
        frameLayout2.addView(myRoundImage, -1, -2);
        ?? myFadeFrame = new MyFadeFrame(this);
        myFadeFrame.x = this;
        FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(-1, -2);
        layoutParams6.gravity = 8388627;
        frameLayout2.addView((View) myFadeFrame, layoutParams6);
        View view = new View(this);
        view.setBackgroundResource(R.drawable.shadow_list_up);
        view.setVisibility(8);
        RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(-1, MainApp.e1);
        layoutParams7.addRule(3, i7);
        myRoundItem.addView(view, layoutParams7);
        ScrollView scrollView = new ScrollView(this);
        scrollView.setOverScrollMode(2);
        myRoundItem.addView(scrollView, androidx.work.impl.workers.a.h(-1, -1, 3, i7));
        int G2 = (int) MainUtil.G(this, 32.0f);
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setPadding(0, 0, 0, G2);
        linearLayout.setOrientation(1);
        scrollView.addView(linearLayout, -1, -2);
        this.C1 = myMainRelative;
        this.D1 = myButtonImage;
        this.E1 = appCompatTextView;
        this.F1 = myButtonImage2;
        this.G1 = myButtonImage3;
        this.H1 = myRoundItem;
        this.I1 = myRoundImage;
        this.J1 = myFadeFrame;
        this.K1 = view;
        this.L1 = scrollView;
        this.M1 = linearLayout;
        this.N1 = frameLayout;
        Handler handler = this.O0;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.setting.SettingVideoSub.1
            @Override // java.lang.Runnable
            public final void run() {
                LinearLayout linearLayout2;
                final SettingVideoSub settingVideoSub = SettingVideoSub.this;
                if (settingVideoSub.C1 != null && (linearLayout2 = settingVideoSub.M1) != null) {
                    int G3 = (int) MainUtil.G(settingVideoSub, 12.0f);
                    LinearLayout linearLayout3 = new LinearLayout(settingVideoSub);
                    linearLayout3.setOrientation(1);
                    LinearLayout.LayoutParams layoutParams8 = new LinearLayout.LayoutParams(-1, -2);
                    layoutParams8.topMargin = MainApp.E1;
                    linearLayout2.addView(linearLayout3, layoutParams8);
                    FrameLayout frameLayout3 = new FrameLayout(settingVideoSub);
                    frameLayout3.setPadding(0, G3, 0, 0);
                    linearLayout3.addView(frameLayout3, -1, -2);
                    AppCompatTextView appCompatTextView2 = new AppCompatTextView(settingVideoSub, null);
                    appCompatTextView2.setTextSize(1, 16.0f);
                    FrameLayout.LayoutParams d = com.google.android.gms.internal.mlkit_vision_text_common.a.d(appCompatTextView2, R.string.size, -2, -2);
                    d.setMarginStart(MainApp.E1);
                    frameLayout3.addView(appCompatTextView2, d);
                    AppCompatTextView appCompatTextView3 = new AppCompatTextView(settingVideoSub, null);
                    appCompatTextView3.setGravity(1);
                    appCompatTextView3.setTextSize(1, 16.0f);
                    appCompatTextView3.setMinWidth(MainApp.E1);
                    FrameLayout.LayoutParams layoutParams9 = new FrameLayout.LayoutParams(-2, -2);
                    layoutParams9.gravity = 8388613;
                    layoutParams9.setMarginEnd(MainApp.E1);
                    frameLayout3.addView(appCompatTextView3, layoutParams9);
                    MyLineFrame myLineFrame = new MyLineFrame(settingVideoSub);
                    myLineFrame.a(MainApp.E1);
                    linearLayout3.addView(myLineFrame, -1, MainApp.g1);
                    MyButtonImage myButtonImage4 = new MyButtonImage(settingVideoSub);
                    ImageView.ScaleType scaleType2 = ImageView.ScaleType.CENTER_INSIDE;
                    myButtonImage4.setScaleType(scaleType2);
                    int i12 = MainApp.g1;
                    myLineFrame.addView(myButtonImage4, i12, i12);
                    SeekBar seekBar = new SeekBar(settingVideoSub);
                    FrameLayout.LayoutParams layoutParams10 = new FrameLayout.LayoutParams(-1, -2);
                    layoutParams10.gravity = 8388627;
                    layoutParams10.setMarginStart(MainApp.g1);
                    layoutParams10.setMarginEnd(MainApp.g1);
                    myLineFrame.addView(seekBar, layoutParams10);
                    MyButtonImage myButtonImage5 = new MyButtonImage(settingVideoSub);
                    myButtonImage5.setScaleType(scaleType2);
                    int i13 = MainApp.g1;
                    FrameLayout.LayoutParams layoutParams11 = new FrameLayout.LayoutParams(i13, i13);
                    layoutParams11.gravity = 8388613;
                    myLineFrame.addView(myButtonImage5, layoutParams11);
                    settingVideoSub.O1 = linearLayout3;
                    settingVideoSub.P1 = appCompatTextView2;
                    settingVideoSub.Q1 = appCompatTextView3;
                    settingVideoSub.R1 = seekBar;
                    settingVideoSub.S1 = myButtonImage4;
                    settingVideoSub.T1 = myButtonImage5;
                    Handler handler2 = settingVideoSub.O0;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.setting.SettingVideoSub.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            LinearLayout linearLayout4;
                            final SettingVideoSub settingVideoSub2 = SettingVideoSub.this;
                            if (settingVideoSub2.C1 != null && (linearLayout4 = settingVideoSub2.M1) != null) {
                                int G4 = (int) MainUtil.G(settingVideoSub2, 12.0f);
                                LinearLayout linearLayout5 = new LinearLayout(settingVideoSub2);
                                linearLayout5.setOrientation(1);
                                LinearLayout.LayoutParams layoutParams12 = new LinearLayout.LayoutParams(-1, -2);
                                layoutParams12.topMargin = MainApp.E1;
                                linearLayout4.addView(linearLayout5, layoutParams12);
                                FrameLayout frameLayout4 = new FrameLayout(settingVideoSub2);
                                frameLayout4.setPadding(0, G4, 0, 0);
                                linearLayout5.addView(frameLayout4, -1, -2);
                                AppCompatTextView appCompatTextView4 = new AppCompatTextView(settingVideoSub2, null);
                                appCompatTextView4.setTextSize(1, 16.0f);
                                FrameLayout.LayoutParams d2 = com.google.android.gms.internal.mlkit_vision_text_common.a.d(appCompatTextView4, R.string.sub_line, -2, -2);
                                d2.setMarginStart(MainApp.E1);
                                frameLayout4.addView(appCompatTextView4, d2);
                                AppCompatTextView appCompatTextView5 = new AppCompatTextView(settingVideoSub2, null);
                                appCompatTextView5.setGravity(1);
                                appCompatTextView5.setTextSize(1, 16.0f);
                                appCompatTextView5.setMinWidth(MainApp.E1);
                                FrameLayout.LayoutParams layoutParams13 = new FrameLayout.LayoutParams(-2, -2);
                                layoutParams13.gravity = 8388613;
                                layoutParams13.setMarginEnd(MainApp.E1);
                                frameLayout4.addView(appCompatTextView5, layoutParams13);
                                MyLineFrame myLineFrame2 = new MyLineFrame(settingVideoSub2);
                                myLineFrame2.a(MainApp.E1);
                                linearLayout5.addView(myLineFrame2, -1, MainApp.g1);
                                MyButtonImage myButtonImage6 = new MyButtonImage(settingVideoSub2);
                                ImageView.ScaleType scaleType3 = ImageView.ScaleType.CENTER_INSIDE;
                                myButtonImage6.setScaleType(scaleType3);
                                int i14 = MainApp.g1;
                                myLineFrame2.addView(myButtonImage6, i14, i14);
                                SeekBar seekBar2 = new SeekBar(settingVideoSub2);
                                FrameLayout.LayoutParams layoutParams14 = new FrameLayout.LayoutParams(-1, -2);
                                layoutParams14.gravity = 8388627;
                                layoutParams14.setMarginStart(MainApp.g1);
                                layoutParams14.setMarginEnd(MainApp.g1);
                                myLineFrame2.addView(seekBar2, layoutParams14);
                                MyButtonImage myButtonImage7 = new MyButtonImage(settingVideoSub2);
                                myButtonImage7.setScaleType(scaleType3);
                                int i15 = MainApp.g1;
                                FrameLayout.LayoutParams layoutParams15 = new FrameLayout.LayoutParams(i15, i15);
                                layoutParams15.gravity = 8388613;
                                myLineFrame2.addView(myButtonImage7, layoutParams15);
                                FrameLayout frameLayout5 = new FrameLayout(settingVideoSub2);
                                frameLayout5.setPadding(0, G4, 0, 0);
                                linearLayout5.addView(frameLayout5, -1, -2);
                                AppCompatTextView appCompatTextView6 = new AppCompatTextView(settingVideoSub2, null);
                                appCompatTextView6.setTextSize(1, 16.0f);
                                FrameLayout.LayoutParams d3 = com.google.android.gms.internal.mlkit_vision_text_common.a.d(appCompatTextView6, R.string.color_alpha, -2, -2);
                                d3.setMarginStart(MainApp.E1);
                                frameLayout5.addView(appCompatTextView6, d3);
                                AppCompatTextView appCompatTextView7 = new AppCompatTextView(settingVideoSub2, null);
                                appCompatTextView7.setGravity(1);
                                appCompatTextView7.setTextSize(1, 16.0f);
                                appCompatTextView7.setMinWidth(MainApp.E1);
                                FrameLayout.LayoutParams layoutParams16 = new FrameLayout.LayoutParams(-2, -2);
                                layoutParams16.gravity = 8388613;
                                layoutParams16.setMarginEnd(MainApp.E1);
                                frameLayout5.addView(appCompatTextView7, layoutParams16);
                                MyLineFrame myLineFrame3 = new MyLineFrame(settingVideoSub2);
                                myLineFrame3.a(MainApp.E1);
                                linearLayout5.addView(myLineFrame3, -1, MainApp.g1);
                                MyButtonImage myButtonImage8 = new MyButtonImage(settingVideoSub2);
                                myButtonImage8.setScaleType(scaleType3);
                                int i16 = MainApp.g1;
                                myLineFrame3.addView(myButtonImage8, i16, i16);
                                SeekBar seekBar3 = new SeekBar(settingVideoSub2);
                                FrameLayout.LayoutParams layoutParams17 = new FrameLayout.LayoutParams(-1, -2);
                                layoutParams17.gravity = 8388627;
                                layoutParams17.setMarginStart(MainApp.g1);
                                layoutParams17.setMarginEnd(MainApp.g1);
                                myLineFrame3.addView(seekBar3, layoutParams17);
                                MyButtonImage myButtonImage9 = new MyButtonImage(settingVideoSub2);
                                myButtonImage9.setScaleType(scaleType3);
                                int i17 = MainApp.g1;
                                FrameLayout.LayoutParams layoutParams18 = new FrameLayout.LayoutParams(i17, i17);
                                layoutParams18.gravity = 8388613;
                                myLineFrame3.addView(myButtonImage9, layoutParams18);
                                LinearLayout linearLayout6 = new LinearLayout(settingVideoSub2);
                                int i18 = MainApp.E1;
                                linearLayout6.setPadding(i18, 0, i18, 0);
                                linearLayout6.setBaselineAligned(false);
                                linearLayout6.setOrientation(0);
                                LinearLayout.LayoutParams layoutParams19 = new LinearLayout.LayoutParams(-1, MainApp.f1);
                                layoutParams19.topMargin = MainApp.F1;
                                linearLayout5.addView(linearLayout6, layoutParams19);
                                MyPaletteView myPaletteView = new MyPaletteView(settingVideoSub2);
                                LinearLayout.LayoutParams layoutParams20 = new LinearLayout.LayoutParams(-2, -2);
                                layoutParams20.gravity = 1;
                                layoutParams20.topMargin = MainApp.G1;
                                linearLayout5.addView(myPaletteView, layoutParams20);
                                settingVideoSub2.U1 = linearLayout5;
                                settingVideoSub2.V1 = appCompatTextView4;
                                settingVideoSub2.W1 = appCompatTextView5;
                                settingVideoSub2.X1 = seekBar2;
                                settingVideoSub2.Y1 = myButtonImage6;
                                settingVideoSub2.Z1 = myButtonImage7;
                                settingVideoSub2.a2 = appCompatTextView6;
                                settingVideoSub2.b2 = appCompatTextView7;
                                settingVideoSub2.c2 = seekBar3;
                                settingVideoSub2.d2 = myButtonImage8;
                                settingVideoSub2.e2 = myButtonImage9;
                                settingVideoSub2.f2 = linearLayout6;
                                settingVideoSub2.h2 = myPaletteView;
                                Handler handler3 = settingVideoSub2.O0;
                                if (handler3 == null) {
                                    return;
                                }
                                handler3.post(new Runnable() { // from class: com.mycompany.app.setting.SettingVideoSub.3
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        LinearLayout linearLayout7;
                                        final SettingVideoSub settingVideoSub3 = SettingVideoSub.this;
                                        MyMainRelative myMainRelative2 = settingVideoSub3.C1;
                                        if (myMainRelative2 != null && (linearLayout7 = settingVideoSub3.M1) != null) {
                                            int i19 = R.id.set_cast_ctrl;
                                            int G5 = (int) MainUtil.G(settingVideoSub3, 12.0f);
                                            LinearLayout linearLayout8 = new LinearLayout(settingVideoSub3);
                                            linearLayout8.setOrientation(1);
                                            LinearLayout.LayoutParams layoutParams21 = new LinearLayout.LayoutParams(-1, -2);
                                            layoutParams21.topMargin = MainApp.E1;
                                            linearLayout7.addView(linearLayout8, layoutParams21);
                                            MyLineFrame myLineFrame4 = new MyLineFrame(settingVideoSub3);
                                            myLineFrame4.setPaddingRelative(MainApp.E1, 0, MainApp.F1, 0);
                                            myLineFrame4.setMinimumHeight(MainApp.h1);
                                            myLineFrame4.a(MainApp.E1);
                                            linearLayout8.addView(myLineFrame4, -1, -2);
                                            MySwitchView mySwitchView = new MySwitchView(settingVideoSub3);
                                            int i20 = MainApp.g1;
                                            FrameLayout.LayoutParams layoutParams22 = new FrameLayout.LayoutParams(i20, i20);
                                            layoutParams22.gravity = 8388629;
                                            myLineFrame4.addView(mySwitchView, layoutParams22);
                                            AppCompatTextView appCompatTextView8 = new AppCompatTextView(settingVideoSub3, null);
                                            int i21 = MainApp.E1;
                                            appCompatTextView8.setPadding(0, i21, 0, i21);
                                            appCompatTextView8.setTextSize(1, 16.0f);
                                            FrameLayout.LayoutParams d4 = com.google.android.gms.internal.mlkit_vision_text_common.a.d(appCompatTextView8, R.string.background, -1, -2);
                                            d4.gravity = 16;
                                            d4.setMarginEnd(MainApp.g1);
                                            myLineFrame4.addView(appCompatTextView8, d4);
                                            FrameLayout frameLayout6 = new FrameLayout(settingVideoSub3);
                                            frameLayout6.setPadding(0, G5, 0, 0);
                                            linearLayout8.addView(frameLayout6, -1, -2);
                                            AppCompatTextView appCompatTextView9 = new AppCompatTextView(settingVideoSub3, null);
                                            appCompatTextView9.setTextSize(1, 16.0f);
                                            FrameLayout.LayoutParams d5 = com.google.android.gms.internal.mlkit_vision_text_common.a.d(appCompatTextView9, R.string.color_alpha, -2, -2);
                                            d5.setMarginStart(MainApp.E1);
                                            frameLayout6.addView(appCompatTextView9, d5);
                                            AppCompatTextView appCompatTextView10 = new AppCompatTextView(settingVideoSub3, null);
                                            appCompatTextView10.setGravity(1);
                                            appCompatTextView10.setTextSize(1, 16.0f);
                                            appCompatTextView10.setMinWidth(MainApp.E1);
                                            FrameLayout.LayoutParams layoutParams23 = new FrameLayout.LayoutParams(-2, -2);
                                            layoutParams23.gravity = 8388613;
                                            layoutParams23.setMarginEnd(MainApp.E1);
                                            frameLayout6.addView(appCompatTextView10, layoutParams23);
                                            MyLineFrame myLineFrame5 = new MyLineFrame(settingVideoSub3);
                                            myLineFrame5.a(MainApp.E1);
                                            linearLayout8.addView(myLineFrame5, -1, MainApp.g1);
                                            MyButtonImage myButtonImage10 = new MyButtonImage(settingVideoSub3);
                                            ImageView.ScaleType scaleType4 = ImageView.ScaleType.CENTER_INSIDE;
                                            myButtonImage10.setScaleType(scaleType4);
                                            int i22 = MainApp.g1;
                                            myLineFrame5.addView(myButtonImage10, i22, i22);
                                            SeekBar seekBar4 = new SeekBar(settingVideoSub3);
                                            FrameLayout.LayoutParams layoutParams24 = new FrameLayout.LayoutParams(-1, -2);
                                            layoutParams24.gravity = 8388627;
                                            layoutParams24.setMarginStart(MainApp.g1);
                                            layoutParams24.setMarginEnd(MainApp.g1);
                                            myLineFrame5.addView(seekBar4, layoutParams24);
                                            MyButtonImage myButtonImage11 = new MyButtonImage(settingVideoSub3);
                                            myButtonImage11.setScaleType(scaleType4);
                                            int i23 = MainApp.g1;
                                            FrameLayout.LayoutParams layoutParams25 = new FrameLayout.LayoutParams(i23, i23);
                                            layoutParams25.gravity = 8388613;
                                            myLineFrame5.addView(myButtonImage11, layoutParams25);
                                            LinearLayout linearLayout9 = new LinearLayout(settingVideoSub3);
                                            int i24 = MainApp.E1;
                                            linearLayout9.setPadding(i24, 0, i24, 0);
                                            linearLayout9.setBaselineAligned(false);
                                            linearLayout9.setOrientation(0);
                                            LinearLayout.LayoutParams layoutParams26 = new LinearLayout.LayoutParams(-1, MainApp.f1);
                                            layoutParams26.topMargin = MainApp.F1;
                                            linearLayout8.addView(linearLayout9, layoutParams26);
                                            MyPaletteView myPaletteView2 = new MyPaletteView(settingVideoSub3);
                                            LinearLayout.LayoutParams layoutParams27 = new LinearLayout.LayoutParams(-2, -2);
                                            layoutParams27.gravity = 1;
                                            layoutParams27.topMargin = MainApp.G1;
                                            linearLayout8.addView(myPaletteView2, layoutParams27);
                                            FrameLayout frameLayout7 = new FrameLayout(settingVideoSub3);
                                            frameLayout7.setId(i19);
                                            frameLayout7.setVisibility(8);
                                            RelativeLayout.LayoutParams layoutParams28 = new RelativeLayout.LayoutParams(-1, -2);
                                            layoutParams28.addRule(12);
                                            myMainRelative2.addView(frameLayout7, layoutParams28);
                                            settingVideoSub3.i2 = linearLayout8;
                                            settingVideoSub3.j2 = myLineFrame4;
                                            settingVideoSub3.k2 = appCompatTextView8;
                                            settingVideoSub3.l2 = mySwitchView;
                                            settingVideoSub3.m2 = appCompatTextView9;
                                            settingVideoSub3.n2 = appCompatTextView10;
                                            settingVideoSub3.o2 = seekBar4;
                                            settingVideoSub3.p2 = myButtonImage10;
                                            settingVideoSub3.q2 = myButtonImage11;
                                            settingVideoSub3.r2 = linearLayout9;
                                            settingVideoSub3.t2 = myPaletteView2;
                                            FrameLayout frameLayout8 = settingVideoSub3.N1;
                                            settingVideoSub3.N1 = null;
                                            settingVideoSub3.B0(settingVideoSub3.C1, frameLayout8, frameLayout7);
                                            settingVideoSub3.C1.setWindow(settingVideoSub3.getWindow());
                                            settingVideoSub3.initMainScreenOn(settingVideoSub3.C1);
                                            Handler handler4 = settingVideoSub3.O0;
                                            if (handler4 == null) {
                                                return;
                                            }
                                            handler4.post(new Runnable() { // from class: com.mycompany.app.setting.SettingVideoSub.4
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    final SettingVideoSub settingVideoSub4 = SettingVideoSub.this;
                                                    if (settingVideoSub4.C1 != null) {
                                                        if (MainApp.K1) {
                                                            settingVideoSub4.D1.setImageResource(R.drawable.outline_chevron_left_dark_24);
                                                            settingVideoSub4.E1.setTextColor(-328966);
                                                            settingVideoSub4.F1.setImageResource(R.drawable.outline_replay_dark_20);
                                                            settingVideoSub4.G1.setImageResource(R.drawable.outline_check_dark_20);
                                                            settingVideoSub4.H1.setBackgroundColor(-16777216);
                                                            settingVideoSub4.O1.setBackgroundColor(-14606047);
                                                            settingVideoSub4.U1.setBackgroundColor(-14606047);
                                                            settingVideoSub4.i2.setBackgroundColor(-14606047);
                                                            settingVideoSub4.j2.setBackgroundResource(R.drawable.selector_normal_dark);
                                                            settingVideoSub4.P1.setTextColor(-328966);
                                                            settingVideoSub4.Q1.setTextColor(-328966);
                                                            settingVideoSub4.V1.setTextColor(-328966);
                                                            settingVideoSub4.W1.setTextColor(-328966);
                                                            settingVideoSub4.a2.setTextColor(-328966);
                                                            settingVideoSub4.b2.setTextColor(-328966);
                                                            settingVideoSub4.k2.setTextColor(-328966);
                                                            settingVideoSub4.m2.setTextColor(-328966);
                                                            settingVideoSub4.n2.setTextColor(-328966);
                                                            settingVideoSub4.S1.setImageResource(R.drawable.outline_remove_dark_24);
                                                            settingVideoSub4.T1.setImageResource(R.drawable.outline_add_dark_24);
                                                            settingVideoSub4.Y1.setImageResource(R.drawable.outline_remove_dark_24);
                                                            settingVideoSub4.Z1.setImageResource(R.drawable.outline_add_dark_24);
                                                            settingVideoSub4.d2.setImageResource(R.drawable.outline_remove_dark_24);
                                                            settingVideoSub4.e2.setImageResource(R.drawable.outline_add_dark_24);
                                                            settingVideoSub4.p2.setImageResource(R.drawable.outline_remove_dark_24);
                                                            settingVideoSub4.q2.setImageResource(R.drawable.outline_add_dark_24);
                                                            settingVideoSub4.R1.setProgressDrawable(MainUtil.S(settingVideoSub4.f1, R.drawable.seek_progress_a));
                                                            settingVideoSub4.R1.setThumb(MainUtil.S(settingVideoSub4.f1, R.drawable.seek_thumb_a));
                                                            settingVideoSub4.X1.setProgressDrawable(MainUtil.S(settingVideoSub4.f1, R.drawable.seek_progress_a));
                                                            settingVideoSub4.X1.setThumb(MainUtil.S(settingVideoSub4.f1, R.drawable.seek_thumb_a));
                                                            settingVideoSub4.c2.setProgressDrawable(MainUtil.S(settingVideoSub4.f1, R.drawable.seek_progress_a));
                                                            settingVideoSub4.c2.setThumb(MainUtil.S(settingVideoSub4.f1, R.drawable.seek_thumb_a));
                                                            settingVideoSub4.o2.setProgressDrawable(MainUtil.S(settingVideoSub4.f1, R.drawable.seek_progress_a));
                                                            settingVideoSub4.o2.setThumb(MainUtil.S(settingVideoSub4.f1, R.drawable.seek_thumb_a));
                                                            settingVideoSub4.D1.setBgPreColor(-12632257);
                                                            settingVideoSub4.F1.setBgPreColor(-12632257);
                                                            settingVideoSub4.G1.setBgPreColor(-12632257);
                                                            settingVideoSub4.S1.setBgPreColor(-12632257);
                                                            settingVideoSub4.T1.setBgPreColor(-12632257);
                                                            settingVideoSub4.Y1.setBgPreColor(-12632257);
                                                            settingVideoSub4.Z1.setBgPreColor(-12632257);
                                                            settingVideoSub4.d2.setBgPreColor(-12632257);
                                                            settingVideoSub4.e2.setBgPreColor(-12632257);
                                                            settingVideoSub4.p2.setBgPreColor(-12632257);
                                                            settingVideoSub4.q2.setBgPreColor(-12632257);
                                                        } else {
                                                            settingVideoSub4.D1.setImageResource(R.drawable.outline_chevron_left_black_24);
                                                            settingVideoSub4.E1.setTextColor(-16777216);
                                                            settingVideoSub4.F1.setImageResource(R.drawable.outline_replay_black_20);
                                                            settingVideoSub4.G1.setImageResource(R.drawable.outline_check_black_20);
                                                            settingVideoSub4.H1.setBackgroundColor(-460552);
                                                            settingVideoSub4.O1.setBackgroundColor(-1);
                                                            settingVideoSub4.U1.setBackgroundColor(-1);
                                                            settingVideoSub4.i2.setBackgroundColor(-1);
                                                            settingVideoSub4.j2.setBackgroundResource(R.drawable.selector_normal);
                                                            settingVideoSub4.P1.setTextColor(-16777216);
                                                            settingVideoSub4.Q1.setTextColor(-16777216);
                                                            settingVideoSub4.V1.setTextColor(-16777216);
                                                            settingVideoSub4.W1.setTextColor(-16777216);
                                                            settingVideoSub4.a2.setTextColor(-16777216);
                                                            settingVideoSub4.b2.setTextColor(-16777216);
                                                            settingVideoSub4.k2.setTextColor(-16777216);
                                                            settingVideoSub4.m2.setTextColor(-16777216);
                                                            settingVideoSub4.n2.setTextColor(-16777216);
                                                            settingVideoSub4.S1.setImageResource(R.drawable.outline_remove_black_24);
                                                            settingVideoSub4.T1.setImageResource(R.drawable.outline_add_black_24);
                                                            settingVideoSub4.Y1.setImageResource(R.drawable.outline_remove_black_24);
                                                            settingVideoSub4.Z1.setImageResource(R.drawable.outline_add_black_24);
                                                            settingVideoSub4.d2.setImageResource(R.drawable.outline_remove_black_24);
                                                            settingVideoSub4.e2.setImageResource(R.drawable.outline_add_black_24);
                                                            settingVideoSub4.p2.setImageResource(R.drawable.outline_remove_black_24);
                                                            settingVideoSub4.q2.setImageResource(R.drawable.outline_add_black_24);
                                                            settingVideoSub4.R1.setProgressDrawable(MainUtil.S(settingVideoSub4.f1, R.drawable.seek_progress_a));
                                                            settingVideoSub4.R1.setThumb(MainUtil.S(settingVideoSub4.f1, R.drawable.seek_thumb_a));
                                                            settingVideoSub4.X1.setProgressDrawable(MainUtil.S(settingVideoSub4.f1, R.drawable.seek_progress_a));
                                                            settingVideoSub4.X1.setThumb(MainUtil.S(settingVideoSub4.f1, R.drawable.seek_thumb_a));
                                                            settingVideoSub4.c2.setProgressDrawable(MainUtil.S(settingVideoSub4.f1, R.drawable.seek_progress_a));
                                                            settingVideoSub4.c2.setThumb(MainUtil.S(settingVideoSub4.f1, R.drawable.seek_thumb_a));
                                                            settingVideoSub4.o2.setProgressDrawable(MainUtil.S(settingVideoSub4.f1, R.drawable.seek_progress_a));
                                                            settingVideoSub4.o2.setThumb(MainUtil.S(settingVideoSub4.f1, R.drawable.seek_thumb_a));
                                                            settingVideoSub4.D1.setBgPreColor(553648128);
                                                            settingVideoSub4.F1.setBgPreColor(553648128);
                                                            settingVideoSub4.G1.setBgPreColor(553648128);
                                                            settingVideoSub4.S1.setBgPreColor(-2039584);
                                                            settingVideoSub4.T1.setBgPreColor(-2039584);
                                                            settingVideoSub4.Y1.setBgPreColor(-2039584);
                                                            settingVideoSub4.Z1.setBgPreColor(-2039584);
                                                            settingVideoSub4.d2.setBgPreColor(-2039584);
                                                            settingVideoSub4.e2.setBgPreColor(-2039584);
                                                            settingVideoSub4.p2.setBgPreColor(-2039584);
                                                            settingVideoSub4.q2.setBgPreColor(-2039584);
                                                        }
                                                        LinearLayout linearLayout10 = settingVideoSub4.O1;
                                                        if (linearLayout10 != null) {
                                                            linearLayout10.setOutlineProvider(new ViewOutlineProvider());
                                                            linearLayout10.setClipToOutline(true);
                                                        }
                                                        LinearLayout linearLayout11 = settingVideoSub4.U1;
                                                        if (linearLayout11 != null) {
                                                            linearLayout11.setOutlineProvider(new ViewOutlineProvider());
                                                            linearLayout11.setClipToOutline(true);
                                                        }
                                                        LinearLayout linearLayout12 = settingVideoSub4.i2;
                                                        if (linearLayout12 != null) {
                                                            linearLayout12.setOutlineProvider(new ViewOutlineProvider());
                                                            linearLayout12.setClipToOutline(true);
                                                        }
                                                        MyRoundImage myRoundImage2 = settingVideoSub4.I1;
                                                        if (myRoundImage2 != null) {
                                                            myRoundImage2.setListener(new ImageSizeListener() { // from class: com.mycompany.app.setting.SettingVideoSub.29
                                                                @Override // com.mycompany.app.image.ImageSizeListener
                                                                public final void a(View view2, int i25, int i26) {
                                                                    SettingVideoSub settingVideoSub5 = SettingVideoSub.this;
                                                                    if (settingVideoSub5.I1 != null) {
                                                                        int round = Math.round(i25 * settingVideoSub5.R2);
                                                                        ViewGroup.LayoutParams layoutParams29 = settingVideoSub5.I1.getLayoutParams();
                                                                        if (layoutParams29 != null && layoutParams29.height != round) {
                                                                            layoutParams29.height = round;
                                                                            settingVideoSub5.I1.j();
                                                                        }
                                                                    }
                                                                }
                                                            });
                                                            settingVideoSub4.m0(new Runnable() { // from class: com.mycompany.app.setting.SettingVideoSub.30
                                                                @Override // java.lang.Runnable
                                                                public final void run() {
                                                                    SettingVideoSub settingVideoSub5 = SettingVideoSub.this;
                                                                    Drawable S = MainUtil.S(settingVideoSub5.f1, R.drawable.dev_cat);
                                                                    if (S != null) {
                                                                        settingVideoSub5.Q2 = S;
                                                                        settingVideoSub5.R2 = S.getIntrinsicHeight() / S.getIntrinsicWidth();
                                                                        if (settingVideoSub5.P2 == null) {
                                                                            settingVideoSub5.P2 = GlideApp.a(settingVideoSub5);
                                                                        }
                                                                        MyMainRelative myMainRelative3 = settingVideoSub5.C1;
                                                                        if (myMainRelative3 == null) {
                                                                            return;
                                                                        }
                                                                        myMainRelative3.post(new Runnable() { // from class: com.mycompany.app.setting.SettingVideoSub.30.1
                                                                            @Override // java.lang.Runnable
                                                                            public final void run() {
                                                                                SettingVideoSub settingVideoSub6 = SettingVideoSub.this;
                                                                                Drawable drawable = settingVideoSub6.Q2;
                                                                                settingVideoSub6.Q2 = null;
                                                                                GlideRequests glideRequests = settingVideoSub6.P2;
                                                                                if (glideRequests == null) {
                                                                                    return;
                                                                                }
                                                                                ((RequestBuilder) glideRequests.r(drawable).e(DiskCacheStrategy.f2204a)).E(settingVideoSub6.I1);
                                                                            }
                                                                        });
                                                                    }
                                                                }
                                                            });
                                                        }
                                                        settingVideoSub4.D1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingVideoSub.5
                                                            @Override // android.view.View.OnClickListener
                                                            public final void onClick(View view2) {
                                                                int i25 = SettingVideoSub.W2;
                                                                SettingVideoSub settingVideoSub5 = SettingVideoSub.this;
                                                                if (settingVideoSub5.K0()) {
                                                                    settingVideoSub5.P0();
                                                                } else {
                                                                    settingVideoSub5.finish();
                                                                }
                                                            }
                                                        });
                                                        settingVideoSub4.F1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingVideoSub.6
                                                            @Override // android.view.View.OnClickListener
                                                            public final void onClick(View view2) {
                                                                int i25 = SettingVideoSub.W2;
                                                                final SettingVideoSub settingVideoSub5 = SettingVideoSub.this;
                                                                if (settingVideoSub5.M2 != null || settingVideoSub5.N2 != null) {
                                                                    return;
                                                                }
                                                                settingVideoSub5.I0();
                                                                DialogSetMsg dialogSetMsg = new DialogSetMsg(settingVideoSub5, R.string.reset_setting, R.string.reset, new DialogSetFull.DialogApplyListener() { // from class: com.mycompany.app.setting.SettingVideoSub.35
                                                                    @Override // com.mycompany.app.dialog.DialogSetFull.DialogApplyListener
                                                                    public final void a() {
                                                                        int i26 = SettingVideoSub.W2;
                                                                        SettingVideoSub settingVideoSub6 = SettingVideoSub.this;
                                                                        settingVideoSub6.I0();
                                                                        settingVideoSub6.getClass();
                                                                        int i27 = MainConst.q[7];
                                                                        float f = MainConst.p[7];
                                                                        settingVideoSub6.u2 = 20;
                                                                        settingVideoSub6.v2 = 2;
                                                                        settingVideoSub6.w2 = 0;
                                                                        settingVideoSub6.x2 = i27;
                                                                        settingVideoSub6.y2 = f;
                                                                        settingVideoSub6.A2 = false;
                                                                        settingVideoSub6.B2 = 0;
                                                                        settingVideoSub6.C2 = i27;
                                                                        settingVideoSub6.D2 = f;
                                                                        settingVideoSub6.z2 = PrefEditor.r(i27, 0);
                                                                        settingVideoSub6.L0();
                                                                        settingVideoSub6.M0(false);
                                                                    }
                                                                });
                                                                settingVideoSub5.M2 = dialogSetMsg;
                                                                dialogSetMsg.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingVideoSub.36
                                                                    @Override // android.content.DialogInterface.OnDismissListener
                                                                    public final void onDismiss(DialogInterface dialogInterface) {
                                                                        int i26 = SettingVideoSub.W2;
                                                                        SettingVideoSub.this.I0();
                                                                    }
                                                                });
                                                            }
                                                        });
                                                        settingVideoSub4.G1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingVideoSub.7
                                                            @Override // android.view.View.OnClickListener
                                                            public final void onClick(View view2) {
                                                                SettingVideoSub settingVideoSub5 = SettingVideoSub.this;
                                                                MyButtonImage myButtonImage12 = settingVideoSub5.G1;
                                                                if (myButtonImage12 == null) {
                                                                    return;
                                                                }
                                                                myButtonImage12.setClickable(false);
                                                                settingVideoSub5.G1.post(new Runnable() { // from class: com.mycompany.app.setting.SettingVideoSub.7.1
                                                                    @Override // java.lang.Runnable
                                                                    public final void run() {
                                                                        SettingVideoSub settingVideoSub6 = SettingVideoSub.this;
                                                                        if (settingVideoSub6.G1 == null) {
                                                                            return;
                                                                        }
                                                                        settingVideoSub6.M0(true);
                                                                    }
                                                                });
                                                            }
                                                        });
                                                        settingVideoSub4.L1.getViewTreeObserver().addOnScrollChangedListener(new ViewTreeObserver.OnScrollChangedListener() { // from class: com.mycompany.app.setting.SettingVideoSub.8
                                                            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
                                                            public final void onScrollChanged() {
                                                                int i25;
                                                                SettingVideoSub settingVideoSub5 = SettingVideoSub.this;
                                                                View view2 = settingVideoSub5.K1;
                                                                if (view2 == null) {
                                                                    return;
                                                                }
                                                                if (settingVideoSub5.L1.getScrollY() > 0) {
                                                                    i25 = 0;
                                                                } else {
                                                                    i25 = 8;
                                                                }
                                                                view2.setVisibility(i25);
                                                            }
                                                        });
                                                        settingVideoSub4.R1.setSplitTrack(false);
                                                        settingVideoSub4.R1.setMax(40);
                                                        settingVideoSub4.R1.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.mycompany.app.setting.SettingVideoSub.9
                                                            @Override // android.widget.SeekBar.OnSeekBarChangeListener
                                                            public final void onProgressChanged(SeekBar seekBar5, int i25, boolean z) {
                                                                SettingVideoSub.G0(SettingVideoSub.this, seekBar5.getProgress() + 10);
                                                            }

                                                            @Override // android.widget.SeekBar.OnSeekBarChangeListener
                                                            public final void onStartTrackingTouch(SeekBar seekBar5) {
                                                                int progress = seekBar5.getProgress() + 10;
                                                                SettingVideoSub settingVideoSub5 = SettingVideoSub.this;
                                                                SettingVideoSub.G0(settingVideoSub5, progress);
                                                                settingVideoSub5.E2 = true;
                                                            }

                                                            @Override // android.widget.SeekBar.OnSeekBarChangeListener
                                                            public final void onStopTrackingTouch(SeekBar seekBar5) {
                                                                int progress = seekBar5.getProgress() + 10;
                                                                SettingVideoSub settingVideoSub5 = SettingVideoSub.this;
                                                                SettingVideoSub.G0(settingVideoSub5, progress);
                                                                settingVideoSub5.E2 = false;
                                                            }
                                                        });
                                                        settingVideoSub4.S1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingVideoSub.10
                                                            @Override // android.view.View.OnClickListener
                                                            public final void onClick(View view2) {
                                                                int progress;
                                                                SettingVideoSub settingVideoSub5 = SettingVideoSub.this;
                                                                if (settingVideoSub5.R1 == null || r0.getProgress() - 1 < 0) {
                                                                    return;
                                                                }
                                                                settingVideoSub5.R1.setProgress(progress);
                                                            }
                                                        });
                                                        settingVideoSub4.T1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingVideoSub.11
                                                            @Override // android.view.View.OnClickListener
                                                            public final void onClick(View view2) {
                                                                int progress;
                                                                SettingVideoSub settingVideoSub5 = SettingVideoSub.this;
                                                                SeekBar seekBar5 = settingVideoSub5.R1;
                                                                if (seekBar5 == null || (progress = seekBar5.getProgress() + 1) > settingVideoSub5.R1.getMax()) {
                                                                    return;
                                                                }
                                                                settingVideoSub5.R1.setProgress(progress);
                                                            }
                                                        });
                                                        settingVideoSub4.X1.setSplitTrack(false);
                                                        settingVideoSub4.X1.setMax(20);
                                                        settingVideoSub4.X1.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.mycompany.app.setting.SettingVideoSub.12
                                                            @Override // android.widget.SeekBar.OnSeekBarChangeListener
                                                            public final void onProgressChanged(SeekBar seekBar5, int i25, boolean z) {
                                                                SettingVideoSub.F0(SettingVideoSub.this, seekBar5.getProgress());
                                                            }

                                                            @Override // android.widget.SeekBar.OnSeekBarChangeListener
                                                            public final void onStartTrackingTouch(SeekBar seekBar5) {
                                                                int progress = seekBar5.getProgress();
                                                                SettingVideoSub settingVideoSub5 = SettingVideoSub.this;
                                                                SettingVideoSub.F0(settingVideoSub5, progress);
                                                                settingVideoSub5.G2 = true;
                                                            }

                                                            @Override // android.widget.SeekBar.OnSeekBarChangeListener
                                                            public final void onStopTrackingTouch(SeekBar seekBar5) {
                                                                int progress = seekBar5.getProgress();
                                                                SettingVideoSub settingVideoSub5 = SettingVideoSub.this;
                                                                SettingVideoSub.F0(settingVideoSub5, progress);
                                                                settingVideoSub5.G2 = false;
                                                            }
                                                        });
                                                        settingVideoSub4.Y1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingVideoSub.13
                                                            @Override // android.view.View.OnClickListener
                                                            public final void onClick(View view2) {
                                                                int progress;
                                                                SettingVideoSub settingVideoSub5 = SettingVideoSub.this;
                                                                if (settingVideoSub5.X1 == null || r0.getProgress() - 1 < 0) {
                                                                    return;
                                                                }
                                                                settingVideoSub5.X1.setProgress(progress);
                                                            }
                                                        });
                                                        settingVideoSub4.Z1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingVideoSub.14
                                                            @Override // android.view.View.OnClickListener
                                                            public final void onClick(View view2) {
                                                                int progress;
                                                                SettingVideoSub settingVideoSub5 = SettingVideoSub.this;
                                                                SeekBar seekBar5 = settingVideoSub5.X1;
                                                                if (seekBar5 == null || (progress = seekBar5.getProgress() + 1) > settingVideoSub5.X1.getMax()) {
                                                                    return;
                                                                }
                                                                settingVideoSub5.X1.setProgress(progress);
                                                            }
                                                        });
                                                        settingVideoSub4.c2.setSplitTrack(false);
                                                        settingVideoSub4.c2.setMax(90);
                                                        settingVideoSub4.c2.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.mycompany.app.setting.SettingVideoSub.15
                                                            @Override // android.widget.SeekBar.OnSeekBarChangeListener
                                                            public final void onProgressChanged(SeekBar seekBar5, int i25, boolean z) {
                                                                SettingVideoSub.E0(SettingVideoSub.this, seekBar5.getProgress());
                                                            }

                                                            @Override // android.widget.SeekBar.OnSeekBarChangeListener
                                                            public final void onStartTrackingTouch(SeekBar seekBar5) {
                                                                int progress = seekBar5.getProgress();
                                                                SettingVideoSub settingVideoSub5 = SettingVideoSub.this;
                                                                SettingVideoSub.E0(settingVideoSub5, progress);
                                                                settingVideoSub5.I2 = true;
                                                            }

                                                            @Override // android.widget.SeekBar.OnSeekBarChangeListener
                                                            public final void onStopTrackingTouch(SeekBar seekBar5) {
                                                                int progress = seekBar5.getProgress();
                                                                SettingVideoSub settingVideoSub5 = SettingVideoSub.this;
                                                                SettingVideoSub.E0(settingVideoSub5, progress);
                                                                settingVideoSub5.I2 = false;
                                                            }
                                                        });
                                                        settingVideoSub4.d2.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingVideoSub.16
                                                            @Override // android.view.View.OnClickListener
                                                            public final void onClick(View view2) {
                                                                int progress;
                                                                SettingVideoSub settingVideoSub5 = SettingVideoSub.this;
                                                                if (settingVideoSub5.c2 == null || r0.getProgress() - 1 < 0) {
                                                                    return;
                                                                }
                                                                settingVideoSub5.c2.setProgress(progress);
                                                            }
                                                        });
                                                        settingVideoSub4.e2.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingVideoSub.17
                                                            @Override // android.view.View.OnClickListener
                                                            public final void onClick(View view2) {
                                                                int progress;
                                                                SettingVideoSub settingVideoSub5 = SettingVideoSub.this;
                                                                SeekBar seekBar5 = settingVideoSub5.c2;
                                                                if (seekBar5 == null || (progress = seekBar5.getProgress() + 1) > settingVideoSub5.c2.getMax()) {
                                                                    return;
                                                                }
                                                                settingVideoSub5.c2.setProgress(progress);
                                                            }
                                                        });
                                                        settingVideoSub4.o2.setSplitTrack(false);
                                                        settingVideoSub4.o2.setMax(90);
                                                        settingVideoSub4.o2.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.mycompany.app.setting.SettingVideoSub.18
                                                            @Override // android.widget.SeekBar.OnSeekBarChangeListener
                                                            public final void onProgressChanged(SeekBar seekBar5, int i25, boolean z) {
                                                                SettingVideoSub.D0(SettingVideoSub.this, seekBar5.getProgress());
                                                            }

                                                            @Override // android.widget.SeekBar.OnSeekBarChangeListener
                                                            public final void onStartTrackingTouch(SeekBar seekBar5) {
                                                                int progress = seekBar5.getProgress();
                                                                SettingVideoSub settingVideoSub5 = SettingVideoSub.this;
                                                                SettingVideoSub.D0(settingVideoSub5, progress);
                                                                settingVideoSub5.K2 = true;
                                                            }

                                                            @Override // android.widget.SeekBar.OnSeekBarChangeListener
                                                            public final void onStopTrackingTouch(SeekBar seekBar5) {
                                                                int progress = seekBar5.getProgress();
                                                                SettingVideoSub settingVideoSub5 = SettingVideoSub.this;
                                                                SettingVideoSub.D0(settingVideoSub5, progress);
                                                                settingVideoSub5.K2 = false;
                                                            }
                                                        });
                                                        settingVideoSub4.p2.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingVideoSub.19
                                                            @Override // android.view.View.OnClickListener
                                                            public final void onClick(View view2) {
                                                                int progress;
                                                                SettingVideoSub settingVideoSub5 = SettingVideoSub.this;
                                                                if (settingVideoSub5.o2 == null || r0.getProgress() - 1 < 0) {
                                                                    return;
                                                                }
                                                                settingVideoSub5.o2.setProgress(progress);
                                                            }
                                                        });
                                                        settingVideoSub4.q2.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingVideoSub.20
                                                            @Override // android.view.View.OnClickListener
                                                            public final void onClick(View view2) {
                                                                int progress;
                                                                SettingVideoSub settingVideoSub5 = SettingVideoSub.this;
                                                                SeekBar seekBar5 = settingVideoSub5.o2;
                                                                if (seekBar5 == null || (progress = seekBar5.getProgress() + 1) > settingVideoSub5.o2.getMax()) {
                                                                    return;
                                                                }
                                                                settingVideoSub5.o2.setProgress(progress);
                                                            }
                                                        });
                                                        settingVideoSub4.j2.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingVideoSub.21
                                                            @Override // android.view.View.OnClickListener
                                                            public final void onClick(View view2) {
                                                                int i25;
                                                                SettingVideoSub settingVideoSub5 = SettingVideoSub.this;
                                                                MySwitchView mySwitchView2 = settingVideoSub5.l2;
                                                                if (mySwitchView2 != null) {
                                                                    boolean z = !settingVideoSub5.A2;
                                                                    settingVideoSub5.A2 = z;
                                                                    mySwitchView2.b(z, true);
                                                                    VideoSubLayout2 videoSubLayout2 = settingVideoSub5.J1;
                                                                    boolean z2 = settingVideoSub5.A2;
                                                                    AppCompatTextView appCompatTextView11 = videoSubLayout2.y;
                                                                    if (appCompatTextView11 == null) {
                                                                        return;
                                                                    }
                                                                    if (z2) {
                                                                        i25 = 0;
                                                                    } else {
                                                                        i25 = 8;
                                                                    }
                                                                    appCompatTextView11.setVisibility(i25);
                                                                }
                                                            }
                                                        });
                                                        settingVideoSub4.l2.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingVideoSub.22
                                                            @Override // android.view.View.OnClickListener
                                                            public final void onClick(View view2) {
                                                                int i25;
                                                                SettingVideoSub settingVideoSub5 = SettingVideoSub.this;
                                                                MySwitchView mySwitchView2 = settingVideoSub5.l2;
                                                                if (mySwitchView2 != null) {
                                                                    boolean z = !settingVideoSub5.A2;
                                                                    settingVideoSub5.A2 = z;
                                                                    mySwitchView2.b(z, true);
                                                                    VideoSubLayout2 videoSubLayout2 = settingVideoSub5.J1;
                                                                    boolean z2 = settingVideoSub5.A2;
                                                                    AppCompatTextView appCompatTextView11 = videoSubLayout2.y;
                                                                    if (appCompatTextView11 == null) {
                                                                        return;
                                                                    }
                                                                    if (z2) {
                                                                        i25 = 0;
                                                                    } else {
                                                                        i25 = 8;
                                                                    }
                                                                    appCompatTextView11.setVisibility(i25);
                                                                }
                                                            }
                                                        });
                                                        settingVideoSub4.h2.setType(1);
                                                        settingVideoSub4.h2.setBorder(-12632257);
                                                        settingVideoSub4.h2.setListener(new MyPaletteView.PaletteListener() { // from class: com.mycompany.app.setting.SettingVideoSub.23
                                                            @Override // com.mycompany.app.view.MyPaletteView.PaletteListener
                                                            public final void a(float f, int i25) {
                                                                SettingVideoSub settingVideoSub5 = SettingVideoSub.this;
                                                                settingVideoSub5.x2 = i25;
                                                                settingVideoSub5.y2 = f;
                                                                settingVideoSub5.O0();
                                                            }
                                                        });
                                                        settingVideoSub4.t2.setType(1);
                                                        settingVideoSub4.t2.setBorder(-12632257);
                                                        settingVideoSub4.t2.setListener(new MyPaletteView.PaletteListener() { // from class: com.mycompany.app.setting.SettingVideoSub.24
                                                            @Override // com.mycompany.app.view.MyPaletteView.PaletteListener
                                                            public final void a(float f, int i25) {
                                                                SettingVideoSub settingVideoSub5 = SettingVideoSub.this;
                                                                settingVideoSub5.C2 = i25;
                                                                settingVideoSub5.D2 = f;
                                                                settingVideoSub5.N0();
                                                            }
                                                        });
                                                        MyMainRelative myMainRelative3 = settingVideoSub4.C1;
                                                        if (myMainRelative3 == null) {
                                                            return;
                                                        }
                                                        myMainRelative3.post(new AnonymousClass25());
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
        });
    }

    @Override // com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        GlideRequests glideRequests = this.P2;
        if (glideRequests != null) {
            MyRoundImage myRoundImage = this.I1;
            if (myRoundImage != null) {
                glideRequests.o(myRoundImage);
            }
            this.P2 = null;
        }
        MyButtonImage myButtonImage = this.D1;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.D1 = null;
        }
        MyButtonImage myButtonImage2 = this.F1;
        if (myButtonImage2 != null) {
            myButtonImage2.j();
            this.F1 = null;
        }
        MyButtonImage myButtonImage3 = this.G1;
        if (myButtonImage3 != null) {
            myButtonImage3.j();
            this.G1 = null;
        }
        MyRoundItem myRoundItem = this.H1;
        if (myRoundItem != null) {
            myRoundItem.b();
            this.H1 = null;
        }
        MyRoundImage myRoundImage2 = this.I1;
        if (myRoundImage2 != null) {
            myRoundImage2.k();
            this.I1 = null;
        }
        VideoSubLayout2 videoSubLayout2 = this.J1;
        if (videoSubLayout2 != null) {
            videoSubLayout2.f();
            this.J1 = null;
        }
        MyButtonImage myButtonImage4 = this.S1;
        if (myButtonImage4 != null) {
            myButtonImage4.j();
            this.S1 = null;
        }
        MyButtonImage myButtonImage5 = this.T1;
        if (myButtonImage5 != null) {
            myButtonImage5.j();
            this.T1 = null;
        }
        MyButtonImage myButtonImage6 = this.Y1;
        if (myButtonImage6 != null) {
            myButtonImage6.j();
            this.Y1 = null;
        }
        MyButtonImage myButtonImage7 = this.Z1;
        if (myButtonImage7 != null) {
            myButtonImage7.j();
            this.Z1 = null;
        }
        MyButtonImage myButtonImage8 = this.d2;
        if (myButtonImage8 != null) {
            myButtonImage8.j();
            this.d2 = null;
        }
        MyButtonImage myButtonImage9 = this.e2;
        if (myButtonImage9 != null) {
            myButtonImage9.j();
            this.e2 = null;
        }
        MyButtonCheck[] myButtonCheckArr = this.g2;
        if (myButtonCheckArr != null) {
            int length = myButtonCheckArr.length;
            for (int i = 0; i < length; i++) {
                MyButtonCheck myButtonCheck = this.g2[i];
                if (myButtonCheck != null) {
                    myButtonCheck.l();
                    this.g2[i] = null;
                }
            }
            this.g2 = null;
        }
        MyPaletteView myPaletteView = this.h2;
        if (myPaletteView != null) {
            myPaletteView.a();
            this.h2 = null;
        }
        MyLineFrame myLineFrame = this.j2;
        if (myLineFrame != null) {
            myLineFrame.g();
            this.j2 = null;
        }
        MySwitchView mySwitchView = this.l2;
        if (mySwitchView != null) {
            mySwitchView.a();
            this.l2 = null;
        }
        MyButtonImage myButtonImage10 = this.p2;
        if (myButtonImage10 != null) {
            myButtonImage10.j();
            this.p2 = null;
        }
        MyButtonImage myButtonImage11 = this.q2;
        if (myButtonImage11 != null) {
            myButtonImage11.j();
            this.q2 = null;
        }
        MyButtonCheck[] myButtonCheckArr2 = this.s2;
        if (myButtonCheckArr2 != null) {
            int length2 = myButtonCheckArr2.length;
            for (int i2 = 0; i2 < length2; i2++) {
                MyButtonCheck myButtonCheck2 = this.s2[i2];
                if (myButtonCheck2 != null) {
                    myButtonCheck2.l();
                    this.s2[i2] = null;
                }
            }
            this.s2 = null;
        }
        MyPaletteView myPaletteView2 = this.t2;
        if (myPaletteView2 != null) {
            myPaletteView2.a();
            this.t2 = null;
        }
        this.C1 = null;
        this.E1 = null;
        this.K1 = null;
        this.L1 = null;
        this.M1 = null;
        this.O1 = null;
        this.P1 = null;
        this.Q1 = null;
        this.R1 = null;
        this.U1 = null;
        this.V1 = null;
        this.W1 = null;
        this.X1 = null;
        this.a2 = null;
        this.b2 = null;
        this.c2 = null;
        this.f2 = null;
        this.i2 = null;
        this.k2 = null;
        this.m2 = null;
        this.n2 = null;
        this.o2 = null;
        this.r2 = null;
    }

    @Override // com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        super.onPause();
        if (isFinishing()) {
            I0();
            J0();
        }
    }
}
