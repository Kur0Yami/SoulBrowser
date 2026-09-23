package com.mycompany.app.setting;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.dialog.DialogConfirm;
import com.mycompany.app.dialog.DialogEditIcon;
import com.mycompany.app.dialog.DialogEditorText;
import com.mycompany.app.dialog.DialogSetReset;
import com.mycompany.app.dialog.DialogSetTts;
import com.mycompany.app.dialog.a;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.pref.PrefEditor;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.pref.PrefTts;
import com.mycompany.app.setting.SettingListAdapter;
import com.mycompany.app.soulbrowser.R;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class SettingTts extends SettingActivity {
    public static final /* synthetic */ int c2 = 0;
    public boolean X1;
    public DialogConfirm Y1;
    public DialogSetTts Z1;
    public DialogEditIcon a2;
    public boolean b2;

    public static boolean O0(Context context) {
        boolean z;
        if (context == null) {
            return false;
        }
        int i = MainConst.q[5];
        float f = MainConst.p[5];
        if (PrefTts.j) {
            PrefTts.j = false;
            PrefSet.j(context, 12, "mTtsMode");
            z = true;
        } else {
            z = false;
        }
        if (!TextUtils.isEmpty(PrefTts.k) || Float.compare(PrefTts.l, 1.0f) != 0 || Float.compare(PrefTts.m, 1.0f) != 0) {
            PrefTts.k = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            PrefTts.l = 1.0f;
            PrefTts.m = 1.0f;
            PrefTts r = PrefTts.r(context, false);
            r.q("mTtsLang");
            r.q("mTtsRate");
            r.q("mTtsPitch");
            r.c();
        }
        if (!PrefTts.n) {
            PrefTts.n = true;
            PrefSet.j(context, 12, "mTtsIcon");
            z = true;
        }
        if (PrefEditor.n == 0 && PrefEditor.o == i && Float.compare(PrefEditor.p, f) == 0) {
            return z;
        }
        PrefEditor.n = 0;
        PrefEditor.o = i;
        PrefEditor.p = f;
        PrefEditor.q = PrefEditor.r(i, 0);
        PrefEditor s = PrefEditor.s(context);
        s.q("mTtsAlpha");
        s.q("mTtsColor");
        s.q("mTtsPos");
        s.c();
        return true;
    }

    @Override // com.mycompany.app.setting.SettingActivity
    public final List D0() {
        String str = getString(R.string.stop_icon_info) + "\n" + getString(R.string.drag_move_guide);
        int r = PrefEditor.r(PrefEditor.o, PrefEditor.n);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new SettingListAdapter.SettingItem(0, true));
        arrayList.add(new SettingListAdapter.SettingItem(1, R.string.tts_on, R.string.tts_info_1, 1, PrefTts.j, true));
        arrayList.add(new SettingListAdapter.SettingItem(2, R.string.detail_setting, 0, 0, 2));
        arrayList.add(new SettingListAdapter.SettingItem(3, false));
        arrayList.add(new SettingListAdapter.SettingItem(str, 4, R.string.stop_icon, PrefTts.n));
        a.u(arrayList, new SettingListAdapter.SettingItem(5, R.string.icon_color, r, 2, (a) null), 6, false);
        return arrayList;
    }

    public final void P0() {
        DialogConfirm dialogConfirm = this.Y1;
        if (dialogConfirm != null) {
            dialogConfirm.dismiss();
            this.Y1 = null;
        }
    }

    @Override // android.app.Activity
    public final void finish() {
        if (this.X1) {
            boolean z = this.b2;
            boolean z2 = PrefTts.j;
            if (z != z2) {
                this.b2 = z2;
                Intent intent = new Intent();
                intent.putExtra("EXTRA_TYPE", 60);
                setResult(-1, intent);
            }
        }
        super.finish();
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.main.MainActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        DialogSetTts dialogSetTts = this.Z1;
        if (dialogSetTts != null) {
            dialogSetTts.E(h0());
        }
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.X1 = getIntent().getBooleanExtra("EXTRA_POPUP", false);
        this.b2 = PrefTts.j;
        F0(R.string.tts_mode, true, true);
        this.O1 = MainApp.F1;
        Handler handler = this.O0;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.setting.SettingTts.1
            @Override // java.lang.Runnable
            public final void run() {
                int i = SettingTts.c2;
                final SettingTts settingTts = SettingTts.this;
                if (settingTts.O0 != null) {
                    settingTts.L0(0, new DialogSetReset.DialogResetListener() { // from class: com.mycompany.app.setting.SettingTts.2
                        @Override // com.mycompany.app.dialog.DialogSetReset.DialogResetListener
                        public final void a(boolean z) {
                            SettingTts settingTts2;
                            SettingListAdapter settingListAdapter;
                            if (z && (settingListAdapter = (settingTts2 = SettingTts.this).N1) != null) {
                                settingListAdapter.E(settingTts2.D0());
                            }
                        }

                        @Override // com.mycompany.app.dialog.DialogSetReset.DialogResetListener
                        public final boolean b() {
                            return SettingTts.O0(SettingTts.this.f1);
                        }
                    });
                    settingTts.K0(false, new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingTts.3
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            int i2 = SettingTts.c2;
                            final SettingTts settingTts2 = SettingTts.this;
                            if (settingTts2.Y1 != null || settingTts2.Z1 != null || settingTts2.a2 != null) {
                                return;
                            }
                            settingTts2.P0();
                            DialogConfirm dialogConfirm = new DialogConfirm((Activity) settingTts2, settingTts2.getString(R.string.tts_guide_1) + "\n" + settingTts2.getString(R.string.tts_guide_2), false, new DialogConfirm.DialogConfListener() { // from class: com.mycompany.app.setting.SettingTts.6
                                @Override // com.mycompany.app.dialog.DialogConfirm.DialogConfListener
                                public final void a(boolean z) {
                                    int i3 = SettingTts.c2;
                                    SettingTts.this.P0();
                                }
                            });
                            settingTts2.Y1 = dialogConfirm;
                            dialogConfirm.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingTts.7
                                @Override // android.content.DialogInterface.OnDismissListener
                                public final void onDismiss(DialogInterface dialogInterface) {
                                    int i3 = SettingTts.c2;
                                    SettingTts.this.P0();
                                }
                            });
                        }
                    });
                    Handler handler2 = settingTts.O0;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.setting.SettingTts.4
                        @Override // java.lang.Runnable
                        public final void run() {
                            int i2 = SettingTts.c2;
                            final SettingTts settingTts2 = SettingTts.this;
                            if (settingTts2.O0 == null) {
                                return;
                            }
                            SettingListAdapter settingListAdapter = new SettingListAdapter((ArrayList) settingTts2.D0(), false, settingTts2.M1, new SettingListAdapter.SettingListener() { // from class: com.mycompany.app.setting.SettingTts.5
                                @Override // com.mycompany.app.setting.SettingListAdapter.SettingListener
                                public final void a(SettingListAdapter.ViewHolder viewHolder, int i3, boolean z, int i4) {
                                    DialogSetTts dialogSetTts;
                                    DialogEditIcon dialogEditIcon;
                                    int i5 = SettingTts.c2;
                                    final SettingTts settingTts3 = SettingTts.this;
                                    if (i3 != 1) {
                                        if (i3 != 2) {
                                            if (i3 != 4) {
                                                if (i3 == 5 && settingTts3.Y1 == null && settingTts3.Z1 == null && (dialogEditIcon = settingTts3.a2) == null) {
                                                    if (dialogEditIcon != null) {
                                                        dialogEditIcon.dismiss();
                                                        settingTts3.a2 = null;
                                                    }
                                                    DialogEditIcon dialogEditIcon2 = new DialogEditIcon(settingTts3, 1, new DialogEditorText.EditorSetListener() { // from class: com.mycompany.app.setting.SettingTts.9
                                                        @Override // com.mycompany.app.dialog.DialogEditorText.EditorSetListener
                                                        public final void a(int i6, String str) {
                                                            SettingTts settingTts4 = SettingTts.this;
                                                            if (settingTts4.N1 == null) {
                                                                return;
                                                            }
                                                            settingTts4.N1.D(new SettingListAdapter.SettingItem(5, R.string.icon_color, PrefEditor.r(PrefEditor.o, PrefEditor.n), 2, (a) null));
                                                        }
                                                    });
                                                    settingTts3.a2 = dialogEditIcon2;
                                                    dialogEditIcon2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingTts.10
                                                        @Override // android.content.DialogInterface.OnDismissListener
                                                        public final void onDismiss(DialogInterface dialogInterface) {
                                                            int i6 = SettingTts.c2;
                                                            SettingTts settingTts4 = SettingTts.this;
                                                            DialogEditIcon dialogEditIcon3 = settingTts4.a2;
                                                            if (dialogEditIcon3 != null) {
                                                                dialogEditIcon3.dismiss();
                                                                settingTts4.a2 = null;
                                                            }
                                                        }
                                                    });
                                                    return;
                                                }
                                                return;
                                            }
                                            PrefTts.n = z;
                                            PrefSet.d(12, settingTts3.f1, "mTtsIcon", z);
                                            return;
                                        }
                                        if (settingTts3.Y1 != null || (dialogSetTts = settingTts3.Z1) != null || settingTts3.a2 != null) {
                                            return;
                                        }
                                        if (dialogSetTts != null) {
                                            dialogSetTts.dismiss();
                                            settingTts3.Z1 = null;
                                        }
                                        DialogSetTts dialogSetTts2 = new DialogSetTts(settingTts3);
                                        settingTts3.Z1 = dialogSetTts2;
                                        dialogSetTts2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingTts.8
                                            @Override // android.content.DialogInterface.OnDismissListener
                                            public final void onDismiss(DialogInterface dialogInterface) {
                                                int i6 = SettingTts.c2;
                                                SettingTts settingTts4 = SettingTts.this;
                                                DialogSetTts dialogSetTts3 = settingTts4.Z1;
                                                if (dialogSetTts3 != null) {
                                                    dialogSetTts3.dismiss();
                                                    settingTts4.Z1 = null;
                                                }
                                            }
                                        });
                                        return;
                                    }
                                    PrefTts.j = z;
                                    PrefSet.d(12, settingTts3.f1, "mTtsMode", z);
                                }
                            });
                            settingTts2.N1 = settingListAdapter;
                            settingTts2.L1.setAdapter(settingListAdapter);
                            settingTts2.M0();
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
            P0();
            DialogSetTts dialogSetTts = this.Z1;
            if (dialogSetTts != null) {
                dialogSetTts.dismiss();
                this.Z1 = null;
            }
            DialogEditIcon dialogEditIcon = this.a2;
            if (dialogEditIcon != null) {
                dialogEditIcon.dismiss();
                this.a2 = null;
                return;
            }
            return;
        }
        DialogSetTts dialogSetTts2 = this.Z1;
        if (dialogSetTts2 != null) {
            dialogSetTts2.I();
        }
    }
}
