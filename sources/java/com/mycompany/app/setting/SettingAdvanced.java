package com.mycompany.app.setting;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Handler;
import android.webkit.WebView;
import com.mycompany.app.dialog.DialogListBook;
import com.mycompany.app.dialog.DialogSetReset;
import com.mycompany.app.dialog.a;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.pref.PrefPdf;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.pref.PrefWeb;
import com.mycompany.app.pref.PrefZone;
import com.mycompany.app.setting.SettingListAdapter;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyPopupAdapter;
import com.mycompany.app.view.MyPopupMenu;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class SettingAdvanced extends SettingActivity {
    public static final /* synthetic */ int c2 = 0;
    public boolean X1;
    public String Y1;
    public MyPopupMenu Z1;
    public DialogListBook a2;
    public boolean b2;

    public static boolean O0(Context context) {
        boolean z;
        if (context == null) {
            return false;
        }
        if (PrefPdf.q) {
            PrefPdf.q = false;
            PrefSet.j(context, 7, "mSaveData");
            z = true;
        } else {
            z = false;
        }
        if (PrefZone.v) {
            PrefZone.v = false;
            PrefSet.j(context, 15, "mPreRaster");
            z = true;
        }
        if (!PrefPdf.r) {
            PrefPdf.r = true;
            PrefSet.j(context, 7, "mBlockAmp");
            z = true;
        }
        if (PrefWeb.F != 0) {
            PrefWeb.F = 0;
            PrefSet.j(context, 14, "mCookieType");
            MainApp.M(context);
            z = true;
        }
        if (PrefWeb.G != 0) {
            PrefWeb.G = 0;
            PrefSet.j(context, 14, "mThirdType");
            z = true;
        }
        if (!PrefWeb.H) {
            PrefWeb.H = true;
            PrefSet.j(context, 14, "mEnableJs");
            z = true;
        }
        if (PrefPdf.p) {
            PrefPdf.p = false;
            PrefSet.j(context, 7, "mOnlyHttps2");
            z = true;
        }
        if (PrefPdf.s) {
            PrefPdf.s = false;
            PrefSet.j(context, 7, "mBlockSsl");
            z = true;
        }
        if (PrefPdf.Q) {
            PrefPdf.Q = false;
            PrefSet.j(context, 7, "mFreshTabRestore");
            z = true;
        }
        if (PrefPdf.R) {
            PrefPdf.R = false;
            PrefSet.j(context, 7, "mErudaPreload");
            z = true;
        }
        if (PrefPdf.t) {
            PrefPdf.t = false;
            PrefSet.j(context, 7, "mDebugMode");
            return true;
        }
        return z;
    }

    @Override // com.mycompany.app.setting.SettingActivity
    public final List D0() {
        String str = getString(R.string.accept_cookie_info_1) + "\n" + getString(R.string.accept_cookie_info_2);
        String str2 = getString(R.string.java_script_info) + "\n" + getString(R.string.dark_mode_info_2);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new SettingListAdapter.SettingItem(0, true));
        arrayList.add(new SettingListAdapter.SettingItem(1, R.string.save_data, R.string.not_support_site, 1, PrefPdf.q, true));
        arrayList.add(new SettingListAdapter.SettingItem(2, R.string.pre_raster, R.string.memory_warning_1, 0, PrefZone.v, true));
        arrayList.add(new SettingListAdapter.SettingItem(3, R.string.block_amp, R.string.block_amp_info, 0, PrefPdf.r, true));
        arrayList.add(new SettingListAdapter.SettingItem(16, R.string.reload_saved_tabs, R.string.reload_saved_tabs_info, 2, PrefPdf.Q, true));
        arrayList.add(new SettingListAdapter.SettingItem(4, false));
        int i = R.string.accept_cookie;
        int[] iArr = MainConst.R;
        arrayList.add(new SettingListAdapter.SettingItem(5, i, iArr[PrefWeb.F], str, 1));
        arrayList.add(new SettingListAdapter.SettingItem(6, R.string.third_cookie, iArr[PrefWeb.G], 0, 2));
        arrayList.add(new SettingListAdapter.SettingItem(7, false));
        arrayList.add(new SettingListAdapter.SettingItem(8, R.string.java_script, 1, 0, str2, PrefWeb.H));
        arrayList.add(new SettingListAdapter.SettingItem(9, R.string.js_black, 0, R.string.js_black_info, 2));
        arrayList.add(new SettingListAdapter.SettingItem(10, false));
        arrayList.add(new SettingListAdapter.SettingItem(11, R.string.only_https, R.string.only_https_info, 1, PrefPdf.p, true));
        arrayList.add(new SettingListAdapter.SettingItem(12, R.string.block_ssl, R.string.block_ssl_info, 2, PrefPdf.s, true));
        arrayList.add(new SettingListAdapter.SettingItem(13, false));
        arrayList.add(new SettingListAdapter.SettingItem(14, R.string.debug_mode, R.string.debug_mode_info, 1, PrefPdf.t, true));
        a.u(arrayList, new SettingListAdapter.SettingItem(17, R.string.eruda_preload, R.string.eruda_preload_info, 2, PrefPdf.R, true), 15, false);
        return arrayList;
    }

    public final void P0(SettingListAdapter.ViewHolder viewHolder, final int i) {
        int i2;
        boolean z;
        MyPopupMenu myPopupMenu = this.Z1;
        if (myPopupMenu == null) {
            if (myPopupMenu != null) {
                this.Z0 = null;
                myPopupMenu.a();
                this.Z1 = null;
            }
            if (viewHolder != null && viewHolder.D != null) {
                if (i == 6) {
                    i2 = PrefWeb.G;
                } else {
                    i2 = PrefWeb.F;
                }
                ArrayList arrayList = new ArrayList();
                final int length = MainConst.Q.length;
                for (int i3 = 0; i3 < length; i3++) {
                    int i4 = MainConst.Q[i3];
                    int i5 = MainConst.R[i4];
                    if (i2 == i4) {
                        z = true;
                    } else {
                        z = false;
                    }
                    arrayList.add(new MyPopupAdapter.PopMenuItem(i3, i5, z));
                }
                MyPopupMenu myPopupMenu2 = new MyPopupMenu(this, this.E1, viewHolder.D, arrayList, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.setting.SettingAdvanced.5
                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                    public final void a() {
                        int i6 = SettingAdvanced.c2;
                        SettingAdvanced settingAdvanced = SettingAdvanced.this;
                        MyPopupMenu myPopupMenu3 = settingAdvanced.Z1;
                        if (myPopupMenu3 != null) {
                            settingAdvanced.Z0 = null;
                            myPopupMenu3.a();
                            settingAdvanced.Z1 = null;
                        }
                    }

                    /* JADX WARN: Removed duplicated region for block: B:8:0x0037  */
                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public final boolean b(android.view.View r6, int r7) {
                        /*
                            r5 = this;
                            int[] r6 = com.mycompany.app.main.MainConst.Q
                            int r0 = r2
                            int r7 = r7 % r0
                            r6 = r6[r7]
                            r7 = 6
                            r0 = 14
                            r1 = 1
                            com.mycompany.app.setting.SettingAdvanced r2 = com.mycompany.app.setting.SettingAdvanced.this
                            int r3 = r3
                            if (r3 != r7) goto L20
                            int r7 = com.mycompany.app.pref.PrefWeb.G
                            if (r7 != r6) goto L16
                            goto L3e
                        L16:
                            com.mycompany.app.pref.PrefWeb.G = r6
                            android.content.Context r7 = r2.f1
                            java.lang.String r4 = "mThirdType"
                            com.mycompany.app.pref.PrefSet.f(r7, r0, r6, r4)
                            goto L33
                        L20:
                            int r7 = com.mycompany.app.pref.PrefWeb.F
                            if (r7 != r6) goto L25
                            goto L3e
                        L25:
                            com.mycompany.app.pref.PrefWeb.F = r6
                            android.content.Context r7 = r2.f1
                            java.lang.String r4 = "mCookieType"
                            com.mycompany.app.pref.PrefSet.f(r7, r0, r6, r4)
                            android.content.Context r7 = r2.f1
                            com.mycompany.app.main.MainApp.M(r7)
                        L33:
                            com.mycompany.app.setting.SettingListAdapter r7 = r2.N1
                            if (r7 == 0) goto L3e
                            int[] r0 = com.mycompany.app.main.MainConst.R
                            r6 = r0[r6]
                            r7.F(r3, r6)
                        L3e:
                            return r1
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.setting.SettingAdvanced.AnonymousClass5.b(android.view.View, int):boolean");
                    }
                });
                this.Z1 = myPopupMenu2;
                this.Z0 = myPopupMenu2;
            }
        }
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.main.MainActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        DialogListBook dialogListBook = this.a2;
        if (dialogListBook != null) {
            dialogListBook.q(configuration);
        }
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.X1 = true;
        this.Y1 = getIntent().getStringExtra("EXTRA_PATH");
        F0(R.string.advanced, true, false);
        this.O1 = MainApp.F1;
        Handler handler = this.O0;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.setting.SettingAdvanced.1
            @Override // java.lang.Runnable
            public final void run() {
                int i = SettingAdvanced.c2;
                final SettingAdvanced settingAdvanced = SettingAdvanced.this;
                if (settingAdvanced.O0 != null) {
                    settingAdvanced.L0(0, new DialogSetReset.DialogResetListener() { // from class: com.mycompany.app.setting.SettingAdvanced.2
                        @Override // com.mycompany.app.dialog.DialogSetReset.DialogResetListener
                        public final void a(boolean z) {
                            SettingAdvanced settingAdvanced2;
                            SettingListAdapter settingListAdapter;
                            if (z && (settingListAdapter = (settingAdvanced2 = SettingAdvanced.this).N1) != null) {
                                settingListAdapter.E(settingAdvanced2.D0());
                                boolean z2 = settingAdvanced2.b2;
                                boolean z3 = PrefPdf.t;
                                if (z2 != z3) {
                                    WebView.setWebContentsDebuggingEnabled(z3);
                                }
                            }
                        }

                        @Override // com.mycompany.app.dialog.DialogSetReset.DialogResetListener
                        public final boolean b() {
                            boolean z = PrefPdf.t;
                            SettingAdvanced settingAdvanced2 = SettingAdvanced.this;
                            settingAdvanced2.b2 = z;
                            return SettingAdvanced.O0(settingAdvanced2.f1);
                        }
                    });
                    Handler handler2 = settingAdvanced.O0;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.setting.SettingAdvanced.3
                        @Override // java.lang.Runnable
                        public final void run() {
                            int i2 = SettingAdvanced.c2;
                            final SettingAdvanced settingAdvanced2 = SettingAdvanced.this;
                            if (settingAdvanced2.O0 == null) {
                                return;
                            }
                            SettingListAdapter settingListAdapter = new SettingListAdapter((ArrayList) settingAdvanced2.D0(), false, settingAdvanced2.M1, new SettingListAdapter.SettingListener() { // from class: com.mycompany.app.setting.SettingAdvanced.4
                                /* JADX WARN: Type inference failed for: r2v6, types: [com.mycompany.app.main.MainListView$ListViewConfig, java.lang.Object] */
                                @Override // com.mycompany.app.setting.SettingListAdapter.SettingListener
                                public final void a(SettingListAdapter.ViewHolder viewHolder, int i3, boolean z, int i4) {
                                    int i5 = SettingAdvanced.c2;
                                    final SettingAdvanced settingAdvanced3 = SettingAdvanced.this;
                                    switch (i3) {
                                        case 1:
                                            PrefPdf.q = z;
                                            PrefSet.d(7, settingAdvanced3.f1, "mSaveData", z);
                                            return;
                                        case 2:
                                            PrefZone.v = z;
                                            PrefSet.d(15, settingAdvanced3.f1, "mPreRaster", z);
                                            return;
                                        case 3:
                                            PrefPdf.r = z;
                                            PrefSet.d(7, settingAdvanced3.f1, "mBlockAmp", z);
                                            return;
                                        case 4:
                                        case 7:
                                        case 10:
                                        case 13:
                                        default:
                                            return;
                                        case 5:
                                            settingAdvanced3.P0(viewHolder, i3);
                                            return;
                                        case 6:
                                            settingAdvanced3.P0(viewHolder, i3);
                                            return;
                                        case 8:
                                            PrefWeb.H = z;
                                            PrefSet.d(14, settingAdvanced3.f1, "mEnableJs", z);
                                            return;
                                        case 9:
                                            DialogListBook dialogListBook = settingAdvanced3.a2;
                                            if (dialogListBook != null) {
                                                return;
                                            }
                                            if (dialogListBook != null) {
                                                dialogListBook.dismiss();
                                                settingAdvanced3.a2 = null;
                                            }
                                            ?? obj = new Object();
                                            obj.f16734a = 28;
                                            obj.i = true;
                                            obj.f = R.string.js_black;
                                            DialogListBook dialogListBook2 = new DialogListBook(settingAdvanced3, obj, settingAdvanced3.Y1, null);
                                            settingAdvanced3.a2 = dialogListBook2;
                                            dialogListBook2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingAdvanced.6
                                                @Override // android.content.DialogInterface.OnDismissListener
                                                public final void onDismiss(DialogInterface dialogInterface) {
                                                    int i6 = SettingAdvanced.c2;
                                                    SettingAdvanced settingAdvanced4 = SettingAdvanced.this;
                                                    DialogListBook dialogListBook3 = settingAdvanced4.a2;
                                                    if (dialogListBook3 != null) {
                                                        dialogListBook3.dismiss();
                                                        settingAdvanced4.a2 = null;
                                                    }
                                                    settingAdvanced4.C0(null);
                                                }
                                            });
                                            settingAdvanced3.a2.o = new MyDialogBottom.UserShowListener() { // from class: com.mycompany.app.setting.SettingAdvanced.7
                                                @Override // com.mycompany.app.view.MyDialogBottom.UserShowListener
                                                public final void a() {
                                                    SettingAdvanced settingAdvanced4 = SettingAdvanced.this;
                                                    settingAdvanced4.C0(settingAdvanced4.a2);
                                                }
                                            };
                                            return;
                                        case 11:
                                            PrefPdf.p = z;
                                            PrefSet.d(7, settingAdvanced3.f1, "mOnlyHttps2", z);
                                            return;
                                        case 12:
                                            PrefPdf.s = z;
                                            PrefSet.d(7, settingAdvanced3.f1, "mBlockSsl", z);
                                            return;
                                        case 14:
                                            PrefPdf.t = z;
                                            PrefSet.d(7, settingAdvanced3.f1, "mDebugMode", z);
                                            WebView.setWebContentsDebuggingEnabled(PrefPdf.t);
                                            return;
                                        case 16:
                                            PrefPdf.Q = z;
                                            PrefSet.d(7, settingAdvanced3.f1, "mFreshTabRestore", z);
                                            return;
                                        case 17:
                                            PrefPdf.R = z;
                                            PrefSet.d(7, settingAdvanced3.f1, "mErudaPreload", z);
                                            return;
                                    }
                                }
                            });
                            settingAdvanced2.N1 = settingListAdapter;
                            settingAdvanced2.L1.setAdapter(settingListAdapter);
                            settingAdvanced2.M0();
                        }
                    });
                }
            }
        });
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        this.Y1 = null;
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        super.onPause();
        if (isFinishing()) {
            MyPopupMenu myPopupMenu = this.Z1;
            if (myPopupMenu != null) {
                this.Z0 = null;
                myPopupMenu.a();
                this.Z1 = null;
            }
            DialogListBook dialogListBook = this.a2;
            if (dialogListBook != null) {
                dialogListBook.dismiss();
                this.a2 = null;
                return;
            }
            return;
        }
        DialogListBook dialogListBook2 = this.a2;
        if (dialogListBook2 != null) {
            dialogListBook2.r(false);
        }
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        DialogListBook dialogListBook;
        super.onResume();
        if (!this.X1 && (dialogListBook = this.a2) != null) {
            dialogListBook.s(true);
        }
        this.X1 = false;
    }
}
