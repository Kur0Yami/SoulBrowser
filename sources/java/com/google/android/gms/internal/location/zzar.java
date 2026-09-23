package com.google.android.gms.internal.location;

import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationResult;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzar extends com.google.android.gms.location.zzaz {
    public final ListenerHolder f;

    public zzar(ListenerHolder listenerHolder) {
        super("com.google.android.gms.location.ILocationCallback");
        this.f = listenerHolder;
    }

    @Override // com.google.android.gms.location.zzba
    public final void i0(LocationResult locationResult) {
        this.f.notifyListener(new zzap(locationResult));
    }

    @Override // com.google.android.gms.location.zzba
    public final void r1(LocationAvailability locationAvailability) {
        this.f.notifyListener(new Object());
    }

    public final synchronized void zzc() {
        this.f.clear();
    }
}
