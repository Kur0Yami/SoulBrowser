package com.mycompany.app.dialog;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.widget.NestedScrollView;
import com.mycompany.app.data.DataUrl;
import com.mycompany.app.dialog.DialogSetImage;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefAlbum;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonCheck;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyLineFrame;
import com.mycompany.app.view.MyLineText;

/* loaded from: classes3.dex */
public class DialogImageType extends MyDialogBottom {
    public AppCompatTextView A0;
    public MyButtonCheck B0;
    public MyLineText C0;
    public Context a0;
    public DialogSetImage.ChangedListener b0;
    public DataUrl.ImgCntItem c0;
    public int d0;
    public int e0;
    public MyDialogLinear f0;
    public AppCompatTextView g0;
    public AppCompatTextView h0;
    public MyButtonCheck i0;
    public LinearLayout j0;
    public MyLineFrame k0;
    public AppCompatTextView l0;
    public MyButtonCheck m0;
    public MyLineFrame n0;
    public AppCompatTextView o0;
    public MyButtonCheck p0;
    public MyLineFrame q0;
    public AppCompatTextView r0;
    public MyButtonCheck s0;
    public MyLineFrame t0;
    public AppCompatTextView u0;
    public MyButtonCheck v0;
    public MyLineFrame w0;
    public AppCompatTextView x0;
    public MyButtonCheck y0;
    public FrameLayout z0;

    public DialogImageType(Activity activity, DataUrl.ImgCntItem imgCntItem, DialogSetImage.ChangedListener changedListener) {
        super(activity);
        this.a0 = getContext();
        this.b0 = changedListener;
        this.c0 = imgCntItem;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogImageType.1
            @Override // java.lang.Runnable
            public final void run() {
                final DialogImageType dialogImageType = DialogImageType.this;
                Context context = dialogImageType.a0;
                if (context != null) {
                    int i = R.id.item_count_view;
                    MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
                    RelativeLayout relativeLayout = new RelativeLayout(context);
                    q.addView(relativeLayout, -1, MainApp.g1);
                    AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
                    appCompatTextView.setId(i);
                    int i2 = MainApp.F1;
                    appCompatTextView.setPadding(i2, 0, i2, 0);
                    appCompatTextView.setGravity(16);
                    appCompatTextView.setTextDirection(3);
                    appCompatTextView.setTextSize(1, 16.0f);
                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, MainApp.g1);
                    layoutParams.addRule(21);
                    layoutParams.setMarginEnd((int) MainUtil.G(context, 60.0f));
                    relativeLayout.addView(appCompatTextView, layoutParams);
                    AppCompatTextView appCompatTextView2 = new AppCompatTextView(context, null);
                    appCompatTextView2.setGravity(16);
                    appCompatTextView2.setSingleLine(true);
                    appCompatTextView2.setTextSize(1, 18.0f);
                    appCompatTextView2.setText(R.string.image_type);
                    RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, MainApp.g1);
                    layoutParams2.addRule(16, i);
                    layoutParams2.setMarginStart(MainApp.E1);
                    relativeLayout.addView(appCompatTextView2, layoutParams2);
                    MyButtonCheck myButtonCheck = new MyButtonCheck(context);
                    int i3 = MainApp.g1;
                    RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(i3, i3);
                    layoutParams3.addRule(21);
                    layoutParams3.setMarginEnd(MainApp.F1);
                    relativeLayout.addView(myButtonCheck, layoutParams3);
                    NestedScrollView nestedScrollView = new NestedScrollView(context, null);
                    MainUtil.r7(nestedScrollView);
                    nestedScrollView.setOverScrollMode(2);
                    LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-1, 0);
                    layoutParams4.weight = 1.0f;
                    LinearLayout g = com.google.android.gms.internal.mlkit_vision_text_common.a.g(q, nestedScrollView, layoutParams4, context, 1);
                    nestedScrollView.addView(g, -1, -2);
                    int G = (int) MainUtil.G(context, 52.0f);
                    MyLineFrame myLineFrame = new MyLineFrame(context);
                    myLineFrame.setPaddingRelative(MainApp.E1, 0, MainApp.F1, 0);
                    myLineFrame.setLinePad(MainApp.E1);
                    myLineFrame.setLineDn(true);
                    g.addView(myLineFrame, -1, G);
                    AppCompatTextView j = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
                    FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(-2, -2);
                    layoutParams5.gravity = 8388627;
                    myLineFrame.addView(j, layoutParams5);
                    MyButtonCheck myButtonCheck2 = new MyButtonCheck(context);
                    int i4 = MainApp.g1;
                    FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(i4, i4);
                    layoutParams6.gravity = 8388629;
                    myLineFrame.addView(myButtonCheck2, layoutParams6);
                    MyLineFrame myLineFrame2 = new MyLineFrame(context);
                    myLineFrame2.setPaddingRelative(MainApp.E1, 0, MainApp.F1, 0);
                    myLineFrame2.setLinePad(MainApp.E1);
                    myLineFrame2.setLineDn(true);
                    g.addView(myLineFrame2, -1, G);
                    AppCompatTextView j2 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
                    FrameLayout.LayoutParams layoutParams7 = new FrameLayout.LayoutParams(-2, -2);
                    layoutParams7.gravity = 8388627;
                    myLineFrame2.addView(j2, layoutParams7);
                    MyButtonCheck myButtonCheck3 = new MyButtonCheck(context);
                    int i5 = MainApp.g1;
                    FrameLayout.LayoutParams layoutParams8 = new FrameLayout.LayoutParams(i5, i5);
                    layoutParams8.gravity = 8388629;
                    myLineFrame2.addView(myButtonCheck3, layoutParams8);
                    MyLineFrame myLineFrame3 = new MyLineFrame(context);
                    myLineFrame3.setPaddingRelative(MainApp.E1, 0, MainApp.F1, 0);
                    myLineFrame3.setLinePad(MainApp.E1);
                    myLineFrame3.setLineDn(true);
                    g.addView(myLineFrame3, -1, G);
                    AppCompatTextView j3 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
                    FrameLayout.LayoutParams layoutParams9 = new FrameLayout.LayoutParams(-2, -2);
                    layoutParams9.gravity = 8388627;
                    myLineFrame3.addView(j3, layoutParams9);
                    MyButtonCheck myButtonCheck4 = new MyButtonCheck(context);
                    int i6 = MainApp.g1;
                    FrameLayout.LayoutParams layoutParams10 = new FrameLayout.LayoutParams(i6, i6);
                    layoutParams10.gravity = 8388629;
                    myLineFrame3.addView(myButtonCheck4, layoutParams10);
                    MyLineFrame myLineFrame4 = new MyLineFrame(context);
                    myLineFrame4.setPaddingRelative(MainApp.E1, 0, MainApp.F1, 0);
                    myLineFrame4.setLinePad(MainApp.E1);
                    myLineFrame4.setLineDn(true);
                    g.addView(myLineFrame4, -1, G);
                    AppCompatTextView j4 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
                    FrameLayout.LayoutParams layoutParams11 = new FrameLayout.LayoutParams(-2, -2);
                    layoutParams11.gravity = 8388627;
                    myLineFrame4.addView(j4, layoutParams11);
                    MyButtonCheck myButtonCheck5 = new MyButtonCheck(context);
                    int i7 = MainApp.g1;
                    FrameLayout.LayoutParams layoutParams12 = new FrameLayout.LayoutParams(i7, i7);
                    layoutParams12.gravity = 8388629;
                    myLineFrame4.addView(myButtonCheck5, layoutParams12);
                    MyLineFrame myLineFrame5 = new MyLineFrame(context);
                    myLineFrame5.setPaddingRelative(MainApp.E1, 0, MainApp.F1, 0);
                    myLineFrame5.setLinePad(MainApp.E1);
                    myLineFrame5.setLineDn(true);
                    g.addView(myLineFrame5, -1, G);
                    AppCompatTextView j5 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
                    FrameLayout.LayoutParams layoutParams13 = new FrameLayout.LayoutParams(-2, -2);
                    layoutParams13.gravity = 8388627;
                    myLineFrame5.addView(j5, layoutParams13);
                    MyButtonCheck myButtonCheck6 = new MyButtonCheck(context);
                    int i8 = MainApp.g1;
                    FrameLayout.LayoutParams layoutParams14 = new FrameLayout.LayoutParams(i8, i8);
                    layoutParams14.gravity = 8388629;
                    myLineFrame5.addView(myButtonCheck6, layoutParams14);
                    FrameLayout frameLayout = new FrameLayout(context);
                    frameLayout.setPaddingRelative(MainApp.E1, 0, MainApp.F1, 0);
                    g.addView(frameLayout, -1, G);
                    AppCompatTextView j6 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
                    FrameLayout.LayoutParams layoutParams15 = new FrameLayout.LayoutParams(-2, -2);
                    layoutParams15.gravity = 8388627;
                    frameLayout.addView(j6, layoutParams15);
                    MyButtonCheck myButtonCheck7 = new MyButtonCheck(context);
                    int i9 = MainApp.g1;
                    FrameLayout.LayoutParams layoutParams16 = new FrameLayout.LayoutParams(i9, i9);
                    layoutParams16.gravity = 8388629;
                    frameLayout.addView(myButtonCheck7, layoutParams16);
                    MyLineText myLineText = new MyLineText(context);
                    myLineText.setGravity(17);
                    myLineText.setTextSize(1, 16.0f);
                    myLineText.setText(R.string.apply);
                    myLineText.setLinePad(MainApp.E1);
                    myLineText.setLineUp(true);
                    q.addView(myLineText, -1, MainApp.g1);
                    dialogImageType.f0 = q;
                    dialogImageType.g0 = appCompatTextView;
                    dialogImageType.h0 = appCompatTextView2;
                    dialogImageType.i0 = myButtonCheck;
                    dialogImageType.j0 = g;
                    dialogImageType.k0 = myLineFrame;
                    dialogImageType.l0 = j;
                    dialogImageType.m0 = myButtonCheck2;
                    dialogImageType.n0 = myLineFrame2;
                    dialogImageType.o0 = j2;
                    dialogImageType.p0 = myButtonCheck3;
                    dialogImageType.q0 = myLineFrame3;
                    dialogImageType.r0 = j3;
                    dialogImageType.s0 = myButtonCheck4;
                    dialogImageType.t0 = myLineFrame4;
                    dialogImageType.u0 = j4;
                    dialogImageType.v0 = myButtonCheck5;
                    dialogImageType.w0 = myLineFrame5;
                    dialogImageType.x0 = j5;
                    dialogImageType.y0 = myButtonCheck6;
                    dialogImageType.z0 = frameLayout;
                    dialogImageType.A0 = j6;
                    dialogImageType.B0 = myButtonCheck7;
                    dialogImageType.C0 = myLineText;
                    Handler handler2 = dialogImageType.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogImageType.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            boolean z;
                            boolean z2;
                            boolean z3;
                            boolean z4;
                            boolean z5;
                            boolean z6;
                            final DialogImageType dialogImageType2 = DialogImageType.this;
                            MyDialogLinear myDialogLinear = dialogImageType2.f0;
                            if (myDialogLinear != null && dialogImageType2.a0 != null) {
                                if (MainApp.K1) {
                                    myDialogLinear.setBackgroundColor(-16777216);
                                    dialogImageType2.j0.setBackgroundColor(-14606047);
                                    dialogImageType2.g0.setTextColor(-328966);
                                    dialogImageType2.h0.setTextColor(-328966);
                                    dialogImageType2.l0.setTextColor(-328966);
                                    dialogImageType2.o0.setTextColor(-328966);
                                    dialogImageType2.r0.setTextColor(-328966);
                                    dialogImageType2.u0.setTextColor(-328966);
                                    dialogImageType2.x0.setTextColor(-328966);
                                    dialogImageType2.A0.setTextColor(-328966);
                                    dialogImageType2.k0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogImageType2.n0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogImageType2.q0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogImageType2.t0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogImageType2.w0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogImageType2.z0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogImageType2.C0.setBackgroundResource(R.drawable.selector_list_back_dark);
                                    dialogImageType2.i0.p(R.drawable.baseline_check_circle_dark_24, R.drawable.outline_radio_button_unchecked_dark_24);
                                    dialogImageType2.i0.setBgPreColor(-12632257);
                                    dialogImageType2.m0.p(R.drawable.baseline_check_circle_dark_24, R.drawable.outline_radio_button_unchecked_dark_24);
                                    dialogImageType2.m0.setBgPreColor(-12632257);
                                    dialogImageType2.p0.p(R.drawable.baseline_check_circle_dark_24, R.drawable.outline_radio_button_unchecked_dark_24);
                                    dialogImageType2.p0.setBgPreColor(-12632257);
                                    dialogImageType2.s0.p(R.drawable.baseline_check_circle_dark_24, R.drawable.outline_radio_button_unchecked_dark_24);
                                    dialogImageType2.s0.setBgPreColor(-12632257);
                                    dialogImageType2.v0.p(R.drawable.baseline_check_circle_dark_24, R.drawable.outline_radio_button_unchecked_dark_24);
                                    dialogImageType2.v0.setBgPreColor(-12632257);
                                    dialogImageType2.y0.p(R.drawable.baseline_check_circle_dark_24, R.drawable.outline_radio_button_unchecked_dark_24);
                                    dialogImageType2.y0.setBgPreColor(-12632257);
                                    dialogImageType2.B0.p(R.drawable.baseline_check_circle_dark_24, R.drawable.outline_radio_button_unchecked_dark_24);
                                    dialogImageType2.B0.setBgPreColor(-12632257);
                                } else {
                                    myDialogLinear.setBackgroundColor(-460552);
                                    dialogImageType2.j0.setBackgroundColor(-1);
                                    dialogImageType2.g0.setTextColor(-16777216);
                                    dialogImageType2.h0.setTextColor(-16777216);
                                    dialogImageType2.l0.setTextColor(-16777216);
                                    dialogImageType2.o0.setTextColor(-16777216);
                                    dialogImageType2.r0.setTextColor(-16777216);
                                    dialogImageType2.u0.setTextColor(-16777216);
                                    dialogImageType2.x0.setTextColor(-16777216);
                                    dialogImageType2.A0.setTextColor(-16777216);
                                    dialogImageType2.k0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogImageType2.n0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogImageType2.q0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogImageType2.t0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogImageType2.w0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogImageType2.z0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogImageType2.C0.setBackgroundResource(R.drawable.selector_list_back);
                                    dialogImageType2.i0.p(R.drawable.baseline_check_circle_black_24, R.drawable.outline_radio_button_unchecked_black_24);
                                    dialogImageType2.i0.setBgPreColor(-2039584);
                                    dialogImageType2.m0.p(R.drawable.baseline_check_circle_black_24, R.drawable.outline_radio_button_unchecked_black_24);
                                    dialogImageType2.m0.setBgPreColor(-2039584);
                                    dialogImageType2.p0.p(R.drawable.baseline_check_circle_black_24, R.drawable.outline_radio_button_unchecked_black_24);
                                    dialogImageType2.p0.setBgPreColor(-2039584);
                                    dialogImageType2.s0.p(R.drawable.baseline_check_circle_black_24, R.drawable.outline_radio_button_unchecked_black_24);
                                    dialogImageType2.s0.setBgPreColor(-2039584);
                                    dialogImageType2.v0.p(R.drawable.baseline_check_circle_black_24, R.drawable.outline_radio_button_unchecked_black_24);
                                    dialogImageType2.v0.setBgPreColor(-2039584);
                                    dialogImageType2.y0.p(R.drawable.baseline_check_circle_black_24, R.drawable.outline_radio_button_unchecked_black_24);
                                    dialogImageType2.y0.setBgPreColor(-2039584);
                                    dialogImageType2.B0.p(R.drawable.baseline_check_circle_black_24, R.drawable.outline_radio_button_unchecked_black_24);
                                    dialogImageType2.B0.setBgPreColor(-2039584);
                                }
                                dialogImageType2.e0 = PrefAlbum.k;
                                DataUrl.ImgCntItem imgCntItem2 = dialogImageType2.c0;
                                if (imgCntItem2 != null) {
                                    dialogImageType2.d0 = imgCntItem2.f12903a + imgCntItem2.b + imgCntItem2.f12904c + imgCntItem2.d + imgCntItem2.e + imgCntItem2.f;
                                    a.t(new StringBuilder("JPG ("), imgCntItem2.f12903a, ")", dialogImageType2.l0);
                                    a.t(new StringBuilder("PNG ("), imgCntItem2.b, ")", dialogImageType2.o0);
                                    a.t(new StringBuilder("GIF ("), imgCntItem2.f12904c, ")", dialogImageType2.r0);
                                    a.t(new StringBuilder("WEBP ("), imgCntItem2.d, ")", dialogImageType2.u0);
                                    AppCompatTextView appCompatTextView3 = dialogImageType2.x0;
                                    StringBuilder sb = new StringBuilder();
                                    com.google.android.gms.internal.mlkit_vision_text_common.a.x(dialogImageType2.a0, R.string.others, sb, " (");
                                    a.t(sb, imgCntItem2.e, ")", appCompatTextView3);
                                    AppCompatTextView appCompatTextView4 = dialogImageType2.A0;
                                    StringBuilder sb2 = new StringBuilder();
                                    com.google.android.gms.internal.mlkit_vision_text_common.a.x(dialogImageType2.a0, R.string.no_ext, sb2, " (");
                                    a.t(sb2, imgCntItem2.f, ")", appCompatTextView4);
                                } else {
                                    dialogImageType2.d0 = 0;
                                    dialogImageType2.l0.setText("JPG");
                                    dialogImageType2.o0.setText("PNG");
                                    dialogImageType2.r0.setText("GIF");
                                    dialogImageType2.u0.setText("WEBP");
                                    dialogImageType2.x0.setText(R.string.others);
                                    dialogImageType2.A0.setText(R.string.no_ext);
                                    dialogImageType2.g0.setVisibility(8);
                                }
                                MyButtonCheck myButtonCheck8 = dialogImageType2.i0;
                                boolean z7 = true;
                                if (dialogImageType2.e0 == 126) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                myButtonCheck8.q(z, false);
                                MyButtonCheck myButtonCheck9 = dialogImageType2.m0;
                                if ((dialogImageType2.e0 & 2) == 2) {
                                    z2 = true;
                                } else {
                                    z2 = false;
                                }
                                myButtonCheck9.q(z2, false);
                                MyButtonCheck myButtonCheck10 = dialogImageType2.p0;
                                if ((dialogImageType2.e0 & 4) == 4) {
                                    z3 = true;
                                } else {
                                    z3 = false;
                                }
                                myButtonCheck10.q(z3, false);
                                MyButtonCheck myButtonCheck11 = dialogImageType2.s0;
                                if ((dialogImageType2.e0 & 8) == 8) {
                                    z4 = true;
                                } else {
                                    z4 = false;
                                }
                                myButtonCheck11.q(z4, false);
                                MyButtonCheck myButtonCheck12 = dialogImageType2.v0;
                                if ((dialogImageType2.e0 & 16) == 16) {
                                    z5 = true;
                                } else {
                                    z5 = false;
                                }
                                myButtonCheck12.q(z5, false);
                                MyButtonCheck myButtonCheck13 = dialogImageType2.y0;
                                if ((dialogImageType2.e0 & 32) == 32) {
                                    z6 = true;
                                } else {
                                    z6 = false;
                                }
                                myButtonCheck13.q(z6, false);
                                MyButtonCheck myButtonCheck14 = dialogImageType2.B0;
                                if ((dialogImageType2.e0 & 64) != 64) {
                                    z7 = false;
                                }
                                myButtonCheck14.q(z7, false);
                                dialogImageType2.B();
                                dialogImageType2.i0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogImageType.3
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        int i10;
                                        DialogImageType dialogImageType3 = DialogImageType.this;
                                        MyButtonCheck myButtonCheck15 = dialogImageType3.i0;
                                        if (myButtonCheck15 == null) {
                                            return;
                                        }
                                        boolean z8 = myButtonCheck15.D;
                                        boolean z9 = !z8;
                                        if (!z8) {
                                            i10 = 126;
                                        } else {
                                            i10 = 0;
                                        }
                                        dialogImageType3.e0 = i10;
                                        myButtonCheck15.q(z9, true);
                                        dialogImageType3.m0.q(z9, true);
                                        dialogImageType3.p0.q(z9, true);
                                        dialogImageType3.s0.q(z9, true);
                                        dialogImageType3.v0.q(z9, true);
                                        dialogImageType3.y0.q(z9, true);
                                        dialogImageType3.B0.q(z9, true);
                                        dialogImageType3.B();
                                    }
                                });
                                dialogImageType2.k0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogImageType.4
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        boolean z8;
                                        DialogImageType dialogImageType3 = DialogImageType.this;
                                        if (dialogImageType3.i0 == null) {
                                            return;
                                        }
                                        MyButtonCheck myButtonCheck15 = dialogImageType3.m0;
                                        boolean z9 = myButtonCheck15.D;
                                        boolean z10 = !z9;
                                        if (!z9) {
                                            dialogImageType3.e0 |= 2;
                                        } else {
                                            dialogImageType3.e0 &= -3;
                                        }
                                        myButtonCheck15.q(z10, true);
                                        MyButtonCheck myButtonCheck16 = dialogImageType3.i0;
                                        if (dialogImageType3.e0 == 126) {
                                            z8 = true;
                                        } else {
                                            z8 = false;
                                        }
                                        myButtonCheck16.q(z8, true);
                                        dialogImageType3.B();
                                    }
                                });
                                dialogImageType2.m0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogImageType.5
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        boolean z8;
                                        DialogImageType dialogImageType3 = DialogImageType.this;
                                        if (dialogImageType3.i0 == null) {
                                            return;
                                        }
                                        MyButtonCheck myButtonCheck15 = dialogImageType3.m0;
                                        boolean z9 = myButtonCheck15.D;
                                        boolean z10 = !z9;
                                        if (!z9) {
                                            dialogImageType3.e0 |= 2;
                                        } else {
                                            dialogImageType3.e0 &= -3;
                                        }
                                        myButtonCheck15.q(z10, true);
                                        MyButtonCheck myButtonCheck16 = dialogImageType3.i0;
                                        if (dialogImageType3.e0 == 126) {
                                            z8 = true;
                                        } else {
                                            z8 = false;
                                        }
                                        myButtonCheck16.q(z8, true);
                                        dialogImageType3.B();
                                    }
                                });
                                dialogImageType2.n0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogImageType.6
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        boolean z8;
                                        DialogImageType dialogImageType3 = DialogImageType.this;
                                        if (dialogImageType3.i0 == null) {
                                            return;
                                        }
                                        MyButtonCheck myButtonCheck15 = dialogImageType3.p0;
                                        boolean z9 = myButtonCheck15.D;
                                        boolean z10 = !z9;
                                        if (!z9) {
                                            dialogImageType3.e0 |= 4;
                                        } else {
                                            dialogImageType3.e0 &= -5;
                                        }
                                        myButtonCheck15.q(z10, true);
                                        MyButtonCheck myButtonCheck16 = dialogImageType3.i0;
                                        if (dialogImageType3.e0 == 126) {
                                            z8 = true;
                                        } else {
                                            z8 = false;
                                        }
                                        myButtonCheck16.q(z8, true);
                                        dialogImageType3.B();
                                    }
                                });
                                dialogImageType2.p0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogImageType.7
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        boolean z8;
                                        DialogImageType dialogImageType3 = DialogImageType.this;
                                        if (dialogImageType3.i0 == null) {
                                            return;
                                        }
                                        MyButtonCheck myButtonCheck15 = dialogImageType3.p0;
                                        boolean z9 = myButtonCheck15.D;
                                        boolean z10 = !z9;
                                        if (!z9) {
                                            dialogImageType3.e0 |= 4;
                                        } else {
                                            dialogImageType3.e0 &= -5;
                                        }
                                        myButtonCheck15.q(z10, true);
                                        MyButtonCheck myButtonCheck16 = dialogImageType3.i0;
                                        if (dialogImageType3.e0 == 126) {
                                            z8 = true;
                                        } else {
                                            z8 = false;
                                        }
                                        myButtonCheck16.q(z8, true);
                                        dialogImageType3.B();
                                    }
                                });
                                dialogImageType2.q0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogImageType.8
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        boolean z8;
                                        DialogImageType dialogImageType3 = DialogImageType.this;
                                        if (dialogImageType3.i0 == null) {
                                            return;
                                        }
                                        MyButtonCheck myButtonCheck15 = dialogImageType3.s0;
                                        boolean z9 = myButtonCheck15.D;
                                        boolean z10 = !z9;
                                        if (!z9) {
                                            dialogImageType3.e0 |= 8;
                                        } else {
                                            dialogImageType3.e0 &= -9;
                                        }
                                        myButtonCheck15.q(z10, true);
                                        MyButtonCheck myButtonCheck16 = dialogImageType3.i0;
                                        if (dialogImageType3.e0 == 126) {
                                            z8 = true;
                                        } else {
                                            z8 = false;
                                        }
                                        myButtonCheck16.q(z8, true);
                                        dialogImageType3.B();
                                    }
                                });
                                dialogImageType2.s0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogImageType.9
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        boolean z8;
                                        DialogImageType dialogImageType3 = DialogImageType.this;
                                        if (dialogImageType3.i0 == null) {
                                            return;
                                        }
                                        MyButtonCheck myButtonCheck15 = dialogImageType3.s0;
                                        boolean z9 = myButtonCheck15.D;
                                        boolean z10 = !z9;
                                        if (!z9) {
                                            dialogImageType3.e0 |= 8;
                                        } else {
                                            dialogImageType3.e0 &= -9;
                                        }
                                        myButtonCheck15.q(z10, true);
                                        MyButtonCheck myButtonCheck16 = dialogImageType3.i0;
                                        if (dialogImageType3.e0 == 126) {
                                            z8 = true;
                                        } else {
                                            z8 = false;
                                        }
                                        myButtonCheck16.q(z8, true);
                                        dialogImageType3.B();
                                    }
                                });
                                dialogImageType2.t0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogImageType.10
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        boolean z8;
                                        DialogImageType dialogImageType3 = DialogImageType.this;
                                        if (dialogImageType3.i0 == null) {
                                            return;
                                        }
                                        MyButtonCheck myButtonCheck15 = dialogImageType3.v0;
                                        boolean z9 = myButtonCheck15.D;
                                        boolean z10 = !z9;
                                        if (!z9) {
                                            dialogImageType3.e0 |= 16;
                                        } else {
                                            dialogImageType3.e0 &= -17;
                                        }
                                        myButtonCheck15.q(z10, true);
                                        MyButtonCheck myButtonCheck16 = dialogImageType3.i0;
                                        if (dialogImageType3.e0 == 126) {
                                            z8 = true;
                                        } else {
                                            z8 = false;
                                        }
                                        myButtonCheck16.q(z8, true);
                                        dialogImageType3.B();
                                    }
                                });
                                dialogImageType2.v0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogImageType.11
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        boolean z8;
                                        DialogImageType dialogImageType3 = DialogImageType.this;
                                        if (dialogImageType3.i0 == null) {
                                            return;
                                        }
                                        MyButtonCheck myButtonCheck15 = dialogImageType3.v0;
                                        boolean z9 = myButtonCheck15.D;
                                        boolean z10 = !z9;
                                        if (!z9) {
                                            dialogImageType3.e0 |= 16;
                                        } else {
                                            dialogImageType3.e0 &= -17;
                                        }
                                        myButtonCheck15.q(z10, true);
                                        MyButtonCheck myButtonCheck16 = dialogImageType3.i0;
                                        if (dialogImageType3.e0 == 126) {
                                            z8 = true;
                                        } else {
                                            z8 = false;
                                        }
                                        myButtonCheck16.q(z8, true);
                                        dialogImageType3.B();
                                    }
                                });
                                dialogImageType2.w0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogImageType.12
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        boolean z8;
                                        DialogImageType dialogImageType3 = DialogImageType.this;
                                        if (dialogImageType3.i0 == null) {
                                            return;
                                        }
                                        MyButtonCheck myButtonCheck15 = dialogImageType3.y0;
                                        boolean z9 = myButtonCheck15.D;
                                        boolean z10 = !z9;
                                        if (!z9) {
                                            dialogImageType3.e0 |= 32;
                                        } else {
                                            dialogImageType3.e0 &= -33;
                                        }
                                        myButtonCheck15.q(z10, true);
                                        MyButtonCheck myButtonCheck16 = dialogImageType3.i0;
                                        if (dialogImageType3.e0 == 126) {
                                            z8 = true;
                                        } else {
                                            z8 = false;
                                        }
                                        myButtonCheck16.q(z8, true);
                                        dialogImageType3.B();
                                    }
                                });
                                dialogImageType2.y0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogImageType.13
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        boolean z8;
                                        DialogImageType dialogImageType3 = DialogImageType.this;
                                        if (dialogImageType3.i0 == null) {
                                            return;
                                        }
                                        MyButtonCheck myButtonCheck15 = dialogImageType3.y0;
                                        boolean z9 = myButtonCheck15.D;
                                        boolean z10 = !z9;
                                        if (!z9) {
                                            dialogImageType3.e0 |= 32;
                                        } else {
                                            dialogImageType3.e0 &= -33;
                                        }
                                        myButtonCheck15.q(z10, true);
                                        MyButtonCheck myButtonCheck16 = dialogImageType3.i0;
                                        if (dialogImageType3.e0 == 126) {
                                            z8 = true;
                                        } else {
                                            z8 = false;
                                        }
                                        myButtonCheck16.q(z8, true);
                                        dialogImageType3.B();
                                    }
                                });
                                dialogImageType2.z0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogImageType.14
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        boolean z8;
                                        DialogImageType dialogImageType3 = DialogImageType.this;
                                        if (dialogImageType3.i0 == null) {
                                            return;
                                        }
                                        MyButtonCheck myButtonCheck15 = dialogImageType3.B0;
                                        boolean z9 = myButtonCheck15.D;
                                        boolean z10 = !z9;
                                        if (!z9) {
                                            dialogImageType3.e0 |= 64;
                                        } else {
                                            dialogImageType3.e0 &= -65;
                                        }
                                        myButtonCheck15.q(z10, true);
                                        MyButtonCheck myButtonCheck16 = dialogImageType3.i0;
                                        if (dialogImageType3.e0 == 126) {
                                            z8 = true;
                                        } else {
                                            z8 = false;
                                        }
                                        myButtonCheck16.q(z8, true);
                                        dialogImageType3.B();
                                    }
                                });
                                dialogImageType2.B0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogImageType.15
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        boolean z8;
                                        DialogImageType dialogImageType3 = DialogImageType.this;
                                        if (dialogImageType3.i0 == null) {
                                            return;
                                        }
                                        MyButtonCheck myButtonCheck15 = dialogImageType3.B0;
                                        boolean z9 = myButtonCheck15.D;
                                        boolean z10 = !z9;
                                        if (!z9) {
                                            dialogImageType3.e0 |= 64;
                                        } else {
                                            dialogImageType3.e0 &= -65;
                                        }
                                        myButtonCheck15.q(z10, true);
                                        MyButtonCheck myButtonCheck16 = dialogImageType3.i0;
                                        if (dialogImageType3.e0 == 126) {
                                            z8 = true;
                                        } else {
                                            z8 = false;
                                        }
                                        myButtonCheck16.q(z8, true);
                                        dialogImageType3.B();
                                    }
                                });
                                dialogImageType2.C0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogImageType.16
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        int i10 = PrefAlbum.k;
                                        DialogImageType dialogImageType3 = DialogImageType.this;
                                        int i11 = dialogImageType3.e0;
                                        if (i10 != i11) {
                                            PrefAlbum.k = i11;
                                            PrefSet.f(dialogImageType3.a0, 0, i11, "mImageType2");
                                            if (dialogImageType3.b0 != null && MainUtil.f(dialogImageType3.c0, i10, PrefAlbum.k)) {
                                                dialogImageType3.b0.a();
                                            }
                                        }
                                        dialogImageType3.dismiss();
                                    }
                                });
                                dialogImageType2.g(dialogImageType2.f0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogImageType.17
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view) {
                                        DialogImageType dialogImageType3 = DialogImageType.this;
                                        if (dialogImageType3.f0 == null) {
                                            return;
                                        }
                                        dialogImageType3.show();
                                    }
                                });
                            }
                        }
                    });
                }
            }
        });
    }

    public final void B() {
        int i;
        int i2;
        int i3;
        if (this.C0 == null) {
            return;
        }
        DataUrl.ImgCntItem imgCntItem = this.c0;
        if (imgCntItem != null) {
            if (this.m0.D) {
                i3 = imgCntItem.f12903a;
            } else {
                i3 = 0;
            }
            if (this.p0.D) {
                i3 += imgCntItem.b;
            }
            if (this.s0.D) {
                i3 += imgCntItem.f12904c;
            }
            if (this.v0.D) {
                i3 += imgCntItem.d;
            }
            if (this.y0.D) {
                i3 += imgCntItem.e;
            }
            if (this.B0.D) {
                i3 += imgCntItem.f;
            }
            this.g0.setText(MainUtil.h3(i3, this.d0));
        }
        if (this.e0 == 0) {
            MyLineText myLineText = this.C0;
            if (MainApp.K1) {
                i2 = -8355712;
            } else {
                i2 = -2434342;
            }
            myLineText.setTextColor(i2);
            this.C0.setEnabled(false);
            return;
        }
        MyLineText myLineText2 = this.C0;
        if (MainApp.K1) {
            i = -328966;
        } else {
            i = -14784824;
        }
        myLineText2.setTextColor(i);
        this.C0.setEnabled(true);
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.a0 == null) {
            return;
        }
        MyDialogLinear myDialogLinear = this.f0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.f0 = null;
        }
        MyButtonCheck myButtonCheck = this.i0;
        if (myButtonCheck != null) {
            myButtonCheck.l();
            this.i0 = null;
        }
        MyLineFrame myLineFrame = this.k0;
        if (myLineFrame != null) {
            myLineFrame.g();
            this.k0 = null;
        }
        MyButtonCheck myButtonCheck2 = this.m0;
        if (myButtonCheck2 != null) {
            myButtonCheck2.l();
            this.m0 = null;
        }
        MyLineFrame myLineFrame2 = this.n0;
        if (myLineFrame2 != null) {
            myLineFrame2.g();
            this.n0 = null;
        }
        MyButtonCheck myButtonCheck3 = this.p0;
        if (myButtonCheck3 != null) {
            myButtonCheck3.l();
            this.p0 = null;
        }
        MyLineFrame myLineFrame3 = this.q0;
        if (myLineFrame3 != null) {
            myLineFrame3.g();
            this.q0 = null;
        }
        MyButtonCheck myButtonCheck4 = this.s0;
        if (myButtonCheck4 != null) {
            myButtonCheck4.l();
            this.s0 = null;
        }
        MyLineFrame myLineFrame4 = this.t0;
        if (myLineFrame4 != null) {
            myLineFrame4.g();
            this.t0 = null;
        }
        MyButtonCheck myButtonCheck5 = this.v0;
        if (myButtonCheck5 != null) {
            myButtonCheck5.l();
            this.v0 = null;
        }
        MyLineFrame myLineFrame5 = this.w0;
        if (myLineFrame5 != null) {
            myLineFrame5.g();
            this.w0 = null;
        }
        MyButtonCheck myButtonCheck6 = this.y0;
        if (myButtonCheck6 != null) {
            myButtonCheck6.l();
            this.y0 = null;
        }
        MyButtonCheck myButtonCheck7 = this.B0;
        if (myButtonCheck7 != null) {
            myButtonCheck7.l();
            this.B0 = null;
        }
        MyLineText myLineText = this.C0;
        if (myLineText != null) {
            myLineText.u();
            this.C0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.c0 = null;
        this.g0 = null;
        this.h0 = null;
        this.j0 = null;
        this.l0 = null;
        this.o0 = null;
        this.r0 = null;
        this.u0 = null;
        this.x0 = null;
        this.A0 = null;
        this.z0 = null;
        super.dismiss();
    }
}
