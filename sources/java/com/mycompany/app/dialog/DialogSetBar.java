package com.mycompany.app.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import androidx.appcompat.widget.AppCompatTextView;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.google.api.client.http.HttpStatusCodes;
import com.mycompany.app.dialog.DialogSetFull;
import com.mycompany.app.image.ImageSizeListener;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefEditor;
import com.mycompany.app.pref.PrefPdf;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.GlideApp;
import com.mycompany.app.view.GlideRequests;
import com.mycompany.app.view.MyBarView;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyLineFrame;
import com.mycompany.app.view.MyLineLinear;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyRoundImage;

/* loaded from: classes3.dex */
public class DialogSetBar extends MyDialogBottom {
    public static final /* synthetic */ int K0 = 0;
    public int A0;
    public boolean B0;
    public boolean C0;
    public boolean D0;
    public boolean E0;
    public GlideRequests F0;
    public Drawable G0;
    public float H0;
    public final Runnable I0;
    public final Runnable J0;
    public final int a0;
    public final int b0;
    public final int c0;
    public MainActivity d0;
    public Context e0;
    public final int f0;
    public int[] g0;
    public MyDialogLinear h0;
    public FrameLayout i0;
    public MyRoundImage j0;
    public MyBarView k0;
    public FrameLayout.LayoutParams l0;
    public AppCompatTextView m0;
    public AppCompatTextView n0;
    public SeekBar o0;
    public MyButtonImage p0;
    public MyButtonImage q0;
    public AppCompatTextView r0;
    public AppCompatTextView s0;
    public SeekBar t0;
    public MyButtonImage u0;
    public MyButtonImage v0;
    public AppCompatTextView w0;
    public MyLineText x0;
    public DialogSetMsg y0;
    public int z0;

    public DialogSetBar(MainActivity mainActivity, int i, int[] iArr) {
        super(mainActivity);
        this.I0 = new Runnable() { // from class: com.mycompany.app.dialog.DialogSetBar.14
            @Override // java.lang.Runnable
            public final void run() {
                DialogSetBar dialogSetBar = DialogSetBar.this;
                SeekBar seekBar = dialogSetBar.o0;
                if (seekBar != null) {
                    dialogSetBar.C0 = false;
                    int progress = seekBar.getProgress();
                    dialogSetBar.getClass();
                    if (dialogSetBar.z0 != progress) {
                        DialogSetBar.B(dialogSetBar, progress);
                    }
                }
            }
        };
        this.J0 = new Runnable() { // from class: com.mycompany.app.dialog.DialogSetBar.15
            @Override // java.lang.Runnable
            public final void run() {
                DialogSetBar dialogSetBar = DialogSetBar.this;
                SeekBar seekBar = dialogSetBar.t0;
                if (seekBar != null) {
                    dialogSetBar.E0 = false;
                    int progress = seekBar.getProgress() + dialogSetBar.b0;
                    if (dialogSetBar.A0 != progress) {
                        DialogSetBar.C(dialogSetBar, progress);
                    }
                }
            }
        };
        this.d0 = mainActivity;
        this.e0 = getContext();
        this.f0 = i;
        this.g0 = iArr;
        this.a0 = 90;
        this.b0 = 50;
        this.c0 = HttpStatusCodes.STATUS_CODE_OK;
        if (i == 0) {
            this.A0 = Math.round((PrefPdf.y * 100.0f) / MainApp.Y0);
        } else if (i == 1) {
            this.A0 = Math.round((PrefPdf.A * 100.0f) / MainApp.Y0);
        } else {
            this.z0 = PrefEditor.I;
            this.A0 = Math.round((PrefPdf.B * 100.0f) / MainApp.Y0);
            int i2 = this.z0;
            if (i2 < 0) {
                this.z0 = 0;
            } else if (i2 > 90) {
                this.z0 = 90;
            }
        }
        int i3 = this.A0;
        if (i3 < 50) {
            this.A0 = 50;
        } else if (i3 > 200) {
            this.A0 = HttpStatusCodes.STATUS_CODE_OK;
        }
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetBar.1
            @Override // java.lang.Runnable
            public final void run() {
                AppCompatTextView appCompatTextView;
                MyButtonImage myButtonImage;
                AppCompatTextView appCompatTextView2;
                MyButtonImage myButtonImage2;
                SeekBar seekBar;
                final DialogSetBar dialogSetBar = DialogSetBar.this;
                Context context = dialogSetBar.e0;
                if (context != null) {
                    MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
                    FrameLayout frameLayout = new FrameLayout(context);
                    q.addView(frameLayout, -1, -2);
                    MyRoundImage myRoundImage = new MyRoundImage(context);
                    myRoundImage.setScaleType(ImageView.ScaleType.FIT_XY);
                    frameLayout.addView(myRoundImage, -1, -2);
                    int G = (int) MainUtil.G(context, 12.0f);
                    if (dialogSetBar.f0 == 2) {
                        FrameLayout frameLayout2 = new FrameLayout(context);
                        frameLayout2.setPadding(0, G, 0, 0);
                        q.addView(frameLayout2, -1, -2);
                        appCompatTextView2 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
                        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
                        layoutParams.setMarginStart(MainApp.E1);
                        frameLayout2.addView(appCompatTextView2, layoutParams);
                        appCompatTextView = com.google.android.gms.internal.mlkit_vision_text_common.a.C(context, null, 1, 1, 16.0f);
                        appCompatTextView.setMinWidth(MainApp.E1);
                        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -2);
                        layoutParams2.gravity = 8388613;
                        layoutParams2.setMarginEnd(MainApp.E1);
                        frameLayout2.addView(appCompatTextView, layoutParams2);
                        MyLineFrame myLineFrame = new MyLineFrame(context);
                        myLineFrame.a(MainApp.E1);
                        q.addView(myLineFrame, -1, MainApp.g1);
                        myButtonImage = new MyButtonImage(context);
                        ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_INSIDE;
                        myButtonImage.setScaleType(scaleType);
                        int i4 = MainApp.g1;
                        myLineFrame.addView(myButtonImage, i4, i4);
                        seekBar = new SeekBar(context);
                        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, -2);
                        layoutParams3.gravity = 8388627;
                        layoutParams3.setMarginStart(MainApp.g1);
                        layoutParams3.setMarginEnd(MainApp.g1);
                        myLineFrame.addView(seekBar, layoutParams3);
                        myButtonImage2 = com.google.android.gms.internal.mlkit_vision_text_common.a.p(context, scaleType);
                        int i5 = MainApp.g1;
                        FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(i5, i5);
                        layoutParams4.gravity = 8388613;
                        myLineFrame.addView(myButtonImage2, layoutParams4);
                    } else {
                        appCompatTextView = null;
                        myButtonImage = null;
                        appCompatTextView2 = null;
                        myButtonImage2 = null;
                        seekBar = null;
                    }
                    FrameLayout frameLayout3 = new FrameLayout(context);
                    frameLayout3.setPadding(0, G, 0, 0);
                    q.addView(frameLayout3, -1, -2);
                    AppCompatTextView j = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
                    FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(-2, -2);
                    layoutParams5.setMarginStart(MainApp.E1);
                    frameLayout3.addView(j, layoutParams5);
                    AppCompatTextView C = com.google.android.gms.internal.mlkit_vision_text_common.a.C(context, null, 1, 1, 16.0f);
                    C.setMinWidth(MainApp.E1);
                    FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(-2, -2);
                    layoutParams6.gravity = 8388613;
                    layoutParams6.setMarginEnd(MainApp.E1);
                    frameLayout3.addView(C, layoutParams6);
                    FrameLayout frameLayout4 = new FrameLayout(context);
                    q.addView(frameLayout4, -1, MainApp.g1);
                    MyButtonImage myButtonImage3 = new MyButtonImage(context);
                    ImageView.ScaleType scaleType2 = ImageView.ScaleType.CENTER_INSIDE;
                    myButtonImage3.setScaleType(scaleType2);
                    int i6 = MainApp.g1;
                    frameLayout4.addView(myButtonImage3, i6, i6);
                    SeekBar seekBar2 = new SeekBar(context);
                    FrameLayout.LayoutParams layoutParams7 = new FrameLayout.LayoutParams(-1, -2);
                    layoutParams7.gravity = 8388627;
                    layoutParams7.setMarginStart(MainApp.g1);
                    layoutParams7.setMarginEnd(MainApp.g1);
                    frameLayout4.addView(seekBar2, layoutParams7);
                    MyButtonImage p = com.google.android.gms.internal.mlkit_vision_text_common.a.p(context, scaleType2);
                    int i7 = MainApp.g1;
                    FrameLayout.LayoutParams layoutParams8 = new FrameLayout.LayoutParams(i7, i7);
                    layoutParams8.gravity = 8388613;
                    frameLayout4.addView(p, layoutParams8);
                    MyLineLinear myLineLinear = new MyLineLinear(context);
                    myLineLinear.setBaselineAligned(false);
                    myLineLinear.setOrientation(0);
                    myLineLinear.setLinePad(MainApp.E1);
                    myLineLinear.setLineUp(true);
                    MyLineText s = com.google.android.gms.internal.mlkit_vision_text_common.a.s(q, myLineLinear, -1, MainApp.g1, context);
                    s.setGravity(17);
                    s.setTextSize(1, 16.0f);
                    LinearLayout.LayoutParams f = com.google.android.gms.internal.mlkit_vision_text_common.a.f(s, R.string.reset, context, 0, -1);
                    f.weight = 1.0f;
                    AppCompatTextView l = com.google.android.gms.internal.mlkit_vision_text_common.a.l(myLineLinear, s, f, context, null);
                    l.setGravity(17);
                    l.setTextSize(1, 16.0f);
                    LinearLayout.LayoutParams e = com.google.android.gms.internal.mlkit_vision_text_common.a.e(l, R.string.apply, 0, -1);
                    e.weight = 1.0f;
                    myLineLinear.addView(l, e);
                    dialogSetBar.h0 = q;
                    dialogSetBar.i0 = frameLayout;
                    dialogSetBar.j0 = myRoundImage;
                    dialogSetBar.m0 = appCompatTextView2;
                    dialogSetBar.n0 = appCompatTextView;
                    dialogSetBar.o0 = seekBar;
                    dialogSetBar.p0 = myButtonImage;
                    dialogSetBar.q0 = myButtonImage2;
                    dialogSetBar.r0 = j;
                    dialogSetBar.s0 = C;
                    dialogSetBar.t0 = seekBar2;
                    dialogSetBar.u0 = myButtonImage3;
                    dialogSetBar.v0 = p;
                    dialogSetBar.w0 = l;
                    dialogSetBar.x0 = s;
                    Handler handler2 = dialogSetBar.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetBar.2
                        /* JADX WARN: Type inference failed for: r11v0, types: [android.widget.LinearLayout, com.mycompany.app.view.MyBarView] */
                        @Override // java.lang.Runnable
                        public final void run() {
                            int i8;
                            int i9;
                            int i10;
                            final DialogSetBar dialogSetBar2 = DialogSetBar.this;
                            int i11 = dialogSetBar2.b0;
                            int i12 = dialogSetBar2.f0;
                            if (dialogSetBar2.h0 != null && dialogSetBar2.e0 != null) {
                                if (MainApp.K1) {
                                    dialogSetBar2.r0.setTextColor(-328966);
                                    dialogSetBar2.s0.setTextColor(-328966);
                                    dialogSetBar2.u0.setImageResource(R.drawable.outline_remove_dark_24);
                                    dialogSetBar2.v0.setImageResource(R.drawable.outline_add_dark_24);
                                    dialogSetBar2.t0.setProgressDrawable(MainUtil.S(dialogSetBar2.e0, R.drawable.seek_progress_a));
                                    dialogSetBar2.t0.setThumb(MainUtil.S(dialogSetBar2.e0, R.drawable.seek_thumb_a));
                                    dialogSetBar2.w0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogSetBar2.x0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogSetBar2.w0.setTextColor(-328966);
                                    dialogSetBar2.x0.setTextColor(-328966);
                                    dialogSetBar2.u0.setBgPreColor(-12632257);
                                    dialogSetBar2.v0.setBgPreColor(-12632257);
                                } else {
                                    dialogSetBar2.r0.setTextColor(-16777216);
                                    dialogSetBar2.s0.setTextColor(-16777216);
                                    dialogSetBar2.u0.setImageResource(R.drawable.outline_remove_black_24);
                                    dialogSetBar2.v0.setImageResource(R.drawable.outline_add_black_24);
                                    dialogSetBar2.t0.setProgressDrawable(MainUtil.S(dialogSetBar2.e0, R.drawable.seek_progress_a));
                                    dialogSetBar2.t0.setThumb(MainUtil.S(dialogSetBar2.e0, R.drawable.seek_thumb_a));
                                    dialogSetBar2.w0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogSetBar2.x0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogSetBar2.w0.setTextColor(-14784824);
                                    dialogSetBar2.x0.setTextColor(-16777216);
                                    dialogSetBar2.u0.setBgPreColor(-2039584);
                                    dialogSetBar2.v0.setBgPreColor(-2039584);
                                }
                                FrameLayout frameLayout5 = dialogSetBar2.i0;
                                if (dialogSetBar2.p()) {
                                    i8 = 8;
                                } else {
                                    i8 = 0;
                                }
                                frameLayout5.setVisibility(i8);
                                MyRoundImage myRoundImage2 = dialogSetBar2.j0;
                                if (myRoundImage2 != null) {
                                    myRoundImage2.setListener(new ImageSizeListener() { // from class: com.mycompany.app.dialog.DialogSetBar.12
                                        @Override // com.mycompany.app.image.ImageSizeListener
                                        public final void a(View view, int i13, int i14) {
                                            DialogSetBar dialogSetBar3 = DialogSetBar.this;
                                            if (dialogSetBar3.j0 != null) {
                                                int round = Math.round(i13 * dialogSetBar3.H0);
                                                ViewGroup.LayoutParams layoutParams9 = dialogSetBar3.j0.getLayoutParams();
                                                if (layoutParams9 != null && layoutParams9.height != round) {
                                                    layoutParams9.height = round;
                                                    dialogSetBar3.j0.j();
                                                }
                                            }
                                        }
                                    });
                                    dialogSetBar2.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetBar.13
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            DialogSetBar dialogSetBar3 = DialogSetBar.this;
                                            Drawable S = MainUtil.S(dialogSetBar3.e0, R.drawable.dev_cat);
                                            if (S != null) {
                                                dialogSetBar3.G0 = S;
                                                dialogSetBar3.H0 = S.getIntrinsicHeight() / S.getIntrinsicWidth();
                                                MainActivity mainActivity2 = dialogSetBar3.d0;
                                                if (mainActivity2 != null) {
                                                    if (dialogSetBar3.F0 == null) {
                                                        dialogSetBar3.F0 = GlideApp.a(mainActivity2);
                                                    }
                                                    Handler handler3 = dialogSetBar3.i;
                                                    if (handler3 == null) {
                                                        return;
                                                    }
                                                    handler3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetBar.13.1
                                                        @Override // java.lang.Runnable
                                                        public final void run() {
                                                            DialogSetBar dialogSetBar4 = DialogSetBar.this;
                                                            Drawable drawable = dialogSetBar4.G0;
                                                            dialogSetBar4.G0 = null;
                                                            GlideRequests glideRequests = dialogSetBar4.F0;
                                                            if (glideRequests == null) {
                                                                return;
                                                            }
                                                            ((RequestBuilder) glideRequests.r(drawable).e(DiskCacheStrategy.f2204a)).E(dialogSetBar4.j0);
                                                        }
                                                    });
                                                }
                                            }
                                        }
                                    });
                                }
                                int[] iArr2 = dialogSetBar2.g0;
                                if (iArr2 != null && iArr2.length != 0) {
                                    int s0 = MainUtil.s0(0, false);
                                    ?? linearLayout = new LinearLayout(dialogSetBar2.e0);
                                    dialogSetBar2.k0 = linearLayout;
                                    linearLayout.a(dialogSetBar2.e0, iArr2, null, null, 0, false, 0, 1, false, s0, 0, 0, dialogSetBar2.f0);
                                    if (i12 == 2) {
                                        MyBarView myBarView = dialogSetBar2.k0;
                                        if (MainApp.K1) {
                                            i10 = -16777216;
                                        } else {
                                            i10 = -1;
                                        }
                                        myBarView.setBackgroundColor(PrefEditor.r(i10, dialogSetBar2.z0));
                                    } else {
                                        MyBarView myBarView2 = dialogSetBar2.k0;
                                        if (MainApp.K1) {
                                            i9 = -16777216;
                                        } else {
                                            i9 = -1;
                                        }
                                        myBarView2.setBackgroundColor(i9);
                                    }
                                    int round = Math.round((dialogSetBar2.A0 * MainApp.Y0) / 100.0f);
                                    int round2 = Math.round(MainApp.Y0 / 2.0f);
                                    if (round < round2 || round > (round2 = MainApp.Y0 * 2)) {
                                        round = round2;
                                    }
                                    FrameLayout.LayoutParams layoutParams9 = new FrameLayout.LayoutParams(-1, round, 16);
                                    dialogSetBar2.l0 = layoutParams9;
                                    dialogSetBar2.i0.addView(dialogSetBar2.k0, layoutParams9);
                                }
                                if (i12 == 2) {
                                    AppCompatTextView appCompatTextView3 = dialogSetBar2.m0;
                                    if (appCompatTextView3 != null) {
                                        if (MainApp.K1) {
                                            appCompatTextView3.setTextColor(-328966);
                                            dialogSetBar2.n0.setTextColor(-328966);
                                            dialogSetBar2.p0.setImageResource(R.drawable.outline_remove_dark_24);
                                            dialogSetBar2.q0.setImageResource(R.drawable.outline_add_dark_24);
                                            dialogSetBar2.o0.setProgressDrawable(MainUtil.S(dialogSetBar2.e0, R.drawable.seek_progress_a));
                                            dialogSetBar2.o0.setThumb(MainUtil.S(dialogSetBar2.e0, R.drawable.seek_thumb_a));
                                            dialogSetBar2.p0.setBgPreColor(-12632257);
                                            dialogSetBar2.q0.setBgPreColor(-12632257);
                                        } else {
                                            appCompatTextView3.setTextColor(-16777216);
                                            dialogSetBar2.n0.setTextColor(-16777216);
                                            dialogSetBar2.p0.setImageResource(R.drawable.outline_remove_black_24);
                                            dialogSetBar2.q0.setImageResource(R.drawable.outline_add_black_24);
                                            dialogSetBar2.o0.setProgressDrawable(MainUtil.S(dialogSetBar2.e0, R.drawable.seek_progress_a));
                                            dialogSetBar2.o0.setThumb(MainUtil.S(dialogSetBar2.e0, R.drawable.seek_thumb_a));
                                            dialogSetBar2.p0.setBgPreColor(-2039584);
                                            dialogSetBar2.q0.setBgPreColor(-2039584);
                                        }
                                        dialogSetBar2.m0.setText(R.string.color_alpha);
                                        a.t(new StringBuilder(), dialogSetBar2.z0, "%", dialogSetBar2.n0);
                                        dialogSetBar2.o0.setSplitTrack(false);
                                        dialogSetBar2.o0.setMax(dialogSetBar2.a0);
                                        dialogSetBar2.o0.setProgress(dialogSetBar2.z0);
                                        dialogSetBar2.o0.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.mycompany.app.dialog.DialogSetBar.3
                                            @Override // android.widget.SeekBar.OnSeekBarChangeListener
                                            public final void onProgressChanged(SeekBar seekBar3, int i13, boolean z) {
                                                int progress = seekBar3.getProgress();
                                                int i14 = DialogSetBar.K0;
                                                DialogSetBar dialogSetBar3 = DialogSetBar.this;
                                                dialogSetBar3.getClass();
                                                DialogSetBar.B(dialogSetBar3, progress);
                                            }

                                            @Override // android.widget.SeekBar.OnSeekBarChangeListener
                                            public final void onStartTrackingTouch(SeekBar seekBar3) {
                                                int progress = seekBar3.getProgress();
                                                int i13 = DialogSetBar.K0;
                                                DialogSetBar dialogSetBar3 = DialogSetBar.this;
                                                dialogSetBar3.getClass();
                                                DialogSetBar.B(dialogSetBar3, progress);
                                                dialogSetBar3.B0 = true;
                                            }

                                            @Override // android.widget.SeekBar.OnSeekBarChangeListener
                                            public final void onStopTrackingTouch(SeekBar seekBar3) {
                                                int progress = seekBar3.getProgress();
                                                int i13 = DialogSetBar.K0;
                                                DialogSetBar dialogSetBar3 = DialogSetBar.this;
                                                dialogSetBar3.getClass();
                                                DialogSetBar.B(dialogSetBar3, progress);
                                                dialogSetBar3.B0 = false;
                                            }
                                        });
                                        dialogSetBar2.p0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetBar.4
                                            @Override // android.view.View.OnClickListener
                                            public final void onClick(View view) {
                                                int progress;
                                                DialogSetBar dialogSetBar3 = DialogSetBar.this;
                                                if (dialogSetBar3.o0 == null || r0.getProgress() - 1 < 0) {
                                                    return;
                                                }
                                                dialogSetBar3.o0.setProgress(progress);
                                            }
                                        });
                                        dialogSetBar2.q0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetBar.5
                                            @Override // android.view.View.OnClickListener
                                            public final void onClick(View view) {
                                                int progress;
                                                DialogSetBar dialogSetBar3 = DialogSetBar.this;
                                                SeekBar seekBar3 = dialogSetBar3.o0;
                                                if (seekBar3 == null || (progress = seekBar3.getProgress() + 1) > dialogSetBar3.o0.getMax()) {
                                                    return;
                                                }
                                                dialogSetBar3.o0.setProgress(progress);
                                            }
                                        });
                                    } else {
                                        return;
                                    }
                                }
                                dialogSetBar2.t0.setSplitTrack(false);
                                dialogSetBar2.t0.setMax(dialogSetBar2.c0 - i11);
                                dialogSetBar2.t0.setProgress(dialogSetBar2.A0 - i11);
                                dialogSetBar2.t0.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.mycompany.app.dialog.DialogSetBar.6
                                    @Override // android.widget.SeekBar.OnSeekBarChangeListener
                                    public final void onProgressChanged(SeekBar seekBar3, int i13, boolean z) {
                                        int progress = seekBar3.getProgress();
                                        DialogSetBar dialogSetBar3 = DialogSetBar.this;
                                        DialogSetBar.C(dialogSetBar3, progress + dialogSetBar3.b0);
                                    }

                                    @Override // android.widget.SeekBar.OnSeekBarChangeListener
                                    public final void onStartTrackingTouch(SeekBar seekBar3) {
                                        int progress = seekBar3.getProgress();
                                        DialogSetBar dialogSetBar3 = DialogSetBar.this;
                                        DialogSetBar.C(dialogSetBar3, progress + dialogSetBar3.b0);
                                        dialogSetBar3.D0 = true;
                                    }

                                    @Override // android.widget.SeekBar.OnSeekBarChangeListener
                                    public final void onStopTrackingTouch(SeekBar seekBar3) {
                                        int progress = seekBar3.getProgress();
                                        DialogSetBar dialogSetBar3 = DialogSetBar.this;
                                        DialogSetBar.C(dialogSetBar3, progress + dialogSetBar3.b0);
                                        dialogSetBar3.D0 = false;
                                    }
                                });
                                dialogSetBar2.r0.setText(R.string.size_height);
                                a.t(new StringBuilder(), dialogSetBar2.A0, "%", dialogSetBar2.s0);
                                dialogSetBar2.u0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetBar.7
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        int progress;
                                        DialogSetBar dialogSetBar3 = DialogSetBar.this;
                                        if (dialogSetBar3.t0 == null || r0.getProgress() - 1 < 0) {
                                            return;
                                        }
                                        dialogSetBar3.t0.setProgress(progress);
                                    }
                                });
                                dialogSetBar2.v0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetBar.8
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        int progress;
                                        DialogSetBar dialogSetBar3 = DialogSetBar.this;
                                        SeekBar seekBar3 = dialogSetBar3.t0;
                                        if (seekBar3 == null || (progress = seekBar3.getProgress() + 1) > dialogSetBar3.t0.getMax()) {
                                            return;
                                        }
                                        dialogSetBar3.t0.setProgress(progress);
                                    }
                                });
                                dialogSetBar2.w0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetBar.9
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        int i13 = DialogSetBar.K0;
                                        DialogSetBar.this.E(true);
                                    }
                                });
                                dialogSetBar2.x0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetBar.10
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        final DialogSetBar dialogSetBar3 = DialogSetBar.this;
                                        if (dialogSetBar3.d0 == null || dialogSetBar3.y0 != null) {
                                            return;
                                        }
                                        dialogSetBar3.D();
                                        DialogSetMsg dialogSetMsg = new DialogSetMsg(dialogSetBar3.d0, R.string.reset_setting, R.string.reset, new DialogSetFull.DialogApplyListener() { // from class: com.mycompany.app.dialog.DialogSetBar.16
                                            @Override // com.mycompany.app.dialog.DialogSetFull.DialogApplyListener
                                            public final void a() {
                                                int i13;
                                                int i14 = DialogSetBar.K0;
                                                DialogSetBar dialogSetBar4 = DialogSetBar.this;
                                                dialogSetBar4.D();
                                                if (dialogSetBar4.s0 != null) {
                                                    if (dialogSetBar4.f0 == 2) {
                                                        AppCompatTextView appCompatTextView4 = dialogSetBar4.n0;
                                                        if (appCompatTextView4 == null) {
                                                            return;
                                                        }
                                                        if (dialogSetBar4.z0 != 0) {
                                                            dialogSetBar4.z0 = 0;
                                                            a.t(new StringBuilder(), dialogSetBar4.z0, "%", appCompatTextView4);
                                                            dialogSetBar4.o0.setProgress(dialogSetBar4.z0);
                                                            MyBarView myBarView3 = dialogSetBar4.k0;
                                                            if (myBarView3 != null) {
                                                                if (MainApp.K1) {
                                                                    i13 = -16777216;
                                                                } else {
                                                                    i13 = -1;
                                                                }
                                                                myBarView3.setBackgroundColor(PrefEditor.r(i13, dialogSetBar4.z0));
                                                            }
                                                        }
                                                    }
                                                    if (dialogSetBar4.A0 != 100) {
                                                        dialogSetBar4.A0 = 100;
                                                        a.t(new StringBuilder(), dialogSetBar4.A0, "%", dialogSetBar4.s0);
                                                        dialogSetBar4.t0.setProgress(dialogSetBar4.A0 - dialogSetBar4.b0);
                                                        FrameLayout.LayoutParams layoutParams10 = dialogSetBar4.l0;
                                                        if (layoutParams10 != null) {
                                                            layoutParams10.height = Math.round((dialogSetBar4.A0 * MainApp.Y0) / 100.0f);
                                                            dialogSetBar4.k0.requestLayout();
                                                        }
                                                    }
                                                    dialogSetBar4.E(false);
                                                }
                                            }
                                        });
                                        dialogSetBar3.y0 = dialogSetMsg;
                                        dialogSetMsg.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogSetBar.17
                                            @Override // android.content.DialogInterface.OnDismissListener
                                            public final void onDismiss(DialogInterface dialogInterface) {
                                                int i13 = DialogSetBar.K0;
                                                DialogSetBar.this.D();
                                            }
                                        });
                                    }
                                });
                                dialogSetBar2.g(dialogSetBar2.h0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogSetBar.11
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view) {
                                        DialogSetBar dialogSetBar3 = DialogSetBar.this;
                                        if (dialogSetBar3.h0 == null) {
                                            return;
                                        }
                                        dialogSetBar3.show();
                                    }
                                });
                            }
                        }
                    });
                }
            }
        });
    }

    public static void B(DialogSetBar dialogSetBar, int i) {
        int i2;
        Runnable runnable = dialogSetBar.I0;
        AppCompatTextView appCompatTextView = dialogSetBar.n0;
        if (appCompatTextView != null) {
            if (i < 0) {
                i = 0;
            } else {
                int i3 = dialogSetBar.a0;
                if (i > i3) {
                    i = i3;
                }
            }
            if (!dialogSetBar.C0 && dialogSetBar.z0 != i) {
                dialogSetBar.C0 = true;
                dialogSetBar.z0 = i;
                a.t(new StringBuilder(), dialogSetBar.z0, "%", appCompatTextView);
                MyBarView myBarView = dialogSetBar.k0;
                if (myBarView != null) {
                    if (MainApp.K1) {
                        i2 = -16777216;
                    } else {
                        i2 = -1;
                    }
                    myBarView.setBackgroundColor(PrefEditor.r(i2, dialogSetBar.z0));
                }
                if (dialogSetBar.B0) {
                    dialogSetBar.B0 = false;
                    dialogSetBar.C0 = false;
                } else {
                    dialogSetBar.n0.removeCallbacks(runnable);
                    dialogSetBar.n0.postDelayed(runnable, 100L);
                }
            }
        }
    }

    public static void C(DialogSetBar dialogSetBar, int i) {
        Runnable runnable = dialogSetBar.J0;
        AppCompatTextView appCompatTextView = dialogSetBar.s0;
        if (appCompatTextView != null) {
            int i2 = dialogSetBar.b0;
            if (i < i2 || i > (i2 = dialogSetBar.c0)) {
                i = i2;
            }
            if (!dialogSetBar.E0 && dialogSetBar.A0 != i) {
                dialogSetBar.E0 = true;
                dialogSetBar.A0 = i;
                a.t(new StringBuilder(), dialogSetBar.A0, "%", appCompatTextView);
                FrameLayout.LayoutParams layoutParams = dialogSetBar.l0;
                if (layoutParams != null) {
                    layoutParams.height = Math.round((dialogSetBar.A0 * MainApp.Y0) / 100.0f);
                    dialogSetBar.k0.requestLayout();
                }
                if (dialogSetBar.D0) {
                    dialogSetBar.D0 = false;
                    dialogSetBar.E0 = false;
                } else {
                    dialogSetBar.s0.removeCallbacks(runnable);
                    dialogSetBar.s0.postDelayed(runnable, 100L);
                }
            }
        }
    }

    public final void D() {
        DialogSetMsg dialogSetMsg = this.y0;
        if (dialogSetMsg != null) {
            dialogSetMsg.dismiss();
            this.y0 = null;
        }
    }

    public final void E(boolean z) {
        int round = Math.round((this.A0 * MainApp.Y0) / 100.0f);
        int round2 = Math.round(MainApp.Y0 / 2.0f);
        if (round < round2 || round > (round2 = MainApp.Y0 * 2)) {
            round = round2;
        }
        int i = this.f0;
        if (i == 0) {
            if (PrefPdf.y != round) {
                PrefPdf.y = round;
                if (z) {
                    PrefSet.f(this.e0, 7, round, "mMidHeight");
                } else {
                    PrefSet.i(this.e0, 7, "mMidHeight");
                }
            }
        } else if (i == 1) {
            if (PrefPdf.A != round) {
                PrefPdf.A = round;
                if (z) {
                    PrefSet.f(this.e0, 7, round, "mTopHeight");
                } else {
                    PrefSet.i(this.e0, 7, "mTopHeight");
                }
            }
        } else {
            int i2 = PrefEditor.I;
            int i3 = this.z0;
            if (i2 != i3) {
                PrefEditor.I = i3;
                if (z) {
                    PrefSet.f(this.e0, 1, i3, "mBotAlpha");
                } else {
                    PrefSet.i(this.e0, 1, "mBotAlpha");
                }
            }
            if (PrefPdf.B != round) {
                PrefPdf.B = round;
                if (z) {
                    PrefSet.f(this.e0, 7, round, "mBotHeight");
                } else {
                    PrefSet.i(this.e0, 7, "mBotHeight");
                }
            }
        }
        if (z) {
            dismiss();
        }
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.e0 == null) {
            return;
        }
        D();
        GlideRequests glideRequests = this.F0;
        if (glideRequests != null) {
            MyRoundImage myRoundImage = this.j0;
            if (myRoundImage != null) {
                glideRequests.o(myRoundImage);
            }
            this.F0 = null;
        }
        MyDialogLinear myDialogLinear = this.h0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.h0 = null;
        }
        MyRoundImage myRoundImage2 = this.j0;
        if (myRoundImage2 != null) {
            myRoundImage2.k();
            this.j0 = null;
        }
        MyBarView myBarView = this.k0;
        if (myBarView != null) {
            myBarView.d();
            this.k0 = null;
        }
        MyButtonImage myButtonImage = this.p0;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.p0 = null;
        }
        MyButtonImage myButtonImage2 = this.q0;
        if (myButtonImage2 != null) {
            myButtonImage2.j();
            this.q0 = null;
        }
        MyButtonImage myButtonImage3 = this.u0;
        if (myButtonImage3 != null) {
            myButtonImage3.j();
            this.u0 = null;
        }
        MyButtonImage myButtonImage4 = this.v0;
        if (myButtonImage4 != null) {
            myButtonImage4.j();
            this.v0 = null;
        }
        MyLineText myLineText = this.x0;
        if (myLineText != null) {
            myLineText.u();
            this.x0 = null;
        }
        this.d0 = null;
        this.e0 = null;
        this.g0 = null;
        this.i0 = null;
        this.l0 = null;
        this.m0 = null;
        this.n0 = null;
        this.o0 = null;
        this.r0 = null;
        this.s0 = null;
        this.t0 = null;
        this.w0 = null;
        super.dismiss();
    }
}
