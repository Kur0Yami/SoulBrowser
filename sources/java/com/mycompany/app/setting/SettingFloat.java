package com.mycompany.app.setting;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import com.mycompany.app.dialog.DialogEditIcon;
import com.mycompany.app.dialog.DialogEditorText;
import com.mycompany.app.dialog.DialogSetItem;
import com.mycompany.app.dialog.DialogSetReset;
import com.mycompany.app.dialog.a;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.MainSelectAdapter;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefEditor;
import com.mycompany.app.pref.PrefFloat;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.setting.SettingListAdapter;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyPopupAdapter;
import com.mycompany.app.view.MyPopupMenu;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class SettingFloat extends SettingActivity {
    public static final /* synthetic */ int a2 = 0;
    public MyPopupMenu X1;
    public DialogSetItem Y1;
    public DialogEditIcon Z1;

    public static void O0(SettingFloat settingFloat, int i, int i2) {
        if (i2 >= 0 && i2 < 74) {
            DialogSetItem dialogSetItem = settingFloat.Y1;
            if (dialogSetItem != null) {
                dialogSetItem.dismiss();
                settingFloat.Y1 = null;
            }
            if (i == 1) {
                if (PrefFloat.j != i2) {
                    PrefFloat.j = i2;
                    PrefSet.f(settingFloat.f1, 2, i2, "mFlt1Icon");
                } else {
                    return;
                }
            } else if (i == 5) {
                if (PrefFloat.k != i2) {
                    PrefFloat.k = i2;
                    PrefSet.f(settingFloat.f1, 2, i2, "mFlt2Icon");
                } else {
                    return;
                }
            } else if (i == 9) {
                if (PrefFloat.l != i2) {
                    PrefFloat.l = i2;
                    PrefSet.f(settingFloat.f1, 2, i2, "mFlt3Icon");
                } else {
                    return;
                }
            }
            SettingListAdapter settingListAdapter = settingFloat.N1;
            if (settingListAdapter != null) {
                settingListAdapter.F(i, MainUtil.n2(i2));
            }
        }
    }

    public static boolean P0(Context context) {
        boolean z;
        if (context == null) {
            return false;
        }
        int i = MainConst.q[5];
        float f = MainConst.p[5];
        if (PrefFloat.j != 0) {
            PrefFloat.j = 0;
            PrefSet.j(context, 2, "mFlt1Icon");
            z = true;
        } else {
            z = false;
        }
        if (PrefFloat.k != 0) {
            PrefFloat.k = 0;
            PrefSet.j(context, 2, "mFlt2Icon");
            z = true;
        }
        if (PrefFloat.l != 0) {
            PrefFloat.l = 0;
            PrefSet.j(context, 2, "mFlt3Icon");
            z = true;
        }
        if (PrefFloat.p != 0 || PrefFloat.q != i || Float.compare(PrefFloat.r, f) != 0) {
            PrefFloat.p = 0;
            PrefFloat.q = i;
            PrefFloat.r = f;
            PrefFloat.s = PrefEditor.r(i, 0);
            PrefFloat r = PrefFloat.r(context);
            r.q("mFlt1Alpha");
            r.q("mFlt1Color");
            r.q("mFlt1Pos");
            r.c();
            z = true;
        }
        if (PrefFloat.t != 0 || PrefFloat.u != i || Float.compare(PrefFloat.v, f) != 0) {
            PrefFloat.t = 0;
            PrefFloat.u = i;
            PrefFloat.v = f;
            PrefFloat.w = PrefEditor.r(i, 0);
            PrefFloat r2 = PrefFloat.r(context);
            r2.q("mFlt2Alpha");
            r2.q("mFlt2Color");
            r2.q("mFlt2Pos");
            r2.c();
            z = true;
        }
        if (PrefFloat.x != 0 || PrefFloat.y != i || Float.compare(PrefFloat.z, f) != 0) {
            PrefFloat.x = 0;
            PrefFloat.y = i;
            PrefFloat.z = f;
            PrefFloat.A = PrefEditor.r(i, 0);
            PrefFloat r3 = PrefFloat.r(context);
            r3.q("mFlt3Alpha");
            r3.q("mFlt3Color");
            r3.q("mFlt3Pos");
            r3.c();
            z = true;
        }
        if (PrefFloat.m) {
            PrefFloat.m = false;
            PrefSet.j(context, 2, "mFlt1Show");
            z = true;
        }
        if (PrefFloat.n) {
            PrefFloat.n = false;
            PrefSet.j(context, 2, "mFlt2Show");
            z = true;
        }
        if (PrefFloat.o) {
            PrefFloat.o = false;
            PrefSet.j(context, 2, "mFlt3Show");
            return true;
        }
        return z;
    }

    public static String Q0(Context context, int i) {
        if (context == null) {
            return null;
        }
        return context.getString(R.string.button_title) + " " + i;
    }

    @Override // com.mycompany.app.setting.SettingActivity
    public final List D0() {
        String Q0 = Q0(this.f1, 1);
        String Q02 = Q0(this.f1, 2);
        String Q03 = Q0(this.f1, 3);
        int r = PrefEditor.r(PrefFloat.q, PrefFloat.p);
        int r2 = PrefEditor.r(PrefFloat.u, PrefFloat.t);
        int r3 = PrefEditor.r(PrefFloat.y, PrefFloat.x);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new SettingListAdapter.SettingItem(0, true));
        arrayList.add(new SettingListAdapter.SettingItem(1, Q0, MainUtil.n2(PrefFloat.j), R.string.drag_move_guide, 1));
        arrayList.add(new SettingListAdapter.SettingItem(2, R.string.icon_color, r, 0, (a) null));
        arrayList.add(new SettingListAdapter.SettingItem(3, R.string.always_visible, 0, 2, PrefFloat.m, true));
        arrayList.add(new SettingListAdapter.SettingItem(4, false));
        arrayList.add(new SettingListAdapter.SettingItem(5, Q02, MainUtil.n2(PrefFloat.k), R.string.drag_move_guide, 1));
        arrayList.add(new SettingListAdapter.SettingItem(6, R.string.icon_color, r2, 0, (a) null));
        arrayList.add(new SettingListAdapter.SettingItem(7, R.string.always_visible, 0, 2, PrefFloat.n, true));
        arrayList.add(new SettingListAdapter.SettingItem(8, false));
        arrayList.add(new SettingListAdapter.SettingItem(9, Q03, MainUtil.n2(PrefFloat.l), R.string.drag_move_guide, 1));
        arrayList.add(new SettingListAdapter.SettingItem(10, R.string.icon_color, r3, 0, (a) null));
        a.u(arrayList, new SettingListAdapter.SettingItem(11, R.string.always_visible, 0, 2, PrefFloat.o, true), 12, false);
        return arrayList;
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        F0(R.string.float_button, true, false);
        this.O1 = MainApp.F1;
        Handler handler = this.O0;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.setting.SettingFloat.1
            @Override // java.lang.Runnable
            public final void run() {
                int i = SettingFloat.a2;
                final SettingFloat settingFloat = SettingFloat.this;
                if (settingFloat.O0 != null) {
                    settingFloat.L0(0, new DialogSetReset.DialogResetListener() { // from class: com.mycompany.app.setting.SettingFloat.2
                        @Override // com.mycompany.app.dialog.DialogSetReset.DialogResetListener
                        public final void a(boolean z) {
                            SettingFloat settingFloat2;
                            SettingListAdapter settingListAdapter;
                            if (z && (settingListAdapter = (settingFloat2 = SettingFloat.this).N1) != null) {
                                settingListAdapter.E(settingFloat2.D0());
                            }
                        }

                        @Override // com.mycompany.app.dialog.DialogSetReset.DialogResetListener
                        public final boolean b() {
                            return SettingFloat.P0(SettingFloat.this.f1);
                        }
                    });
                    Handler handler2 = settingFloat.O0;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.setting.SettingFloat.3
                        @Override // java.lang.Runnable
                        public final void run() {
                            int i2 = SettingFloat.a2;
                            final SettingFloat settingFloat2 = SettingFloat.this;
                            if (settingFloat2.O0 == null) {
                                return;
                            }
                            SettingListAdapter settingListAdapter = new SettingListAdapter((ArrayList) settingFloat2.D0(), false, settingFloat2.M1, new SettingListAdapter.SettingListener() { // from class: com.mycompany.app.setting.SettingFloat.4
                                @Override // com.mycompany.app.setting.SettingListAdapter.SettingListener
                                public final void a(SettingListAdapter.ViewHolder viewHolder, final int i3, boolean z, int i4) {
                                    DialogEditIcon dialogEditIcon;
                                    int i5;
                                    int i6 = SettingFloat.a2;
                                    final SettingFloat settingFloat3 = SettingFloat.this;
                                    switch (i3) {
                                        case 1:
                                        case 5:
                                        case 9:
                                            MyPopupMenu myPopupMenu = settingFloat3.X1;
                                            if (myPopupMenu == null) {
                                                if (myPopupMenu != null) {
                                                    settingFloat3.Z0 = null;
                                                    myPopupMenu.a();
                                                    settingFloat3.X1 = null;
                                                }
                                                if (viewHolder != null && viewHolder.D != null) {
                                                    ArrayList arrayList = new ArrayList();
                                                    arrayList.add(new MyPopupAdapter.PopMenuItem(0, R.string.do_change));
                                                    arrayList.add(new MyPopupAdapter.PopMenuItem(1, R.string.not_used));
                                                    MyPopupMenu myPopupMenu2 = new MyPopupMenu(settingFloat3, settingFloat3.E1, viewHolder.D, arrayList, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.setting.SettingFloat.5
                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                        public final void a() {
                                                            int i7 = SettingFloat.a2;
                                                            SettingFloat settingFloat4 = SettingFloat.this;
                                                            MyPopupMenu myPopupMenu3 = settingFloat4.X1;
                                                            if (myPopupMenu3 != null) {
                                                                settingFloat4.Z0 = null;
                                                                myPopupMenu3.a();
                                                                settingFloat4.X1 = null;
                                                            }
                                                        }

                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                        public final boolean b(View view, int i7) {
                                                            int i8 = 0;
                                                            final int i9 = i3;
                                                            final SettingFloat settingFloat4 = SettingFloat.this;
                                                            if (i7 == 0) {
                                                                int i10 = SettingFloat.a2;
                                                                DialogSetItem dialogSetItem = settingFloat4.Y1;
                                                                if (dialogSetItem != null || settingFloat4.Z1 != null) {
                                                                    return true;
                                                                }
                                                                if (dialogSetItem != null) {
                                                                    dialogSetItem.dismiss();
                                                                    settingFloat4.Y1 = null;
                                                                }
                                                                if (i9 == 1) {
                                                                    i8 = PrefFloat.j;
                                                                } else if (i9 == 5) {
                                                                    i8 = PrefFloat.k;
                                                                } else if (i9 == 9) {
                                                                    i8 = PrefFloat.l;
                                                                }
                                                                DialogSetItem dialogSetItem2 = new DialogSetItem(settingFloat4, i8, null, null, new MainSelectAdapter.MainSelectListener() { // from class: com.mycompany.app.setting.SettingFloat.6
                                                                    @Override // com.mycompany.app.main.MainSelectAdapter.MainSelectListener
                                                                    public final void a(int i11) {
                                                                        SettingFloat.O0(SettingFloat.this, i9, i11);
                                                                    }
                                                                });
                                                                settingFloat4.Y1 = dialogSetItem2;
                                                                dialogSetItem2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingFloat.7
                                                                    @Override // android.content.DialogInterface.OnDismissListener
                                                                    public final void onDismiss(DialogInterface dialogInterface) {
                                                                        int i11 = SettingFloat.a2;
                                                                        SettingFloat settingFloat5 = SettingFloat.this;
                                                                        DialogSetItem dialogSetItem3 = settingFloat5.Y1;
                                                                        if (dialogSetItem3 != null) {
                                                                            dialogSetItem3.dismiss();
                                                                            settingFloat5.Y1 = null;
                                                                        }
                                                                    }
                                                                });
                                                                return true;
                                                            }
                                                            SettingFloat.O0(settingFloat4, i9, 0);
                                                            return true;
                                                        }
                                                    });
                                                    settingFloat3.X1 = myPopupMenu2;
                                                    settingFloat3.Z0 = myPopupMenu2;
                                                    return;
                                                }
                                                return;
                                            }
                                            return;
                                        case 2:
                                        case 6:
                                        case 10:
                                            if (settingFloat3.Y1 == null && (dialogEditIcon = settingFloat3.Z1) == null) {
                                                if (dialogEditIcon != null) {
                                                    dialogEditIcon.dismiss();
                                                    settingFloat3.Z1 = null;
                                                }
                                                if (i3 == 2) {
                                                    i5 = 11;
                                                } else if (i3 == 6) {
                                                    i5 = 12;
                                                } else if (i3 == 10) {
                                                    i5 = 13;
                                                } else {
                                                    return;
                                                }
                                                DialogEditIcon dialogEditIcon2 = new DialogEditIcon(settingFloat3, i5, new DialogEditorText.EditorSetListener() { // from class: com.mycompany.app.setting.SettingFloat.8
                                                    @Override // com.mycompany.app.dialog.DialogEditorText.EditorSetListener
                                                    public final void a(int i7, String str) {
                                                        SettingFloat settingFloat4 = SettingFloat.this;
                                                        if (settingFloat4.N1 != null) {
                                                            int i8 = i3;
                                                            if (i8 == 2) {
                                                                int r = PrefEditor.r(PrefFloat.q, PrefFloat.p);
                                                                settingFloat4.N1.D(new SettingListAdapter.SettingItem(i3, R.string.icon_color, r, 2, (a) null));
                                                                return;
                                                            }
                                                            if (i8 == 6) {
                                                                int r2 = PrefEditor.r(PrefFloat.u, PrefFloat.t);
                                                                settingFloat4.N1.D(new SettingListAdapter.SettingItem(i3, R.string.icon_color, r2, 2, (a) null));
                                                                return;
                                                            }
                                                            if (i8 == 10) {
                                                                int r3 = PrefEditor.r(PrefFloat.y, PrefFloat.x);
                                                                settingFloat4.N1.D(new SettingListAdapter.SettingItem(i3, R.string.icon_color, r3, 2, (a) null));
                                                            }
                                                        }
                                                    }
                                                });
                                                settingFloat3.Z1 = dialogEditIcon2;
                                                dialogEditIcon2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingFloat.9
                                                    @Override // android.content.DialogInterface.OnDismissListener
                                                    public final void onDismiss(DialogInterface dialogInterface) {
                                                        int i7 = SettingFloat.a2;
                                                        SettingFloat settingFloat4 = SettingFloat.this;
                                                        DialogEditIcon dialogEditIcon3 = settingFloat4.Z1;
                                                        if (dialogEditIcon3 != null) {
                                                            dialogEditIcon3.dismiss();
                                                            settingFloat4.Z1 = null;
                                                        }
                                                    }
                                                });
                                                return;
                                            }
                                            return;
                                        case 3:
                                            PrefFloat.m = z;
                                            PrefSet.d(2, settingFloat3.f1, "mFlt1Show", z);
                                            return;
                                        case 4:
                                        case 8:
                                        default:
                                            return;
                                        case 7:
                                            PrefFloat.n = z;
                                            PrefSet.d(2, settingFloat3.f1, "mFlt2Show", z);
                                            return;
                                        case 11:
                                            PrefFloat.o = z;
                                            PrefSet.d(2, settingFloat3.f1, "mFlt3Show", z);
                                            return;
                                    }
                                }
                            });
                            settingFloat2.N1 = settingListAdapter;
                            settingFloat2.L1.setAdapter(settingListAdapter);
                            settingFloat2.M0();
                        }
                    });
                }
            }
        });
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        super.onPause();
        if (isFinishing()) {
            MyPopupMenu myPopupMenu = this.X1;
            if (myPopupMenu != null) {
                this.Z0 = null;
                myPopupMenu.a();
                this.X1 = null;
            }
            DialogSetItem dialogSetItem = this.Y1;
            if (dialogSetItem != null) {
                dialogSetItem.dismiss();
                this.Y1 = null;
            }
            DialogEditIcon dialogEditIcon = this.Z1;
            if (dialogEditIcon != null) {
                dialogEditIcon.dismiss();
                this.Z1 = null;
            }
        }
    }
}
