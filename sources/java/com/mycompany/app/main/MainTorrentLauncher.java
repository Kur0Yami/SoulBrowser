package com.mycompany.app.main;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.mycompany.app.dialog.DialogDownUrl;
import com.mycompany.app.dialog.DialogSetDown;
import com.mycompany.app.main.MainUri;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.web.WebNestView;

/* loaded from: classes3.dex */
public class MainTorrentLauncher extends MainActivity {
    public static final /* synthetic */ int l1 = 0;
    public Context f1;
    public DialogDownUrl g1;
    public DialogSetDown h1;
    public String i1;
    public String j1;
    public String k1;

    @Override // com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        this.W0 = true;
        super.onCreate(bundle);
        u0(getIntent());
    }

    @Override // com.mycompany.app.main.MainActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        v0();
        w0();
        this.f1 = null;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        u0(intent);
    }

    @Override // com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        super.onPause();
        if (isFinishing()) {
            v0();
            w0();
            MainApp.T1 = null;
        }
    }

    public final void u0(Intent intent) {
        Context context;
        if (intent != null) {
            this.f1 = getApplicationContext();
            Uri data = intent.getData();
            if (data == null) {
                MainUtil.e8(this, R.string.invalid_path);
                finish();
                return;
            }
            String uri = data.toString();
            if (this.g1 != null || this.h1 != null) {
                return;
            }
            v0();
            boolean z = false;
            if (MainApp.A(this.f1) && (context = this.f1) != null) {
                z = MainApp.z(context);
            }
            DialogDownUrl dialogDownUrl = new DialogDownUrl(this, uri, null, null, null, "application/x-bittorrent", 0L, 0, 0, null, 0, null, false, z ? 1 : 0, new DialogDownUrl.DownUrlListener() { // from class: com.mycompany.app.main.MainTorrentLauncher.1
                @Override // com.mycompany.app.dialog.DialogDownUrl.DownUrlListener
                public final WebNestView a() {
                    return null;
                }

                @Override // com.mycompany.app.dialog.DialogDownUrl.DownUrlListener
                public final void b(String str, String str2) {
                    MainTorrentLauncher mainTorrentLauncher = MainTorrentLauncher.this;
                    MainUtil.a8(mainTorrentLauncher, str, str2);
                    int i = MainTorrentLauncher.l1;
                    mainTorrentLauncher.v0();
                }

                @Override // com.mycompany.app.dialog.DialogDownUrl.DownUrlListener
                public final void c(String str, String str2, String str3) {
                    final MainTorrentLauncher mainTorrentLauncher = MainTorrentLauncher.this;
                    if (mainTorrentLauncher.h1 == null) {
                        mainTorrentLauncher.w0();
                        mainTorrentLauncher.i1 = str;
                        mainTorrentLauncher.j1 = str2;
                        mainTorrentLauncher.k1 = str3;
                        DialogSetDown dialogSetDown = new DialogSetDown(mainTorrentLauncher, str, str3, mainTorrentLauncher.h0(), false, false, 0, new DialogSetDown.SetDownListener() { // from class: com.mycompany.app.main.MainTorrentLauncher.3
                            @Override // com.mycompany.app.dialog.DialogSetDown.SetDownListener
                            public final void a(String str4, String str5, String str6) {
                                MainTorrentLauncher mainTorrentLauncher2 = MainTorrentLauncher.this;
                                String str7 = mainTorrentLauncher2.i1;
                                String str8 = mainTorrentLauncher2.j1;
                                String str9 = mainTorrentLauncher2.k1;
                                mainTorrentLauncher2.i1 = null;
                                mainTorrentLauncher2.j1 = null;
                                mainTorrentLauncher2.k1 = null;
                                MainUtil.G4(mainTorrentLauncher2, str5, str6, str7, null, str8, str9);
                            }
                        });
                        mainTorrentLauncher.h1 = dialogSetDown;
                        dialogSetDown.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.main.MainTorrentLauncher.4
                            @Override // android.content.DialogInterface.OnDismissListener
                            public final void onDismiss(DialogInterface dialogInterface) {
                                int i = MainTorrentLauncher.l1;
                                MainTorrentLauncher mainTorrentLauncher2 = MainTorrentLauncher.this;
                                mainTorrentLauncher2.w0();
                                mainTorrentLauncher2.finish();
                            }
                        });
                    }
                    mainTorrentLauncher.v0();
                }

                @Override // com.mycompany.app.dialog.DialogDownUrl.DownUrlListener
                public final void d(String str, MainUri.UriItem uriItem, int i, boolean z2, String str2, String str3) {
                    MainTorrentLauncher mainTorrentLauncher = MainTorrentLauncher.this;
                    MainApp p = MainApp.p(mainTorrentLauncher.getApplicationContext());
                    if (p != null) {
                        p.R(str, null, uriItem, z2);
                    } else {
                        MainUtil.e8(mainTorrentLauncher, R.string.down_fail);
                    }
                    int i2 = MainTorrentLauncher.l1;
                    mainTorrentLauncher.v0();
                }

                @Override // com.mycompany.app.dialog.DialogDownUrl.DownUrlListener
                public final void f(String str, String str2, String str3, boolean z2) {
                }

                @Override // com.mycompany.app.dialog.DialogDownUrl.DownUrlListener
                public final void g(String str, String str2, String str3) {
                }

                @Override // com.mycompany.app.dialog.DialogDownUrl.DownUrlListener
                public final void e(int i, String str) {
                }
            });
            this.g1 = dialogDownUrl;
            dialogDownUrl.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.main.MainTorrentLauncher.2
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    int i = MainTorrentLauncher.l1;
                    MainTorrentLauncher mainTorrentLauncher = MainTorrentLauncher.this;
                    mainTorrentLauncher.v0();
                    if (mainTorrentLauncher.h1 == null) {
                        mainTorrentLauncher.finish();
                    }
                }
            });
        }
    }

    public final void v0() {
        DialogDownUrl dialogDownUrl = this.g1;
        if (dialogDownUrl != null) {
            dialogDownUrl.dismiss();
            this.g1 = null;
        }
    }

    public final void w0() {
        DialogSetDown dialogSetDown = this.h1;
        if (dialogSetDown != null) {
            dialogSetDown.dismiss();
            this.h1 = null;
        }
        this.i1 = null;
        this.j1 = null;
        this.k1 = null;
    }
}
