package com.mycompany.app.dialog;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.view.View;
import android.widget.LinearLayout;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.pref.PrefZtwo;
import com.mycompany.app.setting.SettingListAdapter;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyManagerLinear;
import com.mycompany.app.view.MyRecyclerView;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class DialogSetOpen extends MyDialogBottom {
    public static final /* synthetic */ int g0 = 0;
    public Context a0;
    public MyDialogLinear b0;
    public MyRecyclerView c0;
    public MyLineText d0;
    public SettingListAdapter e0;
    public int f0;

    public DialogSetOpen(Activity activity) {
        super(activity);
        this.a0 = getContext();
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetOpen.1
            @Override // java.lang.Runnable
            public final void run() {
                final DialogSetOpen dialogSetOpen = DialogSetOpen.this;
                Context context = dialogSetOpen.a0;
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
                    dialogSetOpen.b0 = q;
                    dialogSetOpen.c0 = u;
                    dialogSetOpen.d0 = myLineText;
                    Handler handler2 = dialogSetOpen.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetOpen.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            boolean z;
                            boolean z2;
                            boolean z3;
                            boolean z4;
                            boolean z5;
                            final DialogSetOpen dialogSetOpen2 = DialogSetOpen.this;
                            if (dialogSetOpen2.b0 != null && dialogSetOpen2.a0 != null) {
                                if (MainApp.K1) {
                                    dialogSetOpen2.d0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogSetOpen2.d0.setTextColor(-328966);
                                } else {
                                    dialogSetOpen2.d0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogSetOpen2.d0.setTextColor(-14784824);
                                }
                                dialogSetOpen2.f0 = PrefZtwo.C;
                                dialogSetOpen2.d0.setText(R.string.apply);
                                int i = dialogSetOpen2.f0;
                                if ((i & 2) == 2) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                if ((i & 4) == 4) {
                                    z2 = true;
                                } else {
                                    z2 = false;
                                }
                                if ((i & 8) == 8) {
                                    z3 = true;
                                } else {
                                    z3 = false;
                                }
                                if ((i & 16) == 16) {
                                    z4 = true;
                                } else {
                                    z4 = false;
                                }
                                if ((i & 32) == 32) {
                                    z5 = true;
                                } else {
                                    z5 = false;
                                }
                                ArrayList arrayList = new ArrayList();
                                arrayList.add(new SettingListAdapter.SettingItem(0, R.string.link, 0, 0, z, true));
                                arrayList.add(new SettingListAdapter.SettingItem(1, R.string.search_url, 0, 0, z2, true));
                                arrayList.add(new SettingListAdapter.SettingItem(2, R.string.quick_access, 0, 0, z3, true));
                                arrayList.add(new SettingListAdapter.SettingItem(3, R.string.bookmark, 0, 0, z4, true));
                                MyManagerLinear t = com.google.android.gms.internal.mlkit_vision_text_common.a.t(arrayList, new SettingListAdapter.SettingItem(4, R.string.history, 0, 0, z5, true), 1);
                                dialogSetOpen2.e0 = new SettingListAdapter(arrayList, true, t, new SettingListAdapter.SettingListener() { // from class: com.mycompany.app.dialog.DialogSetOpen.3
                                    @Override // com.mycompany.app.setting.SettingListAdapter.SettingListener
                                    public final void a(SettingListAdapter.ViewHolder viewHolder, int i2, boolean z6, int i3) {
                                        DialogSetOpen dialogSetOpen3 = DialogSetOpen.this;
                                        if (i2 != 0) {
                                            if (i2 != 1) {
                                                if (i2 != 2) {
                                                    if (i2 != 3) {
                                                        if (i2 != 4) {
                                                            int i4 = DialogSetOpen.g0;
                                                            dialogSetOpen3.getClass();
                                                            return;
                                                        } else if (z6) {
                                                            dialogSetOpen3.f0 |= 32;
                                                            return;
                                                        } else {
                                                            dialogSetOpen3.f0 &= -33;
                                                            return;
                                                        }
                                                    }
                                                    if (z6) {
                                                        dialogSetOpen3.f0 |= 16;
                                                        return;
                                                    } else {
                                                        dialogSetOpen3.f0 &= -17;
                                                        return;
                                                    }
                                                }
                                                if (z6) {
                                                    dialogSetOpen3.f0 |= 8;
                                                    return;
                                                } else {
                                                    dialogSetOpen3.f0 &= -9;
                                                    return;
                                                }
                                            }
                                            if (z6) {
                                                dialogSetOpen3.f0 |= 4;
                                                return;
                                            } else {
                                                dialogSetOpen3.f0 &= -5;
                                                return;
                                            }
                                        }
                                        if (z6) {
                                            dialogSetOpen3.f0 |= 2;
                                        } else {
                                            dialogSetOpen3.f0 &= -3;
                                        }
                                    }
                                });
                                dialogSetOpen2.c0.setLayoutManager(t);
                                dialogSetOpen2.c0.setAdapter(dialogSetOpen2.e0);
                                dialogSetOpen2.d0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetOpen.4
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        int i2 = PrefZtwo.C;
                                        DialogSetOpen dialogSetOpen3 = DialogSetOpen.this;
                                        int i3 = dialogSetOpen3.f0;
                                        if (i2 != i3) {
                                            PrefZtwo.C = i3;
                                            PrefSet.f(dialogSetOpen3.a0, 16, i3, "mTabOpen2");
                                        }
                                        dialogSetOpen3.dismiss();
                                    }
                                });
                                dialogSetOpen2.g(dialogSetOpen2.b0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogSetOpen.5
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view) {
                                        DialogSetOpen dialogSetOpen3 = DialogSetOpen.this;
                                        if (dialogSetOpen3.b0 == null) {
                                            return;
                                        }
                                        dialogSetOpen3.show();
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
        MyDialogLinear myDialogLinear = this.b0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.b0 = null;
        }
        MyRecyclerView myRecyclerView = this.c0;
        if (myRecyclerView != null) {
            myRecyclerView.s0();
            this.c0 = null;
        }
        MyLineText myLineText = this.d0;
        if (myLineText != null) {
            myLineText.u();
            this.d0 = null;
        }
        SettingListAdapter settingListAdapter = this.e0;
        if (settingListAdapter != null) {
            settingListAdapter.z();
            this.e0 = null;
        }
        this.a0 = null;
        super.dismiss();
    }
}
