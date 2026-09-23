package com.mycompany.app.dialog;

import android.content.Context;
import android.graphics.Typeface;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.widget.NestedScrollView;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyLineFrame;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyRoundFrame;

/* loaded from: classes3.dex */
public class DialogGuideAds extends MyDialogBottom {
    public Context a0;
    public MyDialogLinear b0;
    public ImageView c0;
    public AppCompatTextView d0;
    public AppCompatTextView e0;
    public AppCompatTextView f0;
    public AppCompatTextView g0;
    public AppCompatTextView h0;
    public AppCompatTextView i0;
    public MyLineText j0;
    public MyRoundFrame k0;
    public FrameLayout l0;
    public View m0;
    public View n0;
    public View o0;
    public View p0;
    public AppCompatTextView q0;
    public AppCompatTextView r0;
    public AppCompatTextView s0;

    public DialogGuideAds(MainActivity mainActivity) {
        super(mainActivity);
        this.a0 = getContext();
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogGuideAds.1
            @Override // java.lang.Runnable
            public final void run() {
                final DialogGuideAds dialogGuideAds = DialogGuideAds.this;
                Context context = dialogGuideAds.a0;
                if (context != null) {
                    int i = R.id.ads_view_head;
                    MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
                    MyLineFrame myLineFrame = new MyLineFrame(context);
                    myLineFrame.a(MainApp.E1);
                    q.addView(myLineFrame, -1, MainApp.g1);
                    ImageView imageView = new ImageView(context);
                    imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                    int i2 = MainApp.f1;
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i2, i2);
                    layoutParams.gravity = 8388627;
                    layoutParams.setMarginStart(MainApp.E1);
                    myLineFrame.addView(imageView, layoutParams);
                    AppCompatTextView i3 = com.google.android.gms.internal.mlkit_vision_text_common.a.i(context, null, 2);
                    i3.setEllipsize(TextUtils.TruncateAt.END);
                    i3.setTextSize(1, 16.0f);
                    FrameLayout.LayoutParams d = com.google.android.gms.internal.mlkit_vision_text_common.a.d(i3, R.string.tip, -1, -2);
                    d.gravity = 8388627;
                    d.setMarginStart(MainApp.i1);
                    d.setMarginEnd(MainApp.E1);
                    myLineFrame.addView(i3, d);
                    NestedScrollView m = com.google.android.gms.internal.mlkit_vision_text_common.a.m(context, null, 2);
                    LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, 0);
                    layoutParams2.weight = 1.0f;
                    q.addView(m, layoutParams2);
                    LinearLayout linearLayout = new LinearLayout(context);
                    int i4 = MainApp.E1;
                    linearLayout.setPadding(i4, i4, i4, i4);
                    linearLayout.setOrientation(1);
                    linearLayout.setMinimumHeight((int) MainUtil.G(context, 72.0f));
                    m.addView(linearLayout, -1, -2);
                    AppCompatTextView j = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
                    linearLayout.addView(j, -1, -2);
                    AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
                    appCompatTextView.setLineSpacing(MainApp.G1, 1.0f);
                    appCompatTextView.setTextSize(1, 14.0f);
                    LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -2);
                    layoutParams3.topMargin = MainApp.F1;
                    layoutParams3.setMarginStart(MainApp.E1);
                    linearLayout.addView(appCompatTextView, layoutParams3);
                    AppCompatTextView j2 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
                    LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-1, -2);
                    layoutParams4.topMargin = (int) MainUtil.G(context, 32.0f);
                    linearLayout.addView(j2, layoutParams4);
                    AppCompatTextView appCompatTextView2 = new AppCompatTextView(context, null);
                    appCompatTextView2.setLineSpacing(MainApp.G1, 1.0f);
                    appCompatTextView2.setTextSize(1, 14.0f);
                    LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-1, -2);
                    layoutParams5.topMargin = MainApp.F1;
                    layoutParams5.setMarginStart(MainApp.E1);
                    linearLayout.addView(appCompatTextView2, layoutParams5);
                    AppCompatTextView j3 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
                    LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(-1, -2);
                    layoutParams6.topMargin = MainApp.f1;
                    linearLayout.addView(j3, layoutParams6);
                    MyRoundFrame myRoundFrame = new MyRoundFrame(context);
                    int i5 = MainApp.F1;
                    myRoundFrame.setPadding(i5, i5, i5, i5);
                    LinearLayout.LayoutParams layoutParams7 = new LinearLayout.LayoutParams(-1, -2);
                    layoutParams7.topMargin = MainApp.F1;
                    linearLayout.addView(myRoundFrame, layoutParams7);
                    FrameLayout frameLayout = new FrameLayout(context);
                    int i6 = MainApp.F1;
                    frameLayout.setPadding(i6, i6, i6, i6);
                    myRoundFrame.addView(frameLayout, -1, -2);
                    int G = (int) MainUtil.G(context, 15.0f);
                    View view = new View(context);
                    FrameLayout.LayoutParams layoutParams8 = new FrameLayout.LayoutParams(G, G);
                    layoutParams8.gravity = 8388613;
                    frameLayout.addView(view, layoutParams8);
                    LinearLayout linearLayout2 = new LinearLayout(context);
                    linearLayout2.setOrientation(1);
                    frameLayout.addView(linearLayout2, -1, -2);
                    int G2 = (int) MainUtil.G(context, 25.0f);
                    View view2 = new View(context);
                    linearLayout2.addView(view2, G2, G);
                    int G3 = (int) MainUtil.G(context, 172.0f);
                    View view3 = new View(context);
                    FrameLayout.LayoutParams layoutParams9 = new FrameLayout.LayoutParams(-1, G3);
                    layoutParams9.topMargin = MainApp.F1;
                    linearLayout2.addView(view3, layoutParams9);
                    int G4 = (int) MainUtil.G(context, 10.0f);
                    FrameLayout frameLayout2 = new FrameLayout(context);
                    FrameLayout.LayoutParams layoutParams10 = new FrameLayout.LayoutParams(-1, -2);
                    layoutParams10.topMargin = G4;
                    linearLayout2.addView(frameLayout2, layoutParams10);
                    View view4 = new View(context);
                    int i7 = MainApp.f1;
                    frameLayout2.addView(view4, i7, i7);
                    RelativeLayout relativeLayout = new RelativeLayout(context);
                    FrameLayout.LayoutParams layoutParams11 = new FrameLayout.LayoutParams(-1, -2);
                    layoutParams11.setMarginStart(MainApp.g1);
                    frameLayout2.addView(relativeLayout, layoutParams11);
                    AppCompatTextView k = com.google.android.gms.internal.mlkit_vision_text_common.a.k(context, null, i, 1, 14.0f);
                    relativeLayout.addView(k, -2, -2);
                    AppCompatTextView j4 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 12.0f);
                    RelativeLayout.LayoutParams h = androidx.work.impl.workers.a.h(-2, -2, 3, i);
                    h.topMargin = MainApp.G1;
                    relativeLayout.addView(j4, h);
                    AppCompatTextView appCompatTextView3 = new AppCompatTextView(context, null);
                    int i8 = MainApp.F1;
                    appCompatTextView3.setPadding(i8, 0, i8, 0);
                    appCompatTextView3.setGravity(17);
                    appCompatTextView3.setTextSize(1, 14.0f);
                    appCompatTextView3.setTextColor(-1);
                    appCompatTextView3.setTypeface(Typeface.create(Typeface.DEFAULT, 1));
                    appCompatTextView3.setBackgroundResource(R.drawable.selector_round_theme);
                    LinearLayout.LayoutParams layoutParams12 = new LinearLayout.LayoutParams(-1, MainApp.f1);
                    layoutParams12.topMargin = G4;
                    linearLayout2.addView(appCompatTextView3, layoutParams12);
                    MyLineText myLineText = new MyLineText(context);
                    myLineText.setGravity(17);
                    myLineText.setTextSize(1, 16.0f);
                    myLineText.setText(R.string.ok);
                    myLineText.setLinePad(MainApp.E1);
                    myLineText.setLineUp(true);
                    q.addView(myLineText, -1, MainApp.g1);
                    dialogGuideAds.b0 = q;
                    dialogGuideAds.c0 = imageView;
                    dialogGuideAds.d0 = i3;
                    dialogGuideAds.e0 = j;
                    dialogGuideAds.f0 = appCompatTextView;
                    dialogGuideAds.g0 = j2;
                    dialogGuideAds.h0 = appCompatTextView2;
                    dialogGuideAds.i0 = j3;
                    dialogGuideAds.j0 = myLineText;
                    dialogGuideAds.k0 = myRoundFrame;
                    dialogGuideAds.l0 = frameLayout;
                    dialogGuideAds.m0 = view2;
                    dialogGuideAds.n0 = view;
                    dialogGuideAds.o0 = view3;
                    dialogGuideAds.p0 = view4;
                    dialogGuideAds.q0 = appCompatTextView3;
                    dialogGuideAds.r0 = k;
                    dialogGuideAds.s0 = j4;
                    Handler handler2 = dialogGuideAds.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogGuideAds.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            final DialogGuideAds dialogGuideAds2 = DialogGuideAds.this;
                            if (dialogGuideAds2.b0 != null && dialogGuideAds2.a0 != null) {
                                StringBuilder sb = new StringBuilder();
                                com.google.android.gms.internal.mlkit_vision_text_common.a.x(dialogGuideAds2.a0, R.string.ads_guide_1, sb, "\n");
                                com.google.android.gms.internal.mlkit_vision_text_common.a.x(dialogGuideAds2.a0, R.string.ads_guide_2, sb, "\n");
                                com.google.android.gms.internal.mlkit_vision_text_common.a.x(dialogGuideAds2.a0, R.string.ads_guide_3, sb, "\n\n");
                                sb.append(dialogGuideAds2.a0.getString(R.string.ads_guide_4));
                                StringBuilder sb2 = new StringBuilder();
                                com.google.android.gms.internal.mlkit_vision_text_common.a.x(dialogGuideAds2.a0, R.string.ads_guide_5, sb2, "\n");
                                com.google.android.gms.internal.mlkit_vision_text_common.a.x(dialogGuideAds2.a0, R.string.ads_guide_6, sb2, "\n");
                                com.google.android.gms.internal.mlkit_vision_text_common.a.x(dialogGuideAds2.a0, R.string.ads_guide_7, sb2, "\n\n");
                                com.google.android.gms.internal.mlkit_vision_text_common.a.x(dialogGuideAds2.a0, R.string.remove_ads_info_4, sb2, "\n");
                                sb2.append(dialogGuideAds2.a0.getString(R.string.ads_guide_8));
                                StringBuilder sb3 = new StringBuilder("<");
                                com.google.android.gms.internal.mlkit_vision_text_common.a.x(dialogGuideAds2.a0, R.string.inapp_ads_sample, sb3, ">");
                                dialogGuideAds2.e0.setText(R.string.inapp_ads);
                                dialogGuideAds2.f0.setText(sb.toString());
                                dialogGuideAds2.g0.setText(R.string.website_ads);
                                dialogGuideAds2.h0.setText(sb2.toString());
                                dialogGuideAds2.i0.setText(sb3.toString());
                                if (MainApp.K1) {
                                    dialogGuideAds2.c0.setImageResource(R.drawable.outline_wb_incandescent_2_dark_24);
                                    dialogGuideAds2.d0.setTextColor(-328966);
                                    dialogGuideAds2.e0.setTextColor(-328966);
                                    dialogGuideAds2.f0.setTextColor(-328966);
                                    dialogGuideAds2.g0.setTextColor(-328966);
                                    dialogGuideAds2.h0.setTextColor(-328966);
                                    dialogGuideAds2.i0.setTextColor(-328966);
                                    dialogGuideAds2.j0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogGuideAds2.j0.setTextColor(-328966);
                                    dialogGuideAds2.l0.setBackgroundColor(-16777216);
                                    dialogGuideAds2.r0.setTextColor(-328966);
                                    dialogGuideAds2.s0.setTextColor(-5197648);
                                } else {
                                    dialogGuideAds2.c0.setImageResource(R.drawable.outline_wb_incandescent_2_black_24);
                                    dialogGuideAds2.d0.setTextColor(-16777216);
                                    dialogGuideAds2.e0.setTextColor(-16777216);
                                    dialogGuideAds2.f0.setTextColor(-16777216);
                                    dialogGuideAds2.g0.setTextColor(-16777216);
                                    dialogGuideAds2.h0.setTextColor(-16777216);
                                    dialogGuideAds2.i0.setTextColor(-16777216);
                                    dialogGuideAds2.j0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogGuideAds2.j0.setTextColor(-14784824);
                                    dialogGuideAds2.k0.c(-460552, MainApp.E1);
                                    dialogGuideAds2.l0.setBackgroundColor(-1);
                                    dialogGuideAds2.r0.setTextColor(-16777216);
                                    dialogGuideAds2.s0.setTextColor(-12303292);
                                }
                                dialogGuideAds2.m0.setBackgroundResource(R.drawable.ads_noti);
                                dialogGuideAds2.n0.setBackgroundResource(R.drawable.ads_info);
                                dialogGuideAds2.o0.setBackgroundResource(R.drawable.ads_back);
                                dialogGuideAds2.p0.setBackgroundResource(R.drawable.ads_icon);
                                dialogGuideAds2.q0.setText("Sample");
                                dialogGuideAds2.r0.setText("Sample");
                                dialogGuideAds2.s0.setText("Sample");
                                MainUtil.n7(dialogGuideAds2.l0);
                                MainUtil.n7(dialogGuideAds2.p0);
                                dialogGuideAds2.j0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogGuideAds.3
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view5) {
                                        DialogGuideAds.this.dismiss();
                                    }
                                });
                                dialogGuideAds2.g(dialogGuideAds2.b0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogGuideAds.4
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view5) {
                                        DialogGuideAds dialogGuideAds3 = DialogGuideAds.this;
                                        if (dialogGuideAds3.b0 == null) {
                                            return;
                                        }
                                        dialogGuideAds3.show();
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
        MyLineText myLineText = this.j0;
        if (myLineText != null) {
            myLineText.u();
            this.j0 = null;
        }
        MyRoundFrame myRoundFrame = this.k0;
        if (myRoundFrame != null) {
            myRoundFrame.a();
            this.k0 = null;
        }
        this.a0 = null;
        this.c0 = null;
        this.d0 = null;
        this.e0 = null;
        this.f0 = null;
        this.g0 = null;
        this.h0 = null;
        this.i0 = null;
        this.l0 = null;
        this.m0 = null;
        this.n0 = null;
        this.o0 = null;
        this.p0 = null;
        this.q0 = null;
        this.r0 = null;
        this.s0 = null;
        super.dismiss();
    }
}
