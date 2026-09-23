package com.mycompany.app.dialog;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.webkit.JsPromptResult;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.widget.NestedScrollView;
import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyEditText;
import com.mycompany.app.view.MyLineText;

/* loaded from: classes3.dex */
public class DialogPrompt extends MyDialogBottom {
    public Context a0;
    public MyDialogLinear b0;
    public AppCompatTextView c0;
    public MyEditText d0;
    public MyLineText e0;
    public String f0;
    public String g0;
    public JsPromptResult h0;

    public DialogPrompt(MainActivity mainActivity, String str, String str2, JsPromptResult jsPromptResult) {
        super(mainActivity);
        this.a0 = getContext();
        this.f0 = str;
        this.g0 = str2;
        this.h0 = jsPromptResult;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogPrompt.1
            @Override // java.lang.Runnable
            public final void run() {
                DialogPrompt.B(DialogPrompt.this);
            }
        });
    }

    public static void B(DialogPrompt dialogPrompt) {
        Context context = dialogPrompt.a0;
        if (context != null) {
            MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
            NestedScrollView m = com.google.android.gms.internal.mlkit_vision_text_common.a.m(context, null, 2);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0);
            layoutParams.weight = 1.0f;
            q.addView(m, layoutParams);
            LinearLayout linearLayout = new LinearLayout(context);
            int G = (int) MainUtil.G(context, 12.0f);
            int i = MainApp.E1;
            linearLayout.setPadding(i, i, i, G);
            linearLayout.setOrientation(1);
            m.addView(linearLayout, -1, -2);
            AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
            appCompatTextView.setGravity(17);
            appCompatTextView.setLineSpacing(MainApp.F1, 1.0f);
            appCompatTextView.setTextSize(1, 16.0f);
            linearLayout.addView(appCompatTextView, -1, -2);
            MyEditText myEditText = new MyEditText(context);
            com.google.android.gms.internal.mlkit_vision_text_common.a.z(myEditText, 16, true, 3);
            myEditText.setTextSize(1, 16.0f);
            if (Build.VERSION.SDK_INT >= 29) {
                myEditText.setTextCursorDrawable(R.drawable.edit_cursor);
            }
            myEditText.setImeOptions(268435456);
            myEditText.setBackground(null);
            linearLayout.addView(myEditText, -1, MainApp.g1);
            MyLineText myLineText = new MyLineText(context);
            myLineText.setGravity(17);
            myLineText.setTextSize(1, 16.0f);
            myLineText.setText(R.string.ok);
            myLineText.setLinePad(MainApp.E1);
            myLineText.setLineUp(true);
            q.addView(myLineText, -1, MainApp.g1);
            dialogPrompt.b0 = q;
            dialogPrompt.c0 = appCompatTextView;
            dialogPrompt.d0 = myEditText;
            dialogPrompt.e0 = myLineText;
            Handler handler = dialogPrompt.i;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogPrompt.2
                @Override // java.lang.Runnable
                public final void run() {
                    final DialogPrompt dialogPrompt2 = DialogPrompt.this;
                    if (dialogPrompt2.b0 != null && dialogPrompt2.a0 != null) {
                        if (MainApp.K1) {
                            dialogPrompt2.c0.setTextColor(-328966);
                            dialogPrompt2.d0.setTextColor(-328966);
                            dialogPrompt2.e0.setBackgroundResource(R.drawable.selector_normal_dark);
                            dialogPrompt2.e0.setTextColor(-328966);
                        } else {
                            dialogPrompt2.c0.setTextColor(-16777216);
                            dialogPrompt2.d0.setTextColor(-16777216);
                            dialogPrompt2.e0.setBackgroundResource(R.drawable.selector_normal);
                            dialogPrompt2.e0.setTextColor(-14784824);
                        }
                        if (!TextUtils.isEmpty(dialogPrompt2.f0)) {
                            dialogPrompt2.c0.setText(dialogPrompt2.f0);
                        }
                        if (!TextUtils.isEmpty(dialogPrompt2.g0)) {
                            dialogPrompt2.d0.setText(dialogPrompt2.g0);
                        }
                        dialogPrompt2.d0.setSelectAllOnFocus(true);
                        dialogPrompt2.d0.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.mycompany.app.dialog.DialogPrompt.3
                            @Override // android.widget.TextView.OnEditorActionListener
                            public final boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
                                DialogPrompt.C(DialogPrompt.this);
                                return true;
                            }
                        });
                        dialogPrompt2.e0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogPrompt.4
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                DialogPrompt.C(DialogPrompt.this);
                            }
                        });
                        dialogPrompt2.g(dialogPrompt2.b0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogPrompt.5
                            @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                            public final void a(View view) {
                                DialogPrompt dialogPrompt3 = DialogPrompt.this;
                                if (dialogPrompt3.b0 == null) {
                                    return;
                                }
                                dialogPrompt3.show();
                            }
                        });
                    }
                }
            });
        }
    }

    public static void C(DialogPrompt dialogPrompt) {
        JsPromptResult jsPromptResult = dialogPrompt.h0;
        dialogPrompt.h0 = null;
        if (jsPromptResult != null) {
            String T6 = MainUtil.T6(MainUtil.Q0(dialogPrompt.d0, false));
            if (TextUtils.isEmpty(T6)) {
                jsPromptResult.confirm(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
            } else {
                jsPromptResult.confirm(T6);
            }
            Handler handler = dialogPrompt.i;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogPrompt.6
                @Override // java.lang.Runnable
                public final void run() {
                    DialogPrompt.this.dismiss();
                }
            });
        }
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.a0 == null) {
            return;
        }
        JsPromptResult jsPromptResult = this.h0;
        if (jsPromptResult != null) {
            jsPromptResult.cancel();
            this.h0 = null;
        }
        MyDialogLinear myDialogLinear = this.b0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.b0 = null;
        }
        MyEditText myEditText = this.d0;
        if (myEditText != null) {
            myEditText.c();
            this.d0 = null;
        }
        MyLineText myLineText = this.e0;
        if (myLineText != null) {
            myLineText.u();
            this.e0 = null;
        }
        this.a0 = null;
        this.c0 = null;
        this.f0 = null;
        this.g0 = null;
        super.dismiss();
    }
}
