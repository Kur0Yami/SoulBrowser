package com.google.android.gms.internal.cast;

import android.net.ConnectivityManager;
import android.net.LinkProperties;
import android.net.Network;

/* loaded from: classes.dex */
final class zzeh extends ConnectivityManager.NetworkCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzek f9679a;

    public zzeh(zzek zzekVar) {
        this.f9679a = zzekVar;
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onAvailable(Network network) {
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onLinkPropertiesChanged(Network network, LinkProperties linkProperties) {
        this.f9679a.b(network, linkProperties);
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onLost(Network network) {
        zzek zzekVar = this.f9679a;
        synchronized (zzekVar.h) {
            try {
                zzek.l.b("the network is lost", new Object[0]);
                if (zzekVar.e.remove(network)) {
                    zzekVar.d.remove(network);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        zzekVar.c();
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onUnavailable() {
        zzek zzekVar = this.f9679a;
        synchronized (zzekVar.h) {
            zzek.l.b("all networks are unavailable.", new Object[0]);
            zzekVar.d.clear();
            zzekVar.e.clear();
        }
        zzekVar.c();
    }
}
