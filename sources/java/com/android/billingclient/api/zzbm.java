package com.android.billingclient.api;

import android.os.Bundle;
import android.os.ResultReceiver;

/* loaded from: classes.dex */
final class zzbm extends ResultReceiver {
    @Override // android.os.ResultReceiver
    public final void onReceiveResult(int i, Bundle bundle) {
        int i2 = com.google.android.gms.internal.play_billing.zzc.f11463a;
        if (bundle != null) {
            bundle.getInt("IN_APP_MESSAGE_RESPONSE_CODE", 0);
            bundle.getString("IN_APP_MESSAGE_PURCHASE_TOKEN");
        }
        throw null;
    }
}
