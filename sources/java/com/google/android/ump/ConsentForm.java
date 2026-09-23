package com.google.android.ump;

import com.mycompany.app.web.WebViewActivity;

/* loaded from: classes3.dex */
public interface ConsentForm {

    /* loaded from: classes3.dex */
    public interface OnConsentFormDismissedListener {
        void a();
    }

    void a(WebViewActivity webViewActivity, OnConsentFormDismissedListener onConsentFormDismissedListener);
}
