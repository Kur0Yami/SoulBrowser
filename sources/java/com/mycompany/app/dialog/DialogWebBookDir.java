package com.mycompany.app.dialog;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.mycompany.app.async.MyAsyncTask;
import com.mycompany.app.db.book.DbBookWeb;
import com.mycompany.app.dialog.DialogWebBookList;
import com.mycompany.app.dialog.DialogWebBookMove;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyEditText;
import com.mycompany.app.view.MyLineText;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class DialogWebBookDir extends MyDialogBottom {
    public Context a0;
    public DialogWebBookMove.BookMoveListener b0;
    public MyDialogLinear c0;
    public MyEditText d0;
    public MyLineText e0;
    public String f0;
    public DialogTask g0;
    public boolean h0;

    /* loaded from: classes3.dex */
    public static class DialogTask extends MyAsyncTask {
        public final WeakReference e;
        public final String f;
        public ArrayList g;
        public boolean h;

        public DialogTask(DialogWebBookDir dialogWebBookDir, String str) {
            WeakReference weakReference = new WeakReference(dialogWebBookDir);
            this.e = weakReference;
            DialogWebBookDir dialogWebBookDir2 = (DialogWebBookDir) weakReference.get();
            if (dialogWebBookDir2 == null) {
                return;
            }
            this.f = str;
            DialogWebBookDir.D(dialogWebBookDir2, true);
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void a() {
            DialogWebBookDir dialogWebBookDir;
            WeakReference weakReference = this.e;
            if (weakReference != null && (dialogWebBookDir = (DialogWebBookDir) weakReference.get()) != null && !this.f12839c) {
                this.g = new ArrayList();
                MainItem.ChildItem l = DbBookWeb.l(-1L, dialogWebBookDir.a0, dialogWebBookDir.f0, this.f, true);
                if (l != null) {
                    this.g.add(Long.valueOf(l.y));
                    this.h = true;
                }
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            DialogWebBookDir dialogWebBookDir;
            WeakReference weakReference = this.e;
            if (weakReference == null || (dialogWebBookDir = (DialogWebBookDir) weakReference.get()) == null) {
                return;
            }
            dialogWebBookDir.g0 = null;
            dialogWebBookDir.dismiss();
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            DialogWebBookDir dialogWebBookDir;
            WeakReference weakReference = this.e;
            if (weakReference != null && (dialogWebBookDir = (DialogWebBookDir) weakReference.get()) != null) {
                dialogWebBookDir.g0 = null;
                if (!this.h) {
                    MainUtil.e8(dialogWebBookDir.a0, R.string.fail);
                    DialogWebBookDir.D(dialogWebBookDir, false);
                    return;
                }
                MainUtil.e8(dialogWebBookDir.a0, R.string.success);
                DialogWebBookMove.BookMoveListener bookMoveListener = dialogWebBookDir.b0;
                if (bookMoveListener != null) {
                    ((DialogWebBookList.AnonymousClass20) bookMoveListener).b(this.g, dialogWebBookDir.f0);
                }
            }
        }
    }

    public static void B(DialogWebBookDir dialogWebBookDir) {
        Context context = dialogWebBookDir.a0;
        if (context != null) {
            MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
            int G = (int) MainUtil.G(context, 72.0f);
            MyEditText myEditText = new MyEditText(context);
            myEditText.setGravity(16);
            myEditText.setSingleLine(true);
            myEditText.setTextDirection(3);
            myEditText.setTextSize(1, 16.0f);
            if (Build.VERSION.SDK_INT >= 29) {
                myEditText.setTextCursorDrawable(R.drawable.edit_cursor);
            }
            myEditText.setImeOptions(268435456);
            myEditText.setBackground(null);
            myEditText.b(0);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, G);
            layoutParams.setMarginStart(MainApp.E1);
            layoutParams.setMarginEnd(MainApp.E1);
            q.addView(myEditText, layoutParams);
            MyLineText r = com.google.android.gms.internal.mlkit_vision_text_common.a.r(context, 17, 1, 16.0f);
            r.t(MainApp.E1);
            q.addView(r, -1, MainApp.g1);
            dialogWebBookDir.c0 = q;
            dialogWebBookDir.d0 = myEditText;
            dialogWebBookDir.e0 = r;
            Handler handler = dialogWebBookDir.i;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebBookDir.2
                @Override // java.lang.Runnable
                public final void run() {
                    final DialogWebBookDir dialogWebBookDir2 = DialogWebBookDir.this;
                    if (dialogWebBookDir2.c0 != null && dialogWebBookDir2.a0 != null) {
                        if (MainApp.K1) {
                            dialogWebBookDir2.d0.setTextColor(-328966);
                            dialogWebBookDir2.e0.setTextColor(-328966);
                            dialogWebBookDir2.e0.setBackgroundResource(R.drawable.selector_normal_dark);
                        } else {
                            dialogWebBookDir2.d0.setTextColor(-16777216);
                            dialogWebBookDir2.e0.setTextColor(-14784824);
                            dialogWebBookDir2.e0.setBackgroundResource(R.drawable.selector_normal);
                        }
                        dialogWebBookDir2.e0.setText(R.string.create_folder);
                        dialogWebBookDir2.d0.setSelectAllOnFocus(true);
                        dialogWebBookDir2.d0.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebBookDir.3
                            @Override // java.lang.Runnable
                            public final void run() {
                                DialogWebBookDir dialogWebBookDir3 = DialogWebBookDir.this;
                                MyEditText myEditText2 = dialogWebBookDir3.d0;
                                if (myEditText2 == null) {
                                    return;
                                }
                                myEditText2.requestFocus();
                                dialogWebBookDir3.d0.postDelayed(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebBookDir.3.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        MyEditText myEditText3;
                                        DialogWebBookDir dialogWebBookDir4 = DialogWebBookDir.this;
                                        Context context2 = dialogWebBookDir4.a0;
                                        if (context2 != null && (myEditText3 = dialogWebBookDir4.d0) != null) {
                                            MainUtil.c8(context2, myEditText3);
                                        }
                                    }
                                }, 200L);
                            }
                        });
                        dialogWebBookDir2.d0.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.mycompany.app.dialog.DialogWebBookDir.4
                            @Override // android.widget.TextView.OnEditorActionListener
                            public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                                DialogWebBookDir dialogWebBookDir3 = DialogWebBookDir.this;
                                MyEditText myEditText2 = dialogWebBookDir3.d0;
                                if (myEditText2 == null || dialogWebBookDir3.h0) {
                                    return true;
                                }
                                dialogWebBookDir3.h0 = true;
                                myEditText2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebBookDir.4.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        AnonymousClass4 anonymousClass4 = AnonymousClass4.this;
                                        DialogWebBookDir.C(DialogWebBookDir.this);
                                        DialogWebBookDir.this.h0 = false;
                                    }
                                });
                                return true;
                            }
                        });
                        dialogWebBookDir2.e0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogWebBookDir.5
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                DialogWebBookDir dialogWebBookDir3 = DialogWebBookDir.this;
                                MyLineText myLineText = dialogWebBookDir3.e0;
                                if (myLineText != null) {
                                    if (myLineText.isActivated()) {
                                        dialogWebBookDir3.E();
                                    } else {
                                        if (dialogWebBookDir3.h0) {
                                            return;
                                        }
                                        dialogWebBookDir3.h0 = true;
                                        dialogWebBookDir3.e0.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebBookDir.5.1
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                AnonymousClass5 anonymousClass5 = AnonymousClass5.this;
                                                DialogWebBookDir.C(DialogWebBookDir.this);
                                                DialogWebBookDir.this.h0 = false;
                                            }
                                        });
                                    }
                                }
                            }
                        });
                        dialogWebBookDir2.g(dialogWebBookDir2.c0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogWebBookDir.6
                            @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                            public final void a(View view) {
                                DialogWebBookDir dialogWebBookDir3 = DialogWebBookDir.this;
                                if (dialogWebBookDir3.c0 == null) {
                                    return;
                                }
                                dialogWebBookDir3.setCanceledOnTouchOutside(true);
                                dialogWebBookDir3.show();
                            }
                        });
                    }
                }
            });
        }
    }

    public static void C(DialogWebBookDir dialogWebBookDir) {
        MyEditText myEditText = dialogWebBookDir.d0;
        if (myEditText == null) {
            return;
        }
        String Q0 = MainUtil.Q0(myEditText, true);
        if (TextUtils.isEmpty(Q0)) {
            MainUtil.e8(dialogWebBookDir.a0, R.string.input_name);
            return;
        }
        if (DbBookWeb.i(dialogWebBookDir.a0, dialogWebBookDir.f0, Q0)) {
            MainUtil.e8(dialogWebBookDir.a0, R.string.exist_name);
            return;
        }
        DialogTask dialogTask = dialogWebBookDir.g0;
        if (dialogTask != null) {
            dialogTask.f12839c = true;
        }
        dialogWebBookDir.g0 = null;
        DialogTask dialogTask2 = new DialogTask(dialogWebBookDir, Q0);
        dialogWebBookDir.g0 = dialogTask2;
        dialogTask2.b(dialogWebBookDir.a0);
    }

    public static void D(DialogWebBookDir dialogWebBookDir, boolean z) {
        MyDialogLinear myDialogLinear = dialogWebBookDir.c0;
        if (myDialogLinear == null) {
            return;
        }
        int i = -328966;
        if (z) {
            dialogWebBookDir.setCanceledOnTouchOutside(false);
            dialogWebBookDir.c0.e(0, 0, true, false);
            dialogWebBookDir.e0.setActivated(true);
            dialogWebBookDir.e0.setText(R.string.cancel);
            MyLineText myLineText = dialogWebBookDir.e0;
            if (!MainApp.K1) {
                i = -16777216;
            }
            myLineText.setTextColor(i);
            dialogWebBookDir.d0.setEnabled(false);
            return;
        }
        myDialogLinear.e(0, 0, false, false);
        dialogWebBookDir.e0.setText(R.string.create_folder);
        MyLineText myLineText2 = dialogWebBookDir.e0;
        if (!MainApp.K1) {
            i = -14784824;
        }
        myLineText2.setTextColor(i);
        dialogWebBookDir.e0.setActivated(false);
        dialogWebBookDir.d0.setEnabled(true);
        dialogWebBookDir.setCanceledOnTouchOutside(true);
    }

    public final void E() {
        int i;
        MyDialogLinear myDialogLinear = this.c0;
        if (myDialogLinear != null && this.g0 != null) {
            myDialogLinear.e(0, 0, true, false);
            this.e0.setEnabled(false);
            this.e0.setActivated(true);
            this.e0.setText(R.string.canceling);
            MyLineText myLineText = this.e0;
            if (MainApp.K1) {
                i = -8355712;
            } else {
                i = -2434342;
            }
            myLineText.setTextColor(i);
            DialogTask dialogTask = this.g0;
            if (dialogTask != null) {
                dialogTask.f12839c = true;
            }
            this.g0 = null;
            return;
        }
        dismiss();
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void cancel() {
        E();
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.a0 == null) {
            return;
        }
        DialogTask dialogTask = this.g0;
        if (dialogTask != null) {
            dialogTask.f12839c = true;
        }
        this.g0 = null;
        MyDialogLinear myDialogLinear = this.c0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.c0 = null;
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
        this.b0 = null;
        this.f0 = null;
        super.dismiss();
    }
}
