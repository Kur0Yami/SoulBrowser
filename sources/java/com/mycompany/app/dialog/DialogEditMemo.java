package com.mycompany.app.dialog;

import android.app.Activity;
import android.content.Context;
import android.database.Cursor;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.mycompany.app.async.MyAsyncTask;
import com.mycompany.app.db.DbUtil;
import com.mycompany.app.db.book.DbBookDc;
import com.mycompany.app.dialog.DialogEditUrl;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyEditPure;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyRoundFrame;
import java.lang.ref.WeakReference;

/* loaded from: classes3.dex */
public class DialogEditMemo extends MyDialogBottom {
    public Context a0;
    public DialogEditUrl.EditUrlListener b0;
    public final int c0;
    public long d0;
    public String e0;
    public String f0;
    public final boolean g0;
    public final boolean h0;
    public String i0;
    public String j0;
    public MyDialogLinear k0;
    public AppCompatTextView l0;
    public MyRoundFrame m0;
    public MyEditPure n0;
    public MyRoundFrame o0;
    public MyEditPure p0;
    public MyLineText q0;
    public DialogTask r0;
    public boolean s0;

    /* renamed from: com.mycompany.app.dialog.DialogEditMemo$5, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass5 implements View.OnClickListener {
        public AnonymousClass5() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            MyRoundFrame myRoundFrame = DialogEditMemo.this.m0;
            if (myRoundFrame == null) {
                return;
            }
            myRoundFrame.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditMemo.5.1
                @Override // java.lang.Runnable
                public final void run() {
                    DialogEditMemo dialogEditMemo = DialogEditMemo.this;
                    MyEditPure myEditPure = dialogEditMemo.n0;
                    if (myEditPure == null) {
                        return;
                    }
                    myEditPure.requestFocus();
                    dialogEditMemo.m0.postDelayed(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditMemo.5.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            MyEditPure myEditPure2;
                            DialogEditMemo dialogEditMemo2 = DialogEditMemo.this;
                            Context context = dialogEditMemo2.a0;
                            if (context != null && (myEditPure2 = dialogEditMemo2.n0) != null) {
                                MainUtil.c8(context, myEditPure2);
                            }
                        }
                    }, 200L);
                }
            });
        }
    }

    /* renamed from: com.mycompany.app.dialog.DialogEditMemo$7, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass7 implements View.OnClickListener {
        public AnonymousClass7() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            MyRoundFrame myRoundFrame = DialogEditMemo.this.o0;
            if (myRoundFrame == null) {
                return;
            }
            myRoundFrame.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditMemo.7.1
                @Override // java.lang.Runnable
                public final void run() {
                    DialogEditMemo dialogEditMemo = DialogEditMemo.this;
                    MyEditPure myEditPure = dialogEditMemo.p0;
                    if (myEditPure == null) {
                        return;
                    }
                    myEditPure.requestFocus();
                    dialogEditMemo.o0.postDelayed(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditMemo.7.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            MyEditPure myEditPure2;
                            DialogEditMemo dialogEditMemo2 = DialogEditMemo.this;
                            Context context = dialogEditMemo2.a0;
                            if (context != null && (myEditPure2 = dialogEditMemo2.p0) != null) {
                                MainUtil.c8(context, myEditPure2);
                            }
                        }
                    }, 200L);
                }
            });
        }
    }

    /* loaded from: classes3.dex */
    public static class DialogTask extends MyAsyncTask {
        public final WeakReference e;
        public final String f;
        public final String g;

        public DialogTask(DialogEditMemo dialogEditMemo, String str, String str2) {
            WeakReference weakReference = new WeakReference(dialogEditMemo);
            this.e = weakReference;
            if (((DialogEditMemo) weakReference.get()) == null) {
                return;
            }
            this.f = str;
            this.g = str2;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:141:0x024a  */
        /* JADX WARN: Removed duplicated region for block: B:174:0x02b9  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x012e  */
        /* JADX WARN: Removed duplicated region for block: B:35:0x0135  */
        /* JADX WARN: Removed duplicated region for block: B:65:0x0194  */
        /* JADX WARN: Type inference failed for: r0v25, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r18v0 */
        /* JADX WARN: Type inference failed for: r18v1 */
        /* JADX WARN: Type inference failed for: r18v2 */
        /* JADX WARN: Type inference failed for: r7v24, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
        @Override // com.mycompany.app.async.MyAsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a() {
            /*
                Method dump skipped, instructions count: 703
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogEditMemo.DialogTask.a():void");
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            DialogEditMemo dialogEditMemo;
            WeakReference weakReference = this.e;
            if (weakReference == null || (dialogEditMemo = (DialogEditMemo) weakReference.get()) == null) {
                return;
            }
            dialogEditMemo.r0 = null;
            DialogEditUrl.EditUrlListener editUrlListener = dialogEditMemo.b0;
            if (editUrlListener != null) {
                if (dialogEditMemo.c0 == 24) {
                    editUrlListener.a(dialogEditMemo.d0, dialogEditMemo.i0, this.g);
                } else {
                    editUrlListener.a(dialogEditMemo.d0, null, null);
                }
            }
            dialogEditMemo.dismiss();
        }
    }

    public DialogEditMemo(Activity activity, int i, long j, String str, String str2, DialogEditUrl.EditUrlListener editUrlListener) {
        super(activity);
        this.a0 = getContext();
        this.b0 = editUrlListener;
        this.c0 = i;
        this.d0 = j;
        this.e0 = str;
        this.f0 = str2;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditMemo.1
            @Override // java.lang.Runnable
            public final void run() {
                DialogEditMemo.B(DialogEditMemo.this);
            }
        });
    }

    public static void B(DialogEditMemo dialogEditMemo) {
        int i;
        int i2;
        AppCompatTextView appCompatTextView;
        MyEditPure myEditPure;
        Context context = dialogEditMemo.a0;
        if (context != null) {
            MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
            int G = (int) MainUtil.G(context, 12.0f);
            LinearLayout linearLayout = new LinearLayout(context);
            int i3 = MainApp.E1;
            linearLayout.setPadding(i3, 0, i3, G);
            linearLayout.setOrientation(1);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0);
            layoutParams.weight = 1.0f;
            q.addView(linearLayout, layoutParams);
            int i4 = dialogEditMemo.c0;
            MyRoundFrame myRoundFrame = null;
            if (i4 == 24) {
                appCompatTextView = com.google.android.gms.internal.mlkit_vision_text_common.a.C(context, null, 16, 1, 16.0f);
                LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, MainApp.g1);
                layoutParams2.topMargin = G;
                linearLayout.addView(appCompatTextView, layoutParams2);
                i = -1;
                i2 = -2;
                myEditPure = null;
            } else if (i4 != 26 && i4 != 37) {
                MyRoundFrame myRoundFrame2 = new MyRoundFrame(context);
                LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -2);
                layoutParams3.topMargin = G;
                linearLayout.addView(myRoundFrame2, layoutParams3);
                myEditPure = new MyEditPure(context);
                myEditPure.setPadding(MainApp.E1, MainApp.F1, MainApp.E1, MainApp.F1);
                myEditPure.setSingleLine(true);
                myEditPure.setTextDirection(3);
                myEditPure.setTextSize(1, 16.0f);
                if (Build.VERSION.SDK_INT >= 29) {
                    myEditPure.setTextCursorDrawable(R.drawable.edit_cursor);
                }
                myEditPure.setHint(R.string.name);
                myEditPure.setHintTextColor(-8289919);
                myEditPure.setImeOptions(268435456);
                myEditPure.setBackground(null);
                i2 = -2;
                i = -1;
                myRoundFrame2.addView(myEditPure, -1, -2);
                myRoundFrame = myRoundFrame2;
                appCompatTextView = null;
            } else {
                i = -1;
                i2 = -2;
                appCompatTextView = null;
                myEditPure = null;
                myRoundFrame = null;
            }
            MyRoundFrame myRoundFrame3 = new MyRoundFrame(context);
            LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(i, i2);
            layoutParams4.topMargin = G;
            linearLayout.addView(myRoundFrame3, layoutParams4);
            MyEditPure myEditPure2 = new MyEditPure(context);
            myEditPure2.setPadding(MainApp.E1, MainApp.F1, MainApp.E1, MainApp.F1);
            myEditPure2.setGravity(8388659);
            myEditPure2.setMinLines(5);
            myEditPure2.setTextDirection(3);
            myEditPure2.setTextSize(1, 16.0f);
            if (Build.VERSION.SDK_INT >= 29) {
                myEditPure2.setTextCursorDrawable(R.drawable.edit_cursor);
            }
            myEditPure2.setImeOptions(268435456);
            myEditPure2.setBackground(null);
            myRoundFrame3.addView(myEditPure2, -1, -2);
            MyLineText myLineText = new MyLineText(context);
            myLineText.setGravity(17);
            myLineText.setTextSize(1, 16.0f);
            myLineText.setText(R.string.save);
            myLineText.t(MainApp.E1);
            q.addView(myLineText, -1, MainApp.g1);
            dialogEditMemo.k0 = q;
            dialogEditMemo.l0 = appCompatTextView;
            dialogEditMemo.m0 = myRoundFrame;
            dialogEditMemo.n0 = myEditPure;
            dialogEditMemo.o0 = myRoundFrame3;
            dialogEditMemo.p0 = myEditPure2;
            dialogEditMemo.q0 = myLineText;
            Handler handler = dialogEditMemo.i;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditMemo.4
                @Override // java.lang.Runnable
                public final void run() {
                    final DialogEditMemo dialogEditMemo2 = DialogEditMemo.this;
                    if (dialogEditMemo2.k0 != null && dialogEditMemo2.a0 != null) {
                        if (MainApp.K1) {
                            dialogEditMemo2.o0.setBgColor(-13816531);
                            dialogEditMemo2.p0.setTextColor(-328966);
                            dialogEditMemo2.q0.setBackgroundResource(R.drawable.selector_normal_dark);
                            dialogEditMemo2.q0.setTextColor(-328966);
                        } else {
                            dialogEditMemo2.o0.setBgColor(-460552);
                            dialogEditMemo2.p0.setTextColor(-16777216);
                            dialogEditMemo2.q0.setBackgroundResource(R.drawable.selector_normal);
                            dialogEditMemo2.q0.setTextColor(-14784824);
                        }
                        int i5 = dialogEditMemo2.c0;
                        if (i5 == 24) {
                            AppCompatTextView appCompatTextView2 = dialogEditMemo2.l0;
                            if (appCompatTextView2 != null) {
                                if (MainApp.K1) {
                                    appCompatTextView2.setTextColor(-328966);
                                } else {
                                    appCompatTextView2.setTextColor(-16777216);
                                }
                                dialogEditMemo2.l0.setText(DbBookDc.a(dialogEditMemo2.i0, dialogEditMemo2.j0, dialogEditMemo2.h0));
                            } else {
                                return;
                            }
                        } else if (i5 != 26 && i5 != 37) {
                            MyRoundFrame myRoundFrame4 = dialogEditMemo2.m0;
                            if (myRoundFrame4 != null) {
                                if (MainApp.K1) {
                                    myRoundFrame4.setBgColor(-13816531);
                                    dialogEditMemo2.n0.setTextColor(-328966);
                                } else {
                                    myRoundFrame4.setBgColor(-460552);
                                    dialogEditMemo2.n0.setTextColor(-16777216);
                                }
                                if (!TextUtils.isEmpty(dialogEditMemo2.e0)) {
                                    dialogEditMemo2.n0.setText(dialogEditMemo2.e0);
                                }
                                dialogEditMemo2.m0.setOnClickListener(new AnonymousClass5());
                                dialogEditMemo2.n0.setSelectAllOnFocus(true);
                                dialogEditMemo2.n0.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditMemo.6
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        DialogEditMemo dialogEditMemo3 = DialogEditMemo.this;
                                        MyEditPure myEditPure3 = dialogEditMemo3.n0;
                                        if (myEditPure3 == null) {
                                            return;
                                        }
                                        myEditPure3.requestFocus();
                                        dialogEditMemo3.n0.postDelayed(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditMemo.6.1
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                MyEditPure myEditPure4;
                                                DialogEditMemo dialogEditMemo4 = DialogEditMemo.this;
                                                Context context2 = dialogEditMemo4.a0;
                                                if (context2 != null && (myEditPure4 = dialogEditMemo4.n0) != null) {
                                                    MainUtil.c8(context2, myEditPure4);
                                                }
                                            }
                                        }, 200L);
                                    }
                                });
                                dialogEditMemo2.p0.setHint(R.string.user_agent);
                                dialogEditMemo2.p0.setHintTextColor(-8289919);
                            } else {
                                return;
                            }
                        }
                        if (!TextUtils.isEmpty(dialogEditMemo2.f0)) {
                            dialogEditMemo2.p0.setText(dialogEditMemo2.f0);
                        }
                        dialogEditMemo2.o0.setOnClickListener(new AnonymousClass7());
                        dialogEditMemo2.p0.setSelectAllOnFocus(true);
                        if (dialogEditMemo2.n0 == null) {
                            dialogEditMemo2.p0.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditMemo.8
                                @Override // java.lang.Runnable
                                public final void run() {
                                    DialogEditMemo dialogEditMemo3 = DialogEditMemo.this;
                                    MyEditPure myEditPure3 = dialogEditMemo3.p0;
                                    if (myEditPure3 == null) {
                                        return;
                                    }
                                    myEditPure3.requestFocus();
                                    dialogEditMemo3.p0.postDelayed(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditMemo.8.1
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            MyEditPure myEditPure4;
                                            DialogEditMemo dialogEditMemo4 = DialogEditMemo.this;
                                            Context context2 = dialogEditMemo4.a0;
                                            if (context2 != null && (myEditPure4 = dialogEditMemo4.p0) != null) {
                                                MainUtil.c8(context2, myEditPure4);
                                            }
                                        }
                                    }, 200L);
                                }
                            });
                        } else {
                            dialogEditMemo2.p0.postDelayed(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditMemo.9
                                @Override // java.lang.Runnable
                                public final void run() {
                                    MyEditPure myEditPure3;
                                    DialogEditMemo dialogEditMemo3 = DialogEditMemo.this;
                                    Context context2 = dialogEditMemo3.a0;
                                    if (context2 != null && (myEditPure3 = dialogEditMemo3.p0) != null) {
                                        MainUtil.c8(context2, myEditPure3);
                                    }
                                }
                            }, 200L);
                        }
                        dialogEditMemo2.q0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogEditMemo.10
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                DialogEditMemo dialogEditMemo3 = DialogEditMemo.this;
                                MyLineText myLineText2 = dialogEditMemo3.q0;
                                if (myLineText2 == null || dialogEditMemo3.s0) {
                                    return;
                                }
                                dialogEditMemo3.s0 = true;
                                myLineText2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditMemo.10.1
                                    /* JADX WARN: Removed duplicated region for block: B:15:0x0081  */
                                    /* JADX WARN: Removed duplicated region for block: B:18:0x0094  */
                                    /* JADX WARN: Removed duplicated region for block: B:21:0x00a2  */
                                    /* JADX WARN: Removed duplicated region for block: B:23:0x0098  */
                                    @Override // java.lang.Runnable
                                    /*
                                        Code decompiled incorrectly, please refer to instructions dump.
                                        To view partially-correct add '--show-bad-code' argument
                                    */
                                    public final void run() {
                                        /*
                                            r8 = this;
                                            com.mycompany.app.dialog.DialogEditMemo$10 r0 = com.mycompany.app.dialog.DialogEditMemo.AnonymousClass10.this
                                            com.mycompany.app.dialog.DialogEditMemo r0 = com.mycompany.app.dialog.DialogEditMemo.this
                                            com.mycompany.app.view.MyEditPure r1 = r0.p0
                                            r2 = 0
                                            if (r1 == 0) goto Lb2
                                            com.mycompany.app.dialog.DialogEditUrl$EditUrlListener r3 = r0.b0
                                            if (r3 != 0) goto Lf
                                            goto Lb2
                                        Lf:
                                            com.mycompany.app.view.MyEditPure r3 = r0.n0
                                            r4 = 0
                                            r5 = 1
                                            if (r3 == 0) goto L47
                                            java.lang.String r1 = com.mycompany.app.main.MainUtil.Q0(r3, r5)
                                            boolean r3 = android.text.TextUtils.isEmpty(r1)
                                            if (r3 == 0) goto L2d
                                            com.mycompany.app.view.MyEditPure r1 = r0.n0
                                            com.mycompany.app.main.MainUtil.b7(r1)
                                            android.content.Context r1 = r0.a0
                                            int r3 = com.mycompany.app.soulbrowser.R.string.input_name
                                            com.mycompany.app.main.MainUtil.e8(r1, r3)
                                            goto Lb2
                                        L2d:
                                            com.mycompany.app.view.MyEditPure r3 = r0.p0
                                            java.lang.String r3 = com.mycompany.app.main.MainUtil.Q0(r3, r5)
                                            boolean r6 = android.text.TextUtils.isEmpty(r3)
                                            if (r6 == 0) goto L75
                                            com.mycompany.app.view.MyEditPure r1 = r0.p0
                                            com.mycompany.app.main.MainUtil.b7(r1)
                                            android.content.Context r1 = r0.a0
                                            int r3 = com.mycompany.app.soulbrowser.R.string.empty
                                            com.mycompany.app.main.MainUtil.e8(r1, r3)
                                            goto Lb2
                                        L47:
                                            int r3 = r0.c0
                                            r6 = 24
                                            if (r3 == r6) goto L5c
                                            r6 = 26
                                            if (r3 != r6) goto L52
                                            goto L5c
                                        L52:
                                            java.lang.String r1 = com.mycompany.app.main.MainUtil.Q0(r1, r2)
                                            java.lang.String r1 = com.mycompany.app.main.MainUtil.T6(r1)
                                        L5a:
                                            r3 = r1
                                            goto L61
                                        L5c:
                                            java.lang.String r1 = com.mycompany.app.main.MainUtil.Q0(r1, r5)
                                            goto L5a
                                        L61:
                                            boolean r1 = android.text.TextUtils.isEmpty(r3)
                                            if (r1 == 0) goto L74
                                            com.mycompany.app.view.MyEditPure r1 = r0.p0
                                            com.mycompany.app.main.MainUtil.b7(r1)
                                            android.content.Context r1 = r0.a0
                                            int r3 = com.mycompany.app.soulbrowser.R.string.empty
                                            com.mycompany.app.main.MainUtil.e8(r1, r3)
                                            goto Lb2
                                        L74:
                                            r1 = r4
                                        L75:
                                            r0.setCanceledOnTouchOutside(r2)
                                            com.mycompany.app.view.MyDialogLinear r6 = r0.k0
                                            r6.e(r2, r2, r5, r2)
                                            com.mycompany.app.view.MyEditPure r6 = r0.n0
                                            if (r6 == 0) goto L84
                                            r6.setEnabled(r2)
                                        L84:
                                            com.mycompany.app.view.MyEditPure r6 = r0.p0
                                            r6.setEnabled(r2)
                                            com.mycompany.app.view.MyLineText r6 = r0.q0
                                            r6.setEnabled(r2)
                                            com.mycompany.app.view.MyLineText r6 = r0.q0
                                            boolean r7 = com.mycompany.app.main.MainApp.K1
                                            if (r7 == 0) goto L98
                                            r7 = -8355712(0xffffffffff808080, float:NaN)
                                            goto L9b
                                        L98:
                                            r7 = -2434342(0xffffffffffdadada, float:NaN)
                                        L9b:
                                            r6.setTextColor(r7)
                                            com.mycompany.app.dialog.DialogEditMemo$DialogTask r6 = r0.r0
                                            if (r6 == 0) goto La4
                                            r6.f12839c = r5
                                        La4:
                                            r0.r0 = r4
                                            com.mycompany.app.dialog.DialogEditMemo$DialogTask r4 = new com.mycompany.app.dialog.DialogEditMemo$DialogTask
                                            r4.<init>(r0, r1, r3)
                                            r0.r0 = r4
                                            android.content.Context r1 = r0.a0
                                            r4.b(r1)
                                        Lb2:
                                            r0.s0 = r2
                                            return
                                        */
                                        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogEditMemo.AnonymousClass10.AnonymousClass1.run():void");
                                    }
                                });
                            }
                        });
                        dialogEditMemo2.g(dialogEditMemo2.k0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogEditMemo.11
                            @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                            public final void a(View view) {
                                DialogEditMemo dialogEditMemo3 = DialogEditMemo.this;
                                if (dialogEditMemo3.k0 == null) {
                                    return;
                                }
                                dialogEditMemo3.show();
                            }
                        });
                    }
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
        DialogTask dialogTask = this.r0;
        if (dialogTask != null) {
            dialogTask.f12839c = true;
        }
        this.r0 = null;
        MyDialogLinear myDialogLinear = this.k0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.k0 = null;
        }
        MyRoundFrame myRoundFrame = this.m0;
        if (myRoundFrame != null) {
            myRoundFrame.a();
            this.m0 = null;
        }
        MyRoundFrame myRoundFrame2 = this.o0;
        if (myRoundFrame2 != null) {
            myRoundFrame2.a();
            this.o0 = null;
        }
        MyLineText myLineText = this.q0;
        if (myLineText != null) {
            myLineText.u();
            this.q0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.e0 = null;
        this.f0 = null;
        this.i0 = null;
        this.j0 = null;
        this.l0 = null;
        this.n0 = null;
        this.p0 = null;
        super.dismiss();
    }

    public DialogEditMemo(Activity activity, long j, boolean z, String str, String str2, String str3, DialogEditUrl.EditUrlListener editUrlListener) {
        super(activity);
        this.a0 = getContext();
        this.b0 = editUrlListener;
        this.c0 = 24;
        this.d0 = j;
        this.h0 = z;
        this.i0 = str;
        this.j0 = str2;
        this.f0 = str3;
        if (j > 0) {
            this.g0 = true;
            Handler handler = this.i;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditMemo.2
                @Override // java.lang.Runnable
                public final void run() {
                    DialogEditMemo.B(DialogEditMemo.this);
                }
            });
            return;
        }
        s(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditMemo.3
            @Override // java.lang.Runnable
            public final void run() {
                Cursor cursor;
                DialogEditMemo dialogEditMemo = DialogEditMemo.this;
                if (dialogEditMemo.a0 != null && !TextUtils.isEmpty(dialogEditMemo.i0)) {
                    String str4 = null;
                    long j2 = 0;
                    try {
                        cursor = DbUtil.g(DbBookDc.b(dialogEditMemo.a0).getWritableDatabase(), "DbBookDc_table", new String[]{"_id", "_text"}, "_path=?", new String[]{dialogEditMemo.i0}, null);
                        if (cursor != null) {
                            try {
                                if (cursor.moveToFirst()) {
                                    j2 = cursor.getLong(cursor.getColumnIndex("_id"));
                                    str4 = cursor.getString(cursor.getColumnIndex("_text"));
                                }
                            } catch (Exception unused) {
                            }
                        }
                    } catch (Exception unused2) {
                        cursor = null;
                    }
                    if (cursor != null) {
                        cursor.close();
                    }
                    dialogEditMemo.d0 = j2;
                    dialogEditMemo.f0 = str4;
                }
                Handler handler2 = dialogEditMemo.i;
                if (handler2 == null) {
                    return;
                }
                handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditMemo.3.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogEditMemo.B(DialogEditMemo.this);
                    }
                });
            }
        });
    }
}
