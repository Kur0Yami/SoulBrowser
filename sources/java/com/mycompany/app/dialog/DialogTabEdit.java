package com.mycompany.app.dialog;

import android.app.Activity;
import android.content.ContentValues;
import android.content.Context;
import android.content.DialogInterface;
import android.database.sqlite.SQLiteDatabase;
import android.os.Build;
import android.os.Handler;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.mycompany.app.async.MyAsyncTask;
import com.mycompany.app.db.DbUtil;
import com.mycompany.app.db.book.DbBookQuick;
import com.mycompany.app.db.book.DbBookTab;
import com.mycompany.app.dialog.DialogQuickColor;
import com.mycompany.app.dialog.DialogSetFull;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefAlbum;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.pref.PrefWeb;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyEditText;
import com.mycompany.app.view.MyLineFrame;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyLineView;
import com.mycompany.app.view.MyRoundImage;
import com.mycompany.app.web.WebTabAdapter;
import java.lang.ref.WeakReference;
import java.util.List;

/* loaded from: classes3.dex */
public class DialogTabEdit extends MyDialogBottom {
    public static final /* synthetic */ int r0 = 0;
    public Activity a0;
    public Context b0;
    public DialogSetFull.DialogApplyListener c0;
    public List d0;
    public List e0;
    public String f0;
    public int g0;
    public final int h0;
    public MyDialogLinear i0;
    public MyRoundImage j0;
    public MyLineView k0;
    public View l0;
    public MyEditText m0;
    public MyLineText n0;
    public DialogTask o0;
    public boolean p0;
    public DialogQuickColor q0;

    /* loaded from: classes3.dex */
    public static class DialogTask extends MyAsyncTask {
        public final WeakReference e;
        public final List f;
        public final String g;
        public final int h;
        public boolean i;

        public DialogTask(DialogTabEdit dialogTabEdit, List list, String str, int i) {
            int i2;
            WeakReference weakReference = new WeakReference(dialogTabEdit);
            this.e = weakReference;
            DialogTabEdit dialogTabEdit2 = (DialogTabEdit) weakReference.get();
            if (dialogTabEdit2 == null) {
                return;
            }
            this.f = list;
            this.g = str;
            this.h = i;
            dialogTabEdit2.setCanceledOnTouchOutside(false);
            dialogTabEdit2.i0.e(0, 0, true, false);
            dialogTabEdit2.n0.setActivated(true);
            dialogTabEdit2.n0.setText(R.string.cancel);
            MyLineText myLineText = dialogTabEdit2.n0;
            if (MainApp.K1) {
                i2 = -328966;
            } else {
                i2 = -16777216;
            }
            myLineText.setTextColor(i2);
            dialogTabEdit2.m0.setEnabled(false);
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void a() {
            DialogTabEdit dialogTabEdit;
            List<WebTabAdapter.WebTabItem> list;
            WebTabAdapter.WebTabItem webTabItem;
            WeakReference weakReference = this.e;
            if (weakReference != null && (dialogTabEdit = (DialogTabEdit) weakReference.get()) != null && !this.f12839c && (list = this.f) != null && !list.isEmpty()) {
                SQLiteDatabase writableDatabase = DbBookTab.b(dialogTabEdit.b0).getWritableDatabase();
                for (WebTabAdapter.WebTabItem webTabItem2 : list) {
                    if (webTabItem2 != null) {
                        int i = webTabItem2.h;
                        List list2 = dialogTabEdit.d0;
                        if (list2 != null && i >= 0 && i < list2.size()) {
                            webTabItem = (WebTabAdapter.WebTabItem) dialogTabEdit.d0.get(i);
                        } else {
                            webTabItem = null;
                        }
                        if (webTabItem != null) {
                            String str = this.g;
                            webTabItem2.f = str;
                            int i2 = this.h;
                            webTabItem2.g = i2;
                            webTabItem.f = str;
                            webTabItem.g = i2;
                            ContentValues f = androidx.work.impl.workers.a.f("_gname", str);
                            f.put("_color", Integer.valueOf(i2));
                            DbUtil.h(writableDatabase, "DbBookTab3_table", f, "_uid=?", new String[]{Long.toString(webTabItem2.f19520c)});
                        }
                    }
                }
                this.i = true;
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            DialogTabEdit dialogTabEdit;
            WeakReference weakReference = this.e;
            if (weakReference == null || (dialogTabEdit = (DialogTabEdit) weakReference.get()) == null) {
                return;
            }
            dialogTabEdit.o0 = null;
            dialogTabEdit.dismiss();
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            DialogTabEdit dialogTabEdit;
            int i;
            WeakReference weakReference = this.e;
            if (weakReference != null && (dialogTabEdit = (DialogTabEdit) weakReference.get()) != null) {
                dialogTabEdit.o0 = null;
                if (this.i) {
                    DialogSetFull.DialogApplyListener dialogApplyListener = dialogTabEdit.c0;
                    if (dialogApplyListener != null) {
                        dialogApplyListener.a();
                        return;
                    }
                    return;
                }
                if (dialogTabEdit.i0 == null) {
                    return;
                }
                dialogTabEdit.setCanceledOnTouchOutside(true);
                dialogTabEdit.i0.e(0, 0, false, false);
                dialogTabEdit.n0.setActivated(false);
                dialogTabEdit.n0.setText(R.string.apply);
                MyLineText myLineText = dialogTabEdit.n0;
                if (MainApp.K1) {
                    i = -328966;
                } else {
                    i = -14784824;
                }
                myLineText.setTextColor(i);
                dialogTabEdit.m0.setEnabled(true);
                MainUtil.e8(dialogTabEdit.b0, R.string.update_fail);
            }
        }
    }

    public DialogTabEdit(Activity activity, List list, List list2, String str, int i, DialogSetFull.DialogApplyListener dialogApplyListener) {
        super(activity);
        this.a0 = activity;
        this.b0 = getContext();
        this.c0 = dialogApplyListener;
        this.d0 = list;
        this.e0 = list2;
        this.f0 = str;
        this.g0 = i;
        this.h0 = i;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogTabEdit.1
            @Override // java.lang.Runnable
            public final void run() {
                DialogTabEdit.B(DialogTabEdit.this);
            }
        });
    }

    public static void B(DialogTabEdit dialogTabEdit) {
        View view;
        Context context = dialogTabEdit.b0;
        if (context != null) {
            MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
            int G = (int) MainUtil.G(context, 72.0f);
            MyLineFrame myLineFrame = new MyLineFrame(context);
            myLineFrame.a(MainApp.E1);
            q.addView(myLineFrame, -1, G);
            MyRoundImage myRoundImage = new MyRoundImage(context);
            myRoundImage.setScaleType(ImageView.ScaleType.CENTER_CROP);
            myRoundImage.setCircleRadius(MainApp.f1 / 2.0f);
            int i = MainApp.f1;
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i, i);
            layoutParams.gravity = 8388627;
            layoutParams.setMarginStart(MainApp.E1);
            myLineFrame.addView(myRoundImage, layoutParams);
            MyLineView myLineView = new MyLineView(context);
            myLineView.a((int) MainUtil.G(context, 2.0f));
            int i2 = MainApp.g1;
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(i2, i2);
            layoutParams2.gravity = 8388627;
            layoutParams2.setMarginStart((int) MainUtil.G(context, 12.0f));
            myLineFrame.addView(myLineView, layoutParams2);
            if (PrefAlbum.m) {
                view = new View(context);
                view.setBackgroundResource(R.drawable.noti_dot_red);
                int i3 = MainApp.F1;
                FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(i3, i3);
                int G2 = (int) MainUtil.G(context, 9.0f);
                layoutParams3.topMargin = G2;
                layoutParams3.setMarginStart(G2);
                myLineFrame.addView(view, layoutParams3);
            } else {
                view = null;
            }
            MyEditText myEditText = new MyEditText(context);
            myEditText.setGravity(16);
            myEditText.setSingleLine(true);
            myEditText.setTextDirection(3);
            myEditText.setTextSize(1, 16.0f);
            if (Build.VERSION.SDK_INT >= 29) {
                myEditText.setTextCursorDrawable(R.drawable.edit_cursor);
            }
            myEditText.setHint(R.string.name);
            myEditText.setHintTextColor(-8289919);
            myEditText.setImeOptions(268435456);
            myEditText.setBackground(null);
            FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-1, MainApp.g1);
            layoutParams4.gravity = 16;
            layoutParams4.setMarginStart(G);
            layoutParams4.setMarginEnd(MainApp.E1);
            myLineFrame.addView(myEditText, layoutParams4);
            MyLineText r = com.google.android.gms.internal.mlkit_vision_text_common.a.r(context, 17, 1, 16.0f);
            r.setText(R.string.apply);
            r.t(MainApp.E1);
            q.addView(r, -1, MainApp.g1);
            dialogTabEdit.i0 = q;
            dialogTabEdit.j0 = myRoundImage;
            dialogTabEdit.k0 = myLineView;
            dialogTabEdit.l0 = view;
            dialogTabEdit.m0 = myEditText;
            dialogTabEdit.n0 = r;
            Handler handler = dialogTabEdit.i;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogTabEdit.2
                @Override // java.lang.Runnable
                public final void run() {
                    final DialogTabEdit dialogTabEdit2 = DialogTabEdit.this;
                    if (dialogTabEdit2.i0 != null && dialogTabEdit2.b0 != null) {
                        if (MainApp.K1) {
                            dialogTabEdit2.k0.setBackgroundResource(R.drawable.selector_overlay_dark);
                            dialogTabEdit2.m0.setTextColor(-328966);
                            dialogTabEdit2.n0.setBackgroundResource(R.drawable.selector_normal_dark);
                            dialogTabEdit2.n0.setTextColor(-328966);
                        } else {
                            dialogTabEdit2.k0.setBackgroundResource(R.drawable.selector_overlay);
                            dialogTabEdit2.m0.setTextColor(-16777216);
                            dialogTabEdit2.n0.setBackgroundResource(R.drawable.selector_normal);
                            dialogTabEdit2.n0.setTextColor(-14784824);
                        }
                        if (MainApp.K1) {
                            dialogTabEdit2.k0.c(MainApp.n1, -328966);
                        } else {
                            dialogTabEdit2.k0.setLineColor(-14784824);
                        }
                        dialogTabEdit2.k0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogTabEdit.3
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view2) {
                                final DialogTabEdit dialogTabEdit3 = DialogTabEdit.this;
                                if (dialogTabEdit3.a0 == null || dialogTabEdit3.q0 != null) {
                                    return;
                                }
                                dialogTabEdit3.C();
                                if (PrefAlbum.m) {
                                    PrefAlbum.m = false;
                                    PrefSet.d(0, dialogTabEdit3.b0, "mNotiQuick", false);
                                }
                                View view3 = dialogTabEdit3.l0;
                                if (view3 != null) {
                                    view3.setVisibility(8);
                                    dialogTabEdit3.l0 = null;
                                }
                                int i4 = dialogTabEdit3.g0;
                                if (i4 == 0) {
                                    i4 = PrefWeb.b0;
                                }
                                DialogQuickColor dialogQuickColor = new DialogQuickColor(dialogTabEdit3.a0, i4, new DialogQuickColor.QuickColorListener() { // from class: com.mycompany.app.dialog.DialogTabEdit.6
                                    @Override // com.mycompany.app.dialog.DialogQuickColor.QuickColorListener
                                    public final void a(int i5) {
                                        int i6 = DialogTabEdit.r0;
                                        DialogTabEdit dialogTabEdit4 = DialogTabEdit.this;
                                        dialogTabEdit4.C();
                                        MyRoundImage myRoundImage2 = dialogTabEdit4.j0;
                                        if (myRoundImage2 == null) {
                                            return;
                                        }
                                        dialogTabEdit4.g0 = i5;
                                        myRoundImage2.o(0, DbBookQuick.f(i5));
                                    }
                                });
                                dialogTabEdit3.q0 = dialogQuickColor;
                                dialogQuickColor.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogTabEdit.7
                                    @Override // android.content.DialogInterface.OnDismissListener
                                    public final void onDismiss(DialogInterface dialogInterface) {
                                        int i5 = DialogTabEdit.r0;
                                        DialogTabEdit.this.C();
                                    }
                                });
                            }
                        });
                        dialogTabEdit2.j0.o(0, DbBookQuick.f(dialogTabEdit2.g0 == 0 ? PrefWeb.b0 : dialogTabEdit2.g0));
                        dialogTabEdit2.m0.setElineColor(-14784824);
                        dialogTabEdit2.m0.setText(dialogTabEdit2.f0);
                        dialogTabEdit2.m0.setSelectAllOnFocus(true);
                        dialogTabEdit2.n0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogTabEdit.4
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view2) {
                                DialogTabEdit dialogTabEdit3 = DialogTabEdit.this;
                                MyLineText myLineText = dialogTabEdit3.n0;
                                if (myLineText != null) {
                                    if (myLineText.isActivated()) {
                                        dialogTabEdit3.D();
                                    } else {
                                        if (dialogTabEdit3.p0) {
                                            return;
                                        }
                                        dialogTabEdit3.p0 = true;
                                        dialogTabEdit3.n0.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogTabEdit.4.1
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                DialogTabEdit dialogTabEdit4 = DialogTabEdit.this;
                                                MyEditText myEditText2 = dialogTabEdit4.m0;
                                                if (myEditText2 != null) {
                                                    String Q0 = MainUtil.Q0(myEditText2, true);
                                                    if (dialogTabEdit4.g0 == dialogTabEdit4.h0 && MainUtil.q5(Q0, dialogTabEdit4.f0)) {
                                                        dialogTabEdit4.dismiss();
                                                    } else {
                                                        List list = dialogTabEdit4.e0;
                                                        int i4 = dialogTabEdit4.g0;
                                                        DialogTask dialogTask = dialogTabEdit4.o0;
                                                        if (dialogTask != null) {
                                                            dialogTask.f12839c = true;
                                                        }
                                                        dialogTabEdit4.o0 = null;
                                                        DialogTask dialogTask2 = new DialogTask(dialogTabEdit4, list, Q0, i4);
                                                        dialogTabEdit4.o0 = dialogTask2;
                                                        dialogTask2.b(dialogTabEdit4.b0);
                                                    }
                                                }
                                                dialogTabEdit4.p0 = false;
                                            }
                                        });
                                    }
                                }
                            }
                        });
                        dialogTabEdit2.g(dialogTabEdit2.i0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogTabEdit.5
                            @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                            public final void a(View view2) {
                                DialogTabEdit dialogTabEdit3 = DialogTabEdit.this;
                                if (dialogTabEdit3.i0 == null) {
                                    return;
                                }
                                dialogTabEdit3.show();
                            }
                        });
                    }
                }
            });
        }
    }

    public final void C() {
        DialogQuickColor dialogQuickColor = this.q0;
        if (dialogQuickColor != null) {
            dialogQuickColor.dismiss();
            this.q0 = null;
        }
    }

    public final void D() {
        int i;
        MyDialogLinear myDialogLinear = this.i0;
        if (myDialogLinear != null && this.o0 != null) {
            myDialogLinear.e(0, 0, true, false);
            this.n0.setEnabled(false);
            this.n0.setActivated(true);
            this.n0.setText(R.string.canceling);
            MyLineText myLineText = this.n0;
            if (MainApp.K1) {
                i = -8355712;
            } else {
                i = -2434342;
            }
            myLineText.setTextColor(i);
            DialogTask dialogTask = this.o0;
            if (dialogTask != null) {
                dialogTask.f12839c = true;
            }
            this.o0 = null;
            return;
        }
        dismiss();
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void cancel() {
        D();
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.b0 == null) {
            return;
        }
        DialogTask dialogTask = this.o0;
        if (dialogTask != null) {
            dialogTask.f12839c = true;
        }
        this.o0 = null;
        C();
        MyDialogLinear myDialogLinear = this.i0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.i0 = null;
        }
        MyRoundImage myRoundImage = this.j0;
        if (myRoundImage != null) {
            myRoundImage.k();
            this.j0 = null;
        }
        MyLineView myLineView = this.k0;
        if (myLineView != null) {
            myLineView.b();
            this.k0 = null;
        }
        MyEditText myEditText = this.m0;
        if (myEditText != null) {
            myEditText.c();
            this.m0 = null;
        }
        MyLineText myLineText = this.n0;
        if (myLineText != null) {
            myLineText.u();
            this.n0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.c0 = null;
        this.d0 = null;
        this.e0 = null;
        this.f0 = null;
        this.l0 = null;
        super.dismiss();
    }
}
