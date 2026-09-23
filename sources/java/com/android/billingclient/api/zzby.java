package com.android.billingclient.api;

import android.app.PendingIntent;
import android.os.Bundle;
import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
final class zzby extends com.google.android.gms.internal.play_billing.zzad {
    @Override // com.google.android.gms.internal.play_billing.zzae
    public final void b(Bundle bundle) {
        bundle.getClass();
        if (bundle.containsKey("RESPONSE_CODE")) {
            int a2 = com.google.android.gms.internal.play_billing.zzc.a("BillingClient", bundle);
            if (a2 == 0) {
                if (((PendingIntent) bundle.getParcelable("ALTERNATIVE_BILLING_ONLY_DIALOG_INTENT")) == null) {
                    com.google.android.gms.internal.play_billing.zzc.h("BillingClient", "User has acknowledged the alternative billing only dialog before.");
                    throw null;
                }
                try {
                    throw null;
                } catch (RuntimeException e) {
                    com.google.android.gms.internal.play_billing.zzc.j("BillingClient", "Runtime error while launching intent for alternative billing only dialog.", e);
                    Bundle bundle2 = new Bundle();
                    bundle2.putInt("RESPONSE_CODE", 6);
                    bundle2.putString("DEBUG_MESSAGE", "An internal error occurred.");
                    bundle2.putInt("INTERNAL_LOG_ERROR_REASON", 75);
                    String name = e.getClass().getName();
                    String message = e.getMessage();
                    if (message == null) {
                        message = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                    }
                    bundle2.putString("INTERNAL_LOG_ERROR_ADDITIONAL_DETAILS", name + ": " + message);
                    throw null;
                }
            }
            com.google.android.gms.internal.play_billing.zzc.i("BillingClient", "Unable to launch intent for alternative billing only dialog" + a2);
            throw null;
        }
        com.google.android.gms.internal.play_billing.zzc.i("BillingClient", "Response bundle doesn't contain a response code");
        throw null;
    }
}
