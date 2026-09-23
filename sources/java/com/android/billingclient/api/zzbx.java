package com.android.billingclient.api;

import android.os.Bundle;
import com.google.android.gms.internal.play_billing.zzje;
import com.google.android.gms.internal.play_billing.zzjl;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
final class zzbx extends com.google.android.gms.internal.play_billing.zzy {
    @Override // com.google.android.gms.internal.play_billing.zzz
    public final void b(Bundle bundle) {
        zzjl zzjlVar = zzjl.BROADCAST_ACTION_UNSPECIFIED;
        if (bundle != null) {
            int a2 = com.google.android.gms.internal.play_billing.zzc.a("BillingClient", bundle);
            BillingResult a3 = zzdb.a(a2, com.google.android.gms.internal.play_billing.zzc.f("BillingClient", bundle));
            if (a2 != 0) {
                com.google.android.gms.internal.play_billing.zzc.i("BillingClient", "createExternalOfferReportingDetailsAsync() failed. Response code: " + a2);
                zzcx.b(zzje.BILLING_RESULT_RECEIVED_FROM_PHONESKY, 24, a3, null, zzjlVar);
                throw null;
            }
            try {
                new JSONObject(bundle.getString("CREATE_EXTERNAL_PAYMENT_REPORTING_DETAILS")).optString("externalTransactionToken");
                throw null;
            } catch (JSONException e) {
                com.google.android.gms.internal.play_billing.zzc.j("BillingClient", "Error when parsing invalid external offer reporting details. \n Exception: ", e);
                zzcx.b(zzje.ERROR_DECODING_EXTERNAL_OFFER_REPORTING_DETAILS, 24, zzdb.h, null, zzjlVar);
                throw null;
            }
        }
        zzcx.b(zzje.NULL_BUNDLE_FROM_CREATE_EXTERNAL_PAYMENT_REPORTING_DETAILS_SERVICE_CALL, 24, zzdb.h, null, zzjlVar);
        throw null;
    }
}
