package com.mycompany.app.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Handler;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.widget.NestedScrollView;
import com.mycompany.app.dialog.DialogEditorText;
import com.mycompany.app.dialog.DialogSeekAudio;
import com.mycompany.app.dialog.DialogSetFull;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefEditor;
import com.mycompany.app.pref.PrefFloat;
import com.mycompany.app.pref.PrefRead;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonCheck;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyLineFrame;
import com.mycompany.app.view.MyLineLinear;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyPaletteView;

/* loaded from: classes3.dex */
public class DialogEditIcon extends MyDialogBottom {
    public static final /* synthetic */ int y0 = 0;
    public final int a0;
    public final int b0;
    public MainActivity c0;
    public Context d0;
    public final int e0;
    public DialogEditorText.EditorSetListener f0;
    public DialogSeekAudio.DialogSeekListener g0;
    public MyDialogLinear h0;
    public MyButtonImage i0;
    public AppCompatTextView j0;
    public AppCompatTextView k0;
    public SeekBar l0;
    public MyButtonImage m0;
    public MyButtonImage n0;
    public MyButtonCheck[] o0;
    public MyPaletteView p0;
    public AppCompatTextView q0;
    public MyLineText r0;
    public DialogSetMsg s0;
    public int t0;
    public int u0;
    public int v0;
    public float w0;
    public boolean x0;

    public DialogEditIcon(MainActivity mainActivity, int i, DialogEditorText.EditorSetListener editorSetListener) {
        super(mainActivity);
        this.c0 = mainActivity;
        this.d0 = getContext();
        this.e0 = i;
        this.f0 = editorSetListener;
        if (i == 1) {
            this.t0 = PrefEditor.n;
            this.u0 = PrefEditor.o;
            this.w0 = PrefEditor.p;
        } else if (i == 2) {
            this.t0 = PrefEditor.r;
            this.u0 = PrefEditor.s;
            this.w0 = PrefEditor.t;
        } else if (i == 3) {
            this.t0 = PrefEditor.v;
            this.u0 = PrefEditor.w;
            this.w0 = PrefEditor.x;
        } else if (i == 4) {
            this.t0 = PrefRead.W;
            this.u0 = PrefRead.X;
            this.w0 = PrefRead.Y;
        } else if (i == 5) {
            this.t0 = PrefEditor.A;
            this.u0 = PrefEditor.B;
            this.w0 = PrefEditor.C;
        } else if (i == 6) {
            this.t0 = PrefEditor.E;
            this.u0 = PrefEditor.F;
            this.w0 = PrefEditor.G;
        } else if (i == 7) {
            this.t0 = PrefEditor.K;
            this.u0 = PrefEditor.L;
            this.w0 = PrefEditor.M;
        } else if (i == 8) {
            this.t0 = PrefEditor.O;
            this.u0 = PrefEditor.P;
            this.w0 = PrefEditor.Q;
        } else if (i == 9) {
            this.t0 = PrefEditor.S;
            this.u0 = PrefEditor.T;
            this.w0 = PrefEditor.U;
        } else if (i == 10) {
            this.t0 = PrefEditor.W;
            this.u0 = PrefEditor.X;
            this.w0 = PrefEditor.Y;
        } else if (i == 11) {
            this.t0 = PrefFloat.p;
            this.u0 = PrefFloat.q;
            this.w0 = PrefFloat.r;
        } else if (i == 12) {
            this.t0 = PrefFloat.t;
            this.u0 = PrefFloat.u;
            this.w0 = PrefFloat.v;
        } else if (i == 13) {
            this.t0 = PrefFloat.x;
            this.u0 = PrefFloat.y;
            this.w0 = PrefFloat.z;
        } else {
            this.t0 = PrefEditor.j;
            this.u0 = PrefEditor.k;
            this.w0 = PrefEditor.l;
        }
        if (i == 5) {
            this.a0 = 20;
            this.b0 = 100;
        } else {
            this.a0 = 0;
            this.b0 = 90;
        }
        int i2 = this.t0;
        if (i2 < this.a0 || i2 > this.b0) {
            if (i == 5) {
                this.t0 = 60;
            } else {
                this.t0 = 0;
            }
        }
        if (i == 5) {
            this.v0 = MainUtil.o1(this.u0, this.t0);
        } else {
            this.v0 = PrefEditor.r(this.u0, this.t0);
        }
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditIcon.1
            @Override // java.lang.Runnable
            public final void run() {
                MyButtonImage myButtonImage;
                int length;
                final DialogEditIcon dialogEditIcon = DialogEditIcon.this;
                int i3 = dialogEditIcon.e0;
                Context context = dialogEditIcon.d0;
                if (context != null) {
                    MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
                    if (i3 != 5) {
                        int G = (int) MainUtil.G(context, 72.0f);
                        MyLineFrame myLineFrame = new MyLineFrame(context);
                        myLineFrame.a(MainApp.E1);
                        q.addView(myLineFrame, -1, G);
                        myButtonImage = new MyButtonImage(context);
                        int i4 = MainApp.f1;
                        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i4, i4);
                        layoutParams.gravity = 17;
                        myLineFrame.addView(myButtonImage, layoutParams);
                    } else {
                        myButtonImage = null;
                    }
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
                    AppCompatTextView j = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
                    FrameLayout.LayoutParams d = com.google.android.gms.internal.mlkit_vision_text_common.a.d(j, R.string.color_alpha, -2, -2);
                    d.setMarginStart(MainApp.E1);
                    frameLayout.addView(j, d);
                    AppCompatTextView C = com.google.android.gms.internal.mlkit_vision_text_common.a.C(context, null, 1, 1, 16.0f);
                    C.setMinWidth(MainApp.E1);
                    FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-2, -2);
                    layoutParams3.gravity = 8388613;
                    layoutParams3.setMarginEnd(MainApp.E1);
                    frameLayout.addView(C, layoutParams3);
                    MyLineFrame myLineFrame2 = new MyLineFrame(context);
                    myLineFrame2.a(MainApp.E1);
                    linearLayout.addView(myLineFrame2, -1, MainApp.g1);
                    MyButtonImage myButtonImage2 = new MyButtonImage(context);
                    ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_INSIDE;
                    myButtonImage2.setScaleType(scaleType);
                    myButtonImage2.setImageResource(R.drawable.outline_remove_white_24);
                    int i5 = MainApp.g1;
                    myLineFrame2.addView(myButtonImage2, i5, i5);
                    SeekBar seekBar = new SeekBar(context);
                    FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-1, -2);
                    layoutParams4.gravity = 8388627;
                    layoutParams4.setMarginStart(MainApp.g1);
                    layoutParams4.setMarginEnd(MainApp.g1);
                    myLineFrame2.addView(seekBar, layoutParams4);
                    MyButtonImage p = com.google.android.gms.internal.mlkit_vision_text_common.a.p(context, scaleType);
                    p.setImageResource(R.drawable.outline_add_white_24);
                    int i6 = MainApp.g1;
                    FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(i6, i6);
                    layoutParams5.gravity = 8388613;
                    myLineFrame2.addView(p, layoutParams5);
                    LinearLayout linearLayout2 = new LinearLayout(context);
                    int i7 = MainApp.E1;
                    linearLayout2.setPadding(i7, 0, i7, 0);
                    linearLayout2.setBaselineAligned(false);
                    linearLayout2.setOrientation(0);
                    LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(-1, -2);
                    layoutParams6.topMargin = MainApp.F1;
                    linearLayout.addView(linearLayout2, layoutParams6);
                    MyButtonCheck myButtonCheck = new MyButtonCheck(context);
                    myButtonCheck.setBgNorRadius(MainApp.E1);
                    int i8 = MainApp.f1;
                    View c2 = com.google.android.gms.internal.mlkit_vision_text_common.a.c(linearLayout2, myButtonCheck, i8, i8, context);
                    LinearLayout.LayoutParams layoutParams7 = new LinearLayout.LayoutParams(0, 0);
                    layoutParams7.weight = 1.0f;
                    MyButtonCheck f = a.f(linearLayout2, c2, layoutParams7, context);
                    f.setBgNorRadius(MainApp.E1);
                    int i9 = MainApp.f1;
                    View c3 = com.google.android.gms.internal.mlkit_vision_text_common.a.c(linearLayout2, f, i9, i9, context);
                    LinearLayout.LayoutParams layoutParams8 = new LinearLayout.LayoutParams(0, 0);
                    layoutParams8.weight = 1.0f;
                    MyButtonCheck f2 = a.f(linearLayout2, c3, layoutParams8, context);
                    f2.setBgNorRadius(MainApp.E1);
                    int i10 = MainApp.f1;
                    View c4 = com.google.android.gms.internal.mlkit_vision_text_common.a.c(linearLayout2, f2, i10, i10, context);
                    LinearLayout.LayoutParams layoutParams9 = new LinearLayout.LayoutParams(0, 0);
                    layoutParams9.weight = 1.0f;
                    MyButtonCheck f3 = a.f(linearLayout2, c4, layoutParams9, context);
                    f3.setBgNorRadius(MainApp.E1);
                    int i11 = MainApp.f1;
                    View c5 = com.google.android.gms.internal.mlkit_vision_text_common.a.c(linearLayout2, f3, i11, i11, context);
                    LinearLayout.LayoutParams layoutParams10 = new LinearLayout.LayoutParams(0, 0);
                    layoutParams10.weight = 1.0f;
                    MyButtonCheck f4 = a.f(linearLayout2, c5, layoutParams10, context);
                    f4.setBgNorRadius(MainApp.E1);
                    int i12 = MainApp.f1;
                    View c6 = com.google.android.gms.internal.mlkit_vision_text_common.a.c(linearLayout2, f4, i12, i12, context);
                    LinearLayout.LayoutParams layoutParams11 = new LinearLayout.LayoutParams(0, 0);
                    layoutParams11.weight = 1.0f;
                    MyButtonCheck f5 = a.f(linearLayout2, c6, layoutParams11, context);
                    f5.setBgNorRadius(MainApp.E1);
                    int i13 = MainApp.f1;
                    View c7 = com.google.android.gms.internal.mlkit_vision_text_common.a.c(linearLayout2, f5, i13, i13, context);
                    LinearLayout.LayoutParams layoutParams12 = new LinearLayout.LayoutParams(0, 0);
                    layoutParams12.weight = 1.0f;
                    MyButtonCheck f6 = a.f(linearLayout2, c7, layoutParams12, context);
                    f6.setBgNorRadius(MainApp.E1);
                    int i14 = MainApp.f1;
                    View c8 = com.google.android.gms.internal.mlkit_vision_text_common.a.c(linearLayout2, f6, i14, i14, context);
                    LinearLayout.LayoutParams layoutParams13 = new LinearLayout.LayoutParams(0, 0);
                    layoutParams13.weight = 1.0f;
                    MyButtonCheck f7 = a.f(linearLayout2, c8, layoutParams13, context);
                    f7.setBgNorRadius(MainApp.E1);
                    int i15 = MainApp.f1;
                    linearLayout2.addView(f7, i15, i15);
                    MyPaletteView myPaletteView = new MyPaletteView(context);
                    LinearLayout.LayoutParams layoutParams14 = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams14.gravity = 1;
                    layoutParams14.topMargin = MainApp.G1;
                    linearLayout.addView(myPaletteView, layoutParams14);
                    MyLineLinear myLineLinear = new MyLineLinear(context);
                    myLineLinear.setBaselineAligned(false);
                    myLineLinear.setOrientation(0);
                    myLineLinear.setLinePad(MainApp.E1);
                    myLineLinear.setLineUp(true);
                    MyLineText s = com.google.android.gms.internal.mlkit_vision_text_common.a.s(q, myLineLinear, -1, MainApp.g1, context);
                    s.setGravity(17);
                    s.setTextSize(1, 16.0f);
                    LinearLayout.LayoutParams f8 = com.google.android.gms.internal.mlkit_vision_text_common.a.f(s, R.string.reset, context, 0, -1);
                    f8.weight = 1.0f;
                    AppCompatTextView l = com.google.android.gms.internal.mlkit_vision_text_common.a.l(myLineLinear, s, f8, context, null);
                    l.setGravity(17);
                    l.setTextSize(1, 16.0f);
                    LinearLayout.LayoutParams e = com.google.android.gms.internal.mlkit_vision_text_common.a.e(l, R.string.apply, 0, -1);
                    e.weight = 1.0f;
                    myLineLinear.addView(l, e);
                    dialogEditIcon.h0 = q;
                    dialogEditIcon.i0 = myButtonImage;
                    dialogEditIcon.j0 = j;
                    dialogEditIcon.k0 = C;
                    dialogEditIcon.l0 = seekBar;
                    dialogEditIcon.m0 = myButtonImage2;
                    dialogEditIcon.n0 = p;
                    dialogEditIcon.p0 = myPaletteView;
                    dialogEditIcon.q0 = l;
                    dialogEditIcon.r0 = s;
                    if (i3 == 4) {
                        length = MainConst.r.length;
                    } else {
                        length = MainConst.q.length;
                    }
                    MyButtonCheck[] myButtonCheckArr = new MyButtonCheck[length];
                    dialogEditIcon.o0 = myButtonCheckArr;
                    myButtonCheckArr[0] = myButtonCheck;
                    myButtonCheckArr[1] = f;
                    myButtonCheckArr[2] = f2;
                    myButtonCheckArr[3] = f3;
                    myButtonCheckArr[4] = f4;
                    myButtonCheckArr[5] = f5;
                    myButtonCheckArr[6] = f6;
                    myButtonCheckArr[7] = f7;
                    Handler handler2 = dialogEditIcon.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditIcon.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            final int length2;
                            final DialogEditIcon dialogEditIcon2 = DialogEditIcon.this;
                            int i16 = dialogEditIcon2.a0;
                            int i17 = dialogEditIcon2.e0;
                            if (dialogEditIcon2.h0 != null && dialogEditIcon2.d0 != null) {
                                if (MainApp.K1) {
                                    dialogEditIcon2.j0.setTextColor(-328966);
                                    dialogEditIcon2.k0.setTextColor(-328966);
                                    dialogEditIcon2.m0.setImageResource(R.drawable.outline_remove_dark_24);
                                    dialogEditIcon2.n0.setImageResource(R.drawable.outline_add_dark_24);
                                    dialogEditIcon2.l0.setProgressDrawable(MainUtil.S(dialogEditIcon2.d0, R.drawable.seek_progress_a));
                                    dialogEditIcon2.l0.setThumb(MainUtil.S(dialogEditIcon2.d0, R.drawable.seek_thumb_a));
                                    dialogEditIcon2.q0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogEditIcon2.r0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogEditIcon2.q0.setTextColor(-328966);
                                    dialogEditIcon2.r0.setTextColor(-328966);
                                    dialogEditIcon2.m0.setBgPreColor(-12632257);
                                    dialogEditIcon2.n0.setBgPreColor(-12632257);
                                } else {
                                    dialogEditIcon2.j0.setTextColor(-16777216);
                                    dialogEditIcon2.k0.setTextColor(-16777216);
                                    dialogEditIcon2.m0.setImageResource(R.drawable.outline_remove_black_24);
                                    dialogEditIcon2.n0.setImageResource(R.drawable.outline_add_black_24);
                                    dialogEditIcon2.l0.setProgressDrawable(MainUtil.S(dialogEditIcon2.d0, R.drawable.seek_progress_a));
                                    dialogEditIcon2.l0.setThumb(MainUtil.S(dialogEditIcon2.d0, R.drawable.seek_thumb_a));
                                    dialogEditIcon2.q0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogEditIcon2.r0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogEditIcon2.q0.setTextColor(-14784824);
                                    dialogEditIcon2.r0.setTextColor(-16777216);
                                    dialogEditIcon2.m0.setBgPreColor(-2039584);
                                    dialogEditIcon2.n0.setBgPreColor(-2039584);
                                }
                                if (i17 == 5) {
                                    if (MainApp.K1) {
                                        dialogEditIcon2.h0.c(-5197648, MainApp.n1);
                                    } else {
                                        dialogEditIcon2.h0.c(-16777216, MainApp.n1);
                                    }
                                    dialogEditIcon2.h0.setFilterColor(dialogEditIcon2.v0);
                                } else {
                                    MyButtonImage myButtonImage3 = dialogEditIcon2.i0;
                                    if (myButtonImage3 != null) {
                                        myButtonImage3.setBgNorColor(dialogEditIcon2.v0);
                                        dialogEditIcon2.i0.m(-12632257, MainApp.n1);
                                    }
                                }
                                dialogEditIcon2.l0.setSplitTrack(false);
                                a.t(new StringBuilder(), dialogEditIcon2.t0, "%", dialogEditIcon2.k0);
                                dialogEditIcon2.l0.setMax(dialogEditIcon2.b0 - i16);
                                dialogEditIcon2.l0.setProgress(dialogEditIcon2.t0 - i16);
                                dialogEditIcon2.l0.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.mycompany.app.dialog.DialogEditIcon.3
                                    @Override // android.widget.SeekBar.OnSeekBarChangeListener
                                    public final void onProgressChanged(SeekBar seekBar2, int i18, boolean z) {
                                        DialogEditIcon.B(DialogEditIcon.this, seekBar2.getProgress());
                                    }

                                    @Override // android.widget.SeekBar.OnSeekBarChangeListener
                                    public final void onStartTrackingTouch(SeekBar seekBar2) {
                                        DialogEditIcon.B(DialogEditIcon.this, seekBar2.getProgress());
                                    }

                                    @Override // android.widget.SeekBar.OnSeekBarChangeListener
                                    public final void onStopTrackingTouch(SeekBar seekBar2) {
                                        DialogEditIcon.B(DialogEditIcon.this, seekBar2.getProgress());
                                    }
                                });
                                dialogEditIcon2.m0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogEditIcon.4
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        int progress;
                                        DialogEditIcon dialogEditIcon3 = DialogEditIcon.this;
                                        if (dialogEditIcon3.l0 == null || r0.getProgress() - 1 < 0) {
                                            return;
                                        }
                                        dialogEditIcon3.l0.setProgress(progress);
                                    }
                                });
                                dialogEditIcon2.n0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogEditIcon.5
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        int progress;
                                        DialogEditIcon dialogEditIcon3 = DialogEditIcon.this;
                                        SeekBar seekBar2 = dialogEditIcon3.l0;
                                        if (seekBar2 == null || (progress = seekBar2.getProgress() + 1) > dialogEditIcon3.l0.getMax()) {
                                            return;
                                        }
                                        dialogEditIcon3.l0.setProgress(progress);
                                    }
                                });
                                if (i17 == 4) {
                                    length2 = MainConst.r.length;
                                } else {
                                    length2 = MainConst.q.length;
                                }
                                for (final int i18 = 0; i18 < length2; i18++) {
                                    if (i17 == 4) {
                                        int i19 = MainConst.r[i18];
                                        dialogEditIcon2.o0[i18].m(i19, i19);
                                        if (i18 == 3) {
                                            dialogEditIcon2.o0[i18].p(R.drawable.outline_check_black_24, 0);
                                        } else {
                                            dialogEditIcon2.o0[i18].p(R.drawable.outline_check_white_24, 0);
                                        }
                                    } else {
                                        int i20 = MainConst.q[i18];
                                        dialogEditIcon2.o0[i18].m(i20, i20);
                                        dialogEditIcon2.o0[i18].p(R.drawable.outline_check_white_24, 0);
                                    }
                                    dialogEditIcon2.o0[i18].n(-12632257, MainApp.n1);
                                    dialogEditIcon2.o0[i18].setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogEditIcon.6
                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view) {
                                            DialogEditIcon dialogEditIcon3 = DialogEditIcon.this;
                                            if (dialogEditIcon3.p0 == null) {
                                                return;
                                            }
                                            int i21 = i18;
                                            if (i21 < 0) {
                                                i21 = 0;
                                            } else {
                                                int i22 = length2;
                                                if (i21 > i22 - 1) {
                                                    i21 = i22 - 1;
                                                }
                                            }
                                            if (dialogEditIcon3.e0 == 4) {
                                                dialogEditIcon3.u0 = MainConst.r[i21];
                                            } else {
                                                dialogEditIcon3.u0 = MainConst.q[i21];
                                            }
                                            dialogEditIcon3.w0 = MainConst.p[i21];
                                            dialogEditIcon3.E();
                                            dialogEditIcon3.p0.b(dialogEditIcon3.w0, dialogEditIcon3.u0);
                                        }
                                    });
                                }
                                if (i17 == 4) {
                                    dialogEditIcon2.p0.setType(2);
                                } else {
                                    dialogEditIcon2.p0.setType(1);
                                }
                                dialogEditIcon2.p0.setListener(new MyPaletteView.PaletteListener() { // from class: com.mycompany.app.dialog.DialogEditIcon.7
                                    @Override // com.mycompany.app.view.MyPaletteView.PaletteListener
                                    public final void a(float f9, int i21) {
                                        DialogEditIcon dialogEditIcon3 = DialogEditIcon.this;
                                        dialogEditIcon3.u0 = i21;
                                        dialogEditIcon3.w0 = f9;
                                        dialogEditIcon3.E();
                                    }
                                });
                                dialogEditIcon2.q0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogEditIcon.8
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        int i21 = DialogEditIcon.y0;
                                        DialogEditIcon.this.D(true);
                                    }
                                });
                                dialogEditIcon2.r0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogEditIcon.9
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        final DialogEditIcon dialogEditIcon3 = DialogEditIcon.this;
                                        if (dialogEditIcon3.c0 != null && dialogEditIcon3.s0 == null) {
                                            dialogEditIcon3.C();
                                            DialogSetMsg dialogSetMsg = new DialogSetMsg(dialogEditIcon3.c0, R.string.reset_setting, R.string.reset, new DialogSetFull.DialogApplyListener() { // from class: com.mycompany.app.dialog.DialogEditIcon.12
                                                /* JADX WARN: Removed duplicated region for block: B:11:0x0046  */
                                                /* JADX WARN: Removed duplicated region for block: B:18:0x007b  */
                                                /* JADX WARN: Removed duplicated region for block: B:23:0x0076  */
                                                /* JADX WARN: Removed duplicated region for block: B:24:0x0060  */
                                                @Override // com.mycompany.app.dialog.DialogSetFull.DialogApplyListener
                                                /*
                                                    Code decompiled incorrectly, please refer to instructions dump.
                                                    To view partially-correct add '--show-bad-code' argument
                                                */
                                                public final void a() {
                                                    /*
                                                        r9 = this;
                                                        int r0 = com.mycompany.app.dialog.DialogEditIcon.y0
                                                        com.mycompany.app.dialog.DialogEditIcon r0 = com.mycompany.app.dialog.DialogEditIcon.this
                                                        r0.C()
                                                        androidx.appcompat.widget.AppCompatTextView r1 = r0.k0
                                                        if (r1 != 0) goto Lc
                                                        return
                                                    Lc:
                                                        int r2 = r0.e0
                                                        r3 = 4
                                                        r4 = 0
                                                        if (r2 != r3) goto L1d
                                                        int[] r2 = com.mycompany.app.main.MainConst.r
                                                        r3 = 3
                                                        r2 = r2[r3]
                                                        float[] r5 = com.mycompany.app.main.MainConst.p
                                                        r3 = r5[r3]
                                                    L1b:
                                                        r5 = r4
                                                        goto L41
                                                    L1d:
                                                        r3 = 5
                                                        if (r2 != r3) goto L2c
                                                        int[] r2 = com.mycompany.app.main.MainConst.q
                                                        r3 = 7
                                                        r2 = r2[r3]
                                                        float[] r5 = com.mycompany.app.main.MainConst.p
                                                        r3 = r5[r3]
                                                        r5 = 60
                                                        goto L41
                                                    L2c:
                                                        r5 = 6
                                                        if (r2 != r5) goto L38
                                                        int[] r2 = com.mycompany.app.main.MainConst.q
                                                        r2 = r2[r3]
                                                        float[] r5 = com.mycompany.app.main.MainConst.p
                                                        r3 = r5[r3]
                                                        goto L1b
                                                    L38:
                                                        int[] r2 = com.mycompany.app.main.MainConst.q
                                                        r2 = r2[r3]
                                                        float[] r5 = com.mycompany.app.main.MainConst.p
                                                        r3 = r5[r3]
                                                        goto L1b
                                                    L41:
                                                        int r6 = r0.t0
                                                        r7 = 1
                                                        if (r6 == r5) goto L60
                                                        r0.t0 = r5
                                                        java.lang.StringBuilder r5 = new java.lang.StringBuilder
                                                        r5.<init>()
                                                        int r6 = r0.t0
                                                        java.lang.String r8 = "%"
                                                        com.mycompany.app.dialog.a.t(r5, r6, r8, r1)
                                                        android.widget.SeekBar r1 = r0.l0
                                                        int r5 = r0.t0
                                                        int r6 = r0.a0
                                                        int r5 = r5 - r6
                                                        r1.setProgress(r5)
                                                        r1 = r7
                                                        goto L61
                                                    L60:
                                                        r1 = r4
                                                    L61:
                                                        int r5 = r0.u0
                                                        if (r5 != r2) goto L6e
                                                        float r5 = r0.w0
                                                        int r5 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
                                                        if (r5 == 0) goto L6c
                                                        goto L6e
                                                    L6c:
                                                        r7 = r1
                                                        goto L79
                                                    L6e:
                                                        r0.u0 = r2
                                                        r0.w0 = r3
                                                        com.mycompany.app.view.MyPaletteView r1 = r0.p0
                                                        if (r1 == 0) goto L79
                                                        r1.b(r3, r2)
                                                    L79:
                                                        if (r7 == 0) goto L7e
                                                        r0.E()
                                                    L7e:
                                                        r0.D(r4)
                                                        return
                                                    */
                                                    throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogEditIcon.AnonymousClass12.a():void");
                                                }
                                            });
                                            dialogEditIcon3.s0 = dialogSetMsg;
                                            dialogSetMsg.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogEditIcon.13
                                                @Override // android.content.DialogInterface.OnDismissListener
                                                public final void onDismiss(DialogInterface dialogInterface) {
                                                    int i21 = DialogEditIcon.y0;
                                                    DialogEditIcon.this.C();
                                                }
                                            });
                                            if (dialogEditIcon3.e0 == 5) {
                                                DialogSetMsg dialogSetMsg2 = dialogEditIcon3.s0;
                                                int i21 = dialogEditIcon3.v0;
                                                dialogSetMsg2.o0 = i21;
                                                MyDialogLinear myDialogLinear = dialogSetMsg2.i0;
                                                if (myDialogLinear != null) {
                                                    myDialogLinear.setFilterColor(i21);
                                                }
                                            }
                                        }
                                    }
                                });
                                dialogEditIcon2.E();
                                MyPaletteView myPaletteView2 = dialogEditIcon2.p0;
                                if (myPaletteView2 != null) {
                                    myPaletteView2.setBorder(-12632257);
                                    dialogEditIcon2.p0.b(dialogEditIcon2.w0, dialogEditIcon2.u0);
                                }
                                dialogEditIcon2.g(dialogEditIcon2.h0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogEditIcon.10
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view) {
                                        DialogEditIcon dialogEditIcon3 = DialogEditIcon.this;
                                        if (dialogEditIcon3.h0 == null) {
                                            return;
                                        }
                                        if (dialogEditIcon3.e0 == 5) {
                                            dialogEditIcon3.getWindow().clearFlags(2);
                                        }
                                        dialogEditIcon3.show();
                                    }
                                });
                            }
                        }
                    });
                }
            }
        });
    }

    public static void B(DialogEditIcon dialogEditIcon, final int i) {
        if (dialogEditIcon.k0 != null) {
            int i2 = dialogEditIcon.t0;
            int i3 = dialogEditIcon.a0 + i;
            if (i2 == i3 || dialogEditIcon.x0) {
                return;
            }
            dialogEditIcon.x0 = true;
            dialogEditIcon.t0 = i3;
            if (dialogEditIcon.e0 == 5) {
                int o1 = MainUtil.o1(dialogEditIcon.u0, i3);
                dialogEditIcon.v0 = o1;
                dialogEditIcon.h0.setFilterColor(o1);
            } else {
                int r = PrefEditor.r(dialogEditIcon.u0, i3);
                dialogEditIcon.v0 = r;
                MyButtonImage myButtonImage = dialogEditIcon.i0;
                if (myButtonImage != null) {
                    myButtonImage.setBgNorColor(r);
                }
            }
            DialogSeekAudio.DialogSeekListener dialogSeekListener = dialogEditIcon.g0;
            if (dialogSeekListener != null) {
                dialogSeekListener.a(dialogEditIcon.v0);
            }
            a.t(new StringBuilder(), dialogEditIcon.t0, "%", dialogEditIcon.k0);
            dialogEditIcon.k0.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditIcon.11
                @Override // java.lang.Runnable
                public final void run() {
                    DialogEditIcon dialogEditIcon2 = DialogEditIcon.this;
                    dialogEditIcon2.x0 = false;
                    DialogEditIcon.B(dialogEditIcon2, i);
                }
            });
        }
    }

    public final void C() {
        DialogSetMsg dialogSetMsg = this.s0;
        if (dialogSetMsg != null) {
            dialogSetMsg.dismiss();
            this.s0 = null;
        }
    }

    public final void D(boolean z) {
        int i = this.e0;
        if (i == 1) {
            if (PrefEditor.n != this.t0 || PrefEditor.o != this.u0 || Float.compare(PrefEditor.p, this.w0) != 0) {
                PrefEditor.n = this.t0;
                PrefEditor.o = this.u0;
                PrefEditor.p = this.w0;
                PrefEditor.q = this.v0;
                PrefEditor s = PrefEditor.s(this.d0);
                if (z) {
                    s.n(PrefEditor.n, "mTtsAlpha");
                    s.n(PrefEditor.o, "mTtsColor");
                    s.m("mTtsPos", PrefEditor.p);
                } else {
                    s.q("mTtsAlpha");
                    s.q("mTtsColor");
                    s.q("mTtsPos");
                }
                s.a();
                DialogEditorText.EditorSetListener editorSetListener = this.f0;
                if (editorSetListener != null) {
                    editorSetListener.a(0, null);
                }
            }
        } else if (i == 2) {
            if (PrefEditor.r != this.t0 || PrefEditor.s != this.u0 || Float.compare(PrefEditor.t, this.w0) != 0) {
                PrefEditor.r = this.t0;
                PrefEditor.s = this.u0;
                PrefEditor.t = this.w0;
                PrefEditor.u = this.v0;
                PrefEditor s2 = PrefEditor.s(this.d0);
                if (z) {
                    s2.n(PrefEditor.r, "mZoomAlpha");
                    s2.n(PrefEditor.s, "mZoomColor");
                    s2.m("mZoomPos", PrefEditor.t);
                } else {
                    s2.q("mZoomAlpha");
                    s2.q("mZoomColor");
                    s2.q("mZoomPos");
                }
                s2.a();
                DialogEditorText.EditorSetListener editorSetListener2 = this.f0;
                if (editorSetListener2 != null) {
                    editorSetListener2.a(0, null);
                }
            }
        } else if (i == 3) {
            if (PrefEditor.v != this.t0 || PrefEditor.w != this.u0 || Float.compare(PrefEditor.x, this.w0) != 0) {
                PrefEditor.v = this.t0;
                PrefEditor.w = this.u0;
                PrefEditor.x = this.w0;
                PrefEditor.y = this.v0;
                PrefEditor s3 = PrefEditor.s(this.d0);
                if (z) {
                    s3.n(PrefEditor.v, "mYpipAlpha");
                    s3.n(PrefEditor.w, "mYpipColor");
                    s3.m("mYpipPos", PrefEditor.x);
                } else {
                    s3.q("mYpipAlpha");
                    s3.q("mYpipColor");
                    s3.q("mYpipPos");
                }
                s3.a();
                DialogEditorText.EditorSetListener editorSetListener3 = this.f0;
                if (editorSetListener3 != null) {
                    editorSetListener3.a(0, null);
                }
            }
        } else if (i == 4) {
            if (PrefRead.W != this.t0 || PrefRead.X != this.u0 || Float.compare(PrefRead.Y, this.w0) != 0) {
                PrefRead.W = this.t0;
                PrefRead.X = this.u0;
                PrefRead.Y = this.w0;
                PrefRead r = PrefRead.r(this.d0, false);
                if (z) {
                    r.n(PrefRead.W, "mReadAlpha");
                    r.n(PrefRead.X, "mReadColor");
                    r.m("mReadPos", PrefRead.Y);
                } else {
                    r.q("mReadAlpha");
                    r.q("mReadColor");
                    r.q("mReadPos");
                }
                r.a();
                DialogEditorText.EditorSetListener editorSetListener4 = this.f0;
                if (editorSetListener4 != null) {
                    editorSetListener4.a(0, null);
                }
            }
        } else if (i == 5) {
            if (PrefEditor.A != this.t0 || PrefEditor.B != this.u0 || Float.compare(PrefEditor.C, this.w0) != 0) {
                PrefEditor.A = this.t0;
                PrefEditor.B = this.u0;
                PrefEditor.C = this.w0;
                PrefEditor.D = this.v0;
                PrefEditor s4 = PrefEditor.s(this.d0);
                if (z) {
                    s4.n(PrefEditor.A, "mScrFilAlpha");
                    s4.n(PrefEditor.B, "mScrFilColor");
                    s4.m("mScrFilPos", PrefEditor.C);
                } else {
                    s4.q("mScrFilAlpha");
                    s4.q("mScrFilColor");
                    s4.q("mScrFilPos");
                }
                s4.a();
                DialogEditorText.EditorSetListener editorSetListener5 = this.f0;
                if (editorSetListener5 != null) {
                    editorSetListener5.a(PrefEditor.D, null);
                }
            }
        } else if (i == 6) {
            if (PrefEditor.E != this.t0 || PrefEditor.F != this.u0 || Float.compare(PrefEditor.G, this.w0) != 0) {
                PrefEditor.E = this.t0;
                PrefEditor.F = this.u0;
                PrefEditor.G = this.w0;
                PrefEditor.H = this.v0;
                PrefEditor s5 = PrefEditor.s(this.d0);
                if (z) {
                    s5.n(PrefEditor.E, "mGridAlpha");
                    s5.n(PrefEditor.F, "mGridColor");
                    s5.m("mGridPos", PrefEditor.G);
                } else {
                    s5.q("mGridAlpha");
                    s5.q("mGridColor");
                    s5.q("mGridPos");
                }
                s5.a();
                DialogEditorText.EditorSetListener editorSetListener6 = this.f0;
                if (editorSetListener6 != null) {
                    editorSetListener6.a(0, null);
                }
            }
        } else if (i == 7) {
            if (PrefEditor.K != this.t0 || PrefEditor.L != this.u0 || Float.compare(PrefEditor.M, this.w0) != 0) {
                PrefEditor.K = this.t0;
                PrefEditor.L = this.u0;
                PrefEditor.M = this.w0;
                PrefEditor.N = this.v0;
                PrefEditor s6 = PrefEditor.s(this.d0);
                if (z) {
                    s6.n(PrefEditor.K, "mNewsAlpha");
                    s6.n(PrefEditor.L, "mNewsColor");
                    s6.m("mNewsPos", PrefEditor.M);
                } else {
                    s6.q("mNewsAlpha");
                    s6.q("mNewsColor");
                    s6.q("mNewsPos");
                }
                s6.a();
                DialogEditorText.EditorSetListener editorSetListener7 = this.f0;
                if (editorSetListener7 != null) {
                    editorSetListener7.a(0, null);
                }
            }
        } else if (i == 8) {
            if (PrefEditor.O != this.t0 || PrefEditor.P != this.u0 || Float.compare(PrefEditor.Q, this.w0) != 0) {
                PrefEditor.O = this.t0;
                PrefEditor.P = this.u0;
                PrefEditor.Q = this.w0;
                PrefEditor.R = this.v0;
                PrefEditor s7 = PrefEditor.s(this.d0);
                if (z) {
                    s7.n(PrefEditor.O, "mHandAlpha");
                    s7.n(PrefEditor.P, "mHandColor");
                    s7.m("mHandPos", PrefEditor.Q);
                } else {
                    s7.q("mHandAlpha");
                    s7.q("mHandColor");
                    s7.q("mHandPos");
                }
                s7.a();
                DialogEditorText.EditorSetListener editorSetListener8 = this.f0;
                if (editorSetListener8 != null) {
                    editorSetListener8.a(0, null);
                }
            }
        } else if (i == 9) {
            if (PrefEditor.S != this.t0 || PrefEditor.T != this.u0 || Float.compare(PrefEditor.U, this.w0) != 0) {
                PrefEditor.S = this.t0;
                PrefEditor.T = this.u0;
                PrefEditor.U = this.w0;
                PrefEditor.V = this.v0;
                PrefEditor s8 = PrefEditor.s(this.d0);
                if (z) {
                    s8.n(PrefEditor.S, "mPassAlpha");
                    s8.n(PrefEditor.T, "mPassColor");
                    s8.m("mPassPos", PrefEditor.U);
                } else {
                    s8.q("mPassAlpha");
                    s8.q("mPassColor");
                    s8.q("mPassPos");
                }
                s8.a();
                DialogEditorText.EditorSetListener editorSetListener9 = this.f0;
                if (editorSetListener9 != null) {
                    editorSetListener9.a(0, null);
                }
            }
        } else if (i == 10) {
            if (PrefEditor.W != this.t0 || PrefEditor.X != this.u0 || Float.compare(PrefEditor.Y, this.w0) != 0) {
                PrefEditor.W = this.t0;
                PrefEditor.X = this.u0;
                PrefEditor.Y = this.w0;
                PrefEditor.Z = this.v0;
                PrefEditor s9 = PrefEditor.s(this.d0);
                if (z) {
                    s9.n(PrefEditor.W, "mTrnsAlpha");
                    s9.n(PrefEditor.X, "mTrnsColor");
                    s9.m("mTrnsPos", PrefEditor.Y);
                } else {
                    s9.q("mTrnsAlpha");
                    s9.q("mTrnsColor");
                    s9.q("mTrnsPos");
                }
                s9.a();
                DialogEditorText.EditorSetListener editorSetListener10 = this.f0;
                if (editorSetListener10 != null) {
                    editorSetListener10.a(0, null);
                }
            }
        } else if (i == 11) {
            if (PrefFloat.p != this.t0 || PrefFloat.q != this.u0 || Float.compare(PrefFloat.r, this.w0) != 0) {
                PrefFloat.p = this.t0;
                PrefFloat.q = this.u0;
                PrefFloat.r = this.w0;
                PrefFloat.s = this.v0;
                PrefFloat r2 = PrefFloat.r(this.d0);
                if (z) {
                    r2.n(PrefFloat.p, "mFlt1Alpha");
                    r2.n(PrefFloat.q, "mFlt1Color");
                    r2.m("mFlt1Pos", PrefFloat.r);
                } else {
                    r2.q("mFlt1Alpha");
                    r2.q("mFlt1Color");
                    r2.q("mFlt1Pos");
                }
                r2.a();
                DialogEditorText.EditorSetListener editorSetListener11 = this.f0;
                if (editorSetListener11 != null) {
                    editorSetListener11.a(0, null);
                }
            }
        } else if (i == 12) {
            if (PrefFloat.t != this.t0 || PrefFloat.u != this.u0 || Float.compare(PrefFloat.v, this.w0) != 0) {
                PrefFloat.t = this.t0;
                PrefFloat.u = this.u0;
                PrefFloat.v = this.w0;
                PrefFloat.w = this.v0;
                PrefFloat r3 = PrefFloat.r(this.d0);
                if (z) {
                    r3.n(PrefFloat.t, "mFlt2Alpha");
                    r3.n(PrefFloat.u, "mFlt2Color");
                    r3.m("mFlt2Pos", PrefFloat.v);
                } else {
                    r3.q("mFlt2Alpha");
                    r3.q("mFlt2Color");
                    r3.q("mFlt2Pos");
                }
                r3.a();
                DialogEditorText.EditorSetListener editorSetListener12 = this.f0;
                if (editorSetListener12 != null) {
                    editorSetListener12.a(0, null);
                }
            }
        } else if (i == 13) {
            if (PrefFloat.x != this.t0 || PrefFloat.y != this.u0 || Float.compare(PrefFloat.z, this.w0) != 0) {
                PrefFloat.x = this.t0;
                PrefFloat.y = this.u0;
                PrefFloat.z = this.w0;
                PrefFloat.A = this.v0;
                PrefFloat r4 = PrefFloat.r(this.d0);
                if (z) {
                    r4.n(PrefFloat.x, "mFlt3Alpha");
                    r4.n(PrefFloat.y, "mFlt3Color");
                    r4.m("mFlt3Pos", PrefFloat.z);
                } else {
                    r4.q("mFlt3Alpha");
                    r4.q("mFlt3Color");
                    r4.q("mFlt3Pos");
                }
                r4.a();
                DialogEditorText.EditorSetListener editorSetListener13 = this.f0;
                if (editorSetListener13 != null) {
                    editorSetListener13.a(0, null);
                }
            }
        } else if (PrefEditor.j != this.t0 || PrefEditor.k != this.u0 || Float.compare(PrefEditor.l, this.w0) != 0) {
            PrefEditor.j = this.t0;
            PrefEditor.k = this.u0;
            PrefEditor.l = this.w0;
            PrefEditor.m = this.v0;
            PrefEditor s10 = PrefEditor.s(this.d0);
            if (z) {
                s10.n(PrefEditor.j, "mIconAlpha");
                s10.n(PrefEditor.k, "mIconColor");
                s10.m("mIconPos", PrefEditor.l);
            } else {
                s10.q("mIconAlpha");
                s10.q("mIconColor");
                s10.q("mIconPos");
            }
            s10.a();
            DialogEditorText.EditorSetListener editorSetListener14 = this.f0;
            if (editorSetListener14 != null) {
                editorSetListener14.a(0, null);
            }
        }
        if (z) {
            dismiss();
        }
    }

    public final void E() {
        if (this.h0 != null) {
            int i = this.e0;
            if (i == 5) {
                int o1 = MainUtil.o1(this.u0, this.t0);
                this.v0 = o1;
                this.h0.setFilterColor(o1);
            } else {
                int r = PrefEditor.r(this.u0, this.t0);
                this.v0 = r;
                MyButtonImage myButtonImage = this.i0;
                if (myButtonImage != null) {
                    myButtonImage.setBgNorColor(r);
                }
            }
            DialogSeekAudio.DialogSeekListener dialogSeekListener = this.g0;
            if (dialogSeekListener != null) {
                dialogSeekListener.a(this.v0);
            }
            if (this.o0 != null) {
                if (i == 4) {
                    int length = MainConst.r.length;
                    for (int i2 = 0; i2 < length; i2++) {
                        if (this.u0 == MainConst.r[i2]) {
                            this.o0[i2].q(true, true);
                        } else {
                            this.o0[i2].q(false, true);
                        }
                    }
                    return;
                }
                int length2 = MainConst.q.length;
                for (int i3 = 0; i3 < length2; i3++) {
                    if (this.u0 == MainConst.q[i3]) {
                        this.o0[i3].q(true, true);
                    } else {
                        this.o0[i3].q(false, true);
                    }
                }
            }
        }
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.d0 == null) {
            return;
        }
        C();
        MyButtonImage myButtonImage = this.i0;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.i0 = null;
        }
        MyButtonImage myButtonImage2 = this.m0;
        if (myButtonImage2 != null) {
            myButtonImage2.j();
            this.m0 = null;
        }
        MyButtonImage myButtonImage3 = this.n0;
        if (myButtonImage3 != null) {
            myButtonImage3.j();
            this.n0 = null;
        }
        MyButtonCheck[] myButtonCheckArr = this.o0;
        if (myButtonCheckArr != null) {
            int length = myButtonCheckArr.length;
            for (int i = 0; i < length; i++) {
                MyButtonCheck myButtonCheck = this.o0[i];
                if (myButtonCheck != null) {
                    myButtonCheck.l();
                    this.o0[i] = null;
                }
            }
            this.o0 = null;
        }
        MyPaletteView myPaletteView = this.p0;
        if (myPaletteView != null) {
            myPaletteView.a();
            this.p0 = null;
        }
        MyLineText myLineText = this.r0;
        if (myLineText != null) {
            myLineText.u();
            this.r0 = null;
        }
        this.c0 = null;
        this.d0 = null;
        this.f0 = null;
        this.g0 = null;
        this.j0 = null;
        this.k0 = null;
        this.l0 = null;
        this.q0 = null;
        MyDialogLinear myDialogLinear = this.h0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.h0 = null;
        }
        super.dismiss();
    }
}
