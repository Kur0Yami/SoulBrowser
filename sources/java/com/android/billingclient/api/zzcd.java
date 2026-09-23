package com.android.billingclient.api;

import android.os.Bundle;
import com.google.android.gms.internal.play_billing.zzje;
import com.google.android.gms.internal.play_billing.zzjl;

/* loaded from: classes.dex */
final class zzcd extends com.google.android.gms.internal.play_billing.zzal {
    @Override // com.google.android.gms.internal.play_billing.zzam
    public final void b(Bundle bundle) {
        zzjl zzjlVar = zzjl.BROADCAST_ACTION_UNSPECIFIED;
        if (bundle != null) {
            int a2 = com.google.android.gms.internal.play_billing.zzc.a("BillingClient", bundle);
            BillingResult a3 = zzdb.a(a2, com.google.android.gms.internal.play_billing.zzc.f("BillingClient", bundle));
            if (a2 != 0) {
                com.google.android.gms.internal.play_billing.zzc.i("BillingClient", "isExternalOfferAvailableAsync() failed. Response code: " + a2);
                zzcx.b(zzje.BILLING_RESULT_RECEIVED_FROM_PHONESKY, 23, a3, null, zzjlVar);
                throw null;
            }
            throw null;
        }
        zzcx.b(zzje.NULL_BUNDLE_FROM_IS_EXTERNAL_PAYMENT_AVAILABLE_SERVICE_CALL, 23, zzdb.h, null, zzjlVar);
        throw null;
    }
}
