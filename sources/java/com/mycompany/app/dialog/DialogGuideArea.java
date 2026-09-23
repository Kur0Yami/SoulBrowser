package com.mycompany.app.dialog;

import android.content.Context;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.text.SpannableString;
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
import com.mycompany.app.pref.PrefRead;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyLineFrame;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyLineView;
import com.mycompany.app.view.MyRoundLinear;
import java.util.Locale;

/* loaded from: classes3.dex */
public class DialogGuideArea extends MyDialogBottom {
    public AppCompatTextView A0;
    public Context a0;
    public DialogAreaListener b0;
    public final int c0;
    public boolean d0;
    public MyDialogLinear e0;
    public ImageView f0;
    public AppCompatTextView g0;
    public AppCompatTextView h0;
    public AppCompatTextView i0;
    public AppCompatTextView j0;
    public AppCompatTextView k0;
    public MyButtonImage l0;
    public ImageView m0;
    public AppCompatTextView n0;
    public ImageView o0;
    public AppCompatTextView p0;
    public MyLineText q0;
    public NestedScrollView r0;
    public MyRoundLinear s0;
    public MyRoundLinear t0;
    public MyRoundLinear u0;
    public AppCompatTextView v0;
    public AppCompatTextView w0;
    public AppCompatTextView x0;
    public AppCompatTextView y0;
    public AppCompatTextView z0;

    /* loaded from: classes3.dex */
    public interface DialogAreaListener {
        void b();

        void c();
    }

    public DialogGuideArea(MainActivity mainActivity, int i, DialogAreaListener dialogAreaListener) {
        super(mainActivity);
        this.a0 = getContext();
        this.b0 = dialogAreaListener;
        this.c0 = i;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogGuideArea.1
            @Override // java.lang.Runnable
            public final void run() {
                final DialogGuideArea dialogGuideArea = DialogGuideArea.this;
                int i2 = dialogGuideArea.c0;
                if (i2 == 0) {
                    Context context = dialogGuideArea.a0;
                    if (context != null) {
                        MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
                        MyLineFrame myLineFrame = new MyLineFrame(context);
                        myLineFrame.setLinePad(MainApp.E1);
                        myLineFrame.setLineDn(true);
                        q.addView(myLineFrame, -1, MainApp.g1);
                        ImageView imageView = new ImageView(context);
                        ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_INSIDE;
                        imageView.setScaleType(scaleType);
                        int i3 = MainApp.f1;
                        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i3, i3);
                        layoutParams.gravity = 8388627;
                        layoutParams.setMarginStart(MainApp.E1);
                        myLineFrame.addView(imageView, layoutParams);
                        AppCompatTextView i4 = com.google.android.gms.internal.mlkit_vision_text_common.a.i(context, null, 2);
                        i4.setEllipsize(TextUtils.TruncateAt.END);
                        i4.setTextSize(1, 16.0f);
                        FrameLayout.LayoutParams d = com.google.android.gms.internal.mlkit_vision_text_common.a.d(i4, R.string.tip, -1, -2);
                        d.gravity = 8388627;
                        d.setMarginStart((int) MainUtil.G(context, 64.0f));
                        d.setMarginEnd(MainApp.E1);
                        myLineFrame.addView(i4, d);
                        NestedScrollView m = com.google.android.gms.internal.mlkit_vision_text_common.a.m(context, null, 2);
                        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, 0);
                        layoutParams2.weight = 1.0f;
                        q.addView(m, layoutParams2);
                        LinearLayout linearLayout = new LinearLayout(context);
                        int i5 = MainApp.E1;
                        linearLayout.setPadding(i5, i5, i5, i5);
                        linearLayout.setMinimumHeight((int) MainUtil.G(context, 72.0f));
                        linearLayout.setOrientation(1);
                        m.addView(linearLayout, -1, -2);
                        AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
                        appCompatTextView.setLineSpacing(MainApp.G1, 1.0f);
                        appCompatTextView.setTextSize(1, 14.0f);
                        linearLayout.addView(appCompatTextView, -1, -2);
                        LinearLayout linearLayout2 = new LinearLayout(context);
                        linearLayout2.setBaselineAligned(false);
                        linearLayout2.setOrientation(0);
                        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
                        layoutParams3.topMargin = MainApp.E1;
                        linearLayout.addView(linearLayout2, layoutParams3);
                        AppCompatTextView appCompatTextView2 = new AppCompatTextView(context, null);
                        appCompatTextView2.setLineSpacing(MainApp.G1, 1.0f);
                        appCompatTextView2.setTextSize(1, 14.0f);
                        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(0, -2);
                        layoutParams4.weight = 1.0f;
                        layoutParams4.gravity = 8388627;
                        linearLayout2.addView(appCompatTextView2, layoutParams4);
                        MyButtonImage myButtonImage = new MyButtonImage(context);
                        myButtonImage.setScaleType(scaleType);
                        int i6 = MainApp.f1;
                        linearLayout2.addView(myButtonImage, i6, i6);
                        int G = (int) MainUtil.G(context, 20.0f);
                        int G2 = (int) MainUtil.G(context, 12.0f);
                        int G3 = (int) MainUtil.G(context, 44.0f);
                        FrameLayout frameLayout = new FrameLayout(context);
                        linearLayout.addView(frameLayout, -1, -2);
                        ImageView imageView2 = new ImageView(context);
                        imageView2.setScaleType(scaleType);
                        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(G, G);
                        layoutParams5.gravity = 8388627;
                        layoutParams5.setMarginStart(G2);
                        frameLayout.addView(imageView2, layoutParams5);
                        AppCompatTextView appCompatTextView3 = new AppCompatTextView(context, null);
                        appCompatTextView3.setLineSpacing(MainApp.G1, 1.0f);
                        appCompatTextView3.setTextSize(1, 14.0f);
                        LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(-1, -2);
                        layoutParams6.gravity = 8388627;
                        layoutParams6.setMarginStart(G3);
                        frameLayout.addView(appCompatTextView3, layoutParams6);
                        FrameLayout frameLayout2 = new FrameLayout(context);
                        LinearLayout.LayoutParams layoutParams7 = new LinearLayout.LayoutParams(-1, -2);
                        layoutParams7.topMargin = MainApp.F1;
                        linearLayout.addView(frameLayout2, layoutParams7);
                        ImageView imageView3 = new ImageView(context);
                        imageView3.setScaleType(scaleType);
                        LinearLayout.LayoutParams layoutParams8 = new LinearLayout.LayoutParams(G, G);
                        layoutParams8.gravity = 8388627;
                        layoutParams8.setMarginStart(G2);
                        frameLayout2.addView(imageView3, layoutParams8);
                        AppCompatTextView appCompatTextView4 = new AppCompatTextView(context, null);
                        appCompatTextView4.setLineSpacing(MainApp.G1, 1.0f);
                        appCompatTextView4.setTextSize(1, 14.0f);
                        LinearLayout.LayoutParams layoutParams9 = new LinearLayout.LayoutParams(-1, -2);
                        layoutParams9.gravity = 8388627;
                        layoutParams9.setMarginStart(G3);
                        frameLayout2.addView(appCompatTextView4, layoutParams9);
                        AppCompatTextView appCompatTextView5 = new AppCompatTextView(context, null);
                        appCompatTextView5.setLineSpacing(MainApp.G1, 1.0f);
                        appCompatTextView5.setTextSize(1, 14.0f);
                        LinearLayout.LayoutParams layoutParams10 = new LinearLayout.LayoutParams(-1, -2);
                        layoutParams10.topMargin = (int) MainUtil.G(context, 24.0f);
                        linearLayout.addView(appCompatTextView5, layoutParams10);
                        AppCompatTextView appCompatTextView6 = new AppCompatTextView(context, null);
                        appCompatTextView6.setPadding(MainApp.E1, MainApp.F1, MainApp.E1, MainApp.F1);
                        appCompatTextView6.setLineSpacing(MainApp.G1, 1.0f);
                        appCompatTextView6.setTextSize(1, 14.0f);
                        linearLayout.addView(appCompatTextView6, -2, -2);
                        MyLineText myLineText = new MyLineText(context);
                        myLineText.setGravity(17);
                        myLineText.setTextSize(1, 16.0f);
                        myLineText.setText(R.string.ok);
                        myLineText.setLinePad(MainApp.E1);
                        myLineText.setLineUp(true);
                        q.addView(myLineText, -1, MainApp.g1);
                        dialogGuideArea.e0 = q;
                        dialogGuideArea.f0 = imageView;
                        dialogGuideArea.g0 = i4;
                        dialogGuideArea.h0 = appCompatTextView;
                        dialogGuideArea.i0 = appCompatTextView2;
                        dialogGuideArea.j0 = appCompatTextView5;
                        dialogGuideArea.k0 = appCompatTextView6;
                        dialogGuideArea.l0 = myButtonImage;
                        dialogGuideArea.m0 = imageView2;
                        dialogGuideArea.n0 = appCompatTextView3;
                        dialogGuideArea.o0 = imageView3;
                        dialogGuideArea.p0 = appCompatTextView4;
                        dialogGuideArea.q0 = myLineText;
                        Handler handler2 = dialogGuideArea.i;
                        if (handler2 != null) {
                            handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogGuideArea.2
                                @Override // java.lang.Runnable
                                public final void run() {
                                    Drawable drawable;
                                    final DialogGuideArea dialogGuideArea2 = DialogGuideArea.this;
                                    if (dialogGuideArea2.e0 != null && dialogGuideArea2.a0 != null) {
                                        StringBuilder sb = new StringBuilder();
                                        com.google.android.gms.internal.mlkit_vision_text_common.a.x(dialogGuideArea2.a0, R.string.area_guide_1, sb, "\n");
                                        sb.append(dialogGuideArea2.a0.getString(R.string.area_guide_2));
                                        dialogGuideArea2.h0.setText(sb.toString());
                                        dialogGuideArea2.i0.setText(R.string.area_guide_3);
                                        dialogGuideArea2.n0.setText(R.string.area_guide_4);
                                        dialogGuideArea2.p0.setText(R.string.area_guide_5);
                                        dialogGuideArea2.j0.setText(R.string.area_guide_6);
                                        StringBuilder sb2 = new StringBuilder();
                                        com.google.android.gms.internal.mlkit_vision_text_common.a.x(dialogGuideArea2.a0, R.string.clean_mode, sb2, " > ");
                                        com.google.android.gms.internal.mlkit_vision_text_common.a.x(dialogGuideArea2.a0, R.string.ads_filter, sb2, " > ");
                                        sb2.append(dialogGuideArea2.a0.getString(R.string.user_filter));
                                        if (dialogGuideArea2.d0) {
                                            dialogGuideArea2.k0.setText(MainUtil.u6(sb2.toString()));
                                            MainUtil.q7(dialogGuideArea2.k0);
                                        } else {
                                            dialogGuideArea2.k0.setText(sb2.toString());
                                        }
                                        if (MainApp.K1) {
                                            dialogGuideArea2.f0.setImageResource(R.drawable.outline_wb_incandescent_2_dark_24);
                                            dialogGuideArea2.g0.setTextColor(-328966);
                                            dialogGuideArea2.h0.setTextColor(-328966);
                                            dialogGuideArea2.i0.setTextColor(-328966);
                                            dialogGuideArea2.l0.setImageResource(R.drawable.outline_help_dark_20);
                                            dialogGuideArea2.l0.setBgPreColor(-12632257);
                                            dialogGuideArea2.m0.setImageResource(R.drawable.outline_shadow_add_dark_24);
                                            dialogGuideArea2.o0.setImageResource(R.drawable.outline_shadow_minus_dark_24);
                                            dialogGuideArea2.n0.setTextColor(-328966);
                                            dialogGuideArea2.p0.setTextColor(-328966);
                                            dialogGuideArea2.j0.setTextColor(-328966);
                                            dialogGuideArea2.q0.setBackgroundResource(R.drawable.selector_normal_dark);
                                            dialogGuideArea2.q0.setTextColor(-328966);
                                        } else {
                                            dialogGuideArea2.f0.setImageResource(R.drawable.outline_wb_incandescent_2_black_24);
                                            dialogGuideArea2.g0.setTextColor(-16777216);
                                            dialogGuideArea2.h0.setTextColor(-16777216);
                                            dialogGuideArea2.i0.setTextColor(-16777216);
                                            try {
                                                drawable = dialogGuideArea2.a0.getDrawable(R.drawable.outline_help_black_20);
                                                drawable.setTint(-14784824);
                                            } catch (Exception unused) {
                                                drawable = null;
                                            }
                                            if (drawable != null) {
                                                dialogGuideArea2.l0.setImageDrawable(drawable);
                                            } else {
                                                dialogGuideArea2.l0.setImageResource(R.drawable.outline_help_black_20);
                                            }
                                            dialogGuideArea2.l0.setBgPreColor(553648128);
                                            dialogGuideArea2.m0.setImageResource(R.drawable.outline_shadow_add_black_24);
                                            dialogGuideArea2.o0.setImageResource(R.drawable.outline_shadow_minus_black_24);
                                            dialogGuideArea2.n0.setTextColor(-16777216);
                                            dialogGuideArea2.p0.setTextColor(-16777216);
                                            dialogGuideArea2.j0.setTextColor(-16777216);
                                            dialogGuideArea2.q0.setBackgroundResource(R.drawable.selector_normal);
                                            dialogGuideArea2.q0.setTextColor(-14784824);
                                        }
                                        if (dialogGuideArea2.d0) {
                                            if (MainApp.K1) {
                                                dialogGuideArea2.k0.setBackgroundResource(R.drawable.selector_normal_dark);
                                                dialogGuideArea2.k0.setTextColor(-328966);
                                            } else {
                                                dialogGuideArea2.k0.setBackgroundResource(R.drawable.selector_normal);
                                                dialogGuideArea2.k0.setTextColor(-14784824);
                                            }
                                        } else if (MainApp.K1) {
                                            dialogGuideArea2.k0.setTextColor(-328966);
                                        } else {
                                            dialogGuideArea2.k0.setTextColor(-16777216);
                                        }
                                        if (PrefRead.I) {
                                            dialogGuideArea2.l0.setNoti(true);
                                        }
                                        dialogGuideArea2.l0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogGuideArea.3
                                            @Override // android.view.View.OnClickListener
                                            public final void onClick(View view) {
                                                boolean z = PrefRead.I;
                                                DialogGuideArea dialogGuideArea3 = DialogGuideArea.this;
                                                if (z) {
                                                    PrefRead.I = false;
                                                    PrefSet.d(8, dialogGuideArea3.a0, "mNotiAre2", false);
                                                    MyButtonImage myButtonImage2 = dialogGuideArea3.l0;
                                                    if (myButtonImage2 != null) {
                                                        myButtonImage2.setNoti(false);
                                                    }
                                                }
                                                DialogAreaListener dialogAreaListener2 = dialogGuideArea3.b0;
                                                if (dialogAreaListener2 != null) {
                                                    dialogAreaListener2.c();
                                                }
                                            }
                                        });
                                        if (dialogGuideArea2.d0) {
                                            dialogGuideArea2.k0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogGuideArea.4
                                                @Override // android.view.View.OnClickListener
                                                public final void onClick(View view) {
                                                    DialogAreaListener dialogAreaListener2 = DialogGuideArea.this.b0;
                                                    if (dialogAreaListener2 != null) {
                                                        dialogAreaListener2.b();
                                                    }
                                                }
                                            });
                                        }
                                        dialogGuideArea2.q0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogGuideArea.5
                                            @Override // android.view.View.OnClickListener
                                            public final void onClick(View view) {
                                                DialogGuideArea.this.dismiss();
                                            }
                                        });
                                        dialogGuideArea2.g(dialogGuideArea2.e0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogGuideArea.6
                                            @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                            public final void a(View view) {
                                                DialogGuideArea dialogGuideArea3 = DialogGuideArea.this;
                                                if (dialogGuideArea3.e0 == null) {
                                                    return;
                                                }
                                                dialogGuideArea3.show();
                                            }
                                        });
                                    }
                                }
                            });
                            return;
                        }
                        return;
                    }
                    return;
                }
                if (i2 == 1) {
                    Context context2 = dialogGuideArea.a0;
                    if (context2 != null) {
                        MyDialogLinear q2 = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context2, 1);
                        MyLineFrame myLineFrame2 = new MyLineFrame(context2);
                        myLineFrame2.setLinePad(MainApp.E1);
                        myLineFrame2.setLineDn(true);
                        q2.addView(myLineFrame2, -1, MainApp.g1);
                        ImageView imageView4 = new ImageView(context2);
                        ImageView.ScaleType scaleType2 = ImageView.ScaleType.CENTER_INSIDE;
                        imageView4.setScaleType(scaleType2);
                        int i7 = MainApp.f1;
                        FrameLayout.LayoutParams layoutParams11 = new FrameLayout.LayoutParams(i7, i7);
                        layoutParams11.gravity = 8388627;
                        layoutParams11.setMarginStart(MainApp.E1);
                        myLineFrame2.addView(imageView4, layoutParams11);
                        AppCompatTextView i8 = com.google.android.gms.internal.mlkit_vision_text_common.a.i(context2, null, 2);
                        i8.setEllipsize(TextUtils.TruncateAt.END);
                        i8.setTextSize(1, 16.0f);
                        FrameLayout.LayoutParams d2 = com.google.android.gms.internal.mlkit_vision_text_common.a.d(i8, R.string.tip, -1, -2);
                        d2.gravity = 8388627;
                        d2.setMarginStart((int) MainUtil.G(context2, 64.0f));
                        d2.setMarginEnd(MainApp.E1);
                        myLineFrame2.addView(i8, d2);
                        NestedScrollView m2 = com.google.android.gms.internal.mlkit_vision_text_common.a.m(context2, null, 2);
                        LinearLayout.LayoutParams layoutParams12 = new LinearLayout.LayoutParams(-1, 0);
                        layoutParams12.weight = 1.0f;
                        q2.addView(m2, layoutParams12);
                        LinearLayout linearLayout3 = new LinearLayout(context2);
                        int i9 = MainApp.E1;
                        linearLayout3.setPadding(i9, i9, i9, i9);
                        linearLayout3.setMinimumHeight((int) MainUtil.G(context2, 72.0f));
                        linearLayout3.setOrientation(1);
                        m2.addView(linearLayout3, -1, -2);
                        AppCompatTextView appCompatTextView7 = new AppCompatTextView(context2, null);
                        appCompatTextView7.setLineSpacing(MainApp.G1, 1.0f);
                        appCompatTextView7.setTextSize(1, 14.0f);
                        linearLayout3.addView(appCompatTextView7, -1, -2);
                        int G4 = (int) MainUtil.G(context2, 20.0f);
                        int G5 = (int) MainUtil.G(context2, 12.0f);
                        int G6 = (int) MainUtil.G(context2, 44.0f);
                        int G7 = (int) MainUtil.G(context2, 10.0f);
                        int G8 = (int) MainUtil.G(context2, 160.0f);
                        int G9 = (int) MainUtil.G(context2, 80.0f);
                        int G10 = (int) MainUtil.G(context2, 2.0f);
                        FrameLayout frameLayout3 = new FrameLayout(context2);
                        LinearLayout.LayoutParams layoutParams13 = new LinearLayout.LayoutParams(-1, -2);
                        layoutParams13.topMargin = G4;
                        linearLayout3.addView(frameLayout3, layoutParams13);
                        ImageView imageView5 = new ImageView(context2);
                        imageView5.setScaleType(scaleType2);
                        LinearLayout.LayoutParams layoutParams14 = new LinearLayout.LayoutParams(G4, G4);
                        layoutParams14.gravity = 8388627;
                        layoutParams14.setMarginStart(G5);
                        frameLayout3.addView(imageView5, layoutParams14);
                        AppCompatTextView appCompatTextView8 = new AppCompatTextView(context2, null);
                        appCompatTextView8.setLineSpacing(MainApp.G1, 1.0f);
                        appCompatTextView8.setTextSize(1, 14.0f);
                        LinearLayout.LayoutParams layoutParams15 = new LinearLayout.LayoutParams(-1, -2);
                        layoutParams15.gravity = 8388627;
                        layoutParams15.setMarginStart(G6);
                        frameLayout3.addView(appCompatTextView8, layoutParams15);
                        MyLineFrame myLineFrame3 = new MyLineFrame(context2);
                        float f = G10;
                        myLineFrame3.f(f);
                        LinearLayout.LayoutParams layoutParams16 = new LinearLayout.LayoutParams(G8, G9);
                        layoutParams16.topMargin = G7;
                        layoutParams16.setMarginStart(G6);
                        linearLayout3.addView(myLineFrame3, layoutParams16);
                        MyLineView myLineView = new MyLineView(context2);
                        myLineView.a(f);
                        FrameLayout.LayoutParams layoutParams17 = new FrameLayout.LayoutParams(-1, -1);
                        int i10 = MainApp.F1;
                        layoutParams17.setMargins(i10, i10, i10, i10);
                        myLineFrame3.addView(myLineView, layoutParams17);
                        MyLineView myLineView2 = new MyLineView(context2);
                        myLineView2.a(f);
                        FrameLayout.LayoutParams layoutParams18 = new FrameLayout.LayoutParams(-1, -1);
                        int i11 = MainApp.E1;
                        layoutParams18.setMargins(i11, i11, i11, i11);
                        myLineFrame3.addView(myLineView2, layoutParams18);
                        FrameLayout frameLayout4 = new FrameLayout(context2);
                        LinearLayout.LayoutParams layoutParams19 = new LinearLayout.LayoutParams(-1, -2);
                        layoutParams19.topMargin = G4;
                        linearLayout3.addView(frameLayout4, layoutParams19);
                        ImageView imageView6 = new ImageView(context2);
                        imageView6.setScaleType(scaleType2);
                        LinearLayout.LayoutParams layoutParams20 = new LinearLayout.LayoutParams(G4, G4);
                        layoutParams20.gravity = 8388627;
                        layoutParams20.setMarginStart(G5);
                        frameLayout4.addView(imageView6, layoutParams20);
                        AppCompatTextView appCompatTextView9 = new AppCompatTextView(context2, null);
                        appCompatTextView9.setLineSpacing(MainApp.G1, 1.0f);
                        appCompatTextView9.setTextSize(1, 14.0f);
                        LinearLayout.LayoutParams layoutParams21 = new LinearLayout.LayoutParams(-1, -2);
                        layoutParams21.gravity = 8388627;
                        layoutParams21.setMarginStart(G6);
                        frameLayout4.addView(appCompatTextView9, layoutParams21);
                        MyLineFrame myLineFrame4 = new MyLineFrame(context2);
                        myLineFrame4.f(f);
                        LinearLayout.LayoutParams layoutParams22 = new LinearLayout.LayoutParams(G8, G9);
                        layoutParams22.topMargin = G7;
                        layoutParams22.setMarginStart(G6);
                        linearLayout3.addView(myLineFrame4, layoutParams22);
                        MyLineView myLineView3 = new MyLineView(context2);
                        myLineView3.a(f);
                        FrameLayout.LayoutParams layoutParams23 = new FrameLayout.LayoutParams(-1, -1);
                        int i12 = MainApp.F1;
                        layoutParams23.setMargins(i12, i12, i12, i12);
                        myLineFrame4.addView(myLineView3, layoutParams23);
                        MyLineView myLineView4 = new MyLineView(context2);
                        myLineView4.a(f);
                        FrameLayout.LayoutParams layoutParams24 = new FrameLayout.LayoutParams(-1, -1);
                        int i13 = MainApp.E1;
                        layoutParams24.setMargins(i13, i13, i13, i13);
                        myLineFrame4.addView(myLineView4, layoutParams24);
                        AppCompatTextView appCompatTextView10 = new AppCompatTextView(context2, null);
                        appCompatTextView10.setLineSpacing(MainApp.G1, 1.0f);
                        appCompatTextView10.setTextSize(1, 14.0f);
                        LinearLayout.LayoutParams layoutParams25 = new LinearLayout.LayoutParams(-1, -2);
                        layoutParams25.topMargin = G4;
                        linearLayout3.addView(appCompatTextView10, layoutParams25);
                        MyLineText myLineText2 = new MyLineText(context2);
                        myLineText2.setGravity(17);
                        myLineText2.setTextSize(1, 16.0f);
                        myLineText2.setText(R.string.ok);
                        myLineText2.setLinePad(MainApp.E1);
                        myLineText2.setLineUp(true);
                        q2.addView(myLineText2, -1, MainApp.g1);
                        dialogGuideArea.e0 = q2;
                        dialogGuideArea.f0 = imageView4;
                        dialogGuideArea.g0 = i8;
                        dialogGuideArea.h0 = appCompatTextView7;
                        dialogGuideArea.i0 = appCompatTextView10;
                        dialogGuideArea.m0 = imageView5;
                        dialogGuideArea.n0 = appCompatTextView8;
                        dialogGuideArea.o0 = imageView6;
                        dialogGuideArea.p0 = appCompatTextView9;
                        dialogGuideArea.q0 = myLineText2;
                        myLineFrame3.setLineColor(-769226);
                        myLineView4.setLineColor(-769226);
                        Handler handler3 = dialogGuideArea.i;
                        if (handler3 != null) {
                            handler3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogGuideArea.7
                                @Override // java.lang.Runnable
                                public final void run() {
                                    final DialogGuideArea dialogGuideArea2 = DialogGuideArea.this;
                                    if (dialogGuideArea2.e0 != null && dialogGuideArea2.a0 != null) {
                                        dialogGuideArea2.h0.setText(R.string.area_guide_3);
                                        dialogGuideArea2.n0.setText(R.string.area_guide_4);
                                        dialogGuideArea2.p0.setText(R.string.area_guide_5);
                                        dialogGuideArea2.i0.setText(R.string.area_guide_7);
                                        if (MainApp.K1) {
                                            dialogGuideArea2.f0.setImageResource(R.drawable.outline_wb_incandescent_2_dark_24);
                                            dialogGuideArea2.g0.setTextColor(-328966);
                                            dialogGuideArea2.h0.setTextColor(-328966);
                                            dialogGuideArea2.m0.setImageResource(R.drawable.outline_shadow_add_dark_24);
                                            dialogGuideArea2.o0.setImageResource(R.drawable.outline_shadow_minus_dark_24);
                                            dialogGuideArea2.n0.setTextColor(-328966);
                                            dialogGuideArea2.p0.setTextColor(-328966);
                                            dialogGuideArea2.i0.setTextColor(-328966);
                                            dialogGuideArea2.q0.setBackgroundResource(R.drawable.selector_normal_dark);
                                            dialogGuideArea2.q0.setTextColor(-328966);
                                        } else {
                                            dialogGuideArea2.f0.setImageResource(R.drawable.outline_wb_incandescent_2_black_24);
                                            dialogGuideArea2.g0.setTextColor(-16777216);
                                            dialogGuideArea2.h0.setTextColor(-16777216);
                                            dialogGuideArea2.m0.setImageResource(R.drawable.outline_shadow_add_black_24);
                                            dialogGuideArea2.o0.setImageResource(R.drawable.outline_shadow_minus_black_24);
                                            dialogGuideArea2.n0.setTextColor(-16777216);
                                            dialogGuideArea2.p0.setTextColor(-16777216);
                                            dialogGuideArea2.i0.setTextColor(-16777216);
                                            dialogGuideArea2.q0.setBackgroundResource(R.drawable.selector_normal);
                                            dialogGuideArea2.q0.setTextColor(-14784824);
                                        }
                                        dialogGuideArea2.q0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogGuideArea.8
                                            @Override // android.view.View.OnClickListener
                                            public final void onClick(View view) {
                                                DialogGuideArea.this.dismiss();
                                            }
                                        });
                                        dialogGuideArea2.g(dialogGuideArea2.e0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogGuideArea.9
                                            @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                            public final void a(View view) {
                                                DialogGuideArea dialogGuideArea3 = DialogGuideArea.this;
                                                if (dialogGuideArea3.e0 == null) {
                                                    return;
                                                }
                                                dialogGuideArea3.show();
                                            }
                                        });
                                    }
                                }
                            });
                            return;
                        }
                        return;
                    }
                    return;
                }
                if (i2 == 2) {
                    Context context3 = dialogGuideArea.a0;
                    if (context3 != null) {
                        MyDialogLinear q3 = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context3, 1);
                        MyLineFrame myLineFrame5 = new MyLineFrame(context3);
                        myLineFrame5.setLinePad(MainApp.E1);
                        myLineFrame5.setLineDn(true);
                        q3.addView(myLineFrame5, -1, MainApp.g1);
                        ImageView imageView7 = new ImageView(context3);
                        imageView7.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                        int i14 = MainApp.f1;
                        FrameLayout.LayoutParams layoutParams26 = new FrameLayout.LayoutParams(i14, i14);
                        layoutParams26.gravity = 8388627;
                        layoutParams26.setMarginStart(MainApp.E1);
                        myLineFrame5.addView(imageView7, layoutParams26);
                        AppCompatTextView i15 = com.google.android.gms.internal.mlkit_vision_text_common.a.i(context3, null, 2);
                        i15.setEllipsize(TextUtils.TruncateAt.END);
                        i15.setTextSize(1, 16.0f);
                        FrameLayout.LayoutParams d3 = com.google.android.gms.internal.mlkit_vision_text_common.a.d(i15, R.string.tip, -1, -2);
                        d3.gravity = 8388627;
                        d3.setMarginStart((int) MainUtil.G(context3, 64.0f));
                        d3.setMarginEnd(MainApp.E1);
                        myLineFrame5.addView(i15, d3);
                        NestedScrollView m3 = com.google.android.gms.internal.mlkit_vision_text_common.a.m(context3, null, 2);
                        LinearLayout.LayoutParams layoutParams27 = new LinearLayout.LayoutParams(-1, 0);
                        layoutParams27.weight = 1.0f;
                        q3.addView(m3, layoutParams27);
                        LinearLayout linearLayout4 = new LinearLayout(context3);
                        int G11 = (int) MainUtil.G(context3, 24.0f);
                        int i16 = MainApp.E1;
                        linearLayout4.setPadding(i16, i16, i16, G11);
                        linearLayout4.setMinimumHeight((int) MainUtil.G(context3, 72.0f));
                        linearLayout4.setOrientation(1);
                        m3.addView(linearLayout4, -1, -2);
                        AppCompatTextView appCompatTextView11 = new AppCompatTextView(context3, null);
                        appCompatTextView11.setLineSpacing(MainApp.G1, 1.0f);
                        appCompatTextView11.setTextSize(1, 14.0f);
                        linearLayout4.addView(appCompatTextView11, -1, -2);
                        AppCompatTextView appCompatTextView12 = new AppCompatTextView(context3, null);
                        appCompatTextView12.setLineSpacing(MainApp.G1, 1.0f);
                        appCompatTextView12.setTextSize(1, 14.0f);
                        linearLayout4.addView(appCompatTextView12, -1, -2);
                        AppCompatTextView appCompatTextView13 = new AppCompatTextView(context3, null);
                        appCompatTextView13.setLineSpacing(MainApp.G1, 1.0f);
                        appCompatTextView13.setTextSize(1, 14.0f);
                        linearLayout4.addView(appCompatTextView13, -1, -2);
                        AppCompatTextView appCompatTextView14 = new AppCompatTextView(context3, null);
                        appCompatTextView14.setLineSpacing(MainApp.G1, 1.0f);
                        appCompatTextView14.setTextSize(1, 14.0f);
                        linearLayout4.addView(appCompatTextView14, -1, -2);
                        MyLineText myLineText3 = new MyLineText(context3);
                        myLineText3.setGravity(17);
                        myLineText3.setTextSize(1, 16.0f);
                        myLineText3.setText(R.string.ok);
                        myLineText3.setLinePad(MainApp.E1);
                        myLineText3.setLineUp(true);
                        q3.addView(myLineText3, -1, MainApp.g1);
                        dialogGuideArea.e0 = q3;
                        dialogGuideArea.f0 = imageView7;
                        dialogGuideArea.g0 = i15;
                        dialogGuideArea.h0 = appCompatTextView11;
                        dialogGuideArea.i0 = appCompatTextView12;
                        dialogGuideArea.j0 = appCompatTextView13;
                        dialogGuideArea.k0 = appCompatTextView14;
                        dialogGuideArea.q0 = myLineText3;
                        Handler handler4 = dialogGuideArea.i;
                        if (handler4 != null) {
                            handler4.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogGuideArea.10
                                @Override // java.lang.Runnable
                                public final void run() {
                                    final DialogGuideArea dialogGuideArea2 = DialogGuideArea.this;
                                    if (dialogGuideArea2.e0 != null && dialogGuideArea2.a0 != null) {
                                        StringBuilder sb = new StringBuilder();
                                        com.google.android.gms.internal.mlkit_vision_text_common.a.x(dialogGuideArea2.a0, R.string.area_filter_guide_1, sb, "\n");
                                        com.google.android.gms.internal.mlkit_vision_text_common.a.x(dialogGuideArea2.a0, R.string.area_filter_guide_2, sb, "\n\n");
                                        com.google.android.gms.internal.mlkit_vision_text_common.a.x(dialogGuideArea2.a0, R.string.area_filter_guide_3, sb, "\n");
                                        com.google.android.gms.internal.mlkit_vision_text_common.a.x(dialogGuideArea2.a0, R.string.area_filter_guide_4, sb, "\n\n<Examples>\n");
                                        dialogGuideArea2.h0.setText(sb.toString());
                                        int round = Math.round(MainUtil.G(dialogGuideArea2.a0, 14.0f));
                                        DialogGuideArea.B(dialogGuideArea2.i0, "^ : start with\n😓  div[id=\"ads_unit_123_xyz\"]\n😄  div[id^=\"ads_unit\"]\n", "^", round);
                                        DialogGuideArea.B(dialogGuideArea2.j0, "$ : end with\n😓  div[id=\"123_xyz_ads_unit\"]\n😄  div[id$=\"ads_unit\"]\n", "$", round);
                                        DialogGuideArea.B(dialogGuideArea2.k0, "* : contain\n😓  div[id=\"123_xyz_ads_unit_123_xyz\"]\n😄  div[id*=\"ads_unit\"]\n\nads_unit : characters that do not change\n123_xyz : characters that change frequently", "*", round);
                                        if (MainApp.K1) {
                                            dialogGuideArea2.f0.setImageResource(R.drawable.outline_wb_incandescent_2_dark_24);
                                            dialogGuideArea2.g0.setTextColor(-328966);
                                            dialogGuideArea2.h0.setTextColor(-328966);
                                            dialogGuideArea2.i0.setTextColor(-328966);
                                            dialogGuideArea2.j0.setTextColor(-328966);
                                            dialogGuideArea2.k0.setTextColor(-328966);
                                            dialogGuideArea2.q0.setBackgroundResource(R.drawable.selector_normal_dark);
                                            dialogGuideArea2.q0.setTextColor(-328966);
                                        } else {
                                            dialogGuideArea2.f0.setImageResource(R.drawable.outline_wb_incandescent_2_black_24);
                                            dialogGuideArea2.g0.setTextColor(-16777216);
                                            dialogGuideArea2.h0.setTextColor(-16777216);
                                            dialogGuideArea2.i0.setTextColor(-16777216);
                                            dialogGuideArea2.j0.setTextColor(-16777216);
                                            dialogGuideArea2.k0.setTextColor(-16777216);
                                            dialogGuideArea2.q0.setBackgroundResource(R.drawable.selector_normal);
                                            dialogGuideArea2.q0.setTextColor(-14784824);
                                        }
                                        dialogGuideArea2.q0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogGuideArea.11
                                            @Override // android.view.View.OnClickListener
                                            public final void onClick(View view) {
                                                DialogGuideArea.this.dismiss();
                                            }
                                        });
                                        dialogGuideArea2.g(dialogGuideArea2.e0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogGuideArea.12
                                            @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                            public final void a(View view) {
                                                DialogGuideArea dialogGuideArea3 = DialogGuideArea.this;
                                                if (dialogGuideArea3.e0 == null) {
                                                    return;
                                                }
                                                dialogGuideArea3.show();
                                            }
                                        });
                                    }
                                }
                            });
                            return;
                        }
                        return;
                    }
                    return;
                }
                Context context4 = dialogGuideArea.a0;
                if (context4 != null) {
                    MyDialogLinear q4 = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context4, 1);
                    MyLineFrame myLineFrame6 = new MyLineFrame(context4);
                    myLineFrame6.setLinePad(MainApp.E1);
                    myLineFrame6.setLineDn(true);
                    q4.addView(myLineFrame6, -1, MainApp.g1);
                    ImageView imageView8 = new ImageView(context4);
                    imageView8.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                    int i17 = MainApp.f1;
                    FrameLayout.LayoutParams layoutParams28 = new FrameLayout.LayoutParams(i17, i17);
                    layoutParams28.gravity = 8388627;
                    layoutParams28.setMarginStart(MainApp.E1);
                    myLineFrame6.addView(imageView8, layoutParams28);
                    AppCompatTextView i18 = com.google.android.gms.internal.mlkit_vision_text_common.a.i(context4, null, 2);
                    i18.setEllipsize(TextUtils.TruncateAt.END);
                    i18.setTextSize(1, 16.0f);
                    FrameLayout.LayoutParams d4 = com.google.android.gms.internal.mlkit_vision_text_common.a.d(i18, R.string.tip, -1, -2);
                    d4.gravity = 8388627;
                    d4.setMarginStart((int) MainUtil.G(context4, 64.0f));
                    d4.setMarginEnd(MainApp.E1);
                    myLineFrame6.addView(i18, d4);
                    NestedScrollView m4 = com.google.android.gms.internal.mlkit_vision_text_common.a.m(context4, null, 2);
                    LinearLayout.LayoutParams layoutParams29 = new LinearLayout.LayoutParams(-1, 0);
                    layoutParams29.weight = 1.0f;
                    q4.addView(m4, layoutParams29);
                    LinearLayout linearLayout5 = new LinearLayout(context4);
                    linearLayout5.setMinimumHeight((int) MainUtil.G(context4, 72.0f));
                    linearLayout5.setOrientation(1);
                    m4.addView(linearLayout5, -1, -2);
                    MyRoundLinear myRoundLinear = new MyRoundLinear(context4);
                    int i19 = MainApp.E1;
                    myRoundLinear.setPadding(i19, i19, i19, i19);
                    myRoundLinear.setOrientation(1);
                    linearLayout5.addView(myRoundLinear, -1, -2);
                    AppCompatTextView appCompatTextView15 = new AppCompatTextView(context4, null);
                    appCompatTextView15.setLineSpacing(MainApp.G1, 1.0f);
                    appCompatTextView15.setTextSize(1, 14.0f);
                    myRoundLinear.addView(appCompatTextView15, -1, -2);
                    int G12 = (int) MainUtil.G(context4, 24.0f);
                    int G13 = (int) MainUtil.G(context4, 6.0f);
                    AppCompatTextView appCompatTextView16 = new AppCompatTextView(context4, null);
                    appCompatTextView16.setLineSpacing(MainApp.G1, 1.0f);
                    appCompatTextView16.setTextSize(1, 14.0f);
                    LinearLayout.LayoutParams layoutParams30 = new LinearLayout.LayoutParams(-1, -2);
                    layoutParams30.topMargin = G12;
                    layoutParams30.setMarginStart(MainApp.E1);
                    linearLayout5.addView(appCompatTextView16, layoutParams30);
                    MyRoundLinear myRoundLinear2 = new MyRoundLinear(context4);
                    int i20 = MainApp.E1;
                    myRoundLinear2.setPadding(i20, i20, i20, i20);
                    myRoundLinear2.setOrientation(1);
                    LinearLayout.LayoutParams layoutParams31 = new LinearLayout.LayoutParams(-1, -2);
                    layoutParams31.topMargin = MainApp.F1;
                    linearLayout5.addView(myRoundLinear2, layoutParams31);
                    AppCompatTextView appCompatTextView17 = new AppCompatTextView(context4, null);
                    appCompatTextView17.setLineSpacing(MainApp.G1, 1.0f);
                    appCompatTextView17.setTextSize(1, 14.0f);
                    myRoundLinear2.addView(appCompatTextView17, -1, -2);
                    AppCompatTextView appCompatTextView18 = new AppCompatTextView(context4, null);
                    appCompatTextView18.setLineSpacing(MainApp.G1, 1.0f);
                    appCompatTextView18.setTextSize(1, 14.0f);
                    Typeface typeface = Typeface.DEFAULT;
                    appCompatTextView18.setTypeface(Typeface.create(typeface, 1));
                    LinearLayout.LayoutParams layoutParams32 = new LinearLayout.LayoutParams(-1, -2);
                    layoutParams32.topMargin = G13;
                    myRoundLinear2.addView(appCompatTextView18, layoutParams32);
                    AppCompatTextView appCompatTextView19 = new AppCompatTextView(context4, null);
                    appCompatTextView19.setLineSpacing(MainApp.G1, 1.0f);
                    appCompatTextView19.setTextSize(1, 14.0f);
                    LinearLayout.LayoutParams layoutParams33 = new LinearLayout.LayoutParams(-1, -2);
                    layoutParams33.topMargin = G12;
                    myRoundLinear2.addView(appCompatTextView19, layoutParams33);
                    AppCompatTextView appCompatTextView20 = new AppCompatTextView(context4, null);
                    appCompatTextView20.setLineSpacing(MainApp.G1, 1.0f);
                    appCompatTextView20.setTextSize(1, 14.0f);
                    LinearLayout.LayoutParams layoutParams34 = new LinearLayout.LayoutParams(-1, -2);
                    layoutParams34.topMargin = G12;
                    layoutParams34.setMarginStart(MainApp.E1);
                    linearLayout5.addView(appCompatTextView20, layoutParams34);
                    MyRoundLinear myRoundLinear3 = new MyRoundLinear(context4);
                    int i21 = MainApp.E1;
                    myRoundLinear3.setPadding(i21, i21, i21, G12);
                    myRoundLinear3.setOrientation(1);
                    LinearLayout.LayoutParams layoutParams35 = new LinearLayout.LayoutParams(-1, -2);
                    layoutParams35.topMargin = MainApp.F1;
                    linearLayout5.addView(myRoundLinear3, layoutParams35);
                    AppCompatTextView appCompatTextView21 = new AppCompatTextView(context4, null);
                    appCompatTextView21.setLineSpacing(MainApp.G1, 1.0f);
                    appCompatTextView21.setTextSize(1, 14.0f);
                    myRoundLinear3.addView(appCompatTextView21, -1, -2);
                    AppCompatTextView appCompatTextView22 = new AppCompatTextView(context4, null);
                    appCompatTextView22.setLineSpacing(MainApp.G1, 1.0f);
                    appCompatTextView22.setTextSize(1, 14.0f);
                    appCompatTextView22.setTypeface(Typeface.create(typeface, 1));
                    LinearLayout.LayoutParams layoutParams36 = new LinearLayout.LayoutParams(-1, -2);
                    layoutParams36.topMargin = G13;
                    myRoundLinear3.addView(appCompatTextView22, layoutParams36);
                    AppCompatTextView appCompatTextView23 = new AppCompatTextView(context4, null);
                    appCompatTextView23.setLineSpacing(MainApp.G1, 1.0f);
                    appCompatTextView23.setTextSize(1, 14.0f);
                    LinearLayout.LayoutParams layoutParams37 = new LinearLayout.LayoutParams(-1, -2);
                    layoutParams37.topMargin = G12;
                    myRoundLinear3.addView(appCompatTextView23, layoutParams37);
                    MyLineText myLineText4 = new MyLineText(context4);
                    myLineText4.setGravity(17);
                    myLineText4.setTextSize(1, 16.0f);
                    myLineText4.setText(R.string.ok);
                    myLineText4.setLinePad(MainApp.E1);
                    myLineText4.setLineUp(true);
                    q4.addView(myLineText4, -1, MainApp.g1);
                    dialogGuideArea.e0 = q4;
                    dialogGuideArea.f0 = imageView8;
                    dialogGuideArea.g0 = i18;
                    dialogGuideArea.h0 = appCompatTextView15;
                    dialogGuideArea.i0 = appCompatTextView19;
                    dialogGuideArea.j0 = appCompatTextView23;
                    dialogGuideArea.r0 = m4;
                    dialogGuideArea.s0 = myRoundLinear;
                    dialogGuideArea.t0 = myRoundLinear2;
                    dialogGuideArea.u0 = myRoundLinear3;
                    dialogGuideArea.v0 = appCompatTextView16;
                    dialogGuideArea.w0 = appCompatTextView17;
                    dialogGuideArea.x0 = appCompatTextView18;
                    dialogGuideArea.y0 = appCompatTextView20;
                    dialogGuideArea.z0 = appCompatTextView21;
                    dialogGuideArea.A0 = appCompatTextView22;
                    dialogGuideArea.q0 = myLineText4;
                    Handler handler5 = dialogGuideArea.i;
                    if (handler5 == null) {
                        return;
                    }
                    handler5.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogGuideArea.13
                        @Override // java.lang.Runnable
                        public final void run() {
                            Context context5;
                            final DialogGuideArea dialogGuideArea2 = DialogGuideArea.this;
                            if (dialogGuideArea2.e0 != null && (context5 = dialogGuideArea2.a0) != null) {
                                String string = context5.getString(R.string.block_area);
                                StringBuilder sb = new StringBuilder();
                                com.google.android.gms.internal.mlkit_vision_text_common.a.x(dialogGuideArea2.a0, R.string.area_info_1, sb, "\n");
                                com.google.android.gms.internal.mlkit_vision_text_common.a.x(dialogGuideArea2.a0, R.string.area_info_2, sb, "\n\n");
                                com.google.android.gms.internal.mlkit_vision_text_common.a.x(dialogGuideArea2.a0, R.string.area_info_3, sb, "\n");
                                com.google.android.gms.internal.mlkit_vision_text_common.a.x(dialogGuideArea2.a0, R.string.area_info_4, sb, "\n");
                                sb.append(dialogGuideArea2.a0.getString(R.string.area_info_5));
                                dialogGuideArea2.h0.setText(sb.toString());
                                dialogGuideArea2.v0.setText("😓");
                                dialogGuideArea2.w0.setText(R.string.area_info_6);
                                dialogGuideArea2.x0.setText(R.string.area_info_7);
                                StringBuilder sb2 = new StringBuilder();
                                com.google.android.gms.internal.mlkit_vision_text_common.a.x(dialogGuideArea2.a0, R.string.area_info_8, sb2, "\n");
                                com.google.android.gms.internal.mlkit_vision_text_common.a.x(dialogGuideArea2.a0, R.string.area_info_9, sb2, "\n");
                                sb2.append(dialogGuideArea2.a0.getString(R.string.area_info_10));
                                dialogGuideArea2.i0.setText(sb2.toString());
                                dialogGuideArea2.y0.setText("😄");
                                AppCompatTextView appCompatTextView24 = dialogGuideArea2.z0;
                                Locale locale = Locale.US;
                                appCompatTextView24.setText(String.format(locale, dialogGuideArea2.a0.getString(R.string.area_info_11), string));
                                dialogGuideArea2.A0.setText(R.string.area_info_12);
                                StringBuilder sb3 = new StringBuilder();
                                com.google.android.gms.internal.mlkit_vision_text_common.a.x(dialogGuideArea2.a0, R.string.area_info_13, sb3, "\n");
                                sb3.append(String.format(locale, dialogGuideArea2.a0.getString(R.string.area_info_14), string));
                                sb3.append("\n\n");
                                com.google.android.gms.internal.mlkit_vision_text_common.a.x(dialogGuideArea2.a0, R.string.area_info_15, sb3, "\n");
                                sb3.append(dialogGuideArea2.a0.getString(R.string.area_info_16));
                                dialogGuideArea2.j0.setText(sb3.toString());
                                dialogGuideArea2.s0.c(false, true);
                                dialogGuideArea2.t0.c(true, true);
                                dialogGuideArea2.u0.c(true, false);
                                if (MainApp.K1) {
                                    dialogGuideArea2.r0.setBackgroundColor(-16777216);
                                    dialogGuideArea2.s0.setColor(-14606047);
                                    dialogGuideArea2.t0.setColor(-14606047);
                                    dialogGuideArea2.u0.setColor(-14606047);
                                    dialogGuideArea2.f0.setImageResource(R.drawable.outline_wb_incandescent_2_dark_24);
                                    dialogGuideArea2.g0.setTextColor(-328966);
                                    dialogGuideArea2.h0.setTextColor(-328966);
                                    dialogGuideArea2.v0.setTextColor(-328966);
                                    dialogGuideArea2.w0.setTextColor(-328966);
                                    dialogGuideArea2.x0.setTextColor(-328966);
                                    dialogGuideArea2.i0.setTextColor(-328966);
                                    dialogGuideArea2.y0.setTextColor(-328966);
                                    dialogGuideArea2.z0.setTextColor(-328966);
                                    dialogGuideArea2.A0.setTextColor(-328966);
                                    dialogGuideArea2.j0.setTextColor(-328966);
                                    dialogGuideArea2.q0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogGuideArea2.q0.setTextColor(-328966);
                                } else {
                                    dialogGuideArea2.r0.setBackgroundColor(-460552);
                                    dialogGuideArea2.s0.setColor(-1);
                                    dialogGuideArea2.t0.setColor(-1);
                                    dialogGuideArea2.u0.setColor(-1);
                                    dialogGuideArea2.f0.setImageResource(R.drawable.outline_wb_incandescent_2_black_24);
                                    dialogGuideArea2.g0.setTextColor(-16777216);
                                    dialogGuideArea2.h0.setTextColor(-16777216);
                                    dialogGuideArea2.v0.setTextColor(-16777216);
                                    dialogGuideArea2.w0.setTextColor(-16777216);
                                    dialogGuideArea2.x0.setTextColor(-16777216);
                                    dialogGuideArea2.i0.setTextColor(-16777216);
                                    dialogGuideArea2.y0.setTextColor(-16777216);
                                    dialogGuideArea2.z0.setTextColor(-16777216);
                                    dialogGuideArea2.A0.setTextColor(-16777216);
                                    dialogGuideArea2.j0.setTextColor(-16777216);
                                    dialogGuideArea2.q0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogGuideArea2.q0.setTextColor(-14784824);
                                }
                                dialogGuideArea2.q0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogGuideArea.14
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        DialogGuideArea.this.dismiss();
                                    }
                                });
                                dialogGuideArea2.g(dialogGuideArea2.e0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogGuideArea.15
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view) {
                                        DialogGuideArea dialogGuideArea3 = DialogGuideArea.this;
                                        if (dialogGuideArea3.e0 == null) {
                                            return;
                                        }
                                        dialogGuideArea3.show();
                                    }
                                });
                            }
                        }
                    });
                }
            }
        });
    }

    public static void B(AppCompatTextView appCompatTextView, String str, String str2, int i) {
        int i2;
        if (appCompatTextView != null && !TextUtils.isEmpty(str)) {
            if (TextUtils.isEmpty(str2)) {
                appCompatTextView.setText(str);
                return;
            }
            int indexOf = str.indexOf(str2, 1);
            if (MainApp.K1) {
                i2 = -15108398;
            } else {
                i2 = -4987396;
            }
            SpannableString s6 = MainUtil.s6(str, i2, indexOf, str2, i);
            if (s6 == null) {
                appCompatTextView.setText(str);
            } else {
                appCompatTextView.setText(s6);
            }
        }
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.a0 == null) {
            return;
        }
        MyDialogLinear myDialogLinear = this.e0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.e0 = null;
        }
        MyButtonImage myButtonImage = this.l0;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.l0 = null;
        }
        MyLineText myLineText = this.q0;
        if (myLineText != null) {
            myLineText.u();
            this.q0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.f0 = null;
        this.g0 = null;
        this.h0 = null;
        this.i0 = null;
        this.j0 = null;
        this.k0 = null;
        this.m0 = null;
        this.n0 = null;
        this.o0 = null;
        this.p0 = null;
        this.v0 = null;
        this.w0 = null;
        this.x0 = null;
        this.y0 = null;
        this.z0 = null;
        this.A0 = null;
        super.dismiss();
    }
}
