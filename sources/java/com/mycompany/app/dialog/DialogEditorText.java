package com.mycompany.app.dialog;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.mycompany.app.editor.EditorActivity;
import com.mycompany.app.help.KeyHelper;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefRead;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonCheck;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogRelative;
import com.mycompany.app.view.MyEditPure;
import com.mycompany.app.view.MyKeypadDialog;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyPaletteView;

/* loaded from: classes3.dex */
public class DialogEditorText extends MyDialogBottom {
    public static final int[] m0;
    public EditorActivity a0;
    public Context b0;
    public EditorSetListener c0;
    public MyKeypadDialog d0;
    public FrameLayout e0;
    public MyEditPure f0;
    public MyButtonCheck[] g0;
    public MyPaletteView h0;
    public MyLineText i0;
    public String j0;
    public int k0;
    public float l0;

    /* renamed from: com.mycompany.app.dialog.DialogEditorText$4, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass4 implements View.OnClickListener {
        public AnonymousClass4() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            MyEditPure myEditPure = DialogEditorText.this.f0;
            if (myEditPure == null) {
                return;
            }
            myEditPure.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditorText.4.1
                @Override // java.lang.Runnable
                public final void run() {
                    DialogEditorText dialogEditorText = DialogEditorText.this;
                    MyEditPure myEditPure2 = dialogEditorText.f0;
                    if (myEditPure2 == null) {
                        return;
                    }
                    myEditPure2.requestFocus();
                    dialogEditorText.f0.postDelayed(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditorText.4.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            MyEditPure myEditPure3;
                            DialogEditorText dialogEditorText2 = DialogEditorText.this;
                            Context context = dialogEditorText2.b0;
                            if (context != null && (myEditPure3 = dialogEditorText2.f0) != null) {
                                MainUtil.c8(context, myEditPure3);
                            }
                        }
                    }, 200L);
                }
            });
        }
    }

    /* loaded from: classes3.dex */
    public interface EditorSetListener {
        void a(int i, String str);
    }

    static {
        int i = R.drawable.outline_check_black_24;
        int i2 = R.drawable.outline_check_white_24;
        m0 = new int[]{i, i2, i2, i, i, i2, i2, i2};
    }

    public DialogEditorText(EditorActivity editorActivity, String str, int i, EditorSetListener editorSetListener) {
        super(editorActivity);
        this.w = 0;
        this.a0 = editorActivity;
        this.b0 = getContext();
        this.c0 = editorSetListener;
        this.j0 = str;
        if (i == 0) {
            this.k0 = PrefRead.U;
            this.l0 = PrefRead.V;
        } else {
            this.k0 = i;
            this.l0 = -1.0f;
        }
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditorText.1
            @Override // java.lang.Runnable
            public final void run() {
                DialogEditorText.B(DialogEditorText.this);
            }
        });
    }

    /* JADX WARN: Type inference failed for: r3v0, types: [com.mycompany.app.view.MyDialogRelative, com.mycompany.app.view.MyKeypadDialog, android.view.ViewGroup] */
    public static void B(DialogEditorText dialogEditorText) {
        Context context = dialogEditorText.b0;
        if (context != null) {
            int i = R.id.item_color_view;
            ?? myDialogRelative = new MyDialogRelative(context);
            myDialogRelative.r = (int) MainUtil.G(context, 150.0f);
            FrameLayout frameLayout = new FrameLayout(context);
            frameLayout.setPadding(MainApp.E1, MainApp.F1, MainApp.E1, MainApp.F1);
            myDialogRelative.addView(frameLayout, androidx.work.impl.workers.a.h(-1, -1, 2, i));
            MyEditPure myEditPure = new MyEditPure(context);
            int i2 = MainApp.F1;
            myEditPure.setPadding(i2, i2, i2, i2);
            myEditPure.setTextDirection(3);
            myEditPure.setTextSize(1, 24.0f);
            myEditPure.setTextColor(-1);
            if (Build.VERSION.SDK_INT >= 29) {
                myEditPure.setTextCursorDrawable(R.drawable.edit_cursor);
            }
            myEditPure.setImeOptions(268435456);
            myEditPure.setBackgroundResource(R.drawable.text_border);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
            layoutParams.gravity = 17;
            frameLayout.addView(myEditPure, layoutParams);
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setId(i);
            linearLayout.setPadding(0, MainApp.F1, 0, MainApp.G1);
            linearLayout.setOrientation(1);
            linearLayout.setBackgroundColor(-1593835520);
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
            layoutParams2.addRule(12);
            layoutParams2.bottomMargin = MainApp.g1;
            myDialogRelative.addView(linearLayout, layoutParams2);
            LinearLayout linearLayout2 = new LinearLayout(context);
            int i3 = MainApp.E1;
            linearLayout2.setPadding(i3, 0, i3, 0);
            linearLayout2.setBaselineAligned(false);
            linearLayout2.setOrientation(0);
            linearLayout.addView(linearLayout2, -1, -2);
            MyButtonCheck myButtonCheck = new MyButtonCheck(context);
            myButtonCheck.setBgNorRadius(MainApp.E1);
            int i4 = MainApp.f1;
            View c2 = com.google.android.gms.internal.mlkit_vision_text_common.a.c(linearLayout2, myButtonCheck, i4, i4, context);
            LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(0, 0);
            layoutParams3.weight = 1.0f;
            MyButtonCheck f = a.f(linearLayout2, c2, layoutParams3, context);
            f.setBgNorRadius(MainApp.E1);
            int i5 = MainApp.f1;
            View c3 = com.google.android.gms.internal.mlkit_vision_text_common.a.c(linearLayout2, f, i5, i5, context);
            LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(0, 0);
            layoutParams4.weight = 1.0f;
            MyButtonCheck f2 = a.f(linearLayout2, c3, layoutParams4, context);
            f2.setBgNorRadius(MainApp.E1);
            int i6 = MainApp.f1;
            View c4 = com.google.android.gms.internal.mlkit_vision_text_common.a.c(linearLayout2, f2, i6, i6, context);
            LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(0, 0);
            layoutParams5.weight = 1.0f;
            MyButtonCheck f3 = a.f(linearLayout2, c4, layoutParams5, context);
            f3.setBgNorRadius(MainApp.E1);
            int i7 = MainApp.f1;
            View c5 = com.google.android.gms.internal.mlkit_vision_text_common.a.c(linearLayout2, f3, i7, i7, context);
            LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(0, 0);
            layoutParams6.weight = 1.0f;
            MyButtonCheck f4 = a.f(linearLayout2, c5, layoutParams6, context);
            f4.setBgNorRadius(MainApp.E1);
            int i8 = MainApp.f1;
            View c6 = com.google.android.gms.internal.mlkit_vision_text_common.a.c(linearLayout2, f4, i8, i8, context);
            LinearLayout.LayoutParams layoutParams7 = new LinearLayout.LayoutParams(0, 0);
            layoutParams7.weight = 1.0f;
            MyButtonCheck f5 = a.f(linearLayout2, c6, layoutParams7, context);
            f5.setBgNorRadius(MainApp.E1);
            int i9 = MainApp.f1;
            View c7 = com.google.android.gms.internal.mlkit_vision_text_common.a.c(linearLayout2, f5, i9, i9, context);
            LinearLayout.LayoutParams layoutParams8 = new LinearLayout.LayoutParams(0, 0);
            layoutParams8.weight = 1.0f;
            MyButtonCheck f6 = a.f(linearLayout2, c7, layoutParams8, context);
            f6.setBgNorRadius(MainApp.E1);
            int i10 = MainApp.f1;
            View c8 = com.google.android.gms.internal.mlkit_vision_text_common.a.c(linearLayout2, f6, i10, i10, context);
            LinearLayout.LayoutParams layoutParams9 = new LinearLayout.LayoutParams(0, 0);
            layoutParams9.weight = 1.0f;
            MyButtonCheck f7 = a.f(linearLayout2, c8, layoutParams9, context);
            f7.setBgNorRadius(MainApp.E1);
            int i11 = MainApp.f1;
            linearLayout2.addView(f7, i11, i11);
            MyPaletteView myPaletteView = new MyPaletteView(context);
            LinearLayout.LayoutParams layoutParams10 = new LinearLayout.LayoutParams(-2, -2);
            layoutParams10.gravity = 1;
            layoutParams10.topMargin = MainApp.G1;
            linearLayout.addView(myPaletteView, layoutParams10);
            MyLineText myLineText = new MyLineText(context);
            myLineText.setGravity(17);
            myLineText.setTextSize(1, 16.0f);
            myLineText.setTextColor(-1);
            myLineText.setText(R.string.apply);
            myLineText.setBackgroundResource(R.drawable.selector_view);
            myLineText.setLinePad(MainApp.E1);
            myLineText.setLineUp(true);
            RelativeLayout.LayoutParams layoutParams11 = new RelativeLayout.LayoutParams(-1, MainApp.g1);
            layoutParams11.addRule(12);
            myDialogRelative.addView(myLineText, layoutParams11);
            dialogEditorText.d0 = myDialogRelative;
            dialogEditorText.e0 = frameLayout;
            dialogEditorText.f0 = myEditPure;
            dialogEditorText.h0 = myPaletteView;
            dialogEditorText.i0 = myLineText;
            MyButtonCheck[] myButtonCheckArr = new MyButtonCheck[MainConst.o.length];
            dialogEditorText.g0 = myButtonCheckArr;
            myButtonCheckArr[0] = myButtonCheck;
            myButtonCheckArr[1] = f;
            myButtonCheckArr[2] = f2;
            myButtonCheckArr[3] = f3;
            myButtonCheckArr[4] = f4;
            myButtonCheckArr[5] = f5;
            myButtonCheckArr[6] = f6;
            myButtonCheckArr[7] = f7;
            Handler handler = dialogEditorText.i;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditorText.2
                @Override // java.lang.Runnable
                public final void run() {
                    final DialogEditorText dialogEditorText2 = DialogEditorText.this;
                    MyKeypadDialog myKeypadDialog = dialogEditorText2.d0;
                    if (myKeypadDialog != null && dialogEditorText2.b0 != null) {
                        myKeypadDialog.setBackgroundColor(-1593835520);
                        MyKeypadDialog myKeypadDialog2 = dialogEditorText2.d0;
                        EditorActivity editorActivity = dialogEditorText2.a0;
                        KeyHelper.KeyHelperListener keyHelperListener = new KeyHelper.KeyHelperListener() { // from class: com.mycompany.app.dialog.DialogEditorText.3
                            @Override // com.mycompany.app.help.KeyHelper.KeyHelperListener
                            public final void a() {
                            }

                            @Override // com.mycompany.app.help.KeyHelper.KeyHelperListener
                            public final void b(boolean z) {
                                Handler handler2;
                                if (z || (handler2 = DialogEditorText.this.i) == null) {
                                    return;
                                }
                                handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditorText.3.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        DialogEditorText.this.dismiss();
                                    }
                                });
                            }
                        };
                        myKeypadDialog2.s = editorActivity;
                        myKeypadDialog2.t = keyHelperListener;
                        dialogEditorText2.e0.setOnClickListener(new AnonymousClass4());
                        if (!TextUtils.isEmpty(dialogEditorText2.j0)) {
                            dialogEditorText2.f0.setText(dialogEditorText2.j0);
                        }
                        dialogEditorText2.f0.setSelectAllOnFocus(true);
                        dialogEditorText2.f0.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditorText.5
                            @Override // java.lang.Runnable
                            public final void run() {
                                DialogEditorText dialogEditorText3 = DialogEditorText.this;
                                MyEditPure myEditPure2 = dialogEditorText3.f0;
                                if (myEditPure2 == null) {
                                    return;
                                }
                                myEditPure2.requestFocus();
                                dialogEditorText3.f0.postDelayed(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditorText.5.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        MyEditPure myEditPure3;
                                        DialogEditorText dialogEditorText4 = DialogEditorText.this;
                                        Context context2 = dialogEditorText4.b0;
                                        if (context2 != null && (myEditPure3 = dialogEditorText4.f0) != null) {
                                            MainUtil.c8(context2, myEditPure3);
                                        }
                                    }
                                }, 200L);
                            }
                        });
                        final int length = MainConst.o.length;
                        for (final int i12 = 0; i12 < length; i12++) {
                            MyButtonCheck myButtonCheck2 = dialogEditorText2.g0[i12];
                            int i13 = MainConst.o[i12];
                            myButtonCheck2.m(i13, i13);
                            dialogEditorText2.g0[i12].n(-12632257, MainApp.n1);
                            dialogEditorText2.g0[i12].p(DialogEditorText.m0[i12], 0);
                            dialogEditorText2.g0[i12].setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogEditorText.6
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view) {
                                    DialogEditorText dialogEditorText3 = DialogEditorText.this;
                                    if (dialogEditorText3.h0 == null) {
                                        return;
                                    }
                                    int i14 = i12;
                                    if (i14 < 0) {
                                        i14 = 0;
                                    } else {
                                        int i15 = length;
                                        if (i14 > i15 - 1) {
                                            i14 = i15 - 1;
                                        }
                                    }
                                    dialogEditorText3.k0 = MainConst.o[i14];
                                    dialogEditorText3.l0 = MainConst.p[i14];
                                    dialogEditorText3.C();
                                    dialogEditorText3.h0.b(dialogEditorText3.l0, dialogEditorText3.k0);
                                }
                            });
                        }
                        dialogEditorText2.h0.setListener(new MyPaletteView.PaletteListener() { // from class: com.mycompany.app.dialog.DialogEditorText.7
                            @Override // com.mycompany.app.view.MyPaletteView.PaletteListener
                            public final void a(float f8, int i14) {
                                DialogEditorText dialogEditorText3 = DialogEditorText.this;
                                dialogEditorText3.k0 = i14;
                                dialogEditorText3.l0 = f8;
                                dialogEditorText3.C();
                            }
                        });
                        dialogEditorText2.C();
                        float f8 = dialogEditorText2.l0;
                        if (f8 == -1.0f) {
                            dialogEditorText2.h0.setColor(dialogEditorText2.k0);
                        } else {
                            dialogEditorText2.h0.b(f8, dialogEditorText2.k0);
                        }
                        dialogEditorText2.h0.setBorder(-12632257);
                        dialogEditorText2.i0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogEditorText.8
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                MyEditPure myEditPure2;
                                DialogEditorText dialogEditorText3 = DialogEditorText.this;
                                if (dialogEditorText3.c0 != null && dialogEditorText3.b0 != null && (myEditPure2 = dialogEditorText3.f0) != null) {
                                    String Q0 = MainUtil.Q0(myEditPure2, true);
                                    if (TextUtils.isEmpty(Q0)) {
                                        MainUtil.e8(dialogEditorText3.b0, R.string.empty);
                                        return;
                                    }
                                    MainUtil.X4(dialogEditorText3.b0, dialogEditorText3.f0);
                                    if (PrefRead.U != dialogEditorText3.k0 || Float.compare(PrefRead.V, dialogEditorText3.l0) != 0) {
                                        PrefRead.U = dialogEditorText3.k0;
                                        PrefRead.V = dialogEditorText3.l0;
                                        PrefRead r = PrefRead.r(dialogEditorText3.b0, false);
                                        r.n(PrefRead.U, "mTextColor");
                                        r.m("mTextPos", PrefRead.V);
                                        r.a();
                                    }
                                    dialogEditorText3.c0.a(PrefRead.U, Q0);
                                    dialogEditorText3.dismiss();
                                }
                            }
                        });
                        dialogEditorText2.f(dialogEditorText2.d0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogEditorText.9
                            @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                            public final void a(View view) {
                                DialogEditorText dialogEditorText3 = DialogEditorText.this;
                                if (dialogEditorText3.d0 == null) {
                                    return;
                                }
                                dialogEditorText3.show();
                            }
                        });
                    }
                }
            });
        }
    }

    public final void C() {
        MyEditPure myEditPure = this.f0;
        if (myEditPure != null && this.g0 != null) {
            myEditPure.setTextColor(this.k0);
            int length = MainConst.o.length;
            for (int i = 0; i < length; i++) {
                if (this.k0 == MainConst.o[i]) {
                    this.g0[i].q(true, true);
                } else {
                    this.g0[i].q(false, true);
                }
            }
        }
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.b0 == null) {
            return;
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
        MyKeypadDialog myKeypadDialog = this.d0;
        if (myKeypadDialog != null) {
            myKeypadDialog.c();
            this.d0 = null;
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
        this.j0 = null;
        this.e0 = null;
        this.f0 = null;
        super.dismiss();
    }
}
