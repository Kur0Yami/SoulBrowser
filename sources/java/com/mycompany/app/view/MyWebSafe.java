package com.mycompany.app.view;

import android.content.Context;
import android.os.Build;
import android.webkit.WebView;

/* loaded from: classes3.dex */
public class MyWebSafe extends WebView {
    public MyWebSafe(Context context) {
        super(context);
        try {
            if (Build.VERSION.SDK_INT >= 26) {
                setImportantForAutofill(8);
            } else {
                setImportantForAccessibility(4);
            }
        } catch (Throwable unused) {
        }
    }
}
