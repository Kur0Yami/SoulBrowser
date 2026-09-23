package com.mycompany.app.dialog;

import android.content.Context;
import android.os.Handler;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.widget.NestedScrollView;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyLineText;

/* loaded from: classes3.dex */
public class DialogGuideNoti extends MyDialogBottom {
    public Context a0;
    public MyDialogLinear b0;
    public View c0;
    public AppCompatTextView d0;
    public AppCompatTextView e0;
    public View f0;
    public AppCompatTextView g0;
    public View h0;
    public AppCompatTextView i0;
    public View j0;
    public AppCompatTextView k0;
    public View l0;
    public AppCompatTextView m0;
    public View n0;
    public AppCompatTextView o0;
    public MyLineText p0;

    public DialogGuideNoti(MainActivity mainActivity) {
        super(mainActivity);
        this.a0 = getContext();
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogGuideNoti.1
            @Override // java.lang.Runnable
            public final void run() {
                final DialogGuideNoti dialogGuideNoti = DialogGuideNoti.this;
                Context context = dialogGuideNoti.a0;
                if (context != null) {
                    MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
                    NestedScrollView m = com.google.android.gms.internal.mlkit_vision_text_common.a.m(context, null, 2);
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0);
                    layoutParams.weight = 1.0f;
                    q.addView(m, layoutParams);
                    LinearLayout linearLayout = new LinearLayout(context);
                    int i = MainApp.E1;
                    linearLayout.setPadding(i, i, i, i);
                    linearLayout.setOrientation(1);
                    m.addView(linearLayout, -1, -2);
                    FrameLayout frameLayout = new FrameLayout(context);
                    LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams2.topMargin = MainApp.E1;
                    layoutParams2.gravity = 1;
                    linearLayout.addView(frameLayout, layoutParams2);
                    int i2 = MainApp.g1 / 2;
                    View view = new View(context);
                    FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(i2, i2);
                    layoutParams3.gravity = 8388627;
                    frameLayout.addView(view, layoutParams3);
                    int G = (int) MainUtil.G(context, 32.0f);
                    AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
                    appCompatTextView.setPaddingRelative(MainApp.f1, 0, G, 0);
                    appCompatTextView.setTextSize(1, 16.0f);
                    FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-1, -2);
                    layoutParams4.gravity = 8388627;
                    frameLayout.addView(appCompatTextView, layoutParams4);
                    AppCompatTextView appCompatTextView2 = new AppCompatTextView(context, null);
                    appCompatTextView2.setLineSpacing(MainApp.G1, 1.0f);
                    appCompatTextView2.setTextSize(1, 14.0f);
                    LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-1, -2);
                    layoutParams5.topMargin = (int) MainUtil.G(context, 28.0f);
                    linearLayout.addView(appCompatTextView2, layoutParams5);
                    FrameLayout frameLayout2 = new FrameLayout(context);
                    LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(-1, -2);
                    int i3 = MainApp.E1;
                    layoutParams6.topMargin = i3;
                    layoutParams6.setMarginStart(i3);
                    linearLayout.addView(frameLayout2, layoutParams6);
                    int i4 = MainApp.f1 / 2;
                    View view2 = new View(context);
                    FrameLayout.LayoutParams layoutParams7 = new FrameLayout.LayoutParams(i4, i4);
                    layoutParams7.gravity = 8388627;
                    frameLayout2.addView(view2, layoutParams7);
                    int G2 = (int) MainUtil.G(context, 36.0f);
                    AppCompatTextView j = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
                    FrameLayout.LayoutParams layoutParams8 = new FrameLayout.LayoutParams(-1, -2);
                    layoutParams8.gravity = 8388627;
                    layoutParams8.setMarginStart(G2);
                    frameLayout2.addView(j, layoutParams8);
                    int G3 = (int) MainUtil.G(context, 12.0f);
                    FrameLayout frameLayout3 = new FrameLayout(context);
                    LinearLayout.LayoutParams layoutParams9 = new LinearLayout.LayoutParams(-1, -2);
                    layoutParams9.topMargin = G3;
                    layoutParams9.setMarginStart(MainApp.E1);
                    linearLayout.addView(frameLayout3, layoutParams9);
                    View view3 = new View(context);
                    FrameLayout.LayoutParams layoutParams10 = new FrameLayout.LayoutParams(i4, i4);
                    layoutParams10.gravity = 8388627;
                    frameLayout3.addView(view3, layoutParams10);
                    AppCompatTextView appCompatTextView3 = new AppCompatTextView(context, null);
                    appCompatTextView3.setTextSize(1, 16.0f);
                    FrameLayout.LayoutParams layoutParams11 = new FrameLayout.LayoutParams(-1, -2);
                    layoutParams11.gravity = 8388627;
                    layoutParams11.setMarginStart(G2);
                    frameLayout3.addView(appCompatTextView3, layoutParams11);
                    FrameLayout frameLayout4 = new FrameLayout(context);
                    LinearLayout.LayoutParams layoutParams12 = new LinearLayout.LayoutParams(-1, -2);
                    layoutParams12.topMargin = G3;
                    layoutParams12.setMarginStart(MainApp.E1);
                    linearLayout.addView(frameLayout4, layoutParams12);
                    View view4 = new View(context);
                    FrameLayout.LayoutParams layoutParams13 = new FrameLayout.LayoutParams(i4, i4);
                    layoutParams13.gravity = 8388627;
                    frameLayout4.addView(view4, layoutParams13);
                    AppCompatTextView appCompatTextView4 = new AppCompatTextView(context, null);
                    appCompatTextView4.setTextSize(1, 16.0f);
                    FrameLayout.LayoutParams layoutParams14 = new FrameLayout.LayoutParams(-1, -2);
                    layoutParams14.gravity = 8388627;
                    layoutParams14.setMarginStart(G2);
                    frameLayout4.addView(appCompatTextView4, layoutParams14);
                    FrameLayout frameLayout5 = new FrameLayout(context);
                    LinearLayout.LayoutParams layoutParams15 = new LinearLayout.LayoutParams(-1, -2);
                    layoutParams15.topMargin = G3;
                    layoutParams15.setMarginStart(MainApp.E1);
                    linearLayout.addView(frameLayout5, layoutParams15);
                    View view5 = new View(context);
                    FrameLayout.LayoutParams layoutParams16 = new FrameLayout.LayoutParams(i4, i4);
                    layoutParams16.gravity = 8388627;
                    frameLayout5.addView(view5, layoutParams16);
                    AppCompatTextView appCompatTextView5 = new AppCompatTextView(context, null);
                    appCompatTextView5.setTextSize(1, 16.0f);
                    FrameLayout.LayoutParams layoutParams17 = new FrameLayout.LayoutParams(-1, -2);
                    layoutParams17.gravity = 8388627;
                    layoutParams17.setMarginStart(G2);
                    frameLayout5.addView(appCompatTextView5, layoutParams17);
                    FrameLayout frameLayout6 = new FrameLayout(context);
                    LinearLayout.LayoutParams layoutParams18 = new LinearLayout.LayoutParams(-1, -2);
                    layoutParams18.topMargin = G3;
                    layoutParams18.setMarginStart(MainApp.E1);
                    linearLayout.addView(frameLayout6, layoutParams18);
                    View view6 = new View(context);
                    FrameLayout.LayoutParams layoutParams19 = new FrameLayout.LayoutParams(i4, i4);
                    layoutParams19.gravity = 8388627;
                    frameLayout6.addView(view6, layoutParams19);
                    AppCompatTextView appCompatTextView6 = new AppCompatTextView(context, null);
                    appCompatTextView6.setTextSize(1, 16.0f);
                    FrameLayout.LayoutParams layoutParams20 = new FrameLayout.LayoutParams(-1, -2);
                    layoutParams20.gravity = 8388627;
                    layoutParams20.setMarginStart(G2);
                    frameLayout6.addView(appCompatTextView6, layoutParams20);
                    MyLineText r = com.google.android.gms.internal.mlkit_vision_text_common.a.r(context, 17, 1, 16.0f);
                    r.setText(R.string.ok);
                    r.setLinePad(MainApp.E1);
                    r.setLineUp(true);
                    q.addView(r, -1, MainApp.g1);
                    dialogGuideNoti.b0 = q;
                    dialogGuideNoti.c0 = view;
                    dialogGuideNoti.d0 = appCompatTextView;
                    dialogGuideNoti.e0 = appCompatTextView2;
                    dialogGuideNoti.f0 = view2;
                    dialogGuideNoti.g0 = j;
                    dialogGuideNoti.h0 = view3;
                    dialogGuideNoti.i0 = appCompatTextView3;
                    dialogGuideNoti.j0 = view4;
                    dialogGuideNoti.k0 = appCompatTextView4;
                    dialogGuideNoti.l0 = view5;
                    dialogGuideNoti.m0 = appCompatTextView5;
                    dialogGuideNoti.n0 = view6;
                    dialogGuideNoti.o0 = appCompatTextView6;
                    dialogGuideNoti.p0 = r;
                    Handler handler2 = dialogGuideNoti.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogGuideNoti.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            final DialogGuideNoti dialogGuideNoti2 = DialogGuideNoti.this;
                            if (dialogGuideNoti2.b0 != null && dialogGuideNoti2.a0 != null) {
                                StringBuilder sb = new StringBuilder();
                                com.google.android.gms.internal.mlkit_vision_text_common.a.x(dialogGuideNoti2.a0, R.string.noti_pms_guide_1, sb, "\n");
                                sb.append(dialogGuideNoti2.a0.getString(R.string.change_in_setting));
                                dialogGuideNoti2.d0.setText(R.string.noti_pms);
                                dialogGuideNoti2.e0.setText(sb.toString());
                                dialogGuideNoti2.g0.setText(R.string.download);
                                dialogGuideNoti2.i0.setText(R.string.ads_block);
                                dialogGuideNoti2.k0.setText(R.string.secret_mode);
                                dialogGuideNoti2.m0.setText(R.string.back_play);
                                dialogGuideNoti2.o0.setText(R.string.vpn);
                                dialogGuideNoti2.f0.setAlpha(1.0f);
                                dialogGuideNoti2.h0.setAlpha(1.0f);
                                dialogGuideNoti2.j0.setAlpha(1.0f);
                                dialogGuideNoti2.l0.setAlpha(1.0f);
                                dialogGuideNoti2.n0.setAlpha(1.0f);
                                if (MainApp.K1) {
                                    dialogGuideNoti2.c0.setBackgroundResource(R.drawable.outline_notifications_active_dark_24);
                                    dialogGuideNoti2.f0.setBackgroundResource(R.drawable.outline_download_dark_24);
                                    dialogGuideNoti2.h0.setBackgroundResource(R.drawable.outline_verified_user_dark_24);
                                    dialogGuideNoti2.j0.setBackgroundResource(R.drawable.outline_secret_mode_dark_24);
                                    dialogGuideNoti2.l0.setBackgroundResource(R.drawable.baseline_play_arrow_dark_24);
                                    dialogGuideNoti2.n0.setBackgroundResource(R.drawable.outline_vpn_key_dark_24);
                                    dialogGuideNoti2.d0.setTextColor(-328966);
                                    dialogGuideNoti2.e0.setTextColor(-328966);
                                    dialogGuideNoti2.g0.setTextColor(-328966);
                                    dialogGuideNoti2.i0.setTextColor(-328966);
                                    dialogGuideNoti2.k0.setTextColor(-328966);
                                    dialogGuideNoti2.m0.setTextColor(-328966);
                                    dialogGuideNoti2.o0.setTextColor(-328966);
                                    dialogGuideNoti2.p0.setTextColor(-328966);
                                    dialogGuideNoti2.p0.setBackgroundResource(R.drawable.selector_normal_dark);
                                } else {
                                    dialogGuideNoti2.c0.setBackgroundResource(R.drawable.outline_notifications_active_black_24);
                                    dialogGuideNoti2.f0.setBackgroundResource(R.drawable.outline_download_black_24);
                                    dialogGuideNoti2.h0.setBackgroundResource(R.drawable.outline_verified_user_black_24);
                                    dialogGuideNoti2.j0.setBackgroundResource(R.drawable.outline_secret_mode_black_24);
                                    dialogGuideNoti2.l0.setBackgroundResource(R.drawable.baseline_play_arrow_black_24);
                                    dialogGuideNoti2.n0.setBackgroundResource(R.drawable.outline_vpn_key_black_24);
                                    dialogGuideNoti2.d0.setTextColor(-16777216);
                                    dialogGuideNoti2.e0.setTextColor(-16777216);
                                    dialogGuideNoti2.g0.setTextColor(-16777216);
                                    dialogGuideNoti2.i0.setTextColor(-16777216);
                                    dialogGuideNoti2.k0.setTextColor(-16777216);
                                    dialogGuideNoti2.m0.setTextColor(-16777216);
                                    dialogGuideNoti2.o0.setTextColor(-16777216);
                                    dialogGuideNoti2.p0.setTextColor(-14784824);
                                    dialogGuideNoti2.p0.setBackgroundResource(R.drawable.selector_normal);
                                }
                                dialogGuideNoti2.p0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogGuideNoti.3
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view7) {
                                        DialogGuideNoti.this.dismiss();
                                    }
                                });
                                dialogGuideNoti2.g(dialogGuideNoti2.b0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogGuideNoti.4
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view7) {
                                        DialogGuideNoti dialogGuideNoti3 = DialogGuideNoti.this;
                                        if (dialogGuideNoti3.b0 == null) {
                                            return;
                                        }
                                        dialogGuideNoti3.show();
                                    }
                                });
                            }
                        }
                    });
                }
            }
        });
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.a0 == null) {
            return;
        }
        MyDialogLinear myDialogLinear = this.b0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.b0 = null;
        }
        MyLineText myLineText = this.p0;
        if (myLineText != null) {
            myLineText.u();
            this.p0 = null;
        }
        this.a0 = null;
        this.c0 = null;
        this.d0 = null;
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
        super.dismiss();
    }
}
