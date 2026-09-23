package com.mycompany.app.setting;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.dialog.DialogEditIcon;
import com.mycompany.app.dialog.DialogEditorText;
import com.mycompany.app.dialog.DialogLockReset;
import com.mycompany.app.dialog.DialogSetFull;
import com.mycompany.app.dialog.DialogSetMsg;
import com.mycompany.app.dialog.DialogSetReset;
import com.mycompany.app.dialog.a;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefEditor;
import com.mycompany.app.pref.PrefSecret;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.pref.PrefZtri;
import com.mycompany.app.setting.SettingListAdapter;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyPopupAdapter;
import com.mycompany.app.view.MyPopupMenu;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class SettingPassword extends SettingActivity {
    public static final /* synthetic */ int b2 = 0;
    public MyPopupMenu X1;
    public DialogSetMsg Y1;
    public DialogEditIcon Z1;
    public DialogLockReset a2;

    public static boolean O0(Context context) {
        boolean z;
        if (context == null) {
            return false;
        }
        int i = MainConst.q[5];
        float f = MainConst.p[5];
        if (PrefSecret.x) {
            PrefSecret.x = false;
            PrefSet.j(context, 9, "mSavePass2");
            z = true;
        } else {
            z = false;
        }
        if (!PrefZtri.M) {
            PrefZtri.M = true;
            PrefSet.j(context, 17, "mPassIcon");
            z = true;
        }
        if (PrefEditor.S == 0 && PrefEditor.T == i && Float.compare(PrefEditor.U, f) == 0) {
            return z;
        }
        PrefEditor.S = 0;
        PrefEditor.T = i;
        PrefEditor.U = f;
        PrefEditor.V = PrefEditor.r(i, 0);
        PrefEditor s = PrefEditor.s(context);
        s.q("mPassAlpha");
        s.q("mPassColor");
        s.q("mPassPos");
        s.c();
        return true;
    }

    @Override // com.mycompany.app.setting.SettingActivity
    public final List D0() {
        boolean z;
        String str = getString(R.string.not_support_site) + "\n" + getString(R.string.password_info);
        if (PrefSecret.y && PrefSecret.z != 0) {
            z = true;
        } else {
            z = false;
        }
        boolean z2 = !PrefSecret.x;
        int r = PrefEditor.r(PrefEditor.T, PrefEditor.S);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new SettingListAdapter.SettingItem(0, true));
        arrayList.add(new SettingListAdapter.SettingItem(str, 1, R.string.password_save, PrefSecret.x));
        arrayList.add(new SettingListAdapter.SettingItem(2, R.string.login_lock, R.string.login_lock_info, z, z2, z2, 0));
        arrayList.add(new SettingListAdapter.SettingItem(3, R.string.password_button, R.string.drag_move_guide, PrefZtri.M, z2, z2, 0));
        arrayList.add(new SettingListAdapter.SettingItem(4, R.string.icon_color, r, z2, z2, 2, 0));
        arrayList.add(new SettingListAdapter.SettingItem(5, false));
        arrayList.add(new SettingListAdapter.SettingItem(6, R.string.list, 0, 0, 1));
        arrayList.add(new SettingListAdapter.SettingItem(7, R.string.lock_type, MainConst.Z[PrefSecret.z], 0, 2));
        arrayList.add(new SettingListAdapter.SettingItem(8, false));
        a.u(arrayList, new SettingListAdapter.SettingItem(9, R.string.reset, 0, R.string.password_reset_guide, 3), 10, false);
        return arrayList;
    }

    public final void P0() {
        DialogLockReset dialogLockReset = this.a2;
        if (dialogLockReset != null) {
            dialogLockReset.dismiss();
            this.a2 = null;
        }
    }

    public final void Q0() {
        boolean z;
        SettingListAdapter settingListAdapter = this.N1;
        if (settingListAdapter == null) {
            return;
        }
        if (PrefSecret.y && PrefSecret.z != 0) {
            z = true;
        } else {
            z = false;
        }
        boolean z2 = !PrefSecret.x;
        settingListAdapter.D(new SettingListAdapter.SettingItem(2, R.string.login_lock, R.string.login_lock_info, z, z2, z2, 0));
    }

    public final void R0(boolean z) {
        DialogSetMsg dialogSetMsg = this.Y1;
        if (dialogSetMsg != null || this.Z1 != null || this.a2 != null) {
            return;
        }
        if (dialogSetMsg != null) {
            dialogSetMsg.dismiss();
            this.Y1 = null;
        }
        if (z) {
            this.Y1 = new DialogSetMsg(this, R.string.password_lock_1, 0, (DialogSetFull.DialogApplyListener) null);
        } else {
            this.Y1 = new DialogSetMsg(this, getString(R.string.password_lock_1) + "\n" + getString(R.string.password_lock_2), 0, (DialogSetFull.DialogApplyListener) null);
        }
        this.Y1.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingPassword.6
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                int i = SettingPassword.b2;
                SettingPassword settingPassword = SettingPassword.this;
                DialogSetMsg dialogSetMsg2 = settingPassword.Y1;
                if (dialogSetMsg2 != null) {
                    dialogSetMsg2.dismiss();
                    settingPassword.Y1 = null;
                }
                settingPassword.N0(7);
            }
        });
    }

    @Override // com.mycompany.app.main.MainActivity
    public final void k0(int i, int i2, Intent intent) {
        SettingListAdapter settingListAdapter;
        if (i == 3 && i2 == -1 && (settingListAdapter = this.N1) != null) {
            settingListAdapter.D(new SettingListAdapter.SettingItem(7, R.string.lock_type, MainConst.Z[PrefSecret.z], 0, 2));
        }
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        o0(null, 3);
        F0(R.string.password, true, false);
        this.O1 = MainApp.F1;
        Handler handler = this.O0;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.setting.SettingPassword.1
            @Override // java.lang.Runnable
            public final void run() {
                int i = SettingPassword.b2;
                final SettingPassword settingPassword = SettingPassword.this;
                if (settingPassword.O0 != null) {
                    settingPassword.L0(16, new DialogSetReset.DialogResetListener() { // from class: com.mycompany.app.setting.SettingPassword.2
                        @Override // com.mycompany.app.dialog.DialogSetReset.DialogResetListener
                        public final void a(boolean z) {
                            SettingPassword settingPassword2;
                            SettingListAdapter settingListAdapter;
                            if (z && (settingListAdapter = (settingPassword2 = SettingPassword.this).N1) != null) {
                                settingListAdapter.E(settingPassword2.D0());
                            }
                        }

                        @Override // com.mycompany.app.dialog.DialogSetReset.DialogResetListener
                        public final boolean b() {
                            return SettingPassword.O0(SettingPassword.this.f1);
                        }
                    });
                    Handler handler2 = settingPassword.O0;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.setting.SettingPassword.3
                        @Override // java.lang.Runnable
                        public final void run() {
                            int i2 = SettingPassword.b2;
                            final SettingPassword settingPassword2 = SettingPassword.this;
                            if (settingPassword2.O0 == null) {
                                return;
                            }
                            SettingListAdapter settingListAdapter = new SettingListAdapter((ArrayList) settingPassword2.D0(), false, settingPassword2.M1, new SettingListAdapter.SettingListener() { // from class: com.mycompany.app.setting.SettingPassword.4
                                @Override // com.mycompany.app.setting.SettingListAdapter.SettingListener
                                public final void a(SettingListAdapter.ViewHolder viewHolder, int i3, boolean z, int i4) {
                                    DialogEditIcon dialogEditIcon;
                                    boolean z2;
                                    int i5 = SettingPassword.b2;
                                    final SettingPassword settingPassword3 = SettingPassword.this;
                                    if (i3 != 1) {
                                        if (i3 != 2) {
                                            if (i3 != 3) {
                                                if (i3 != 4) {
                                                    if (i3 != 6) {
                                                        if (i3 != 7) {
                                                            if (i3 == 9 && settingPassword3.Y1 == null && settingPassword3.Z1 == null && settingPassword3.a2 == null) {
                                                                settingPassword3.P0();
                                                                DialogLockReset dialogLockReset = new DialogLockReset(settingPassword3, 1, new DialogSetFull.DialogApplyListener() { // from class: com.mycompany.app.setting.SettingPassword.9
                                                                    @Override // com.mycompany.app.dialog.DialogSetFull.DialogApplyListener
                                                                    public final void a() {
                                                                        int i6 = SettingPassword.b2;
                                                                        SettingPassword settingPassword4 = SettingPassword.this;
                                                                        settingPassword4.P0();
                                                                        SettingListAdapter settingListAdapter2 = settingPassword4.N1;
                                                                        if (settingListAdapter2 != null) {
                                                                            settingListAdapter2.E(settingPassword4.D0());
                                                                        }
                                                                    }
                                                                });
                                                                settingPassword3.a2 = dialogLockReset;
                                                                dialogLockReset.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingPassword.10
                                                                    @Override // android.content.DialogInterface.OnDismissListener
                                                                    public final void onDismiss(DialogInterface dialogInterface) {
                                                                        int i6 = SettingPassword.b2;
                                                                        SettingPassword.this.P0();
                                                                    }
                                                                });
                                                                return;
                                                            }
                                                            return;
                                                        }
                                                        MyPopupMenu myPopupMenu = settingPassword3.X1;
                                                        if (myPopupMenu == null) {
                                                            if (myPopupMenu != null) {
                                                                settingPassword3.Z0 = null;
                                                                myPopupMenu.a();
                                                                settingPassword3.X1 = null;
                                                            }
                                                            if (viewHolder != null && viewHolder.D != null) {
                                                                ArrayList arrayList = new ArrayList();
                                                                final int length = MainConst.Y.length;
                                                                for (int i6 = 0; i6 < length; i6++) {
                                                                    int i7 = MainConst.Y[i6];
                                                                    int i8 = MainConst.Z[i7];
                                                                    if (PrefSecret.z == i7) {
                                                                        z2 = true;
                                                                    } else {
                                                                        z2 = false;
                                                                    }
                                                                    arrayList.add(new MyPopupAdapter.PopMenuItem(i6, i8, z2));
                                                                }
                                                                MyPopupMenu myPopupMenu2 = new MyPopupMenu(settingPassword3, settingPassword3.E1, viewHolder.D, arrayList, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.setting.SettingPassword.5
                                                                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                                    public final void a() {
                                                                        int i9 = SettingPassword.b2;
                                                                        SettingPassword settingPassword4 = SettingPassword.this;
                                                                        MyPopupMenu myPopupMenu3 = settingPassword4.X1;
                                                                        if (myPopupMenu3 != null) {
                                                                            settingPassword4.Z0 = null;
                                                                            myPopupMenu3.a();
                                                                            settingPassword4.X1 = null;
                                                                        }
                                                                    }

                                                                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                                    public final boolean b(View view, int i9) {
                                                                        int i10 = MainConst.Y[i9 % length];
                                                                        SettingPassword settingPassword4 = SettingPassword.this;
                                                                        if (i10 != 4 && i10 != 0) {
                                                                            Intent i22 = MainUtil.i2(settingPassword4.f1, i10);
                                                                            i22.putExtra("EXTRA_PASS", 1);
                                                                            i22.putExtra("EXTRA_TYPE", 1);
                                                                            settingPassword4.o0(i22, 3);
                                                                            return true;
                                                                        }
                                                                        if (PrefSecret.z != i10 && (i10 != 4 || MainUtil.e(settingPassword4.f1, true))) {
                                                                            PrefSecret.z = i10;
                                                                            PrefSecret.A = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                                                                            PrefSecret.v(settingPassword4.f1);
                                                                            SettingListAdapter settingListAdapter2 = settingPassword4.N1;
                                                                            if (settingListAdapter2 != null) {
                                                                                settingListAdapter2.F(7, MainConst.Z[i10]);
                                                                            }
                                                                            if (i10 == 0 && PrefSecret.y) {
                                                                                PrefSecret.y = false;
                                                                                PrefSet.d(9, settingPassword4.f1, "mLoginLock", false);
                                                                                int i11 = SettingPassword.b2;
                                                                                settingPassword4.Q0();
                                                                            }
                                                                        }
                                                                        return true;
                                                                    }
                                                                });
                                                                settingPassword3.X1 = myPopupMenu2;
                                                                settingPassword3.Z0 = myPopupMenu2;
                                                                return;
                                                            }
                                                            return;
                                                        }
                                                        return;
                                                    }
                                                    if (PrefSecret.z == 0) {
                                                        settingPassword3.R0(false);
                                                        return;
                                                    } else {
                                                        settingPassword3.startActivity(new Intent(settingPassword3.f1, (Class<?>) SettingPassList.class));
                                                        return;
                                                    }
                                                }
                                                if (settingPassword3.Y1 == null && (dialogEditIcon = settingPassword3.Z1) == null && settingPassword3.a2 == null) {
                                                    if (dialogEditIcon != null) {
                                                        dialogEditIcon.dismiss();
                                                        settingPassword3.Z1 = null;
                                                    }
                                                    DialogEditIcon dialogEditIcon2 = new DialogEditIcon(settingPassword3, 9, new DialogEditorText.EditorSetListener() { // from class: com.mycompany.app.setting.SettingPassword.7
                                                        @Override // com.mycompany.app.dialog.DialogEditorText.EditorSetListener
                                                        public final void a(int i9, String str) {
                                                            SettingPassword settingPassword4 = SettingPassword.this;
                                                            if (settingPassword4.N1 == null) {
                                                                return;
                                                            }
                                                            settingPassword4.N1.D(new SettingListAdapter.SettingItem(4, R.string.icon_color, PrefEditor.r(PrefEditor.T, PrefEditor.S), 2, (a) null));
                                                        }
                                                    });
                                                    settingPassword3.Z1 = dialogEditIcon2;
                                                    dialogEditIcon2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingPassword.8
                                                        @Override // android.content.DialogInterface.OnDismissListener
                                                        public final void onDismiss(DialogInterface dialogInterface) {
                                                            int i9 = SettingPassword.b2;
                                                            SettingPassword settingPassword4 = SettingPassword.this;
                                                            DialogEditIcon dialogEditIcon3 = settingPassword4.Z1;
                                                            if (dialogEditIcon3 != null) {
                                                                dialogEditIcon3.dismiss();
                                                                settingPassword4.Z1 = null;
                                                            }
                                                        }
                                                    });
                                                    return;
                                                }
                                                return;
                                            }
                                            PrefZtri.M = z;
                                            PrefSet.d(17, settingPassword3.f1, "mPassIcon", z);
                                            return;
                                        }
                                        if (z && PrefSecret.z == 0) {
                                            settingPassword3.R0(true);
                                            settingPassword3.Q0();
                                            return;
                                        } else {
                                            PrefSecret.y = z;
                                            PrefSet.d(9, settingPassword3.f1, "mLoginLock", z);
                                            return;
                                        }
                                    }
                                    PrefSecret.x = z;
                                    PrefSet.d(9, settingPassword3.f1, "mSavePass2", z);
                                    settingPassword3.Q0();
                                    if (settingPassword3.N1 != null) {
                                        boolean z3 = !PrefSecret.x;
                                        int r = PrefEditor.r(PrefEditor.T, PrefEditor.S);
                                        settingPassword3.N1.D(new SettingListAdapter.SettingItem(3, R.string.password_button, R.string.drag_move_guide, PrefZtri.M, z3, z3, 0));
                                        settingPassword3.N1.D(new SettingListAdapter.SettingItem(4, R.string.icon_color, r, z3, z3, 2, 0));
                                    }
                                }
                            });
                            settingPassword2.N1 = settingListAdapter;
                            settingPassword2.L1.setAdapter(settingListAdapter);
                            settingPassword2.M0();
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
            DialogSetMsg dialogSetMsg = this.Y1;
            if (dialogSetMsg != null) {
                dialogSetMsg.dismiss();
                this.Y1 = null;
            }
            DialogEditIcon dialogEditIcon = this.Z1;
            if (dialogEditIcon != null) {
                dialogEditIcon.dismiss();
                this.Z1 = null;
            }
            P0();
        }
    }
}
