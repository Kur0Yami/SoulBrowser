package com.mycompany.app.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.mycompany.app.data.book.DataBookFilter;
import com.mycompany.app.data.book.DataBookUser;
import com.mycompany.app.db.book.DbBookFilter;
import com.mycompany.app.db.book.DbBookUser;
import com.mycompany.app.dialog.DialogEditUrl;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefRead;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyButtonText;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyEditPure;
import com.mycompany.app.view.MyLineFrame;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyRoundFrame;

/* loaded from: classes3.dex */
public class DialogEditCmd extends MyDialogBottom {
    public static final /* synthetic */ int q0 = 0;
    public MainActivity a0;
    public Context b0;
    public DialogEditUrl.EditUrlListener c0;
    public long d0;
    public String e0;
    public final boolean f0;
    public MyDialogLinear g0;
    public MyButtonImage h0;
    public MyButtonText i0;
    public MyButtonText j0;
    public MyButtonText k0;
    public MyRoundFrame l0;
    public MyEditPure m0;
    public MyLineText n0;
    public DialogGuideArea o0;
    public boolean p0;

    /* renamed from: com.mycompany.app.dialog.DialogEditCmd$7, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass7 implements View.OnClickListener {
        public AnonymousClass7() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            MyRoundFrame myRoundFrame = DialogEditCmd.this.l0;
            if (myRoundFrame == null) {
                return;
            }
            myRoundFrame.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditCmd.7.1
                @Override // java.lang.Runnable
                public final void run() {
                    DialogEditCmd dialogEditCmd = DialogEditCmd.this;
                    MyEditPure myEditPure = dialogEditCmd.m0;
                    if (myEditPure == null) {
                        return;
                    }
                    myEditPure.requestFocus();
                    dialogEditCmd.l0.postDelayed(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditCmd.7.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            MyEditPure myEditPure2;
                            DialogEditCmd dialogEditCmd2 = DialogEditCmd.this;
                            Context context = dialogEditCmd2.b0;
                            if (context != null && (myEditPure2 = dialogEditCmd2.m0) != null) {
                                MainUtil.c8(context, myEditPure2);
                            }
                        }
                    }, 200L);
                }
            });
        }
    }

    public DialogEditCmd(MainActivity mainActivity, long j, String str, boolean z, DialogEditUrl.EditUrlListener editUrlListener) {
        super(mainActivity);
        this.a0 = mainActivity;
        this.b0 = getContext();
        this.c0 = editUrlListener;
        this.d0 = j;
        this.e0 = str;
        this.f0 = z;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditCmd.1
            @Override // java.lang.Runnable
            public final void run() {
                DialogEditCmd.B(DialogEditCmd.this);
            }
        });
    }

    public static void B(DialogEditCmd dialogEditCmd) {
        Context context = dialogEditCmd.b0;
        if (context != null) {
            MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
            MyLineFrame myLineFrame = new MyLineFrame(context);
            myLineFrame.setLinePad(MainApp.E1);
            myLineFrame.setLineDn(true);
            q.addView(myLineFrame, -1, MainApp.g1);
            MyButtonImage myButtonImage = new MyButtonImage(context);
            myButtonImage.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            int i = MainApp.g1;
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i, i);
            layoutParams.setMarginStart(MainApp.F1);
            myLineFrame.addView(myButtonImage, layoutParams);
            int G = (int) MainUtil.G(context, 24.0f);
            MyButtonText myButtonText = new MyButtonText(context);
            myButtonText.setGravity(17);
            myButtonText.setTextSize(1, 18.0f);
            myButtonText.setRoundRect(true);
            myButtonText.setRoundRadius(G);
            int i2 = MainApp.g1;
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(i2, i2);
            layoutParams2.gravity = 8388613;
            layoutParams2.setMarginEnd((int) MainUtil.G(context, 104.0f));
            myLineFrame.addView(myButtonText, layoutParams2);
            MyButtonText myButtonText2 = new MyButtonText(context);
            myButtonText2.setGravity(17);
            myButtonText2.setTextSize(1, 18.0f);
            myButtonText2.setRoundRect(true);
            myButtonText2.setRoundRadius(G);
            int i3 = MainApp.g1;
            FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(i3, i3);
            layoutParams3.gravity = 8388613;
            layoutParams3.setMarginEnd(MainApp.h1);
            myLineFrame.addView(myButtonText2, layoutParams3);
            MyButtonText myButtonText3 = new MyButtonText(context);
            myButtonText3.setGravity(17);
            myButtonText3.setTextSize(1, 18.0f);
            myButtonText3.setRoundRect(true);
            myButtonText3.setRoundRadius(G);
            int i4 = MainApp.g1;
            FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(i4, i4);
            layoutParams4.gravity = 8388613;
            layoutParams4.setMarginEnd(MainApp.F1);
            myLineFrame.addView(myButtonText3, layoutParams4);
            int G2 = (int) MainUtil.G(context, 12.0f);
            MyRoundFrame myRoundFrame = new MyRoundFrame(context);
            LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-1, -2);
            layoutParams5.topMargin = G2;
            layoutParams5.bottomMargin = G2;
            layoutParams5.setMarginStart(MainApp.E1);
            layoutParams5.setMarginEnd(MainApp.E1);
            q.addView(myRoundFrame, layoutParams5);
            MyEditPure myEditPure = new MyEditPure(context);
            myEditPure.setPadding(MainApp.E1, MainApp.F1, MainApp.E1, MainApp.F1);
            myEditPure.setGravity(8388659);
            myEditPure.setMinLines(5);
            myEditPure.setTextDirection(3);
            myEditPure.setTextSize(1, 16.0f);
            if (Build.VERSION.SDK_INT >= 29) {
                myEditPure.setTextCursorDrawable(R.drawable.edit_cursor);
            }
            myEditPure.setImeOptions(268435456);
            myEditPure.setBackground(null);
            myRoundFrame.addView(myEditPure, -1, -2);
            MyLineText myLineText = new MyLineText(context);
            myLineText.setGravity(17);
            myLineText.setTextSize(1, 16.0f);
            myLineText.setText(R.string.apply);
            myLineText.setLinePad(MainApp.E1);
            myLineText.setLineUp(true);
            q.addView(myLineText, -1, MainApp.g1);
            dialogEditCmd.g0 = q;
            dialogEditCmd.h0 = myButtonImage;
            dialogEditCmd.i0 = myButtonText;
            dialogEditCmd.j0 = myButtonText2;
            dialogEditCmd.k0 = myButtonText3;
            dialogEditCmd.l0 = myRoundFrame;
            dialogEditCmd.m0 = myEditPure;
            dialogEditCmd.n0 = myLineText;
            Handler handler = dialogEditCmd.i;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditCmd.2
                @Override // java.lang.Runnable
                public final void run() {
                    final DialogEditCmd dialogEditCmd2 = DialogEditCmd.this;
                    if (dialogEditCmd2.g0 != null && dialogEditCmd2.b0 != null) {
                        if (MainApp.K1) {
                            dialogEditCmd2.h0.setImageResource(R.drawable.outline_help_dark_24);
                            dialogEditCmd2.i0.setTextColor(-328966);
                            dialogEditCmd2.j0.setTextColor(-328966);
                            dialogEditCmd2.k0.setTextColor(-328966);
                            dialogEditCmd2.h0.setBgPreColor(-12632257);
                            dialogEditCmd2.i0.setBgPreColor(-12632257);
                            dialogEditCmd2.j0.setBgPreColor(-12632257);
                            dialogEditCmd2.k0.setBgPreColor(-12632257);
                            dialogEditCmd2.l0.setBgColor(-13816531);
                            dialogEditCmd2.m0.setTextColor(-328966);
                            dialogEditCmd2.n0.setBackgroundResource(R.drawable.selector_normal_dark);
                            dialogEditCmd2.n0.setTextColor(-328966);
                        } else {
                            dialogEditCmd2.h0.setImageResource(R.drawable.outline_help_black_24);
                            dialogEditCmd2.i0.setTextColor(-16777216);
                            dialogEditCmd2.j0.setTextColor(-16777216);
                            dialogEditCmd2.k0.setTextColor(-16777216);
                            dialogEditCmd2.h0.setBgPreColor(553648128);
                            dialogEditCmd2.i0.setBgPreColor(553648128);
                            dialogEditCmd2.j0.setBgPreColor(553648128);
                            dialogEditCmd2.k0.setBgPreColor(553648128);
                            dialogEditCmd2.l0.setBgColor(-460552);
                            dialogEditCmd2.m0.setTextColor(-16777216);
                            dialogEditCmd2.n0.setBackgroundResource(R.drawable.selector_normal);
                            dialogEditCmd2.n0.setTextColor(-14784824);
                        }
                        dialogEditCmd2.i0.setText("^");
                        dialogEditCmd2.j0.setText("$");
                        dialogEditCmd2.k0.setText("*");
                        if (!TextUtils.isEmpty(dialogEditCmd2.e0)) {
                            dialogEditCmd2.m0.setText(dialogEditCmd2.e0);
                            dialogEditCmd2.m0.setSelection(dialogEditCmd2.e0.length());
                        }
                        if (PrefRead.H) {
                            dialogEditCmd2.h0.setNoti(true);
                        }
                        dialogEditCmd2.h0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogEditCmd.3
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                DialogGuideArea dialogGuideArea;
                                boolean z = PrefRead.H;
                                final DialogEditCmd dialogEditCmd3 = DialogEditCmd.this;
                                if (z) {
                                    PrefRead.H = false;
                                    PrefSet.d(8, dialogEditCmd3.b0, "mNotiArea", false);
                                    MyButtonImage myButtonImage2 = dialogEditCmd3.h0;
                                    if (myButtonImage2 != null) {
                                        myButtonImage2.setNoti(false);
                                    }
                                }
                                if (dialogEditCmd3.a0 == null || (dialogGuideArea = dialogEditCmd3.o0) != null) {
                                    return;
                                }
                                if (dialogGuideArea != null) {
                                    dialogGuideArea.dismiss();
                                    dialogEditCmd3.o0 = null;
                                }
                                DialogGuideArea dialogGuideArea2 = new DialogGuideArea(dialogEditCmd3.a0, 2, null);
                                dialogEditCmd3.o0 = dialogGuideArea2;
                                dialogGuideArea2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogEditCmd.10
                                    @Override // android.content.DialogInterface.OnDismissListener
                                    public final void onDismiss(DialogInterface dialogInterface) {
                                        int i5 = DialogEditCmd.q0;
                                        DialogEditCmd dialogEditCmd4 = DialogEditCmd.this;
                                        DialogGuideArea dialogGuideArea3 = dialogEditCmd4.o0;
                                        if (dialogGuideArea3 != null) {
                                            dialogGuideArea3.dismiss();
                                            dialogEditCmd4.o0 = null;
                                        }
                                    }
                                });
                            }
                        });
                        dialogEditCmd2.i0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogEditCmd.4
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                DialogEditCmd.C(DialogEditCmd.this, "^");
                            }
                        });
                        dialogEditCmd2.j0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogEditCmd.5
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                DialogEditCmd.C(DialogEditCmd.this, "$");
                            }
                        });
                        dialogEditCmd2.k0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogEditCmd.6
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                DialogEditCmd.C(DialogEditCmd.this, "*");
                            }
                        });
                        dialogEditCmd2.l0.setOnClickListener(new AnonymousClass7());
                        dialogEditCmd2.n0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogEditCmd.8
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                DialogEditCmd dialogEditCmd3 = DialogEditCmd.this;
                                MyLineText myLineText2 = dialogEditCmd3.n0;
                                if (myLineText2 == null || dialogEditCmd3.p0) {
                                    return;
                                }
                                dialogEditCmd3.p0 = true;
                                myLineText2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditCmd.8.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        int i5;
                                        final DialogEditCmd dialogEditCmd4 = DialogEditCmd.this;
                                        MyEditPure myEditPure2 = dialogEditCmd4.m0;
                                        if (myEditPure2 != null && dialogEditCmd4.c0 != null) {
                                            String Q0 = MainUtil.Q0(myEditPure2, true);
                                            if (dialogEditCmd4.f0) {
                                                dialogEditCmd4.c0.a(dialogEditCmd4.d0, Q0, null);
                                                dialogEditCmd4.dismiss();
                                            } else if (TextUtils.isEmpty(Q0)) {
                                                MainUtil.b7(dialogEditCmd4.m0);
                                                MainUtil.e8(dialogEditCmd4.b0, R.string.empty);
                                            } else {
                                                dialogEditCmd4.e0 = Q0;
                                                dialogEditCmd4.setCanceledOnTouchOutside(false);
                                                dialogEditCmd4.g0.e(0, 0, true, false);
                                                dialogEditCmd4.m0.setEnabled(false);
                                                dialogEditCmd4.n0.setEnabled(false);
                                                MyLineText myLineText3 = dialogEditCmd4.n0;
                                                if (MainApp.K1) {
                                                    i5 = -8355712;
                                                } else {
                                                    i5 = -2434342;
                                                }
                                                myLineText3.setTextColor(i5);
                                                dialogEditCmd4.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditCmd.11
                                                    @Override // java.lang.Runnable
                                                    public final void run() {
                                                        DialogEditCmd dialogEditCmd5 = DialogEditCmd.this;
                                                        Context context2 = dialogEditCmd5.b0;
                                                        if (context2 != null) {
                                                            String e = DbBookUser.e(dialogEditCmd5.e0);
                                                            MainItem.ChildItem f = DbBookUser.f(context2, dialogEditCmd5.d0, MainUtil.q0(e), dialogEditCmd5.e0);
                                                            if (f != null) {
                                                                dialogEditCmd5.d0 = f.y;
                                                                DataBookUser k = DataBookUser.k(context2);
                                                                long j = dialogEditCmd5.d0;
                                                                String str = dialogEditCmd5.e0;
                                                                MainItem.ChildItem e2 = k.e(j);
                                                                if (e2 != null) {
                                                                    e2.g = str;
                                                                    e2.h = str;
                                                                    e2.G = e;
                                                                }
                                                                DataBookUser.k(context2).j(f);
                                                                DataBookFilter.k(context2).j(DbBookFilter.i(context2, "sb_user_filter_path", "sb_user_filter_path"));
                                                            } else {
                                                                dialogEditCmd5.d0 = 0L;
                                                            }
                                                            Handler handler2 = dialogEditCmd5.i;
                                                            if (handler2 == null) {
                                                                return;
                                                            }
                                                            handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditCmd.11.1
                                                                @Override // java.lang.Runnable
                                                                public final void run() {
                                                                    AnonymousClass11 anonymousClass11 = AnonymousClass11.this;
                                                                    DialogEditCmd dialogEditCmd6 = DialogEditCmd.this;
                                                                    DialogEditUrl.EditUrlListener editUrlListener = dialogEditCmd6.c0;
                                                                    if (editUrlListener == null) {
                                                                        return;
                                                                    }
                                                                    editUrlListener.a(dialogEditCmd6.d0, null, null);
                                                                    DialogEditCmd.this.dismiss();
                                                                }
                                                            });
                                                        }
                                                    }
                                                });
                                            }
                                        }
                                        dialogEditCmd4.p0 = false;
                                    }
                                });
                            }
                        });
                        dialogEditCmd2.g(dialogEditCmd2.g0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogEditCmd.9
                            @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                            public final void a(View view) {
                                DialogEditCmd dialogEditCmd3 = DialogEditCmd.this;
                                if (dialogEditCmd3.g0 == null) {
                                    return;
                                }
                                dialogEditCmd3.show();
                            }
                        });
                    }
                }
            });
        }
    }

    public static void C(DialogEditCmd dialogEditCmd, String str) {
        if (dialogEditCmd.m0 != null && !TextUtils.isEmpty(str)) {
            try {
                int i = 0;
                String Q0 = MainUtil.Q0(dialogEditCmd.m0, false);
                if (TextUtils.isEmpty(Q0)) {
                    dialogEditCmd.m0.setText(str);
                    dialogEditCmd.m0.setSelection(str.length());
                    return;
                }
                int length = Q0.length();
                int selectionStart = dialogEditCmd.m0.getSelectionStart();
                if (selectionStart < 0) {
                    selectionStart = 0;
                } else if (selectionStart > length) {
                    selectionStart = length;
                }
                int selectionEnd = dialogEditCmd.m0.getSelectionEnd();
                if (selectionEnd >= 0) {
                    if (selectionEnd > length) {
                        i = length;
                    } else {
                        i = selectionEnd;
                    }
                }
                if (i > selectionStart) {
                    dialogEditCmd.m0.getText().replace(selectionStart, i, str);
                    return;
                }
                dialogEditCmd.m0.getText().insert(selectionStart, str);
            } catch (Exception unused) {
            }
        }
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.b0 == null) {
            return;
        }
        DialogGuideArea dialogGuideArea = this.o0;
        if (dialogGuideArea != null) {
            dialogGuideArea.dismiss();
            this.o0 = null;
        }
        MyDialogLinear myDialogLinear = this.g0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.g0 = null;
        }
        MyButtonImage myButtonImage = this.h0;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.h0 = null;
        }
        MyButtonText myButtonText = this.i0;
        if (myButtonText != null) {
            myButtonText.t();
            this.i0 = null;
        }
        MyButtonText myButtonText2 = this.j0;
        if (myButtonText2 != null) {
            myButtonText2.t();
            this.j0 = null;
        }
        MyButtonText myButtonText3 = this.k0;
        if (myButtonText3 != null) {
            myButtonText3.t();
            this.k0 = null;
        }
        MyRoundFrame myRoundFrame = this.l0;
        if (myRoundFrame != null) {
            myRoundFrame.a();
            this.l0 = null;
        }
        MyLineText myLineText = this.n0;
        if (myLineText != null) {
            myLineText.u();
            this.n0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.c0 = null;
        this.e0 = null;
        this.m0 = null;
        super.dismiss();
    }
}
