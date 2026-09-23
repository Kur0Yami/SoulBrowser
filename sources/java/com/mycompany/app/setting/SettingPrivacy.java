package com.mycompany.app.setting;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import com.google.android.gms.internal.mlkit_vision_text_common.a;
import com.mycompany.app.dialog.DialogSetPrivacy;
import com.mycompany.app.dialog.DialogSetReset;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.pref.PrefWeb;
import com.mycompany.app.setting.SettingListAdapter;
import com.mycompany.app.soulbrowser.R;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class SettingPrivacy extends SettingActivity {
    public static final /* synthetic */ int b2 = 0;
    public boolean X1;
    public DialogSetPrivacy Y1;
    public boolean Z1;
    public int a2;

    public static boolean O0(Context context) {
        boolean z = false;
        if (context == null) {
            return false;
        }
        if (PrefWeb.r != 30) {
            PrefWeb.r = 30;
            PrefSet.j(context, 14, "mDataDelete2");
        }
        if (PrefWeb.s != 0) {
            PrefWeb.s = 0;
            PrefSet.j(context, 14, "mExitDelete2");
            z = true;
        }
        if (!PrefWeb.I) {
            PrefWeb.I = true;
            PrefSet.j(context, 14, "mExitNoti");
            return true;
        }
        return z;
    }

    public static String P0(Context context) {
        StringBuilder sb;
        int i = PrefWeb.s;
        if (i == 126) {
            StringBuilder sb2 = new StringBuilder();
            a.x(context, R.string.history, sb2, ", ");
            a.x(context, R.string.cache, sb2, ", ");
            a.x(context, R.string.cookie, sb2, ", ");
            a.x(context, R.string.normal_tab, sb2, ", ");
            return a.v(R.string.secret_tab, context, sb2);
        }
        if ((i & 2) == 2) {
            sb = new StringBuilder();
            sb.append(context.getString(R.string.recent_search));
        } else {
            sb = null;
        }
        if ((PrefWeb.s & 4) == 4) {
            if (sb == null) {
                sb = new StringBuilder();
            } else {
                sb.append(", ");
            }
            sb.append(context.getString(R.string.history));
        }
        if ((PrefWeb.s & 8) == 8) {
            if (sb == null) {
                sb = new StringBuilder();
            } else {
                sb.append(", ");
            }
            sb.append(context.getString(R.string.cookie));
        }
        if ((PrefWeb.s & 16) == 16) {
            if (sb == null) {
                sb = new StringBuilder();
            } else {
                sb.append(", ");
            }
            sb.append(context.getString(R.string.cache));
        }
        if ((PrefWeb.s & 32) == 32) {
            if (sb == null) {
                sb = new StringBuilder();
            } else {
                sb.append(", ");
            }
            sb.append(context.getString(R.string.normal_tab));
        }
        if ((PrefWeb.s & 64) == 64) {
            if (sb == null) {
                sb = new StringBuilder();
            } else {
                sb.append(", ");
            }
            sb.append(context.getString(R.string.secret_tab));
        }
        if (sb == null) {
            return null;
        }
        return sb.toString();
    }

    @Override // com.mycompany.app.setting.SettingActivity
    public final List D0() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new SettingListAdapter.SettingItem(0, true));
        arrayList.add(new SettingListAdapter.SettingItem(1, R.string.now_delete, 0, 0, 3));
        arrayList.add(new SettingListAdapter.SettingItem(2, false));
        arrayList.add(new SettingListAdapter.SettingItem(3, R.string.exit_delete, P0(this), R.string.exit_guide, 1));
        arrayList.add(new SettingListAdapter.SettingItem(4, R.string.exit_del_noti, 0, 2, PrefWeb.I, true));
        arrayList.add(new SettingListAdapter.SettingItem(5, false));
        com.mycompany.app.dialog.a.u(arrayList, new SettingListAdapter.SettingItem(6, R.string.clean_data_info, (String) null, true, 3), 7, false);
        return arrayList;
    }

    public final void Q0(final int i) {
        final boolean z;
        DialogSetPrivacy dialogSetPrivacy = this.Y1;
        if (dialogSetPrivacy != null) {
            return;
        }
        DialogSetPrivacy.TabDeletedListener tabDeletedListener = null;
        if (dialogSetPrivacy != null) {
            dialogSetPrivacy.dismiss();
            this.Y1 = null;
        }
        if (i == 3) {
            z = true;
        } else {
            z = false;
        }
        final int i2 = PrefWeb.s;
        if (!z) {
            tabDeletedListener = new DialogSetPrivacy.TabDeletedListener() { // from class: com.mycompany.app.setting.SettingPrivacy.5
                @Override // com.mycompany.app.dialog.DialogSetPrivacy.TabDeletedListener
                public final void a() {
                    SettingPrivacy.this.Z1 = true;
                }
            };
        }
        DialogSetPrivacy dialogSetPrivacy2 = new DialogSetPrivacy(this, z, false, tabDeletedListener);
        this.Y1 = dialogSetPrivacy2;
        dialogSetPrivacy2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingPrivacy.6
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                SettingListAdapter settingListAdapter;
                boolean z2 = z;
                SettingPrivacy settingPrivacy = SettingPrivacy.this;
                if (z2 && i2 != PrefWeb.s && (settingListAdapter = settingPrivacy.N1) != null) {
                    settingListAdapter.G(i, SettingPrivacy.P0(settingPrivacy));
                }
                int i3 = SettingPrivacy.b2;
                DialogSetPrivacy dialogSetPrivacy3 = settingPrivacy.Y1;
                if (dialogSetPrivacy3 != null) {
                    dialogSetPrivacy3.dismiss();
                    settingPrivacy.Y1 = null;
                }
            }
        });
    }

    @Override // android.app.Activity
    public final void finish() {
        if (this.X1) {
            if (this.Z1 || this.a2 != PrefWeb.r) {
                this.a2 = PrefWeb.r;
                Intent intent = new Intent();
                intent.putExtra("EXTRA_TYPE", 40);
                if (this.Z1) {
                    intent.putExtra("EXTRA_STATUS", true);
                }
                setResult(-1, intent);
            }
        } else if (this.Z1) {
            setResult(-1);
        }
        super.finish();
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.X1 = getIntent().getBooleanExtra("EXTRA_POPUP", false);
        this.a2 = PrefWeb.r;
        F0(R.string.clear_data, true, false);
        this.O1 = MainApp.F1;
        Handler handler = this.O0;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.setting.SettingPrivacy.1
            @Override // java.lang.Runnable
            public final void run() {
                int i = SettingPrivacy.b2;
                final SettingPrivacy settingPrivacy = SettingPrivacy.this;
                if (settingPrivacy.O0 != null) {
                    settingPrivacy.L0(0, new DialogSetReset.DialogResetListener() { // from class: com.mycompany.app.setting.SettingPrivacy.2
                        @Override // com.mycompany.app.dialog.DialogSetReset.DialogResetListener
                        public final void a(boolean z) {
                            SettingPrivacy settingPrivacy2;
                            SettingListAdapter settingListAdapter;
                            if (z && (settingListAdapter = (settingPrivacy2 = SettingPrivacy.this).N1) != null) {
                                settingListAdapter.E(settingPrivacy2.D0());
                            }
                        }

                        @Override // com.mycompany.app.dialog.DialogSetReset.DialogResetListener
                        public final boolean b() {
                            return SettingPrivacy.O0(SettingPrivacy.this.f1);
                        }
                    });
                    Handler handler2 = settingPrivacy.O0;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.setting.SettingPrivacy.3
                        @Override // java.lang.Runnable
                        public final void run() {
                            int i2 = SettingPrivacy.b2;
                            final SettingPrivacy settingPrivacy2 = SettingPrivacy.this;
                            if (settingPrivacy2.O0 == null) {
                                return;
                            }
                            SettingListAdapter settingListAdapter = new SettingListAdapter((ArrayList) settingPrivacy2.D0(), false, settingPrivacy2.M1, new SettingListAdapter.SettingListener() { // from class: com.mycompany.app.setting.SettingPrivacy.4
                                @Override // com.mycompany.app.setting.SettingListAdapter.SettingListener
                                public final void a(SettingListAdapter.ViewHolder viewHolder, int i3, boolean z, int i4) {
                                    int i5 = SettingPrivacy.b2;
                                    SettingPrivacy settingPrivacy3 = SettingPrivacy.this;
                                    if (i3 != 1) {
                                        if (i3 != 3) {
                                            settingPrivacy3.getClass();
                                            if (i3 != 4) {
                                                return;
                                            }
                                            PrefWeb.I = z;
                                            PrefSet.d(14, settingPrivacy3.f1, "mExitNoti", z);
                                            return;
                                        }
                                        settingPrivacy3.Q0(i3);
                                        return;
                                    }
                                    settingPrivacy3.Q0(i3);
                                }
                            });
                            settingPrivacy2.N1 = settingListAdapter;
                            settingPrivacy2.L1.setAdapter(settingListAdapter);
                            settingPrivacy2.M0();
                        }
                    });
                }
            }
        });
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        DialogSetPrivacy dialogSetPrivacy;
        super.onPause();
        if (isFinishing() && (dialogSetPrivacy = this.Y1) != null) {
            dialogSetPrivacy.dismiss();
            this.Y1 = null;
        }
    }
}
