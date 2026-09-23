package com.google.android.gms.internal.ads;

import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;

/* loaded from: classes.dex */
final class zzgmk extends ConnectivityManager.NetworkCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzgmm f8127a;

    public zzgmk(zzgmm zzgmmVar) {
        this.f8127a = zzgmmVar;
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
        zzgmm zzgmmVar = this.f8127a;
        synchronized (zzgmmVar) {
            zzgmmVar.f8130c = networkCapabilities;
        }
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onLost(Network network) {
        zzgmm zzgmmVar = this.f8127a;
        synchronized (zzgmmVar) {
            zzgmmVar.f8130c = null;
        }
    }
}
