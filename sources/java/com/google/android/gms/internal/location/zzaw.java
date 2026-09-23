package com.google.android.gms.internal.location;

import android.util.Log;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzaw extends zzaj {

    /* renamed from: c, reason: collision with root package name */
    public BaseImplementation.ResultHolder f10352c;

    @Override // com.google.android.gms.internal.location.zzak
    public final void f(int i) {
        Log.wtf("LocationClientImpl", "Unexpected call to onRemoveGeofencesByPendingIntentResult", new Exception());
    }

    @Override // com.google.android.gms.internal.location.zzak
    public final void zzb(int i) {
        if (this.f10352c == null) {
            Log.wtf("LocationClientImpl", "onAddGeofenceResult called multiple times", new Exception());
            return;
        }
        if ((i < 0 || i > 1) && (i < 1000 || i >= 1006)) {
            i = 1;
        }
        if (i == 1) {
            i = 13;
        }
        this.f10352c.setResult(new Status(i));
        this.f10352c = null;
    }

    @Override // com.google.android.gms.internal.location.zzak
    public final void zzc(int i) {
        Log.wtf("LocationClientImpl", "Unexpected call to onRemoveGeofencesByRequestIdsResult", new Exception());
    }
}
