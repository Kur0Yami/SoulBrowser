package com.mycompany.app.setting;

import android.content.DialogInterface;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Handler;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.mycompany.app.dialog.DialogSaveConfirm;
import com.mycompany.app.dialog.DialogSeekAudio;
import com.mycompany.app.dialog.DialogSetFull;
import com.mycompany.app.dialog.DialogSetMsg;
import com.mycompany.app.dialog.a;
import com.mycompany.app.image.ImageSizeListener;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefRead;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.pref.PrefTts;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyArrowView;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyHeaderView;
import com.mycompany.app.view.MyMainRelative;
import com.mycompany.app.view.MyRoundItem;

/* loaded from: classes3.dex */
public class SettingHandArea extends CastActivity {
    public static final /* synthetic */ int Z1 = 0;
    public MyMainRelative C1;
    public MyButtonImage D1;
    public AppCompatTextView E1;
    public MyButtonImage F1;
    public MyButtonImage G1;
    public MyRoundItem H1;
    public View I1;
    public MyRoundItem J1;
    public AppCompatTextView K1;
    public MyArrowView L1;
    public DialogSetMsg M1;
    public DialogSaveConfirm N1;
    public boolean O1;
    public int P1;
    public int Q1;
    public int R1;
    public int S1;
    public int T1;
    public float U1;
    public boolean V1;
    public int W1;
    public int X1;
    public boolean Y1;

    public final void D0() {
        DialogSetMsg dialogSetMsg = this.M1;
        if (dialogSetMsg != null) {
            dialogSetMsg.dismiss();
            this.M1 = null;
        }
    }

    public final void E0() {
        DialogSaveConfirm dialogSaveConfirm = this.N1;
        if (dialogSaveConfirm != null) {
            dialogSaveConfirm.dismiss();
            this.N1 = null;
        }
    }

    public final void F0(boolean z) {
        if (this.O1) {
            return;
        }
        this.O1 = true;
        int i = this.X1;
        if (i != PrefTts.J) {
            PrefTts.J = i;
            if (z) {
                PrefSet.f(this.f1, 12, i, "mHandTop2");
            } else {
                PrefSet.i(this.f1, 12, "mHandTop2");
            }
        }
        if (z) {
            finish();
        } else {
            this.O1 = false;
        }
    }

    public final void G0(int i) {
        MyRoundItem myRoundItem = this.J1;
        if (myRoundItem != null) {
            int i2 = this.S1;
            if (i < i2 || i > (i2 = this.R1)) {
                i = i2;
            }
            this.T1 = i;
            int round = Math.round(myRoundItem.getTranslationY());
            int i3 = this.T1;
            if (round == i3) {
                return;
            }
            this.J1.setTranslationY(i3);
            int round2 = Math.round((1.0f - (this.T1 / this.P1)) * 100.0f);
            this.X1 = round2;
            if (round2 < 50) {
                this.X1 = 50;
            } else if (round2 > 90) {
                this.X1 = 90;
            }
            a.t(new StringBuilder(), this.X1, "%", this.K1);
        }
    }

    public final void H0() {
        if (this.M1 != null || this.N1 != null) {
            return;
        }
        E0();
        DialogSaveConfirm dialogSaveConfirm = new DialogSaveConfirm(this, new DialogSeekAudio.DialogSeekListener() { // from class: com.mycompany.app.setting.SettingHandArea.8
            @Override // com.mycompany.app.dialog.DialogSeekAudio.DialogSeekListener
            public final void a(int i) {
                int i2 = SettingHandArea.Z1;
                SettingHandArea settingHandArea = SettingHandArea.this;
                settingHandArea.E0();
                if (i == 0) {
                    settingHandArea.F0(true);
                } else {
                    settingHandArea.finish();
                }
            }
        });
        this.N1 = dialogSaveConfirm;
        dialogSaveConfirm.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingHandArea.9
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                int i = SettingHandArea.Z1;
                SettingHandArea.this.E0();
            }
        });
    }

    @Override // com.mycompany.app.main.MainActivity, android.app.Activity, android.view.Window.Callback
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent == null) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if ((actionMasked == 1 || actionMasked == 2 || actionMasked == 3) && this.J1 != null) {
                float rawY = motionEvent.getRawY() - this.U1;
                if (this.V1 || Math.abs(rawY) >= MainApp.r1) {
                    this.V1 = true;
                    MyArrowView myArrowView = this.L1;
                    if (myArrowView != null) {
                        myArrowView.setVisibility(8);
                        this.L1 = null;
                        if (PrefRead.A) {
                            PrefRead.A = false;
                            PrefSet.d(8, this.f1, "mGuideHand", false);
                        }
                    }
                    G0(Math.round(this.W1 + rawY));
                }
            }
        } else if (this.J1 != null) {
            this.U1 = motionEvent.getRawY();
            this.V1 = false;
            this.W1 = this.T1;
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // com.mycompany.app.main.MainActivity
    public final void l0() {
        if (this.O1) {
            return;
        }
        if (this.X1 != PrefTts.J) {
            H0();
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
        boolean z = this.Y1;
        boolean z2 = MainApp.K1;
        if (z != z2) {
            this.Y1 = z2;
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
                        this.H1.setBackgroundColor(-12632257);
                        this.J1.setBackgroundColor(-14606047);
                    } else {
                        this.D1.setImageResource(R.drawable.outline_chevron_left_black_24);
                        this.E1.setTextColor(-16777216);
                        this.F1.setImageResource(R.drawable.outline_replay_black_20);
                        this.G1.setImageResource(R.drawable.outline_check_black_20);
                        this.H1.setBackgroundColor(-2434342);
                        this.J1.setBackgroundColor(-1);
                    }
                    A0();
                } catch (Exception unused) {
                }
            }
        }
    }

    @Override // com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        MyArrowView myArrowView;
        super.onCreate(bundle);
        int i = PrefTts.J;
        if (i < 50) {
            PrefTts.J = 50;
        } else if (i > 90) {
            PrefTts.J = 90;
        }
        this.X1 = PrefTts.J;
        this.Y1 = MainApp.K1;
        MainUtil.v7(this, 1);
        int i2 = R.id.set_icon_reset;
        int i3 = R.id.set_icon_apply;
        int i4 = R.id.set_cast_icon;
        int i5 = R.id.set_cast_ctrl;
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
        appCompatTextView.setText(R.string.onehand_area);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams2.addRule(16, i2);
        layoutParams2.setMarginStart(MainApp.i1);
        myHeaderView.addView(appCompatTextView, layoutParams2);
        int G = (int) MainUtil.G(this, 14.0f);
        MyButtonImage myButtonImage2 = new MyButtonImage(this);
        myButtonImage2.setId(i2);
        myButtonImage2.setPadding(G, G, G, G);
        myButtonImage2.setScaleType(scaleType);
        int i6 = MainApp.g1;
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(i6, i6);
        layoutParams3.addRule(16, i3);
        layoutParams3.topMargin = MainApp.G1;
        myHeaderView.addView(myButtonImage2, layoutParams3);
        MyButtonImage myButtonImage3 = new MyButtonImage(this);
        myButtonImage3.setId(i3);
        myButtonImage3.setPadding(G, G, G, G);
        myButtonImage3.setScaleType(scaleType);
        int i7 = MainApp.g1;
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(i7, i7);
        layoutParams4.addRule(16, i4);
        layoutParams4.topMargin = MainApp.G1;
        myHeaderView.addView(myButtonImage3, layoutParams4);
        FrameLayout frameLayout = new FrameLayout(this);
        frameLayout.setId(i4);
        frameLayout.setVisibility(4);
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-2, MainApp.b1);
        layoutParams5.addRule(21);
        myHeaderView.addView(frameLayout, layoutParams5);
        MyRoundItem myRoundItem = new MyRoundItem(this);
        myRoundItem.d(true, true);
        RelativeLayout.LayoutParams h = androidx.work.impl.workers.a.h(-1, -1, 2, i5);
        h.topMargin = MainApp.b1;
        myMainRelative.addView(myRoundItem, h);
        int G2 = (int) MainUtil.G(this, 100.0f);
        int G3 = (int) MainUtil.G(this, 1.0f);
        View view = new View(this);
        RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(G2, G3);
        layoutParams6.addRule(14);
        myRoundItem.addView(view, layoutParams6);
        MyRoundItem myRoundItem2 = new MyRoundItem(this);
        myRoundItem2.d(true, true);
        RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams7.addRule(12);
        myRoundItem.addView(myRoundItem2, layoutParams7);
        AppCompatTextView appCompatTextView2 = new AppCompatTextView(this, null);
        appCompatTextView2.setTextSize(1, 18.0f);
        RelativeLayout.LayoutParams layoutParams8 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams8.addRule(12);
        layoutParams8.addRule(14);
        layoutParams8.bottomMargin = MainApp.g1;
        myRoundItem.addView(appCompatTextView2, layoutParams8);
        if (PrefRead.A) {
            myArrowView = new MyArrowView(this);
            myArrowView.setVisibility(4);
            int i8 = MainApp.g1;
            RelativeLayout.LayoutParams layoutParams9 = new RelativeLayout.LayoutParams(i8 / 2, i8);
            layoutParams9.addRule(14);
            myRoundItem.addView(myArrowView, layoutParams9);
        } else {
            myArrowView = null;
        }
        FrameLayout frameLayout2 = new FrameLayout(this);
        frameLayout2.setId(i5);
        frameLayout2.setVisibility(8);
        RelativeLayout.LayoutParams layoutParams10 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams10.addRule(12);
        myMainRelative.addView(frameLayout2, layoutParams10);
        this.C1 = myMainRelative;
        this.D1 = myButtonImage;
        this.E1 = appCompatTextView;
        this.F1 = myButtonImage2;
        this.G1 = myButtonImage3;
        this.H1 = myRoundItem;
        this.I1 = view;
        this.J1 = myRoundItem2;
        this.K1 = appCompatTextView2;
        this.L1 = myArrowView;
        myMainRelative.setListener(new ImageSizeListener() { // from class: com.mycompany.app.setting.SettingHandArea.1
            @Override // com.mycompany.app.image.ImageSizeListener
            public final void a(View view2, int i9, int i10) {
                SettingHandArea settingHandArea = SettingHandArea.this;
                if (settingHandArea.I1 != null) {
                    settingHandArea.P1 = i10;
                    float f = i10;
                    settingHandArea.Q1 = Math.round(0.39999998f * f);
                    settingHandArea.R1 = Math.round(0.5f * f);
                    settingHandArea.S1 = Math.round(f * 0.100000024f);
                    settingHandArea.T1 = Math.round((1.0f - (settingHandArea.X1 / 100.0f)) * settingHandArea.P1);
                    settingHandArea.I1.setTranslationY(settingHandArea.S1);
                    settingHandArea.G0(settingHandArea.T1);
                    MyArrowView myArrowView2 = settingHandArea.L1;
                    if (myArrowView2 != null) {
                        myArrowView2.setTranslationY(settingHandArea.T1 + MainApp.g1);
                        settingHandArea.L1.setVisibility(0);
                        settingHandArea.L1.setType(4);
                    }
                }
            }
        });
        B0(this.C1, frameLayout, frameLayout2);
        this.C1.setWindow(getWindow());
        initMainScreenOn(this.C1);
        Handler handler = this.O0;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.setting.SettingHandArea.2
            @Override // java.lang.Runnable
            public final void run() {
                final SettingHandArea settingHandArea = SettingHandArea.this;
                if (settingHandArea.C1 == null) {
                    return;
                }
                if (MainApp.K1) {
                    settingHandArea.D1.setImageResource(R.drawable.outline_chevron_left_dark_24);
                    settingHandArea.E1.setTextColor(-328966);
                    settingHandArea.F1.setImageResource(R.drawable.outline_replay_dark_20);
                    settingHandArea.G1.setImageResource(R.drawable.outline_check_dark_20);
                    settingHandArea.H1.setBackgroundColor(-12632257);
                    settingHandArea.I1.setBackgroundColor(-2434342);
                    settingHandArea.J1.setBackgroundColor(-14606047);
                    settingHandArea.K1.setTextColor(-328966);
                    settingHandArea.D1.setBgPreColor(-12632257);
                    settingHandArea.F1.setBgPreColor(-12632257);
                    settingHandArea.G1.setBgPreColor(-12632257);
                } else {
                    settingHandArea.D1.setImageResource(R.drawable.outline_chevron_left_black_24);
                    settingHandArea.E1.setTextColor(-16777216);
                    settingHandArea.F1.setImageResource(R.drawable.outline_replay_black_20);
                    settingHandArea.G1.setImageResource(R.drawable.outline_check_black_20);
                    settingHandArea.H1.setBackgroundColor(-2434342);
                    settingHandArea.I1.setBackgroundColor(-12632257);
                    settingHandArea.J1.setBackgroundColor(-1);
                    settingHandArea.K1.setTextColor(-16777216);
                    settingHandArea.D1.setBgPreColor(553648128);
                    settingHandArea.F1.setBgPreColor(553648128);
                    settingHandArea.G1.setBgPreColor(553648128);
                }
                settingHandArea.D1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingHandArea.3
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        int i9 = SettingHandArea.Z1;
                        SettingHandArea settingHandArea2 = SettingHandArea.this;
                        if (settingHandArea2.X1 != PrefTts.J) {
                            settingHandArea2.H0();
                        } else {
                            settingHandArea2.finish();
                        }
                    }
                });
                settingHandArea.F1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingHandArea.4
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        int i9 = SettingHandArea.Z1;
                        final SettingHandArea settingHandArea2 = SettingHandArea.this;
                        if (settingHandArea2.M1 != null || settingHandArea2.N1 != null) {
                            return;
                        }
                        settingHandArea2.D0();
                        DialogSetMsg dialogSetMsg = new DialogSetMsg(settingHandArea2, R.string.reset_setting, R.string.reset, new DialogSetFull.DialogApplyListener() { // from class: com.mycompany.app.setting.SettingHandArea.6
                            @Override // com.mycompany.app.dialog.DialogSetFull.DialogApplyListener
                            public final void a() {
                                int i10 = SettingHandArea.Z1;
                                SettingHandArea settingHandArea3 = SettingHandArea.this;
                                settingHandArea3.D0();
                                settingHandArea3.G0(settingHandArea3.Q1);
                                settingHandArea3.F0(false);
                            }
                        });
                        settingHandArea2.M1 = dialogSetMsg;
                        dialogSetMsg.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingHandArea.7
                            @Override // android.content.DialogInterface.OnDismissListener
                            public final void onDismiss(DialogInterface dialogInterface) {
                                int i10 = SettingHandArea.Z1;
                                SettingHandArea.this.D0();
                            }
                        });
                    }
                });
                settingHandArea.G1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingHandArea.5
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        SettingHandArea settingHandArea2 = SettingHandArea.this;
                        MyButtonImage myButtonImage4 = settingHandArea2.G1;
                        if (myButtonImage4 == null) {
                            return;
                        }
                        myButtonImage4.setClickable(false);
                        settingHandArea2.G1.post(new Runnable() { // from class: com.mycompany.app.setting.SettingHandArea.5.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                SettingHandArea settingHandArea3 = SettingHandArea.this;
                                if (settingHandArea3.G1 == null) {
                                    return;
                                }
                                settingHandArea3.F0(true);
                            }
                        });
                    }
                });
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
        MyRoundItem myRoundItem2 = this.J1;
        if (myRoundItem2 != null) {
            myRoundItem2.b();
            this.J1 = null;
        }
        MyArrowView myArrowView = this.L1;
        if (myArrowView != null) {
            myArrowView.i = null;
            myArrowView.j = null;
            myArrowView.k = null;
            myArrowView.l = null;
            myArrowView.m = null;
            this.L1 = null;
        }
        this.C1 = null;
        this.E1 = null;
        this.I1 = null;
        this.K1 = null;
    }

    @Override // com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        super.onPause();
        if (isFinishing()) {
            D0();
            E0();
        }
    }
}
