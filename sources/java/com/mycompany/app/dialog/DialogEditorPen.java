package com.mycompany.app.dialog;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.widget.NestedScrollView;
import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.dialog.DialogEditorText;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefRead;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonCheck;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyCircleView;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyLineFrame;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyPaletteView;

/* loaded from: classes3.dex */
public class DialogEditorPen extends MyDialogBottom {
    public static final int[] w0;
    public Context a0;
    public DialogEditorText.EditorSetListener b0;
    public MyDialogLinear c0;
    public MyCircleView d0;
    public MyCircleView e0;
    public AppCompatTextView f0;
    public SeekBar g0;
    public MyButtonImage h0;
    public MyButtonImage i0;
    public AppCompatTextView j0;
    public SeekBar k0;
    public MyButtonImage l0;
    public MyButtonImage m0;
    public MyButtonCheck[] n0;
    public MyPaletteView o0;
    public MyLineText p0;
    public int q0;
    public int r0;
    public int s0;
    public float t0;
    public boolean u0;
    public boolean v0;

    static {
        int i = R.drawable.outline_check_black_24;
        int i2 = R.drawable.outline_check_white_24;
        w0 = new int[]{i, i2, i2, i, i, i2, i2, i2};
    }

    public DialogEditorPen(Activity activity, DialogEditorText.EditorSetListener editorSetListener) {
        super(activity);
        this.w = 0;
        this.a0 = getContext();
        this.b0 = editorSetListener;
        int i = PrefRead.P;
        if (i < 1 || i > 40) {
            PrefRead.P = 10;
        }
        int i2 = PrefRead.Q;
        if (i2 < 0 || i2 > 90) {
            PrefRead.Q = 0;
        }
        this.q0 = PrefRead.P;
        this.r0 = PrefRead.Q;
        this.s0 = PrefRead.R;
        this.t0 = PrefRead.S;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditorPen.1
            @Override // java.lang.Runnable
            public final void run() {
                final DialogEditorPen dialogEditorPen = DialogEditorPen.this;
                Context context = dialogEditorPen.a0;
                if (context != null) {
                    MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
                    int G = (int) MainUtil.G(context, 72.0f);
                    MyLineFrame myLineFrame = new MyLineFrame(context);
                    myLineFrame.a(MainApp.E1);
                    q.addView(myLineFrame, -1, G);
                    MyCircleView myCircleView = new MyCircleView(context);
                    myLineFrame.addView(myCircleView, G, G);
                    MyCircleView myCircleView2 = new MyCircleView(context);
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, G);
                    layoutParams.setMarginStart((int) MainUtil.G(context, 68.0f));
                    layoutParams.setMarginEnd((int) MainUtil.G(context, 12.0f));
                    myLineFrame.addView(myCircleView2, layoutParams);
                    NestedScrollView m = com.google.android.gms.internal.mlkit_vision_text_common.a.m(context, null, 2);
                    LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, 0);
                    layoutParams2.weight = 1.0f;
                    q.addView(m, layoutParams2);
                    LinearLayout linearLayout = new LinearLayout(context);
                    linearLayout.setPadding(0, MainApp.F1, 0, MainApp.G1);
                    linearLayout.setOrientation(1);
                    m.addView(linearLayout, -1, -2);
                    FrameLayout frameLayout = new FrameLayout(context);
                    linearLayout.addView(frameLayout, -1, -2);
                    AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
                    appCompatTextView.setTextSize(1, 16.0f);
                    appCompatTextView.setTextColor(-1);
                    FrameLayout.LayoutParams d = com.google.android.gms.internal.mlkit_vision_text_common.a.d(appCompatTextView, R.string.color_size, -2, -2);
                    d.setMarginStart(MainApp.E1);
                    frameLayout.addView(appCompatTextView, d);
                    AppCompatTextView C = com.google.android.gms.internal.mlkit_vision_text_common.a.C(context, null, 1, 1, 16.0f);
                    C.setTextColor(-1);
                    C.setMinWidth(MainApp.E1);
                    FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-2, -2);
                    layoutParams3.gravity = 8388613;
                    layoutParams3.setMarginEnd(MainApp.E1);
                    frameLayout.addView(C, layoutParams3);
                    MyLineFrame myLineFrame2 = new MyLineFrame(context);
                    myLineFrame2.a(MainApp.E1);
                    linearLayout.addView(myLineFrame2, -1, MainApp.g1);
                    MyButtonImage myButtonImage = new MyButtonImage(context);
                    ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_INSIDE;
                    myButtonImage.setScaleType(scaleType);
                    myButtonImage.setImageResource(R.drawable.outline_remove_white_24);
                    myButtonImage.setBgPreColor(-1586137739);
                    int i3 = MainApp.g1;
                    myLineFrame2.addView(myButtonImage, i3, i3);
                    SeekBar seekBar = new SeekBar(context);
                    seekBar.setProgressDrawable(MainUtil.S(context, R.drawable.seek_progress_w));
                    seekBar.setThumb(MainUtil.S(context, R.drawable.seek_thumb_w));
                    FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-1, -2);
                    layoutParams4.gravity = 8388627;
                    layoutParams4.setMarginStart(MainApp.g1);
                    layoutParams4.setMarginEnd(MainApp.g1);
                    myLineFrame2.addView(seekBar, layoutParams4);
                    MyButtonImage p = com.google.android.gms.internal.mlkit_vision_text_common.a.p(context, scaleType);
                    p.setImageResource(R.drawable.outline_add_white_24);
                    p.setBgPreColor(-1586137739);
                    int i4 = MainApp.g1;
                    FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(i4, i4);
                    layoutParams5.gravity = 8388613;
                    myLineFrame2.addView(p, layoutParams5);
                    FrameLayout frameLayout2 = new FrameLayout(context);
                    LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(-1, -2);
                    layoutParams6.topMargin = MainApp.F1;
                    linearLayout.addView(frameLayout2, layoutParams6);
                    AppCompatTextView appCompatTextView2 = new AppCompatTextView(context, null);
                    appCompatTextView2.setTextSize(1, 16.0f);
                    appCompatTextView2.setTextColor(-1);
                    FrameLayout.LayoutParams d2 = com.google.android.gms.internal.mlkit_vision_text_common.a.d(appCompatTextView2, R.string.color_alpha, -2, -2);
                    d2.setMarginStart(MainApp.E1);
                    frameLayout2.addView(appCompatTextView2, d2);
                    AppCompatTextView C2 = com.google.android.gms.internal.mlkit_vision_text_common.a.C(context, null, 1, 1, 16.0f);
                    C2.setTextColor(-1);
                    C2.setMinWidth(MainApp.E1);
                    FrameLayout.LayoutParams layoutParams7 = new FrameLayout.LayoutParams(-2, -2);
                    layoutParams7.gravity = 8388613;
                    layoutParams7.setMarginEnd(MainApp.E1);
                    frameLayout2.addView(C2, layoutParams7);
                    MyLineFrame myLineFrame3 = new MyLineFrame(context);
                    myLineFrame3.a(MainApp.E1);
                    linearLayout.addView(myLineFrame3, -1, MainApp.g1);
                    MyButtonImage myButtonImage2 = new MyButtonImage(context);
                    myButtonImage2.setScaleType(scaleType);
                    myButtonImage2.setImageResource(R.drawable.outline_remove_white_24);
                    myButtonImage2.setBgPreColor(-1586137739);
                    int i5 = MainApp.g1;
                    myLineFrame3.addView(myButtonImage2, i5, i5);
                    SeekBar seekBar2 = new SeekBar(context);
                    seekBar2.setProgressDrawable(MainUtil.S(context, R.drawable.seek_progress_w));
                    seekBar2.setThumb(MainUtil.S(context, R.drawable.seek_thumb_w));
                    FrameLayout.LayoutParams layoutParams8 = new FrameLayout.LayoutParams(-1, -2);
                    layoutParams8.gravity = 8388627;
                    layoutParams8.setMarginStart(MainApp.g1);
                    layoutParams8.setMarginEnd(MainApp.g1);
                    myLineFrame3.addView(seekBar2, layoutParams8);
                    MyButtonImage p2 = com.google.android.gms.internal.mlkit_vision_text_common.a.p(context, scaleType);
                    p2.setImageResource(R.drawable.outline_add_white_24);
                    p2.setBgPreColor(-1586137739);
                    int i6 = MainApp.g1;
                    FrameLayout.LayoutParams layoutParams9 = new FrameLayout.LayoutParams(i6, i6);
                    layoutParams9.gravity = 8388613;
                    myLineFrame3.addView(p2, layoutParams9);
                    LinearLayout linearLayout2 = new LinearLayout(context);
                    int i7 = MainApp.E1;
                    linearLayout2.setPadding(i7, 0, i7, 0);
                    linearLayout2.setBaselineAligned(false);
                    linearLayout2.setOrientation(0);
                    LinearLayout.LayoutParams layoutParams10 = new LinearLayout.LayoutParams(-1, -2);
                    layoutParams10.topMargin = MainApp.F1;
                    linearLayout.addView(linearLayout2, layoutParams10);
                    MyButtonCheck myButtonCheck = new MyButtonCheck(context);
                    myButtonCheck.setBgNorRadius(MainApp.E1);
                    int i8 = MainApp.f1;
                    View c2 = com.google.android.gms.internal.mlkit_vision_text_common.a.c(linearLayout2, myButtonCheck, i8, i8, context);
                    LinearLayout.LayoutParams layoutParams11 = new LinearLayout.LayoutParams(0, 0);
                    layoutParams11.weight = 1.0f;
                    MyButtonCheck f = a.f(linearLayout2, c2, layoutParams11, context);
                    f.setBgNorRadius(MainApp.E1);
                    int i9 = MainApp.f1;
                    View c3 = com.google.android.gms.internal.mlkit_vision_text_common.a.c(linearLayout2, f, i9, i9, context);
                    LinearLayout.LayoutParams layoutParams12 = new LinearLayout.LayoutParams(0, 0);
                    layoutParams12.weight = 1.0f;
                    MyButtonCheck f2 = a.f(linearLayout2, c3, layoutParams12, context);
                    f2.setBgNorRadius(MainApp.E1);
                    int i10 = MainApp.f1;
                    View c4 = com.google.android.gms.internal.mlkit_vision_text_common.a.c(linearLayout2, f2, i10, i10, context);
                    LinearLayout.LayoutParams layoutParams13 = new LinearLayout.LayoutParams(0, 0);
                    layoutParams13.weight = 1.0f;
                    MyButtonCheck f3 = a.f(linearLayout2, c4, layoutParams13, context);
                    f3.setBgNorRadius(MainApp.E1);
                    int i11 = MainApp.f1;
                    View c5 = com.google.android.gms.internal.mlkit_vision_text_common.a.c(linearLayout2, f3, i11, i11, context);
                    LinearLayout.LayoutParams layoutParams14 = new LinearLayout.LayoutParams(0, 0);
                    layoutParams14.weight = 1.0f;
                    MyButtonCheck f4 = a.f(linearLayout2, c5, layoutParams14, context);
                    f4.setBgNorRadius(MainApp.E1);
                    int i12 = MainApp.f1;
                    View c6 = com.google.android.gms.internal.mlkit_vision_text_common.a.c(linearLayout2, f4, i12, i12, context);
                    LinearLayout.LayoutParams layoutParams15 = new LinearLayout.LayoutParams(0, 0);
                    layoutParams15.weight = 1.0f;
                    MyButtonCheck f5 = a.f(linearLayout2, c6, layoutParams15, context);
                    f5.setBgNorRadius(MainApp.E1);
                    int i13 = MainApp.f1;
                    View c7 = com.google.android.gms.internal.mlkit_vision_text_common.a.c(linearLayout2, f5, i13, i13, context);
                    LinearLayout.LayoutParams layoutParams16 = new LinearLayout.LayoutParams(0, 0);
                    layoutParams16.weight = 1.0f;
                    MyButtonCheck f6 = a.f(linearLayout2, c7, layoutParams16, context);
                    f6.setBgNorRadius(MainApp.E1);
                    int i14 = MainApp.f1;
                    View c8 = com.google.android.gms.internal.mlkit_vision_text_common.a.c(linearLayout2, f6, i14, i14, context);
                    LinearLayout.LayoutParams layoutParams17 = new LinearLayout.LayoutParams(0, 0);
                    layoutParams17.weight = 1.0f;
                    MyButtonCheck f7 = a.f(linearLayout2, c8, layoutParams17, context);
                    f7.setBgNorRadius(MainApp.E1);
                    int i15 = MainApp.f1;
                    linearLayout2.addView(f7, i15, i15);
                    MyPaletteView myPaletteView = new MyPaletteView(context);
                    LinearLayout.LayoutParams layoutParams18 = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams18.gravity = 1;
                    layoutParams18.topMargin = MainApp.G1;
                    linearLayout.addView(myPaletteView, layoutParams18);
                    MyLineText myLineText = new MyLineText(context);
                    myLineText.setGravity(17);
                    myLineText.setTextSize(1, 16.0f);
                    myLineText.setTextColor(-1);
                    myLineText.setText(R.string.apply);
                    myLineText.setBackgroundResource(R.drawable.selector_view);
                    myLineText.setLinePad(MainApp.E1);
                    myLineText.setLineUp(true);
                    q.addView(myLineText, -1, MainApp.g1);
                    dialogEditorPen.c0 = q;
                    dialogEditorPen.d0 = myCircleView;
                    dialogEditorPen.e0 = myCircleView2;
                    dialogEditorPen.f0 = C;
                    dialogEditorPen.g0 = seekBar;
                    dialogEditorPen.h0 = myButtonImage;
                    dialogEditorPen.i0 = p;
                    dialogEditorPen.j0 = C2;
                    dialogEditorPen.k0 = seekBar2;
                    dialogEditorPen.l0 = myButtonImage2;
                    dialogEditorPen.m0 = p2;
                    dialogEditorPen.o0 = myPaletteView;
                    dialogEditorPen.p0 = myLineText;
                    MyButtonCheck[] myButtonCheckArr = new MyButtonCheck[MainConst.o.length];
                    dialogEditorPen.n0 = myButtonCheckArr;
                    myButtonCheckArr[0] = myButtonCheck;
                    myButtonCheckArr[1] = f;
                    myButtonCheckArr[2] = f2;
                    myButtonCheckArr[3] = f3;
                    myButtonCheckArr[4] = f4;
                    myButtonCheckArr[5] = f5;
                    myButtonCheckArr[6] = f6;
                    myButtonCheckArr[7] = f7;
                    Handler handler2 = dialogEditorPen.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditorPen.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            final DialogEditorPen dialogEditorPen2 = DialogEditorPen.this;
                            MyDialogLinear myDialogLinear = dialogEditorPen2.c0;
                            if (myDialogLinear != null && dialogEditorPen2.a0 != null) {
                                myDialogLinear.setBackgroundColor(-1593835520);
                                dialogEditorPen2.g0.setSplitTrack(false);
                                dialogEditorPen2.k0.setSplitTrack(false);
                                dialogEditorPen2.d0.a(dialogEditorPen2.s0, dialogEditorPen2.r0, 40, false);
                                dialogEditorPen2.e0.a(dialogEditorPen2.s0, dialogEditorPen2.r0, dialogEditorPen2.q0, true);
                                com.google.android.gms.internal.mlkit_vision_text_common.a.B(new StringBuilder(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), dialogEditorPen2.q0, dialogEditorPen2.f0);
                                dialogEditorPen2.g0.setMax(39);
                                dialogEditorPen2.g0.setProgress(dialogEditorPen2.q0 - 1);
                                dialogEditorPen2.g0.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.mycompany.app.dialog.DialogEditorPen.3
                                    @Override // android.widget.SeekBar.OnSeekBarChangeListener
                                    public final void onProgressChanged(SeekBar seekBar3, int i16, boolean z) {
                                        DialogEditorPen.C(DialogEditorPen.this, seekBar3.getProgress());
                                    }

                                    @Override // android.widget.SeekBar.OnSeekBarChangeListener
                                    public final void onStartTrackingTouch(SeekBar seekBar3) {
                                        DialogEditorPen.C(DialogEditorPen.this, seekBar3.getProgress());
                                    }

                                    @Override // android.widget.SeekBar.OnSeekBarChangeListener
                                    public final void onStopTrackingTouch(SeekBar seekBar3) {
                                        DialogEditorPen.C(DialogEditorPen.this, seekBar3.getProgress());
                                    }
                                });
                                dialogEditorPen2.h0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogEditorPen.4
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        int progress;
                                        DialogEditorPen dialogEditorPen3 = DialogEditorPen.this;
                                        if (dialogEditorPen3.g0 == null || r0.getProgress() - 1 < 0) {
                                            return;
                                        }
                                        dialogEditorPen3.g0.setProgress(progress);
                                    }
                                });
                                dialogEditorPen2.i0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogEditorPen.5
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        int progress;
                                        DialogEditorPen dialogEditorPen3 = DialogEditorPen.this;
                                        SeekBar seekBar3 = dialogEditorPen3.g0;
                                        if (seekBar3 == null || (progress = seekBar3.getProgress() + 1) > dialogEditorPen3.g0.getMax()) {
                                            return;
                                        }
                                        dialogEditorPen3.g0.setProgress(progress);
                                    }
                                });
                                a.t(new StringBuilder(), dialogEditorPen2.r0, "%", dialogEditorPen2.j0);
                                dialogEditorPen2.k0.setMax(90);
                                dialogEditorPen2.k0.setProgress(dialogEditorPen2.r0);
                                dialogEditorPen2.k0.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.mycompany.app.dialog.DialogEditorPen.6
                                    @Override // android.widget.SeekBar.OnSeekBarChangeListener
                                    public final void onProgressChanged(SeekBar seekBar3, int i16, boolean z) {
                                        DialogEditorPen.B(DialogEditorPen.this, seekBar3.getProgress());
                                    }

                                    @Override // android.widget.SeekBar.OnSeekBarChangeListener
                                    public final void onStartTrackingTouch(SeekBar seekBar3) {
                                        DialogEditorPen.B(DialogEditorPen.this, seekBar3.getProgress());
                                    }

                                    @Override // android.widget.SeekBar.OnSeekBarChangeListener
                                    public final void onStopTrackingTouch(SeekBar seekBar3) {
                                        DialogEditorPen.B(DialogEditorPen.this, seekBar3.getProgress());
                                    }
                                });
                                dialogEditorPen2.l0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogEditorPen.7
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        int progress;
                                        DialogEditorPen dialogEditorPen3 = DialogEditorPen.this;
                                        if (dialogEditorPen3.k0 == null || r0.getProgress() - 1 < 0) {
                                            return;
                                        }
                                        dialogEditorPen3.k0.setProgress(progress);
                                    }
                                });
                                dialogEditorPen2.m0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogEditorPen.8
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        int progress;
                                        DialogEditorPen dialogEditorPen3 = DialogEditorPen.this;
                                        SeekBar seekBar3 = dialogEditorPen3.k0;
                                        if (seekBar3 == null || (progress = seekBar3.getProgress() + 1) > dialogEditorPen3.k0.getMax()) {
                                            return;
                                        }
                                        dialogEditorPen3.k0.setProgress(progress);
                                    }
                                });
                                final int length = MainConst.o.length;
                                for (final int i16 = 0; i16 < length; i16++) {
                                    MyButtonCheck myButtonCheck2 = dialogEditorPen2.n0[i16];
                                    int i17 = MainConst.o[i16];
                                    myButtonCheck2.m(i17, i17);
                                    dialogEditorPen2.n0[i16].n(-12632257, MainApp.n1);
                                    dialogEditorPen2.n0[i16].p(DialogEditorPen.w0[i16], 0);
                                    dialogEditorPen2.n0[i16].setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogEditorPen.9
                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view) {
                                            DialogEditorPen dialogEditorPen3 = DialogEditorPen.this;
                                            if (dialogEditorPen3.o0 == null) {
                                                return;
                                            }
                                            int i18 = i16;
                                            if (i18 < 0) {
                                                i18 = 0;
                                            } else {
                                                int i19 = length;
                                                if (i18 > i19 - 1) {
                                                    i18 = i19 - 1;
                                                }
                                            }
                                            dialogEditorPen3.s0 = MainConst.o[i18];
                                            dialogEditorPen3.t0 = MainConst.p[i18];
                                            dialogEditorPen3.D();
                                            dialogEditorPen3.o0.b(dialogEditorPen3.t0, dialogEditorPen3.s0);
                                        }
                                    });
                                }
                                dialogEditorPen2.o0.setListener(new MyPaletteView.PaletteListener() { // from class: com.mycompany.app.dialog.DialogEditorPen.10
                                    @Override // com.mycompany.app.view.MyPaletteView.PaletteListener
                                    public final void a(float f8, int i18) {
                                        DialogEditorPen dialogEditorPen3 = DialogEditorPen.this;
                                        dialogEditorPen3.s0 = i18;
                                        dialogEditorPen3.t0 = f8;
                                        dialogEditorPen3.D();
                                    }
                                });
                                dialogEditorPen2.p0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogEditorPen.11
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        int i18 = PrefRead.P;
                                        DialogEditorPen dialogEditorPen3 = DialogEditorPen.this;
                                        if (i18 != dialogEditorPen3.q0 || PrefRead.Q != dialogEditorPen3.r0 || PrefRead.R != dialogEditorPen3.s0 || Float.compare(PrefRead.S, dialogEditorPen3.t0) != 0) {
                                            PrefRead.P = dialogEditorPen3.q0;
                                            PrefRead.Q = dialogEditorPen3.r0;
                                            PrefRead.R = dialogEditorPen3.s0;
                                            PrefRead.S = dialogEditorPen3.t0;
                                            PrefRead r = PrefRead.r(dialogEditorPen3.a0, false);
                                            r.n(PrefRead.P, "mPenSize");
                                            r.n(PrefRead.Q, "mPenAlpha");
                                            r.n(PrefRead.R, "mPenColor");
                                            r.m("mPenPos", PrefRead.S);
                                            r.a();
                                        }
                                        DialogEditorText.EditorSetListener editorSetListener2 = dialogEditorPen3.b0;
                                        if (editorSetListener2 != null) {
                                            editorSetListener2.a(0, null);
                                        }
                                        dialogEditorPen3.dismiss();
                                    }
                                });
                                dialogEditorPen2.D();
                                dialogEditorPen2.o0.setBorder(-12632257);
                                dialogEditorPen2.o0.b(dialogEditorPen2.t0, dialogEditorPen2.s0);
                                dialogEditorPen2.g(dialogEditorPen2.c0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogEditorPen.12
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view) {
                                        DialogEditorPen dialogEditorPen3 = DialogEditorPen.this;
                                        if (dialogEditorPen3.c0 == null) {
                                            return;
                                        }
                                        dialogEditorPen3.show();
                                    }
                                });
                            }
                        }
                    });
                }
            }
        });
    }

    public static void B(DialogEditorPen dialogEditorPen, final int i) {
        if (dialogEditorPen.j0 == null || dialogEditorPen.r0 == i || dialogEditorPen.v0) {
            return;
        }
        dialogEditorPen.v0 = true;
        dialogEditorPen.r0 = i;
        dialogEditorPen.d0.b(dialogEditorPen.s0, i);
        dialogEditorPen.e0.b(dialogEditorPen.s0, dialogEditorPen.r0);
        a.t(new StringBuilder(), dialogEditorPen.r0, "%", dialogEditorPen.j0);
        dialogEditorPen.j0.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditorPen.14
            @Override // java.lang.Runnable
            public final void run() {
                DialogEditorPen dialogEditorPen2 = DialogEditorPen.this;
                dialogEditorPen2.v0 = false;
                DialogEditorPen.B(dialogEditorPen2, i);
            }
        });
    }

    public static void C(DialogEditorPen dialogEditorPen, final int i) {
        int i2;
        if (dialogEditorPen.f0 == null || dialogEditorPen.q0 == (i2 = i + 1) || dialogEditorPen.u0) {
            return;
        }
        dialogEditorPen.u0 = true;
        dialogEditorPen.q0 = i2;
        dialogEditorPen.e0.setSize(i2);
        com.google.android.gms.internal.mlkit_vision_text_common.a.B(new StringBuilder(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), dialogEditorPen.q0, dialogEditorPen.f0);
        dialogEditorPen.f0.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditorPen.13
            @Override // java.lang.Runnable
            public final void run() {
                DialogEditorPen dialogEditorPen2 = DialogEditorPen.this;
                dialogEditorPen2.u0 = false;
                DialogEditorPen.C(dialogEditorPen2, i);
            }
        });
    }

    public final void D() {
        MyCircleView myCircleView = this.d0;
        if (myCircleView != null && this.n0 != null) {
            myCircleView.b(this.s0, this.r0);
            this.e0.b(this.s0, this.r0);
            int length = MainConst.o.length;
            for (int i = 0; i < length; i++) {
                if (this.s0 == MainConst.o[i]) {
                    this.n0[i].q(true, true);
                } else {
                    this.n0[i].q(false, true);
                }
            }
        }
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.a0 == null) {
            return;
        }
        MyDialogLinear myDialogLinear = this.c0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.c0 = null;
        }
        MyCircleView myCircleView = this.d0;
        if (myCircleView != null) {
            myCircleView.f18610c = false;
            myCircleView.f = null;
            myCircleView.k = null;
            myCircleView.l = null;
            myCircleView.m = null;
            myCircleView.n = null;
            this.d0 = null;
        }
        MyCircleView myCircleView2 = this.e0;
        if (myCircleView2 != null) {
            myCircleView2.f18610c = false;
            myCircleView2.f = null;
            myCircleView2.k = null;
            myCircleView2.l = null;
            myCircleView2.m = null;
            myCircleView2.n = null;
            this.e0 = null;
        }
        MyButtonImage myButtonImage = this.h0;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.h0 = null;
        }
        MyButtonImage myButtonImage2 = this.i0;
        if (myButtonImage2 != null) {
            myButtonImage2.j();
            this.i0 = null;
        }
        MyButtonImage myButtonImage3 = this.l0;
        if (myButtonImage3 != null) {
            myButtonImage3.j();
            this.l0 = null;
        }
        MyButtonImage myButtonImage4 = this.m0;
        if (myButtonImage4 != null) {
            myButtonImage4.j();
            this.m0 = null;
        }
        MyButtonCheck[] myButtonCheckArr = this.n0;
        if (myButtonCheckArr != null) {
            int length = myButtonCheckArr.length;
            for (int i = 0; i < length; i++) {
                MyButtonCheck myButtonCheck = this.n0[i];
                if (myButtonCheck != null) {
                    myButtonCheck.l();
                    this.n0[i] = null;
                }
            }
            this.n0 = null;
        }
        MyPaletteView myPaletteView = this.o0;
        if (myPaletteView != null) {
            myPaletteView.a();
            this.o0 = null;
        }
        MyLineText myLineText = this.p0;
        if (myLineText != null) {
            myLineText.u();
            this.p0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.f0 = null;
        this.g0 = null;
        this.j0 = null;
        this.k0 = null;
        super.dismiss();
    }
}
