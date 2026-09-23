package com.mycompany.app.main;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import com.mycompany.app.pref.PrefTts;

/* loaded from: classes3.dex */
public class MainSwitchBlack extends MainActivity {
    @Override // com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        this.W0 = true;
        super.onCreate(bundle);
        String stringExtra = getIntent().getStringExtra("EXTRA_PATH");
        try {
            Intent o4 = MainUtil.o4(this);
            if (!TextUtils.isEmpty(stringExtra)) {
                o4.putExtra("EXTRA_PATH", stringExtra);
                if (PrefTts.w && stringExtra.equals("short_new_tab")) {
                    o4.putExtra("EXTRA_KEYPAD", true);
                }
            }
            startActivity(o4);
        } catch (Exception unused) {
        }
        finish();
    }
}
