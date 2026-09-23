package com.mycompany.app.dialog;

import android.content.Context;
import android.os.Handler;
import android.view.View;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.mycompany.app.dialog.DialogSetFull;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.pref.PrefList;
import com.mycompany.app.setting.SettingListAdapter;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyPopupAdapter;
import com.mycompany.app.view.MyPopupMenu;
import com.mycompany.app.view.MyRecyclerView;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class DialogSetSort2 extends MyDialogBottom {
    public static final /* synthetic */ int n0 = 0;
    public MainActivity a0;
    public Context b0;
    public DialogSetFull.DialogApplyListener c0;
    public boolean d0;
    public boolean e0;
    public int f0;
    public boolean g0;
    public MyDialogLinear h0;
    public MyRecyclerView i0;
    public MyLineText j0;
    public SettingListAdapter k0;
    public MyPopupMenu l0;
    public MyPopupMenu m0;

    public DialogSetSort2(MainActivity mainActivity, DialogSetFull.DialogApplyListener dialogApplyListener) {
        super(mainActivity);
        this.a0 = mainActivity;
        this.b0 = getContext();
        this.c0 = dialogApplyListener;
        this.d0 = PrefList.F;
        this.e0 = PrefList.G;
        this.f0 = PrefList.H;
        this.g0 = PrefList.I;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetSort2.1
            @Override // java.lang.Runnable
            public final void run() {
                final DialogSetSort2 dialogSetSort2 = DialogSetSort2.this;
                Context context = dialogSetSort2.b0;
                if (context != null) {
                    MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
                    MyRecyclerView u = com.google.android.gms.internal.mlkit_vision_text_common.a.u(context, true, false);
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0);
                    layoutParams.weight = 1.0f;
                    q.addView(u, layoutParams);
                    MyLineText myLineText = new MyLineText(context);
                    myLineText.setGravity(17);
                    myLineText.setTextSize(1, 16.0f);
                    myLineText.setLinePad(MainApp.E1);
                    myLineText.setLineUp(true);
                    q.addView(myLineText, -1, MainApp.g1);
                    dialogSetSort2.h0 = q;
                    dialogSetSort2.i0 = u;
                    dialogSetSort2.j0 = myLineText;
                    Handler handler2 = dialogSetSort2.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetSort2.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            final DialogSetSort2 dialogSetSort22 = DialogSetSort2.this;
                            if (dialogSetSort22.h0 != null && dialogSetSort22.b0 != null) {
                                if (MainApp.K1) {
                                    dialogSetSort22.j0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogSetSort22.j0.setTextColor(-328966);
                                } else {
                                    dialogSetSort22.j0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogSetSort22.j0.setTextColor(-14784824);
                                }
                                int i = dialogSetSort22.f0;
                                int[] iArr = DialogSetSort.o0;
                                dialogSetSort22.f0 = i % 5;
                                ArrayList B = dialogSetSort22.B();
                                LinearLayoutManager linearLayoutManager = new LinearLayoutManager(1);
                                dialogSetSort22.k0 = new SettingListAdapter(B, true, linearLayoutManager, new SettingListAdapter.SettingListener() { // from class: com.mycompany.app.dialog.DialogSetSort2.3
                                    @Override // com.mycompany.app.setting.SettingListAdapter.SettingListener
                                    public final void a(SettingListAdapter.ViewHolder viewHolder, int i2, boolean z, int i3) {
                                        MyPopupMenu myPopupMenu;
                                        boolean z2;
                                        MyPopupMenu myPopupMenu2;
                                        final DialogSetSort2 dialogSetSort23 = DialogSetSort2.this;
                                        if (i2 != 0) {
                                            if (i2 != 1) {
                                                if (i2 != 2) {
                                                    if (i2 != 3) {
                                                        int i4 = DialogSetSort2.n0;
                                                        return;
                                                    }
                                                    if (!dialogSetSort23.d0 && (myPopupMenu2 = dialogSetSort23.m0) == null) {
                                                        if (myPopupMenu2 != null) {
                                                            dialogSetSort23.Y = null;
                                                            myPopupMenu2.a();
                                                            dialogSetSort23.m0 = null;
                                                        }
                                                        if (viewHolder != null && viewHolder.D != null) {
                                                            ArrayList arrayList = new ArrayList();
                                                            arrayList.add(new MyPopupAdapter.PopMenuItem(0, R.string.order_ascend, !dialogSetSort23.g0));
                                                            arrayList.add(new MyPopupAdapter.PopMenuItem(1, R.string.order_descend, dialogSetSort23.g0));
                                                            MyPopupMenu myPopupMenu3 = new MyPopupMenu(dialogSetSort23.a0, dialogSetSort23.h0, viewHolder.D, arrayList, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.dialog.DialogSetSort2.7
                                                                @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                                public final void a() {
                                                                    int i5 = DialogSetSort2.n0;
                                                                    DialogSetSort2 dialogSetSort24 = DialogSetSort2.this;
                                                                    MyPopupMenu myPopupMenu4 = dialogSetSort24.m0;
                                                                    if (myPopupMenu4 != null) {
                                                                        dialogSetSort24.Y = null;
                                                                        myPopupMenu4.a();
                                                                        dialogSetSort24.m0 = null;
                                                                    }
                                                                }

                                                                @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                                public final boolean b(View view, int i5) {
                                                                    boolean z3;
                                                                    int i6;
                                                                    if (i5 != 0) {
                                                                        z3 = true;
                                                                    } else {
                                                                        z3 = false;
                                                                    }
                                                                    DialogSetSort2 dialogSetSort24 = DialogSetSort2.this;
                                                                    if (dialogSetSort24.g0 != z3) {
                                                                        dialogSetSort24.g0 = z3;
                                                                        SettingListAdapter settingListAdapter = dialogSetSort24.k0;
                                                                        if (settingListAdapter != null) {
                                                                            if (z3) {
                                                                                i6 = R.string.order_descend;
                                                                            } else {
                                                                                i6 = R.string.order_ascend;
                                                                            }
                                                                            settingListAdapter.F(3, i6);
                                                                        }
                                                                    }
                                                                    return true;
                                                                }
                                                            });
                                                            dialogSetSort23.m0 = myPopupMenu3;
                                                            dialogSetSort23.Y = myPopupMenu3;
                                                            return;
                                                        }
                                                        return;
                                                    }
                                                    return;
                                                }
                                                if (!dialogSetSort23.d0 && (myPopupMenu = dialogSetSort23.l0) == null) {
                                                    if (myPopupMenu != null) {
                                                        dialogSetSort23.Y = null;
                                                        myPopupMenu.a();
                                                        dialogSetSort23.l0 = null;
                                                    }
                                                    if (viewHolder != null && viewHolder.D != null) {
                                                        ArrayList arrayList2 = new ArrayList();
                                                        int[] iArr2 = DialogSetSort.o0;
                                                        for (int i5 = 0; i5 < 2; i5++) {
                                                            int i6 = DialogSetSort.C0[i5];
                                                            int i7 = DialogSetSort.x0[i6];
                                                            if (i6 == dialogSetSort23.f0) {
                                                                z2 = true;
                                                            } else {
                                                                z2 = false;
                                                            }
                                                            arrayList2.add(new MyPopupAdapter.PopMenuItem(i5, i7, z2));
                                                        }
                                                        MyPopupMenu myPopupMenu4 = new MyPopupMenu(dialogSetSort23.a0, dialogSetSort23.h0, viewHolder.D, arrayList2, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.dialog.DialogSetSort2.6
                                                            @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                            public final void a() {
                                                                int i8 = DialogSetSort2.n0;
                                                                DialogSetSort2 dialogSetSort24 = DialogSetSort2.this;
                                                                MyPopupMenu myPopupMenu5 = dialogSetSort24.l0;
                                                                if (myPopupMenu5 != null) {
                                                                    dialogSetSort24.Y = null;
                                                                    myPopupMenu5.a();
                                                                    dialogSetSort24.l0 = null;
                                                                }
                                                            }

                                                            @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                            public final boolean b(View view, int i8) {
                                                                int i9 = DialogSetSort.C0[i8 % 2];
                                                                DialogSetSort2 dialogSetSort24 = DialogSetSort2.this;
                                                                if (dialogSetSort24.f0 != i9) {
                                                                    dialogSetSort24.f0 = i9;
                                                                    SettingListAdapter settingListAdapter = dialogSetSort24.k0;
                                                                    if (settingListAdapter != null) {
                                                                        settingListAdapter.F(2, DialogSetSort.x0[i9]);
                                                                    }
                                                                }
                                                                return true;
                                                            }
                                                        });
                                                        dialogSetSort23.l0 = myPopupMenu4;
                                                        dialogSetSort23.Y = myPopupMenu4;
                                                        return;
                                                    }
                                                    return;
                                                }
                                                return;
                                            }
                                            if (!dialogSetSort23.d0) {
                                                dialogSetSort23.e0 = z;
                                                return;
                                            }
                                            return;
                                        }
                                        SettingListAdapter settingListAdapter = dialogSetSort23.k0;
                                        if (settingListAdapter == null) {
                                            return;
                                        }
                                        dialogSetSort23.d0 = z;
                                        settingListAdapter.E(dialogSetSort23.B());
                                    }
                                });
                                dialogSetSort22.i0.setLayoutManager(linearLayoutManager);
                                dialogSetSort22.i0.setAdapter(dialogSetSort22.k0);
                                dialogSetSort22.j0.setText(R.string.apply);
                                dialogSetSort22.j0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetSort2.4
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        boolean z = PrefList.F;
                                        DialogSetSort2 dialogSetSort23 = DialogSetSort2.this;
                                        boolean z2 = dialogSetSort23.d0;
                                        if (z != z2 || PrefList.G != dialogSetSort23.e0 || PrefList.H != dialogSetSort23.f0 || PrefList.I != dialogSetSort23.g0) {
                                            PrefList.F = z2;
                                            PrefList.G = dialogSetSort23.e0;
                                            PrefList.H = dialogSetSort23.f0;
                                            PrefList.I = dialogSetSort23.g0;
                                            PrefList r = PrefList.r(dialogSetSort23.b0, false);
                                            r.l("mBookWebUser", PrefList.F);
                                            r.l("mBookWebFtop", PrefList.G);
                                            r.n(PrefList.H, "mBookWebItem");
                                            r.l("mBookWebRvse", PrefList.I);
                                            r.a();
                                            DialogSetFull.DialogApplyListener dialogApplyListener2 = dialogSetSort23.c0;
                                            if (dialogApplyListener2 != null) {
                                                dialogApplyListener2.a();
                                            }
                                        }
                                        dialogSetSort23.dismiss();
                                    }
                                });
                                dialogSetSort22.g(dialogSetSort22.h0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogSetSort2.5
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view) {
                                        DialogSetSort2 dialogSetSort23 = DialogSetSort2.this;
                                        if (dialogSetSort23.h0 == null) {
                                            return;
                                        }
                                        dialogSetSort23.show();
                                    }
                                });
                            }
                        }
                    });
                }
            }
        });
    }

    public final ArrayList B() {
        int i;
        ArrayList arrayList = new ArrayList();
        arrayList.add(new SettingListAdapter.SettingItem(0, R.string.sort_user, 0, 0, this.d0, true));
        int i2 = R.string.folder_top;
        boolean z = this.e0;
        boolean z2 = this.d0;
        arrayList.add(new SettingListAdapter.SettingItem(1, i2, 0, z, z2, z2, 0));
        arrayList.add(new SettingListAdapter.SettingItem(2, R.string.sort_by, DialogSetSort.x0[this.f0], this.d0));
        int i3 = R.string.order_by;
        if (this.g0) {
            i = R.string.order_descend;
        } else {
            i = R.string.order_ascend;
        }
        arrayList.add(new SettingListAdapter.SettingItem(3, i3, i, this.d0));
        return arrayList;
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.b0 == null) {
            return;
        }
        MyPopupMenu myPopupMenu = this.l0;
        if (myPopupMenu != null) {
            this.Y = null;
            myPopupMenu.a();
            this.l0 = null;
        }
        MyPopupMenu myPopupMenu2 = this.m0;
        if (myPopupMenu2 != null) {
            this.Y = null;
            myPopupMenu2.a();
            this.m0 = null;
        }
        MyDialogLinear myDialogLinear = this.h0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.h0 = null;
        }
        MyRecyclerView myRecyclerView = this.i0;
        if (myRecyclerView != null) {
            myRecyclerView.s0();
            this.i0 = null;
        }
        MyLineText myLineText = this.j0;
        if (myLineText != null) {
            myLineText.u();
            this.j0 = null;
        }
        SettingListAdapter settingListAdapter = this.k0;
        if (settingListAdapter != null) {
            settingListAdapter.z();
            this.k0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.c0 = null;
        super.dismiss();
    }
}
