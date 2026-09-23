package com.mycompany.app.setting;

import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import androidx.webkit.WebViewCompat;
import androidx.webkit.internal.ApiHelperForO;
import com.mycompany.app.dialog.DialogGreeting;
import com.mycompany.app.dialog.DialogWebVie2;
import com.mycompany.app.dialog.DialogWebView;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefWeb;
import com.mycompany.app.setting.SettingListAdapter;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.web.WebNestView;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class SettingInfo extends SettingActivity {
    public static final /* synthetic */ int Z1 = 0;
    public DialogWebVie2 X1;
    public DialogGreeting Y1;

    @Override // com.mycompany.app.setting.SettingActivity
    public final List D0() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new SettingListAdapter.SettingItem(0, true));
        arrayList.add(new SettingListAdapter.SettingItem(1, R.string.app_ver, MainUtil.c4(this.f1), 1));
        arrayList.add(new SettingListAdapter.SettingItem(8, R.string.build_date, getString(R.string.build_date_value), 0));
        arrayList.add(new SettingListAdapter.SettingItem(7, R.string.webview_ver, R0(), 0));
        arrayList.add(new SettingListAdapter.SettingItem(2, R.string.source_code, 0, 0, 0));
        arrayList.add(new SettingListAdapter.SettingItem(3, R.string.bug_tracker, 0, 0, 0));
        arrayList.add(new SettingListAdapter.SettingItem(4, R.string.license, 0, 0, 2));
        arrayList.add(new SettingListAdapter.SettingItem(5, false));
        arrayList.add(new SettingListAdapter.SettingItem(6, 0, getString(R.string.soul2_info_text), false, 3));
        return arrayList;
    }

    public static String R0() {
        try {
            PackageInfo packageInfo;
            if (Build.VERSION.SDK_INT >= 26) {
                packageInfo = ApiHelperForO.a();
            } else {
                packageInfo = WebViewCompat.a();
            }
            if (packageInfo != null && packageInfo.versionName != null) {
                return packageInfo.versionName;
            }
        } catch (Exception unused) {
        }
        return "";
    }

    public final void S0() {
        try {
            startActivity(new Intent("android.settings.WEBVIEW_SETTINGS"));
        } catch (ActivityNotFoundException | Exception unused) {
        }
    }

    /** Style and bind the header App info button (settings gear). */
    public final void T0() {
        MyButtonImage myButtonImage = this.J1;
        if (myButtonImage == null) {
            return;
        }
        if (MainApp.K1) {
            myButtonImage.setImageResource(R.drawable.outline_settings_dark_20);
            this.J1.setBgPreColor(-12632257);
        } else {
            myButtonImage.setImageResource(R.drawable.outline_settings_black_20);
            this.J1.setBgPreColor(553648128);
        }
        this.J1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingInfo.9
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AppInfoLauncher.open(SettingInfo.this);
            }
        });
    }

    public final void Q0(String str) {
        MainUtil.I4(this, str);
    }

    public final void O0(boolean z) {
        DialogGreeting dialogGreeting;
        if (this.X1 != null || (dialogGreeting = this.Y1) != null) {
            return;
        }
        if (dialogGreeting != null) {
            dialogGreeting.dismiss();
            this.Y1 = null;
        }
        DialogGreeting dialogGreeting2 = new DialogGreeting(this, z, new DialogWebView.DialogWebListener() { // from class: com.mycompany.app.setting.SettingInfo.7
            @Override // com.mycompany.app.dialog.DialogWebView.DialogWebListener
            public final void a(int i, String str, String str2) {
                SettingInfo settingInfo = SettingInfo.this;
                Intent o4 = MainUtil.o4(settingInfo.f1);
                o4.putExtra("EXTRA_PATH", str);
                o4.addFlags(67108864);
                settingInfo.startActivity(o4);
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
        this.Y1 = dialogGreeting2;
        dialogGreeting2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingInfo.8
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                int i = SettingInfo.Z1;
                SettingInfo settingInfo = SettingInfo.this;
                DialogGreeting dialogGreeting3 = settingInfo.Y1;
                if (dialogGreeting3 != null) {
                    dialogGreeting3.dismiss();
                    settingInfo.Y1 = null;
                }
            }
        });
    }

    public final void P0(String str, int i, boolean z) {
        DialogWebVie2 dialogWebVie2 = this.X1;
        if (dialogWebVie2 != null || this.Y1 != null) {
            return;
        }
        if (dialogWebVie2 != null) {
            dialogWebVie2.dismiss();
            this.X1 = null;
        }
        DialogWebVie2 dialogWebVie22 = new DialogWebVie2(this, str, i, z, new DialogWebView.DialogWebListener() { // from class: com.mycompany.app.setting.SettingInfo.5
            @Override // com.mycompany.app.dialog.DialogWebView.DialogWebListener
            public final void a(int i2, String str2, String str3) {
                SettingInfo settingInfo = SettingInfo.this;
                Intent o4 = MainUtil.o4(settingInfo.f1);
                o4.putExtra("EXTRA_PATH", str2);
                o4.addFlags(67108864);
                settingInfo.startActivity(o4);
            }

            @Override // com.mycompany.app.dialog.DialogWebView.DialogWebListener
            public final void b() {
            }

            @Override // com.mycompany.app.dialog.DialogWebView.DialogWebListener
            public final void c(String str2, String str3, String str4, long j) {
            }

            @Override // com.mycompany.app.dialog.DialogWebView.DialogWebListener
            public final void d(WebNestView webNestView, String str2) {
            }

            @Override // com.mycompany.app.dialog.DialogWebView.DialogWebListener
            public final void e() {
            }

            @Override // com.mycompany.app.dialog.DialogWebView.DialogWebListener
            public final void f() {
            }
        });
        this.X1 = dialogWebVie22;
        dialogWebVie22.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingInfo.6
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                int i2 = SettingInfo.Z1;
                SettingInfo settingInfo = SettingInfo.this;
                DialogWebVie2 dialogWebVie23 = settingInfo.X1;
                if (dialogWebVie23 != null) {
                    dialogWebVie23.dismiss();
                    settingInfo.X1 = null;
                }
            }
        });
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.main.MainActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        T0();
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        F0(R.string.info, false, true);
        this.O1 = MainApp.F1;
        Handler handler = this.O0;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.setting.SettingInfo.1
            @Override // java.lang.Runnable
            public final void run() {
                int i = SettingInfo.Z1;
                final SettingInfo settingInfo = SettingInfo.this;
                if (settingInfo.O0 != null) {
                    settingInfo.T0();
                    Handler handler2 = settingInfo.O0;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.setting.SettingInfo.3
                        @Override // java.lang.Runnable
                        public final void run() {
                            int i2 = SettingInfo.Z1;
                            final SettingInfo settingInfo2 = SettingInfo.this;
                            if (settingInfo2.O0 == null) {
                                return;
                            }
                            SettingListAdapter settingListAdapter = new SettingListAdapter((ArrayList) settingInfo2.D0(), false, settingInfo2.M1, new SettingListAdapter.SettingListener() { // from class: com.mycompany.app.setting.SettingInfo.4
                                @Override // com.mycompany.app.setting.SettingListAdapter.SettingListener
                                public final void a(SettingListAdapter.ViewHolder viewHolder, int i3, boolean z, int i4) {
                                    int i5 = SettingInfo.Z1;
                                    SettingInfo settingInfo3 = SettingInfo.this;
                                    settingInfo3.getClass();
                                    if (i3 == 1) {
                                        String c4 = MainUtil.c4(settingInfo3);
                                        MainUtil.s(R.string.copied_clipboard, settingInfo3, "Copied text", c4);
                                    } else if (i3 == 8) {
                                        String buildDate = settingInfo3.getString(R.string.build_date_value);
                                        MainUtil.s(R.string.copied_clipboard, settingInfo3, "Copied text", buildDate);
                                    } else if (i3 == 2) {
                                        settingInfo3.P0("https://git.kaki87.net/VibedByKaKi/soul-browser", R.string.source_code, true);
                                    } else if (i3 == 3) {
                                        settingInfo3.P0("https://github.com/SoulBrowser/SoulBrowser/issues", R.string.bug_tracker, true);
                                    } else if (i3 == 4) {
                                        settingInfo3.startActivity(new Intent(settingInfo3.f1, (Class<?>) SettingInfoLicenseList.class));
                                    } else if (i3 == 7) {
                                        settingInfo3.S0();
                                    }
                                }
                            });
                            settingInfo2.N1 = settingListAdapter;
                            settingInfo2.L1.setAdapter(settingListAdapter);
                            settingInfo2.M0();
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
            DialogWebVie2 dialogWebVie2 = this.X1;
            if (dialogWebVie2 != null) {
                dialogWebVie2.dismiss();
                this.X1 = null;
            }
            DialogGreeting dialogGreeting = this.Y1;
            if (dialogGreeting != null) {
                dialogGreeting.dismiss();
                this.Y1 = null;
                return;
            }
            return;
        }
        DialogWebVie2 dialogWebVie22 = this.X1;
        if (dialogWebVie22 != null) {
            WebNestView webNestView = dialogWebVie22.y0;
            if (webNestView != null) {
                webNestView.C();
            }
            if (dialogWebVie22.f0) {
                PrefWeb.M = dialogWebVie22.i0;
            }
        }
        DialogGreeting dialogGreeting2 = this.Y1;
        if (dialogGreeting2 != null) {
            WebNestView webNestView2 = dialogGreeting2.i0;
            if (webNestView2 != null) {
                webNestView2.C();
            }
            DialogWebView dialogWebView = dialogGreeting2.z0;
            if (dialogWebView != null) {
                dialogWebView.V();
            }
        }
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        DialogWebVie2 dialogWebVie2 = this.X1;
        if (dialogWebVie2 != null) {
            if (dialogWebVie2.f0) {
                dialogWebVie2.i0 = PrefWeb.M;
                if (MainApp.L1) {
                    PrefWeb.M = false;
                }
            }
            WebNestView webNestView = dialogWebVie2.y0;
            if (webNestView != null) {
                webNestView.onResume();
            }
        }
        DialogGreeting dialogGreeting = this.Y1;
        if (dialogGreeting != null) {
            WebNestView webNestView2 = dialogGreeting.i0;
            if (webNestView2 != null) {
                webNestView2.onResume();
            }
            DialogWebView dialogWebView = dialogGreeting.z0;
            if (dialogWebView != null) {
                dialogWebView.X();
            }
        }
    }
}
