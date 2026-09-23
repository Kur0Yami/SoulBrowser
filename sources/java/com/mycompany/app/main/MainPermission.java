package com.mycompany.app.main;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import com.google.android.gms.common.ConnectionResult;
import com.mycompany.app.soulbrowser.R;

/* loaded from: classes3.dex */
public class MainPermission extends MainActivity {
    public Context f1;
    public boolean g1;
    public int h1;
    public String i1;
    public boolean j1;
    public boolean k1;
    public boolean l1;

    @Override // com.mycompany.app.main.MainActivity
    public final void k0(int i, int i2, Intent intent) {
        this.k1 = false;
        if (i != 26) {
            if (i == 27 && !MainUtil.T5(this.f1, 7)) {
                if (!TextUtils.isEmpty(this.i1)) {
                    this.l1 = true;
                    return;
                } else {
                    MainUtil.e8(this, R.string.permission_granted);
                    return;
                }
            }
            return;
        }
        if (!MainUtil.T5(this.f1, 6)) {
            MainUtil.e8(this, R.string.permission_granted);
        }
    }

    @Override // com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        this.W0 = true;
        super.onCreate(bundle);
        this.f1 = getApplicationContext();
        this.g1 = true;
        int intExtra = getIntent().getIntExtra("EXTRA_TYPE", -1);
        this.h1 = intExtra;
        if (intExtra == 7) {
            this.i1 = getIntent().getStringExtra("EXTRA_PATH");
            this.j1 = getIntent().getBooleanExtra("EXTRA_EXT", false);
        }
        o0(null, 26);
        o0(null, 27);
        Handler handler = this.O0;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.main.MainPermission.1
            /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
                jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:33:0x00c7
                	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1166)
                	at jadx.core.dex.visitors.regions.RegionMaker.processTryCatchBlocks(RegionMaker.java:1022)
                	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:55)
                */
            @Override // java.lang.Runnable
            public final void run() {
                /*
                    r6 = this;
                    com.mycompany.app.main.MainPermission r0 = com.mycompany.app.main.MainPermission.this
                    android.os.Handler r1 = r0.O0
                    if (r1 != 0) goto L8
                    goto Ld8
                L8:
                    int r1 = r0.h1
                    r2 = 1
                    if (r1 != 0) goto L1a
                    java.lang.String r1 = "android.permission.WRITE_EXTERNAL_STORAGE"
                    java.lang.String[] r1 = new java.lang.String[]{r1}
                    r3 = 20
                    androidx.core.app.ActivityCompat.h(r0, r1, r3)
                    goto Lc8
                L1a:
                    java.lang.String r3 = "android.permission.RECORD_AUDIO"
                    java.lang.String r4 = "android.permission.CAMERA"
                    if (r1 != r2) goto L2b
                    java.lang.String[] r1 = new java.lang.String[]{r4, r3}
                    r3 = 21
                    androidx.core.app.ActivityCompat.h(r0, r1, r3)
                    goto Lc8
                L2b:
                    r5 = 2
                    if (r1 != r5) goto L39
                    java.lang.String[] r1 = new java.lang.String[]{r4}
                    r3 = 22
                    androidx.core.app.ActivityCompat.h(r0, r1, r3)
                    goto Lc8
                L39:
                    r4 = 3
                    if (r1 != r4) goto L47
                    java.lang.String[] r1 = new java.lang.String[]{r3}
                    r3 = 23
                    androidx.core.app.ActivityCompat.h(r0, r1, r3)
                    goto Lc8
                L47:
                    r3 = 4
                    if (r1 != r3) goto L57
                    java.lang.String r1 = "android.permission.ACCESS_FINE_LOCATION"
                    java.lang.String[] r1 = new java.lang.String[]{r1}
                    r3 = 24
                    androidx.core.app.ActivityCompat.h(r0, r1, r3)
                    goto Lc8
                L57:
                    r3 = 5
                    if (r1 != r3) goto L6d
                    int r1 = android.os.Build.VERSION.SDK_INT
                    r3 = 33
                    if (r1 >= r3) goto L61
                    goto Lc7
                L61:
                    java.lang.String r1 = "android.permission.POST_NOTIFICATIONS"
                    java.lang.String[] r1 = new java.lang.String[]{r1}
                    r3 = 25
                    androidx.core.app.ActivityCompat.h(r0, r1, r3)
                    goto Lc8
                L6d:
                    r3 = 6
                    r4 = 26
                    java.lang.String r5 = "package:"
                    if (r1 != r3) goto L9b
                    int r1 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Throwable -> Lc7
                    if (r1 >= r4) goto L79
                    goto Lc7
                L79:
                    android.content.Intent r1 = new android.content.Intent     // Catch: java.lang.Throwable -> Lc7
                    java.lang.String r3 = "android.settings.PICTURE_IN_PICTURE_SETTINGS"
                    r1.<init>(r3)     // Catch: java.lang.Throwable -> Lc7
                    java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lc7
                    r3.<init>(r5)     // Catch: java.lang.Throwable -> Lc7
                    java.lang.String r5 = r0.getPackageName()     // Catch: java.lang.Throwable -> Lc7
                    r3.append(r5)     // Catch: java.lang.Throwable -> Lc7
                    java.lang.String r3 = r3.toString()     // Catch: java.lang.Throwable -> Lc7
                    android.net.Uri r3 = android.net.Uri.parse(r3)     // Catch: java.lang.Throwable -> Lc7
                    r1.setData(r3)     // Catch: java.lang.Throwable -> Lc7
                    r0.o0(r1, r4)     // Catch: java.lang.Throwable -> Lc7
                    goto Lc8
                L9b:
                    r3 = 7
                    if (r1 != r3) goto Lc7
                    int r1 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Throwable -> Lc7
                    if (r1 >= r4) goto La3
                    goto Lc7
                La3:
                    android.content.Intent r1 = new android.content.Intent     // Catch: java.lang.Throwable -> Lc7
                    java.lang.String r3 = "android.settings.MANAGE_UNKNOWN_APP_SOURCES"
                    r1.<init>(r3)     // Catch: java.lang.Throwable -> Lc7
                    java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lc7
                    r3.<init>(r5)     // Catch: java.lang.Throwable -> Lc7
                    java.lang.String r4 = r0.getPackageName()     // Catch: java.lang.Throwable -> Lc7
                    r3.append(r4)     // Catch: java.lang.Throwable -> Lc7
                    java.lang.String r3 = r3.toString()     // Catch: java.lang.Throwable -> Lc7
                    android.net.Uri r3 = android.net.Uri.parse(r3)     // Catch: java.lang.Throwable -> Lc7
                    r1.setData(r3)     // Catch: java.lang.Throwable -> Lc7
                    r3 = 27
                    r0.o0(r1, r3)     // Catch: java.lang.Throwable -> Lc7
                    goto Lc8
                Lc7:
                    r2 = 0
                Lc8:
                    r0.k1 = r2
                    if (r2 == 0) goto Ld0
                    com.mycompany.app.main.MainUtil.u7(r0)
                    goto Ld8
                Ld0:
                    int r1 = com.mycompany.app.soulbrowser.R.string.no_permission
                    com.mycompany.app.main.MainUtil.e8(r0, r1)
                    r0.finish()
                Ld8:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.main.MainPermission.AnonymousClass1.run():void");
            }
        });
    }

    @Override // com.mycompany.app.main.MainActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        this.f1 = null;
        this.i1 = null;
    }

    @Override // com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        super.onPause();
        if (isFinishing()) {
            MainApp.T1 = null;
        }
        if (this.l1) {
            this.l1 = false;
            MainUtil.y4(this, this.i1, "application/vnd.android.package-archive", false, this.j1);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public final void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        this.k1 = false;
        switch (i) {
            case 20:
            case 22:
            case ConnectionResult.API_DISABLED /* 23 */:
            case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
            case 25:
                if (iArr != null && iArr.length > 0 && iArr[0] == 0) {
                    MainUtil.e8(this, R.string.permission_granted);
                    return;
                } else {
                    MainUtil.e8(this, R.string.permission_denied);
                    return;
                }
            case 21:
                if (iArr != null && iArr.length > 1 && iArr[0] == 0 && iArr[1] == 0) {
                    MainUtil.e8(this, R.string.permission_granted);
                    return;
                } else {
                    MainUtil.e8(this, R.string.permission_denied);
                    return;
                }
            default:
                return;
        }
    }

    @Override // com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        if (this.g1) {
            this.g1 = false;
            return;
        }
        if (!this.k1) {
            finish();
        }
        this.k1 = false;
    }
}
