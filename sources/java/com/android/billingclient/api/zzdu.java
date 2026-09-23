package com.android.billingclient.api;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.android.billingclient.api.BillingResult;
import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
final class zzdu extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (intent != null && intent.hasExtra("RESPONSE_CODE")) {
            BillingResult.Builder a2 = BillingResult.a();
            a2.f2003a = intent.getIntExtra("RESPONSE_CODE", 0);
            String stringExtra = intent.getStringExtra("DEBUG_MESSAGE");
            if (stringExtra == null) {
                stringExtra = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
            a2.f2004c = stringExtra;
            a2.a();
            return;
        }
        com.google.android.gms.internal.play_billing.zzc.i("ProxyBillingBroadcastReceiver", "Null intent or intent missing response code!");
    }
}
