package com.google.android.gms.internal.location;

import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.location.LocationCallback;
import com.google.android.gms.location.LocationResult;

/* loaded from: classes3.dex */
final class zzap implements ListenerHolder.Notifier<LocationCallback> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ LocationResult f10349a;

    public zzap(LocationResult locationResult) {
        this.f10349a = locationResult;
    }

    @Override // com.google.android.gms.common.api.internal.ListenerHolder.Notifier
    public final /* bridge */ /* synthetic */ void notifyListener(LocationCallback locationCallback) {
        locationCallback.a(this.f10349a);
    }

    @Override // com.google.android.gms.common.api.internal.ListenerHolder.Notifier
    public final void onNotifyListenerFailed() {
    }
}
