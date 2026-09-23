package com.mycompany.app.setting;

import android.content.DialogInterface;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Handler;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.gms.internal.mlkit_vision_text_common.a;
import com.mycompany.app.dialog.DialogSaveConfirm;
import com.mycompany.app.dialog.DialogSeekAudio;
import com.mycompany.app.dialog.DialogSetFull;
import com.mycompany.app.dialog.DialogSetMsg;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.pref.PrefVideo;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonImage;
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
public class SettingVideoTap extends CastActivity {
    public static final /* synthetic */ int Z1 = 0;
    public int C1;
    public MyMainRelative D1;
    public MyButtonImage E1;
    public AppCompatTextView F1;
    public MyButtonImage G1;
    public MyButtonImage H1;
    public MyRoundItem I1;
    public MyLineFrame[] J1;
    public MyLineText[] K1;
    public MyRoundImage[] L1;
    public MyPopupMenu M1;
    public DialogSetMsg N1;
    public DialogSaveConfirm O1;
    public boolean P1;
    public int[] Q1;
    public int[] R1;
    public int[] S1;
    public float T1;
    public float U1;
    public int V1;
    public RelativeLayout.LayoutParams W1;
    public int X1;
    public MyFadeFrame Y1;

    /* renamed from: com.mycompany.app.setting.SettingVideoTap$6, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass6 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    public final void D0() {
        DialogSetMsg dialogSetMsg = this.N1;
        if (dialogSetMsg != null) {
            dialogSetMsg.dismiss();
            this.N1 = null;
        }
    }

    public final void E0() {
        DialogSaveConfirm dialogSaveConfirm = this.O1;
        if (dialogSaveConfirm != null) {
            dialogSaveConfirm.dismiss();
            this.O1 = null;
        }
    }

    public final boolean F0() {
        int[] iArr;
        int[] iArr2;
        int[] iArr3 = this.Q1;
        if (iArr3 == null || (iArr = this.R1) == null || (iArr2 = this.S1) == null) {
            return false;
        }
        if (iArr3[0] == PrefVideo.A && iArr3[1] == PrefVideo.B && iArr3[2] == PrefVideo.C && iArr[0] == PrefVideo.D && iArr[1] == PrefVideo.E && iArr2[0] == PrefVideo.F && iArr2[1] == PrefVideo.G) {
            return false;
        }
        return true;
    }

    public final void G0(boolean z) {
        if (this.Q1 != null && this.R1 != null && this.S1 != null && !this.P1) {
            this.P1 = true;
            if (F0()) {
                int[] iArr = this.Q1;
                PrefVideo.A = iArr[0];
                PrefVideo.B = iArr[1];
                PrefVideo.C = iArr[2];
                int[] iArr2 = this.R1;
                PrefVideo.D = iArr2[0];
                PrefVideo.E = iArr2[1];
                int[] iArr3 = this.S1;
                PrefVideo.F = iArr3[0];
                PrefVideo.G = iArr3[1];
                PrefVideo r = PrefVideo.r(this.f1);
                if (z) {
                    r.n(PrefVideo.A, "mTapLeft");
                    r.n(PrefVideo.B, "mTapRight");
                    r.n(PrefVideo.C, "mTapCenter");
                    r.n(PrefVideo.D, "mPortAreaLeft");
                    r.n(PrefVideo.E, "mPortAreaRight");
                    r.n(PrefVideo.F, "mLandAreaLeft");
                    r.n(PrefVideo.G, "mLandAreaRight");
                } else {
                    r.q("mTapLeft");
                    r.q("mTapRight");
                    r.q("mTapCenter");
                    r.q("mPortAreaLeft");
                    r.q("mPortAreaRight");
                    r.q("mLandAreaLeft");
                    r.q("mLandAreaRight");
                }
                r.a();
            }
            if (z) {
                finish();
            } else {
                this.P1 = false;
            }
        }
    }

    public final boolean H0(int i, RelativeLayout.LayoutParams layoutParams, int i2, boolean z, boolean z2) {
        MyLineFrame myLineFrame;
        if (i >= 0 && i < 2 && layoutParams != null && this.R1 != null && this.S1 != null) {
            if (z) {
                int i3 = MainApp.f1;
                if (i2 < i3) {
                    i2 = i3;
                } else if (i2 > layoutParams.width && (myLineFrame = this.J1[2]) != null) {
                    int width = (layoutParams.width + myLineFrame.getWidth()) - this.C1;
                    if (i2 > width) {
                        i2 = width;
                    }
                }
            }
            if (layoutParams.width != i2) {
                layoutParams.width = i2;
                if (z2) {
                    this.S1[i] = i2;
                    return true;
                }
                this.R1[i] = i2;
                return true;
            }
            return false;
        }
        return false;
    }

    public final void I0(int i, int i2) {
        MyLineText[] myLineTextArr = this.K1;
        if (myLineTextArr == null) {
            return;
        }
        if (i2 == 0) {
            myLineTextArr[i].setText(" - ");
            return;
        }
        if (i2 == 1) {
            myLineTextArr[i].setText(" + ");
        } else if (i2 == 2) {
            myLineTextArr[i].setText(" P ");
        } else {
            myLineTextArr[i].setText(" X ");
        }
    }

    public final void J0() {
        if (this.N1 != null || this.O1 != null) {
            return;
        }
        E0();
        DialogSaveConfirm dialogSaveConfirm = new DialogSaveConfirm(this, new DialogSeekAudio.DialogSeekListener() { // from class: com.mycompany.app.setting.SettingVideoTap.15
            @Override // com.mycompany.app.dialog.DialogSeekAudio.DialogSeekListener
            public final void a(int i) {
                int i2 = SettingVideoTap.Z1;
                SettingVideoTap settingVideoTap = SettingVideoTap.this;
                settingVideoTap.E0();
                if (i == 0) {
                    settingVideoTap.G0(true);
                } else {
                    settingVideoTap.finish();
                }
            }
        });
        this.O1 = dialogSaveConfirm;
        dialogSaveConfirm.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingVideoTap.16
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                int i = SettingVideoTap.Z1;
                SettingVideoTap.this.E0();
            }
        });
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x001a, code lost:
    
        if (r1 != 3) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0032, code lost:
    
        if (r9.W1 == null) goto L16;
     */
    @Override // com.mycompany.app.main.MainActivity, android.app.Activity, android.view.Window.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean dispatchTouchEvent(android.view.MotionEvent r10) {
        /*
            Method dump skipped, instructions count: 225
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.setting.SettingVideoTap.dispatchTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // com.mycompany.app.main.MainActivity
    public final void l0() {
        if (this.P1) {
            return;
        }
        if (F0()) {
            J0();
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
        SettingVideoTap settingVideoTap;
        super.onConfigurationChanged(configuration);
        if (this.F1 != null && this.Q1 != null) {
            boolean h0 = h0();
            if (h0) {
                this.F1.setText(R.string.view_land);
            } else {
                this.F1.setText(R.string.view_port);
            }
            for (int i = 0; i < 3; i++) {
                if (i < 2) {
                    RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.J1[i].getLayoutParams();
                    if (h0) {
                        settingVideoTap = this;
                        settingVideoTap.H0(i, layoutParams, this.S1[i], false, true);
                    } else {
                        settingVideoTap = this;
                        settingVideoTap.H0(i, layoutParams, settingVideoTap.R1[i], false, false);
                    }
                } else {
                    settingVideoTap = this;
                }
                I0(i, settingVideoTap.Q1[i]);
            }
        }
    }

    @Override // com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        MainUtil.v7(this, 4);
        this.C1 = MainApp.i1 * 2;
        this.Q1 = r4;
        int[] iArr = {PrefVideo.A, PrefVideo.B, PrefVideo.C};
        this.R1 = r4;
        int[] iArr2 = {PrefVideo.D, PrefVideo.E};
        this.S1 = r4;
        int[] iArr3 = {PrefVideo.F, PrefVideo.G};
        int i = R.id.set_icon_reset;
        int i2 = R.id.set_icon_apply;
        int i3 = R.id.area_view_3;
        int i4 = R.id.area_view_4;
        int i5 = R.id.set_cast_icon;
        int i6 = R.id.set_cast_ctrl;
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
        int i7 = MainApp.g1;
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(i7, i7);
        layoutParams2.addRule(16, i2);
        layoutParams2.topMargin = MainApp.G1;
        myHeaderView.addView(myButtonImage2, layoutParams2);
        MyButtonImage myButtonImage3 = new MyButtonImage(this);
        myButtonImage3.setId(i2);
        myButtonImage3.setPadding(G, G, G, G);
        myButtonImage3.setScaleType(scaleType);
        int i8 = MainApp.g1;
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(i8, i8);
        layoutParams3.addRule(16, i5);
        layoutParams3.topMargin = MainApp.G1;
        myHeaderView.addView(myButtonImage3, layoutParams3);
        FrameLayout frameLayout = new FrameLayout(this);
        frameLayout.setId(i5);
        frameLayout.setVisibility(4);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-2, MainApp.b1);
        layoutParams4.addRule(21);
        myHeaderView.addView(frameLayout, layoutParams4);
        MyRoundItem myRoundItem = new MyRoundItem(this);
        myRoundItem.d(true, true);
        myRoundItem.setLayoutDirection(0);
        RelativeLayout.LayoutParams h2 = androidx.work.impl.workers.a.h(-1, -1, 2, i6);
        h2.topMargin = MainApp.b1;
        myMainRelative.addView(myRoundItem, h2);
        MyLineFrame myLineFrame = new MyLineFrame(this);
        myLineFrame.setId(i3);
        myLineFrame.c();
        myRoundItem.addView(myLineFrame, -1, -1);
        MyLineText myLineText = new MyLineText(this);
        myLineText.setGravity(17);
        myLineText.setTextSize(1, 20.0f);
        FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams5.gravity = 17;
        myLineFrame.addView(myLineText, layoutParams5);
        MyLineFrame myLineFrame2 = new MyLineFrame(this);
        myLineFrame2.setId(i4);
        myLineFrame2.b();
        RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams6.addRule(21);
        layoutParams6.addRule(18, i4);
        myRoundItem.addView(myLineFrame2, layoutParams6);
        MyLineText myLineText2 = new MyLineText(this);
        myLineText2.setGravity(17);
        myLineText2.setTextSize(1, 20.0f);
        FrameLayout.LayoutParams layoutParams7 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams7.gravity = 17;
        myLineFrame2.addView(myLineText2, layoutParams7);
        MyLineFrame myLineFrame3 = new MyLineFrame(this);
        RelativeLayout.LayoutParams h3 = androidx.work.impl.workers.a.h(-1, -1, 17, i3);
        h3.addRule(16, i4);
        myRoundItem.addView(myLineFrame3, h3);
        MyLineText myLineText3 = new MyLineText(this);
        myLineText3.setGravity(17);
        myLineText3.setTextSize(1, 20.0f);
        FrameLayout.LayoutParams layoutParams8 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams8.gravity = 17;
        myLineFrame3.addView(myLineText3, layoutParams8);
        MyRoundImage myRoundImage = new MyRoundImage(this);
        myRoundImage.setScaleType(scaleType);
        myRoundImage.setCircleRadius(MainApp.j1);
        int i9 = MainApp.g1;
        FrameLayout.LayoutParams layoutParams9 = new FrameLayout.LayoutParams(i9, i9);
        layoutParams9.gravity = 8388627;
        layoutParams9.setMarginStart(MainApp.F1);
        myLineFrame3.addView(myRoundImage, layoutParams9);
        MyRoundImage myRoundImage2 = new MyRoundImage(this);
        myRoundImage2.setScaleType(scaleType);
        myRoundImage2.setCircleRadius(MainApp.j1);
        int i10 = MainApp.g1;
        FrameLayout.LayoutParams layoutParams10 = new FrameLayout.LayoutParams(i10, i10);
        layoutParams10.gravity = 8388629;
        layoutParams10.setMarginEnd(MainApp.F1);
        myLineFrame3.addView(myRoundImage2, layoutParams10);
        FrameLayout frameLayout2 = new FrameLayout(this);
        frameLayout2.setId(i6);
        frameLayout2.setVisibility(8);
        RelativeLayout.LayoutParams layoutParams11 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams11.addRule(12);
        myMainRelative.addView(frameLayout2, layoutParams11);
        this.D1 = myMainRelative;
        this.E1 = myButtonImage;
        this.F1 = appCompatTextView;
        this.G1 = myButtonImage2;
        this.H1 = myButtonImage3;
        this.I1 = myRoundItem;
        this.J1 = r3;
        this.K1 = r1;
        this.L1 = r4;
        MyLineFrame[] myLineFrameArr = {myLineFrame, myLineFrame2, myLineFrame3};
        MyLineText[] myLineTextArr = {myLineText, myLineText2, myLineText3};
        MyRoundImage[] myRoundImageArr = {myRoundImage, myRoundImage2};
        B0(myMainRelative, frameLayout, frameLayout2);
        this.D1.setWindow(getWindow());
        initMainScreenOn(this.D1);
        Handler handler = this.O0;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.setting.SettingVideoTap.1
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r5v1, types: [android.view.View$OnClickListener, java.lang.Object] */
            @Override // java.lang.Runnable
            public final void run() {
                final SettingVideoTap settingVideoTap = SettingVideoTap.this;
                if (settingVideoTap.D1 != null) {
                    if (MainApp.K1) {
                        settingVideoTap.E1.setImageResource(R.drawable.outline_chevron_left_dark_24);
                        settingVideoTap.F1.setTextColor(-328966);
                        settingVideoTap.G1.setImageResource(R.drawable.outline_replay_dark_20);
                        settingVideoTap.H1.setImageResource(R.drawable.outline_check_dark_20);
                        settingVideoTap.I1.setBackgroundColor(-14606047);
                        settingVideoTap.E1.setBgPreColor(-12632257);
                        settingVideoTap.G1.setBgPreColor(-12632257);
                        settingVideoTap.H1.setBgPreColor(-12632257);
                    } else {
                        settingVideoTap.E1.setImageResource(R.drawable.outline_chevron_left_black_24);
                        settingVideoTap.F1.setTextColor(-16777216);
                        settingVideoTap.G1.setImageResource(R.drawable.outline_replay_black_20);
                        settingVideoTap.H1.setImageResource(R.drawable.outline_check_black_20);
                        settingVideoTap.I1.setBackgroundColor(-1);
                        settingVideoTap.E1.setBgPreColor(553648128);
                        settingVideoTap.G1.setBgPreColor(553648128);
                        settingVideoTap.H1.setBgPreColor(553648128);
                    }
                    boolean h0 = settingVideoTap.h0();
                    if (h0) {
                        settingVideoTap.F1.setText(R.string.view_land);
                    } else {
                        settingVideoTap.F1.setText(R.string.view_port);
                    }
                    settingVideoTap.E1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingVideoTap.2
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            int i11 = SettingVideoTap.Z1;
                            SettingVideoTap settingVideoTap2 = SettingVideoTap.this;
                            if (settingVideoTap2.F0()) {
                                settingVideoTap2.J0();
                            } else {
                                settingVideoTap2.finish();
                            }
                        }
                    });
                    settingVideoTap.G1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingVideoTap.3
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            int i11 = SettingVideoTap.Z1;
                            final SettingVideoTap settingVideoTap2 = SettingVideoTap.this;
                            if (settingVideoTap2.N1 != null || settingVideoTap2.O1 != null) {
                                return;
                            }
                            settingVideoTap2.D0();
                            DialogSetMsg dialogSetMsg = new DialogSetMsg(settingVideoTap2, R.string.reset_setting, R.string.reset, new DialogSetFull.DialogApplyListener() { // from class: com.mycompany.app.setting.SettingVideoTap.13
                                @Override // com.mycompany.app.dialog.DialogSetFull.DialogApplyListener
                                public final void a() {
                                    int i12 = SettingVideoTap.Z1;
                                    SettingVideoTap settingVideoTap3 = SettingVideoTap.this;
                                    settingVideoTap3.D0();
                                    int[] iArr4 = settingVideoTap3.Q1;
                                    if (iArr4 == null) {
                                        return;
                                    }
                                    iArr4[0] = 3;
                                    iArr4[1] = 3;
                                    iArr4[2] = 3;
                                    int[] iArr5 = settingVideoTap3.R1;
                                    int i13 = MainApp.i1;
                                    iArr5[0] = i13;
                                    iArr5[1] = i13;
                                    int[] iArr6 = settingVideoTap3.S1;
                                    int i14 = i13 * 2;
                                    iArr6[0] = i14;
                                    iArr6[1] = i14;
                                    boolean h02 = settingVideoTap3.h0();
                                    for (int i15 = 0; i15 < 3; i15++) {
                                        if (i15 < 2) {
                                            RelativeLayout.LayoutParams layoutParams12 = (RelativeLayout.LayoutParams) settingVideoTap3.J1[i15].getLayoutParams();
                                            if (h02) {
                                                settingVideoTap3.H0(i15, layoutParams12, settingVideoTap3.S1[i15], false, true);
                                            } else {
                                                settingVideoTap3.H0(i15, layoutParams12, settingVideoTap3.R1[i15], false, false);
                                            }
                                        }
                                        settingVideoTap3.I0(i15, settingVideoTap3.Q1[i15]);
                                    }
                                    settingVideoTap3.G0(false);
                                }
                            });
                            settingVideoTap2.N1 = dialogSetMsg;
                            dialogSetMsg.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingVideoTap.14
                                @Override // android.content.DialogInterface.OnDismissListener
                                public final void onDismiss(DialogInterface dialogInterface) {
                                    int i12 = SettingVideoTap.Z1;
                                    SettingVideoTap.this.D0();
                                }
                            });
                        }
                    });
                    settingVideoTap.H1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingVideoTap.4
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            SettingVideoTap settingVideoTap2 = SettingVideoTap.this;
                            MyButtonImage myButtonImage4 = settingVideoTap2.H1;
                            if (myButtonImage4 == null) {
                                return;
                            }
                            myButtonImage4.setClickable(false);
                            settingVideoTap2.H1.post(new Runnable() { // from class: com.mycompany.app.setting.SettingVideoTap.4.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    SettingVideoTap settingVideoTap3 = SettingVideoTap.this;
                                    if (settingVideoTap3.H1 == null) {
                                        return;
                                    }
                                    settingVideoTap3.G0(true);
                                }
                            });
                        }
                    });
                    for (int i11 = 0; i11 < 3; i11++) {
                        if (MainApp.K1) {
                            settingVideoTap.J1[i11].setLineColor(-328966);
                            settingVideoTap.J1[i11].setBackgroundResource(R.drawable.selector_normal_dark);
                            settingVideoTap.K1[i11].setTextColor(-328966);
                        } else {
                            settingVideoTap.J1[i11].setLineColor(-16777216);
                            settingVideoTap.J1[i11].setBackgroundResource(R.drawable.selector_normal);
                            settingVideoTap.K1[i11].setTextColor(-16777216);
                        }
                        settingVideoTap.J1[i11].setTag(Integer.valueOf(i11));
                        settingVideoTap.J1[i11].setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingVideoTap.5
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                Object tag;
                                final int intValue;
                                MyPopupMenu myPopupMenu;
                                MyLineText myLineText4;
                                boolean z;
                                boolean z2;
                                boolean z3;
                                final SettingVideoTap settingVideoTap2 = SettingVideoTap.this;
                                if (settingVideoTap2.J1 != null && view != null && (tag = view.getTag()) != null && (intValue = ((Integer) tag).intValue()) >= 0 && intValue < settingVideoTap2.J1.length && (myPopupMenu = settingVideoTap2.M1) == null) {
                                    if (myPopupMenu != null) {
                                        settingVideoTap2.Z0 = null;
                                        myPopupMenu.a();
                                        settingVideoTap2.M1 = null;
                                    }
                                    MyLineText[] myLineTextArr2 = settingVideoTap2.K1;
                                    if (myLineTextArr2 != null && settingVideoTap2.Q1 != null && (myLineText4 = myLineTextArr2[intValue]) != null) {
                                        boolean z4 = false;
                                        myLineText4.setNotiTop(false);
                                        int i12 = settingVideoTap2.Q1[intValue];
                                        ArrayList arrayList = new ArrayList();
                                        String str = "- : - 10" + settingVideoTap2.getString(R.string.time_s);
                                        if (i12 == 0) {
                                            z = true;
                                        } else {
                                            z = false;
                                        }
                                        arrayList.add(new MyPopupAdapter.PopMenuItem(str, 0, z));
                                        String str2 = "+ : + 10" + settingVideoTap2.getString(R.string.time_s);
                                        if (1 == i12) {
                                            z2 = true;
                                        } else {
                                            z2 = false;
                                        }
                                        arrayList.add(new MyPopupAdapter.PopMenuItem(str2, 1, z2));
                                        String str3 = "P : " + settingVideoTap2.getString(R.string.pause);
                                        if (2 == i12) {
                                            z3 = true;
                                        } else {
                                            z3 = false;
                                        }
                                        arrayList.add(new MyPopupAdapter.PopMenuItem(str3, 2, z3));
                                        String str4 = "X : " + settingVideoTap2.getString(R.string.not_used);
                                        if (3 == i12) {
                                            z4 = true;
                                        }
                                        arrayList.add(new MyPopupAdapter.PopMenuItem(str4, 3, z4));
                                        MyPopupMenu myPopupMenu2 = new MyPopupMenu(settingVideoTap2, settingVideoTap2.D1, myLineText4, arrayList, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.setting.SettingVideoTap.8
                                            @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                            public final void a() {
                                                int i13 = SettingVideoTap.Z1;
                                                SettingVideoTap settingVideoTap3 = SettingVideoTap.this;
                                                MyPopupMenu myPopupMenu3 = settingVideoTap3.M1;
                                                if (myPopupMenu3 != null) {
                                                    settingVideoTap3.Z0 = null;
                                                    myPopupMenu3.a();
                                                    settingVideoTap3.M1 = null;
                                                }
                                            }

                                            @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                            public final boolean b(View view2, int i13) {
                                                SettingVideoTap settingVideoTap3 = SettingVideoTap.this;
                                                int[] iArr4 = settingVideoTap3.Q1;
                                                if (iArr4 != null && i13 >= 0 && i13 < 4) {
                                                    int i14 = intValue;
                                                    iArr4[i14] = i13;
                                                    settingVideoTap3.I0(i14, i13);
                                                }
                                                return true;
                                            }
                                        });
                                        settingVideoTap2.M1 = myPopupMenu2;
                                        settingVideoTap2.Z0 = myPopupMenu2;
                                    }
                                }
                            }
                        });
                        if (i11 < 2) {
                            RelativeLayout.LayoutParams layoutParams12 = (RelativeLayout.LayoutParams) settingVideoTap.J1[i11].getLayoutParams();
                            if (h0) {
                                settingVideoTap.H0(i11, layoutParams12, settingVideoTap.S1[i11], false, true);
                            } else {
                                settingVideoTap.H0(i11, layoutParams12, settingVideoTap.R1[i11], false, false);
                            }
                        }
                        settingVideoTap.I0(i11, settingVideoTap.Q1[i11]);
                    }
                    for (int i12 = 0; i12 < 2; i12++) {
                        settingVideoTap.L1[i12].setOnClickListener(new Object());
                    }
                    settingVideoTap.L1[0].o(-509171222, R.drawable.outline_swipe_hori);
                    settingVideoTap.L1[1].o(-509171222, R.drawable.outline_swipe_hori);
                    if (PrefVideo.l) {
                        for (int i13 = 0; i13 < 3; i13++) {
                            settingVideoTap.K1[i13].setNotiTop(true);
                        }
                        settingVideoTap.D1.post(new Runnable() { // from class: com.mycompany.app.setting.SettingVideoTap.7
                            @Override // java.lang.Runnable
                            public final void run() {
                                Handler handler2;
                                if (PrefVideo.l) {
                                    final SettingVideoTap settingVideoTap2 = SettingVideoTap.this;
                                    if (settingVideoTap2.Y1 == null && settingVideoTap2.D1 != null && (handler2 = settingVideoTap2.O0) != null) {
                                        handler2.post(new Runnable() { // from class: com.mycompany.app.setting.SettingVideoTap.9
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                if (PrefVideo.l) {
                                                    final SettingVideoTap settingVideoTap3 = SettingVideoTap.this;
                                                    if (settingVideoTap3.Y1 == null && settingVideoTap3.D1 != null) {
                                                        MyFadeFrame myFadeFrame = new MyFadeFrame(settingVideoTap3);
                                                        int i14 = MainApp.F1;
                                                        myFadeFrame.setPadding(i14, i14, i14, i14);
                                                        FrameLayout frameLayout3 = new FrameLayout(settingVideoTap3);
                                                        frameLayout3.setBackgroundResource(R.drawable.round_guide_8);
                                                        FrameLayout.LayoutParams layoutParams13 = new FrameLayout.LayoutParams(-1, -2);
                                                        layoutParams13.gravity = 8388691;
                                                        myFadeFrame.addView(frameLayout3, layoutParams13);
                                                        LinearLayout linearLayout = new LinearLayout(settingVideoTap3);
                                                        int i15 = MainApp.E1;
                                                        linearLayout.setPadding(i15, i15, i15, i15);
                                                        linearLayout.setOrientation(1);
                                                        FrameLayout.LayoutParams layoutParams14 = new FrameLayout.LayoutParams(-2, -2);
                                                        layoutParams14.gravity = 1;
                                                        frameLayout3.addView(linearLayout, layoutParams14);
                                                        AppCompatTextView appCompatTextView2 = new AppCompatTextView(settingVideoTap3, null);
                                                        appCompatTextView2.setLineSpacing(MainApp.G1, 1.0f);
                                                        appCompatTextView2.setTextSize(1, 16.0f);
                                                        appCompatTextView2.setTextColor(-1);
                                                        linearLayout.addView(appCompatTextView2, -2, -2);
                                                        AppCompatTextView appCompatTextView3 = new AppCompatTextView(settingVideoTap3, null);
                                                        appCompatTextView3.setLineSpacing(MainApp.G1, 1.0f);
                                                        appCompatTextView3.setTextSize(1, 16.0f);
                                                        appCompatTextView3.setTextColor(-1);
                                                        LinearLayout.LayoutParams layoutParams15 = new LinearLayout.LayoutParams(-2, -2);
                                                        layoutParams15.topMargin = MainApp.E1;
                                                        linearLayout.addView(appCompatTextView3, layoutParams15);
                                                        AppCompatTextView appCompatTextView4 = new AppCompatTextView(settingVideoTap3, null);
                                                        appCompatTextView4.setLineSpacing(MainApp.G1, 1.0f);
                                                        appCompatTextView4.setTextSize(1, 14.0f);
                                                        appCompatTextView4.setTextColor(-1);
                                                        LinearLayout.LayoutParams layoutParams16 = new LinearLayout.LayoutParams(-2, -2);
                                                        layoutParams16.topMargin = MainApp.E1 + MainApp.G1;
                                                        linearLayout.addView(appCompatTextView4, layoutParams16);
                                                        AppCompatTextView appCompatTextView5 = new AppCompatTextView(settingVideoTap3, null);
                                                        appCompatTextView5.setLineSpacing(MainApp.G1, 1.0f);
                                                        appCompatTextView5.setTextSize(1, 14.0f);
                                                        appCompatTextView5.setTextColor(-1);
                                                        LinearLayout.LayoutParams layoutParams17 = new LinearLayout.LayoutParams(-2, -2);
                                                        layoutParams17.topMargin = MainApp.F1;
                                                        linearLayout.addView(appCompatTextView5, layoutParams17);
                                                        settingVideoTap3.Y1 = myFadeFrame;
                                                        appCompatTextView2.setText(R.string.swipe_guide_1);
                                                        appCompatTextView3.setText(R.string.swipe_guide_2);
                                                        appCompatTextView4.setText(R.string.double_tap_guide_1);
                                                        appCompatTextView5.setText(R.string.double_tap_guide_2);
                                                        settingVideoTap3.Y1.setListener(new MyFadeListener() { // from class: com.mycompany.app.setting.SettingVideoTap.10
                                                            @Override // com.mycompany.app.view.MyFadeListener
                                                            public final void a(boolean z) {
                                                                SettingVideoTap settingVideoTap4;
                                                                MyFadeFrame myFadeFrame2;
                                                                if (!z && (myFadeFrame2 = (settingVideoTap4 = SettingVideoTap.this).Y1) != null && settingVideoTap4.D1 != null) {
                                                                    myFadeFrame2.f();
                                                                    settingVideoTap4.D1.removeView(settingVideoTap4.Y1);
                                                                    settingVideoTap4.Y1 = null;
                                                                }
                                                            }

                                                            @Override // com.mycompany.app.view.MyFadeListener
                                                            public final void b(boolean z, boolean z2) {
                                                            }
                                                        });
                                                        settingVideoTap3.Y1.setOnTouchListener(new View.OnTouchListener() { // from class: com.mycompany.app.setting.SettingVideoTap.11
                                                            @Override // android.view.View.OnTouchListener
                                                            public final boolean onTouch(View view, MotionEvent motionEvent) {
                                                                boolean z = PrefVideo.l;
                                                                SettingVideoTap settingVideoTap4 = SettingVideoTap.this;
                                                                if (z) {
                                                                    PrefVideo.l = false;
                                                                    PrefSet.d(13, settingVideoTap4.f1, "mGuideTap2", false);
                                                                }
                                                                MyFadeFrame myFadeFrame2 = settingVideoTap4.Y1;
                                                                if (myFadeFrame2 != null) {
                                                                    myFadeFrame2.d(true);
                                                                }
                                                                return false;
                                                            }
                                                        });
                                                        frameLayout3.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingVideoTap.12
                                                            @Override // android.view.View.OnClickListener
                                                            public final void onClick(View view) {
                                                                boolean z = PrefVideo.l;
                                                                SettingVideoTap settingVideoTap4 = SettingVideoTap.this;
                                                                if (z) {
                                                                    PrefVideo.l = false;
                                                                    PrefSet.d(13, settingVideoTap4.f1, "mGuideTap2", false);
                                                                }
                                                                MyFadeFrame myFadeFrame2 = settingVideoTap4.Y1;
                                                                if (myFadeFrame2 != null) {
                                                                    myFadeFrame2.d(true);
                                                                }
                                                            }
                                                        });
                                                        settingVideoTap3.D1.addView(settingVideoTap3.Y1, -1, -1);
                                                        return;
                                                    }
                                                    return;
                                                }
                                                int i16 = SettingVideoTap.Z1;
                                            }
                                        });
                                        return;
                                    }
                                    return;
                                }
                                int i14 = SettingVideoTap.Z1;
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
        MyRoundItem myRoundItem = this.I1;
        if (myRoundItem != null) {
            myRoundItem.b();
            this.I1 = null;
        }
        MyFadeFrame myFadeFrame = this.Y1;
        if (myFadeFrame != null) {
            myFadeFrame.f();
            this.Y1 = null;
        }
        this.D1 = null;
        this.F1 = null;
        this.J1 = null;
        this.K1 = null;
        this.L1 = null;
        this.Q1 = null;
        this.R1 = null;
        this.S1 = null;
    }

    @Override // com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        super.onPause();
        if (isFinishing()) {
            D0();
            E0();
            MyPopupMenu myPopupMenu = this.M1;
            if (myPopupMenu != null) {
                this.Z0 = null;
                myPopupMenu.a();
                this.M1 = null;
            }
        }
    }
}
