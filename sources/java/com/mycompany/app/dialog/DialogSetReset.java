package com.mycompany.app.dialog;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.widget.NestedScrollView;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyLineText;

/* loaded from: classes3.dex */
public class DialogSetReset extends MyDialogBottom {
    public Context a0;
    public DialogResetListener b0;
    public final int c0;
    public MyDialogLinear d0;
    public AppCompatTextView e0;
    public AppCompatTextView f0;
    public View g0;
    public AppCompatTextView h0;
    public View i0;
    public AppCompatTextView j0;
    public View k0;
    public AppCompatTextView l0;
    public View m0;
    public AppCompatTextView n0;
    public View o0;
    public AppCompatTextView p0;
    public MyLineText q0;
    public boolean r0;
    public boolean s0;
    public boolean t0;

    /* loaded from: classes3.dex */
    public interface DialogResetListener {
        void a(boolean z);

        boolean b();
    }

    public DialogSetReset(Activity activity, int i, DialogResetListener dialogResetListener) {
        super(activity);
        this.a0 = getContext();
        this.b0 = dialogResetListener;
        this.c0 = i;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetReset.1
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r7v4 */
            /* JADX WARN: Type inference failed for: r7v5, types: [int, boolean] */
            /* JADX WARN: Type inference failed for: r7v8 */
            @Override // java.lang.Runnable
            public final void run() {
                ?? r7;
                float f;
                final DialogSetReset dialogSetReset = DialogSetReset.this;
                int i2 = dialogSetReset.c0;
                Context context = dialogSetReset.a0;
                if (context != null) {
                    MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
                    NestedScrollView m = com.google.android.gms.internal.mlkit_vision_text_common.a.m(context, null, 2);
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0);
                    layoutParams.weight = 1.0f;
                    q.addView(m, layoutParams);
                    LinearLayout linearLayout = new LinearLayout(context);
                    int i3 = MainApp.E1;
                    linearLayout.setPadding(i3, i3, i3, i3);
                    linearLayout.setGravity(17);
                    linearLayout.setOrientation(1);
                    linearLayout.setMinimumHeight((int) MainUtil.G(context, 72.0f));
                    m.addView(linearLayout, -1, -2);
                    AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
                    if (i2 != 0) {
                        int i4 = MainApp.E1;
                        appCompatTextView.setPadding(0, i4, 0, i4);
                    }
                    appCompatTextView.setGravity(17);
                    appCompatTextView.setLineSpacing(MainApp.F1, 1.0f);
                    appCompatTextView.setTextSize(1, 16.0f);
                    appCompatTextView.setText(R.string.reset_setting);
                    linearLayout.addView(appCompatTextView, -1, -2);
                    if (i2 != 0) {
                        AppCompatTextView appCompatTextView2 = new AppCompatTextView(context, null);
                        appCompatTextView2.setLineSpacing(MainApp.G1, 1.0f);
                        appCompatTextView2.setTextSize(1, 14.0f);
                        FrameLayout.LayoutParams d = com.google.android.gms.internal.mlkit_vision_text_common.a.d(appCompatTextView2, R.string.set_reset_guide, -1, -2);
                        d.topMargin = (int) MainUtil.G(context, 12.0f);
                        linearLayout.addView(appCompatTextView2, d);
                        dialogSetReset.f0 = appCompatTextView2;
                    }
                    int G = (int) MainUtil.G(context, 20.0f);
                    int G2 = (int) MainUtil.G(context, 12.0f);
                    int G3 = (int) MainUtil.G(context, 36.0f);
                    if ((i2 & 2) == 2) {
                        FrameLayout frameLayout = new FrameLayout(context);
                        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
                        int i5 = MainApp.E1;
                        layoutParams2.topMargin = i5;
                        layoutParams2.setMarginStart(i5);
                        linearLayout.addView(frameLayout, layoutParams2);
                        View view = new View(context);
                        view.setAlpha(1.0f);
                        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(G, G);
                        layoutParams3.gravity = 8388627;
                        frameLayout.addView(view, layoutParams3);
                        AppCompatTextView appCompatTextView3 = new AppCompatTextView(context, null);
                        appCompatTextView3.setTextSize(1, 16.0f);
                        FrameLayout.LayoutParams d2 = com.google.android.gms.internal.mlkit_vision_text_common.a.d(appCompatTextView3, R.string.locale, -1, -2);
                        d2.gravity = 8388627;
                        d2.setMarginStart(G3);
                        frameLayout.addView(appCompatTextView3, d2);
                        dialogSetReset.g0 = view;
                        dialogSetReset.h0 = appCompatTextView3;
                    }
                    if ((i2 & 4) == 4) {
                        FrameLayout frameLayout2 = new FrameLayout(context);
                        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-1, -2);
                        layoutParams4.topMargin = G2;
                        layoutParams4.setMarginStart(MainApp.E1);
                        linearLayout.addView(frameLayout2, layoutParams4);
                        View view2 = new View(context);
                        view2.setAlpha(1.0f);
                        FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(G, G);
                        layoutParams5.gravity = 8388627;
                        frameLayout2.addView(view2, layoutParams5);
                        AppCompatTextView appCompatTextView4 = new AppCompatTextView(context, null);
                        appCompatTextView4.setTextSize(1, 16.0f);
                        FrameLayout.LayoutParams d3 = com.google.android.gms.internal.mlkit_vision_text_common.a.d(appCompatTextView4, R.string.storage, -1, -2);
                        d3.gravity = 8388627;
                        d3.setMarginStart(G3);
                        frameLayout2.addView(appCompatTextView4, d3);
                        dialogSetReset.i0 = view2;
                        dialogSetReset.j0 = appCompatTextView4;
                    }
                    if ((i2 & 8) == 8) {
                        FrameLayout frameLayout3 = new FrameLayout(context);
                        LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(-1, -2);
                        layoutParams6.topMargin = G2;
                        layoutParams6.setMarginStart(MainApp.E1);
                        linearLayout.addView(frameLayout3, layoutParams6);
                        View view3 = new View(context);
                        view3.setAlpha(1.0f);
                        FrameLayout.LayoutParams layoutParams7 = new FrameLayout.LayoutParams(G, G);
                        layoutParams7.gravity = 8388627;
                        frameLayout3.addView(view3, layoutParams7);
                        AppCompatTextView appCompatTextView5 = new AppCompatTextView(context, null);
                        appCompatTextView5.setTextSize(1, 16.0f);
                        FrameLayout.LayoutParams d4 = com.google.android.gms.internal.mlkit_vision_text_common.a.d(appCompatTextView5, R.string.tv_cast, -1, -2);
                        d4.gravity = 8388627;
                        d4.setMarginStart(G3);
                        frameLayout3.addView(appCompatTextView5, d4);
                        dialogSetReset.k0 = view3;
                        dialogSetReset.l0 = appCompatTextView5;
                    }
                    if ((i2 & 16) == 16) {
                        FrameLayout frameLayout4 = new FrameLayout(context);
                        LinearLayout.LayoutParams layoutParams8 = new LinearLayout.LayoutParams(-1, -2);
                        layoutParams8.topMargin = G2;
                        layoutParams8.setMarginStart(MainApp.E1);
                        linearLayout.addView(frameLayout4, layoutParams8);
                        View view4 = new View(context);
                        view4.setAlpha(1.0f);
                        FrameLayout.LayoutParams layoutParams9 = new FrameLayout.LayoutParams(G, G);
                        layoutParams9.gravity = 8388627;
                        frameLayout4.addView(view4, layoutParams9);
                        AppCompatTextView appCompatTextView6 = new AppCompatTextView(context, null);
                        appCompatTextView6.setTextSize(1, 16.0f);
                        FrameLayout.LayoutParams d5 = com.google.android.gms.internal.mlkit_vision_text_common.a.d(appCompatTextView6, R.string.lock_type, -1, -2);
                        d5.gravity = 8388627;
                        d5.setMarginStart(G3);
                        frameLayout4.addView(appCompatTextView6, d5);
                        dialogSetReset.m0 = view4;
                        dialogSetReset.n0 = appCompatTextView6;
                    }
                    if ((i2 & 32) == 32) {
                        FrameLayout frameLayout5 = new FrameLayout(context);
                        LinearLayout.LayoutParams layoutParams10 = new LinearLayout.LayoutParams(-1, -2);
                        layoutParams10.topMargin = G2;
                        layoutParams10.setMarginStart(MainApp.E1);
                        linearLayout.addView(frameLayout5, layoutParams10);
                        View view5 = new View(context);
                        view5.setAlpha(1.0f);
                        FrameLayout.LayoutParams layoutParams11 = new FrameLayout.LayoutParams(G, G);
                        layoutParams11.gravity = 8388627;
                        frameLayout5.addView(view5, layoutParams11);
                        AppCompatTextView appCompatTextView7 = new AppCompatTextView(context, null);
                        r7 = 1;
                        f = 16.0f;
                        appCompatTextView7.setTextSize(1, 16.0f);
                        FrameLayout.LayoutParams d6 = com.google.android.gms.internal.mlkit_vision_text_common.a.d(appCompatTextView7, R.string.vpn, -1, -2);
                        d6.gravity = 8388627;
                        d6.setMarginStart(G3);
                        frameLayout5.addView(appCompatTextView7, d6);
                        dialogSetReset.o0 = view5;
                        dialogSetReset.p0 = appCompatTextView7;
                    } else {
                        r7 = 1;
                        f = 16.0f;
                    }
                    MyLineText r = com.google.android.gms.internal.mlkit_vision_text_common.a.r(context, 17, r7, f);
                    r.setText(R.string.reset);
                    r.setLinePad(MainApp.E1);
                    r.setLineUp(r7);
                    q.addView(r, -1, MainApp.g1);
                    dialogSetReset.d0 = q;
                    dialogSetReset.e0 = appCompatTextView;
                    dialogSetReset.q0 = r;
                    Handler handler2 = dialogSetReset.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetReset.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            final DialogSetReset dialogSetReset2 = DialogSetReset.this;
                            if (dialogSetReset2.d0 != null && dialogSetReset2.a0 != null) {
                                if (MainApp.K1) {
                                    dialogSetReset2.e0.setTextColor(-328966);
                                    dialogSetReset2.q0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogSetReset2.q0.setTextColor(-328966);
                                } else {
                                    dialogSetReset2.e0.setTextColor(-16777216);
                                    dialogSetReset2.q0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogSetReset2.q0.setTextColor(-14784824);
                                }
                                if (dialogSetReset2.c0 != 0) {
                                    if (MainApp.K1) {
                                        View view6 = dialogSetReset2.g0;
                                        if (view6 != null) {
                                            view6.setBackgroundResource(R.drawable.outline_language_dark_24);
                                        }
                                        View view7 = dialogSetReset2.i0;
                                        if (view7 != null) {
                                            view7.setBackgroundResource(R.drawable.outline_sd_card_dark_24);
                                        }
                                        View view8 = dialogSetReset2.k0;
                                        if (view8 != null) {
                                            view8.setBackgroundResource(R.drawable.outline_cast_dark_24);
                                        }
                                        View view9 = dialogSetReset2.m0;
                                        if (view9 != null) {
                                            view9.setBackgroundResource(R.drawable.outline_lock_dark_24);
                                        }
                                        View view10 = dialogSetReset2.o0;
                                        if (view10 != null) {
                                            view10.setBackgroundResource(R.drawable.outline_vpn_key_dark_24);
                                        }
                                        AppCompatTextView appCompatTextView8 = dialogSetReset2.f0;
                                        if (appCompatTextView8 != null) {
                                            appCompatTextView8.setTextColor(-328966);
                                        }
                                        AppCompatTextView appCompatTextView9 = dialogSetReset2.h0;
                                        if (appCompatTextView9 != null) {
                                            appCompatTextView9.setTextColor(-328966);
                                        }
                                        AppCompatTextView appCompatTextView10 = dialogSetReset2.j0;
                                        if (appCompatTextView10 != null) {
                                            appCompatTextView10.setTextColor(-328966);
                                        }
                                        AppCompatTextView appCompatTextView11 = dialogSetReset2.l0;
                                        if (appCompatTextView11 != null) {
                                            appCompatTextView11.setTextColor(-328966);
                                        }
                                        AppCompatTextView appCompatTextView12 = dialogSetReset2.n0;
                                        if (appCompatTextView12 != null) {
                                            appCompatTextView12.setTextColor(-328966);
                                        }
                                        AppCompatTextView appCompatTextView13 = dialogSetReset2.p0;
                                        if (appCompatTextView13 != null) {
                                            appCompatTextView13.setTextColor(-328966);
                                        }
                                    } else {
                                        View view11 = dialogSetReset2.g0;
                                        if (view11 != null) {
                                            view11.setBackgroundResource(R.drawable.outline_language_black_24);
                                        }
                                        View view12 = dialogSetReset2.i0;
                                        if (view12 != null) {
                                            view12.setBackgroundResource(R.drawable.outline_sd_card_black_24);
                                        }
                                        View view13 = dialogSetReset2.k0;
                                        if (view13 != null) {
                                            view13.setBackgroundResource(R.drawable.outline_cast_black_24);
                                        }
                                        View view14 = dialogSetReset2.m0;
                                        if (view14 != null) {
                                            view14.setBackgroundResource(R.drawable.outline_lock_black_24);
                                        }
                                        View view15 = dialogSetReset2.o0;
                                        if (view15 != null) {
                                            view15.setBackgroundResource(R.drawable.outline_vpn_key_black_24);
                                        }
                                        AppCompatTextView appCompatTextView14 = dialogSetReset2.f0;
                                        if (appCompatTextView14 != null) {
                                            appCompatTextView14.setTextColor(-16777216);
                                        }
                                        AppCompatTextView appCompatTextView15 = dialogSetReset2.h0;
                                        if (appCompatTextView15 != null) {
                                            appCompatTextView15.setTextColor(-16777216);
                                        }
                                        AppCompatTextView appCompatTextView16 = dialogSetReset2.j0;
                                        if (appCompatTextView16 != null) {
                                            appCompatTextView16.setTextColor(-16777216);
                                        }
                                        AppCompatTextView appCompatTextView17 = dialogSetReset2.l0;
                                        if (appCompatTextView17 != null) {
                                            appCompatTextView17.setTextColor(-16777216);
                                        }
                                        AppCompatTextView appCompatTextView18 = dialogSetReset2.n0;
                                        if (appCompatTextView18 != null) {
                                            appCompatTextView18.setTextColor(-16777216);
                                        }
                                        AppCompatTextView appCompatTextView19 = dialogSetReset2.p0;
                                        if (appCompatTextView19 != null) {
                                            appCompatTextView19.setTextColor(-16777216);
                                        }
                                    }
                                }
                                dialogSetReset2.q0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetReset.3
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view16) {
                                        DialogSetReset dialogSetReset3 = DialogSetReset.this;
                                        MyLineText myLineText = dialogSetReset3.q0;
                                        if (myLineText == null || dialogSetReset3.r0) {
                                            return;
                                        }
                                        dialogSetReset3.r0 = true;
                                        myLineText.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetReset.3.1
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                int i6;
                                                final DialogSetReset dialogSetReset4 = DialogSetReset.this;
                                                if (dialogSetReset4.d0 == null) {
                                                    return;
                                                }
                                                dialogSetReset4.setCanceledOnTouchOutside(false);
                                                dialogSetReset4.d0.e(0, 0, true, false);
                                                dialogSetReset4.q0.setEnabled(false);
                                                MyLineText myLineText2 = dialogSetReset4.q0;
                                                if (MainApp.K1) {
                                                    i6 = -8355712;
                                                } else {
                                                    i6 = -2434342;
                                                }
                                                myLineText2.setTextColor(i6);
                                                dialogSetReset4.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetReset.5
                                                    @Override // java.lang.Runnable
                                                    public final void run() {
                                                        DialogSetReset dialogSetReset5 = DialogSetReset.this;
                                                        DialogResetListener dialogResetListener2 = dialogSetReset5.b0;
                                                        if (dialogResetListener2 != null) {
                                                            dialogSetReset5.s0 = dialogResetListener2.b();
                                                        }
                                                        dialogSetReset5.r0 = false;
                                                        Handler handler3 = dialogSetReset5.i;
                                                        if (handler3 == null) {
                                                            return;
                                                        }
                                                        handler3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetReset.5.1
                                                            @Override // java.lang.Runnable
                                                            public final void run() {
                                                                DialogSetReset dialogSetReset6 = DialogSetReset.this;
                                                                if (dialogSetReset6.t0) {
                                                                    MainUtil.e8(dialogSetReset6.a0, R.string.cancelled);
                                                                }
                                                                DialogResetListener dialogResetListener3 = dialogSetReset6.b0;
                                                                if (dialogResetListener3 != null) {
                                                                    dialogResetListener3.a(dialogSetReset6.s0);
                                                                }
                                                            }
                                                        });
                                                    }
                                                });
                                            }
                                        });
                                    }
                                });
                                dialogSetReset2.g(dialogSetReset2.d0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogSetReset.4
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view16) {
                                        DialogSetReset dialogSetReset3 = DialogSetReset.this;
                                        if (dialogSetReset3.d0 == null) {
                                            return;
                                        }
                                        dialogSetReset3.show();
                                    }
                                });
                            }
                        }
                    });
                }
            }
        });
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void cancel() {
        if (this.r0) {
            this.t0 = true;
        } else {
            dismiss();
        }
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.a0 == null) {
            return;
        }
        MyDialogLinear myDialogLinear = this.d0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.d0 = null;
        }
        MyLineText myLineText = this.q0;
        if (myLineText != null) {
            myLineText.u();
            this.q0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.e0 = null;
        this.f0 = null;
        this.g0 = null;
        this.h0 = null;
        this.i0 = null;
        this.j0 = null;
        this.k0 = null;
        this.l0 = null;
        this.m0 = null;
        this.n0 = null;
        this.o0 = null;
        this.p0 = null;
        super.dismiss();
    }
}
