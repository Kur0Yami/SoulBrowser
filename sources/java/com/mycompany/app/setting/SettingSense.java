package com.mycompany.app.setting;

import android.content.DialogInterface;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.gms.internal.mlkit_vision_text_common.a;
import com.mycompany.app.dialog.DialogSaveConfirm;
import com.mycompany.app.dialog.DialogSeekAudio;
import com.mycompany.app.dialog.DialogSeekSimple;
import com.mycompany.app.dialog.DialogSetFull;
import com.mycompany.app.dialog.DialogSetMsg;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefRead;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.pref.PrefZone;
import com.mycompany.app.pref.PrefZtwo;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyHeaderView;
import com.mycompany.app.view.MyLineFrame;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyMainRelative;
import com.mycompany.app.view.MyRoundItem;

/* loaded from: classes3.dex */
public class SettingSense extends CastActivity {
    public static final /* synthetic */ int Q1 = 0;
    public MyMainRelative C1;
    public MyButtonImage D1;
    public AppCompatTextView E1;
    public MyButtonImage F1;
    public MyButtonImage G1;
    public MyRoundItem H1;
    public MyLineFrame[] I1;
    public MyLineText[] J1;
    public DialogSetMsg K1;
    public DialogSeekSimple L1;
    public DialogSaveConfirm M1;
    public boolean N1;
    public int[] O1;
    public boolean P1;

    public final void D0() {
        DialogSetMsg dialogSetMsg = this.K1;
        if (dialogSetMsg != null) {
            dialogSetMsg.dismiss();
            this.K1 = null;
        }
    }

    public final void E0() {
        DialogSaveConfirm dialogSaveConfirm = this.M1;
        if (dialogSaveConfirm != null) {
            dialogSaveConfirm.dismiss();
            this.M1 = null;
        }
    }

    public final boolean F0() {
        int[] iArr = this.O1;
        if (iArr == null) {
            return false;
        }
        if (iArr[0] == PrefZtwo.t && iArr[1] == PrefZtwo.u && iArr[2] == PrefZtwo.v && iArr[3] == PrefZtwo.w && iArr[4] == PrefZtwo.x) {
            return false;
        }
        return true;
    }

    public final void G0(boolean z) {
        if (this.O1 == null || this.N1) {
            return;
        }
        this.N1 = true;
        if (F0()) {
            int[] iArr = this.O1;
            PrefZtwo.t = iArr[0];
            PrefZtwo.u = iArr[1];
            PrefZtwo.v = iArr[2];
            PrefZtwo.w = iArr[3];
            PrefZtwo.x = iArr[4];
            PrefZtwo r = PrefZtwo.r(this.f1, false);
            if (z) {
                r.n(PrefZtwo.t, "mSenseTop2");
                r.n(PrefZtwo.u, "mSenseBot2");
                r.n(PrefZtwo.v, "mSenseLeft2");
                r.n(PrefZtwo.w, "mSenseRight2");
                r.n(PrefZtwo.x, "mSenseCenter2");
            } else {
                r.q("mSenseTop2");
                r.q("mSenseBot2");
                r.q("mSenseLeft2");
                r.q("mSenseRight2");
                r.q("mSenseCenter2");
            }
            r.a();
        }
        if (z) {
            finish();
        } else {
            this.N1 = false;
        }
    }

    public final void H0(int i, int i2) {
        int i3;
        MyLineText[] myLineTextArr = this.J1;
        if (myLineTextArr == null) {
            return;
        }
        if (i == 0) {
            i3 = PrefZone.K;
        } else if (i == 1) {
            i3 = PrefZone.L;
        } else if (i == 2) {
            i3 = PrefZone.M;
        } else if (i == 3) {
            i3 = PrefZone.N;
        } else {
            i3 = PrefZone.O;
        }
        if (i3 == 0) {
            myLineTextArr[i].setText("P\n" + i2 + "%");
            return;
        }
        if (i3 == 1) {
            myLineTextArr[i].setText("T\n" + i2 + "%");
            return;
        }
        myLineTextArr[i].setText("X\n" + i2 + "%");
    }

    public final void I0() {
        if (this.K1 != null || this.L1 != null || this.M1 != null) {
            return;
        }
        E0();
        DialogSaveConfirm dialogSaveConfirm = new DialogSaveConfirm(this, new DialogSeekAudio.DialogSeekListener() { // from class: com.mycompany.app.setting.SettingSense.10
            @Override // com.mycompany.app.dialog.DialogSeekAudio.DialogSeekListener
            public final void a(int i) {
                int i2 = SettingSense.Q1;
                SettingSense settingSense = SettingSense.this;
                settingSense.E0();
                if (i == 0) {
                    settingSense.G0(true);
                } else {
                    settingSense.finish();
                }
            }
        });
        this.M1 = dialogSaveConfirm;
        dialogSaveConfirm.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingSense.11
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                int i = SettingSense.Q1;
                SettingSense.this.E0();
            }
        });
    }

    @Override // com.mycompany.app.main.MainActivity
    public final void l0() {
        if (this.N1) {
            return;
        }
        if (F0()) {
            I0();
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
        boolean z = this.P1;
        boolean z2 = MainApp.K1;
        if (z != z2) {
            this.P1 = z2;
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
                    if (MainApp.K1) {
                        this.D1.setImageResource(R.drawable.outline_chevron_left_dark_24);
                        this.E1.setTextColor(-328966);
                        this.F1.setImageResource(R.drawable.outline_replay_dark_20);
                        this.G1.setImageResource(R.drawable.outline_check_dark_20);
                        this.H1.setBackgroundColor(-14606047);
                        this.D1.setBgPreColor(-12632257);
                        this.F1.setBgPreColor(-12632257);
                        this.G1.setBgPreColor(-12632257);
                    } else {
                        this.D1.setImageResource(R.drawable.outline_chevron_left_black_24);
                        this.E1.setTextColor(-16777216);
                        this.F1.setImageResource(R.drawable.outline_replay_black_20);
                        this.G1.setImageResource(R.drawable.outline_check_black_20);
                        this.H1.setBackgroundColor(-1);
                        this.D1.setBgPreColor(553648128);
                        this.F1.setBgPreColor(553648128);
                        this.G1.setBgPreColor(553648128);
                    }
                    MyLineFrame[] myLineFrameArr = this.I1;
                    if (myLineFrameArr != null) {
                        int length = myLineFrameArr.length;
                        for (int i2 = 0; i2 < length; i2++) {
                            if (MainApp.K1) {
                                this.I1[i2].setLineColor(-328966);
                                this.I1[i2].setBackgroundResource(R.drawable.selector_normal_dark);
                                this.J1[i2].setTextColor(-328966);
                            } else {
                                this.I1[i2].setLineColor(-16777216);
                                this.I1[i2].setBackgroundResource(R.drawable.selector_normal);
                                this.J1[i2].setTextColor(-16777216);
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
        this.P1 = MainApp.K1;
        this.O1 = r2;
        int[] iArr = {PrefZtwo.t, PrefZtwo.u, PrefZtwo.v, PrefZtwo.w, PrefZtwo.x};
        int i = R.id.set_icon_reset;
        int i2 = R.id.set_icon_apply;
        int i3 = R.id.area_view_1;
        int i4 = R.id.area_view_2;
        int i5 = R.id.area_view_3;
        int i6 = R.id.area_view_4;
        int i7 = R.id.set_cast_icon;
        int i8 = R.id.set_cast_ctrl;
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
        int i9 = MainApp.g1;
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(i9, i9);
        layoutParams2.addRule(16, i2);
        layoutParams2.topMargin = MainApp.G1;
        myHeaderView.addView(myButtonImage2, layoutParams2);
        MyButtonImage myButtonImage3 = new MyButtonImage(this);
        myButtonImage3.setId(i2);
        myButtonImage3.setPadding(G, G, G, G);
        myButtonImage3.setScaleType(scaleType);
        int i10 = MainApp.g1;
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(i10, i10);
        layoutParams3.addRule(16, i7);
        layoutParams3.topMargin = MainApp.G1;
        myHeaderView.addView(myButtonImage3, layoutParams3);
        FrameLayout frameLayout = new FrameLayout(this);
        frameLayout.setId(i7);
        frameLayout.setVisibility(4);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-2, MainApp.b1);
        layoutParams4.addRule(21);
        myHeaderView.addView(frameLayout, layoutParams4);
        MyRoundItem myRoundItem = new MyRoundItem(this);
        myRoundItem.d(true, true);
        myRoundItem.setLayoutDirection(0);
        RelativeLayout.LayoutParams h2 = androidx.work.impl.workers.a.h(-1, -1, 2, i8);
        h2.topMargin = MainApp.b1;
        myMainRelative.addView(myRoundItem, h2);
        MyLineFrame myLineFrame = new MyLineFrame(this);
        myLineFrame.setId(i3);
        myLineFrame.a(0);
        myRoundItem.addView(myLineFrame, -1, -1);
        MyLineText myLineText = new MyLineText(this);
        myLineText.setGravity(17);
        myLineText.setTextSize(1, 20.0f);
        FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams5.gravity = 17;
        myLineFrame.addView(myLineText, layoutParams5);
        MyLineFrame myLineFrame2 = new MyLineFrame(this);
        myLineFrame2.setId(i4);
        myLineFrame2.d(0);
        RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams6.addRule(12);
        myRoundItem.addView(myLineFrame2, layoutParams6);
        MyLineText myLineText2 = new MyLineText(this);
        myLineText2.setGravity(17);
        myLineText2.setTextSize(1, 20.0f);
        FrameLayout.LayoutParams layoutParams7 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams7.gravity = 17;
        myLineFrame2.addView(myLineText2, layoutParams7);
        MyLineFrame myLineFrame3 = new MyLineFrame(this);
        myLineFrame3.setId(i5);
        myLineFrame3.c();
        RelativeLayout.LayoutParams h3 = androidx.work.impl.workers.a.h(-1, -1, 3, i3);
        h3.addRule(2, i4);
        myRoundItem.addView(myLineFrame3, h3);
        MyLineText myLineText3 = new MyLineText(this);
        myLineText3.setGravity(17);
        myLineText3.setTextSize(1, 20.0f);
        FrameLayout.LayoutParams layoutParams8 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams8.gravity = 17;
        myLineFrame3.addView(myLineText3, layoutParams8);
        MyLineFrame myLineFrame4 = new MyLineFrame(this);
        myLineFrame4.setId(i6);
        myLineFrame4.b();
        RelativeLayout.LayoutParams h4 = androidx.work.impl.workers.a.h(-1, -1, 3, i3);
        h4.addRule(2, i4);
        h4.addRule(21);
        h4.addRule(18, i6);
        myRoundItem.addView(myLineFrame4, h4);
        MyLineText myLineText4 = new MyLineText(this);
        myLineText4.setGravity(17);
        myLineText4.setTextSize(1, 20.0f);
        FrameLayout.LayoutParams layoutParams9 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams9.gravity = 17;
        myLineFrame4.addView(myLineText4, layoutParams9);
        MyLineFrame myLineFrame5 = new MyLineFrame(this);
        RelativeLayout.LayoutParams h5 = androidx.work.impl.workers.a.h(-1, -1, 3, i3);
        h5.addRule(2, i4);
        h5.addRule(17, i5);
        h5.addRule(16, i6);
        myRoundItem.addView(myLineFrame5, h5);
        MyLineText myLineText5 = new MyLineText(this);
        myLineText5.setGravity(17);
        myLineText5.setTextSize(1, 20.0f);
        FrameLayout.LayoutParams layoutParams10 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams10.gravity = 17;
        myLineFrame5.addView(myLineText5, layoutParams10);
        FrameLayout frameLayout2 = new FrameLayout(this);
        frameLayout2.setId(i8);
        frameLayout2.setVisibility(8);
        RelativeLayout.LayoutParams layoutParams11 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams11.addRule(12);
        myMainRelative.addView(frameLayout2, layoutParams11);
        this.C1 = myMainRelative;
        this.D1 = myButtonImage;
        this.E1 = appCompatTextView;
        this.F1 = myButtonImage2;
        this.G1 = myButtonImage3;
        this.H1 = myRoundItem;
        this.I1 = r2;
        this.J1 = r1;
        MyLineFrame[] myLineFrameArr = {myLineFrame, myLineFrame2, myLineFrame3, myLineFrame4, myLineFrame5};
        MyLineText[] myLineTextArr = {myLineText, myLineText2, myLineText3, myLineText4, myLineText5};
        B0(myMainRelative, frameLayout, frameLayout2);
        this.C1.setWindow(getWindow());
        initMainScreenOn(this.C1);
        Handler handler = this.O0;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.setting.SettingSense.1
            @Override // java.lang.Runnable
            public final void run() {
                MyLineFrame[] myLineFrameArr2;
                ViewGroup.LayoutParams layoutParams12;
                final SettingSense settingSense = SettingSense.this;
                if (settingSense.C1 != null) {
                    settingSense.E1.setText(R.string.swipe_sense);
                    if (MainApp.K1) {
                        settingSense.D1.setImageResource(R.drawable.outline_chevron_left_dark_24);
                        settingSense.E1.setTextColor(-328966);
                        settingSense.F1.setImageResource(R.drawable.outline_replay_dark_20);
                        settingSense.G1.setImageResource(R.drawable.outline_check_dark_20);
                        settingSense.H1.setBackgroundColor(-14606047);
                        settingSense.D1.setBgPreColor(-12632257);
                        settingSense.F1.setBgPreColor(-12632257);
                        settingSense.G1.setBgPreColor(-12632257);
                    } else {
                        settingSense.D1.setImageResource(R.drawable.outline_chevron_left_black_24);
                        settingSense.E1.setTextColor(-16777216);
                        settingSense.F1.setImageResource(R.drawable.outline_replay_black_20);
                        settingSense.G1.setImageResource(R.drawable.outline_check_black_20);
                        settingSense.H1.setBackgroundColor(-1);
                        settingSense.D1.setBgPreColor(553648128);
                        settingSense.F1.setBgPreColor(553648128);
                        settingSense.G1.setBgPreColor(553648128);
                    }
                    settingSense.D1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingSense.2
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            int i11 = SettingSense.Q1;
                            SettingSense settingSense2 = SettingSense.this;
                            if (settingSense2.F0()) {
                                settingSense2.I0();
                            } else {
                                settingSense2.finish();
                            }
                        }
                    });
                    settingSense.F1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingSense.3
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            int i11 = SettingSense.Q1;
                            final SettingSense settingSense2 = SettingSense.this;
                            if (settingSense2.K1 != null || settingSense2.L1 != null || settingSense2.M1 != null) {
                                return;
                            }
                            settingSense2.D0();
                            DialogSetMsg dialogSetMsg = new DialogSetMsg(settingSense2, R.string.reset_setting, R.string.reset, new DialogSetFull.DialogApplyListener() { // from class: com.mycompany.app.setting.SettingSense.6
                                @Override // com.mycompany.app.dialog.DialogSetFull.DialogApplyListener
                                public final void a() {
                                    int i12 = SettingSense.Q1;
                                    SettingSense settingSense3 = SettingSense.this;
                                    settingSense3.D0();
                                    int[] iArr2 = settingSense3.O1;
                                    if (iArr2 == null) {
                                        return;
                                    }
                                    iArr2[0] = 100;
                                    iArr2[1] = 100;
                                    iArr2[2] = 100;
                                    iArr2[3] = 100;
                                    iArr2[4] = 100;
                                    for (int i13 = 0; i13 < 5; i13++) {
                                        settingSense3.H0(i13, settingSense3.O1[i13]);
                                    }
                                    settingSense3.G0(false);
                                }
                            });
                            settingSense2.K1 = dialogSetMsg;
                            dialogSetMsg.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingSense.7
                                @Override // android.content.DialogInterface.OnDismissListener
                                public final void onDismiss(DialogInterface dialogInterface) {
                                    int i12 = SettingSense.Q1;
                                    SettingSense.this.D0();
                                }
                            });
                        }
                    });
                    settingSense.G1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingSense.4
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            SettingSense settingSense2 = SettingSense.this;
                            MyButtonImage myButtonImage4 = settingSense2.G1;
                            if (myButtonImage4 == null) {
                                return;
                            }
                            myButtonImage4.setClickable(false);
                            settingSense2.G1.post(new Runnable() { // from class: com.mycompany.app.setting.SettingSense.4.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    SettingSense settingSense3 = SettingSense.this;
                                    if (settingSense3.G1 == null) {
                                        return;
                                    }
                                    settingSense3.G0(true);
                                }
                            });
                        }
                    });
                    for (int i11 = 0; i11 < 5; i11++) {
                        if (MainApp.K1) {
                            settingSense.I1[i11].setLineColor(-328966);
                            settingSense.I1[i11].setBackgroundResource(R.drawable.selector_normal_dark);
                            settingSense.J1[i11].setTextColor(-328966);
                        } else {
                            settingSense.I1[i11].setLineColor(-16777216);
                            settingSense.I1[i11].setBackgroundResource(R.drawable.selector_normal);
                            settingSense.J1[i11].setTextColor(-16777216);
                        }
                        settingSense.I1[i11].setTag(Integer.valueOf(i11));
                        settingSense.I1[i11].setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingSense.5
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                Object tag;
                                final int intValue;
                                DialogSeekSimple dialogSeekSimple;
                                final SettingSense settingSense2 = SettingSense.this;
                                if (settingSense2.I1 != null && view != null && (tag = view.getTag()) != null && (intValue = ((Integer) tag).intValue()) >= 0 && intValue < settingSense2.I1.length && settingSense2.K1 == null && (dialogSeekSimple = settingSense2.L1) == null && settingSense2.M1 == null) {
                                    if (dialogSeekSimple != null) {
                                        dialogSeekSimple.dismiss();
                                        settingSense2.L1 = null;
                                    }
                                    int[] iArr2 = settingSense2.O1;
                                    if (iArr2 != null) {
                                        final int i12 = iArr2[intValue];
                                        if (PrefRead.z) {
                                            PrefRead.z = false;
                                            PrefSet.d(8, settingSense2.f1, "mGuideSense", false);
                                        }
                                        settingSense2.J1[intValue].setNotiTop(false);
                                        DialogSeekSimple dialogSeekSimple2 = new DialogSeekSimple(settingSense2, 0, i12, new DialogSeekAudio.DialogSeekListener() { // from class: com.mycompany.app.setting.SettingSense.8
                                            @Override // com.mycompany.app.dialog.DialogSeekAudio.DialogSeekListener
                                            public final void a(int i13) {
                                                SettingSense settingSense3 = SettingSense.this;
                                                int[] iArr3 = settingSense3.O1;
                                                if (iArr3 == null || i12 == i13) {
                                                    return;
                                                }
                                                int i14 = intValue;
                                                iArr3[i14] = i13;
                                                settingSense3.H0(i14, i13);
                                            }
                                        });
                                        settingSense2.L1 = dialogSeekSimple2;
                                        dialogSeekSimple2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingSense.9
                                            @Override // android.content.DialogInterface.OnDismissListener
                                            public final void onDismiss(DialogInterface dialogInterface) {
                                                int i13 = SettingSense.Q1;
                                                SettingSense settingSense3 = SettingSense.this;
                                                DialogSeekSimple dialogSeekSimple3 = settingSense3.L1;
                                                if (dialogSeekSimple3 != null) {
                                                    dialogSeekSimple3.dismiss();
                                                    settingSense3.L1 = null;
                                                }
                                            }
                                        });
                                    }
                                }
                            }
                        });
                        settingSense.J1[i11].setTextSize(1, 16.0f);
                        if (i11 < 4 && i11 >= 0 && i11 < 4 && (myLineFrameArr2 = settingSense.I1) != null && (layoutParams12 = myLineFrameArr2[i11].getLayoutParams()) != null) {
                            if (i11 != 0 && i11 != 1) {
                                layoutParams12.width = MainApp.i1;
                            } else {
                                layoutParams12.height = MainApp.i1;
                            }
                        }
                        settingSense.H0(i11, settingSense.O1[i11]);
                    }
                    if (PrefRead.z) {
                        for (int i12 = 0; i12 < 5; i12++) {
                            settingSense.J1[i12].setNotiTop(true);
                        }
                    }
                }
            }
        });
    }

    @Override // com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
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
        this.C1 = null;
        this.E1 = null;
        this.I1 = null;
        this.J1 = null;
        this.O1 = null;
    }

    @Override // com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        super.onPause();
        if (isFinishing()) {
            D0();
            DialogSeekSimple dialogSeekSimple = this.L1;
            if (dialogSeekSimple != null) {
                dialogSeekSimple.dismiss();
                this.L1 = null;
            }
            E0();
        }
    }
}
