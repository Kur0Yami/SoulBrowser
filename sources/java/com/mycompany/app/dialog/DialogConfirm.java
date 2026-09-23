package com.mycompany.app.dialog;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.widget.NestedScrollView;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonCheck;
import com.mycompany.app.view.MyButtonText;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyLineFrame;
import com.mycompany.app.view.MyLineLinear;
import com.mycompany.app.view.MyLineText;

/* loaded from: classes3.dex */
public class DialogConfirm extends MyDialogBottom {
    public AppCompatTextView A0;
    public AppCompatTextView B0;
    public AppCompatTextView C0;
    public MyButtonText D0;
    public MyLineFrame E0;
    public MyButtonCheck F0;
    public AppCompatTextView G0;
    public MyLineText H0;
    public MyLineText I0;
    public Context a0;
    public DialogConfListener b0;
    public DialogConfBtnListener c0;
    public final boolean d0;
    public final int e0;
    public String f0;
    public String g0;
    public final int h0;
    public final int i0;
    public String j0;
    public final int k0;
    public final int l0;
    public final int m0;
    public final int n0;
    public final int o0;
    public final boolean p0;
    public final int q0;
    public final int r0;
    public MyDialogLinear s0;
    public ImageView t0;
    public AppCompatTextView u0;
    public AppCompatTextView v0;
    public AppCompatTextView w0;
    public AppCompatTextView x0;
    public AppCompatTextView y0;
    public AppCompatTextView z0;

    /* loaded from: classes3.dex */
    public interface DialogConfBtnListener {
        void a(boolean z);

        void b();

        void onCancel();
    }

    /* loaded from: classes3.dex */
    public interface DialogConfListener {
        void a(boolean z);
    }

    public DialogConfirm(Activity activity, int i, DialogConfListener dialogConfListener) {
        super(activity);
        this.a0 = getContext();
        this.b0 = dialogConfListener;
        this.d0 = true;
        this.e0 = i;
        this.p0 = false;
        this.q0 = R.string.ok;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogConfirm.1
            @Override // java.lang.Runnable
            public final void run() {
                DialogConfirm.B(DialogConfirm.this);
            }
        });
    }

    public static void B(DialogConfirm dialogConfirm) {
        int i;
        int i2;
        ImageView imageView;
        AppCompatTextView appCompatTextView;
        ImageView imageView2;
        AppCompatTextView appCompatTextView2;
        AppCompatTextView appCompatTextView3;
        AppCompatTextView appCompatTextView4;
        AppCompatTextView appCompatTextView5;
        AppCompatTextView appCompatTextView6;
        AppCompatTextView appCompatTextView7;
        AppCompatTextView appCompatTextView8;
        AppCompatTextView appCompatTextView9;
        AppCompatTextView appCompatTextView10;
        AppCompatTextView appCompatTextView11;
        AppCompatTextView appCompatTextView12;
        MyButtonText myButtonText;
        MyLineFrame myLineFrame;
        MyButtonCheck myButtonCheck;
        AppCompatTextView appCompatTextView13;
        AppCompatTextView appCompatTextView14;
        MyLineText myLineText;
        MyLineText myLineText2;
        MyLineText myLineText3;
        int i3 = dialogConfirm.o0;
        int i4 = dialogConfirm.n0;
        int i5 = dialogConfirm.m0;
        int i6 = dialogConfirm.l0;
        int i7 = dialogConfirm.k0;
        int i8 = dialogConfirm.i0;
        int i9 = dialogConfirm.h0;
        int i10 = dialogConfirm.e0;
        int i11 = dialogConfirm.r0;
        int i12 = dialogConfirm.q0;
        Context context = dialogConfirm.a0;
        if (context != null) {
            MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
            if (dialogConfirm.d0) {
                MyLineFrame myLineFrame2 = new MyLineFrame(context);
                myLineFrame2.setLinePad(MainApp.E1);
                myLineFrame2.setLineDn(true);
                q.addView(myLineFrame2, -1, MainApp.g1);
                ImageView imageView3 = new ImageView(context);
                imageView3.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                i2 = i12;
                int i13 = MainApp.f1;
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i13, i13);
                layoutParams.gravity = 8388627;
                layoutParams.setMarginStart(MainApp.E1);
                myLineFrame2.addView(imageView3, layoutParams);
                AppCompatTextView i14 = com.google.android.gms.internal.mlkit_vision_text_common.a.i(context, null, 2);
                i14.setEllipsize(TextUtils.TruncateAt.END);
                i14.setTextSize(1, 16.0f);
                i = i11;
                FrameLayout.LayoutParams d = com.google.android.gms.internal.mlkit_vision_text_common.a.d(i14, R.string.tip, -1, -2);
                d.gravity = 8388627;
                d.setMarginStart((int) MainUtil.G(context, 64.0f));
                d.setMarginEnd(MainApp.E1);
                myLineFrame2.addView(i14, d);
                appCompatTextView = i14;
                imageView = imageView3;
            } else {
                i = i11;
                i2 = i12;
                imageView = null;
                appCompatTextView = null;
            }
            NestedScrollView m = com.google.android.gms.internal.mlkit_vision_text_common.a.m(context, null, 2);
            AppCompatTextView appCompatTextView15 = appCompatTextView;
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, 0);
            layoutParams2.weight = 1.0f;
            q.addView(m, layoutParams2);
            LinearLayout linearLayout = new LinearLayout(context);
            int i15 = MainApp.E1;
            linearLayout.setPadding(i15, i15, i15, i15);
            linearLayout.setMinimumHeight((int) MainUtil.G(context, 72.0f));
            linearLayout.setOrientation(1);
            m.addView(linearLayout, -1, -2);
            if (i10 == 0 && TextUtils.isEmpty(dialogConfirm.f0)) {
                imageView2 = imageView;
                appCompatTextView2 = null;
            } else {
                AppCompatTextView appCompatTextView16 = new AppCompatTextView(context, null);
                imageView2 = imageView;
                appCompatTextView16.setLineSpacing(MainApp.G1, 1.0f);
                appCompatTextView16.setTextSize(1, 14.0f);
                if (i10 != 0) {
                    appCompatTextView16.setText(i10);
                } else {
                    appCompatTextView16.setText(dialogConfirm.f0);
                }
                linearLayout.addView(appCompatTextView16, -1, -2);
                appCompatTextView2 = appCompatTextView16;
            }
            if (!TextUtils.isEmpty(dialogConfirm.g0)) {
                appCompatTextView3 = new AppCompatTextView(context, null);
                appCompatTextView3.setLineSpacing(MainApp.G1, 1.0f);
                appCompatTextView3.setTextSize(1, 14.0f);
                appCompatTextView3.setText(dialogConfirm.g0);
                LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -2);
                layoutParams3.topMargin = MainApp.G1 * 6;
                linearLayout.addView(appCompatTextView3, layoutParams3);
            } else {
                appCompatTextView3 = null;
            }
            if (i9 != 0) {
                appCompatTextView4 = new AppCompatTextView(context, null);
                appCompatTextView4.setTextSize(1, 16.0f);
                appCompatTextView4.setText(i9);
                linearLayout.addView(appCompatTextView4, -1, -2);
            } else {
                appCompatTextView4 = null;
            }
            if (i8 == 0 && TextUtils.isEmpty(dialogConfirm.j0)) {
                appCompatTextView5 = null;
            } else {
                appCompatTextView5 = new AppCompatTextView(context, null);
                appCompatTextView5.setLineSpacing(MainApp.G1, 1.0f);
                appCompatTextView5.setTextSize(1, 14.0f);
                if (i8 != 0) {
                    appCompatTextView5.setText(i8);
                } else {
                    appCompatTextView5.setText(dialogConfirm.j0);
                }
                LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-1, -2);
                layoutParams4.topMargin = MainApp.F1;
                layoutParams4.setMarginStart(MainApp.E1);
                linearLayout.addView(appCompatTextView5, layoutParams4);
            }
            if (i7 != 0) {
                appCompatTextView6 = new AppCompatTextView(context, null);
                appCompatTextView6.setLineSpacing(MainApp.G1, 1.0f);
                appCompatTextView6.setTextSize(1, 14.0f);
                appCompatTextView6.setText(i7);
                LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-1, -2);
                layoutParams5.topMargin = MainApp.F1;
                layoutParams5.setMarginStart(MainApp.E1);
                linearLayout.addView(appCompatTextView6, layoutParams5);
            } else {
                appCompatTextView6 = null;
            }
            if (i6 != 0) {
                appCompatTextView7 = new AppCompatTextView(context, null);
                appCompatTextView7.setLineSpacing(MainApp.G1, 1.0f);
                appCompatTextView7.setTextSize(1, 14.0f);
                appCompatTextView7.setText(i6);
                LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(-1, -2);
                layoutParams6.topMargin = MainApp.F1;
                layoutParams6.setMarginStart(MainApp.E1);
                linearLayout.addView(appCompatTextView7, layoutParams6);
            } else {
                appCompatTextView7 = null;
            }
            if (i5 != 0) {
                appCompatTextView8 = new AppCompatTextView(context, null);
                appCompatTextView8.setLineSpacing(MainApp.G1, 1.0f);
                appCompatTextView8.setTextSize(1, 14.0f);
                appCompatTextView8.setText(i5);
                LinearLayout.LayoutParams layoutParams7 = new LinearLayout.LayoutParams(-1, -2);
                layoutParams7.topMargin = MainApp.F1;
                layoutParams7.setMarginStart(MainApp.E1);
                linearLayout.addView(appCompatTextView8, layoutParams7);
            } else {
                appCompatTextView8 = null;
            }
            if (i4 != 0) {
                appCompatTextView10 = new AppCompatTextView(context, null);
                appCompatTextView10.setGravity(1);
                appCompatTextView9 = appCompatTextView8;
                appCompatTextView10.setLineSpacing(MainApp.G1, 1.0f);
                appCompatTextView10.setTextSize(1, 14.0f);
                appCompatTextView10.setText(i4);
                LinearLayout.LayoutParams layoutParams8 = new LinearLayout.LayoutParams(-1, -2);
                layoutParams8.topMargin = MainApp.E1;
                linearLayout.addView(appCompatTextView10, layoutParams8);
            } else {
                appCompatTextView9 = appCompatTextView8;
                appCompatTextView10 = null;
            }
            if (i3 != 0) {
                int i16 = MainApp.g1 / 2;
                myButtonText = new MyButtonText(context);
                appCompatTextView11 = appCompatTextView10;
                appCompatTextView12 = appCompatTextView7;
                myButtonText.setPadding(MainApp.F1, MainApp.G1, MainApp.F1, MainApp.G1);
                myButtonText.setGravity(17);
                myButtonText.setTextSize(1, 16.0f);
                myButtonText.setText(i3);
                myButtonText.setMinHeight(MainApp.g1);
                myButtonText.setBgNorFixed(true);
                myButtonText.setRoundRect(true);
                myButtonText.setRoundRadius(i16);
                LinearLayout.LayoutParams layoutParams9 = new LinearLayout.LayoutParams(-1, -2);
                layoutParams9.topMargin = i16;
                layoutParams9.bottomMargin = MainApp.F1;
                layoutParams9.setMarginStart(i16);
                layoutParams9.setMarginEnd(i16);
                linearLayout.addView(myButtonText, layoutParams9);
            } else {
                appCompatTextView11 = appCompatTextView10;
                appCompatTextView12 = appCompatTextView7;
                myButtonText = null;
            }
            if (dialogConfirm.p0) {
                myLineFrame = new MyLineFrame(context);
                myLineFrame.setLinePad(MainApp.E1);
                myLineFrame.setLineUp(true);
                q.addView(myLineFrame, -1, -2);
                myButtonCheck = new MyButtonCheck(context);
                int i17 = MainApp.g1;
                FrameLayout.LayoutParams layoutParams10 = new FrameLayout.LayoutParams(i17, i17);
                layoutParams10.gravity = 8388627;
                layoutParams10.setMarginStart(MainApp.G1);
                myLineFrame.addView(myButtonCheck, layoutParams10);
                appCompatTextView13 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 14.0f);
                FrameLayout.LayoutParams d2 = com.google.android.gms.internal.mlkit_vision_text_common.a.d(appCompatTextView13, R.string.message_confirm, -1, -2);
                d2.gravity = 8388627;
                d2.setMarginStart(MainApp.h1);
                d2.setMarginEnd(MainApp.E1);
                myLineFrame.addView(appCompatTextView13, d2);
            } else {
                myLineFrame = null;
                myButtonCheck = null;
                appCompatTextView13 = null;
            }
            if (i != 0) {
                MyLineLinear myLineLinear = new MyLineLinear(context);
                myLineLinear.setBaselineAligned(false);
                myLineLinear.setOrientation(0);
                myLineLinear.setLinePad(MainApp.E1);
                myLineLinear.setLineUp(true);
                q.addView(myLineLinear, -1, MainApp.g1);
                if (i != 0) {
                    myLineText2 = new MyLineText(context);
                    myLineText2.setGravity(17);
                    myLineText2.setTextSize(1, 16.0f);
                    myLineText2.setText(i);
                    myLineText2.s(context);
                    appCompatTextView14 = appCompatTextView13;
                    LinearLayout.LayoutParams layoutParams11 = new LinearLayout.LayoutParams(0, -1);
                    layoutParams11.weight = 1.0f;
                    myLineLinear.addView(myLineText2, layoutParams11);
                } else {
                    appCompatTextView14 = appCompatTextView13;
                    myLineText2 = null;
                }
                if (i2 != 0) {
                    myLineText3 = new MyLineText(context);
                    myLineText3.setGravity(17);
                    myLineText3.setTextSize(1, 16.0f);
                    myLineText3.setText(i2);
                    LinearLayout.LayoutParams layoutParams12 = new LinearLayout.LayoutParams(0, -1);
                    layoutParams12.weight = 1.0f;
                    myLineLinear.addView(myLineText3, layoutParams12);
                } else {
                    myLineText3 = null;
                }
                myLineText = myLineText3;
            } else {
                appCompatTextView14 = appCompatTextView13;
                int i18 = i2;
                if (i18 != 0) {
                    myLineText = new MyLineText(context);
                    myLineText.setGravity(17);
                    myLineText.setTextSize(1, 16.0f);
                    myLineText.setText(i18);
                    myLineText.setLinePad(MainApp.E1);
                    myLineText.setLineUp(true);
                    q.addView(myLineText, -1, MainApp.g1);
                } else {
                    myLineText = null;
                }
                myLineText2 = null;
            }
            dialogConfirm.s0 = q;
            dialogConfirm.t0 = imageView2;
            dialogConfirm.u0 = appCompatTextView15;
            dialogConfirm.v0 = appCompatTextView2;
            dialogConfirm.w0 = appCompatTextView3;
            dialogConfirm.x0 = appCompatTextView4;
            dialogConfirm.y0 = appCompatTextView5;
            dialogConfirm.z0 = appCompatTextView6;
            dialogConfirm.A0 = appCompatTextView12;
            dialogConfirm.B0 = appCompatTextView9;
            dialogConfirm.C0 = appCompatTextView11;
            dialogConfirm.D0 = myButtonText;
            dialogConfirm.E0 = myLineFrame;
            dialogConfirm.F0 = myButtonCheck;
            dialogConfirm.G0 = appCompatTextView14;
            dialogConfirm.H0 = myLineText;
            dialogConfirm.I0 = myLineText2;
            Handler handler = dialogConfirm.i;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogConfirm.7
                @Override // java.lang.Runnable
                public final void run() {
                    final DialogConfirm dialogConfirm2 = DialogConfirm.this;
                    if (dialogConfirm2.s0 != null && dialogConfirm2.a0 != null) {
                        if (MainApp.K1) {
                            ImageView imageView4 = dialogConfirm2.t0;
                            if (imageView4 != null) {
                                imageView4.setImageResource(R.drawable.outline_wb_incandescent_2_dark_24);
                            }
                            AppCompatTextView appCompatTextView17 = dialogConfirm2.u0;
                            if (appCompatTextView17 != null) {
                                appCompatTextView17.setTextColor(-328966);
                            }
                            AppCompatTextView appCompatTextView18 = dialogConfirm2.v0;
                            if (appCompatTextView18 != null) {
                                appCompatTextView18.setTextColor(-328966);
                            }
                            AppCompatTextView appCompatTextView19 = dialogConfirm2.w0;
                            if (appCompatTextView19 != null) {
                                appCompatTextView19.setTextColor(-328966);
                            }
                            AppCompatTextView appCompatTextView20 = dialogConfirm2.x0;
                            if (appCompatTextView20 != null) {
                                appCompatTextView20.setTextColor(-328966);
                            }
                            AppCompatTextView appCompatTextView21 = dialogConfirm2.y0;
                            if (appCompatTextView21 != null) {
                                appCompatTextView21.setTextColor(-328966);
                            }
                            AppCompatTextView appCompatTextView22 = dialogConfirm2.z0;
                            if (appCompatTextView22 != null) {
                                appCompatTextView22.setTextColor(-328966);
                            }
                            AppCompatTextView appCompatTextView23 = dialogConfirm2.A0;
                            if (appCompatTextView23 != null) {
                                appCompatTextView23.setTextColor(-328966);
                            }
                            AppCompatTextView appCompatTextView24 = dialogConfirm2.B0;
                            if (appCompatTextView24 != null) {
                                appCompatTextView24.setTextColor(-328966);
                            }
                            AppCompatTextView appCompatTextView25 = dialogConfirm2.C0;
                            if (appCompatTextView25 != null) {
                                appCompatTextView25.setTextColor(-328966);
                            }
                            AppCompatTextView appCompatTextView26 = dialogConfirm2.G0;
                            if (appCompatTextView26 != null) {
                                appCompatTextView26.setTextColor(-328966);
                            }
                            MyButtonText myButtonText2 = dialogConfirm2.D0;
                            if (myButtonText2 != null) {
                                myButtonText2.u(-16777216, -14211289);
                                dialogConfirm2.D0.setTextColor(-328966);
                            }
                            MyLineFrame myLineFrame3 = dialogConfirm2.E0;
                            if (myLineFrame3 != null) {
                                myLineFrame3.setBackgroundResource(R.drawable.selector_normal_dark);
                            }
                            MyButtonCheck myButtonCheck2 = dialogConfirm2.F0;
                            if (myButtonCheck2 != null) {
                                myButtonCheck2.p(R.drawable.baseline_check_circle_dark_24, R.drawable.outline_radio_button_unchecked_dark_24);
                                dialogConfirm2.F0.setBgPreColor(-12632257);
                            }
                            MyLineText myLineText4 = dialogConfirm2.H0;
                            if (myLineText4 != null) {
                                myLineText4.setBackgroundResource(R.drawable.selector_normal_dark);
                                dialogConfirm2.H0.setTextColor(-328966);
                            }
                            MyLineText myLineText5 = dialogConfirm2.I0;
                            if (myLineText5 != null) {
                                myLineText5.setBackgroundResource(R.drawable.selector_normal_dark);
                                dialogConfirm2.I0.setTextColor(-328966);
                            }
                        } else {
                            ImageView imageView5 = dialogConfirm2.t0;
                            if (imageView5 != null) {
                                imageView5.setImageResource(R.drawable.outline_wb_incandescent_2_black_24);
                            }
                            AppCompatTextView appCompatTextView27 = dialogConfirm2.u0;
                            if (appCompatTextView27 != null) {
                                appCompatTextView27.setTextColor(-16777216);
                            }
                            AppCompatTextView appCompatTextView28 = dialogConfirm2.v0;
                            if (appCompatTextView28 != null) {
                                appCompatTextView28.setTextColor(-16777216);
                            }
                            AppCompatTextView appCompatTextView29 = dialogConfirm2.w0;
                            if (appCompatTextView29 != null) {
                                appCompatTextView29.setTextColor(-16777216);
                            }
                            AppCompatTextView appCompatTextView30 = dialogConfirm2.x0;
                            if (appCompatTextView30 != null) {
                                appCompatTextView30.setTextColor(-16777216);
                            }
                            AppCompatTextView appCompatTextView31 = dialogConfirm2.y0;
                            if (appCompatTextView31 != null) {
                                appCompatTextView31.setTextColor(-16777216);
                            }
                            AppCompatTextView appCompatTextView32 = dialogConfirm2.z0;
                            if (appCompatTextView32 != null) {
                                appCompatTextView32.setTextColor(-16777216);
                            }
                            AppCompatTextView appCompatTextView33 = dialogConfirm2.A0;
                            if (appCompatTextView33 != null) {
                                appCompatTextView33.setTextColor(-16777216);
                            }
                            AppCompatTextView appCompatTextView34 = dialogConfirm2.B0;
                            if (appCompatTextView34 != null) {
                                appCompatTextView34.setTextColor(-16777216);
                            }
                            AppCompatTextView appCompatTextView35 = dialogConfirm2.C0;
                            if (appCompatTextView35 != null) {
                                appCompatTextView35.setTextColor(-16777216);
                            }
                            AppCompatTextView appCompatTextView36 = dialogConfirm2.G0;
                            if (appCompatTextView36 != null) {
                                appCompatTextView36.setTextColor(-16777216);
                            }
                            MyButtonText myButtonText3 = dialogConfirm2.D0;
                            if (myButtonText3 != null) {
                                myButtonText3.u(-460552, 553648128);
                                dialogConfirm2.D0.setTextColor(-16777216);
                            }
                            MyLineFrame myLineFrame4 = dialogConfirm2.E0;
                            if (myLineFrame4 != null) {
                                myLineFrame4.setBackgroundResource(R.drawable.selector_normal);
                            }
                            MyButtonCheck myButtonCheck3 = dialogConfirm2.F0;
                            if (myButtonCheck3 != null) {
                                myButtonCheck3.p(R.drawable.baseline_check_circle_black_24, R.drawable.outline_radio_button_unchecked_black_24);
                                dialogConfirm2.F0.setBgPreColor(-2039584);
                            }
                            MyLineText myLineText6 = dialogConfirm2.H0;
                            if (myLineText6 != null) {
                                myLineText6.setBackgroundResource(R.drawable.selector_normal);
                                dialogConfirm2.H0.setTextColor(-14784824);
                            }
                            MyLineText myLineText7 = dialogConfirm2.I0;
                            if (myLineText7 != null) {
                                myLineText7.setBackgroundResource(R.drawable.selector_normal);
                                dialogConfirm2.I0.setTextColor(-16777216);
                            }
                        }
                        MyButtonText myButtonText4 = dialogConfirm2.D0;
                        if (myButtonText4 != null) {
                            myButtonText4.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogConfirm.8
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view) {
                                    DialogConfBtnListener dialogConfBtnListener = DialogConfirm.this.c0;
                                    if (dialogConfBtnListener != null) {
                                        dialogConfBtnListener.b();
                                    }
                                }
                            });
                        }
                        MyLineFrame myLineFrame5 = dialogConfirm2.E0;
                        if (myLineFrame5 != null) {
                            myLineFrame5.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogConfirm.9
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view) {
                                    DialogConfirm dialogConfirm3 = DialogConfirm.this;
                                    MyButtonCheck myButtonCheck4 = dialogConfirm3.F0;
                                    if (myButtonCheck4 == null) {
                                        return;
                                    }
                                    if (myButtonCheck4.D) {
                                        myButtonCheck4.q(false, true);
                                        dialogConfirm3.C(false);
                                    } else {
                                        myButtonCheck4.q(true, true);
                                        dialogConfirm3.C(true);
                                    }
                                }
                            });
                        }
                        MyButtonCheck myButtonCheck4 = dialogConfirm2.F0;
                        if (myButtonCheck4 != null) {
                            myButtonCheck4.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogConfirm.10
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view) {
                                    DialogConfirm dialogConfirm3 = DialogConfirm.this;
                                    MyButtonCheck myButtonCheck5 = dialogConfirm3.F0;
                                    if (myButtonCheck5 == null) {
                                        return;
                                    }
                                    if (myButtonCheck5.D) {
                                        myButtonCheck5.q(false, true);
                                        dialogConfirm3.C(false);
                                    } else {
                                        myButtonCheck5.q(true, true);
                                        dialogConfirm3.C(true);
                                    }
                                }
                            });
                        }
                        if (dialogConfirm2.H0 != null) {
                            if (dialogConfirm2.E0 != null) {
                                dialogConfirm2.C(false);
                            }
                            dialogConfirm2.H0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogConfirm.11
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view) {
                                    boolean z;
                                    DialogConfirm dialogConfirm3 = DialogConfirm.this;
                                    if (dialogConfirm3.H0 != null) {
                                        MyButtonCheck myButtonCheck5 = dialogConfirm3.F0;
                                        if (myButtonCheck5 != null) {
                                            z = myButtonCheck5.D;
                                        } else {
                                            z = false;
                                        }
                                        DialogConfListener dialogConfListener = dialogConfirm3.b0;
                                        if (dialogConfListener != null) {
                                            dialogConfListener.a(z);
                                            return;
                                        }
                                        DialogConfBtnListener dialogConfBtnListener = dialogConfirm3.c0;
                                        if (dialogConfBtnListener != null) {
                                            dialogConfBtnListener.a(z);
                                        }
                                    }
                                }
                            });
                        }
                        MyLineText myLineText8 = dialogConfirm2.I0;
                        if (myLineText8 != null) {
                            myLineText8.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogConfirm.12
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view) {
                                    DialogConfirm dialogConfirm3 = DialogConfirm.this;
                                    DialogConfBtnListener dialogConfBtnListener = dialogConfirm3.c0;
                                    if (dialogConfBtnListener != null) {
                                        dialogConfBtnListener.onCancel();
                                    } else {
                                        dialogConfirm3.dismiss();
                                    }
                                }
                            });
                        }
                        dialogConfirm2.g(dialogConfirm2.s0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogConfirm.13
                            @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                            public final void a(View view) {
                                DialogConfirm dialogConfirm3 = DialogConfirm.this;
                                if (dialogConfirm3.s0 == null) {
                                    return;
                                }
                                dialogConfirm3.show();
                            }
                        });
                    }
                }
            });
        }
    }

    public final void C(boolean z) {
        int i;
        int i2;
        MyLineText myLineText = this.H0;
        if (myLineText == null) {
            return;
        }
        myLineText.setEnabled(z);
        if (z) {
            MyLineText myLineText2 = this.H0;
            if (MainApp.K1) {
                i2 = -328966;
            } else {
                i2 = -14784824;
            }
            myLineText2.setTextColor(i2);
            return;
        }
        MyLineText myLineText3 = this.H0;
        if (MainApp.K1) {
            i = -8355712;
        } else {
            i = -2434342;
        }
        myLineText3.setTextColor(i);
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.a0 == null) {
            return;
        }
        MyDialogLinear myDialogLinear = this.s0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.s0 = null;
        }
        MyButtonText myButtonText = this.D0;
        if (myButtonText != null) {
            myButtonText.t();
            this.D0 = null;
        }
        MyLineFrame myLineFrame = this.E0;
        if (myLineFrame != null) {
            myLineFrame.g();
            this.E0 = null;
        }
        MyButtonCheck myButtonCheck = this.F0;
        if (myButtonCheck != null) {
            myButtonCheck.l();
            this.F0 = null;
        }
        MyLineText myLineText = this.H0;
        if (myLineText != null) {
            myLineText.u();
            this.H0 = null;
        }
        MyLineText myLineText2 = this.I0;
        if (myLineText2 != null) {
            myLineText2.u();
            this.I0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.c0 = null;
        this.f0 = null;
        this.g0 = null;
        this.j0 = null;
        this.t0 = null;
        this.u0 = null;
        this.v0 = null;
        this.w0 = null;
        this.x0 = null;
        this.y0 = null;
        this.z0 = null;
        this.A0 = null;
        this.B0 = null;
        this.C0 = null;
        this.G0 = null;
        super.dismiss();
    }

    public DialogConfirm(Activity activity, String str, DialogConfListener dialogConfListener) {
        super(activity);
        this.a0 = getContext();
        this.b0 = dialogConfListener;
        this.d0 = false;
        this.f0 = str;
        this.p0 = false;
        this.q0 = R.string.ok;
        this.r0 = R.string.cancel;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogConfirm.2
            @Override // java.lang.Runnable
            public final void run() {
                DialogConfirm.B(DialogConfirm.this);
            }
        });
    }

    public DialogConfirm(Activity activity, String str, boolean z, DialogConfListener dialogConfListener) {
        super(activity);
        this.a0 = getContext();
        this.b0 = dialogConfListener;
        this.d0 = true;
        this.f0 = str;
        this.p0 = z;
        this.q0 = R.string.ok;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogConfirm.2
            @Override // java.lang.Runnable
            public final void run() {
                DialogConfirm.B(DialogConfirm.this);
            }
        });
    }

    public DialogConfirm(Activity activity, int i, int i2, DialogConfListener dialogConfListener) {
        super(activity);
        this.a0 = getContext();
        this.b0 = dialogConfListener;
        this.d0 = true;
        this.h0 = i;
        this.i0 = i2;
        this.p0 = true;
        this.q0 = R.string.ok;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogConfirm.3
            @Override // java.lang.Runnable
            public final void run() {
                DialogConfirm.B(DialogConfirm.this);
            }
        });
    }

    public DialogConfirm(MainActivity mainActivity, DialogConfListener dialogConfListener) {
        super(mainActivity);
        this.a0 = getContext();
        this.b0 = dialogConfListener;
        this.h0 = R.string.right_title;
        this.n0 = R.string.important_copyright;
        this.p0 = true;
        this.q0 = R.string.ok;
        StringBuilder sb = new StringBuilder();
        com.google.android.gms.internal.mlkit_vision_text_common.a.x(this.a0, R.string.guide_right_1, sb, " ");
        com.google.android.gms.internal.mlkit_vision_text_common.a.x(this.a0, R.string.guide_right_2, sb, " ");
        this.j0 = com.google.android.gms.internal.mlkit_vision_text_common.a.v(R.string.guide_right_3, this.a0, sb);
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogConfirm.4
            @Override // java.lang.Runnable
            public final void run() {
                DialogConfirm.B(DialogConfirm.this);
            }
        });
    }

    public DialogConfirm(Activity activity, boolean z, DialogConfBtnListener dialogConfBtnListener) {
        super(activity);
        this.a0 = getContext();
        this.c0 = dialogConfBtnListener;
        this.d0 = true;
        this.e0 = R.string.dark_guide_1;
        this.o0 = R.string.check_ver;
        this.p0 = z;
        this.q0 = R.string.ok;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogConfirm.5
            @Override // java.lang.Runnable
            public final void run() {
                DialogConfirm.B(DialogConfirm.this);
            }
        });
    }

    public DialogConfirm(Activity activity, String str, String str2, DialogConfBtnListener dialogConfBtnListener) {
        super(activity);
        this.a0 = getContext();
        this.c0 = dialogConfBtnListener;
        this.d0 = true;
        this.q0 = R.string.ok;
        if (!TextUtils.isEmpty(str)) {
            this.f0 = str;
            this.g0 = str2;
        } else {
            this.h0 = R.string.storage;
            this.i0 = R.string.storage_guide_1;
            this.k0 = R.string.storage_guide_2;
            this.l0 = R.string.storage_guide_3;
            this.m0 = R.string.storage_guide_4;
            this.r0 = R.string.setting;
        }
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogConfirm.6
            @Override // java.lang.Runnable
            public final void run() {
                DialogConfirm.B(DialogConfirm.this);
            }
        });
    }
}
