package com.mycompany.app.dialog;

import android.content.Context;
import android.os.Handler;
import android.view.View;
import android.widget.LinearLayout;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefSet;
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
public class DialogSetSuggest extends MyDialogBottom {
    public static final int[] j0 = {R.string.not_used, R.string.duckduckgo, R.string.google};
    public static final int[] k0 = {2, 1, 0};
    public MainActivity a0;
    public Context b0;
    public MyDialogLinear c0;
    public MyRecyclerView d0;
    public MyLineText e0;
    public SettingListAdapter f0;
    public MyPopupMenu g0;
    public int h0;
    public int i0;

    public DialogSetSuggest(MainActivity mainActivity) {
        super(mainActivity);
        this.a0 = mainActivity;
        this.b0 = getContext();
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetSuggest.1
            @Override // java.lang.Runnable
            public final void run() {
                final DialogSetSuggest dialogSetSuggest = DialogSetSuggest.this;
                Context context = dialogSetSuggest.b0;
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
                    dialogSetSuggest.c0 = q;
                    dialogSetSuggest.d0 = u;
                    dialogSetSuggest.e0 = myLineText;
                    Handler handler2 = dialogSetSuggest.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetSuggest.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            boolean z;
                            boolean z2;
                            boolean z3;
                            boolean z4;
                            final DialogSetSuggest dialogSetSuggest2 = DialogSetSuggest.this;
                            if (dialogSetSuggest2.c0 != null && dialogSetSuggest2.b0 != null) {
                                if (MainApp.K1) {
                                    dialogSetSuggest2.e0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogSetSuggest2.e0.setTextColor(-328966);
                                } else {
                                    dialogSetSuggest2.e0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogSetSuggest2.e0.setTextColor(-14784824);
                                }
                                if (PrefWeb.V < 0) {
                                    if (MainUtil.f5()) {
                                        PrefWeb.V = 1;
                                    } else {
                                        PrefWeb.V = 2;
                                    }
                                    PrefSet.f(dialogSetSuggest2.b0, 14, PrefWeb.V, "mSugEng");
                                }
                                dialogSetSuggest2.h0 = PrefWeb.V;
                                dialogSetSuggest2.i0 = PrefWeb.W;
                                dialogSetSuggest2.e0.setText(R.string.apply);
                                int i = dialogSetSuggest2.i0;
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
                                ArrayList arrayList = new ArrayList();
                                arrayList.add(new SettingListAdapter.SettingItem(0, R.string.suggest_engine, DialogSetSuggest.j0[dialogSetSuggest2.h0], 0, 0));
                                arrayList.add(new SettingListAdapter.SettingItem(1, R.string.recent_search, 0, 0, z, true));
                                arrayList.add(new SettingListAdapter.SettingItem(2, R.string.history, 0, 0, z2, true));
                                arrayList.add(new SettingListAdapter.SettingItem(3, R.string.bookmark, 0, 0, z3, true));
                                MyManagerLinear t = com.google.android.gms.internal.mlkit_vision_text_common.a.t(arrayList, new SettingListAdapter.SettingItem(4, R.string.quick_access, 0, 0, z4, true), 1);
                                dialogSetSuggest2.f0 = new SettingListAdapter(arrayList, true, t, new SettingListAdapter.SettingListener() { // from class: com.mycompany.app.dialog.DialogSetSuggest.3
                                    @Override // com.mycompany.app.setting.SettingListAdapter.SettingListener
                                    public final void a(SettingListAdapter.ViewHolder viewHolder, int i2, boolean z5, int i3) {
                                        boolean z6;
                                        final DialogSetSuggest dialogSetSuggest3 = DialogSetSuggest.this;
                                        if (i2 != 0) {
                                            if (i2 != 1) {
                                                if (i2 != 2) {
                                                    if (i2 != 3) {
                                                        if (i2 != 4) {
                                                            int[] iArr = DialogSetSuggest.j0;
                                                            return;
                                                        } else if (z5) {
                                                            dialogSetSuggest3.i0 |= 16;
                                                            return;
                                                        } else {
                                                            dialogSetSuggest3.i0 &= -17;
                                                            return;
                                                        }
                                                    }
                                                    if (z5) {
                                                        dialogSetSuggest3.i0 |= 8;
                                                        return;
                                                    } else {
                                                        dialogSetSuggest3.i0 &= -9;
                                                        return;
                                                    }
                                                }
                                                if (z5) {
                                                    dialogSetSuggest3.i0 |= 4;
                                                    return;
                                                } else {
                                                    dialogSetSuggest3.i0 &= -5;
                                                    return;
                                                }
                                            }
                                            if (z5) {
                                                dialogSetSuggest3.i0 = 2 | dialogSetSuggest3.i0;
                                                return;
                                            } else {
                                                dialogSetSuggest3.i0 &= -3;
                                                return;
                                            }
                                        }
                                        MyPopupMenu myPopupMenu = dialogSetSuggest3.g0;
                                        if (myPopupMenu == null) {
                                            if (myPopupMenu != null) {
                                                dialogSetSuggest3.Y = null;
                                                myPopupMenu.a();
                                                dialogSetSuggest3.g0 = null;
                                            }
                                            if (dialogSetSuggest3.a0 != null && viewHolder != null && viewHolder.D != null) {
                                                ArrayList arrayList2 = new ArrayList();
                                                for (int i4 = 0; i4 < 3; i4++) {
                                                    int i5 = DialogSetSuggest.k0[i4];
                                                    int i6 = DialogSetSuggest.j0[i5];
                                                    if (dialogSetSuggest3.h0 == i5) {
                                                        z6 = true;
                                                    } else {
                                                        z6 = false;
                                                    }
                                                    arrayList2.add(new MyPopupAdapter.PopMenuItem(i4, i6, z6));
                                                }
                                                MyPopupMenu myPopupMenu2 = new MyPopupMenu(dialogSetSuggest3.a0, dialogSetSuggest3.c0, viewHolder.D, arrayList2, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.dialog.DialogSetSuggest.6
                                                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                    public final void a() {
                                                        int[] iArr2 = DialogSetSuggest.j0;
                                                        DialogSetSuggest dialogSetSuggest4 = DialogSetSuggest.this;
                                                        MyPopupMenu myPopupMenu3 = dialogSetSuggest4.g0;
                                                        if (myPopupMenu3 != null) {
                                                            dialogSetSuggest4.Y = null;
                                                            myPopupMenu3.a();
                                                            dialogSetSuggest4.g0 = null;
                                                        }
                                                    }

                                                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                    public final boolean b(View view, int i7) {
                                                        int i8 = DialogSetSuggest.k0[i7 % 3];
                                                        DialogSetSuggest dialogSetSuggest4 = DialogSetSuggest.this;
                                                        if (dialogSetSuggest4.h0 != i8) {
                                                            dialogSetSuggest4.h0 = i8;
                                                            SettingListAdapter settingListAdapter = dialogSetSuggest4.f0;
                                                            if (settingListAdapter != null) {
                                                                settingListAdapter.F(0, DialogSetSuggest.j0[i8]);
                                                            }
                                                        }
                                                        return true;
                                                    }
                                                });
                                                dialogSetSuggest3.g0 = myPopupMenu2;
                                                dialogSetSuggest3.Y = myPopupMenu2;
                                            }
                                        }
                                    }
                                });
                                dialogSetSuggest2.d0.setLayoutManager(t);
                                dialogSetSuggest2.d0.setAdapter(dialogSetSuggest2.f0);
                                dialogSetSuggest2.e0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetSuggest.4
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        int i2 = PrefWeb.V;
                                        DialogSetSuggest dialogSetSuggest3 = DialogSetSuggest.this;
                                        int i3 = dialogSetSuggest3.h0;
                                        if (i2 != i3 || PrefWeb.W != dialogSetSuggest3.i0) {
                                            PrefWeb.V = i3;
                                            PrefWeb.W = dialogSetSuggest3.i0;
                                            PrefWeb r = PrefWeb.r(dialogSetSuggest3.b0, false);
                                            r.n(PrefWeb.V, "mSugEng");
                                            r.n(PrefWeb.W, "mSugType3");
                                            r.a();
                                        }
                                        dialogSetSuggest3.dismiss();
                                    }
                                });
                                dialogSetSuggest2.g(dialogSetSuggest2.c0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogSetSuggest.5
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view) {
                                        DialogSetSuggest dialogSetSuggest3 = DialogSetSuggest.this;
                                        if (dialogSetSuggest3.c0 == null) {
                                            return;
                                        }
                                        dialogSetSuggest3.show();
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
        if (this.b0 == null) {
            return;
        }
        MyPopupMenu myPopupMenu = this.g0;
        if (myPopupMenu != null) {
            this.Y = null;
            myPopupMenu.a();
            this.g0 = null;
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
