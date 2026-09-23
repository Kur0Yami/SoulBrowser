package com.mycompany.app.setting;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import com.mycompany.app.dialog.DialogCastGuide;
import com.mycompany.app.dialog.DialogSetColumn;
import com.mycompany.app.dialog.DialogSetReset;
import com.mycompany.app.dialog.a;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.pref.PrefPdf;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.pref.PrefZtri;
import com.mycompany.app.setting.SettingListAdapter;
import com.mycompany.app.soulbrowser.R;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class SettingQuick extends SettingActivity {
    public static final /* synthetic */ int e2 = 0;
    public DialogCastGuide X1;
    public DialogSetColumn Y1;
    public boolean Z1;
    public boolean a2;
    public boolean b2;
    public int c2;
    public int d2;

    public static boolean O0(Context context) {
        boolean z = false;
        if (context == null) {
            return false;
        }
        boolean z2 = true;
        if (!PrefZtri.i0) {
            PrefZtri.i0 = true;
            PrefSet.j(context, 17, "mQuickUse");
            z = true;
        }
        if (!PrefPdf.G) {
            PrefPdf.G = true;
            PrefSet.j(context, 7, "mQuickSmall");
            z = true;
        }
        if (!PrefZtri.k0) {
            PrefZtri.k0 = true;
            PrefSet.j(context, 17, "mQuickPlus");
        } else {
            z2 = z;
        }
        if (PrefZtri.l0 == 5 && PrefZtri.m0 == 5) {
            return z2;
        }
        PrefZtri.l0 = 5;
        PrefZtri.m0 = 5;
        PrefZtri r = PrefZtri.r(context);
        r.q("mQuickPort");
        r.q("mQuickLand");
        r.c();
        return z2;
    }

    @Override // com.mycompany.app.setting.SettingActivity
    public final List D0() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new SettingListAdapter.SettingItem(0, true));
        arrayList.add(new SettingListAdapter.SettingItem(1, R.string.quick_home, 0, 3, PrefZtri.i0, true));
        arrayList.add(new SettingListAdapter.SettingItem(2, false));
        arrayList.add(new SettingListAdapter.SettingItem(3, R.string.big_icon, 0, 1, !PrefPdf.G, true));
        arrayList.add(new SettingListAdapter.SettingItem(4, R.string.add_icon, 0, 0, PrefZtri.k0, true));
        a.u(arrayList, new SettingListAdapter.SettingItem(5, R.string.column_count, 0, 0, 2), 6, false);
        return arrayList;
    }

    @Override // android.app.Activity
    public final void finish() {
        boolean z;
        boolean z2 = false;
        if (this.a2 == PrefPdf.G && this.b2 == PrefZtri.k0 && this.c2 == PrefZtri.l0 && this.d2 == PrefZtri.m0) {
            z = false;
        } else {
            z = true;
        }
        if (this.Z1 != PrefZtri.i0) {
            z2 = true;
        }
        if (z || z2) {
            Intent intent = new Intent();
            if (z) {
                intent.putExtra("change", true);
            }
            if (z2) {
                intent.putExtra("reload", true);
            }
            setResult(-1, intent);
        }
        super.finish();
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.Z1 = PrefZtri.i0;
        this.a2 = PrefPdf.G;
        this.b2 = PrefZtri.k0;
        this.c2 = PrefZtri.l0;
        this.d2 = PrefZtri.m0;
        F0(R.string.quick_access, true, true);
        this.O1 = MainApp.F1;
        Handler handler = this.O0;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.setting.SettingQuick.1
            @Override // java.lang.Runnable
            public final void run() {
                int i = SettingQuick.e2;
                final SettingQuick settingQuick = SettingQuick.this;
                if (settingQuick.O0 != null) {
                    settingQuick.L0(0, new DialogSetReset.DialogResetListener() { // from class: com.mycompany.app.setting.SettingQuick.2
                        @Override // com.mycompany.app.dialog.DialogSetReset.DialogResetListener
                        public final void a(boolean z) {
                            SettingQuick settingQuick2;
                            SettingListAdapter settingListAdapter;
                            if (z && (settingListAdapter = (settingQuick2 = SettingQuick.this).N1) != null) {
                                settingListAdapter.E(settingQuick2.D0());
                            }
                        }

                        @Override // com.mycompany.app.dialog.DialogSetReset.DialogResetListener
                        public final boolean b() {
                            return SettingQuick.O0(SettingQuick.this.f1);
                        }
                    });
                    settingQuick.K0(false, new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingQuick.3
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            int i2 = SettingQuick.e2;
                            final SettingQuick settingQuick2 = SettingQuick.this;
                            DialogCastGuide dialogCastGuide = settingQuick2.X1;
                            if (dialogCastGuide != null || settingQuick2.Y1 != null) {
                                return;
                            }
                            if (dialogCastGuide != null) {
                                dialogCastGuide.dismiss();
                                settingQuick2.X1 = null;
                            }
                            DialogCastGuide dialogCastGuide2 = new DialogCastGuide(settingQuick2, 4);
                            settingQuick2.X1 = dialogCastGuide2;
                            dialogCastGuide2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingQuick.6
                                @Override // android.content.DialogInterface.OnDismissListener
                                public final void onDismiss(DialogInterface dialogInterface) {
                                    int i3 = SettingQuick.e2;
                                    SettingQuick settingQuick3 = SettingQuick.this;
                                    DialogCastGuide dialogCastGuide3 = settingQuick3.X1;
                                    if (dialogCastGuide3 != null) {
                                        dialogCastGuide3.dismiss();
                                        settingQuick3.X1 = null;
                                    }
                                }
                            });
                        }
                    });
                    Handler handler2 = settingQuick.O0;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.setting.SettingQuick.4
                        @Override // java.lang.Runnable
                        public final void run() {
                            int i2 = SettingQuick.e2;
                            final SettingQuick settingQuick2 = SettingQuick.this;
                            if (settingQuick2.O0 == null) {
                                return;
                            }
                            SettingListAdapter settingListAdapter = new SettingListAdapter((ArrayList) settingQuick2.D0(), false, settingQuick2.M1, new SettingListAdapter.SettingListener() { // from class: com.mycompany.app.setting.SettingQuick.5
                                @Override // com.mycompany.app.setting.SettingListAdapter.SettingListener
                                public final void a(SettingListAdapter.ViewHolder viewHolder, int i3, boolean z, int i4) {
                                    DialogSetColumn dialogSetColumn;
                                    int i5 = SettingQuick.e2;
                                    final SettingQuick settingQuick3 = SettingQuick.this;
                                    if (i3 != 1) {
                                        if (i3 != 3) {
                                            if (i3 != 4) {
                                                if (i3 != 5 || settingQuick3.X1 != null || (dialogSetColumn = settingQuick3.Y1) != null) {
                                                    return;
                                                }
                                                if (dialogSetColumn != null) {
                                                    dialogSetColumn.dismiss();
                                                    settingQuick3.Y1 = null;
                                                }
                                                DialogSetColumn dialogSetColumn2 = new DialogSetColumn(settingQuick3, false);
                                                settingQuick3.Y1 = dialogSetColumn2;
                                                dialogSetColumn2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingQuick.7
                                                    @Override // android.content.DialogInterface.OnDismissListener
                                                    public final void onDismiss(DialogInterface dialogInterface) {
                                                        int i6 = SettingQuick.e2;
                                                        SettingQuick settingQuick4 = SettingQuick.this;
                                                        DialogSetColumn dialogSetColumn3 = settingQuick4.Y1;
                                                        if (dialogSetColumn3 != null) {
                                                            dialogSetColumn3.dismiss();
                                                            settingQuick4.Y1 = null;
                                                        }
                                                    }
                                                });
                                                return;
                                            }
                                            PrefZtri.k0 = z;
                                            PrefSet.d(17, settingQuick3.f1, "mQuickPlus", z);
                                            return;
                                        }
                                        boolean z2 = !z;
                                        PrefPdf.G = z2;
                                        PrefSet.d(7, settingQuick3.f1, "mQuickSmall", z2);
                                        return;
                                    }
                                    PrefZtri.i0 = z;
                                    PrefSet.d(17, settingQuick3.f1, "mQuickUse", z);
                                }
                            });
                            settingQuick2.N1 = settingListAdapter;
                            settingQuick2.L1.setAdapter(settingListAdapter);
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
            DialogCastGuide dialogCastGuide = this.X1;
            if (dialogCastGuide != null) {
                dialogCastGuide.dismiss();
                this.X1 = null;
            }
            DialogSetColumn dialogSetColumn = this.Y1;
            if (dialogSetColumn != null) {
                dialogSetColumn.dismiss();
                this.Y1 = null;
            }
        }
    }
}
