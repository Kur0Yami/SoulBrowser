package com.mycompany.app.web;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefSync;

/* loaded from: classes3.dex */
public class WebShortTab extends MainActivity {
    @Override // com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        this.W0 = true;
        super.onCreate(bundle);
        boolean equals = "com.mycompany.app.soulbrowser.ACTION_TAB_SECRET".equals(getIntent().getAction());
        if (PrefSync.k == equals) {
            Handler handler = this.O0;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.web.WebShortTab.1
                @Override // java.lang.Runnable
                public final void run() {
                    WebShortcut.u0(WebShortTab.this, "short_new_tab", false);
                }
            });
            return;
        }
        PrefSync.k = equals;
        m0(new Runnable() { // from class: com.mycompany.app.web.WebShortTab.2
            @Override // java.lang.Runnable
            public final void run() {
                WebShortTab webShortTab = WebShortTab.this;
                Context applicationContext = webShortTab.getApplicationContext();
                PrefSync.u(applicationContext);
                if (MainConst.f16452a) {
                    MainUtil.d7(webShortTab, "short_new_tab", false);
                    return;
                }
                if (!PrefSync.k) {
                    MainUtil.Y4(applicationContext);
                }
                Handler handler2 = webShortTab.O0;
                if (handler2 == null) {
                    return;
                }
                handler2.post(new Runnable() { // from class: com.mycompany.app.web.WebShortTab.2.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        WebShortcut.u0(WebShortTab.this, "short_new_tab", false);
                    }
                });
            }
        });
    }
}
