package com.google.android.gms.internal.ads;

import android.net.ConnectivityManager;
import android.net.Network;
import j$.util.Objects;

/* loaded from: classes.dex */
final class zzfqg extends ConnectivityManager.NetworkCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzfqh f7559a;

    public zzfqg(zzfqh zzfqhVar) {
        Objects.requireNonNull(zzfqhVar);
        this.f7559a = zzfqhVar;
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onAvailable(Network network) {
        this.f7559a.c(true);
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onLost(Network network) {
        this.f7559a.c(false);
    }
}
