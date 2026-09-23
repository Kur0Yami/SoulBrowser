package com.android.billingclient.api;

import android.os.Bundle;
import android.os.ResultReceiver;
import com.android.billingclient.api.BillingResult;
import com.google.android.gms.internal.play_billing.zzje;
import com.google.android.gms.internal.play_billing.zzjl;

/* loaded from: classes.dex */
final class zzbn extends ResultReceiver {
    @Override // android.os.ResultReceiver
    public final void onReceiveResult(int i, Bundle bundle) {
        zzje zzjeVar;
        BillingResult.Builder a2 = BillingResult.a();
        a2.f2003a = i;
        if (i != 0) {
            if (bundle != null) {
                a2.f2004c = com.google.android.gms.internal.play_billing.zzc.f("BillingClient", bundle);
                int i2 = bundle.getInt("INTERNAL_LOG_ERROR_REASON");
                if (i2 != 0) {
                    zzjeVar = zzje.a(i2);
                } else {
                    zzjeVar = zzje.BILLING_RESULT_RECEIVED_FROM_PHONESKY;
                }
                BillingResult a3 = a2.a();
                String string = bundle.getString("INTERNAL_LOG_ERROR_ADDITIONAL_DETAILS");
                int i3 = zzcx.f2062a;
                zzcx.b(zzjeVar, 16, a3, string, zzjl.BROADCAST_ACTION_UNSPECIFIED);
                throw null;
            }
            BillingResult billingResult = zzdb.f2064a;
            throw null;
        }
        a2.a();
        throw null;
    }
}
