package com.mycompany.app.setting;

import android.content.DialogInterface;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.widget.NestedScrollView;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.internal.mlkit_vision_text_common.a;
import com.mycompany.app.dialog.DialogSaveConfirm;
import com.mycompany.app.dialog.DialogSeekAudio;
import com.mycompany.app.dialog.DialogSetFull;
import com.mycompany.app.dialog.DialogSetMsg;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefRead;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.pref.PrefZone;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyFadeFrame;
import com.mycompany.app.view.MyFadeListener;
import com.mycompany.app.view.MyHeaderView;
import com.mycompany.app.view.MyLineFrame;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyMainRelative;
import com.mycompany.app.view.MyPopupAdapter;
import com.mycompany.app.view.MyPopupMenu;
import com.mycompany.app.view.MyRoundImage;
import com.mycompany.app.view.MyRoundItem;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class SettingSwipe extends CastActivity {
    public static final /* synthetic */ int e2 = 0;
    public int C1;
    public MyMainRelative D1;
    public MyButtonImage E1;
    public AppCompatTextView F1;
    public MyButtonImage G1;
    public MyButtonImage H1;
    public MyButtonImage I1;
    public MyRoundItem J1;
    public MyLineFrame[] K1;
    public MyLineText[] L1;
    public MyRoundImage[] M1;
    public MyPopupMenu N1;
    public DialogSetMsg O1;
    public DialogSaveConfirm P1;
    public MyDialogBottom Q1;
    public boolean R1;
    public int[] S1;
    public int[] T1;
    public int[] U1;
    public float V1;
    public float W1;
    public int X1;
    public ViewGroup.LayoutParams Y1;
    public int Z1;
    public int a2;
    public boolean b2;
    public MyFadeFrame c2;
    public MyDialogLinear d2;

    /* renamed from: com.mycompany.app.setting.SettingSwipe$7, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass7 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    public final void D0() {
        MyDialogBottom myDialogBottom = this.Q1;
        if (myDialogBottom != null) {
            myDialogBottom.dismiss();
            this.Q1 = null;
        }
    }

    public final void E0() {
        DialogSetMsg dialogSetMsg = this.O1;
        if (dialogSetMsg != null) {
            dialogSetMsg.dismiss();
            this.O1 = null;
        }
    }

    public final void F0() {
        DialogSaveConfirm dialogSaveConfirm = this.P1;
        if (dialogSaveConfirm != null) {
            dialogSaveConfirm.dismiss();
            this.P1 = null;
        }
    }

    public final boolean G0() {
        int[] iArr;
        int[] iArr2 = this.S1;
        if (iArr2 == null || (iArr = this.T1) == null) {
            return false;
        }
        if (iArr2[0] == PrefZone.K && iArr2[1] == PrefZone.L && iArr2[2] == PrefZone.M && iArr2[3] == PrefZone.N && iArr2[4] == PrefZone.O && iArr[0] == PrefZone.P && iArr[1] == PrefZone.Q && iArr[2] == PrefZone.R && iArr[3] == PrefZone.S) {
            int[] iArr3 = this.U1;
            if (iArr3[0] == PrefZone.T && iArr3[1] == PrefZone.U && iArr3[2] == PrefZone.V && iArr3[3] == PrefZone.W) {
                return false;
            }
        }
        return true;
    }

    public final void H0(boolean z) {
        if (this.S1 != null && this.T1 != null && !this.R1) {
            this.R1 = true;
            if (G0()) {
                int[] iArr = this.S1;
                PrefZone.K = iArr[0];
                PrefZone.L = iArr[1];
                PrefZone.M = iArr[2];
                PrefZone.N = iArr[3];
                PrefZone.O = iArr[4];
                int[] iArr2 = this.T1;
                PrefZone.P = iArr2[0];
                PrefZone.Q = iArr2[1];
                PrefZone.R = iArr2[2];
                PrefZone.S = iArr2[3];
                int[] iArr3 = this.U1;
                PrefZone.T = iArr3[0];
                PrefZone.U = iArr3[1];
                PrefZone.V = iArr3[2];
                PrefZone.W = iArr3[3];
                PrefZone r = PrefZone.r(this.f1, false);
                if (z) {
                    r.n(PrefZone.K, "mGesTop");
                    r.n(PrefZone.L, "mGesBot");
                    r.n(PrefZone.M, "mGesLeft");
                    r.n(PrefZone.N, "mGesRight");
                    r.n(PrefZone.O, "mGesCenter");
                    r.n(PrefZone.P, "mPortAreaTop");
                    r.n(PrefZone.Q, "mPortAreaBot");
                    r.n(PrefZone.R, "mPortAreaLeft");
                    r.n(PrefZone.S, "mPortAreaRight");
                    r.n(PrefZone.T, "mLandAreaTop");
                    r.n(PrefZone.U, "mLandAreaBot");
                    r.n(PrefZone.V, "mLandAreaLeft");
                    r.n(PrefZone.W, "mLandAreaRight");
                } else {
                    r.q("mGesTop");
                    r.q("mGesBot");
                    r.q("mGesLeft");
                    r.q("mGesRight");
                    r.q("mGesCenter");
                    r.q("mPortAreaTop");
                    r.q("mPortAreaBot");
                    r.q("mPortAreaLeft");
                    r.q("mPortAreaRight");
                    r.q("mLandAreaTop");
                    r.q("mLandAreaBot");
                    r.q("mLandAreaLeft");
                    r.q("mLandAreaRight");
                }
                r.a();
            }
            if (z) {
                finish();
            } else {
                this.R1 = false;
            }
        }
    }

    public final boolean I0(int i, ViewGroup.LayoutParams layoutParams, int i2, boolean z, boolean z2) {
        MyLineFrame myLineFrame;
        MyLineFrame myLineFrame2;
        if (i >= 0 && i < 4 && layoutParams != null && this.T1 != null && this.U1 != null) {
            if (i != 0 && i != 1) {
                if (z) {
                    int i3 = MainApp.E1;
                    if (i2 < i3) {
                        i2 = i3;
                    } else if (i2 > layoutParams.width && (myLineFrame2 = this.K1[4]) != null) {
                        int width = (layoutParams.width + myLineFrame2.getWidth()) - this.C1;
                        if (i2 > width) {
                            i2 = width;
                        }
                    }
                }
                if (layoutParams.width != i2) {
                    layoutParams.width = i2;
                } else {
                    return false;
                }
            } else {
                if (z) {
                    int i4 = MainApp.Y0;
                    if (i2 < i4) {
                        i2 = i4;
                    } else if (i2 > layoutParams.height && (myLineFrame = this.K1[4]) != null) {
                        int height = (layoutParams.height + myLineFrame.getHeight()) - this.C1;
                        if (i2 > height) {
                            i2 = height;
                        }
                    }
                }
                if (layoutParams.height != i2) {
                    layoutParams.height = i2;
                } else {
                    return false;
                }
            }
            if (z2) {
                this.U1[i] = i2;
                return true;
            }
            this.T1[i] = i2;
            return true;
        }
        return false;
    }

    public final void J0(int i, int i2) {
        MyLineText[] myLineTextArr = this.L1;
        if (myLineTextArr == null) {
            return;
        }
        if (i != 2 && i != 3) {
            if (i2 == 0) {
                myLineTextArr[i].setText(" P ");
                return;
            } else if (i2 == 1) {
                myLineTextArr[i].setText(" T ");
                return;
            } else {
                myLineTextArr[i].setText(" X ");
                return;
            }
        }
        if (i2 == 0) {
            myLineTextArr[i].setText("P");
        } else if (i2 == 1) {
            myLineTextArr[i].setText(RequestConfiguration.MAX_AD_CONTENT_RATING_T);
        } else {
            myLineTextArr[i].setText("S");
        }
    }

    public final void K0() {
        if (this.O1 != null || this.P1 != null || this.Q1 != null) {
            return;
        }
        F0();
        DialogSaveConfirm dialogSaveConfirm = new DialogSaveConfirm(this, new DialogSeekAudio.DialogSeekListener() { // from class: com.mycompany.app.setting.SettingSwipe.16
            @Override // com.mycompany.app.dialog.DialogSeekAudio.DialogSeekListener
            public final void a(int i) {
                int i2 = SettingSwipe.e2;
                SettingSwipe settingSwipe = SettingSwipe.this;
                settingSwipe.F0();
                if (i == 0) {
                    settingSwipe.H0(true);
                } else {
                    settingSwipe.finish();
                }
            }
        });
        this.P1 = dialogSaveConfirm;
        dialogSaveConfirm.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingSwipe.17
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                int i = SettingSwipe.e2;
                SettingSwipe.this.F0();
            }
        });
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x001b, code lost:
    
        if (r1 != 3) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0033, code lost:
    
        if (r9.Y1 == null) goto L15;
     */
    @Override // com.mycompany.app.main.MainActivity, android.app.Activity, android.view.Window.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean dispatchTouchEvent(android.view.MotionEvent r10) {
        /*
            Method dump skipped, instructions count: 292
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.setting.SettingSwipe.dispatchTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // com.mycompany.app.main.MainActivity
    public final void l0() {
        if (this.R1) {
            return;
        }
        if (G0()) {
            K0();
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
        SettingSwipe settingSwipe;
        super.onConfigurationChanged(configuration);
        if (this.F1 != null && this.S1 != null) {
            boolean h0 = h0();
            if (h0) {
                this.F1.setText(R.string.view_land);
            } else {
                this.F1.setText(R.string.view_port);
            }
            for (int i2 = 0; i2 < 5; i2++) {
                if (i2 < 4) {
                    ViewGroup.LayoutParams layoutParams = this.K1[i2].getLayoutParams();
                    if (h0) {
                        settingSwipe = this;
                        settingSwipe.I0(i2, layoutParams, this.U1[i2], false, true);
                    } else {
                        settingSwipe = this;
                        settingSwipe.I0(i2, layoutParams, settingSwipe.T1[i2], false, false);
                    }
                } else {
                    settingSwipe = this;
                }
                J0(i2, settingSwipe.S1[i2]);
            }
        }
        MainApp.K1 = MainUtil.i5(true, configuration);
        MainApp.L1 = MainUtil.i5(false, configuration);
        boolean z = this.b2;
        boolean z2 = MainApp.K1;
        if (z != z2) {
            this.b2 = z2;
            MyMainRelative myMainRelative = this.D1;
            if (myMainRelative != null) {
                try {
                    Window window = getWindow();
                    if (MainApp.K1) {
                        i = -16777216;
                    } else {
                        i = -460552;
                    }
                    myMainRelative.b(window, i);
                    if (MainApp.K1) {
                        this.E1.setImageResource(R.drawable.outline_chevron_left_dark_24);
                        this.F1.setTextColor(-328966);
                        this.G1.setImageResource(R.drawable.outline_replay_dark_20);
                        this.H1.setImageResource(R.drawable.outline_check_dark_20);
                        this.I1.setImageResource(R.drawable.outline_help_dark_20);
                        this.J1.setBackgroundColor(-14606047);
                        this.E1.setBgPreColor(-12632257);
                        this.G1.setBgPreColor(-12632257);
                        this.H1.setBgPreColor(-12632257);
                        this.I1.setBgPreColor(-12632257);
                    } else {
                        this.E1.setImageResource(R.drawable.outline_chevron_left_black_24);
                        this.F1.setTextColor(-16777216);
                        this.G1.setImageResource(R.drawable.outline_replay_black_20);
                        this.H1.setImageResource(R.drawable.outline_check_black_20);
                        this.I1.setImageResource(R.drawable.outline_help_black_20);
                        this.J1.setBackgroundColor(-1);
                        this.E1.setBgPreColor(553648128);
                        this.G1.setBgPreColor(553648128);
                        this.H1.setBgPreColor(553648128);
                        this.I1.setBgPreColor(553648128);
                    }
                    MyLineFrame[] myLineFrameArr = this.K1;
                    if (myLineFrameArr != null) {
                        int length = myLineFrameArr.length;
                        for (int i3 = 0; i3 < length; i3++) {
                            if (MainApp.K1) {
                                this.K1[i3].setLineColor(-328966);
                                this.K1[i3].setBackgroundResource(R.drawable.selector_normal_dark);
                                this.L1[i3].setTextColor(-328966);
                            } else {
                                this.K1[i3].setLineColor(-16777216);
                                this.K1[i3].setBackgroundResource(R.drawable.selector_normal);
                                this.L1[i3].setTextColor(-16777216);
                            }
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
        super.onCreate(bundle);
        MainUtil.v7(this, 4);
        this.C1 = MainApp.i1 * 2;
        this.b2 = MainApp.K1;
        this.S1 = r4;
        int[] iArr = {PrefZone.K, PrefZone.L, PrefZone.M, PrefZone.N, PrefZone.O};
        this.T1 = r4;
        int[] iArr2 = {PrefZone.P, PrefZone.Q, PrefZone.R, PrefZone.S};
        this.U1 = r4;
        int[] iArr3 = {PrefZone.T, PrefZone.U, PrefZone.V, PrefZone.W};
        int i = R.id.set_icon_reset;
        int i2 = R.id.set_icon_apply;
        int i3 = R.id.set_icon_help;
        int i4 = R.id.area_view_1;
        int i5 = R.id.area_view_2;
        int i6 = R.id.area_view_3;
        int i7 = R.id.area_view_4;
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
        RelativeLayout.LayoutParams h = a.h(appCompatTextView, 1, 18.0f, -1, -1);
        h.addRule(16, i);
        h.setMarginStart(MainApp.i1);
        myHeaderView.addView(appCompatTextView, h);
        int G = (int) MainUtil.G(this, 14.0f);
        MyButtonImage myButtonImage2 = new MyButtonImage(this);
        myButtonImage2.setId(i);
        myButtonImage2.setPadding(G, G, G, G);
        myButtonImage2.setScaleType(scaleType);
        int i10 = MainApp.g1;
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(i10, i10);
        layoutParams2.addRule(16, i2);
        layoutParams2.topMargin = MainApp.G1;
        myHeaderView.addView(myButtonImage2, layoutParams2);
        MyButtonImage myButtonImage3 = new MyButtonImage(this);
        myButtonImage3.setId(i2);
        myButtonImage3.setPadding(G, G, G, G);
        myButtonImage3.setScaleType(scaleType);
        int i11 = MainApp.g1;
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(i11, i11);
        layoutParams3.addRule(16, i3);
        layoutParams3.topMargin = MainApp.G1;
        myHeaderView.addView(myButtonImage3, layoutParams3);
        MyButtonImage myButtonImage4 = new MyButtonImage(this);
        myButtonImage4.setId(i3);
        myButtonImage4.setPadding(G, G, G, G);
        myButtonImage4.setScaleType(scaleType);
        int i12 = MainApp.g1;
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(i12, i12);
        layoutParams4.addRule(16, i8);
        layoutParams4.topMargin = MainApp.G1;
        myHeaderView.addView(myButtonImage4, layoutParams4);
        FrameLayout frameLayout = new FrameLayout(this);
        frameLayout.setId(i8);
        frameLayout.setVisibility(4);
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-2, MainApp.b1);
        layoutParams5.addRule(21);
        myHeaderView.addView(frameLayout, layoutParams5);
        MyRoundItem myRoundItem = new MyRoundItem(this);
        myRoundItem.d(true, true);
        myRoundItem.setLayoutDirection(0);
        RelativeLayout.LayoutParams h2 = androidx.work.impl.workers.a.h(-1, -1, 2, i9);
        h2.topMargin = MainApp.b1;
        myMainRelative.addView(myRoundItem, h2);
        MyLineFrame myLineFrame = new MyLineFrame(this);
        myLineFrame.setId(i4);
        myLineFrame.a(0);
        myRoundItem.addView(myLineFrame, -1, -1);
        MyLineText myLineText = new MyLineText(this);
        myLineText.setGravity(17);
        myLineText.setTextSize(1, 20.0f);
        FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams6.gravity = 17;
        myLineFrame.addView(myLineText, layoutParams6);
        MyLineFrame myLineFrame2 = new MyLineFrame(this);
        myLineFrame2.setId(i5);
        myLineFrame2.d(0);
        RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams7.addRule(12);
        myRoundItem.addView(myLineFrame2, layoutParams7);
        MyLineText myLineText2 = new MyLineText(this);
        myLineText2.setGravity(17);
        myLineText2.setTextSize(1, 20.0f);
        FrameLayout.LayoutParams layoutParams8 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams8.gravity = 17;
        myLineFrame2.addView(myLineText2, layoutParams8);
        MyLineFrame myLineFrame3 = new MyLineFrame(this);
        myLineFrame3.setId(i6);
        myLineFrame3.c();
        RelativeLayout.LayoutParams h3 = androidx.work.impl.workers.a.h(-1, -1, 3, i4);
        h3.addRule(2, i5);
        myRoundItem.addView(myLineFrame3, h3);
        MyLineText myLineText3 = new MyLineText(this);
        myLineText3.setGravity(17);
        myLineText3.setTextSize(1, 20.0f);
        FrameLayout.LayoutParams layoutParams9 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams9.gravity = 17;
        myLineFrame3.addView(myLineText3, layoutParams9);
        MyLineFrame myLineFrame4 = new MyLineFrame(this);
        myLineFrame4.setId(i7);
        myLineFrame4.b();
        RelativeLayout.LayoutParams h4 = androidx.work.impl.workers.a.h(-1, -1, 3, i4);
        h4.addRule(2, i5);
        h4.addRule(21);
        h4.addRule(18, i7);
        myRoundItem.addView(myLineFrame4, h4);
        MyLineText myLineText4 = new MyLineText(this);
        myLineText4.setGravity(17);
        myLineText4.setTextSize(1, 20.0f);
        FrameLayout.LayoutParams layoutParams10 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams10.gravity = 17;
        myLineFrame4.addView(myLineText4, layoutParams10);
        MyLineFrame myLineFrame5 = new MyLineFrame(this);
        RelativeLayout.LayoutParams h5 = androidx.work.impl.workers.a.h(-1, -1, 3, i4);
        h5.addRule(2, i5);
        h5.addRule(17, i6);
        h5.addRule(16, i7);
        myRoundItem.addView(myLineFrame5, h5);
        MyLineText myLineText5 = new MyLineText(this);
        myLineText5.setGravity(17);
        myLineText5.setTextSize(1, 20.0f);
        FrameLayout.LayoutParams layoutParams11 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams11.gravity = 17;
        myLineFrame5.addView(myLineText5, layoutParams11);
        MyRoundImage myRoundImage = new MyRoundImage(this);
        myRoundImage.setScaleType(scaleType);
        myRoundImage.setCircleRadius(MainApp.j1);
        int i13 = MainApp.g1;
        FrameLayout.LayoutParams layoutParams12 = new FrameLayout.LayoutParams(i13, i13);
        layoutParams12.gravity = 49;
        layoutParams12.topMargin = MainApp.F1;
        myLineFrame5.addView(myRoundImage, layoutParams12);
        MyRoundImage myRoundImage2 = new MyRoundImage(this);
        myRoundImage2.setScaleType(scaleType);
        myRoundImage2.setCircleRadius(MainApp.j1);
        int i14 = MainApp.g1;
        FrameLayout.LayoutParams layoutParams13 = new FrameLayout.LayoutParams(i14, i14);
        layoutParams13.gravity = 81;
        layoutParams13.bottomMargin = MainApp.F1;
        myLineFrame5.addView(myRoundImage2, layoutParams13);
        MyRoundImage myRoundImage3 = new MyRoundImage(this);
        myRoundImage3.setScaleType(scaleType);
        myRoundImage3.setCircleRadius(MainApp.j1);
        int i15 = MainApp.g1;
        FrameLayout.LayoutParams layoutParams14 = new FrameLayout.LayoutParams(i15, i15);
        layoutParams14.gravity = 8388627;
        layoutParams14.setMarginStart(MainApp.F1);
        myLineFrame5.addView(myRoundImage3, layoutParams14);
        MyRoundImage myRoundImage4 = new MyRoundImage(this);
        myRoundImage4.setScaleType(scaleType);
        myRoundImage4.setCircleRadius(MainApp.j1);
        int i16 = MainApp.g1;
        FrameLayout.LayoutParams layoutParams15 = new FrameLayout.LayoutParams(i16, i16);
        layoutParams15.gravity = 8388629;
        layoutParams15.setMarginEnd(MainApp.F1);
        myLineFrame5.addView(myRoundImage4, layoutParams15);
        FrameLayout frameLayout2 = new FrameLayout(this);
        frameLayout2.setId(i9);
        frameLayout2.setVisibility(8);
        RelativeLayout.LayoutParams layoutParams16 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams16.addRule(12);
        myMainRelative.addView(frameLayout2, layoutParams16);
        this.D1 = myMainRelative;
        this.E1 = myButtonImage;
        this.F1 = appCompatTextView;
        this.G1 = myButtonImage2;
        this.H1 = myButtonImage3;
        this.I1 = myButtonImage4;
        this.J1 = myRoundItem;
        this.K1 = r4;
        this.L1 = r3;
        this.M1 = r8;
        MyLineFrame[] myLineFrameArr = {myLineFrame, myLineFrame2, myLineFrame3, myLineFrame4, myLineFrame5};
        MyLineText[] myLineTextArr = {myLineText, myLineText2, myLineText3, myLineText4, myLineText5};
        MyRoundImage[] myRoundImageArr = {myRoundImage, myRoundImage2, myRoundImage3, myRoundImage4};
        B0(myMainRelative, frameLayout, frameLayout2);
        this.D1.setWindow(getWindow());
        initMainScreenOn(this.D1);
        Handler handler = this.O0;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.setting.SettingSwipe.1
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r4v2, types: [android.view.View$OnClickListener, java.lang.Object] */
            @Override // java.lang.Runnable
            public final void run() {
                final SettingSwipe settingSwipe = SettingSwipe.this;
                if (settingSwipe.D1 != null) {
                    if (MainApp.K1) {
                        settingSwipe.E1.setImageResource(R.drawable.outline_chevron_left_dark_24);
                        settingSwipe.F1.setTextColor(-328966);
                        settingSwipe.G1.setImageResource(R.drawable.outline_replay_dark_20);
                        settingSwipe.H1.setImageResource(R.drawable.outline_check_dark_20);
                        settingSwipe.I1.setImageResource(R.drawable.outline_help_dark_20);
                        settingSwipe.J1.setBackgroundColor(-14606047);
                        settingSwipe.E1.setBgPreColor(-12632257);
                        settingSwipe.G1.setBgPreColor(-12632257);
                        settingSwipe.H1.setBgPreColor(-12632257);
                        settingSwipe.I1.setBgPreColor(-12632257);
                    } else {
                        settingSwipe.E1.setImageResource(R.drawable.outline_chevron_left_black_24);
                        settingSwipe.F1.setTextColor(-16777216);
                        settingSwipe.G1.setImageResource(R.drawable.outline_replay_black_20);
                        settingSwipe.H1.setImageResource(R.drawable.outline_check_black_20);
                        settingSwipe.I1.setImageResource(R.drawable.outline_help_black_20);
                        settingSwipe.J1.setBackgroundColor(-1);
                        settingSwipe.E1.setBgPreColor(553648128);
                        settingSwipe.G1.setBgPreColor(553648128);
                        settingSwipe.H1.setBgPreColor(553648128);
                        settingSwipe.I1.setBgPreColor(553648128);
                    }
                    boolean h0 = settingSwipe.h0();
                    if (h0) {
                        settingSwipe.F1.setText(R.string.view_land);
                    } else {
                        settingSwipe.F1.setText(R.string.view_port);
                    }
                    settingSwipe.E1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingSwipe.2
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            int i17 = SettingSwipe.e2;
                            SettingSwipe settingSwipe2 = SettingSwipe.this;
                            if (settingSwipe2.G0()) {
                                settingSwipe2.K0();
                            } else {
                                settingSwipe2.finish();
                            }
                        }
                    });
                    settingSwipe.G1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingSwipe.3
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            int i17 = SettingSwipe.e2;
                            final SettingSwipe settingSwipe2 = SettingSwipe.this;
                            if (settingSwipe2.O1 != null || settingSwipe2.P1 != null || settingSwipe2.Q1 != null) {
                                return;
                            }
                            settingSwipe2.E0();
                            DialogSetMsg dialogSetMsg = new DialogSetMsg(settingSwipe2, R.string.reset_setting, R.string.reset, new DialogSetFull.DialogApplyListener() { // from class: com.mycompany.app.setting.SettingSwipe.14
                                @Override // com.mycompany.app.dialog.DialogSetFull.DialogApplyListener
                                public final void a() {
                                    int[] iArr4;
                                    int i18;
                                    int i19 = SettingSwipe.e2;
                                    SettingSwipe settingSwipe3 = SettingSwipe.this;
                                    settingSwipe3.E0();
                                    int[] iArr5 = settingSwipe3.S1;
                                    if (iArr5 != null && (iArr4 = settingSwipe3.T1) != null) {
                                        if (Build.VERSION.SDK_INT >= 29) {
                                            i18 = 2;
                                        } else {
                                            i18 = 0;
                                        }
                                        int i20 = MainApp.D1;
                                        iArr5[0] = 1;
                                        iArr5[1] = 1;
                                        iArr5[2] = i18;
                                        iArr5[3] = i18;
                                        iArr5[4] = 2;
                                        int i21 = MainApp.Y0;
                                        iArr4[0] = i21;
                                        iArr4[1] = i21;
                                        iArr4[2] = i20;
                                        iArr4[3] = i20;
                                        int[] iArr6 = settingSwipe3.U1;
                                        iArr6[0] = i21;
                                        iArr6[1] = i21;
                                        int i22 = MainApp.f1;
                                        iArr6[2] = i22;
                                        iArr6[3] = i22;
                                        boolean h02 = settingSwipe3.h0();
                                        for (int i23 = 0; i23 < 5; i23++) {
                                            if (i23 < 4) {
                                                ViewGroup.LayoutParams layoutParams17 = settingSwipe3.K1[i23].getLayoutParams();
                                                if (h02) {
                                                    settingSwipe3.I0(i23, layoutParams17, settingSwipe3.U1[i23], false, true);
                                                } else {
                                                    settingSwipe3.I0(i23, layoutParams17, settingSwipe3.T1[i23], false, false);
                                                }
                                            }
                                            settingSwipe3.J0(i23, settingSwipe3.S1[i23]);
                                        }
                                        settingSwipe3.H0(false);
                                    }
                                }
                            });
                            settingSwipe2.O1 = dialogSetMsg;
                            dialogSetMsg.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingSwipe.15
                                @Override // android.content.DialogInterface.OnDismissListener
                                public final void onDismiss(DialogInterface dialogInterface) {
                                    int i18 = SettingSwipe.e2;
                                    SettingSwipe.this.E0();
                                }
                            });
                        }
                    });
                    settingSwipe.H1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingSwipe.4
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            SettingSwipe settingSwipe2 = SettingSwipe.this;
                            MyButtonImage myButtonImage5 = settingSwipe2.H1;
                            if (myButtonImage5 == null) {
                                return;
                            }
                            myButtonImage5.setClickable(false);
                            settingSwipe2.H1.post(new Runnable() { // from class: com.mycompany.app.setting.SettingSwipe.4.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    SettingSwipe settingSwipe3 = SettingSwipe.this;
                                    if (settingSwipe3.H1 == null) {
                                        return;
                                    }
                                    settingSwipe3.H0(true);
                                }
                            });
                        }
                    });
                    settingSwipe.I1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingSwipe.5
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            final SettingSwipe settingSwipe2 = SettingSwipe.this;
                            MyButtonImage myButtonImage5 = settingSwipe2.I1;
                            if (myButtonImage5 != null) {
                                myButtonImage5.setNoti(false);
                                if (settingSwipe2.O1 == null && settingSwipe2.P1 == null && settingSwipe2.Q1 == null) {
                                    settingSwipe2.D0();
                                    Handler handler2 = settingSwipe2.O0;
                                    if (handler2 == null) {
                                        return;
                                    }
                                    handler2.post(new Runnable() { // from class: com.mycompany.app.setting.SettingSwipe.18
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            final SettingSwipe settingSwipe3 = SettingSwipe.this;
                                            if (settingSwipe3.Q1 == null) {
                                                MyDialogLinear myDialogLinear = new MyDialogLinear(settingSwipe3);
                                                myDialogLinear.setOrientation(1);
                                                MyLineFrame myLineFrame6 = new MyLineFrame(settingSwipe3);
                                                myLineFrame6.a(MainApp.E1);
                                                myDialogLinear.addView(myLineFrame6, -1, MainApp.g1);
                                                ImageView imageView = new ImageView(settingSwipe3);
                                                imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                                                int i17 = MainApp.f1;
                                                FrameLayout.LayoutParams layoutParams17 = new FrameLayout.LayoutParams(i17, i17);
                                                layoutParams17.gravity = 8388627;
                                                layoutParams17.setMarginStart(MainApp.E1);
                                                myLineFrame6.addView(imageView, layoutParams17);
                                                AppCompatTextView appCompatTextView2 = new AppCompatTextView(settingSwipe3, null);
                                                appCompatTextView2.setMaxLines(2);
                                                appCompatTextView2.setEllipsize(TextUtils.TruncateAt.END);
                                                appCompatTextView2.setTextSize(1, 16.0f);
                                                FrameLayout.LayoutParams d = a.d(appCompatTextView2, R.string.tip, -1, -2);
                                                d.gravity = 8388627;
                                                d.setMarginStart((int) MainUtil.G(settingSwipe3.f1, 64.0f));
                                                d.setMarginEnd(MainApp.E1);
                                                myLineFrame6.addView(appCompatTextView2, d);
                                                NestedScrollView nestedScrollView = new NestedScrollView(settingSwipe3, null);
                                                nestedScrollView.setOverScrollMode(2);
                                                LinearLayout.LayoutParams layoutParams18 = new LinearLayout.LayoutParams(-1, 0);
                                                layoutParams18.weight = 1.0f;
                                                myDialogLinear.addView(nestedScrollView, layoutParams18);
                                                LinearLayout linearLayout = new LinearLayout(settingSwipe3);
                                                int i18 = MainApp.E1;
                                                linearLayout.setPadding(i18, i18, i18, i18);
                                                linearLayout.setOrientation(1);
                                                linearLayout.setMinimumHeight((int) MainUtil.G(settingSwipe3.f1, 72.0f));
                                                nestedScrollView.addView(linearLayout, -1, -2);
                                                AppCompatTextView appCompatTextView3 = new AppCompatTextView(settingSwipe3, null);
                                                appCompatTextView3.setTextSize(1, 16.0f);
                                                linearLayout.addView(appCompatTextView3, -1, -2);
                                                int G2 = (int) MainUtil.G(settingSwipe3.f1, 22.0f);
                                                AppCompatTextView appCompatTextView4 = new AppCompatTextView(settingSwipe3, null);
                                                appCompatTextView4.setLineSpacing(MainApp.G1, 1.0f);
                                                appCompatTextView4.setTextSize(1, 14.0f);
                                                LinearLayout.LayoutParams layoutParams19 = new LinearLayout.LayoutParams(-1, -2);
                                                layoutParams19.topMargin = MainApp.F1;
                                                layoutParams19.setMarginStart(G2);
                                                linearLayout.addView(appCompatTextView4, layoutParams19);
                                                AppCompatTextView appCompatTextView5 = new AppCompatTextView(settingSwipe3, null);
                                                appCompatTextView5.setTextSize(1, 16.0f);
                                                LinearLayout.LayoutParams layoutParams20 = new LinearLayout.LayoutParams(-1, -2);
                                                layoutParams20.topMargin = MainApp.E1;
                                                linearLayout.addView(appCompatTextView5, layoutParams20);
                                                AppCompatTextView appCompatTextView6 = new AppCompatTextView(settingSwipe3, null);
                                                appCompatTextView6.setLineSpacing(MainApp.G1, 1.0f);
                                                appCompatTextView6.setTextSize(1, 14.0f);
                                                LinearLayout.LayoutParams layoutParams21 = new LinearLayout.LayoutParams(-1, -2);
                                                layoutParams21.topMargin = MainApp.F1;
                                                layoutParams21.setMarginStart(G2);
                                                linearLayout.addView(appCompatTextView6, layoutParams21);
                                                AppCompatTextView appCompatTextView7 = new AppCompatTextView(settingSwipe3, null);
                                                appCompatTextView7.setTextSize(1, 16.0f);
                                                LinearLayout.LayoutParams layoutParams22 = new LinearLayout.LayoutParams(-1, -2);
                                                layoutParams22.topMargin = MainApp.E1;
                                                linearLayout.addView(appCompatTextView7, layoutParams22);
                                                AppCompatTextView appCompatTextView8 = new AppCompatTextView(settingSwipe3, null);
                                                appCompatTextView8.setLineSpacing(MainApp.G1, 1.0f);
                                                appCompatTextView8.setTextSize(1, 14.0f);
                                                LinearLayout.LayoutParams layoutParams23 = new LinearLayout.LayoutParams(-1, -2);
                                                layoutParams23.topMargin = MainApp.F1;
                                                layoutParams23.setMarginStart(G2);
                                                linearLayout.addView(appCompatTextView8, layoutParams23);
                                                MyLineText myLineText6 = new MyLineText(settingSwipe3);
                                                myLineText6.setGravity(17);
                                                myLineText6.setTextSize(1, 16.0f);
                                                myLineText6.setText(R.string.ok);
                                                myLineText6.setLinePad(MainApp.E1);
                                                myLineText6.setLineUp(true);
                                                myDialogLinear.addView(myLineText6, -1, MainApp.g1);
                                                StringBuilder sb = new StringBuilder();
                                                sb.append(settingSwipe3.getString(R.string.prev_page));
                                                sb.append(" / ");
                                                sb.append(settingSwipe3.getString(R.string.next_page));
                                                StringBuilder sb2 = new StringBuilder();
                                                sb2.append(settingSwipe3.getString(R.string.prev_tab));
                                                sb2.append(" / ");
                                                sb2.append(settingSwipe3.getString(R.string.next_tab));
                                                appCompatTextView3.setText("P : " + settingSwipe3.getString(R.string.page_move));
                                                appCompatTextView4.setText(sb.toString());
                                                appCompatTextView5.setText("T : " + settingSwipe3.getString(R.string.tab_move));
                                                appCompatTextView6.setText(sb2.toString());
                                                appCompatTextView7.setText("S : " + settingSwipe3.getString(R.string.system_name));
                                                appCompatTextView8.setText(R.string.screen_info_system);
                                                if (MainApp.K1) {
                                                    imageView.setImageResource(R.drawable.outline_wb_incandescent_2_dark_24);
                                                    appCompatTextView2.setTextColor(-328966);
                                                    appCompatTextView3.setTextColor(-328966);
                                                    appCompatTextView4.setTextColor(-328966);
                                                    appCompatTextView5.setTextColor(-328966);
                                                    appCompatTextView6.setTextColor(-328966);
                                                    appCompatTextView7.setTextColor(-328966);
                                                    appCompatTextView8.setTextColor(-328966);
                                                    myLineText6.setBackgroundResource(R.drawable.selector_normal_dark);
                                                    myLineText6.setTextColor(-328966);
                                                } else {
                                                    imageView.setImageResource(R.drawable.outline_wb_incandescent_2_black_24);
                                                    appCompatTextView2.setTextColor(-16777216);
                                                    appCompatTextView3.setTextColor(-16777216);
                                                    appCompatTextView4.setTextColor(-16777216);
                                                    appCompatTextView5.setTextColor(-16777216);
                                                    appCompatTextView6.setTextColor(-16777216);
                                                    appCompatTextView7.setTextColor(-16777216);
                                                    appCompatTextView8.setTextColor(-16777216);
                                                    myLineText6.setBackgroundResource(R.drawable.selector_normal);
                                                    myLineText6.setTextColor(-14784824);
                                                }
                                                myLineText6.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingSwipe.19
                                                    @Override // android.view.View.OnClickListener
                                                    public final void onClick(View view2) {
                                                        int i19 = SettingSwipe.e2;
                                                        SettingSwipe.this.D0();
                                                    }
                                                });
                                                settingSwipe3.d2 = myDialogLinear;
                                                Handler handler3 = settingSwipe3.O0;
                                                if (handler3 == null) {
                                                    return;
                                                }
                                                handler3.post(new Runnable() { // from class: com.mycompany.app.setting.SettingSwipe.20
                                                    @Override // java.lang.Runnable
                                                    public final void run() {
                                                        final SettingSwipe settingSwipe4 = SettingSwipe.this;
                                                        if (settingSwipe4.Q1 == null) {
                                                            MyDialogLinear myDialogLinear2 = settingSwipe4.d2;
                                                            settingSwipe4.d2 = null;
                                                            if (myDialogLinear2 == null) {
                                                                return;
                                                            }
                                                            MyDialogBottom myDialogBottom = new MyDialogBottom(settingSwipe4);
                                                            settingSwipe4.Q1 = myDialogBottom;
                                                            myDialogBottom.g(myDialogLinear2, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.setting.SettingSwipe.21
                                                                @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                                                public final void a(View view2) {
                                                                    MyDialogBottom myDialogBottom2 = SettingSwipe.this.Q1;
                                                                    if (myDialogBottom2 == null) {
                                                                        return;
                                                                    }
                                                                    myDialogBottom2.show();
                                                                }
                                                            });
                                                            settingSwipe4.Q1.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingSwipe.22
                                                                @Override // android.content.DialogInterface.OnDismissListener
                                                                public final void onDismiss(DialogInterface dialogInterface) {
                                                                    int i19 = SettingSwipe.e2;
                                                                    SettingSwipe.this.D0();
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
                    for (int i17 = 0; i17 < 5; i17++) {
                        if (MainApp.K1) {
                            settingSwipe.K1[i17].setLineColor(-328966);
                            settingSwipe.K1[i17].setBackgroundResource(R.drawable.selector_normal_dark);
                            settingSwipe.L1[i17].setTextColor(-328966);
                        } else {
                            settingSwipe.K1[i17].setLineColor(-16777216);
                            settingSwipe.K1[i17].setBackgroundResource(R.drawable.selector_normal);
                            settingSwipe.L1[i17].setTextColor(-16777216);
                        }
                        settingSwipe.K1[i17].setTag(Integer.valueOf(i17));
                        settingSwipe.K1[i17].setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingSwipe.6
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                Object tag;
                                final int intValue;
                                MyPopupMenu myPopupMenu;
                                MyLineText myLineText6;
                                String str;
                                boolean z;
                                boolean z2;
                                final SettingSwipe settingSwipe2 = SettingSwipe.this;
                                if (settingSwipe2.K1 != null && view != null && (tag = view.getTag()) != null && (intValue = ((Integer) tag).intValue()) >= 0 && intValue < settingSwipe2.K1.length && (myPopupMenu = settingSwipe2.N1) == null) {
                                    if (myPopupMenu != null) {
                                        settingSwipe2.Z0 = null;
                                        myPopupMenu.a();
                                        settingSwipe2.N1 = null;
                                    }
                                    MyLineText[] myLineTextArr2 = settingSwipe2.L1;
                                    if (myLineTextArr2 != null && settingSwipe2.S1 != null && (myLineText6 = myLineTextArr2[intValue]) != null) {
                                        boolean z3 = false;
                                        myLineText6.setNotiTop(false);
                                        int i18 = settingSwipe2.S1[intValue];
                                        if (intValue != 2 && intValue != 3) {
                                            str = "X : " + settingSwipe2.getString(R.string.not_used);
                                        } else {
                                            str = "S : " + settingSwipe2.getString(R.string.system_name);
                                        }
                                        ArrayList arrayList = new ArrayList();
                                        String str2 = "P : " + settingSwipe2.getString(R.string.page_move);
                                        if (i18 == 0) {
                                            z = true;
                                        } else {
                                            z = false;
                                        }
                                        arrayList.add(new MyPopupAdapter.PopMenuItem(str2, 0, z));
                                        String str3 = "T : " + settingSwipe2.getString(R.string.tab_move);
                                        if (1 == i18) {
                                            z2 = true;
                                        } else {
                                            z2 = false;
                                        }
                                        arrayList.add(new MyPopupAdapter.PopMenuItem(str3, 1, z2));
                                        if (2 == i18) {
                                            z3 = true;
                                        }
                                        arrayList.add(new MyPopupAdapter.PopMenuItem(str, 2, z3));
                                        MyPopupMenu myPopupMenu2 = new MyPopupMenu(settingSwipe2, settingSwipe2.D1, myLineText6, arrayList, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.setting.SettingSwipe.9
                                            @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                            public final void a() {
                                                int i19 = SettingSwipe.e2;
                                                SettingSwipe settingSwipe3 = SettingSwipe.this;
                                                MyPopupMenu myPopupMenu3 = settingSwipe3.N1;
                                                if (myPopupMenu3 != null) {
                                                    settingSwipe3.Z0 = null;
                                                    myPopupMenu3.a();
                                                    settingSwipe3.N1 = null;
                                                }
                                            }

                                            @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                            public final boolean b(View view2, int i19) {
                                                SettingSwipe settingSwipe3 = SettingSwipe.this;
                                                int[] iArr4 = settingSwipe3.S1;
                                                if (iArr4 != null && i19 >= 0 && i19 < 3) {
                                                    int i20 = intValue;
                                                    iArr4[i20] = i19;
                                                    settingSwipe3.J0(i20, i19);
                                                }
                                                return true;
                                            }
                                        });
                                        settingSwipe2.N1 = myPopupMenu2;
                                        settingSwipe2.Z0 = myPopupMenu2;
                                    }
                                }
                            }
                        });
                        if (i17 < 4) {
                            ViewGroup.LayoutParams layoutParams17 = settingSwipe.K1[i17].getLayoutParams();
                            if (h0) {
                                settingSwipe.I0(i17, layoutParams17, settingSwipe.U1[i17], false, true);
                            } else {
                                settingSwipe.I0(i17, layoutParams17, settingSwipe.T1[i17], false, false);
                            }
                        }
                        settingSwipe.J0(i17, settingSwipe.S1[i17]);
                    }
                    for (int i18 = 0; i18 < 4; i18++) {
                        settingSwipe.M1[i18].setOnClickListener(new Object());
                    }
                    settingSwipe.M1[0].o(-509171222, R.drawable.outline_swipe_up);
                    settingSwipe.M1[1].o(-509171222, R.drawable.outline_swipe_up);
                    settingSwipe.M1[2].o(-509171222, R.drawable.outline_swipe_hori);
                    settingSwipe.M1[3].o(-509171222, R.drawable.outline_swipe_hori);
                    if (PrefRead.x) {
                        settingSwipe.L1[2].setNotiTop(true);
                        settingSwipe.L1[3].setNotiTop(true);
                        settingSwipe.I1.setNoti(true);
                        settingSwipe.D1.post(new Runnable() { // from class: com.mycompany.app.setting.SettingSwipe.8
                            @Override // java.lang.Runnable
                            public final void run() {
                                Handler handler2;
                                if (PrefRead.x) {
                                    final SettingSwipe settingSwipe2 = SettingSwipe.this;
                                    if (settingSwipe2.c2 == null && settingSwipe2.D1 != null && (handler2 = settingSwipe2.O0) != null) {
                                        handler2.post(new Runnable() { // from class: com.mycompany.app.setting.SettingSwipe.10
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                if (PrefRead.x) {
                                                    final SettingSwipe settingSwipe3 = SettingSwipe.this;
                                                    if (settingSwipe3.c2 == null && settingSwipe3.D1 != null) {
                                                        MyFadeFrame myFadeFrame = new MyFadeFrame(settingSwipe3);
                                                        int i19 = MainApp.F1;
                                                        myFadeFrame.setPadding(i19, i19, i19, i19);
                                                        FrameLayout frameLayout3 = new FrameLayout(settingSwipe3);
                                                        frameLayout3.setBackgroundResource(R.drawable.round_guide_8);
                                                        FrameLayout.LayoutParams layoutParams18 = new FrameLayout.LayoutParams(-1, -2);
                                                        layoutParams18.gravity = 8388691;
                                                        myFadeFrame.addView(frameLayout3, layoutParams18);
                                                        LinearLayout linearLayout = new LinearLayout(settingSwipe3);
                                                        int i20 = MainApp.E1;
                                                        linearLayout.setPadding(i20, i20, i20, i20);
                                                        linearLayout.setOrientation(1);
                                                        FrameLayout.LayoutParams layoutParams19 = new FrameLayout.LayoutParams(-2, -2);
                                                        layoutParams19.gravity = 1;
                                                        frameLayout3.addView(linearLayout, layoutParams19);
                                                        AppCompatTextView appCompatTextView2 = new AppCompatTextView(settingSwipe3, null);
                                                        appCompatTextView2.setLineSpacing(MainApp.G1, 1.0f);
                                                        appCompatTextView2.setTextSize(1, 16.0f);
                                                        appCompatTextView2.setTextColor(-1);
                                                        linearLayout.addView(appCompatTextView2, -2, -2);
                                                        AppCompatTextView appCompatTextView3 = new AppCompatTextView(settingSwipe3, null);
                                                        appCompatTextView3.setLineSpacing(MainApp.G1, 1.0f);
                                                        appCompatTextView3.setTextSize(1, 16.0f);
                                                        appCompatTextView3.setTextColor(-1);
                                                        LinearLayout.LayoutParams layoutParams20 = new LinearLayout.LayoutParams(-2, -2);
                                                        layoutParams20.topMargin = MainApp.E1;
                                                        linearLayout.addView(appCompatTextView3, layoutParams20);
                                                        AppCompatTextView appCompatTextView4 = new AppCompatTextView(settingSwipe3, null);
                                                        appCompatTextView4.setLineSpacing(MainApp.G1, 1.0f);
                                                        appCompatTextView4.setTextSize(1, 14.0f);
                                                        appCompatTextView4.setTextColor(-1);
                                                        LinearLayout.LayoutParams layoutParams21 = new LinearLayout.LayoutParams(-2, -2);
                                                        layoutParams21.topMargin = MainApp.E1 + MainApp.G1;
                                                        linearLayout.addView(appCompatTextView4, layoutParams21);
                                                        AppCompatTextView appCompatTextView5 = new AppCompatTextView(settingSwipe3, null);
                                                        appCompatTextView5.setLineSpacing(MainApp.G1, 1.0f);
                                                        appCompatTextView5.setTextSize(1, 14.0f);
                                                        appCompatTextView5.setTextColor(-1);
                                                        LinearLayout.LayoutParams layoutParams22 = new LinearLayout.LayoutParams(-2, -2);
                                                        layoutParams22.topMargin = MainApp.F1;
                                                        linearLayout.addView(appCompatTextView5, layoutParams22);
                                                        settingSwipe3.c2 = myFadeFrame;
                                                        appCompatTextView2.setText(R.string.swipe_guide_1);
                                                        appCompatTextView3.setText(R.string.swipe_guide_2);
                                                        appCompatTextView4.setText(R.string.double_tap_guide_1);
                                                        appCompatTextView5.setText(R.string.double_tap_guide_2);
                                                        settingSwipe3.c2.setListener(new MyFadeListener() { // from class: com.mycompany.app.setting.SettingSwipe.11
                                                            @Override // com.mycompany.app.view.MyFadeListener
                                                            public final void a(boolean z) {
                                                                SettingSwipe settingSwipe4;
                                                                MyFadeFrame myFadeFrame2;
                                                                if (!z && (myFadeFrame2 = (settingSwipe4 = SettingSwipe.this).c2) != null && settingSwipe4.D1 != null) {
                                                                    myFadeFrame2.f();
                                                                    settingSwipe4.D1.removeView(settingSwipe4.c2);
                                                                    settingSwipe4.c2 = null;
                                                                }
                                                            }

                                                            @Override // com.mycompany.app.view.MyFadeListener
                                                            public final void b(boolean z, boolean z2) {
                                                            }
                                                        });
                                                        settingSwipe3.c2.setOnTouchListener(new View.OnTouchListener() { // from class: com.mycompany.app.setting.SettingSwipe.12
                                                            @Override // android.view.View.OnTouchListener
                                                            public final boolean onTouch(View view, MotionEvent motionEvent) {
                                                                boolean z = PrefRead.x;
                                                                SettingSwipe settingSwipe4 = SettingSwipe.this;
                                                                if (z) {
                                                                    PrefRead.x = false;
                                                                    PrefSet.d(8, settingSwipe4.f1, "mGuideSwipe", false);
                                                                }
                                                                MyFadeFrame myFadeFrame2 = settingSwipe4.c2;
                                                                if (myFadeFrame2 != null) {
                                                                    myFadeFrame2.d(true);
                                                                }
                                                                return false;
                                                            }
                                                        });
                                                        frameLayout3.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingSwipe.13
                                                            @Override // android.view.View.OnClickListener
                                                            public final void onClick(View view) {
                                                                boolean z = PrefRead.x;
                                                                SettingSwipe settingSwipe4 = SettingSwipe.this;
                                                                if (z) {
                                                                    PrefRead.x = false;
                                                                    PrefSet.d(8, settingSwipe4.f1, "mGuideSwipe", false);
                                                                }
                                                                MyFadeFrame myFadeFrame2 = settingSwipe4.c2;
                                                                if (myFadeFrame2 != null) {
                                                                    myFadeFrame2.d(true);
                                                                }
                                                            }
                                                        });
                                                        settingSwipe3.D1.addView(settingSwipe3.c2, -1, -1);
                                                        return;
                                                    }
                                                    return;
                                                }
                                                int i21 = SettingSwipe.e2;
                                            }
                                        });
                                        return;
                                    }
                                    return;
                                }
                                int i19 = SettingSwipe.e2;
                            }
                        });
                    }
                }
            }
        });
    }

    @Override // com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        MyButtonImage myButtonImage = this.E1;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.E1 = null;
        }
        MyButtonImage myButtonImage2 = this.G1;
        if (myButtonImage2 != null) {
            myButtonImage2.j();
            this.G1 = null;
        }
        MyButtonImage myButtonImage3 = this.H1;
        if (myButtonImage3 != null) {
            myButtonImage3.j();
            this.H1 = null;
        }
        MyButtonImage myButtonImage4 = this.I1;
        if (myButtonImage4 != null) {
            myButtonImage4.j();
            this.I1 = null;
        }
        MyRoundItem myRoundItem = this.J1;
        if (myRoundItem != null) {
            myRoundItem.b();
            this.J1 = null;
        }
        MyFadeFrame myFadeFrame = this.c2;
        if (myFadeFrame != null) {
            myFadeFrame.f();
            this.c2 = null;
        }
        this.D1 = null;
        this.F1 = null;
        this.K1 = null;
        this.L1 = null;
        this.M1 = null;
        this.S1 = null;
        this.T1 = null;
        this.U1 = null;
    }

    @Override // com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        super.onPause();
        if (isFinishing()) {
            E0();
            F0();
            D0();
            MyPopupMenu myPopupMenu = this.N1;
            if (myPopupMenu != null) {
                this.Z0 = null;
                myPopupMenu.a();
                this.N1 = null;
            }
        }
    }
}
