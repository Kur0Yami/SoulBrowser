package com.google.android.gms.internal.cast;

import android.util.Log;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
final class zzgk extends zzgj {
    @Override // com.google.android.gms.internal.cast.zzgj, com.google.android.gms.internal.cast.zzgf
    public final void U(Status status) {
        if (!status.isSuccess()) {
            Log.e("UsageReportingClientImp", "disconnect(): Could not unregister listener: status=".concat(String.valueOf(status)));
        }
    }
}
