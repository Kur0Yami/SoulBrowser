package com.mycompany.app.dialog;

import android.content.Context;
import android.os.Handler;
import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import com.mycompany.app.dialog.DialogSetDesk;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.web.WebViewActivity;

/* loaded from: classes3.dex */
public class DialogTransMsg extends MyDialogBottom {
    public Context a0;
    public DialogSetDesk.SetDeskListener b0;
    public MyDialogLinear c0;
    public AppCompatTextView d0;
    public MyLineText e0;
    public MyLineText f0;
    public boolean g0;

    public DialogTransMsg(WebViewActivity webViewActivity, DialogSetDesk.SetDeskListener setDeskListener) {
        super(webViewActivity);
        this.a0 = getContext();
        this.b0 = setDeskListener;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogTransMsg.1
            @Override // java.lang.Runnable
            public final void run() {
                final DialogTransMsg dialogTransMsg = DialogTransMsg.this;
                Context context = dialogTransMsg.a0;
                if (context != null) {
                    MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
                    AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
                    int i = MainApp.E1;
                    appCompatTextView.setPadding(i, i, i, i);
                    appCompatTextView.setGravity(17);
                    appCompatTextView.setLineSpacing(MainApp.F1, 1.0f);
                    appCompatTextView.setTextSize(1, 16.0f);
                    appCompatTextView.setMinHeight((int) MainUtil.G(context, 88.0f));
                    q.addView(appCompatTextView, -1, -2);
                    MyLineText myLineText = new MyLineText(context);
                    myLineText.setPaddingRelative(MainApp.E1, 0, 0, 0);
                    myLineText.setGravity(16);
                    myLineText.setTextSize(1, 16.0f);
                    myLineText.setLinePad(MainApp.E1);
                    myLineText.setLineUp(true);
                    q.addView(myLineText, -1, MainApp.h1);
                    MyLineText myLineText2 = new MyLineText(context);
                    myLineText2.setPaddingRelative(MainApp.E1, 0, 0, 0);
                    myLineText2.setGravity(16);
                    myLineText2.setTextSize(1, 16.0f);
                    myLineText2.setLinePad(MainApp.E1);
                    myLineText2.setLineUp(true);
                    q.addView(myLineText2, -1, MainApp.h1);
                    dialogTransMsg.c0 = q;
                    dialogTransMsg.d0 = appCompatTextView;
                    dialogTransMsg.e0 = myLineText;
                    dialogTransMsg.f0 = myLineText2;
                    Handler handler2 = dialogTransMsg.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogTransMsg.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            final DialogTransMsg dialogTransMsg2 = DialogTransMsg.this;
                            if (dialogTransMsg2.c0 != null && dialogTransMsg2.a0 != null) {
                                if (MainApp.K1) {
                                    dialogTransMsg2.d0.setTextColor(-328966);
                                    dialogTransMsg2.e0.setTextColor(-328966);
                                    dialogTransMsg2.f0.setTextColor(-328966);
                                    dialogTransMsg2.e0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogTransMsg2.f0.setBackgroundResource(R.drawable.selector_normal_dark);
                                } else {
                                    dialogTransMsg2.d0.setTextColor(-16777216);
                                    dialogTransMsg2.e0.setTextColor(-16777216);
                                    dialogTransMsg2.f0.setTextColor(-16777216);
                                    dialogTransMsg2.e0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogTransMsg2.f0.setBackgroundResource(R.drawable.selector_normal);
                                }
                                dialogTransMsg2.d0.setText(R.string.trans_blocked);
                                dialogTransMsg2.e0.setText(R.string.trans_allowed);
                                dialogTransMsg2.f0.setText(R.string.open_chrome);
                                dialogTransMsg2.e0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogTransMsg.3
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        DialogTransMsg dialogTransMsg3 = DialogTransMsg.this;
                                        if (!dialogTransMsg3.g0) {
                                            dialogTransMsg3.g0 = true;
                                            Handler handler3 = dialogTransMsg3.i;
                                            if (handler3 == null) {
                                                return;
                                            }
                                            handler3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogTransMsg.3.1
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                                                    DialogSetDesk.SetDeskListener setDeskListener2 = DialogTransMsg.this.b0;
                                                    if (setDeskListener2 != null) {
                                                        setDeskListener2.a(true);
                                                    }
                                                    DialogTransMsg.this.g0 = false;
                                                }
                                            });
                                        }
                                    }
                                });
                                dialogTransMsg2.f0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogTransMsg.4
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        DialogTransMsg dialogTransMsg3 = DialogTransMsg.this;
                                        if (!dialogTransMsg3.g0) {
                                            dialogTransMsg3.g0 = true;
                                            Handler handler3 = dialogTransMsg3.i;
                                            if (handler3 == null) {
                                                return;
                                            }
                                            handler3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogTransMsg.4.1
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    AnonymousClass4 anonymousClass4 = AnonymousClass4.this;
                                                    DialogSetDesk.SetDeskListener setDeskListener2 = DialogTransMsg.this.b0;
                                                    if (setDeskListener2 != null) {
                                                        setDeskListener2.a(false);
                                                    }
                                                    DialogTransMsg.this.g0 = false;
                                                }
                                            });
                                        }
                                    }
                                });
                                dialogTransMsg2.g(dialogTransMsg2.c0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogTransMsg.5
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view) {
                                        DialogTransMsg dialogTransMsg3 = DialogTransMsg.this;
                                        if (dialogTransMsg3.c0 == null) {
                                            return;
                                        }
                                        dialogTransMsg3.show();
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
        this.e0 = null;
        this.f0 = null;
        super.dismiss();
    }
}
