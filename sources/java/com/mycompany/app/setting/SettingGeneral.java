package com.mycompany.app.setting;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import androidx.appcompat.app.AppCompatDelegate;
import androidx.core.os.LocaleListCompat;
import com.mycompany.app.dialog.DialogEditShort;
import com.mycompany.app.dialog.DialogSetReset;
import com.mycompany.app.dialog.DialogWebView;
import com.mycompany.app.dialog.a;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefMain;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.pref.PrefTts;
import com.mycompany.app.setting.SettingListAdapter;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyMainRelative;
import com.mycompany.app.view.MyPopupAdapter;
import com.mycompany.app.view.MyPopupMenu;
import com.mycompany.app.web.WebNestView;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* loaded from: classes3.dex */
public class SettingGeneral extends SettingActivity {
    public static final /* synthetic */ int c2 = 0;
    public MyPopupMenu X1;
    public DialogWebView Y1;
    public DialogEditShort Z1;
    public int a2;
    public boolean b2;
    public String[][] d2;

    public static void O0(SettingGeneral settingGeneral) {
        int i;
        if (settingGeneral.N1 == null) {
            return;
        }
        String Q0 = settingGeneral.Q0(settingGeneral.a2);
        if (settingGeneral.a2 == 0) {
            i = R.string.screen_info_system;
        } else {
            i = 0;
        }
        settingGeneral.N1.G(4, Q0);
        settingGeneral.N1.C(4, i);
    }

    public static boolean P0(Context context) {
        boolean z;
        if (context == null) {
            return false;
        }
        if (PrefTts.w) {
            PrefTts.w = false;
            PrefSet.j(context, 12, "mAppKeypad");
            z = true;
        } else {
            z = false;
        }
        if (PrefMain.m) {
            PrefMain.m = false;
            PrefSet.j(context, 5, "mDoubleBack");
            return true;
        }
        return z;
    }

    @Override // com.mycompany.app.setting.SettingActivity
    public final List D0() {
        String str;
        int i;
        int i2;
        int i3 = this.a2;
        if (i3 != -1) {
            str = Q0(i3);
            if (this.a2 == 0) {
                i2 = R.string.screen_info_system;
            } else {
                i2 = 0;
            }
            i = i2;
        } else {
            str = null;
            i = 0;
        }
        String str2 = str;
        String str3 = getString(R.string.lang_res) + " (GitHub)";
        ArrayList arrayList = new ArrayList();
        arrayList.add(new SettingListAdapter.SettingItem(0, true));
        int i4 = Build.VERSION.SDK_INT;
        if (i4 >= 26) {
            arrayList.add(new SettingListAdapter.SettingItem(1, R.string.default_browser, 0, 0, 1));
            a.u(arrayList, new SettingListAdapter.SettingItem(2, R.string.notification, 0, 0, 2), 3, false);
        } else if (i4 >= 24) {
            a.u(arrayList, new SettingListAdapter.SettingItem(1, R.string.default_browser, 0, 0, 3), 3, false);
        }
        arrayList.add(new SettingListAdapter.SettingItem(4, R.string.locale, str2, i, 1));
        arrayList.add(new SettingListAdapter.SettingItem(5, str3, 0, 0, 2));
        arrayList.add(new SettingListAdapter.SettingItem(6, false));
        arrayList.add(new SettingListAdapter.SettingItem(7, R.string.app_keyboard, 0, 1, PrefTts.w, true));
        arrayList.add(new SettingListAdapter.SettingItem(8, R.string.double_back, 0, 2, PrefMain.m, true));
        arrayList.add(new SettingListAdapter.SettingItem(9, false));
        arrayList.add(new SettingListAdapter.SettingItem(10, R.string.album_shortcut, 0, R.string.album_short_info, 1));
        a.u(arrayList, new SettingListAdapter.SettingItem(11, R.string.cast_shortcut, 0, R.string.cast_short_info, 2), 12, false);
        return arrayList;
    }

    public final String Q0(int i) {
        if (i > 0) {
            String[][] strArr = S0();
            if (i < strArr.length) {
                return strArr[i][2];
            }
        }
        return getString(R.string.system_name);
    }

    public final String[][] S0() {
        if (this.d2 == null) {
            this.d2 = AppLocales.a(this);
        }
        return this.d2;
    }

    public final void R0(int i) {
        DialogEditShort dialogEditShort;
        int i2;
        if (this.Y1 != null || (dialogEditShort = this.Z1) != null) {
            return;
        }
        if (dialogEditShort != null) {
            dialogEditShort.dismiss();
            this.Z1 = null;
        }
        if (i == 1) {
            i2 = R.string.pdf;
        } else {
            i2 = R.string.tv_cast;
        }
        DialogEditShort dialogEditShort2 = new DialogEditShort(this, null, getString(i2), i, null);
        this.Z1 = dialogEditShort2;
        dialogEditShort2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingGeneral.9
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                int i3 = SettingGeneral.c2;
                SettingGeneral settingGeneral = SettingGeneral.this;
                DialogEditShort dialogEditShort3 = settingGeneral.Z1;
                if (dialogEditShort3 != null) {
                    dialogEditShort3.dismiss();
                    settingGeneral.Z1 = null;
                }
            }
        });
    }

    @Override // com.mycompany.app.main.MainActivity
    public final void k0(int i, int i2, Intent intent) {
        DialogEditShort dialogEditShort = this.Z1;
        if (dialogEditShort != null) {
            dialogEditShort.E(i, i2, intent);
        }
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.a2 = -1;
        o0(null, 9);
        o0(null, 12);
        F0(R.string.general, true, false);
        this.O1 = MainApp.F1;
        Handler handler = this.O0;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.setting.SettingGeneral.1
            @Override // java.lang.Runnable
            public final void run() {
                int i = SettingGeneral.c2;
                final SettingGeneral settingGeneral = SettingGeneral.this;
                if (settingGeneral.O0 != null) {
                    settingGeneral.L0(2, new DialogSetReset.DialogResetListener() { // from class: com.mycompany.app.setting.SettingGeneral.2
                        @Override // com.mycompany.app.dialog.DialogSetReset.DialogResetListener
                        public final void a(boolean z) {
                            SettingGeneral settingGeneral2;
                            SettingListAdapter settingListAdapter;
                            if (z && (settingListAdapter = (settingGeneral2 = SettingGeneral.this).N1) != null) {
                                settingListAdapter.E(settingGeneral2.D0());
                            }
                        }

                        @Override // com.mycompany.app.dialog.DialogSetReset.DialogResetListener
                        public final boolean b() {
                            return SettingGeneral.P0(SettingGeneral.this.f1);
                        }
                    });
                    Handler handler2 = settingGeneral.O0;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.setting.SettingGeneral.3
                        @Override // java.lang.Runnable
                        public final void run() {
                            int i2 = SettingGeneral.c2;
                            final SettingGeneral settingGeneral2 = SettingGeneral.this;
                            if (settingGeneral2.O0 == null) {
                                return;
                            }
                            SettingListAdapter settingListAdapter = new SettingListAdapter((ArrayList) settingGeneral2.D0(), false, settingGeneral2.M1, new SettingListAdapter.SettingListener() { // from class: com.mycompany.app.setting.SettingGeneral.4
                                @Override // com.mycompany.app.setting.SettingListAdapter.SettingListener
                                public final void a(SettingListAdapter.ViewHolder viewHolder, int i3, boolean z, int i4) {
                                    boolean z2;
                                    int i5 = SettingGeneral.c2;
                                    final SettingGeneral settingGeneral3 = SettingGeneral.this;
                                    if (i3 != 1) {
                                        if (i3 != 2) {
                                            if (i3 != 4) {
                                                if (i3 != 5) {
                                                    if (i3 != 7) {
                                                        if (i3 != 8) {
                                                            if (i3 != 10) {
                                                                if (i3 == 11) {
                                                                    settingGeneral3.R0(2);
                                                                    return;
                                                                }
                                                                return;
                                                            }
                                                            settingGeneral3.R0(1);
                                                            return;
                                                        }
                                                        PrefMain.m = z;
                                                        PrefSet.d(5, settingGeneral3.f1, "mDoubleBack", z);
                                                        return;
                                                    }
                                                    PrefTts.w = z;
                                                    PrefSet.d(12, settingGeneral3.f1, "mAppKeypad", z);
                                                    return;
                                                }
                                                DialogWebView dialogWebView = settingGeneral3.Y1;
                                                if (dialogWebView == null && settingGeneral3.Z1 == null) {
                                                    if (dialogWebView != null) {
                                                        dialogWebView.dismiss();
                                                        settingGeneral3.Y1 = null;
                                                    }
                                                    DialogWebView dialogWebView2 = new DialogWebView(settingGeneral3, "https://github.com/KaKi87/soul-browser-i18n/tree/master/Language", "https://github.com/KaKi87/soul-browser-i18n/tree/master/Language", false, 2, new DialogWebView.DialogWebListener() { // from class: com.mycompany.app.setting.SettingGeneral.7
                                                        @Override // com.mycompany.app.dialog.DialogWebView.DialogWebListener
                                                        public final void a(int i6, String str, String str2) {
                                                            SettingGeneral settingGeneral4 = SettingGeneral.this;
                                                            Intent o4 = MainUtil.o4(settingGeneral4.f1);
                                                            o4.putExtra("EXTRA_PATH", str);
                                                            o4.addFlags(67108864);
                                                            settingGeneral4.startActivity(o4);
                                                        }

                                                        @Override // com.mycompany.app.dialog.DialogWebView.DialogWebListener
                                                        public final void b() {
                                                        }

                                                        @Override // com.mycompany.app.dialog.DialogWebView.DialogWebListener
                                                        public final void c(String str, String str2, String str3, long j) {
                                                        }

                                                        @Override // com.mycompany.app.dialog.DialogWebView.DialogWebListener
                                                        public final void d(WebNestView webNestView, String str) {
                                                        }

                                                        @Override // com.mycompany.app.dialog.DialogWebView.DialogWebListener
                                                        public final void e() {
                                                        }

                                                        @Override // com.mycompany.app.dialog.DialogWebView.DialogWebListener
                                                        public final void f() {
                                                        }
                                                    });
                                                    settingGeneral3.Y1 = dialogWebView2;
                                                    dialogWebView2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingGeneral.8
                                                        @Override // android.content.DialogInterface.OnDismissListener
                                                        public final void onDismiss(DialogInterface dialogInterface) {
                                                            int i6 = SettingGeneral.c2;
                                                            SettingGeneral settingGeneral4 = SettingGeneral.this;
                                                            DialogWebView dialogWebView3 = settingGeneral4.Y1;
                                                            if (dialogWebView3 != null) {
                                                                dialogWebView3.dismiss();
                                                                settingGeneral4.Y1 = null;
                                                            }
                                                        }
                                                    });
                                                    settingGeneral3.Y1.h0 = true;
                                                    return;
                                                }
                                                return;
                                            }
                                            MyPopupMenu myPopupMenu = settingGeneral3.X1;
                                            if (myPopupMenu == null) {
                                                if (myPopupMenu != null) {
                                                    settingGeneral3.Z0 = null;
                                                    myPopupMenu.a();
                                                    settingGeneral3.X1 = null;
                                                }
                                                if (viewHolder != null && viewHolder.D != null && !settingGeneral3.b2) {
                                                    ArrayList arrayList = new ArrayList();
                                                    int length = settingGeneral3.S0().length;
                                                    for (int i6 = 0; i6 < length; i6++) {
                                                        String Q0 = settingGeneral3.Q0(i6);
                                                        if (settingGeneral3.a2 == i6) {
                                                            z2 = true;
                                                        } else {
                                                            z2 = false;
                                                        }
                                                        arrayList.add(new MyPopupAdapter.PopMenuItem(Q0, i6, z2));
                                                    }
                                                    MyPopupMenu myPopupMenu2 = new MyPopupMenu(settingGeneral3, settingGeneral3.E1, viewHolder.D, arrayList, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.setting.SettingGeneral.5
                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                        public final void a() {
                                                            int i7 = SettingGeneral.c2;
                                                            SettingGeneral settingGeneral4 = SettingGeneral.this;
                                                            MyPopupMenu myPopupMenu3 = settingGeneral4.X1;
                                                            if (myPopupMenu3 != null) {
                                                                settingGeneral4.Z0 = null;
                                                                myPopupMenu3.a();
                                                                settingGeneral4.X1 = null;
                                                            }
                                                        }

                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                        public final boolean b(View view, int i7) {
                                                            SettingGeneral settingGeneral4 = SettingGeneral.this;
                                                            if (settingGeneral4.E1 == null || settingGeneral4.b2) {
                                                                return true;
                                                            }
                                                            settingGeneral4.b2 = true;
                                                            int i8 = settingGeneral4.a2;
                                                            int length2 = i7 % settingGeneral4.S0().length;
                                                            settingGeneral4.a2 = length2;
                                                            if (length2 == i8) {
                                                                settingGeneral4.b2 = false;
                                                                return true;
                                                            }
                                                            SettingGeneral.O0(settingGeneral4);
                                                            settingGeneral4.E1.post(new Runnable() { // from class: com.mycompany.app.setting.SettingGeneral.5.1
                                                                @Override // java.lang.Runnable
                                                                public final void run() {
                                                                    AnonymousClass5 anonymousClass5 = AnonymousClass5.this;
                                                                    SettingGeneral settingGeneral5 = SettingGeneral.this;
                                                                    if (settingGeneral5.a2 == 0) {
                                                                        AppCompatDelegate.z(LocaleListCompat.b);
                                                                    } else {
                                                                        AppCompatDelegate.z(LocaleListCompat.b(AppLocales.b(settingGeneral5.S0(), settingGeneral5.a2)));
                                                                    }
                                                                    SettingGeneral.this.b2 = false;
                                                                    SettingGeneral.this.recreate();
                                                                }
                                                            });
                                                            return true;
                                                        }
                                                    });
                                                    settingGeneral3.X1 = myPopupMenu2;
                                                    settingGeneral3.Z0 = myPopupMenu2;
                                                    return;
                                                }
                                                return;
                                            }
                                            return;
                                        }
                                        MainUtil.z4(settingGeneral3);
                                        return;
                                    }
                                    if (Build.VERSION.SDK_INT >= 24) {
                                        try {
                                            settingGeneral3.startActivity(new Intent("android.settings.MANAGE_DEFAULT_APPS_SETTINGS"));
                                        } catch (ActivityNotFoundException | Exception unused) {
                                        }
                                    }
                                }
                            });
                            settingGeneral2.N1 = settingListAdapter;
                            settingGeneral2.L1.setAdapter(settingListAdapter);
                            settingGeneral2.M0();
                            settingGeneral2.m0(new Runnable() { // from class: com.mycompany.app.setting.SettingGeneral.6
                                @Override // java.lang.Runnable
                                public final void run() {
                                    LocaleListCompat h = AppCompatDelegate.h();
                                    Locale locale = null;
                                    if (h != null && !h.d()) {
                                        locale = h.c(0);
                                    }
                                    SettingGeneral settingGeneral3 = SettingGeneral.this;
                                    settingGeneral3.a2 = AppLocales.a(settingGeneral3.S0(), locale);
                                    MyMainRelative myMainRelative = settingGeneral3.E1;
                                    if (myMainRelative == null) {
                                        return;
                                    }
                                    myMainRelative.post(new Runnable() { // from class: com.mycompany.app.setting.SettingGeneral.6.1
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            SettingGeneral.O0(SettingGeneral.this);
                                        }
                                    });
                                }
                            });
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
            DialogWebView dialogWebView = this.Y1;
            if (dialogWebView != null) {
                dialogWebView.dismiss();
                this.Y1 = null;
            }
            DialogEditShort dialogEditShort = this.Z1;
            if (dialogEditShort != null) {
                dialogEditShort.dismiss();
                this.Z1 = null;
            }
            MyPopupMenu myPopupMenu = this.X1;
            if (myPopupMenu != null) {
                this.Z0 = null;
                myPopupMenu.a();
                this.X1 = null;
                return;
            }
            return;
        }
        DialogWebView dialogWebView2 = this.Y1;
        if (dialogWebView2 != null) {
            dialogWebView2.V();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public final void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        DialogEditShort dialogEditShort = this.Z1;
        if (dialogEditShort != null && i == 30 && iArr != null && iArr.length > 0 && iArr[0] == 0) {
            dialogEditShort.r0 = MainUtil.C4(9, dialogEditShort.a0, false);
        }
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        DialogWebView dialogWebView = this.Y1;
        if (dialogWebView != null) {
            dialogWebView.X();
        }
    }
}
