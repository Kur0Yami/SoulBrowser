package com.mycompany.app.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Handler;
import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.mycompany.app.dialog.DialogEditorText;
import com.mycompany.app.dialog.DialogSeekAudio;
import com.mycompany.app.dialog.DialogSetFull;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefEditor;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.setting.SettingListAdapter;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyLineLinear;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyManagerLinear;
import com.mycompany.app.view.MyPopupAdapter;
import com.mycompany.app.view.MyPopupMenu;
import com.mycompany.app.view.MyRecyclerView;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class DialogSetScrFil extends MyDialogBottom {
    public static final /* synthetic */ int p0 = 0;
    public MainActivity a0;
    public Context b0;
    public DialogSeekAudio.DialogSeekListener c0;
    public MyDialogLinear d0;
    public MyRecyclerView e0;
    public AppCompatTextView f0;
    public MyLineText g0;
    public SettingListAdapter h0;
    public MyPopupMenu i0;
    public DialogEditIcon j0;
    public DialogSetMsg k0;
    public int l0;
    public int m0;
    public int n0;
    public float o0;

    public DialogSetScrFil(MainActivity mainActivity, DialogSeekAudio.DialogSeekListener dialogSeekListener) {
        super(mainActivity);
        this.a0 = mainActivity;
        this.b0 = getContext();
        this.c0 = dialogSeekListener;
        this.l0 = PrefEditor.z;
        this.m0 = PrefEditor.A;
        this.n0 = PrefEditor.B;
        this.o0 = PrefEditor.C;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetScrFil.1
            @Override // java.lang.Runnable
            public final void run() {
                final DialogSetScrFil dialogSetScrFil = DialogSetScrFil.this;
                Context context = dialogSetScrFil.b0;
                if (context != null) {
                    MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
                    MyRecyclerView u = com.google.android.gms.internal.mlkit_vision_text_common.a.u(context, true, false);
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0);
                    layoutParams.weight = 1.0f;
                    q.addView(u, layoutParams);
                    MyLineLinear myLineLinear = new MyLineLinear(context);
                    myLineLinear.setBaselineAligned(false);
                    myLineLinear.setOrientation(0);
                    myLineLinear.setLinePad(MainApp.E1);
                    myLineLinear.setLineUp(true);
                    MyLineText s = com.google.android.gms.internal.mlkit_vision_text_common.a.s(q, myLineLinear, -1, MainApp.g1, context);
                    s.setGravity(17);
                    s.setTextSize(1, 16.0f);
                    LinearLayout.LayoutParams f = com.google.android.gms.internal.mlkit_vision_text_common.a.f(s, R.string.reset, context, 0, -1);
                    f.weight = 1.0f;
                    AppCompatTextView l = com.google.android.gms.internal.mlkit_vision_text_common.a.l(myLineLinear, s, f, context, null);
                    l.setGravity(17);
                    l.setTextSize(1, 16.0f);
                    LinearLayout.LayoutParams e = com.google.android.gms.internal.mlkit_vision_text_common.a.e(l, R.string.apply, 0, -1);
                    e.weight = 1.0f;
                    myLineLinear.addView(l, e);
                    dialogSetScrFil.d0 = q;
                    dialogSetScrFil.e0 = u;
                    dialogSetScrFil.f0 = l;
                    dialogSetScrFil.g0 = s;
                    Handler handler2 = dialogSetScrFil.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetScrFil.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            final DialogSetScrFil dialogSetScrFil2 = DialogSetScrFil.this;
                            MyDialogLinear myDialogLinear = dialogSetScrFil2.d0;
                            if (myDialogLinear != null && dialogSetScrFil2.b0 != null) {
                                if (MainApp.K1) {
                                    myDialogLinear.c(-5197648, MainApp.n1);
                                    dialogSetScrFil2.f0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogSetScrFil2.g0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogSetScrFil2.f0.setTextColor(-328966);
                                    dialogSetScrFil2.g0.setTextColor(-328966);
                                } else {
                                    myDialogLinear.c(-16777216, MainApp.n1);
                                    dialogSetScrFil2.f0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogSetScrFil2.g0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogSetScrFil2.f0.setTextColor(-14784824);
                                    dialogSetScrFil2.g0.setTextColor(-16777216);
                                }
                                dialogSetScrFil2.d0.setFilterColor(dialogSetScrFil2.B());
                                int o1 = MainUtil.o1(PrefEditor.B, PrefEditor.A);
                                ArrayList arrayList = new ArrayList();
                                arrayList.add(new SettingListAdapter.SettingItem(0, R.string.screen_filter, MainConst.X[dialogSetScrFil2.l0], 0, 0));
                                MyManagerLinear t = com.google.android.gms.internal.mlkit_vision_text_common.a.t(arrayList, new SettingListAdapter.SettingItem(1, R.string.filter_color, o1, 0, (a) null), 1);
                                dialogSetScrFil2.h0 = new SettingListAdapter(arrayList, true, t, new SettingListAdapter.SettingListener() { // from class: com.mycompany.app.dialog.DialogSetScrFil.3
                                    @Override // com.mycompany.app.setting.SettingListAdapter.SettingListener
                                    public final void a(SettingListAdapter.ViewHolder viewHolder, int i, boolean z, int i2) {
                                        MyPopupMenu myPopupMenu;
                                        boolean z2;
                                        DialogEditIcon dialogEditIcon;
                                        final DialogSetScrFil dialogSetScrFil3 = DialogSetScrFil.this;
                                        if (i != 0) {
                                            if (i != 1) {
                                                int i3 = DialogSetScrFil.p0;
                                                return;
                                            }
                                            if (dialogSetScrFil3.a0 != null && (dialogEditIcon = dialogSetScrFil3.j0) == null && dialogSetScrFil3.k0 == null) {
                                                if (dialogEditIcon != null) {
                                                    dialogEditIcon.dismiss();
                                                    dialogSetScrFil3.j0 = null;
                                                }
                                                DialogEditIcon dialogEditIcon2 = new DialogEditIcon(dialogSetScrFil3.a0, 5, new DialogEditorText.EditorSetListener() { // from class: com.mycompany.app.dialog.DialogSetScrFil.8
                                                    @Override // com.mycompany.app.dialog.DialogEditorText.EditorSetListener
                                                    public final void a(int i4, String str) {
                                                        SettingListAdapter settingListAdapter = DialogSetScrFil.this.h0;
                                                        if (settingListAdapter == null) {
                                                            return;
                                                        }
                                                        settingListAdapter.D(new SettingListAdapter.SettingItem(1, R.string.filter_color, i4, 2, (a) null));
                                                    }
                                                });
                                                dialogSetScrFil3.j0 = dialogEditIcon2;
                                                dialogEditIcon2.g0 = new DialogSeekAudio.DialogSeekListener() { // from class: com.mycompany.app.dialog.DialogSetScrFil.9
                                                    @Override // com.mycompany.app.dialog.DialogSeekAudio.DialogSeekListener
                                                    public final void a(int i4) {
                                                        DialogSeekAudio.DialogSeekListener dialogSeekListener2 = DialogSetScrFil.this.c0;
                                                        if (dialogSeekListener2 != null) {
                                                            dialogSeekListener2.a(i4);
                                                        }
                                                    }
                                                };
                                                dialogEditIcon2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogSetScrFil.10
                                                    @Override // android.content.DialogInterface.OnDismissListener
                                                    public final void onDismiss(DialogInterface dialogInterface) {
                                                        DialogSetScrFil dialogSetScrFil4 = DialogSetScrFil.this;
                                                        if (dialogSetScrFil4.d0 != null && dialogSetScrFil4.h0 != null) {
                                                            int B = dialogSetScrFil4.B();
                                                            dialogSetScrFil4.d0.setFilterColor(B);
                                                            DialogSeekAudio.DialogSeekListener dialogSeekListener2 = dialogSetScrFil4.c0;
                                                            if (dialogSeekListener2 != null) {
                                                                dialogSeekListener2.a(B);
                                                            }
                                                            DialogEditIcon dialogEditIcon3 = dialogSetScrFil4.j0;
                                                            if (dialogEditIcon3 != null) {
                                                                dialogEditIcon3.dismiss();
                                                                dialogSetScrFil4.j0 = null;
                                                            }
                                                        }
                                                    }
                                                });
                                                Handler handler3 = dialogSetScrFil3.i;
                                                if (handler3 != null) {
                                                    handler3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetScrFil.11
                                                        @Override // java.lang.Runnable
                                                        public final void run() {
                                                            DialogSeekAudio.DialogSeekListener dialogSeekListener2;
                                                            DialogSetScrFil dialogSetScrFil4 = DialogSetScrFil.this;
                                                            if (dialogSetScrFil4.j0 != null && (dialogSeekListener2 = dialogSetScrFil4.c0) != null) {
                                                                dialogSeekListener2.a(PrefEditor.D);
                                                            }
                                                        }
                                                    });
                                                    return;
                                                }
                                                return;
                                            }
                                            return;
                                        }
                                        if (dialogSetScrFil3.a0 != null && (myPopupMenu = dialogSetScrFil3.i0) == null) {
                                            if (myPopupMenu != null) {
                                                dialogSetScrFil3.Y = null;
                                                myPopupMenu.a();
                                                dialogSetScrFil3.i0 = null;
                                            }
                                            if (viewHolder != null && viewHolder.D != null) {
                                                ArrayList arrayList2 = new ArrayList();
                                                final int length = MainConst.W.length;
                                                for (int i4 = 0; i4 < length; i4++) {
                                                    int i5 = MainConst.W[i4];
                                                    int i6 = MainConst.X[i5];
                                                    if (dialogSetScrFil3.l0 == i5) {
                                                        z2 = true;
                                                    } else {
                                                        z2 = false;
                                                    }
                                                    arrayList2.add(new MyPopupAdapter.PopMenuItem(i4, i6, z2));
                                                }
                                                MyPopupMenu myPopupMenu2 = new MyPopupMenu(dialogSetScrFil3.a0, dialogSetScrFil3.d0, viewHolder.D, arrayList2, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.dialog.DialogSetScrFil.7
                                                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                    public final void a() {
                                                        int i7 = DialogSetScrFil.p0;
                                                        DialogSetScrFil dialogSetScrFil4 = DialogSetScrFil.this;
                                                        MyPopupMenu myPopupMenu3 = dialogSetScrFil4.i0;
                                                        if (myPopupMenu3 != null) {
                                                            dialogSetScrFil4.Y = null;
                                                            myPopupMenu3.a();
                                                            dialogSetScrFil4.i0 = null;
                                                        }
                                                    }

                                                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                    public final boolean b(View view, int i7) {
                                                        int i8;
                                                        DialogSetScrFil dialogSetScrFil4 = DialogSetScrFil.this;
                                                        if (dialogSetScrFil4.d0 != null && dialogSetScrFil4.l0 != (i8 = MainConst.W[i7 % length])) {
                                                            dialogSetScrFil4.l0 = i8;
                                                            SettingListAdapter settingListAdapter = dialogSetScrFil4.h0;
                                                            if (settingListAdapter != null) {
                                                                settingListAdapter.F(0, MainConst.X[i8]);
                                                            }
                                                            int B = dialogSetScrFil4.B();
                                                            dialogSetScrFil4.d0.setFilterColor(B);
                                                            DialogSeekAudio.DialogSeekListener dialogSeekListener2 = dialogSetScrFil4.c0;
                                                            if (dialogSeekListener2 != null) {
                                                                dialogSeekListener2.a(B);
                                                            }
                                                        }
                                                        return true;
                                                    }
                                                });
                                                dialogSetScrFil3.i0 = myPopupMenu2;
                                                dialogSetScrFil3.Y = myPopupMenu2;
                                            }
                                        }
                                    }
                                });
                                dialogSetScrFil2.e0.setLayoutManager(t);
                                dialogSetScrFil2.e0.setAdapter(dialogSetScrFil2.h0);
                                dialogSetScrFil2.f0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetScrFil.4
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        int i = DialogSetScrFil.p0;
                                        DialogSetScrFil.this.E(true);
                                    }
                                });
                                dialogSetScrFil2.g0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetScrFil.5
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        final DialogSetScrFil dialogSetScrFil3 = DialogSetScrFil.this;
                                        if (dialogSetScrFil3.a0 != null && dialogSetScrFil3.j0 == null && dialogSetScrFil3.k0 == null) {
                                            dialogSetScrFil3.C();
                                            DialogSetMsg dialogSetMsg = new DialogSetMsg(dialogSetScrFil3.a0, R.string.reset_setting, R.string.reset, new DialogSetFull.DialogApplyListener() { // from class: com.mycompany.app.dialog.DialogSetScrFil.12
                                                @Override // com.mycompany.app.dialog.DialogSetFull.DialogApplyListener
                                                public final void a() {
                                                    boolean z;
                                                    int i = DialogSetScrFil.p0;
                                                    DialogSetScrFil dialogSetScrFil4 = DialogSetScrFil.this;
                                                    dialogSetScrFil4.C();
                                                    if (dialogSetScrFil4.h0 == null) {
                                                        return;
                                                    }
                                                    boolean z2 = true;
                                                    if (dialogSetScrFil4.l0 != 0) {
                                                        dialogSetScrFil4.l0 = 0;
                                                        z = true;
                                                    } else {
                                                        z = false;
                                                    }
                                                    dialogSetScrFil4.m0 = 60;
                                                    dialogSetScrFil4.n0 = MainConst.q[7];
                                                    dialogSetScrFil4.o0 = MainConst.p[7];
                                                    if (dialogSetScrFil4.D()) {
                                                        dialogSetScrFil4.F();
                                                    } else {
                                                        z2 = z;
                                                    }
                                                    if (z2) {
                                                        int o12 = MainUtil.o1(PrefEditor.B, PrefEditor.A);
                                                        dialogSetScrFil4.h0.F(0, MainConst.X[dialogSetScrFil4.l0]);
                                                        dialogSetScrFil4.h0.D(new SettingListAdapter.SettingItem(1, R.string.filter_color, o12, 2, (a) null));
                                                        int B = dialogSetScrFil4.B();
                                                        dialogSetScrFil4.d0.setFilterColor(B);
                                                        DialogSeekAudio.DialogSeekListener dialogSeekListener2 = dialogSetScrFil4.c0;
                                                        if (dialogSeekListener2 != null) {
                                                            dialogSeekListener2.a(B);
                                                        }
                                                    }
                                                    dialogSetScrFil4.E(false);
                                                }
                                            });
                                            dialogSetScrFil3.k0 = dialogSetMsg;
                                            dialogSetMsg.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogSetScrFil.13
                                                @Override // android.content.DialogInterface.OnDismissListener
                                                public final void onDismiss(DialogInterface dialogInterface) {
                                                    int i = DialogSetScrFil.p0;
                                                    DialogSetScrFil.this.C();
                                                }
                                            });
                                            DialogSetMsg dialogSetMsg2 = dialogSetScrFil3.k0;
                                            int B = dialogSetScrFil3.B();
                                            dialogSetMsg2.o0 = B;
                                            MyDialogLinear myDialogLinear2 = dialogSetMsg2.i0;
                                            if (myDialogLinear2 == null) {
                                                return;
                                            }
                                            myDialogLinear2.setFilterColor(B);
                                        }
                                    }
                                });
                                dialogSetScrFil2.g(dialogSetScrFil2.d0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogSetScrFil.6
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view) {
                                        DialogSetScrFil dialogSetScrFil3 = DialogSetScrFil.this;
                                        if (dialogSetScrFil3.d0 == null) {
                                            return;
                                        }
                                        dialogSetScrFil3.getWindow().clearFlags(2);
                                        dialogSetScrFil3.show();
                                    }
                                });
                            }
                        }
                    });
                }
            }
        });
    }

    public final int B() {
        int i = this.l0;
        if (i == 1) {
            return PrefEditor.D;
        }
        if (i == 2 && MainApp.K1 && MainApp.L1) {
            return PrefEditor.D;
        }
        return 0;
    }

    public final void C() {
        DialogSetMsg dialogSetMsg = this.k0;
        if (dialogSetMsg != null) {
            dialogSetMsg.dismiss();
            this.k0 = null;
        }
    }

    public final boolean D() {
        if (PrefEditor.A == this.m0 && PrefEditor.B == this.n0 && Float.compare(PrefEditor.C, this.o0) == 0) {
            return false;
        }
        return true;
    }

    public final void E(boolean z) {
        int i = PrefEditor.z;
        int i2 = this.l0;
        if (i != i2) {
            PrefEditor.z = i2;
            if (z) {
                PrefSet.f(this.b0, 1, i2, "mScrFilUse");
            } else {
                PrefSet.i(this.b0, 1, "mScrFilUse");
            }
        }
        if (D()) {
            this.m0 = PrefEditor.A;
            this.n0 = PrefEditor.B;
            this.o0 = PrefEditor.C;
        }
        if (z) {
            dismiss();
        }
    }

    public final void F() {
        int i = this.m0;
        PrefEditor.A = i;
        int i2 = this.n0;
        PrefEditor.B = i2;
        PrefEditor.C = this.o0;
        PrefEditor.D = MainUtil.o1(i2, i);
        PrefEditor s = PrefEditor.s(this.b0);
        s.n(PrefEditor.A, "mScrFilAlpha");
        s.n(PrefEditor.B, "mScrFilColor");
        s.m("mScrFilPos", PrefEditor.C);
        s.a();
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        boolean z = false;
        this.f18633c = false;
        if (this.b0 == null) {
            return;
        }
        int i = this.l0;
        int i2 = PrefEditor.z;
        boolean z2 = true;
        if (i != i2) {
            this.l0 = i2;
            z = true;
        }
        if (D()) {
            F();
        } else {
            z2 = z;
        }
        if (z2) {
            int B = B();
            DialogSeekAudio.DialogSeekListener dialogSeekListener = this.c0;
            if (dialogSeekListener != null) {
                dialogSeekListener.a(B);
            }
        }
        DialogEditIcon dialogEditIcon = this.j0;
        if (dialogEditIcon != null) {
            dialogEditIcon.dismiss();
            this.j0 = null;
        }
        C();
        MyPopupMenu myPopupMenu = this.i0;
        if (myPopupMenu != null) {
            this.Y = null;
            myPopupMenu.a();
            this.i0 = null;
        }
        MyDialogLinear myDialogLinear = this.d0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.d0 = null;
        }
        MyRecyclerView myRecyclerView = this.e0;
        if (myRecyclerView != null) {
            myRecyclerView.s0();
            this.e0 = null;
        }
        MyLineText myLineText = this.g0;
        if (myLineText != null) {
            myLineText.u();
            this.g0 = null;
        }
        SettingListAdapter settingListAdapter = this.h0;
        if (settingListAdapter != null) {
            settingListAdapter.z();
            this.h0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.c0 = null;
        this.f0 = null;
        super.dismiss();
    }
}
