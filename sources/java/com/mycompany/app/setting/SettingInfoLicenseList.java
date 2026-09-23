package com.mycompany.app.setting;

import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.media.a;
import android.text.TextUtils;
import android.view.View;
import com.mycompany.app.dialog.DialogSetFull;
import com.mycompany.app.dialog.DialogSetMsg;
import com.mycompany.app.dialog.DialogWebView;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.setting.SettingListAdapter;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.web.WebNestView;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class SettingInfoLicenseList extends SettingActivity {
    public static final String[][] Z1 = {new String[]{"Android SDK", "https://developer.android.com", "Google", "Apache2"}, new String[]{"AndroidSVG", "https://github.com/BigBadaboom/androidsvg", "Paul LeBeau", "Apache2"}, new String[]{"Apache Commons Compress", "https://commons.apache.org/proper/commons-compress", "Apache Software Foundation", "Apache2"}, new String[]{"Apache Commons Text", "https://commons.apache.org/proper/commons-text", "Apache Software Foundation", "Apache2"}, new String[]{"AppCompat", "https://developer.android.com/jetpack/androidx/releases/appcompat", "Google", "Apache2"}, new String[]{"Biometric", "https://developer.android.com/jetpack/androidx/releases/biometric", "Google", "Apache2"}, new String[]{"Browser", "https://developer.android.com/jetpack/androidx/releases/browser", "Google", "Apache2"}, new String[]{"Exifinterface", "https://developer.android.com/jetpack/androidx/releases/exifinterface", "Google", "Apache2"}, new String[]{"frostwire-jlibtorrent", "https://github.com/frostwire/frostwire-jlibtorrent", "FrostWire", "MIT"}, new String[]{"Glide", "https://github.com/bumptech/glide", "Bump Technologies", "Glide"}, new String[]{"GlideWebpDecoder", "https://github.com/zjupure/GlideWebpDecoder", "Gray Liu", "Apache2"}, new String[]{"Google APIs Client Library for Java", "https://github.com/googleapis/google-api-java-client", "Google", "Apache2"}, new String[]{"Google Drive API", "https://developers.google.com/drive", "Google", "Apache2"}, new String[]{"Google HTTP Client Library for Java", "https://github.com/googleapis/google-http-java-client", "Google", "Apache2"}, new String[]{"Google Play Billing", "https://developer.android.com/distribute/play-billing", "Google", "Android"}, new String[]{"Gson", "https://github.com/google/gson", "Google", "Apache2"}, new String[]{"Guava: Google Core Libraries for Java", "https://github.com/google/guava", "Google", "Apache2"}, new String[]{"Intra", "https://github.com/Jigsaw-Code/Intra", "Jigsaw", "Apache2"}, new String[]{"jsoup", "https://jsoup.org", "Jonathan Hedley", "MIT"}, new String[]{"juniversalchardet", "https://github.com/albfernandez/juniversalchardet", "Alberto Fernández", "MPL"}, new String[]{"Material Components for Android", "https://github.com/material-components/material-components-android", "Google", "Apache2"}, new String[]{"Media", "https://developer.android.com/jetpack/androidx/releases/media", "Google", "Apache2"}, new String[]{"MediaRouter", "https://developer.android.com/jetpack/androidx/releases/mediarouter", "Google", "Apache2"}, new String[]{"NanoHttpd", "https://github.com/NanoHttpd/nanohttpd", "NanoHttpd", "NanoHttpd"}, new String[]{"Play Services AdMob", "https://developers.google.com/android", "Google", "Android"}, new String[]{"Play Services Auth", "https://developers.google.com/android", "Google", "Android"}, new String[]{"Play Services Cast", "https://developers.google.com/android", "Google", "Android"}, new String[]{"Play Services Drive", "https://developers.google.com/android", "Google", "Android"}, new String[]{"Play Services ML Kit", "https://developers.google.com/android", "Google", "Android"}, new String[]{"Readability4J", "https://github.com/dankito/Readability4J", "dankito", "Apache2"}, new String[]{"Webkit", "https://developer.android.com/jetpack/androidx/releases/webkit", "Google", "Apache2"}, new String[]{"XZ for Java", "https://tukaani.org/xz/java.html", "Tukaani Project", "XZ"}, new String[]{"Zip4j", "https://github.com/srikanth-lingala/zip4j", "Srikanth Reddy Lingala", "Apache2"}};
    public DialogSetMsg X1;
    public DialogWebView Y1;

    /* JADX WARN: Type inference failed for: r8v0, types: [com.mycompany.app.setting.SettingListAdapter$SettingItem, java.lang.Object] */
    @Override // com.mycompany.app.setting.SettingActivity
    public final List D0() {
        int i;
        ArrayList arrayList = new ArrayList();
        arrayList.add(new SettingListAdapter.SettingItem(0, true));
        for (int i2 = 0; i2 < 33; i2++) {
            String[][] strArr = Z1;
            String str = strArr[i2][3];
            String str2 = null;
            if (str != null) {
                if (str.startsWith("Ap")) {
                    str2 = "Apache License 2.0";
                } else if (str.startsWith("An")) {
                    str2 = "Android SDK License";
                } else if (str.startsWith("MI")) {
                    str2 = "MIT License";
                } else if (str.startsWith("Gl")) {
                    str2 = "Glide License";
                } else if (str.startsWith("MP")) {
                    str2 = "Mozilla Public License 1.1";
                } else if (str.startsWith("Na")) {
                    str2 = "NanoHttpd License";
                } else if (str.startsWith("XZ")) {
                    str2 = "XZ for Java License";
                }
            }
            if (!TextUtils.isEmpty(str2)) {
                if (i2 == 0) {
                    i = 1;
                } else if (i2 == 32) {
                    i = 2;
                } else {
                    i = 0;
                }
                String[] strArr2 = strArr[i2];
                String str3 = strArr2[0];
                String str4 = strArr2[2];
                ?? obj = new Object();
                obj.f17931a = 11;
                obj.b = i2 + 1;
                obj.d = str3;
                obj.g = str2;
                obj.i = str4;
                obj.u = i;
                arrayList.add(obj);
            }
        }
        arrayList.add(new SettingListAdapter.SettingItem(34, false));
        return arrayList;
    }

    public final void O0() {
        DialogSetMsg dialogSetMsg = this.X1;
        if (dialogSetMsg != null) {
            dialogSetMsg.dismiss();
            this.X1 = null;
        }
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        F0(R.string.license, false, true);
        Handler handler = this.O0;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.setting.SettingInfoLicenseList.1
            @Override // java.lang.Runnable
            public final void run() {
                String[][] strArr = SettingInfoLicenseList.Z1;
                final SettingInfoLicenseList settingInfoLicenseList = SettingInfoLicenseList.this;
                if (settingInfoLicenseList.O0 != null) {
                    settingInfoLicenseList.K0(true, new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingInfoLicenseList.2
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            String[][] strArr2 = SettingInfoLicenseList.Z1;
                            final SettingInfoLicenseList settingInfoLicenseList2 = SettingInfoLicenseList.this;
                            if (settingInfoLicenseList2.X1 != null || settingInfoLicenseList2.Y1 != null) {
                                return;
                            }
                            settingInfoLicenseList2.O0();
                            DialogSetMsg dialogSetMsg = new DialogSetMsg(settingInfoLicenseList2, R.string.open_source, R.string.ok, new DialogSetFull.DialogApplyListener() { // from class: com.mycompany.app.setting.SettingInfoLicenseList.5
                                @Override // com.mycompany.app.dialog.DialogSetFull.DialogApplyListener
                                public final void a() {
                                    String[][] strArr3 = SettingInfoLicenseList.Z1;
                                    SettingInfoLicenseList.this.O0();
                                }
                            });
                            settingInfoLicenseList2.X1 = dialogSetMsg;
                            dialogSetMsg.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.mycompany.app.setting.SettingInfoLicenseList.6
                                @Override // android.content.DialogInterface.OnCancelListener
                                public final void onCancel(DialogInterface dialogInterface) {
                                    String[][] strArr3 = SettingInfoLicenseList.Z1;
                                    SettingInfoLicenseList.this.O0();
                                }
                            });
                            settingInfoLicenseList2.X1.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingInfoLicenseList.7
                                @Override // android.content.DialogInterface.OnDismissListener
                                public final void onDismiss(DialogInterface dialogInterface) {
                                    String[][] strArr3 = SettingInfoLicenseList.Z1;
                                    SettingInfoLicenseList.this.O0();
                                }
                            });
                        }
                    });
                    Handler handler2 = settingInfoLicenseList.O0;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.setting.SettingInfoLicenseList.3
                        @Override // java.lang.Runnable
                        public final void run() {
                            String[][] strArr2 = SettingInfoLicenseList.Z1;
                            final SettingInfoLicenseList settingInfoLicenseList2 = SettingInfoLicenseList.this;
                            if (settingInfoLicenseList2.O0 == null) {
                                return;
                            }
                            SettingListAdapter settingListAdapter = new SettingListAdapter((ArrayList) settingInfoLicenseList2.D0(), false, settingInfoLicenseList2.M1, new SettingListAdapter.SettingListener() { // from class: com.mycompany.app.setting.SettingInfoLicenseList.4
                                @Override // com.mycompany.app.setting.SettingListAdapter.SettingListener
                                public final void a(SettingListAdapter.ViewHolder viewHolder, int i, boolean z, int i2) {
                                    String str;
                                    int i3;
                                    DialogWebView dialogWebView;
                                    int i4 = i - 1;
                                    if (i4 >= 0) {
                                        String[][] strArr3 = SettingInfoLicenseList.Z1;
                                        if (i4 <= 33) {
                                            if (z) {
                                                StringBuilder sb = new StringBuilder("https://cdn.jsdelivr.net/gh/SoulBrowser/SoulBrowser@master/License/");
                                                String[] strArr4 = strArr3[i4];
                                                i3 = 3;
                                                str = a.p(sb, strArr4[3], ".txt");
                                            } else {
                                                str = strArr3[i4][1];
                                                i3 = 2;
                                            }
                                            String str2 = str;
                                            int i5 = i3;
                                            final SettingInfoLicenseList settingInfoLicenseList3 = SettingInfoLicenseList.this;
                                            if (settingInfoLicenseList3.X1 == null && (dialogWebView = settingInfoLicenseList3.Y1) == null) {
                                                if (dialogWebView != null) {
                                                    dialogWebView.dismiss();
                                                    settingInfoLicenseList3.Y1 = null;
                                                }
                                                DialogWebView dialogWebView2 = new DialogWebView(settingInfoLicenseList3, str2, str2, false, i5, new DialogWebView.DialogWebListener() { // from class: com.mycompany.app.setting.SettingInfoLicenseList.8
                                                    @Override // com.mycompany.app.dialog.DialogWebView.DialogWebListener
                                                    public final void a(int i6, String str3, String str4) {
                                                        SettingInfoLicenseList settingInfoLicenseList4 = SettingInfoLicenseList.this;
                                                        Intent o4 = MainUtil.o4(settingInfoLicenseList4.f1);
                                                        o4.putExtra("EXTRA_PATH", str3);
                                                        o4.addFlags(67108864);
                                                        settingInfoLicenseList4.startActivity(o4);
                                                    }

                                                    @Override // com.mycompany.app.dialog.DialogWebView.DialogWebListener
                                                    public final void b() {
                                                    }

                                                    @Override // com.mycompany.app.dialog.DialogWebView.DialogWebListener
                                                    public final void c(String str3, String str4, String str5, long j) {
                                                    }

                                                    @Override // com.mycompany.app.dialog.DialogWebView.DialogWebListener
                                                    public final void d(WebNestView webNestView, String str3) {
                                                    }

                                                    @Override // com.mycompany.app.dialog.DialogWebView.DialogWebListener
                                                    public final void e() {
                                                    }

                                                    @Override // com.mycompany.app.dialog.DialogWebView.DialogWebListener
                                                    public final void f() {
                                                    }
                                                });
                                                settingInfoLicenseList3.Y1 = dialogWebView2;
                                                dialogWebView2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingInfoLicenseList.9
                                                    @Override // android.content.DialogInterface.OnDismissListener
                                                    public final void onDismiss(DialogInterface dialogInterface) {
                                                        String[][] strArr5 = SettingInfoLicenseList.Z1;
                                                        SettingInfoLicenseList settingInfoLicenseList4 = SettingInfoLicenseList.this;
                                                        DialogWebView dialogWebView3 = settingInfoLicenseList4.Y1;
                                                        if (dialogWebView3 != null) {
                                                            dialogWebView3.dismiss();
                                                            settingInfoLicenseList4.Y1 = null;
                                                        }
                                                    }
                                                });
                                            }
                                        }
                                    }
                                }
                            });
                            settingInfoLicenseList2.N1 = settingListAdapter;
                            settingInfoLicenseList2.L1.setAdapter(settingListAdapter);
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
            O0();
            DialogWebView dialogWebView = this.Y1;
            if (dialogWebView != null) {
                dialogWebView.dismiss();
                this.Y1 = null;
                return;
            }
            return;
        }
        DialogWebView dialogWebView2 = this.Y1;
        if (dialogWebView2 != null) {
            dialogWebView2.V();
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
