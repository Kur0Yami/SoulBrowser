package com.mycompany.app.setting;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import com.mycompany.app.db.DbUtil;
import com.mycompany.app.db.book.DbBookDown;
import com.mycompany.app.db.book.DbBookHistory;
import com.mycompany.app.db.book.DbBookQuick;
import com.mycompany.app.db.book.DbBookTab;
import com.mycompany.app.db.book.DbBookWeb;
import com.mycompany.app.dialog.DialogConfirm;
import com.mycompany.app.dialog.DialogSetFull;
import com.mycompany.app.dialog.DialogSetMsg;
import com.mycompany.app.dialog.DialogSetReset;
import com.mycompany.app.dialog.a;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefSecret;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.pref.PrefSync;
import com.mycompany.app.setting.SettingListAdapter;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyMainRelative;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class SettingSecret extends SettingActivity {
    public static final /* synthetic */ int d2 = 0;
    public boolean X1;
    public DialogSetMsg Y1;
    public boolean Z1;
    public boolean a2;
    public boolean b2;
    public DialogConfirm c2;

    /* renamed from: com.mycompany.app.setting.SettingSecret$6, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass6 implements DialogSetFull.DialogApplyListener {
        public AnonymousClass6() {
        }

        @Override // com.mycompany.app.dialog.DialogSetFull.DialogApplyListener
        public final void a() {
            SettingSecret settingSecret = SettingSecret.this;
            DialogSetMsg dialogSetMsg = settingSecret.Y1;
            if (dialogSetMsg == null) {
                return;
            }
            dialogSetMsg.C();
            settingSecret.m0(new Runnable() { // from class: com.mycompany.app.setting.SettingSecret.6.1
                @Override // java.lang.Runnable
                public final void run() {
                    SettingSecret settingSecret2 = SettingSecret.this;
                    Context context = settingSecret2.f1;
                    int i = SettingSecure.d2;
                    if (context != null) {
                        long j = PrefSecret.l;
                        long j2 = PrefSecret.m;
                        boolean z = PrefSecret.n;
                        boolean z2 = PrefSecret.o;
                        boolean z3 = PrefSecret.p;
                        PrefSecret.l = 0L;
                        if (j2 == 0) {
                            PrefSecret.m = System.currentTimeMillis();
                        }
                        PrefSecret.n = true;
                        PrefSecret.o = true;
                        PrefSecret.p = true;
                        if (j != PrefSecret.l || j2 != PrefSecret.m || !z || !z2 || !z3) {
                            PrefSecret r = PrefSecret.r(context, false);
                            r.q("mSecretHist");
                            r.q("mSecretDown");
                            r.q("mKeepTab");
                            r.q("mKeepLogin");
                            r.q("mSecretNoti");
                            r.c();
                        }
                        DbUtil.a(DbBookQuick.i(context).getWritableDatabase(), "DbBookQuick_table", "_secret=?", new String[]{"1"});
                        DbUtil.a(DbBookWeb.f(context).getWritableDatabase(), "DbBookWeb_table", "_secret=?", new String[]{"1"});
                        DbBookDown.m(context);
                        DbBookHistory.e(context, true);
                        DbBookTab.n(context, true);
                    }
                    settingSecret2.Z1 = PrefSync.k;
                    MyMainRelative myMainRelative = settingSecret2.E1;
                    if (myMainRelative == null) {
                        return;
                    }
                    myMainRelative.post(new Runnable() { // from class: com.mycompany.app.setting.SettingSecret.6.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            AnonymousClass6 anonymousClass6 = AnonymousClass6.this;
                            SettingSecret settingSecret3 = SettingSecret.this;
                            int i2 = SettingSecret.d2;
                            settingSecret3.Q0();
                            MainUtil.e8(SettingSecret.this.f1, R.string.reset_noti);
                            SettingSecret settingSecret4 = SettingSecret.this;
                            SettingListAdapter settingListAdapter = settingSecret4.N1;
                            if (settingListAdapter != null) {
                                settingListAdapter.E(settingSecret4.D0());
                            }
                        }
                    });
                }
            });
        }
    }

    public static boolean O0(Context context) {
        boolean z = false;
        if (context == null) {
            return false;
        }
        if (PrefSecret.l != 0) {
            PrefSecret.l = 0L;
            PrefSet.j(context, 9, "mSecretHist");
            DbBookHistory.e(context, true);
            z = true;
        }
        if (PrefSecret.m == 0) {
            PrefSecret.m = System.currentTimeMillis();
            PrefSet.j(context, 9, "mSecretDown");
            z = true;
        }
        if (!PrefSecret.n) {
            PrefSecret.n = true;
            PrefSet.j(context, 9, "mKeepTab");
            z = true;
        }
        if (!PrefSecret.o) {
            PrefSecret.o = true;
            PrefSet.j(context, 9, "mKeepLogin");
            z = true;
        }
        if (!PrefSecret.p) {
            PrefSecret.p = true;
            PrefSet.j(context, 9, "mSecretNoti");
            return true;
        }
        return z;
    }

    @Override // com.mycompany.app.setting.SettingActivity
    public final List D0() {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4 = PrefSecret.p;
        if (MainUtil.T5(this.f1, 5)) {
            z = false;
        } else {
            z = z4;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(new SettingListAdapter.SettingItem(0, true));
        arrayList.add(new SettingListAdapter.SettingItem(1, R.string.lock_type, 0, 0, 3));
        arrayList.add(new SettingListAdapter.SettingItem(2, false));
        int i = R.string.secret_hist;
        int i2 = R.string.secret_hist_info;
        if (PrefSecret.l > 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        arrayList.add(new SettingListAdapter.SettingItem(3, i, i2, 1, z2, true));
        int i3 = R.string.secret_down;
        int i4 = R.string.secret_down_info;
        if (PrefSecret.m > 0) {
            z3 = true;
        } else {
            z3 = false;
        }
        arrayList.add(new SettingListAdapter.SettingItem(4, i3, i4, 2, z3, true));
        arrayList.add(new SettingListAdapter.SettingItem(5, false));
        arrayList.add(new SettingListAdapter.SettingItem(6, R.string.keep_tab, R.string.keep_tab_info, 1, PrefSecret.n, true));
        arrayList.add(new SettingListAdapter.SettingItem(7, R.string.keep_login, R.string.keep_login_info, 0, PrefSecret.o, true));
        arrayList.add(new SettingListAdapter.SettingItem(8, false));
        arrayList.add(new SettingListAdapter.SettingItem(9, R.string.notification, 0, 3, z, true));
        arrayList.add(new SettingListAdapter.SettingItem(10, false));
        a.u(arrayList, new SettingListAdapter.SettingItem(11, R.string.reset, 0, R.string.secret_reset_guide, 3), 12, false);
        return arrayList;
    }

    public final void P0() {
        DialogConfirm dialogConfirm = this.c2;
        if (dialogConfirm != null) {
            dialogConfirm.dismiss();
            this.c2 = null;
        }
    }

    public final void Q0() {
        DialogSetMsg dialogSetMsg = this.Y1;
        if (dialogSetMsg != null) {
            dialogSetMsg.dismiss();
            this.Y1 = null;
        }
    }

    @Override // android.app.Activity
    public final void finish() {
        if (this.Z1) {
            setResult(-1);
        }
        super.finish();
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        boolean z = !MainConst.f16452a;
        this.X1 = z;
        F0(R.string.secret_mode, true, z);
        this.O1 = MainApp.F1;
        Handler handler = this.O0;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.setting.SettingSecret.1
            @Override // java.lang.Runnable
            public final void run() {
                int i = SettingSecret.d2;
                final SettingSecret settingSecret = SettingSecret.this;
                if (settingSecret.O0 != null) {
                    settingSecret.L0(0, new DialogSetReset.DialogResetListener() { // from class: com.mycompany.app.setting.SettingSecret.2
                        @Override // com.mycompany.app.dialog.DialogSetReset.DialogResetListener
                        public final void a(boolean z2) {
                            SettingSecret settingSecret2;
                            SettingListAdapter settingListAdapter;
                            if (z2 && (settingListAdapter = (settingSecret2 = SettingSecret.this).N1) != null) {
                                settingListAdapter.E(settingSecret2.D0());
                                boolean z3 = settingSecret2.b2;
                                boolean z4 = PrefSecret.p;
                                if (z3 != z4 && PrefSync.k) {
                                    if (z4 && MainUtil.T5(settingSecret2.f1, 5)) {
                                        z4 = false;
                                    }
                                    if (z4) {
                                        MainUtil.d8(settingSecret2.f1);
                                    } else {
                                        MainUtil.Y4(settingSecret2.f1);
                                    }
                                }
                            }
                        }

                        @Override // com.mycompany.app.dialog.DialogSetReset.DialogResetListener
                        public final boolean b() {
                            boolean z2 = PrefSecret.p;
                            SettingSecret settingSecret2 = SettingSecret.this;
                            settingSecret2.b2 = z2;
                            return SettingSecret.O0(settingSecret2.f1);
                        }
                    });
                    if (settingSecret.X1) {
                        settingSecret.K0(false, new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingSecret.3
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                int i2 = SettingSecret.d2;
                                final SettingSecret settingSecret2 = SettingSecret.this;
                                if (settingSecret2.Y1 != null || settingSecret2.c2 != null) {
                                    return;
                                }
                                settingSecret2.P0();
                                DialogConfirm dialogConfirm = new DialogConfirm(settingSecret2, R.string.secret_data_info, new DialogConfirm.DialogConfListener() { // from class: com.mycompany.app.setting.SettingSecret.8
                                    @Override // com.mycompany.app.dialog.DialogConfirm.DialogConfListener
                                    public final void a(boolean z2) {
                                        int i3 = SettingSecret.d2;
                                        SettingSecret.this.P0();
                                    }
                                });
                                settingSecret2.c2 = dialogConfirm;
                                dialogConfirm.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingSecret.9
                                    @Override // android.content.DialogInterface.OnDismissListener
                                    public final void onDismiss(DialogInterface dialogInterface) {
                                        int i3 = SettingSecret.d2;
                                        SettingSecret.this.P0();
                                    }
                                });
                            }
                        });
                    }
                    Handler handler2 = settingSecret.O0;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.setting.SettingSecret.4
                        @Override // java.lang.Runnable
                        public final void run() {
                            int i2 = SettingSecret.d2;
                            final SettingSecret settingSecret2 = SettingSecret.this;
                            if (settingSecret2.O0 == null) {
                                return;
                            }
                            SettingListAdapter settingListAdapter = new SettingListAdapter((ArrayList) settingSecret2.D0(), false, settingSecret2.M1, new SettingListAdapter.SettingListener() { // from class: com.mycompany.app.setting.SettingSecret.5
                                @Override // com.mycompany.app.setting.SettingListAdapter.SettingListener
                                public final void a(SettingListAdapter.ViewHolder viewHolder, int i3, boolean z2, int i4) {
                                    int i5 = SettingSecret.d2;
                                    final SettingSecret settingSecret3 = SettingSecret.this;
                                    if (i3 != 1) {
                                        if (i3 != 9) {
                                            if (i3 != 11) {
                                                if (i3 != 3) {
                                                    if (i3 != 4) {
                                                        if (i3 != 6) {
                                                            if (i3 == 7) {
                                                                PrefSecret.o = z2;
                                                                PrefSet.d(9, settingSecret3.f1, "mKeepLogin", z2);
                                                                return;
                                                            }
                                                            return;
                                                        }
                                                        PrefSecret.n = z2;
                                                        PrefSet.d(9, settingSecret3.f1, "mKeepTab", z2);
                                                        return;
                                                    }
                                                    if (z2) {
                                                        long currentTimeMillis = System.currentTimeMillis();
                                                        PrefSecret.m = currentTimeMillis;
                                                        PrefSet.b(9, currentTimeMillis, settingSecret3.f1, "mSecretDown");
                                                        return;
                                                    } else {
                                                        PrefSecret.m = 0L;
                                                        PrefSet.b(9, 0L, settingSecret3.f1, "mSecretDown");
                                                        DbBookDown.m(settingSecret3.f1);
                                                        return;
                                                    }
                                                }
                                                if (z2) {
                                                    long currentTimeMillis2 = System.currentTimeMillis();
                                                    PrefSecret.l = currentTimeMillis2;
                                                    PrefSet.b(9, currentTimeMillis2, settingSecret3.f1, "mSecretHist");
                                                    return;
                                                } else {
                                                    PrefSecret.l = 0L;
                                                    PrefSet.b(9, 0L, settingSecret3.f1, "mSecretHist");
                                                    DbBookHistory.e(settingSecret3.f1, true);
                                                    return;
                                                }
                                            }
                                            if (settingSecret3.Y1 == null && settingSecret3.c2 == null) {
                                                settingSecret3.Q0();
                                                DialogSetMsg dialogSetMsg = new DialogSetMsg(settingSecret3, R.string.secret_reset_guide, R.string.reset, new AnonymousClass6());
                                                settingSecret3.Y1 = dialogSetMsg;
                                                dialogSetMsg.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingSecret.7
                                                    @Override // android.content.DialogInterface.OnDismissListener
                                                    public final void onDismiss(DialogInterface dialogInterface) {
                                                        int i6 = SettingSecret.d2;
                                                        SettingSecret.this.Q0();
                                                    }
                                                });
                                                return;
                                            }
                                            return;
                                        }
                                        PrefSecret.p = z2;
                                        PrefSet.d(9, settingSecret3.f1, "mSecretNoti", z2);
                                        boolean z3 = PrefSecret.p;
                                        if (z3 && MainUtil.T5(settingSecret3.f1, 5)) {
                                            boolean z4 = MainUtil.z4(settingSecret3);
                                            settingSecret3.a2 = z4;
                                            if (!z4) {
                                                z3 = false;
                                            } else {
                                                return;
                                            }
                                        }
                                        if (!PrefSync.k) {
                                            return;
                                        }
                                        if (z3) {
                                            MainUtil.d8(settingSecret3.f1);
                                            return;
                                        } else {
                                            MainUtil.Y4(settingSecret3.f1);
                                            return;
                                        }
                                    }
                                    Intent intent = new Intent(settingSecret3.f1, (Class<?>) SettingSecure.class);
                                    intent.putExtra("EXTRA_NOTI", true);
                                    intent.putExtra("EXTRA_INDEX", 6);
                                    settingSecret3.startActivity(intent);
                                }
                            });
                            settingSecret2.N1 = settingListAdapter;
                            settingSecret2.L1.setAdapter(settingListAdapter);
                            settingSecret2.M0();
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
            Q0();
            P0();
        }
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        boolean z;
        super.onResume();
        if (this.a2) {
            this.a2 = false;
            if (this.N1 != null) {
                boolean z2 = PrefSecret.p;
                boolean T5 = MainUtil.T5(this.f1, 5);
                if (T5) {
                    z = false;
                } else {
                    z = z2;
                }
                this.N1.D(new SettingListAdapter.SettingItem(9, R.string.notification, 0, 3, z, true));
                if (T5 || !PrefSync.k) {
                    return;
                }
                if (z) {
                    MainUtil.d8(this.f1);
                } else {
                    MainUtil.Y4(this.f1);
                }
            }
        }
    }
}
