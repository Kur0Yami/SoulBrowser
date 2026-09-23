package com.mycompany.app.dialog;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import android.text.method.DigitsKeyListener;
import android.view.KeyEvent;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import com.android.billingclient.api.ProductDetails;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.setting.SettingPay;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyEditText;
import com.mycompany.app.view.MyLineText;
import java.util.Locale;

/* loaded from: classes3.dex */
public class DialogPayQuiz extends MyDialogBottom {
    public Context a0;
    public DialogPayListener b0;
    public ProductDetails c0;
    public MyDialogLinear d0;
    public AppCompatTextView e0;
    public MyLineText f0;
    public AppCompatTextView g0;
    public MyEditText h0;
    public MyLineText i0;
    public int j0;
    public boolean k0;

    /* loaded from: classes3.dex */
    public interface DialogPayListener {
        void a(ProductDetails productDetails);
    }

    public DialogPayQuiz(SettingPay settingPay, ProductDetails productDetails, DialogPayListener dialogPayListener) {
        super(settingPay);
        this.a0 = getContext();
        this.b0 = dialogPayListener;
        this.c0 = productDetails;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogPayQuiz.1
            @Override // java.lang.Runnable
            public final void run() {
                DialogPayQuiz.B(DialogPayQuiz.this);
            }
        });
    }

    public static void B(DialogPayQuiz dialogPayQuiz) {
        Context context = dialogPayQuiz.a0;
        if (context != null) {
            int i = R.id.item_quiz_view;
            MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
            AppCompatTextView C = com.google.android.gms.internal.mlkit_vision_text_common.a.C(context, null, 1, 1, 16.0f);
            LinearLayout.LayoutParams e = com.google.android.gms.internal.mlkit_vision_text_common.a.e(C, R.string.prevent_pay, -1, -2);
            e.topMargin = MainApp.E1;
            q.addView(C, e);
            MyLineText myLineText = new MyLineText(context);
            int i2 = MainApp.E1;
            int i3 = MainApp.F1;
            int i4 = MainApp.E1;
            myLineText.setPadding(i2, i3, i4, i4);
            myLineText.setGravity(1);
            myLineText.setTextSize(1, 16.0f);
            myLineText.setText(R.string.input_answer);
            myLineText.q(MainApp.E1);
            q.addView(myLineText, -1, -2);
            RelativeLayout relativeLayout = new RelativeLayout(context);
            int i5 = MainApp.E1;
            int i6 = MainApp.F1;
            int i7 = MainApp.E1;
            relativeLayout.setPadding(i5, i6, i7, i7);
            relativeLayout.setLayoutDirection(0);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            layoutParams.gravity = 1;
            q.addView(relativeLayout, layoutParams);
            AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
            appCompatTextView.setId(i);
            appCompatTextView.setGravity(16);
            appCompatTextView.setTextDirection(3);
            appCompatTextView.setTextSize(1, 20.0f);
            relativeLayout.addView(appCompatTextView, -2, MainApp.g1);
            MyEditText myEditText = new MyEditText(context);
            com.google.android.gms.internal.mlkit_vision_text_common.a.z(myEditText, 17, true, 3);
            myEditText.setTextSize(1, 20.0f);
            if (Build.VERSION.SDK_INT >= 29) {
                myEditText.setTextCursorDrawable(R.drawable.edit_cursor);
            }
            myEditText.setInputType(2);
            myEditText.setKeyListener(DigitsKeyListener.getInstance("0123456789"));
            myEditText.setImeOptions(268435456);
            myEditText.setBackground(null);
            myEditText.setMinWidth(MainApp.g1);
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, MainApp.g1);
            layoutParams2.addRule(17, i);
            relativeLayout.addView(myEditText, layoutParams2);
            MyLineText myLineText2 = new MyLineText(context);
            myLineText2.setGravity(17);
            myLineText2.setTextSize(1, 16.0f);
            myLineText2.setText(R.string.ok);
            myLineText2.setLinePad(MainApp.E1);
            myLineText2.setLineUp(true);
            q.addView(myLineText2, -1, MainApp.g1);
            dialogPayQuiz.d0 = q;
            dialogPayQuiz.e0 = C;
            dialogPayQuiz.f0 = myLineText;
            dialogPayQuiz.g0 = appCompatTextView;
            dialogPayQuiz.h0 = myEditText;
            dialogPayQuiz.i0 = myLineText2;
            Handler handler = dialogPayQuiz.i;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogPayQuiz.2
                @Override // java.lang.Runnable
                public final void run() {
                    final DialogPayQuiz dialogPayQuiz2 = DialogPayQuiz.this;
                    if (dialogPayQuiz2.d0 != null && dialogPayQuiz2.a0 != null) {
                        if (MainApp.K1) {
                            dialogPayQuiz2.e0.setTextColor(-328966);
                            dialogPayQuiz2.f0.setTextColor(-328966);
                            dialogPayQuiz2.g0.setTextColor(-328966);
                            dialogPayQuiz2.h0.setTextColor(-328966);
                            dialogPayQuiz2.i0.setBackgroundResource(R.drawable.selector_normal_dark);
                            dialogPayQuiz2.i0.setTextColor(-328966);
                        } else {
                            dialogPayQuiz2.e0.setTextColor(-16777216);
                            dialogPayQuiz2.f0.setTextColor(-16777216);
                            dialogPayQuiz2.g0.setTextColor(-16777216);
                            dialogPayQuiz2.h0.setTextColor(-16777216);
                            dialogPayQuiz2.i0.setBackgroundResource(R.drawable.selector_normal);
                            dialogPayQuiz2.i0.setTextColor(-14784824);
                        }
                        dialogPayQuiz2.D();
                        dialogPayQuiz2.h0.setSelectAllOnFocus(true);
                        dialogPayQuiz2.h0.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogPayQuiz.3
                            @Override // java.lang.Runnable
                            public final void run() {
                                DialogPayQuiz dialogPayQuiz3 = DialogPayQuiz.this;
                                MyEditText myEditText2 = dialogPayQuiz3.h0;
                                if (myEditText2 == null) {
                                    return;
                                }
                                myEditText2.requestFocus();
                                dialogPayQuiz3.h0.postDelayed(new Runnable() { // from class: com.mycompany.app.dialog.DialogPayQuiz.3.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        MyEditText myEditText3;
                                        DialogPayQuiz dialogPayQuiz4 = DialogPayQuiz.this;
                                        Context context2 = dialogPayQuiz4.a0;
                                        if (context2 != null && (myEditText3 = dialogPayQuiz4.h0) != null) {
                                            MainUtil.c8(context2, myEditText3);
                                        }
                                    }
                                }, 200L);
                            }
                        });
                        dialogPayQuiz2.h0.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.mycompany.app.dialog.DialogPayQuiz.4
                            @Override // android.widget.TextView.OnEditorActionListener
                            public final boolean onEditorAction(TextView textView, int i8, KeyEvent keyEvent) {
                                DialogPayQuiz dialogPayQuiz3 = DialogPayQuiz.this;
                                MyEditText myEditText2 = dialogPayQuiz3.h0;
                                if (myEditText2 == null || dialogPayQuiz3.k0) {
                                    return true;
                                }
                                dialogPayQuiz3.k0 = true;
                                myEditText2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogPayQuiz.4.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        AnonymousClass4 anonymousClass4 = AnonymousClass4.this;
                                        DialogPayQuiz.C(DialogPayQuiz.this);
                                        DialogPayQuiz.this.k0 = false;
                                    }
                                });
                                return true;
                            }
                        });
                        dialogPayQuiz2.i0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogPayQuiz.5
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                DialogPayQuiz dialogPayQuiz3 = DialogPayQuiz.this;
                                MyLineText myLineText3 = dialogPayQuiz3.i0;
                                if (myLineText3 == null || dialogPayQuiz3.k0) {
                                    return;
                                }
                                dialogPayQuiz3.k0 = true;
                                myLineText3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogPayQuiz.5.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        AnonymousClass5 anonymousClass5 = AnonymousClass5.this;
                                        DialogPayQuiz.C(DialogPayQuiz.this);
                                        DialogPayQuiz.this.k0 = false;
                                    }
                                });
                            }
                        });
                        dialogPayQuiz2.g(dialogPayQuiz2.d0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogPayQuiz.6
                            @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                            public final void a(View view) {
                                DialogPayQuiz dialogPayQuiz3 = DialogPayQuiz.this;
                                if (dialogPayQuiz3.d0 == null) {
                                    return;
                                }
                                dialogPayQuiz3.show();
                            }
                        });
                    }
                }
            });
        }
    }

    public static void C(DialogPayQuiz dialogPayQuiz) {
        MyEditText myEditText = dialogPayQuiz.h0;
        if (myEditText != null) {
            String Q0 = MainUtil.Q0(myEditText, true);
            if (TextUtils.isEmpty(Q0)) {
                MainUtil.e8(dialogPayQuiz.a0, R.string.empty);
                return;
            }
            if (MainUtil.H6(Q0) != dialogPayQuiz.j0) {
                MainUtil.f8(dialogPayQuiz.a0, String.format(Locale.US, dialogPayQuiz.a0.getString(R.string.correct_answer), Integer.valueOf(dialogPayQuiz.j0)));
                dialogPayQuiz.h0.setText((CharSequence) null);
                dialogPayQuiz.D();
            } else {
                DialogPayListener dialogPayListener = dialogPayQuiz.b0;
                if (dialogPayListener != null) {
                    dialogPayListener.a(dialogPayQuiz.c0);
                }
            }
        }
    }

    public final void D() {
        if (this.g0 == null) {
            return;
        }
        int L6 = MainUtil.L6(2, 9);
        int L62 = MainUtil.L6(2, 9);
        if (L6 == L62) {
            L62 = MainUtil.L6(2, 9);
        }
        this.j0 = L6 * L62;
        this.g0.setText(L6 + " X " + L62 + " = ");
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
        MyLineText myLineText = this.f0;
        if (myLineText != null) {
            myLineText.u();
            this.f0 = null;
        }
        MyEditText myEditText = this.h0;
        if (myEditText != null) {
            myEditText.c();
            this.h0 = null;
        }
        MyLineText myLineText2 = this.i0;
        if (myLineText2 != null) {
            myLineText2.u();
            this.i0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.c0 = null;
        this.e0 = null;
        this.g0 = null;
        super.dismiss();
    }
}
