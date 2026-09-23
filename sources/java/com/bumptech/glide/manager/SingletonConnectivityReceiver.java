package com.bumptech.glide.manager;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkInfo;
import android.os.AsyncTask;
import android.os.Build;
import android.util.Log;
import androidx.annotation.RequiresApi;
import com.bumptech.glide.manager.ConnectivityMonitor;
import com.bumptech.glide.util.GlideSuppliers;
import com.bumptech.glide.util.Util;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.concurrent.Executor;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class SingletonConnectivityReceiver {
    public static volatile SingletonConnectivityReceiver d;

    /* renamed from: a, reason: collision with root package name */
    public final FrameworkConnectivityMonitor f2429a;
    public final HashSet b = new HashSet();

    /* renamed from: c, reason: collision with root package name */
    public boolean f2430c;

    /* renamed from: com.bumptech.glide.manager.SingletonConnectivityReceiver$2, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass2 implements ConnectivityMonitor.ConnectivityListener {
        public AnonymousClass2() {
        }

        @Override // com.bumptech.glide.manager.ConnectivityMonitor.ConnectivityListener
        public final void a(boolean z) {
            ArrayList arrayList;
            Util.a();
            synchronized (SingletonConnectivityReceiver.this) {
                arrayList = new ArrayList(SingletonConnectivityReceiver.this.b);
            }
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                ((ConnectivityMonitor.ConnectivityListener) obj).a(z);
            }
        }
    }

    /* loaded from: classes.dex */
    public interface FrameworkConnectivityMonitor {
        boolean a();

        void b();
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static final class FrameworkConnectivityMonitorPostApi24 implements FrameworkConnectivityMonitor {

        /* renamed from: a, reason: collision with root package name */
        public boolean f2433a;
        public final ConnectivityMonitor.ConnectivityListener b;

        /* renamed from: c, reason: collision with root package name */
        public final GlideSuppliers.GlideSupplier f2434c;
        public final ConnectivityManager.NetworkCallback d = new ConnectivityManager.NetworkCallback() { // from class: com.bumptech.glide.manager.SingletonConnectivityReceiver.FrameworkConnectivityMonitorPostApi24.1

            /* renamed from: com.bumptech.glide.manager.SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24$1$1, reason: invalid class name and collision with other inner class name */
            /* loaded from: classes.dex */
            class RunnableC00091 implements Runnable {

                /* renamed from: c, reason: collision with root package name */
                public final /* synthetic */ boolean f2436c;

                public RunnableC00091(boolean z) {
                    this.f2436c = z;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    Util.a();
                    FrameworkConnectivityMonitorPostApi24 frameworkConnectivityMonitorPostApi24 = FrameworkConnectivityMonitorPostApi24.this;
                    boolean z = frameworkConnectivityMonitorPostApi24.f2433a;
                    boolean z2 = this.f2436c;
                    frameworkConnectivityMonitorPostApi24.f2433a = z2;
                    if (z != z2) {
                        ((AnonymousClass2) frameworkConnectivityMonitorPostApi24.b).a(z2);
                    }
                }
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public final void onAvailable(Network network) {
                Util.f().post(new RunnableC00091(true));
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public final void onLost(Network network) {
                Util.f().post(new RunnableC00091(false));
            }
        };

        public FrameworkConnectivityMonitorPostApi24(GlideSuppliers.GlideSupplier glideSupplier, ConnectivityMonitor.ConnectivityListener connectivityListener) {
            this.f2434c = glideSupplier;
            this.b = connectivityListener;
        }

        @Override // com.bumptech.glide.manager.SingletonConnectivityReceiver.FrameworkConnectivityMonitor
        public final boolean a() {
            boolean z;
            GlideSuppliers.GlideSupplier glideSupplier = this.f2434c;
            if (((ConnectivityManager) glideSupplier.get()).getActiveNetwork() != null) {
                z = true;
            } else {
                z = false;
            }
            this.f2433a = z;
            try {
                ((ConnectivityManager) glideSupplier.get()).registerDefaultNetworkCallback(this.d);
                return true;
            } catch (RuntimeException e) {
                if (Log.isLoggable("ConnectivityMonitor", 5)) {
                    Log.w("ConnectivityMonitor", "Failed to register callback", e);
                }
                return false;
            }
        }

        @Override // com.bumptech.glide.manager.SingletonConnectivityReceiver.FrameworkConnectivityMonitor
        public final void b() {
            ((ConnectivityManager) this.f2434c.get()).unregisterNetworkCallback(this.d);
        }
    }

    /* loaded from: classes.dex */
    public static final class FrameworkConnectivityMonitorPreApi24 implements FrameworkConnectivityMonitor {
        public static final Executor g = AsyncTask.SERIAL_EXECUTOR;

        /* renamed from: a, reason: collision with root package name */
        public final Context f2437a;
        public final ConnectivityMonitor.ConnectivityListener b;

        /* renamed from: c, reason: collision with root package name */
        public final GlideSuppliers.GlideSupplier f2438c;
        public volatile boolean d;
        public volatile boolean e;
        public final BroadcastReceiver f = new BroadcastReceiver() { // from class: com.bumptech.glide.manager.SingletonConnectivityReceiver.FrameworkConnectivityMonitorPreApi24.1
            @Override // android.content.BroadcastReceiver
            public final void onReceive(Context context, Intent intent) {
                Executor executor = FrameworkConnectivityMonitorPreApi24.g;
                final FrameworkConnectivityMonitorPreApi24 frameworkConnectivityMonitorPreApi24 = FrameworkConnectivityMonitorPreApi24.this;
                executor.execute(new Runnable() { // from class: com.bumptech.glide.manager.SingletonConnectivityReceiver.FrameworkConnectivityMonitorPreApi24.4
                    @Override // java.lang.Runnable
                    public final void run() {
                        boolean z = FrameworkConnectivityMonitorPreApi24.this.d;
                        FrameworkConnectivityMonitorPreApi24 frameworkConnectivityMonitorPreApi242 = FrameworkConnectivityMonitorPreApi24.this;
                        frameworkConnectivityMonitorPreApi242.d = frameworkConnectivityMonitorPreApi242.c();
                        if (z != FrameworkConnectivityMonitorPreApi24.this.d) {
                            if (Log.isLoggable("ConnectivityMonitor", 3)) {
                                Log.d("ConnectivityMonitor", "connectivity changed, isConnected: " + FrameworkConnectivityMonitorPreApi24.this.d);
                            }
                            final FrameworkConnectivityMonitorPreApi24 frameworkConnectivityMonitorPreApi243 = FrameworkConnectivityMonitorPreApi24.this;
                            final boolean z2 = frameworkConnectivityMonitorPreApi243.d;
                            Util.f().post(new Runnable() { // from class: com.bumptech.glide.manager.SingletonConnectivityReceiver.FrameworkConnectivityMonitorPreApi24.5
                                @Override // java.lang.Runnable
                                public final void run() {
                                    FrameworkConnectivityMonitorPreApi24.this.b.a(z2);
                                }
                            });
                        }
                    }
                });
            }
        };

        public FrameworkConnectivityMonitorPreApi24(Context context, GlideSuppliers.GlideSupplier glideSupplier, ConnectivityMonitor.ConnectivityListener connectivityListener) {
            this.f2437a = context.getApplicationContext();
            this.f2438c = glideSupplier;
            this.b = connectivityListener;
        }

        @Override // com.bumptech.glide.manager.SingletonConnectivityReceiver.FrameworkConnectivityMonitor
        public final boolean a() {
            g.execute(new Runnable() { // from class: com.bumptech.glide.manager.SingletonConnectivityReceiver.FrameworkConnectivityMonitorPreApi24.2
                @Override // java.lang.Runnable
                public final void run() {
                    FrameworkConnectivityMonitorPreApi24 frameworkConnectivityMonitorPreApi24 = FrameworkConnectivityMonitorPreApi24.this;
                    frameworkConnectivityMonitorPreApi24.d = frameworkConnectivityMonitorPreApi24.c();
                    try {
                        FrameworkConnectivityMonitorPreApi24 frameworkConnectivityMonitorPreApi242 = FrameworkConnectivityMonitorPreApi24.this;
                        frameworkConnectivityMonitorPreApi242.f2437a.registerReceiver(frameworkConnectivityMonitorPreApi242.f, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
                        FrameworkConnectivityMonitorPreApi24.this.e = true;
                    } catch (SecurityException e) {
                        if (Log.isLoggable("ConnectivityMonitor", 5)) {
                            Log.w("ConnectivityMonitor", "Failed to register", e);
                        }
                        FrameworkConnectivityMonitorPreApi24.this.e = false;
                    }
                }
            });
            return true;
        }

        @Override // com.bumptech.glide.manager.SingletonConnectivityReceiver.FrameworkConnectivityMonitor
        public final void b() {
            g.execute(new Runnable() { // from class: com.bumptech.glide.manager.SingletonConnectivityReceiver.FrameworkConnectivityMonitorPreApi24.3
                @Override // java.lang.Runnable
                public final void run() {
                    if (!FrameworkConnectivityMonitorPreApi24.this.e) {
                        return;
                    }
                    FrameworkConnectivityMonitorPreApi24.this.e = false;
                    FrameworkConnectivityMonitorPreApi24 frameworkConnectivityMonitorPreApi24 = FrameworkConnectivityMonitorPreApi24.this;
                    frameworkConnectivityMonitorPreApi24.f2437a.unregisterReceiver(frameworkConnectivityMonitorPreApi24.f);
                }
            });
        }

        public final boolean c() {
            try {
                NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.f2438c.get()).getActiveNetworkInfo();
                if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
                    return false;
                }
                return true;
            } catch (RuntimeException e) {
                if (Log.isLoggable("ConnectivityMonitor", 5)) {
                    Log.w("ConnectivityMonitor", "Failed to determine connectivity status when connectivity changed", e);
                    return true;
                }
                return true;
            }
        }
    }

    public SingletonConnectivityReceiver(final Context context) {
        FrameworkConnectivityMonitor frameworkConnectivityMonitorPreApi24;
        GlideSuppliers.GlideSupplier a2 = GlideSuppliers.a(new GlideSuppliers.GlideSupplier<ConnectivityManager>() { // from class: com.bumptech.glide.manager.SingletonConnectivityReceiver.1
            @Override // com.bumptech.glide.util.GlideSuppliers.GlideSupplier
            public final Object get() {
                return (ConnectivityManager) context.getSystemService("connectivity");
            }
        });
        AnonymousClass2 anonymousClass2 = new AnonymousClass2();
        if (Build.VERSION.SDK_INT >= 24) {
            frameworkConnectivityMonitorPreApi24 = new FrameworkConnectivityMonitorPostApi24(a2, anonymousClass2);
        } else {
            frameworkConnectivityMonitorPreApi24 = new FrameworkConnectivityMonitorPreApi24(context, a2, anonymousClass2);
        }
        this.f2429a = frameworkConnectivityMonitorPreApi24;
    }

    public static SingletonConnectivityReceiver a(Context context) {
        if (d == null) {
            synchronized (SingletonConnectivityReceiver.class) {
                try {
                    if (d == null) {
                        d = new SingletonConnectivityReceiver(context.getApplicationContext());
                    }
                } finally {
                }
            }
        }
        return d;
    }
}
