package com.android.billingclient.api;

import android.os.Bundle;
import com.android.billingclient.api.BillingResult;
import com.google.android.gms.internal.play_billing.zzje;
import com.google.android.gms.internal.play_billing.zzjl;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
final class zzbz extends com.google.android.gms.internal.play_billing.zzaf {
    @Override // com.google.android.gms.internal.play_billing.zzag
    public final void b(Bundle bundle) {
        zzjl zzjlVar = zzjl.BROADCAST_ACTION_UNSPECIFIED;
        if (bundle != null) {
            int a2 = com.google.android.gms.internal.play_billing.zzc.a("BillingClient", bundle);
            String f = com.google.android.gms.internal.play_billing.zzc.f("BillingClient", bundle);
            BillingResult.Builder a3 = BillingResult.a();
            a3.f2003a = a2;
            a3.f2004c = f;
            if (a2 == 0) {
                if (!bundle.containsKey("BILLING_CONFIG")) {
                    com.google.android.gms.internal.play_billing.zzc.i("BillingClient", "getBillingConfig() returned a bundle with neither an error nor a billing config response");
                    a3.f2003a = 6;
                    zzcx.b(zzje.MISSING_BILLING_CONFIG_IN_GET_BILLING_CONFIG_RESPONSE, 13, a3.a(), null, zzjlVar);
                    throw null;
                }
                try {
                    new JSONObject(bundle.getString("BILLING_CONFIG")).optString("countryCode");
                    a3.a();
                    throw null;
                } catch (JSONException e) {
                    com.google.android.gms.internal.play_billing.zzc.j("BillingClient", "Got a JSON exception trying to decode BillingConfig. \n Exception: ", e);
                    zzcx.b(zzje.ERROR_DECODING_BILLING_CONFIG_DATA, 13, zzdb.h, null, zzjlVar);
                    throw null;
                }
            }
            com.google.android.gms.internal.play_billing.zzc.i("BillingClient", "getBillingConfig() failed. Response code: " + a2);
            zzcx.b(zzje.BILLING_RESULT_RECEIVED_FROM_PHONESKY, 13, a3.a(), null, zzjlVar);
            throw null;
        }
        zzcx.b(zzje.NULL_BUNDLE_FROM_GET_BILLING_CONFIG_SERVICE_CALL, 13, zzdb.h, null, zzjlVar);
        throw null;
    }
}
