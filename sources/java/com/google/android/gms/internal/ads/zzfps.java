package com.google.android.gms.internal.ads;

import android.net.ConnectivityManager;
import android.net.Network;
import j$.util.Objects;

/* loaded from: classes.dex */
final class zzfps extends ConnectivityManager.NetworkCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzfpu f7544a;

    public zzfps(zzfpu zzfpuVar) {
        Objects.requireNonNull(zzfpuVar);
        this.f7544a = zzfpuVar;
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onAvailable(Network network) {
        this.f7544a.b(true);
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onLost(Network network) {
        this.f7544a.b(false);
    }
}
