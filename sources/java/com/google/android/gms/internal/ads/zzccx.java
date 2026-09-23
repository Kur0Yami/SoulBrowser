package com.google.android.gms.internal.ads;

import android.net.ConnectivityManager;
import android.net.Network;
import j$.util.Objects;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzccx extends ConnectivityManager.NetworkCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzcda f5047a;

    public zzccx(zzcda zzcdaVar) {
        Objects.requireNonNull(zzcdaVar);
        this.f5047a = zzcdaVar;
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onAvailable(Network network) {
        this.f5047a.p.set(true);
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onLost(Network network) {
        this.f5047a.p.set(false);
    }
}
