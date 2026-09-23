package com.google.android.gms.internal.cast;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.LinkProperties;
import android.net.Network;
import android.net.NetworkInfo;
import android.net.NetworkRequest;
import android.os.Build;
import androidx.core.content.ContextCompat;
import com.google.android.gms.cast.internal.Logger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class zzek implements zzeg {
    public static final Logger l = new Logger("ConnectivityMonitor", null);

    /* renamed from: a, reason: collision with root package name */
    public final zzwo f9682a;

    /* renamed from: c, reason: collision with root package name */
    public final ConnectivityManager f9683c;
    public boolean f;
    public final Context g;
    public final boolean i;
    public final BroadcastReceiver j;
    public final HashSet k;
    public final ConnectivityManager.NetworkCallback b = new zzeh(this);
    public final HashMap d = new HashMap();
    public final ArrayList e = new ArrayList();
    public final Object h = new Object();

    public zzek(Context context, zzwo zzwoVar) {
        boolean z;
        if (Build.VERSION.SDK_INT >= 31) {
            z = true;
        } else {
            z = false;
        }
        this.i = z;
        this.j = new zzei(this);
        this.k = new HashSet();
        this.f9682a = zzwoVar;
        this.g = context;
        this.f9683c = (ConnectivityManager) context.getSystemService("connectivity");
    }

    public final void a() {
        ConnectivityManager connectivityManager;
        LinkProperties linkProperties;
        l.b("Start monitoring connectivity changes", new Object[0]);
        if (!this.f && (connectivityManager = this.f9683c) != null) {
            Context context = this.g;
            if (ContextCompat.a(context, "android.permission.ACCESS_NETWORK_STATE") == 0) {
                Network activeNetwork = connectivityManager.getActiveNetwork();
                if (activeNetwork != null && (linkProperties = connectivityManager.getLinkProperties(activeNetwork)) != null) {
                    b(activeNetwork, linkProperties);
                }
                NetworkRequest.Builder addTransportType = new NetworkRequest.Builder().addTransportType(1);
                if (this.i) {
                    addTransportType.setIncludeOtherUidNetworks(true);
                } else {
                    context.registerReceiver(this.j, new IntentFilter("android.net.wifi.STATE_CHANGE"));
                }
                connectivityManager.registerNetworkCallback(addTransportType.build(), this.b);
                this.f = true;
            }
        }
    }

    public final void b(Network network, LinkProperties linkProperties) {
        synchronized (this.h) {
            try {
                l.b("a new network is available", new Object[0]);
                HashMap hashMap = this.d;
                if (hashMap.containsKey(network)) {
                    this.e.remove(network);
                }
                hashMap.put(network, linkProperties);
                this.e.add(network);
            } catch (Throwable th) {
                throw th;
            }
        }
        c();
    }

    public final void c() {
        zzwo zzwoVar = this.f9682a;
        if (zzwoVar == null) {
            return;
        }
        HashSet hashSet = this.k;
        synchronized (hashSet) {
            try {
                Iterator it = hashSet.iterator();
                while (it.hasNext()) {
                    final zzef zzefVar = (zzef) it.next();
                    if (!zzwoVar.isShutdown()) {
                        zzwoVar.execute(new Runnable() { // from class: com.google.android.gms.internal.cast.zzej
                            @Override // java.lang.Runnable
                            public final /* synthetic */ void run() {
                                boolean isEmpty;
                                ConnectivityManager connectivityManager;
                                NetworkInfo activeNetworkInfo;
                                zzek zzekVar = zzek.this;
                                zzef zzefVar2 = zzefVar;
                                synchronized (zzekVar.h) {
                                    isEmpty = zzekVar.e.isEmpty();
                                }
                                if (!isEmpty && !zzekVar.i && (connectivityManager = zzekVar.f9683c) != null && (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) != null) {
                                    activeNetworkInfo.isConnected();
                                }
                                zzefVar2.zza();
                            }
                        });
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
