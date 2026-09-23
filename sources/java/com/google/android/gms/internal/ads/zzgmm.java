package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.os.Build;
import android.view.View;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.HashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzgmm implements zzglz, zzgcb {

    /* renamed from: a, reason: collision with root package name */
    public final Context f8129a;
    public final ExecutorService b;

    /* renamed from: c, reason: collision with root package name */
    public NetworkCapabilities f8130c = null;

    public zzgmm(Context context, ExecutorService executorService) {
        this.f8129a = context;
        this.b = executorService;
    }

    @Override // com.google.android.gms.internal.ads.zzglz
    public final void b(HashMap hashMap) {
        NetworkCapabilities networkCapabilities;
        long j;
        synchronized (this) {
            networkCapabilities = this.f8130c;
        }
        hashMap.put("ntc", networkCapabilities);
        synchronized (this) {
            try {
                NetworkCapabilities networkCapabilities2 = this.f8130c;
                if (networkCapabilities2 != null) {
                    if (networkCapabilities2.hasTransport(4)) {
                        j = 2;
                    } else if (this.f8130c.hasTransport(1)) {
                        j = 1;
                    } else if (this.f8130c.hasTransport(0)) {
                        j = 0;
                    }
                }
                j = -1;
            } finally {
            }
        }
        hashMap.put("nt", Long.valueOf(j));
    }

    public final /* synthetic */ void d() {
        if (Build.VERSION.SDK_INT >= 24) {
            zzgmk zzgmkVar = new zzgmk(this);
            try {
                Object systemService = this.f8129a.getSystemService("connectivity");
                if (systemService != null) {
                    ((ConnectivityManager) systemService).registerDefaultNetworkCallback(zzgmkVar);
                    return;
                }
                throw null;
            } catch (Throwable unused) {
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgcb
    public final ListenableFuture zza() {
        if (Build.VERSION.SDK_INT < 24) {
            return zzgyq.f;
        }
        zzgzl zzgzlVar = new zzgzl(Executors.callable(new Runnable() { // from class: com.google.android.gms.internal.ads.zzgml
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzgmm.this.d();
            }
        }, null));
        this.b.execute(zzgzlVar);
        return zzgzlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzglz
    public final void a(HashMap hashMap) {
    }

    @Override // com.google.android.gms.internal.ads.zzglz
    public final void c(HashMap hashMap, Context context, View view) {
    }
}
