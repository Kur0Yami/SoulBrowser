package androidx.work.impl.constraints.trackers;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.os.Build;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.work.Logger;
import androidx.work.impl.constraints.NetworkState;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;

@RestrictTo
/* loaded from: classes.dex */
public class NetworkStateTracker extends ConstraintTracker<NetworkState> {
    public static final String j = Logger.e("NetworkStateTracker");
    public final ConnectivityManager g;
    public final NetworkStateCallback h;
    public final NetworkStateBroadcastReceiver i;

    /* loaded from: classes.dex */
    public class NetworkStateBroadcastReceiver extends BroadcastReceiver {
        public NetworkStateBroadcastReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            if (intent != null && intent.getAction() != null && intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE")) {
                Logger.c().a(NetworkStateTracker.j, "Network broadcast received", new Throwable[0]);
                NetworkStateTracker networkStateTracker = NetworkStateTracker.this;
                networkStateTracker.c(networkStateTracker.f());
            }
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public class NetworkStateCallback extends ConnectivityManager.NetworkCallback {
        public NetworkStateCallback() {
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public final void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
            Logger.c().a(NetworkStateTracker.j, "Network capabilities changed: " + networkCapabilities, new Throwable[0]);
            NetworkStateTracker networkStateTracker = NetworkStateTracker.this;
            networkStateTracker.c(networkStateTracker.f());
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public final void onLost(Network network) {
            Logger.c().a(NetworkStateTracker.j, "Network connection lost", new Throwable[0]);
            NetworkStateTracker networkStateTracker = NetworkStateTracker.this;
            networkStateTracker.c(networkStateTracker.f());
        }
    }

    public NetworkStateTracker(Context context, TaskExecutor taskExecutor) {
        super(context, taskExecutor);
        this.g = (ConnectivityManager) this.b.getSystemService("connectivity");
        if (Build.VERSION.SDK_INT >= 24) {
            this.h = new NetworkStateCallback();
        } else {
            this.i = new NetworkStateBroadcastReceiver();
        }
    }

    @Override // androidx.work.impl.constraints.trackers.ConstraintTracker
    public final Object a() {
        return f();
    }

    @Override // androidx.work.impl.constraints.trackers.ConstraintTracker
    public final void d() {
        int i = Build.VERSION.SDK_INT;
        String str = j;
        if (i >= 24) {
            try {
                Logger.c().a(str, "Registering network callback", new Throwable[0]);
                this.g.registerDefaultNetworkCallback(this.h);
                return;
            } catch (IllegalArgumentException | SecurityException e) {
                Logger.c().b(str, "Received exception while registering network callback", e);
                return;
            }
        }
        Logger.c().a(str, "Registering broadcast receiver", new Throwable[0]);
        this.b.registerReceiver(this.i, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
    }

    @Override // androidx.work.impl.constraints.trackers.ConstraintTracker
    public final void e() {
        int i = Build.VERSION.SDK_INT;
        String str = j;
        if (i >= 24) {
            try {
                Logger.c().a(str, "Unregistering network callback", new Throwable[0]);
                this.g.unregisterNetworkCallback(this.h);
                return;
            } catch (IllegalArgumentException | SecurityException e) {
                Logger.c().b(str, "Received exception while unregistering network callback", e);
                return;
            }
        }
        Logger.c().a(str, "Unregistering broadcast receiver", new Throwable[0]);
        this.b.unregisterReceiver(this.i);
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [androidx.work.impl.constraints.NetworkState, java.lang.Object] */
    public final NetworkState f() {
        boolean z;
        boolean z2;
        NetworkCapabilities networkCapabilities;
        ConnectivityManager connectivityManager = this.g;
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        boolean z3 = false;
        if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
            z = true;
        } else {
            z = false;
        }
        try {
            networkCapabilities = connectivityManager.getNetworkCapabilities(connectivityManager.getActiveNetwork());
        } catch (SecurityException e) {
            Logger.c().b(j, "Unable to validate active network", e);
        }
        if (networkCapabilities != null) {
            if (networkCapabilities.hasCapability(16)) {
                z2 = true;
                boolean isActiveNetworkMetered = connectivityManager.isActiveNetworkMetered();
                if (activeNetworkInfo != null && !activeNetworkInfo.isRoaming()) {
                    z3 = true;
                }
                ?? obj = new Object();
                obj.f1904a = z;
                obj.b = z2;
                obj.f1905c = isActiveNetworkMetered;
                obj.d = z3;
                return obj;
            }
        }
        z2 = false;
        boolean isActiveNetworkMetered2 = connectivityManager.isActiveNetworkMetered();
        if (activeNetworkInfo != null) {
            z3 = true;
        }
        ?? obj2 = new Object();
        obj2.f1904a = z;
        obj2.b = z2;
        obj2.f1905c = isActiveNetworkMetered2;
        obj2.d = z3;
        return obj2;
    }
}
