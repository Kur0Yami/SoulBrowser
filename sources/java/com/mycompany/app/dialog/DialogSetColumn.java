package com.mycompany.app.dialog;

import android.content.Context;
import android.os.Handler;
import android.view.View;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.pref.PrefMain;
import com.mycompany.app.pref.PrefZtri;
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
public class DialogSetColumn extends MyDialogBottom {
    public static final int[] k0 = {2, 3, 4, 5, 6, 7};
    public static final int[] l0 = {2, 3, 4, 5, 6, 7, 8, 9, 10};
    public MainActivity a0;
    public Context b0;
    public final boolean c0;
    public MyDialogLinear d0;
    public MyRecyclerView e0;
    public MyLineText f0;
    public SettingListAdapter g0;
    public MyPopupMenu h0;
    public int i0;
    public int j0;

    public DialogSetColumn(MainActivity mainActivity, boolean z) {
        super(mainActivity);
        this.a0 = mainActivity;
        this.b0 = getContext();
        this.c0 = z;
        if (z) {
            this.i0 = PrefMain.z;
        } else {
            this.i0 = PrefZtri.l0;
            this.j0 = PrefZtri.m0;
        }
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetColumn.1
            @Override // java.lang.Runnable
            public final void run() {
                final DialogSetColumn dialogSetColumn = DialogSetColumn.this;
                Context context = dialogSetColumn.b0;
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
                    dialogSetColumn.d0 = q;
                    dialogSetColumn.e0 = u;
                    dialogSetColumn.f0 = myLineText;
                    Handler handler2 = dialogSetColumn.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetColumn.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            final DialogSetColumn dialogSetColumn2 = DialogSetColumn.this;
                            if (dialogSetColumn2.d0 != null && dialogSetColumn2.b0 != null) {
                                if (MainApp.K1) {
                                    dialogSetColumn2.f0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogSetColumn2.f0.setTextColor(-328966);
                                } else {
                                    dialogSetColumn2.f0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogSetColumn2.f0.setTextColor(-14784824);
                                }
                                dialogSetColumn2.f0.setText(R.string.apply);
                                ArrayList arrayList = new ArrayList();
                                if (dialogSetColumn2.c0) {
                                    arrayList.add(new SettingListAdapter.SettingItem(0, R.string.column_count, DialogSetColumn.B(dialogSetColumn2.i0), 0, 0));
                                } else {
                                    arrayList.add(new SettingListAdapter.SettingItem(0, R.string.view_port, DialogSetColumn.B(dialogSetColumn2.i0), 0, 0));
                                    arrayList.add(new SettingListAdapter.SettingItem(1, R.string.view_land, DialogSetColumn.B(dialogSetColumn2.j0), 0, 0));
                                }
                                LinearLayoutManager linearLayoutManager = new LinearLayoutManager(1);
                                dialogSetColumn2.g0 = new SettingListAdapter(arrayList, true, linearLayoutManager, new SettingListAdapter.SettingListener() { // from class: com.mycompany.app.dialog.DialogSetColumn.3
                                    @Override // com.mycompany.app.setting.SettingListAdapter.SettingListener
                                    public final void a(SettingListAdapter.ViewHolder viewHolder, int i, boolean z2, int i2) {
                                        int[] iArr = DialogSetColumn.k0;
                                        DialogSetColumn dialogSetColumn3 = DialogSetColumn.this;
                                        if (i != 0) {
                                            if (i != 1) {
                                                dialogSetColumn3.getClass();
                                                return;
                                            } else {
                                                dialogSetColumn3.C(viewHolder, i);
                                                return;
                                            }
                                        }
                                        dialogSetColumn3.C(viewHolder, i);
                                    }
                                });
                                dialogSetColumn2.e0.setLayoutManager(linearLayoutManager);
                                dialogSetColumn2.e0.setAdapter(dialogSetColumn2.g0);
                                dialogSetColumn2.f0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetColumn.4
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        DialogSetColumn dialogSetColumn3 = DialogSetColumn.this;
                                        if (dialogSetColumn3.c0) {
                                            int i = PrefMain.z;
                                            int i2 = dialogSetColumn3.i0;
                                            if (i != i2) {
                                                PrefMain.z = i2;
                                                PrefMain r = PrefMain.r(dialogSetColumn3.b0, false);
                                                r.n(PrefMain.z, "mMenuPort");
                                                r.a();
                                            }
                                        } else {
                                            int i3 = PrefZtri.l0;
                                            int i4 = dialogSetColumn3.i0;
                                            if (i3 != i4 || PrefZtri.m0 != dialogSetColumn3.j0) {
                                                PrefZtri.l0 = i4;
                                                PrefZtri.m0 = dialogSetColumn3.j0;
                                                PrefZtri r2 = PrefZtri.r(dialogSetColumn3.b0);
                                                r2.n(PrefZtri.l0, "mQuickPort");
                                                r2.n(PrefZtri.m0, "mQuickLand");
                                                r2.a();
                                            }
                                        }
                                        dialogSetColumn3.dismiss();
                                    }
                                });
                                dialogSetColumn2.g(dialogSetColumn2.d0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogSetColumn.5
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view) {
                                        DialogSetColumn dialogSetColumn3 = DialogSetColumn.this;
                                        if (dialogSetColumn3.d0 == null) {
                                            return;
                                        }
                                        dialogSetColumn3.show();
                                    }
                                });
                            }
                        }
                    });
                }
            }
        });
    }

    public static String B(int i) {
        return android.support.v4.media.a.e(i, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
    }

    public final void C(SettingListAdapter.ViewHolder viewHolder, final int i) {
        boolean z;
        boolean z2;
        MyPopupMenu myPopupMenu = this.h0;
        if (myPopupMenu == null) {
            if (myPopupMenu != null) {
                this.Y = null;
                myPopupMenu.a();
                this.h0 = null;
            }
            if (viewHolder != null && viewHolder.D != null) {
                ArrayList arrayList = new ArrayList();
                if (i == 1) {
                    for (int i2 = 0; i2 < 9; i2++) {
                        int i3 = l0[i2];
                        String B = B(i3);
                        if (this.j0 == i3) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        arrayList.add(new MyPopupAdapter.PopMenuItem(B, i2, z2));
                    }
                } else {
                    for (int i4 = 0; i4 < 6; i4++) {
                        int i5 = k0[i4];
                        String B2 = B(i5);
                        if (this.i0 == i5) {
                            z = true;
                        } else {
                            z = false;
                        }
                        arrayList.add(new MyPopupAdapter.PopMenuItem(B2, i4, z));
                    }
                }
                MyPopupMenu myPopupMenu2 = new MyPopupMenu(this.a0, this.d0, viewHolder.D, arrayList, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.dialog.DialogSetColumn.6
                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                    public final void a() {
                        int[] iArr = DialogSetColumn.k0;
                        DialogSetColumn dialogSetColumn = DialogSetColumn.this;
                        MyPopupMenu myPopupMenu3 = dialogSetColumn.h0;
                        if (myPopupMenu3 != null) {
                            dialogSetColumn.Y = null;
                            myPopupMenu3.a();
                            dialogSetColumn.h0 = null;
                        }
                    }

                    /* JADX WARN: Removed duplicated region for block: B:8:0x0026  */
                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public final boolean b(android.view.View r4, int r5) {
                        /*
                            r3 = this;
                            com.mycompany.app.dialog.DialogSetColumn r4 = com.mycompany.app.dialog.DialogSetColumn.this
                            int r0 = r2
                            r1 = 1
                            if (r0 != r1) goto L15
                            int[] r2 = com.mycompany.app.dialog.DialogSetColumn.l0
                            int r5 = r5 % 9
                            r5 = r2[r5]
                            int r2 = r4.j0
                            if (r2 != r5) goto L12
                            goto L2d
                        L12:
                            r4.j0 = r5
                            goto L22
                        L15:
                            int[] r2 = com.mycompany.app.dialog.DialogSetColumn.k0
                            int r5 = r5 % 6
                            r5 = r2[r5]
                            int r2 = r4.i0
                            if (r2 != r5) goto L20
                            goto L2d
                        L20:
                            r4.i0 = r5
                        L22:
                            com.mycompany.app.setting.SettingListAdapter r4 = r4.g0
                            if (r4 == 0) goto L2d
                            java.lang.String r5 = com.mycompany.app.dialog.DialogSetColumn.B(r5)
                            r4.G(r0, r5)
                        L2d:
                            return r1
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogSetColumn.AnonymousClass6.b(android.view.View, int):boolean");
                    }
                });
                this.h0 = myPopupMenu2;
                this.Y = myPopupMenu2;
            }
        }
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.b0 == null) {
            return;
        }
        MyPopupMenu myPopupMenu = this.h0;
        if (myPopupMenu != null) {
            this.Y = null;
            myPopupMenu.a();
            this.h0 = null;
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
        MyLineText myLineText = this.f0;
        if (myLineText != null) {
            myLineText.u();
            this.f0 = null;
        }
        SettingListAdapter settingListAdapter = this.g0;
        if (settingListAdapter != null) {
            settingListAdapter.z();
            this.g0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        super.dismiss();
    }
}
