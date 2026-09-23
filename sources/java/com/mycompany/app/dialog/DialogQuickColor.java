package com.mycompany.app.dialog;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.core.widget.NestedScrollView;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonCheck;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;

/* loaded from: classes3.dex */
public class DialogQuickColor extends MyDialogBottom {
    public Context a0;
    public QuickColorListener b0;
    public MyDialogLinear c0;
    public MyButtonCheck[] d0;
    public final int e0;

    /* loaded from: classes3.dex */
    public interface QuickColorListener {
        void a(int i);
    }

    public DialogQuickColor(Activity activity, int i, QuickColorListener quickColorListener) {
        super(activity);
        this.a0 = getContext();
        this.b0 = quickColorListener;
        this.e0 = i;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogQuickColor.1
            @Override // java.lang.Runnable
            public final void run() {
                final DialogQuickColor dialogQuickColor = DialogQuickColor.this;
                Context context = dialogQuickColor.a0;
                if (context != null) {
                    MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
                    NestedScrollView m = com.google.android.gms.internal.mlkit_vision_text_common.a.m(context, null, 2);
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0);
                    layoutParams.weight = 1.0f;
                    LinearLayout g = com.google.android.gms.internal.mlkit_vision_text_common.a.g(q, m, layoutParams, context, 1);
                    FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -2);
                    layoutParams2.gravity = 1;
                    m.addView(g, layoutParams2);
                    g.addView(new View(context), 1, MainApp.E1);
                    LinearLayout linearLayout = new LinearLayout(context);
                    linearLayout.setBaselineAligned(false);
                    linearLayout.setOrientation(0);
                    g.addView(linearLayout, -2, -2);
                    int G = (int) MainUtil.G(context, 20.0f);
                    MyButtonCheck myButtonCheck = new MyButtonCheck(context);
                    float f = G;
                    myButtonCheck.setBgNorRadius(f);
                    int i2 = MainApp.g1;
                    linearLayout.addView(myButtonCheck, i2, i2);
                    MyButtonCheck myButtonCheck2 = new MyButtonCheck(context);
                    myButtonCheck2.setBgNorRadius(f);
                    int i3 = MainApp.g1;
                    LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(i3, i3);
                    layoutParams3.setMarginStart(MainApp.E1);
                    linearLayout.addView(myButtonCheck2, layoutParams3);
                    MyButtonCheck myButtonCheck3 = new MyButtonCheck(context);
                    myButtonCheck3.setBgNorRadius(f);
                    int i4 = MainApp.g1;
                    LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(i4, i4);
                    layoutParams4.setMarginStart(MainApp.E1);
                    linearLayout.addView(myButtonCheck3, layoutParams4);
                    MyButtonCheck myButtonCheck4 = new MyButtonCheck(context);
                    myButtonCheck4.setBgNorRadius(f);
                    int i5 = MainApp.g1;
                    LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(i5, i5);
                    layoutParams5.setMarginStart(MainApp.E1);
                    linearLayout.addView(myButtonCheck4, layoutParams5);
                    LinearLayout linearLayout2 = new LinearLayout(context);
                    linearLayout2.setBaselineAligned(false);
                    linearLayout2.setOrientation(0);
                    FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(-2, -2);
                    layoutParams6.topMargin = MainApp.E1;
                    g.addView(linearLayout2, layoutParams6);
                    MyButtonCheck myButtonCheck5 = new MyButtonCheck(context);
                    myButtonCheck5.setBgNorRadius(f);
                    int i6 = MainApp.g1;
                    linearLayout2.addView(myButtonCheck5, i6, i6);
                    MyButtonCheck myButtonCheck6 = new MyButtonCheck(context);
                    myButtonCheck6.setBgNorRadius(f);
                    int i7 = MainApp.g1;
                    LinearLayout.LayoutParams layoutParams7 = new LinearLayout.LayoutParams(i7, i7);
                    layoutParams7.setMarginStart(MainApp.E1);
                    linearLayout2.addView(myButtonCheck6, layoutParams7);
                    MyButtonCheck myButtonCheck7 = new MyButtonCheck(context);
                    myButtonCheck7.setBgNorRadius(f);
                    int i8 = MainApp.g1;
                    LinearLayout.LayoutParams layoutParams8 = new LinearLayout.LayoutParams(i8, i8);
                    layoutParams8.setMarginStart(MainApp.E1);
                    linearLayout2.addView(myButtonCheck7, layoutParams8);
                    MyButtonCheck myButtonCheck8 = new MyButtonCheck(context);
                    myButtonCheck8.setBgNorRadius(f);
                    int i9 = MainApp.g1;
                    LinearLayout.LayoutParams layoutParams9 = new LinearLayout.LayoutParams(i9, i9);
                    layoutParams9.setMarginStart(MainApp.E1);
                    linearLayout2.addView(myButtonCheck8, layoutParams9);
                    LinearLayout linearLayout3 = new LinearLayout(context);
                    linearLayout3.setBaselineAligned(false);
                    linearLayout3.setOrientation(0);
                    FrameLayout.LayoutParams layoutParams10 = new FrameLayout.LayoutParams(-2, -2);
                    layoutParams10.topMargin = MainApp.E1;
                    g.addView(linearLayout3, layoutParams10);
                    MyButtonCheck myButtonCheck9 = new MyButtonCheck(context);
                    myButtonCheck9.setBgNorRadius(f);
                    int i10 = MainApp.g1;
                    linearLayout3.addView(myButtonCheck9, i10, i10);
                    MyButtonCheck myButtonCheck10 = new MyButtonCheck(context);
                    myButtonCheck10.setBgNorRadius(f);
                    int i11 = MainApp.g1;
                    LinearLayout.LayoutParams layoutParams11 = new LinearLayout.LayoutParams(i11, i11);
                    layoutParams11.setMarginStart(MainApp.E1);
                    linearLayout3.addView(myButtonCheck10, layoutParams11);
                    MyButtonCheck myButtonCheck11 = new MyButtonCheck(context);
                    myButtonCheck11.setBgNorRadius(f);
                    int i12 = MainApp.g1;
                    LinearLayout.LayoutParams layoutParams12 = new LinearLayout.LayoutParams(i12, i12);
                    layoutParams12.setMarginStart(MainApp.E1);
                    linearLayout3.addView(myButtonCheck11, layoutParams12);
                    MyButtonCheck myButtonCheck12 = new MyButtonCheck(context);
                    myButtonCheck12.setBgNorRadius(f);
                    int i13 = MainApp.g1;
                    LinearLayout.LayoutParams layoutParams13 = new LinearLayout.LayoutParams(i13, i13);
                    layoutParams13.setMarginStart(MainApp.E1);
                    linearLayout3.addView(myButtonCheck12, layoutParams13);
                    LinearLayout linearLayout4 = new LinearLayout(context);
                    linearLayout4.setBaselineAligned(false);
                    linearLayout4.setOrientation(0);
                    FrameLayout.LayoutParams layoutParams14 = new FrameLayout.LayoutParams(-2, -2);
                    layoutParams14.topMargin = MainApp.E1;
                    g.addView(linearLayout4, layoutParams14);
                    MyButtonCheck myButtonCheck13 = new MyButtonCheck(context);
                    myButtonCheck13.setBgNorRadius(f);
                    int i14 = MainApp.g1;
                    linearLayout4.addView(myButtonCheck13, i14, i14);
                    MyButtonCheck myButtonCheck14 = new MyButtonCheck(context);
                    myButtonCheck14.setBgNorRadius(f);
                    int i15 = MainApp.g1;
                    LinearLayout.LayoutParams layoutParams15 = new LinearLayout.LayoutParams(i15, i15);
                    layoutParams15.setMarginStart(MainApp.E1);
                    linearLayout4.addView(myButtonCheck14, layoutParams15);
                    MyButtonCheck myButtonCheck15 = new MyButtonCheck(context);
                    myButtonCheck15.setBgNorRadius(f);
                    int i16 = MainApp.g1;
                    LinearLayout.LayoutParams layoutParams16 = new LinearLayout.LayoutParams(i16, i16);
                    layoutParams16.setMarginStart(MainApp.E1);
                    linearLayout4.addView(myButtonCheck15, layoutParams16);
                    MyButtonCheck myButtonCheck16 = new MyButtonCheck(context);
                    myButtonCheck16.setBgNorRadius(f);
                    int i17 = MainApp.g1;
                    LinearLayout.LayoutParams layoutParams17 = new LinearLayout.LayoutParams(i17, i17);
                    layoutParams17.setMarginStart(MainApp.E1);
                    linearLayout4.addView(myButtonCheck16, layoutParams17);
                    g.addView(new View(context), 1, MainApp.E1);
                    dialogQuickColor.c0 = q;
                    MyButtonCheck[] myButtonCheckArr = new MyButtonCheck[MainConst.b0.length];
                    dialogQuickColor.d0 = myButtonCheckArr;
                    myButtonCheckArr[0] = myButtonCheck;
                    myButtonCheckArr[1] = myButtonCheck2;
                    myButtonCheckArr[2] = myButtonCheck3;
                    myButtonCheckArr[3] = myButtonCheck4;
                    myButtonCheckArr[4] = myButtonCheck5;
                    myButtonCheckArr[5] = myButtonCheck6;
                    myButtonCheckArr[6] = myButtonCheck7;
                    myButtonCheckArr[7] = myButtonCheck8;
                    myButtonCheckArr[8] = myButtonCheck9;
                    myButtonCheckArr[9] = myButtonCheck10;
                    myButtonCheckArr[10] = myButtonCheck11;
                    myButtonCheckArr[11] = myButtonCheck12;
                    myButtonCheckArr[12] = myButtonCheck13;
                    myButtonCheckArr[13] = myButtonCheck14;
                    myButtonCheckArr[14] = myButtonCheck15;
                    myButtonCheckArr[15] = myButtonCheck16;
                    Handler handler2 = dialogQuickColor.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogQuickColor.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            boolean z;
                            final DialogQuickColor dialogQuickColor2 = DialogQuickColor.this;
                            if (dialogQuickColor2.c0 != null && dialogQuickColor2.a0 != null) {
                                int length = dialogQuickColor2.d0.length;
                                for (int i18 = 0; i18 < length; i18++) {
                                    int i19 = MainConst.b0[i18];
                                    dialogQuickColor2.d0[i18].setTag(Integer.valueOf(i18));
                                    dialogQuickColor2.d0[i18].m(i19, i19);
                                    if (MainApp.K1) {
                                        dialogQuickColor2.d0[i18].n(-12632257, MainApp.n1);
                                    }
                                    dialogQuickColor2.d0[i18].p(R.drawable.outline_check_white_24, 0);
                                    MyButtonCheck myButtonCheck17 = dialogQuickColor2.d0[i18];
                                    if (i19 == dialogQuickColor2.e0) {
                                        z = true;
                                    } else {
                                        z = false;
                                    }
                                    myButtonCheck17.q(z, false);
                                    dialogQuickColor2.d0[i18].setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogQuickColor.3
                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view) {
                                            Object tag;
                                            int intValue;
                                            DialogQuickColor dialogQuickColor3 = DialogQuickColor.this;
                                            if (dialogQuickColor3.b0 != null && view != null && (tag = view.getTag()) != null && (tag instanceof Integer) && (intValue = ((Integer) tag).intValue()) >= 0) {
                                                int[] iArr = MainConst.b0;
                                                if (intValue >= iArr.length) {
                                                    return;
                                                }
                                                dialogQuickColor3.b0.a(iArr[intValue]);
                                            }
                                        }
                                    });
                                }
                                dialogQuickColor2.g(dialogQuickColor2.c0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogQuickColor.4
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view) {
                                        DialogQuickColor dialogQuickColor3 = DialogQuickColor.this;
                                        if (dialogQuickColor3.c0 == null) {
                                            return;
                                        }
                                        dialogQuickColor3.show();
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
        MyDialogLinear myDialogLinear = this.c0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.c0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.d0 = null;
        super.dismiss();
    }
}
