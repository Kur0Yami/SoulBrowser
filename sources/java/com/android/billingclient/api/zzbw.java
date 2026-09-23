package com.android.billingclient.api;

import android.os.Bundle;
import com.google.android.gms.internal.play_billing.zzje;
import com.google.android.gms.internal.play_billing.zzjl;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
final class zzbw extends com.google.android.gms.internal.play_billing.zzw {
    @Override // com.google.android.gms.internal.play_billing.zzx
    public final void b(Bundle bundle) {
        zzjl zzjlVar = zzjl.BROADCAST_ACTION_UNSPECIFIED;
        if (bundle != null) {
            int a2 = com.google.android.gms.internal.play_billing.zzc.a("BillingClient", bundle);
            BillingResult a3 = zzdb.a(a2, com.google.android.gms.internal.play_billing.zzc.f("BillingClient", bundle));
            if (a2 != 0) {
                com.google.android.gms.internal.play_billing.zzc.i("BillingClient", "createAlternativeBillingOnlyReportingDetailsAsync() failed. Response code: " + a2);
                zzcx.b(zzje.BILLING_RESULT_RECEIVED_FROM_PHONESKY, 15, a3, null, zzjlVar);
                throw null;
            }
            try {
                new JSONObject(bundle.getString("CREATE_ALTERNATIVE_BILLING_ONLY_REPORTING_DETAILS")).optString("externalTransactionToken");
                throw null;
            } catch (JSONException e) {
                com.google.android.gms.internal.play_billing.zzc.j("BillingClient", "Error when parsing invalid alternative billing only reporting details. \n Exception: ", e);
                zzcx.b(zzje.ERROR_DECODING_ALTERNATIVE_BILLING_ONLY_REPORTING_DETAILS, 15, zzdb.h, null, zzjlVar);
                throw null;
            }
        }
        zzcx.b(zzje.NULL_BUNDLE_FROM_CREATE_ALTERNATIVE_BILLING_ONLY_TOKEN_SERVICE_CALL, 15, zzdb.h, null, zzjlVar);
        throw null;
    }
}
