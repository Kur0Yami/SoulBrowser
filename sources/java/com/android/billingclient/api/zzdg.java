package com.android.billingclient.api;

import android.os.Bundle;
import com.android.billingclient.api.BillingResult;
import com.google.android.gms.internal.play_billing.zzfh;
import com.google.android.gms.internal.play_billing.zzje;
import com.google.android.gms.internal.play_billing.zzjl;

/* loaded from: classes.dex */
final class zzdg {
    public static BillingResult a(Bundle bundle, String str, int i, int i2) {
        if (bundle.containsKey("BILLING_RESULT")) {
            try {
                byte[] byteArray = bundle.getByteArray("BILLING_RESULT");
                if (byteArray != null) {
                    com.google.android.gms.internal.play_billing.zzdw r = com.google.android.gms.internal.play_billing.zzdw.r(byteArray, zzfh.a());
                    BillingResult.Builder a2 = BillingResult.a();
                    a2.f2003a = r.q();
                    a2.f2004c = r.s();
                    BillingResult a3 = a2.a();
                    if (a3.f2001a == 0) {
                        if (bundle.containsKey("RESPONSE_DATA")) {
                            return a3;
                        }
                        com.google.android.gms.internal.play_billing.zzc.i(str, "delegateToBackendAsync returned a bundle with neither an error nor response data");
                        zzdd.a(zzje.MISSING_RESPONSE_DATA_IN_DELEGATE_TO_BACKEND_RESPONSE, zzdb.h, i, i2);
                        throw null;
                    }
                    zzdd.a(zzje.BILLING_RESULT_RECEIVED_FROM_PHONESKY, a3, i, i2);
                    throw null;
                }
                throw new Exception("Billing result is null");
            } catch (Exception e) {
                com.google.android.gms.internal.play_billing.zzc.i(str, "Failed parsing BillingResult.");
                zzcx.b(zzje.ERROR_DECODING_DELEGATE_TO_BACKEND_BILLING_RESULT, i, zzdb.h, zzcx.a(e), zzjl.BROADCAST_ACTION_UNSPECIFIED);
                throw null;
            }
        }
        com.google.android.gms.internal.play_billing.zzc.i(str, "delegateToBackendAsync does not contain a billing result in the response");
        zzdd.a(zzje.MISSING_BILLING_RESULT_IN_DELEGATE_TO_BACKEND_RESPONSE, zzdb.h, i, i2);
        throw null;
    }
}
