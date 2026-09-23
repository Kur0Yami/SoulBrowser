package com.bumptech.glide.manager;

import android.content.Context;
import com.bumptech.glide.manager.ConnectivityMonitor;

/* loaded from: classes.dex */
final class DefaultConnectivityMonitor implements ConnectivityMonitor {

    /* renamed from: c, reason: collision with root package name */
    public final Context f2419c;
    public final ConnectivityMonitor.ConnectivityListener f;

    public DefaultConnectivityMonitor(Context context, ConnectivityMonitor.ConnectivityListener connectivityListener) {
        this.f2419c = context.getApplicationContext();
        this.f = connectivityListener;
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public final void h() {
        SingletonConnectivityReceiver a2 = SingletonConnectivityReceiver.a(this.f2419c);
        ConnectivityMonitor.ConnectivityListener connectivityListener = this.f;
        synchronized (a2) {
            a2.b.remove(connectivityListener);
            if (a2.f2430c && a2.b.isEmpty()) {
                a2.f2429a.b();
                a2.f2430c = false;
            }
        }
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public final void m() {
        SingletonConnectivityReceiver a2 = SingletonConnectivityReceiver.a(this.f2419c);
        ConnectivityMonitor.ConnectivityListener connectivityListener = this.f;
        synchronized (a2) {
            a2.b.add(connectivityListener);
            if (!a2.f2430c && !a2.b.isEmpty()) {
                a2.f2430c = a2.f2429a.a();
            }
        }
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public final void onDestroy() {
    }
}
