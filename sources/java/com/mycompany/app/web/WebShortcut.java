package com.mycompany.app.web;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefTts;

/* loaded from: classes3.dex */
public class WebShortcut extends MainActivity {
    public String f1;

    public static void u0(Activity activity, String str, boolean z) {
        activity.finishAffinity();
        Intent o4 = MainUtil.o4(activity);
        o4.putExtra("EXTRA_PATH", str);
        o4.putExtra("EXTRA_START", z);
        if (PrefTts.w) {
            o4.putExtra("EXTRA_KEYPAD", true);
        }
        if (MainUtil.z6()) {
            MainApp p = MainApp.p(activity);
            if (p != null) {
                p.p = true;
            }
            o4.putExtra("EXTRA_LAUNCH_LOCK", true);
        }
        activity.startActivity(o4);
    }

    @Override // com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        this.W0 = true;
        super.onCreate(bundle);
        Uri data = getIntent().getData();
        if (data != null) {
            this.f1 = data.toString();
        } else {
            this.f1 = WebViewActivity.c3();
        }
        Handler handler = this.O0;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.web.WebShortcut.1
            @Override // java.lang.Runnable
            public final void run() {
                WebShortcut webShortcut = WebShortcut.this;
                WebShortcut.u0(webShortcut, webShortcut.f1, true);
            }
        });
    }

    @Override // com.mycompany.app.main.MainActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        this.f1 = null;
    }
}
