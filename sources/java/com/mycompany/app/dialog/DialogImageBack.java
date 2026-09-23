package com.mycompany.app.dialog;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.mycompany.app.dialog.DialogSetImage;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefImage;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonCheck;
import com.mycompany.app.view.MyButtonRelative;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyPaletteView;

/* loaded from: classes3.dex */
public class DialogImageBack extends MyDialogBottom {
    public Context a0;
    public DialogSetImage.ChangedListener b0;
    public LinearLayout c0;
    public MyDialogLinear d0;
    public MyButtonRelative e0;
    public ImageView f0;
    public MyButtonCheck[] g0;
    public MyPaletteView h0;
    public MyLineText i0;
    public Bitmap j0;
    public int k0;
    public float l0;
    public int m0;

    /* renamed from: com.mycompany.app.dialog.DialogImageBack$4, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass4 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* renamed from: com.mycompany.app.dialog.DialogImageBack$5, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass5 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    public DialogImageBack(Activity activity, Bitmap bitmap, DialogSetImage.ChangedListener changedListener) {
        super(activity);
        this.a0 = getContext();
        this.b0 = changedListener;
        this.j0 = bitmap;
        this.k0 = PrefImage.B;
        this.l0 = PrefImage.C;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogImageBack.1
            @Override // java.lang.Runnable
            public final void run() {
                final DialogImageBack dialogImageBack = DialogImageBack.this;
                Context context = dialogImageBack.a0;
                if (context != null) {
                    LinearLayout linearLayout = new LinearLayout(context);
                    linearLayout.setOrientation(1);
                    View view = new View(context);
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0);
                    layoutParams.weight = 1.0f;
                    linearLayout.addView(view, layoutParams);
                    int G = (int) MainUtil.G(context, 80.0f);
                    MyButtonRelative myButtonRelative = new MyButtonRelative(context);
                    myButtonRelative.e(MainApp.F1, false);
                    LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(G, G);
                    layoutParams2.gravity = 1;
                    layoutParams2.bottomMargin = MainApp.E1;
                    linearLayout.addView(myButtonRelative, layoutParams2);
                    ImageView imageView = new ImageView(context);
                    imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
                    int i = MainApp.i1;
                    RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(i, i);
                    layoutParams3.addRule(13);
                    myButtonRelative.addView(imageView, layoutParams3);
                    MyDialogLinear myDialogLinear = new MyDialogLinear(context);
                    myDialogLinear.setOrientation(1);
                    linearLayout.addView(myDialogLinear, -1, -2);
                    LinearLayout linearLayout2 = new LinearLayout(context);
                    int i2 = MainApp.E1;
                    linearLayout2.setPadding(i2, i2, i2, 0);
                    linearLayout2.setBaselineAligned(false);
                    linearLayout2.setOrientation(0);
                    myDialogLinear.addView(linearLayout2, -1, -2);
                    MyButtonCheck myButtonCheck = new MyButtonCheck(context);
                    myButtonCheck.setBgNorRadius(MainApp.E1);
                    int i3 = MainApp.f1;
                    View c2 = com.google.android.gms.internal.mlkit_vision_text_common.a.c(linearLayout2, myButtonCheck, i3, i3, context);
                    LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(0, 0);
                    layoutParams4.weight = 1.0f;
                    MyButtonCheck f = a.f(linearLayout2, c2, layoutParams4, context);
                    f.setBgNorRadius(MainApp.E1);
                    int i4 = MainApp.f1;
                    View c3 = com.google.android.gms.internal.mlkit_vision_text_common.a.c(linearLayout2, f, i4, i4, context);
                    LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(0, 0);
                    layoutParams5.weight = 1.0f;
                    MyButtonCheck f2 = a.f(linearLayout2, c3, layoutParams5, context);
                    f2.setBgNorRadius(MainApp.E1);
                    int i5 = MainApp.f1;
                    View c4 = com.google.android.gms.internal.mlkit_vision_text_common.a.c(linearLayout2, f2, i5, i5, context);
                    LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(0, 0);
                    layoutParams6.weight = 1.0f;
                    MyButtonCheck f3 = a.f(linearLayout2, c4, layoutParams6, context);
                    f3.setBgNorRadius(MainApp.E1);
                    int i6 = MainApp.f1;
                    View c5 = com.google.android.gms.internal.mlkit_vision_text_common.a.c(linearLayout2, f3, i6, i6, context);
                    LinearLayout.LayoutParams layoutParams7 = new LinearLayout.LayoutParams(0, 0);
                    layoutParams7.weight = 1.0f;
                    MyButtonCheck f4 = a.f(linearLayout2, c5, layoutParams7, context);
                    f4.setBgNorRadius(MainApp.E1);
                    int i7 = MainApp.f1;
                    View c6 = com.google.android.gms.internal.mlkit_vision_text_common.a.c(linearLayout2, f4, i7, i7, context);
                    LinearLayout.LayoutParams layoutParams8 = new LinearLayout.LayoutParams(0, 0);
                    layoutParams8.weight = 1.0f;
                    MyButtonCheck f5 = a.f(linearLayout2, c6, layoutParams8, context);
                    f5.setBgNorRadius(MainApp.E1);
                    int i8 = MainApp.f1;
                    linearLayout2.addView(f5, i8, i8);
                    MyPaletteView myPaletteView = new MyPaletteView(context);
                    LinearLayout.LayoutParams layoutParams9 = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams9.gravity = 1;
                    layoutParams9.topMargin = MainApp.G1;
                    myDialogLinear.addView(myPaletteView, layoutParams9);
                    MyLineText myLineText = new MyLineText(context);
                    myLineText.setGravity(17);
                    myLineText.setTextSize(1, 16.0f);
                    myLineText.setText(R.string.apply);
                    myLineText.setLinePad(MainApp.E1);
                    myLineText.setLineUp(true);
                    myDialogLinear.addView(myLineText, -1, MainApp.g1);
                    dialogImageBack.c0 = linearLayout;
                    dialogImageBack.d0 = myDialogLinear;
                    dialogImageBack.e0 = myButtonRelative;
                    dialogImageBack.f0 = imageView;
                    dialogImageBack.h0 = myPaletteView;
                    dialogImageBack.i0 = myLineText;
                    MyButtonCheck[] myButtonCheckArr = new MyButtonCheck[MainConst.v.length];
                    dialogImageBack.g0 = myButtonCheckArr;
                    myButtonCheckArr[0] = myButtonCheck;
                    myButtonCheckArr[1] = f;
                    myButtonCheckArr[2] = f2;
                    myButtonCheckArr[3] = f3;
                    myButtonCheckArr[4] = f4;
                    myButtonCheckArr[5] = f5;
                    Handler handler2 = dialogImageBack.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogImageBack.2
                        /* JADX WARN: Multi-variable type inference failed */
                        /* JADX WARN: Type inference failed for: r2v10, types: [android.view.View$OnClickListener, java.lang.Object] */
                        /* JADX WARN: Type inference failed for: r2v8, types: [android.view.View$OnClickListener, java.lang.Object] */
                        @Override // java.lang.Runnable
                        public final void run() {
                            int i9;
                            final DialogImageBack dialogImageBack2 = DialogImageBack.this;
                            Bitmap bitmap2 = dialogImageBack2.j0;
                            dialogImageBack2.j0 = null;
                            if (dialogImageBack2.c0 != null && dialogImageBack2.a0 != null) {
                                if (MainApp.K1) {
                                    dialogImageBack2.i0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogImageBack2.i0.setTextColor(-328966);
                                } else {
                                    dialogImageBack2.i0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogImageBack2.i0.setTextColor(-14784824);
                                }
                                if (dialogImageBack2.f0 != null) {
                                    if (MainUtil.f6(bitmap2)) {
                                        dialogImageBack2.f0.setImageBitmap(bitmap2);
                                    } else {
                                        if (dialogImageBack2.l0 > 0.2f) {
                                            i9 = R.drawable.outline_error_dark_web_48;
                                        } else {
                                            i9 = R.drawable.outline_error_black_web_48;
                                        }
                                        dialogImageBack2.m0 = i9;
                                        dialogImageBack2.f0.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                                        dialogImageBack2.f0.setImageResource(dialogImageBack2.m0);
                                    }
                                }
                                dialogImageBack2.c0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogImageBack.3
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view2) {
                                        DialogImageBack.this.dismiss();
                                    }
                                });
                                dialogImageBack2.d0.setOnClickListener(new Object());
                                dialogImageBack2.e0.setBgNorColor(dialogImageBack2.k0);
                                dialogImageBack2.e0.setOnClickListener(new Object());
                                final int length = MainConst.v.length;
                                for (final int i10 = 0; i10 < length; i10++) {
                                    int i11 = MainConst.v[i10];
                                    dialogImageBack2.g0[i10].m(i11, i11);
                                    dialogImageBack2.g0[i10].n(-12632257, MainApp.n1);
                                    if (i10 <= 1) {
                                        dialogImageBack2.g0[i10].p(R.drawable.outline_check_black_24, 0);
                                    } else {
                                        dialogImageBack2.g0[i10].p(R.drawable.outline_check_white_24, 0);
                                    }
                                    if (dialogImageBack2.k0 == i11) {
                                        dialogImageBack2.g0[i10].q(true, false);
                                    } else {
                                        dialogImageBack2.g0[i10].q(false, false);
                                    }
                                    dialogImageBack2.g0[i10].setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogImageBack.6
                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view2) {
                                            DialogImageBack dialogImageBack3 = DialogImageBack.this;
                                            if (dialogImageBack3.h0 != null) {
                                                int i12 = i10;
                                                if (i12 < 0) {
                                                    i12 = 0;
                                                } else {
                                                    int i13 = length;
                                                    if (i12 > i13 - 1) {
                                                        i12 = i13 - 1;
                                                    }
                                                }
                                                int i14 = MainConst.v[i12];
                                                float f6 = MainConst.w[i12];
                                                if (dialogImageBack3.k0 == i14 && Float.compare(dialogImageBack3.l0, f6) == 0) {
                                                    return;
                                                }
                                                dialogImageBack3.k0 = i14;
                                                dialogImageBack3.l0 = f6;
                                                DialogImageBack.B(dialogImageBack3);
                                                dialogImageBack3.h0.b(dialogImageBack3.l0, dialogImageBack3.k0);
                                            }
                                        }
                                    });
                                }
                                dialogImageBack2.h0.setType(3);
                                dialogImageBack2.h0.setListener(new MyPaletteView.PaletteListener() { // from class: com.mycompany.app.dialog.DialogImageBack.7
                                    @Override // com.mycompany.app.view.MyPaletteView.PaletteListener
                                    public final void a(float f6, int i12) {
                                        DialogImageBack dialogImageBack3 = DialogImageBack.this;
                                        if (dialogImageBack3.k0 == i12 && Float.compare(dialogImageBack3.l0, f6) == 0) {
                                            return;
                                        }
                                        dialogImageBack3.k0 = i12;
                                        dialogImageBack3.l0 = f6;
                                        DialogImageBack.B(dialogImageBack3);
                                    }
                                });
                                dialogImageBack2.h0.b(dialogImageBack2.l0, dialogImageBack2.k0);
                                dialogImageBack2.i0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogImageBack.8
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view2) {
                                        boolean z;
                                        DialogSetImage.ChangedListener changedListener2;
                                        int i12 = PrefImage.B;
                                        DialogImageBack dialogImageBack3 = DialogImageBack.this;
                                        if (i12 != dialogImageBack3.k0) {
                                            z = true;
                                        } else {
                                            z = false;
                                        }
                                        if (z || Float.compare(PrefImage.C, dialogImageBack3.l0) != 0) {
                                            PrefImage.B = dialogImageBack3.k0;
                                            PrefImage.C = dialogImageBack3.l0;
                                            PrefImage r = PrefImage.r(dialogImageBack3.a0, false);
                                            r.n(PrefImage.B, "mBackColor");
                                            r.m("mBackPos", PrefImage.C);
                                            r.a();
                                            if (z && (changedListener2 = dialogImageBack3.b0) != null) {
                                                changedListener2.a();
                                            }
                                        }
                                        dialogImageBack3.dismiss();
                                    }
                                });
                                dialogImageBack2.f(dialogImageBack2.c0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogImageBack.9
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view2) {
                                        DialogImageBack dialogImageBack3 = DialogImageBack.this;
                                        if (dialogImageBack3.c0 == null) {
                                            return;
                                        }
                                        dialogImageBack3.show();
                                    }
                                });
                            }
                        }
                    });
                }
            }
        });
    }

    public static void B(DialogImageBack dialogImageBack) {
        int i;
        if (dialogImageBack.g0 == null) {
            return;
        }
        int length = MainConst.v.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (dialogImageBack.k0 == MainConst.v[i2]) {
                dialogImageBack.g0[i2].q(true, true);
            } else {
                dialogImageBack.g0[i2].q(false, true);
            }
        }
        int i3 = dialogImageBack.m0;
        if (i3 != 0) {
            if (dialogImageBack.l0 > 0.2f) {
                i = R.drawable.outline_error_dark_web_48;
            } else {
                i = R.drawable.outline_error_black_web_48;
            }
            if (i3 != i) {
                dialogImageBack.m0 = i;
                dialogImageBack.f0.setImageResource(i);
            }
        }
        dialogImageBack.e0.setBgNorColor(dialogImageBack.k0);
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
        MyButtonRelative myButtonRelative = this.e0;
        if (myButtonRelative != null) {
            myButtonRelative.f();
            this.e0 = null;
        }
        MyButtonCheck[] myButtonCheckArr = this.g0;
        if (myButtonCheckArr != null) {
            int length = myButtonCheckArr.length;
            for (int i = 0; i < length; i++) {
                MyButtonCheck myButtonCheck = this.g0[i];
                if (myButtonCheck != null) {
                    myButtonCheck.l();
                    this.g0[i] = null;
                }
            }
            this.g0 = null;
        }
        MyPaletteView myPaletteView = this.h0;
        if (myPaletteView != null) {
            myPaletteView.a();
            this.h0 = null;
        }
        MyLineText myLineText = this.i0;
        if (myLineText != null) {
            myLineText.u();
            this.i0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.c0 = null;
        this.f0 = null;
        super.dismiss();
    }
}
