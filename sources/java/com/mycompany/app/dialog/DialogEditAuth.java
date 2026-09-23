package com.mycompany.app.dialog;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import android.text.method.PasswordTransformationMethod;
import android.view.KeyEvent;
import android.view.View;
import android.webkit.HttpAuthHandler;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.widget.NestedScrollView;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonCheck;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyEditText;
import com.mycompany.app.view.MyLineFrame;
import com.mycompany.app.view.MyLineText;

/* loaded from: classes3.dex */
public class DialogEditAuth extends MyDialogBottom {
    public Context a0;
    public HttpAuthHandler b0;
    public MyDialogLinear c0;
    public AppCompatTextView d0;
    public MyEditText e0;
    public AppCompatTextView f0;
    public MyEditText g0;
    public MyButtonCheck h0;
    public MyLineText i0;
    public boolean j0;

    public DialogEditAuth(Activity activity, HttpAuthHandler httpAuthHandler) {
        super(activity);
        this.a0 = getContext();
        this.b0 = httpAuthHandler;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditAuth.1
            @Override // java.lang.Runnable
            public final void run() {
                DialogEditAuth.B(DialogEditAuth.this);
            }
        });
    }

    public static void B(DialogEditAuth dialogEditAuth) {
        Context context = dialogEditAuth.a0;
        if (context != null) {
            MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
            NestedScrollView m = com.google.android.gms.internal.mlkit_vision_text_common.a.m(context, null, 2);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0);
            layoutParams.weight = 1.0f;
            LinearLayout g = com.google.android.gms.internal.mlkit_vision_text_common.a.g(q, m, layoutParams, context, 1);
            m.addView(g, -1, -2);
            int G = (int) MainUtil.G(context, 88.0f);
            int G2 = (int) MainUtil.G(context, 12.0f);
            MyLineFrame myLineFrame = new MyLineFrame(context);
            int i = MainApp.E1;
            myLineFrame.setPadding(i, G2, i, G2);
            myLineFrame.a(MainApp.E1);
            g.addView(myLineFrame, -1, G);
            AppCompatTextView j = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 14.0f);
            j.setText(R.string.name);
            myLineFrame.addView(j, -2, -2);
            MyEditText myEditText = new MyEditText(context);
            com.google.android.gms.internal.mlkit_vision_text_common.a.z(myEditText, 16, true, 3);
            myEditText.setTextSize(1, 16.0f);
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 29) {
                myEditText.setTextCursorDrawable(R.drawable.edit_cursor);
            }
            myEditText.setImeOptions(268435456);
            myEditText.setBackground(null);
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, MainApp.g1);
            layoutParams2.gravity = 8388691;
            myLineFrame.addView(myEditText, layoutParams2);
            FrameLayout frameLayout = new FrameLayout(context);
            frameLayout.setPaddingRelative(MainApp.E1, G2, MainApp.F1, G2);
            g.addView(frameLayout, -1, G);
            AppCompatTextView j2 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 14.0f);
            j2.setText(R.string.password);
            frameLayout.addView(j2, -2, -2);
            MyEditText myEditText2 = new MyEditText(context);
            com.google.android.gms.internal.mlkit_vision_text_common.a.z(myEditText2, 16, true, 3);
            myEditText2.setTextSize(1, 16.0f);
            if (i2 >= 29) {
                myEditText2.setTextCursorDrawable(R.drawable.edit_cursor);
            }
            myEditText2.setImeOptions(268435456);
            myEditText2.setBackground(null);
            FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, MainApp.g1);
            layoutParams3.gravity = 8388691;
            layoutParams3.setMarginEnd(MainApp.i1);
            frameLayout.addView(myEditText2, layoutParams3);
            MyButtonCheck myButtonCheck = new MyButtonCheck(context);
            int i3 = MainApp.g1;
            FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(i3, i3);
            layoutParams4.gravity = 8388693;
            layoutParams4.setMarginStart(MainApp.E1);
            frameLayout.addView(myButtonCheck, layoutParams4);
            MyLineText r = com.google.android.gms.internal.mlkit_vision_text_common.a.r(context, 17, 1, 16.0f);
            r.setText(R.string.apply);
            r.t(MainApp.E1);
            q.addView(r, -1, MainApp.g1);
            dialogEditAuth.c0 = q;
            dialogEditAuth.d0 = j;
            dialogEditAuth.e0 = myEditText;
            dialogEditAuth.f0 = j2;
            dialogEditAuth.g0 = myEditText2;
            dialogEditAuth.h0 = myButtonCheck;
            dialogEditAuth.i0 = r;
            Handler handler = dialogEditAuth.i;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditAuth.2
                @Override // java.lang.Runnable
                public final void run() {
                    final DialogEditAuth dialogEditAuth2 = DialogEditAuth.this;
                    if (dialogEditAuth2.c0 != null && dialogEditAuth2.a0 != null) {
                        if (MainApp.K1) {
                            dialogEditAuth2.d0.setTextColor(-4079167);
                            dialogEditAuth2.e0.setTextColor(-328966);
                            dialogEditAuth2.f0.setTextColor(-4079167);
                            dialogEditAuth2.g0.setTextColor(-328966);
                            dialogEditAuth2.h0.p(R.drawable.outline_visibility_off_dark_24, R.drawable.outline_visibility_dark_24);
                            dialogEditAuth2.i0.setBackgroundResource(R.drawable.selector_normal_dark);
                            dialogEditAuth2.i0.setTextColor(-328966);
                            dialogEditAuth2.h0.setBgPreColor(-12632257);
                        } else {
                            dialogEditAuth2.d0.setTextColor(-10395295);
                            dialogEditAuth2.e0.setTextColor(-16777216);
                            dialogEditAuth2.f0.setTextColor(-10395295);
                            dialogEditAuth2.g0.setTextColor(-16777216);
                            dialogEditAuth2.h0.p(R.drawable.outline_visibility_off_black_24, R.drawable.outline_visibility_black_24);
                            dialogEditAuth2.i0.setBackgroundResource(R.drawable.selector_normal);
                            dialogEditAuth2.i0.setTextColor(-14784824);
                            dialogEditAuth2.h0.setBgPreColor(-2039584);
                        }
                        dialogEditAuth2.e0.setElineColor(-14784824);
                        dialogEditAuth2.g0.setElineColor(-2434342);
                        dialogEditAuth2.e0.setSelectAllOnFocus(true);
                        dialogEditAuth2.e0.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.mycompany.app.dialog.DialogEditAuth.3
                            @Override // android.view.View.OnFocusChangeListener
                            public final void onFocusChange(View view, boolean z) {
                                DialogEditAuth dialogEditAuth3;
                                MyEditText myEditText3;
                                if (!z || (myEditText3 = (dialogEditAuth3 = DialogEditAuth.this).e0) == null) {
                                    return;
                                }
                                myEditText3.setElineColor(-14784824);
                                dialogEditAuth3.g0.setElineColor(-2434342);
                            }
                        });
                        dialogEditAuth2.e0.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.mycompany.app.dialog.DialogEditAuth.4
                            @Override // android.widget.TextView.OnEditorActionListener
                            public final boolean onEditorAction(TextView textView, int i4, KeyEvent keyEvent) {
                                DialogEditAuth dialogEditAuth3 = DialogEditAuth.this;
                                MyEditText myEditText3 = dialogEditAuth3.e0;
                                if (myEditText3 == null || dialogEditAuth3.j0) {
                                    return true;
                                }
                                dialogEditAuth3.j0 = true;
                                myEditText3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditAuth.4.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        AnonymousClass4 anonymousClass4 = AnonymousClass4.this;
                                        DialogEditAuth.C(DialogEditAuth.this);
                                        DialogEditAuth.this.j0 = false;
                                    }
                                });
                                return true;
                            }
                        });
                        dialogEditAuth2.g0.setSelectAllOnFocus(true);
                        dialogEditAuth2.g0.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.mycompany.app.dialog.DialogEditAuth.5
                            @Override // android.view.View.OnFocusChangeListener
                            public final void onFocusChange(View view, boolean z) {
                                DialogEditAuth dialogEditAuth3;
                                MyEditText myEditText3;
                                if (!z || (myEditText3 = (dialogEditAuth3 = DialogEditAuth.this).e0) == null) {
                                    return;
                                }
                                myEditText3.setElineColor(-2434342);
                                dialogEditAuth3.g0.setElineColor(-14784824);
                            }
                        });
                        dialogEditAuth2.g0.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.mycompany.app.dialog.DialogEditAuth.6
                            @Override // android.widget.TextView.OnEditorActionListener
                            public final boolean onEditorAction(TextView textView, int i4, KeyEvent keyEvent) {
                                DialogEditAuth dialogEditAuth3 = DialogEditAuth.this;
                                MyEditText myEditText3 = dialogEditAuth3.g0;
                                if (myEditText3 == null || dialogEditAuth3.j0) {
                                    return true;
                                }
                                dialogEditAuth3.j0 = true;
                                myEditText3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditAuth.6.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        AnonymousClass6 anonymousClass6 = AnonymousClass6.this;
                                        DialogEditAuth.C(DialogEditAuth.this);
                                        DialogEditAuth.this.j0 = false;
                                    }
                                });
                                return true;
                            }
                        });
                        dialogEditAuth2.g0.setInputType(129);
                        dialogEditAuth2.g0.setTransformationMethod(PasswordTransformationMethod.getInstance());
                        dialogEditAuth2.h0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogEditAuth.7
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                DialogEditAuth dialogEditAuth3 = DialogEditAuth.this;
                                MyButtonCheck myButtonCheck2 = dialogEditAuth3.h0;
                                if (myButtonCheck2 != null) {
                                    if (myButtonCheck2.D) {
                                        myButtonCheck2.q(false, true);
                                        dialogEditAuth3.g0.setInputType(129);
                                        dialogEditAuth3.g0.setTransformationMethod(PasswordTransformationMethod.getInstance());
                                    } else {
                                        myButtonCheck2.q(true, true);
                                        dialogEditAuth3.g0.setInputType(161);
                                        dialogEditAuth3.g0.setTransformationMethod(null);
                                    }
                                    String Q0 = MainUtil.Q0(dialogEditAuth3.g0, false);
                                    if (TextUtils.isEmpty(Q0)) {
                                        return;
                                    }
                                    dialogEditAuth3.g0.setSelection(Q0.length());
                                }
                            }
                        });
                        dialogEditAuth2.i0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogEditAuth.8
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                DialogEditAuth dialogEditAuth3 = DialogEditAuth.this;
                                MyLineText myLineText = dialogEditAuth3.i0;
                                if (myLineText == null || dialogEditAuth3.j0) {
                                    return;
                                }
                                dialogEditAuth3.j0 = true;
                                myLineText.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditAuth.8.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        AnonymousClass8 anonymousClass8 = AnonymousClass8.this;
                                        DialogEditAuth.C(DialogEditAuth.this);
                                        DialogEditAuth.this.j0 = false;
                                    }
                                });
                            }
                        });
                        dialogEditAuth2.g(dialogEditAuth2.c0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogEditAuth.9
                            @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                            public final void a(View view) {
                                DialogEditAuth dialogEditAuth3 = DialogEditAuth.this;
                                if (dialogEditAuth3.c0 == null) {
                                    return;
                                }
                                dialogEditAuth3.show();
                            }
                        });
                    }
                }
            });
        }
    }

    public static void C(DialogEditAuth dialogEditAuth) {
        MyEditText myEditText = dialogEditAuth.e0;
        if (myEditText == null) {
            return;
        }
        String Q0 = MainUtil.Q0(myEditText, true);
        if (TextUtils.isEmpty(Q0)) {
            MainUtil.b7(dialogEditAuth.e0);
            MainUtil.e8(dialogEditAuth.a0, R.string.input_name);
            return;
        }
        String Q02 = MainUtil.Q0(dialogEditAuth.g0, true);
        if (TextUtils.isEmpty(Q02)) {
            MainUtil.b7(dialogEditAuth.g0);
            MainUtil.e8(dialogEditAuth.a0, R.string.input_password);
            return;
        }
        HttpAuthHandler httpAuthHandler = dialogEditAuth.b0;
        if (httpAuthHandler != null) {
            httpAuthHandler.proceed(Q0, Q02);
            dialogEditAuth.b0 = null;
        }
        dialogEditAuth.dismiss();
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.a0 == null) {
            return;
        }
        HttpAuthHandler httpAuthHandler = this.b0;
        if (httpAuthHandler != null) {
            httpAuthHandler.cancel();
            this.b0 = null;
        }
        MyDialogLinear myDialogLinear = this.c0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.c0 = null;
        }
        MyEditText myEditText = this.e0;
        if (myEditText != null) {
            myEditText.c();
            this.e0 = null;
        }
        MyEditText myEditText2 = this.g0;
        if (myEditText2 != null) {
            myEditText2.c();
            this.g0 = null;
        }
        MyButtonCheck myButtonCheck = this.h0;
        if (myButtonCheck != null) {
            myButtonCheck.l();
            this.h0 = null;
        }
        MyLineText myLineText = this.i0;
        if (myLineText != null) {
            myLineText.u();
            this.i0 = null;
        }
        this.a0 = null;
        this.d0 = null;
        this.f0 = null;
        super.dismiss();
    }
}
