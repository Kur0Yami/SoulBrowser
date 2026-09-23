package com.mycompany.app.dialog;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.view.View;
import android.widget.LinearLayout;
import com.mycompany.app.dialog.DialogSetFull;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.pref.PrefWeb;
import com.mycompany.app.pref.PrefZone;
import com.mycompany.app.setting.SettingListAdapter;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyManagerLinear;
import com.mycompany.app.view.MyRecyclerView;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class DialogSetTabRestore extends MyDialogBottom {
    public static final /* synthetic */ int j0 = 0;
    public Context a0;
    public DialogSetFull.DialogApplyListener b0;
    public MyDialogLinear c0;
    public MyRecyclerView d0;
    public MyLineText e0;
    public SettingListAdapter f0;
    public boolean g0;
    public boolean h0;
    public boolean i0;

    public DialogSetTabRestore(Activity activity, DialogSetFull.DialogApplyListener dialogApplyListener) {
        super(activity);
        this.a0 = getContext();
        this.b0 = dialogApplyListener;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetTabRestore.1
            @Override // java.lang.Runnable
            public final void run() {
                final DialogSetTabRestore dialogSetTabRestore = DialogSetTabRestore.this;
                Context context = dialogSetTabRestore.a0;
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
                    dialogSetTabRestore.c0 = q;
                    dialogSetTabRestore.d0 = u;
                    dialogSetTabRestore.e0 = myLineText;
                    Handler handler2 = dialogSetTabRestore.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetTabRestore.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            final DialogSetTabRestore dialogSetTabRestore2 = DialogSetTabRestore.this;
                            if (dialogSetTabRestore2.c0 != null && dialogSetTabRestore2.a0 != null) {
                                if (MainApp.K1) {
                                    dialogSetTabRestore2.e0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogSetTabRestore2.e0.setTextColor(-328966);
                                } else {
                                    dialogSetTabRestore2.e0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogSetTabRestore2.e0.setTextColor(-14784824);
                                }
                                dialogSetTabRestore2.g0 = PrefWeb.A;
                                dialogSetTabRestore2.h0 = PrefZone.F;
                                dialogSetTabRestore2.e0.setText(R.string.apply);
                                ArrayList arrayList = new ArrayList();
                                arrayList.add(new SettingListAdapter.SettingItem(0, R.string.web_page, 0, 0, dialogSetTabRestore2.g0, true));
                                MyManagerLinear t = com.google.android.gms.internal.mlkit_vision_text_common.a.t(arrayList, new SettingListAdapter.SettingItem(1, R.string.tab_list, 0, 0, dialogSetTabRestore2.h0, true), 1);
                                dialogSetTabRestore2.f0 = new SettingListAdapter(arrayList, true, t, new SettingListAdapter.SettingListener() { // from class: com.mycompany.app.dialog.DialogSetTabRestore.3
                                    @Override // com.mycompany.app.setting.SettingListAdapter.SettingListener
                                    public final void a(SettingListAdapter.ViewHolder viewHolder, int i, boolean z, int i2) {
                                        DialogSetTabRestore dialogSetTabRestore3 = DialogSetTabRestore.this;
                                        if (i != 0) {
                                            if (i != 1) {
                                                int i3 = DialogSetTabRestore.j0;
                                                dialogSetTabRestore3.getClass();
                                                return;
                                            } else {
                                                dialogSetTabRestore3.h0 = z;
                                                return;
                                            }
                                        }
                                        dialogSetTabRestore3.g0 = z;
                                    }
                                });
                                dialogSetTabRestore2.d0.setLayoutManager(t);
                                dialogSetTabRestore2.d0.setAdapter(dialogSetTabRestore2.f0);
                                dialogSetTabRestore2.e0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetTabRestore.4
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        DialogSetTabRestore dialogSetTabRestore3 = DialogSetTabRestore.this;
                                        MyLineText myLineText2 = dialogSetTabRestore3.e0;
                                        if (myLineText2 == null || dialogSetTabRestore3.i0) {
                                            return;
                                        }
                                        dialogSetTabRestore3.i0 = true;
                                        myLineText2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetTabRestore.4.1
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                boolean z;
                                                DialogSetFull.DialogApplyListener dialogApplyListener2;
                                                boolean z2 = PrefWeb.A;
                                                AnonymousClass4 anonymousClass4 = AnonymousClass4.this;
                                                DialogSetTabRestore dialogSetTabRestore4 = DialogSetTabRestore.this;
                                                boolean z3 = dialogSetTabRestore4.g0;
                                                boolean z4 = true;
                                                if (z2 != z3) {
                                                    PrefWeb.A = z3;
                                                    PrefSet.d(14, dialogSetTabRestore4.a0, "mTabRestore", z3);
                                                    z = true;
                                                } else {
                                                    z = false;
                                                }
                                                boolean z5 = PrefZone.F;
                                                DialogSetTabRestore dialogSetTabRestore5 = DialogSetTabRestore.this;
                                                boolean z6 = dialogSetTabRestore5.h0;
                                                if (z5 != z6) {
                                                    PrefZone.F = z6;
                                                    PrefSet.d(15, dialogSetTabRestore5.a0, "mTabUndelete", z6);
                                                } else {
                                                    z4 = z;
                                                }
                                                if (z4 && (dialogApplyListener2 = DialogSetTabRestore.this.b0) != null) {
                                                    dialogApplyListener2.a();
                                                }
                                                DialogSetTabRestore.this.dismiss();
                                                DialogSetTabRestore.this.i0 = false;
                                            }
                                        });
                                    }
                                });
                                dialogSetTabRestore2.g(dialogSetTabRestore2.c0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogSetTabRestore.5
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view) {
                                        DialogSetTabRestore dialogSetTabRestore3 = DialogSetTabRestore.this;
                                        if (dialogSetTabRestore3.c0 == null) {
                                            return;
                                        }
                                        dialogSetTabRestore3.show();
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
        MyRecyclerView myRecyclerView = this.d0;
        if (myRecyclerView != null) {
            myRecyclerView.s0();
            this.d0 = null;
        }
        MyLineText myLineText = this.e0;
        if (myLineText != null) {
            myLineText.u();
            this.e0 = null;
        }
        SettingListAdapter settingListAdapter = this.f0;
        if (settingListAdapter != null) {
            settingListAdapter.z();
            this.f0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        super.dismiss();
    }
}
