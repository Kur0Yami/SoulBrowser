package com.mycompany.app.main;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import com.mycompany.app.dialog.DialogOpenType;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.video.VideoActivity;

/* loaded from: classes3.dex */
public class MainLauncher extends MainActivity {
    public static final /* synthetic */ int h1 = 0;
    public Intent f1;
    public DialogOpenType g1;

    public static void u0(MainLauncher mainLauncher) {
        String str;
        Intent intent = mainLauncher.f1;
        mainLauncher.f1 = null;
        if (intent != null) {
            String stringExtra = intent.getStringExtra("EXTRA_NOTI");
            if (TextUtils.isEmpty(stringExtra)) {
                MainUtil.e8(mainLauncher, R.string.not_supported);
                mainLauncher.finish();
                return;
            }
            String stringExtra2 = intent.getStringExtra("EXTRA_TYPE");
            if (Build.VERSION.SDK_INT >= 26) {
                Context applicationContext = mainLauncher.getApplicationContext();
                MainApp p = MainApp.p(applicationContext);
                if (p == null) {
                    str = null;
                } else {
                    str = p.i;
                }
                if (!TextUtils.isEmpty(str)) {
                    try {
                        Intent intent2 = new Intent(applicationContext, (Class<?>) VideoActivity.class);
                        intent2.putExtra("EXTRA_NOTI", stringExtra);
                        if (!TextUtils.isEmpty(stringExtra2)) {
                            intent2.putExtra("EXTRA_TYPE", stringExtra2);
                        }
                        intent2.addFlags(537001984);
                        mainLauncher.startActivity(intent2);
                        mainLauncher.finish();
                        return;
                    } catch (Exception unused) {
                    }
                }
            }
            if (MainUtil.d(mainLauncher, stringExtra, stringExtra2, false, false)) {
                mainLauncher.finish();
                return;
            }
            DialogOpenType dialogOpenType = mainLauncher.g1;
            if (dialogOpenType == null) {
                if (dialogOpenType != null) {
                    dialogOpenType.dismiss();
                    mainLauncher.g1 = null;
                }
                int i = R.style.DialogExpandTheme;
                if (mainLauncher.h0()) {
                    i = 0;
                }
                DialogOpenType dialogOpenType2 = new DialogOpenType(mainLauncher, i, stringExtra, false);
                mainLauncher.g1 = dialogOpenType2;
                dialogOpenType2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.main.MainLauncher.3
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        int i2 = MainLauncher.h1;
                        MainLauncher mainLauncher2 = MainLauncher.this;
                        DialogOpenType dialogOpenType3 = mainLauncher2.g1;
                        if (dialogOpenType3 != null) {
                            dialogOpenType3.dismiss();
                            mainLauncher2.g1 = null;
                        }
                        mainLauncher2.finish();
                    }
                });
                if (MainConst.e || i != 0) {
                    mainLauncher.g1.x(0, 0, false, false, true);
                }
            }
        }
    }

    @Override // com.mycompany.app.main.MainActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        DialogOpenType dialogOpenType = this.g1;
        if (dialogOpenType != null) {
            dialogOpenType.dismiss();
            this.g1 = null;
        }
    }

    @Override // com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        this.W0 = true;
        super.onCreate(bundle);
        this.f1 = getIntent();
        Handler handler = this.O0;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.main.MainLauncher.1
            @Override // java.lang.Runnable
            public final void run() {
                MainLauncher.u0(MainLauncher.this);
            }
        });
    }

    @Override // com.mycompany.app.main.MainActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        this.f1 = null;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        this.f1 = intent;
        Handler handler = this.O0;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.main.MainLauncher.2
            @Override // java.lang.Runnable
            public final void run() {
                MainLauncher.u0(MainLauncher.this);
            }
        });
    }

    @Override // com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        super.onPause();
        DialogOpenType dialogOpenType = this.g1;
        if (dialogOpenType != null) {
            dialogOpenType.dismiss();
            this.g1 = null;
        }
    }
}
