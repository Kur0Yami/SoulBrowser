package com.mycompany.app.dialog;

import android.content.Context;
import android.os.Handler;
import android.view.View;
import android.widget.LinearLayout;
import com.mycompany.app.dialog.DialogSetFull;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.pref.PrefWeb;
import com.mycompany.app.setting.SettingListAdapter;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyManagerLinear;
import com.mycompany.app.view.MyPopupAdapter;
import com.mycompany.app.view.MyPopupMenu;
import com.mycompany.app.view.MyRecyclerView;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class DialogSetCookie extends MyDialogBottom {
    public static final /* synthetic */ int k0 = 0;
    public MainActivity a0;
    public Context b0;
    public DialogSetFull.DialogApplyListener c0;
    public MyDialogLinear d0;
    public MyRecyclerView e0;
    public MyLineText f0;
    public SettingListAdapter g0;
    public int h0;
    public int i0;
    public MyPopupMenu j0;

    public DialogSetCookie(MainActivity mainActivity, DialogSetFull.DialogApplyListener dialogApplyListener) {
        super(mainActivity);
        this.a0 = mainActivity;
        this.b0 = getContext();
        this.c0 = dialogApplyListener;
        this.h0 = PrefWeb.F;
        this.i0 = PrefWeb.G;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetCookie.1
            @Override // java.lang.Runnable
            public final void run() {
                final DialogSetCookie dialogSetCookie = DialogSetCookie.this;
                Context context = dialogSetCookie.b0;
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
                    dialogSetCookie.d0 = q;
                    dialogSetCookie.e0 = u;
                    dialogSetCookie.f0 = myLineText;
                    Handler handler2 = dialogSetCookie.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetCookie.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            final DialogSetCookie dialogSetCookie2 = DialogSetCookie.this;
                            if (dialogSetCookie2.d0 != null && dialogSetCookie2.b0 != null) {
                                if (MainApp.K1) {
                                    dialogSetCookie2.f0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogSetCookie2.f0.setTextColor(-328966);
                                } else {
                                    dialogSetCookie2.f0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogSetCookie2.f0.setTextColor(-14784824);
                                }
                                dialogSetCookie2.f0.setText(R.string.apply);
                                ArrayList arrayList = new ArrayList();
                                int i = R.string.accept_cookie;
                                int[] iArr = MainConst.R;
                                arrayList.add(new SettingListAdapter.SettingItem(0, i, iArr[dialogSetCookie2.h0], 0, 0));
                                MyManagerLinear t = com.google.android.gms.internal.mlkit_vision_text_common.a.t(arrayList, new SettingListAdapter.SettingItem(1, R.string.third_cookie, iArr[dialogSetCookie2.i0], 0, 0), 1);
                                dialogSetCookie2.g0 = new SettingListAdapter(arrayList, true, t, new SettingListAdapter.SettingListener() { // from class: com.mycompany.app.dialog.DialogSetCookie.3
                                    @Override // com.mycompany.app.setting.SettingListAdapter.SettingListener
                                    public final void a(SettingListAdapter.ViewHolder viewHolder, int i2, boolean z, int i3) {
                                        int i4 = DialogSetCookie.k0;
                                        DialogSetCookie dialogSetCookie3 = DialogSetCookie.this;
                                        if (i2 != 0) {
                                            if (i2 != 1) {
                                                dialogSetCookie3.getClass();
                                                return;
                                            } else {
                                                dialogSetCookie3.B(viewHolder, i2);
                                                return;
                                            }
                                        }
                                        dialogSetCookie3.B(viewHolder, i2);
                                    }
                                });
                                dialogSetCookie2.e0.setLayoutManager(t);
                                dialogSetCookie2.e0.setAdapter(dialogSetCookie2.g0);
                                dialogSetCookie2.f0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetCookie.4
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        int i2 = PrefWeb.F;
                                        DialogSetCookie dialogSetCookie3 = DialogSetCookie.this;
                                        int i3 = dialogSetCookie3.h0;
                                        if (i2 != i3 || PrefWeb.G != dialogSetCookie3.i0) {
                                            PrefWeb.F = i3;
                                            PrefWeb.G = dialogSetCookie3.i0;
                                            PrefWeb r = PrefWeb.r(dialogSetCookie3.b0, false);
                                            r.n(PrefWeb.F, "mCookieType");
                                            r.n(PrefWeb.G, "mThirdType");
                                            r.a();
                                            MainApp.M(dialogSetCookie3.b0);
                                            DialogSetFull.DialogApplyListener dialogApplyListener2 = dialogSetCookie3.c0;
                                            if (dialogApplyListener2 != null) {
                                                dialogApplyListener2.a();
                                            }
                                        }
                                        dialogSetCookie3.dismiss();
                                    }
                                });
                                dialogSetCookie2.g(dialogSetCookie2.d0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogSetCookie.5
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view) {
                                        DialogSetCookie dialogSetCookie3 = DialogSetCookie.this;
                                        if (dialogSetCookie3.d0 == null) {
                                            return;
                                        }
                                        dialogSetCookie3.show();
                                    }
                                });
                            }
                        }
                    });
                }
            }
        });
    }

    public final void B(SettingListAdapter.ViewHolder viewHolder, final int i) {
        MyPopupMenu myPopupMenu;
        int i2;
        boolean z;
        if (this.a0 != null && (myPopupMenu = this.j0) == null) {
            if (myPopupMenu != null) {
                this.Y = null;
                myPopupMenu.a();
                this.j0 = null;
            }
            if (viewHolder != null && viewHolder.D != null) {
                if (i == 1) {
                    i2 = this.i0;
                } else {
                    i2 = this.h0;
                }
                ArrayList arrayList = new ArrayList();
                final int length = MainConst.Q.length;
                for (int i3 = 0; i3 < length; i3++) {
                    int i4 = MainConst.Q[i3];
                    int i5 = MainConst.R[i4];
                    if (i2 == i4) {
                        z = true;
                    } else {
                        z = false;
                    }
                    arrayList.add(new MyPopupAdapter.PopMenuItem(i3, i5, z));
                }
                MyPopupMenu myPopupMenu2 = new MyPopupMenu(this.a0, this.d0, viewHolder.D, arrayList, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.dialog.DialogSetCookie.6
                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                    public final void a() {
                        int i6 = DialogSetCookie.k0;
                        DialogSetCookie dialogSetCookie = DialogSetCookie.this;
                        MyPopupMenu myPopupMenu3 = dialogSetCookie.j0;
                        if (myPopupMenu3 != null) {
                            dialogSetCookie.Y = null;
                            myPopupMenu3.a();
                            dialogSetCookie.j0 = null;
                        }
                    }

                    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public final boolean b(android.view.View r4, int r5) {
                        /*
                            r3 = this;
                            int[] r4 = com.mycompany.app.main.MainConst.Q
                            int r0 = r2
                            int r5 = r5 % r0
                            r4 = r4[r5]
                            com.mycompany.app.dialog.DialogSetCookie r5 = com.mycompany.app.dialog.DialogSetCookie.this
                            int r0 = r3
                            r1 = 1
                            if (r0 != r1) goto L16
                            int r2 = r5.i0
                            if (r2 != r4) goto L13
                            goto L28
                        L13:
                            r5.i0 = r4
                            goto L1d
                        L16:
                            int r2 = r5.h0
                            if (r2 != r4) goto L1b
                            goto L28
                        L1b:
                            r5.h0 = r4
                        L1d:
                            com.mycompany.app.setting.SettingListAdapter r5 = r5.g0
                            if (r5 == 0) goto L28
                            int[] r2 = com.mycompany.app.main.MainConst.R
                            r4 = r2[r4]
                            r5.F(r0, r4)
                        L28:
                            return r1
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogSetCookie.AnonymousClass6.b(android.view.View, int):boolean");
                    }
                });
                this.j0 = myPopupMenu2;
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
        MyPopupMenu myPopupMenu = this.j0;
        if (myPopupMenu != null) {
            this.Y = null;
            myPopupMenu.a();
            this.j0 = null;
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
        this.c0 = null;
        super.dismiss();
    }
}
