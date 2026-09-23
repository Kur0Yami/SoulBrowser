package com.google.android.gms.internal.play_billing;

import android.os.SystemClock;

/* loaded from: classes3.dex */
final class zzbc extends zzbo {
    @Override // com.google.android.gms.internal.play_billing.zzbo
    public final long a() {
        return SystemClock.elapsedRealtime() * 1000000;
    }
}
