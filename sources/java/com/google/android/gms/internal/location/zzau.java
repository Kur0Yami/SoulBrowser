package com.google.android.gms.internal.location;

import android.location.Location;
import com.google.android.gms.common.api.internal.ListenerHolder;

/* loaded from: classes3.dex */
final class zzau extends com.google.android.gms.location.zzbc {
    public final ListenerHolder f;

    public zzau(ListenerHolder listenerHolder) {
        super("com.google.android.gms.location.ILocationListener");
        this.f = listenerHolder;
    }

    @Override // com.google.android.gms.location.zzbd
    public final synchronized void T(Location location) {
        this.f.notifyListener(new Object());
    }

    public final synchronized void zzc() {
        this.f.clear();
    }
}
