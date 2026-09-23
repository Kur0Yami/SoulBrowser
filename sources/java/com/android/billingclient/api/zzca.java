package com.android.billingclient.api;

import android.app.PendingIntent;
import android.os.Bundle;
import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
final class zzca extends com.google.android.gms.internal.play_billing.zzah {
    @Override // com.google.android.gms.internal.play_billing.zzai
    public final void b(Bundle bundle) {
        bundle.getClass();
        if (bundle.containsKey("RESPONSE_CODE")) {
            int a2 = com.google.android.gms.internal.play_billing.zzc.a("BillingClient", bundle);
            if (a2 == 0) {
                if (((PendingIntent) bundle.getParcelable("EXTERNAL_PAYMENT_DIALOG_INTENT")) == null) {
                    com.google.android.gms.internal.play_billing.zzc.i("BillingClient", "The PendingIntent for the external offer dialog is null");
                    Bundle bundle2 = new Bundle();
                    bundle2.putInt("RESPONSE_CODE", 6);
                    bundle2.putString("DEBUG_MESSAGE", "An internal error occurred.");
                    throw null;
                }
                try {
                    throw null;
                } catch (RuntimeException e) {
                    com.google.android.gms.internal.play_billing.zzc.j("BillingClient", "Runtime error while launching intent for the external offer dialog.", e);
                    Bundle bundle3 = new Bundle();
                    bundle3.putInt("RESPONSE_CODE", 6);
                    bundle3.putString("DEBUG_MESSAGE", "An internal error occurred.");
                    bundle3.putInt("INTERNAL_LOG_ERROR_REASON", 98);
                    String name = e.getClass().getName();
                    String message = e.getMessage();
                    if (message == null) {
                        message = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                    }
                    bundle3.putString("INTERNAL_LOG_ERROR_ADDITIONAL_DETAILS", name + ": " + message);
                    throw null;
                }
            }
            com.google.android.gms.internal.play_billing.zzc.i("BillingClient", "Unable to launch intent for external offer dialog" + a2);
            throw null;
        }
        com.google.android.gms.internal.play_billing.zzc.i("BillingClient", "Response bundle doesn't contain a response code");
        throw null;
    }
}
