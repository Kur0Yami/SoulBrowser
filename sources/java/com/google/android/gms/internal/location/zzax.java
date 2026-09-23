package com.google.android.gms.internal.location;

import android.util.Log;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzax extends zzaj {

    /* renamed from: c, reason: collision with root package name */
    public BaseImplementation.ResultHolder f10353c;

    public zzax(BaseImplementation.ResultHolder resultHolder) {
        this.f10353c = resultHolder;
    }

    @Override // com.google.android.gms.internal.location.zzak
    public final void f(int i) {
        f2(i);
    }

    public final void f2(int i) {
        if (this.f10353c == null) {
            Log.wtf("LocationClientImpl", "onRemoveGeofencesResult called multiple times", new Exception());
            return;
        }
        if ((i < 0 || i > 1) && (i < 1000 || i >= 1006)) {
            i = 1;
        }
        if (i == 1) {
            i = 13;
        }
        this.f10353c.setResult(new Status(i));
        this.f10353c = null;
    }

    @Override // com.google.android.gms.internal.location.zzak
    public final void zzb(int i) {
        Log.wtf("LocationClientImpl", "Unexpected call to onAddGeofencesResult", new Exception());
    }

    @Override // com.google.android.gms.internal.location.zzak
    public final void zzc(int i) {
        f2(i);
    }
}
