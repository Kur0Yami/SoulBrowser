package com.mycompany.app.dialog;

import android.content.Context;
import android.os.Handler;
import android.view.View;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.mycompany.app.async.MyAsyncTask;
import com.mycompany.app.data.book.DataBookHistory;
import com.mycompany.app.db.book.DbBookHistory;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.pref.PrefWeb;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyPopupAdapter;
import com.mycompany.app.view.MyPopupMenu;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class DialogSetHistory extends MyDialogBottom {
    public static final int[] p0 = {0, 1, 7, 30, 183, 365, -1};
    public static final int[] q0 = {R.string.history_zero, R.string.history_1day, R.string.history_1week, R.string.history_1mon, R.string.history_6mon, R.string.history_1year, R.string.history_none};
    public static final int[] r0;
    public MainActivity a0;
    public Context b0;
    public SetHistoryListener c0;
    public MyDialogLinear d0;
    public RelativeLayout e0;
    public View f0;
    public AppCompatTextView g0;
    public AppCompatTextView h0;
    public AppCompatTextView i0;
    public MyLineText j0;
    public DialogTask k0;
    public boolean l0;
    public int m0;
    public int n0;
    public MyPopupMenu o0;

    /* loaded from: classes3.dex */
    public static class DialogTask extends MyAsyncTask {
        public final WeakReference e;

        public DialogTask(DialogSetHistory dialogSetHistory) {
            MyDialogLinear myDialogLinear;
            WeakReference weakReference = new WeakReference(dialogSetHistory);
            this.e = weakReference;
            DialogSetHistory dialogSetHistory2 = (DialogSetHistory) weakReference.get();
            if (dialogSetHistory2 != null && (myDialogLinear = dialogSetHistory2.d0) != null) {
                myDialogLinear.e(0, 0, true, false);
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void a() {
            DialogSetHistory dialogSetHistory;
            WeakReference weakReference = this.e;
            if (weakReference != null && (dialogSetHistory = (DialogSetHistory) weakReference.get()) != null && !this.f12839c) {
                if (PrefWeb.n == 0) {
                    DbBookHistory.d(dialogSetHistory.b0);
                } else {
                    DbBookHistory.f(dialogSetHistory.b0);
                }
                DataBookHistory.k(dialogSetHistory.b0).f();
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            DialogSetHistory dialogSetHistory;
            WeakReference weakReference = this.e;
            if (weakReference != null && (dialogSetHistory = (DialogSetHistory) weakReference.get()) != null) {
                dialogSetHistory.k0 = null;
                MyDialogLinear myDialogLinear = dialogSetHistory.d0;
                if (myDialogLinear != null) {
                    myDialogLinear.e(0, 0, false, false);
                }
                SetHistoryListener setHistoryListener = dialogSetHistory.c0;
                if (setHistoryListener != null) {
                    setHistoryListener.a(true);
                }
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            DialogSetHistory dialogSetHistory;
            WeakReference weakReference = this.e;
            if (weakReference != null && (dialogSetHistory = (DialogSetHistory) weakReference.get()) != null) {
                dialogSetHistory.k0 = null;
                MyDialogLinear myDialogLinear = dialogSetHistory.d0;
                if (myDialogLinear != null) {
                    myDialogLinear.e(0, 0, false, false);
                }
                SetHistoryListener setHistoryListener = dialogSetHistory.c0;
                if (setHistoryListener != null) {
                    setHistoryListener.a(true);
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface SetHistoryListener {
        void a(boolean z);
    }

    static {
        int i = R.string.history_info_zero;
        int i2 = R.string.history_info_limit;
        r0 = new int[]{i, i2, i2, i2, i2, i2, R.string.history_info_none};
    }

    public DialogSetHistory(MainActivity mainActivity, SetHistoryListener setHistoryListener) {
        super(mainActivity);
        this.a0 = mainActivity;
        this.b0 = getContext();
        this.c0 = setHistoryListener;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetHistory.1
            @Override // java.lang.Runnable
            public final void run() {
                final DialogSetHistory dialogSetHistory = DialogSetHistory.this;
                Context context = dialogSetHistory.b0;
                if (context != null) {
                    int i = R.id.set_default_title;
                    int i2 = R.id.set_default_value;
                    MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
                    RelativeLayout relativeLayout = new RelativeLayout(context);
                    int i3 = MainApp.E1;
                    relativeLayout.setPadding(i3, i3, i3, i3);
                    relativeLayout.setGravity(16);
                    relativeLayout.setMinimumHeight(MainApp.h1);
                    q.addView(relativeLayout, -1, -2);
                    View view = new View(context);
                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(1, 1);
                    layoutParams.addRule(21);
                    relativeLayout.addView(view, layoutParams);
                    AppCompatTextView k = com.google.android.gms.internal.mlkit_vision_text_common.a.k(context, null, i, 1, 16.0f);
                    k.setText(R.string.history_time);
                    relativeLayout.addView(k, -1, -2);
                    AppCompatTextView k2 = com.google.android.gms.internal.mlkit_vision_text_common.a.k(context, null, i2, 1, 14.0f);
                    RelativeLayout.LayoutParams h = androidx.work.impl.workers.a.h(-1, -2, 3, i);
                    h.topMargin = MainApp.G1;
                    relativeLayout.addView(k2, h);
                    AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
                    RelativeLayout.LayoutParams h2 = com.google.android.gms.internal.mlkit_vision_text_common.a.h(appCompatTextView, 1, 14.0f, -1, -2);
                    h2.addRule(3, i2);
                    h2.topMargin = MainApp.G1;
                    relativeLayout.addView(appCompatTextView, h2);
                    MyLineText myLineText = new MyLineText(context);
                    myLineText.setGravity(17);
                    myLineText.setTextSize(1, 16.0f);
                    myLineText.setText(R.string.apply);
                    myLineText.setLinePad(MainApp.E1);
                    myLineText.setLineUp(true);
                    q.addView(myLineText, -1, MainApp.g1);
                    dialogSetHistory.d0 = q;
                    dialogSetHistory.e0 = relativeLayout;
                    dialogSetHistory.f0 = view;
                    dialogSetHistory.g0 = k;
                    dialogSetHistory.h0 = k2;
                    dialogSetHistory.i0 = appCompatTextView;
                    dialogSetHistory.j0 = myLineText;
                    Handler handler2 = dialogSetHistory.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetHistory.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            final DialogSetHistory dialogSetHistory2 = DialogSetHistory.this;
                            if (dialogSetHistory2.d0 != null && dialogSetHistory2.b0 != null) {
                                if (MainApp.K1) {
                                    dialogSetHistory2.g0.setTextColor(-328966);
                                    dialogSetHistory2.h0.setTextColor(-5126668);
                                    dialogSetHistory2.i0.setTextColor(-4079167);
                                    dialogSetHistory2.e0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogSetHistory2.j0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogSetHistory2.j0.setTextColor(-328966);
                                } else {
                                    dialogSetHistory2.g0.setTextColor(-16777216);
                                    dialogSetHistory2.h0.setTextColor(-12627531);
                                    dialogSetHistory2.i0.setTextColor(-10395295);
                                    dialogSetHistory2.e0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogSetHistory2.j0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogSetHistory2.j0.setTextColor(-14784824);
                                }
                                int i4 = PrefWeb.n;
                                dialogSetHistory2.m0 = i4;
                                int i5 = 0;
                                int i6 = 0;
                                while (true) {
                                    if (i6 >= 7) {
                                        break;
                                    }
                                    if (i4 == DialogSetHistory.p0[i6]) {
                                        i5 = i6;
                                        break;
                                    }
                                    i6++;
                                }
                                dialogSetHistory2.n0 = i5;
                                dialogSetHistory2.h0.setText(DialogSetHistory.q0[i5]);
                                dialogSetHistory2.i0.setText(DialogSetHistory.r0[dialogSetHistory2.n0]);
                                dialogSetHistory2.e0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetHistory.3
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view2) {
                                        boolean z;
                                        final DialogSetHistory dialogSetHistory3 = DialogSetHistory.this;
                                        View view3 = dialogSetHistory3.f0;
                                        MyPopupMenu myPopupMenu = dialogSetHistory3.o0;
                                        if (myPopupMenu == null) {
                                            if (myPopupMenu != null) {
                                                dialogSetHistory3.Y = null;
                                                myPopupMenu.a();
                                                dialogSetHistory3.o0 = null;
                                            }
                                            if (view3 == null) {
                                                return;
                                            }
                                            ArrayList arrayList = new ArrayList();
                                            for (int i7 = 0; i7 < 7; i7++) {
                                                int i8 = DialogSetHistory.q0[i7];
                                                if (i7 == dialogSetHistory3.n0) {
                                                    z = true;
                                                } else {
                                                    z = false;
                                                }
                                                arrayList.add(new MyPopupAdapter.PopMenuItem(i7, i8, z));
                                            }
                                            MyPopupMenu myPopupMenu2 = new MyPopupMenu(dialogSetHistory3.a0, dialogSetHistory3.d0, view3, arrayList, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.dialog.DialogSetHistory.6
                                                @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                public final void a() {
                                                    int[] iArr = DialogSetHistory.p0;
                                                    DialogSetHistory dialogSetHistory4 = DialogSetHistory.this;
                                                    MyPopupMenu myPopupMenu3 = dialogSetHistory4.o0;
                                                    if (myPopupMenu3 != null) {
                                                        dialogSetHistory4.Y = null;
                                                        myPopupMenu3.a();
                                                        dialogSetHistory4.o0 = null;
                                                    }
                                                }

                                                @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                public final boolean b(View view4, int i9) {
                                                    DialogSetHistory dialogSetHistory4 = DialogSetHistory.this;
                                                    AppCompatTextView appCompatTextView2 = dialogSetHistory4.h0;
                                                    if (appCompatTextView2 != null) {
                                                        int[] iArr = DialogSetHistory.p0;
                                                        int i10 = i9 % 7;
                                                        if (dialogSetHistory4.n0 != i10) {
                                                            dialogSetHistory4.n0 = i10;
                                                            dialogSetHistory4.m0 = iArr[i10];
                                                            appCompatTextView2.setText(DialogSetHistory.q0[i10]);
                                                            dialogSetHistory4.i0.setText(DialogSetHistory.r0[dialogSetHistory4.n0]);
                                                            return true;
                                                        }
                                                    }
                                                    return true;
                                                }
                                            });
                                            dialogSetHistory3.o0 = myPopupMenu2;
                                            dialogSetHistory3.Y = myPopupMenu2;
                                        }
                                    }
                                });
                                dialogSetHistory2.j0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetHistory.4
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view2) {
                                        DialogSetHistory dialogSetHistory3 = DialogSetHistory.this;
                                        MyLineText myLineText2 = dialogSetHistory3.j0;
                                        if (myLineText2 != null) {
                                            if (myLineText2.isActivated()) {
                                                dialogSetHistory3.B();
                                            } else {
                                                if (dialogSetHistory3.l0) {
                                                    return;
                                                }
                                                dialogSetHistory3.l0 = true;
                                                dialogSetHistory3.j0.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetHistory.4.1
                                                    @Override // java.lang.Runnable
                                                    public final void run() {
                                                        int i7;
                                                        DialogSetHistory dialogSetHistory4 = DialogSetHistory.this;
                                                        SetHistoryListener setHistoryListener2 = dialogSetHistory4.c0;
                                                        if (setHistoryListener2 != null) {
                                                            int i8 = PrefWeb.n;
                                                            int i9 = dialogSetHistory4.m0;
                                                            if (i8 == i9) {
                                                                setHistoryListener2.a(false);
                                                            } else {
                                                                PrefWeb.n = i9;
                                                                PrefSet.f(dialogSetHistory4.b0, 14, i9, "mHistoryTime");
                                                                if (PrefWeb.n == -1) {
                                                                    dialogSetHistory4.c0.a(false);
                                                                } else {
                                                                    dialogSetHistory4.setCanceledOnTouchOutside(false);
                                                                    dialogSetHistory4.j0.setActivated(true);
                                                                    dialogSetHistory4.j0.setText(R.string.cancel);
                                                                    MyLineText myLineText3 = dialogSetHistory4.j0;
                                                                    if (MainApp.K1) {
                                                                        i7 = -328966;
                                                                    } else {
                                                                        i7 = -16777216;
                                                                    }
                                                                    myLineText3.setTextColor(i7);
                                                                    DialogTask dialogTask = dialogSetHistory4.k0;
                                                                    if (dialogTask != null) {
                                                                        dialogTask.f12839c = true;
                                                                    }
                                                                    dialogSetHistory4.k0 = null;
                                                                    DialogTask dialogTask2 = new DialogTask(dialogSetHistory4);
                                                                    dialogSetHistory4.k0 = dialogTask2;
                                                                    dialogTask2.b(dialogSetHistory4.b0);
                                                                }
                                                            }
                                                        }
                                                        dialogSetHistory4.l0 = false;
                                                    }
                                                });
                                            }
                                        }
                                    }
                                });
                                dialogSetHistory2.g(dialogSetHistory2.d0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogSetHistory.5
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view2) {
                                        DialogSetHistory dialogSetHistory3 = DialogSetHistory.this;
                                        if (dialogSetHistory3.d0 == null) {
                                            return;
                                        }
                                        dialogSetHistory3.show();
                                    }
                                });
                            }
                        }
                    });
                }
            }
        });
    }

    public final void B() {
        int i;
        MyDialogLinear myDialogLinear = this.d0;
        if (myDialogLinear != null && this.k0 != null) {
            myDialogLinear.e(0, 0, true, false);
            this.j0.setEnabled(false);
            this.j0.setActivated(true);
            this.j0.setText(R.string.canceling);
            MyLineText myLineText = this.j0;
            if (MainApp.K1) {
                i = -8355712;
            } else {
                i = -2434342;
            }
            myLineText.setTextColor(i);
            DialogTask dialogTask = this.k0;
            if (dialogTask != null) {
                dialogTask.f12839c = true;
            }
            this.k0 = null;
            return;
        }
        dismiss();
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void cancel() {
        B();
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.b0 == null) {
            return;
        }
        MyPopupMenu myPopupMenu = this.o0;
        if (myPopupMenu != null) {
            this.Y = null;
            myPopupMenu.a();
            this.o0 = null;
        }
        DialogTask dialogTask = this.k0;
        if (dialogTask != null) {
            dialogTask.f12839c = true;
        }
        this.k0 = null;
        MyDialogLinear myDialogLinear = this.d0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.d0 = null;
        }
        MyLineText myLineText = this.j0;
        if (myLineText != null) {
            myLineText.u();
            this.j0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.c0 = null;
        this.e0 = null;
        this.f0 = null;
        this.g0 = null;
        this.h0 = null;
        this.i0 = null;
        super.dismiss();
    }
}
