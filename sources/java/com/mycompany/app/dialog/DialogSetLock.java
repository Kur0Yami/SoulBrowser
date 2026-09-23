package com.mycompany.app.dialog;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.view.View;
import android.widget.LinearLayout;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.pref.PrefSecret;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.setting.SettingListAdapter;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyManagerLinear;
import com.mycompany.app.view.MyRecyclerView;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class DialogSetLock extends MyDialogBottom {
    public static final /* synthetic */ int g0 = 0;
    public Context a0;
    public int b0;
    public MyDialogLinear c0;
    public MyRecyclerView d0;
    public MyLineText e0;
    public SettingListAdapter f0;

    public DialogSetLock(Activity activity) {
        super(activity);
        this.a0 = getContext();
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetLock.1
            @Override // java.lang.Runnable
            public final void run() {
                final DialogSetLock dialogSetLock = DialogSetLock.this;
                Context context = dialogSetLock.a0;
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
                    dialogSetLock.c0 = q;
                    dialogSetLock.d0 = u;
                    dialogSetLock.e0 = myLineText;
                    Handler handler2 = dialogSetLock.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetLock.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            boolean z;
                            boolean z2;
                            boolean z3;
                            boolean z4;
                            boolean z5;
                            boolean z6;
                            final DialogSetLock dialogSetLock2 = DialogSetLock.this;
                            if (dialogSetLock2.c0 != null && dialogSetLock2.a0 != null) {
                                if (MainApp.K1) {
                                    dialogSetLock2.e0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogSetLock2.e0.setTextColor(-328966);
                                } else {
                                    dialogSetLock2.e0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogSetLock2.e0.setTextColor(-14784824);
                                }
                                dialogSetLock2.b0 = PrefSecret.v;
                                dialogSetLock2.e0.setText(R.string.apply);
                                int i = dialogSetLock2.b0;
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
                                if ((i & 64) == 64) {
                                    z6 = true;
                                } else {
                                    z6 = false;
                                }
                                ArrayList arrayList = new ArrayList();
                                arrayList.add(new SettingListAdapter.SettingItem(0, R.string.quick_access, 0, 0, z, true));
                                arrayList.add(new SettingListAdapter.SettingItem(1, R.string.bookmark, 0, 0, z2, true));
                                arrayList.add(new SettingListAdapter.SettingItem(2, R.string.down_list, 0, 0, z3, true));
                                arrayList.add(new SettingListAdapter.SettingItem(3, R.string.recent_search, 0, 0, z4, true));
                                arrayList.add(new SettingListAdapter.SettingItem(4, R.string.history, 0, 0, z5, true));
                                MyManagerLinear t = com.google.android.gms.internal.mlkit_vision_text_common.a.t(arrayList, new SettingListAdapter.SettingItem(5, R.string.tab_item, 0, 0, z6, true), 1);
                                dialogSetLock2.f0 = new SettingListAdapter(arrayList, true, t, new SettingListAdapter.SettingListener() { // from class: com.mycompany.app.dialog.DialogSetLock.3
                                    @Override // com.mycompany.app.setting.SettingListAdapter.SettingListener
                                    public final void a(SettingListAdapter.ViewHolder viewHolder, int i2, boolean z7, int i3) {
                                        DialogSetLock dialogSetLock3 = DialogSetLock.this;
                                        if (i2 != 0) {
                                            if (i2 != 1) {
                                                if (i2 != 2) {
                                                    if (i2 != 3) {
                                                        if (i2 != 4) {
                                                            if (i2 != 5) {
                                                                int i4 = DialogSetLock.g0;
                                                                dialogSetLock3.getClass();
                                                                return;
                                                            } else if (z7) {
                                                                dialogSetLock3.b0 |= 64;
                                                                return;
                                                            } else {
                                                                dialogSetLock3.b0 &= -65;
                                                                return;
                                                            }
                                                        }
                                                        if (z7) {
                                                            dialogSetLock3.b0 |= 32;
                                                            return;
                                                        } else {
                                                            dialogSetLock3.b0 &= -33;
                                                            return;
                                                        }
                                                    }
                                                    if (z7) {
                                                        dialogSetLock3.b0 |= 16;
                                                        return;
                                                    } else {
                                                        dialogSetLock3.b0 &= -17;
                                                        return;
                                                    }
                                                }
                                                if (z7) {
                                                    dialogSetLock3.b0 |= 8;
                                                    return;
                                                } else {
                                                    dialogSetLock3.b0 &= -9;
                                                    return;
                                                }
                                            }
                                            if (z7) {
                                                dialogSetLock3.b0 |= 4;
                                                return;
                                            } else {
                                                dialogSetLock3.b0 &= -5;
                                                return;
                                            }
                                        }
                                        if (z7) {
                                            dialogSetLock3.b0 |= 2;
                                        } else {
                                            dialogSetLock3.b0 &= -3;
                                        }
                                    }
                                });
                                dialogSetLock2.d0.setLayoutManager(t);
                                dialogSetLock2.d0.setAdapter(dialogSetLock2.f0);
                                dialogSetLock2.e0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetLock.4
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        int i2 = PrefSecret.v;
                                        DialogSetLock dialogSetLock3 = DialogSetLock.this;
                                        int i3 = dialogSetLock3.b0;
                                        if (i2 != i3) {
                                            PrefSecret.v = i3;
                                            PrefSet.f(dialogSetLock3.a0, 9, i3, "mLockReset3");
                                        }
                                        dialogSetLock3.dismiss();
                                    }
                                });
                                dialogSetLock2.g(dialogSetLock2.c0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogSetLock.5
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view) {
                                        DialogSetLock dialogSetLock3 = DialogSetLock.this;
                                        if (dialogSetLock3.c0 == null) {
                                            return;
                                        }
                                        dialogSetLock3.show();
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
        super.dismiss();
    }
}
