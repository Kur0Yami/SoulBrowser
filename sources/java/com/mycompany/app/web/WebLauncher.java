package com.mycompany.app.web;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;

/* loaded from: classes3.dex */
public class WebLauncher extends MainActivity {
    public static final /* synthetic */ int f1 = 0;

    @Override // com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        this.W0 = true;
        super.onCreate(bundle);
        m0(new Runnable() { // from class: com.mycompany.app.web.WebLauncher.1
            @Override // java.lang.Runnable
            public final void run() {
                WebLauncher webLauncher = WebLauncher.this;
                MainApp.u(webLauncher.getApplicationContext(), webLauncher.getResources());
                Handler handler = webLauncher.O0;
                if (handler != null && !webLauncher.isFinishing()) {
                    handler.post(new Runnable() { // from class: com.mycompany.app.web.WebLauncher.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            String c3;
                            String str;
                            AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                            WebLauncher webLauncher2 = WebLauncher.this;
                            if (webLauncher2.O0 != null && !webLauncher2.isFinishing()) {
                                WebLauncher webLauncher3 = WebLauncher.this;
                                int i = WebLauncher.f1;
                                webLauncher3.getClass();
                                try {
                                    String action = webLauncher3.getIntent().getAction();
                                    boolean booleanExtra = webLauncher3.getIntent().getBooleanExtra("EXTRA_SOUL", false);
                                    if ("android.intent.action.WEB_SEARCH".equals(action)) {
                                        webLauncher3.u0(MainUtil.q3(webLauncher3.getIntent().getStringExtra("query")), false, booleanExtra);
                                        return;
                                    }
                                    if ("android.intent.action.SEND".equals(action)) {
                                        if ("text/plain".equals(webLauncher3.getIntent().getType())) {
                                            str = webLauncher3.getIntent().getStringExtra("android.intent.extra.TEXT");
                                            if (str != null) {
                                                int length = str.length();
                                                int i2 = 8;
                                                if (length >= 8) {
                                                    int indexOf = str.indexOf("https://");
                                                    if (indexOf == -1) {
                                                        str.indexOf("http://");
                                                        if (indexOf != -1) {
                                                            i2 = 7;
                                                        }
                                                    }
                                                    int i3 = i2 + indexOf;
                                                    if (i3 < length) {
                                                        int indexOf2 = str.indexOf(32, i3);
                                                        if (indexOf2 > indexOf && indexOf2 < length) {
                                                            str = str.substring(indexOf, indexOf2);
                                                        }
                                                        str = str.substring(indexOf);
                                                    }
                                                }
                                            }
                                        } else {
                                            str = null;
                                        }
                                        webLauncher3.u0(MainUtil.q4(null, str), false, booleanExtra);
                                        return;
                                    }
                                    Uri data = webLauncher3.getIntent().getData();
                                    if (data != null) {
                                        c3 = data.toString();
                                    } else {
                                        c3 = WebViewActivity.c3();
                                    }
                                    webLauncher3.u0(c3, true, booleanExtra);
                                } catch (Exception unused) {
                                    webLauncher3.u0(WebViewActivity.c3(), true, false);
                                }
                            }
                        }
                    });
                }
            }
        });
    }

    public final void u0(String str, boolean z, boolean z2) {
        Context applicationContext = getApplicationContext();
        Intent o4 = MainUtil.o4(applicationContext);
        o4.putExtra("EXTRA_PATH", str);
        if (z) {
            o4.putExtra("EXTRA_EXT", true);
        }
        if (!z2 && MainUtil.z6()) {
            MainApp p = MainApp.p(applicationContext);
            if (p != null) {
                p.p = true;
            }
            o4.putExtra("EXTRA_LAUNCH_LOCK", true);
        }
        o4.addFlags(67108864);
        startActivity(o4);
        finish();
    }
}
