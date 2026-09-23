package com.google.android.gms.internal.ads;

import android.app.AppOpsManager;
import android.content.Context;
import android.os.Build;
import android.view.View;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.HashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzgmy implements zzglz, zzgcb {
    public static final String[] h = {"android:establish_vpn_service", "android:establish_vpn_manager"};

    /* renamed from: a, reason: collision with root package name */
    public final Context f8143a;
    public final ExecutorService b;

    /* renamed from: c, reason: collision with root package name */
    public final String[] f8144c;
    public long d = 0;
    public long e = 0;
    public long f = -1;
    public boolean g = false;

    public zzgmy(Context context, ExecutorService executorService, String[] strArr) {
        this.f8143a = context;
        this.b = executorService;
        this.f8144c = strArr;
    }

    @Override // com.google.android.gms.internal.ads.zzglz
    public final void a(HashMap hashMap) {
        d();
    }

    @Override // com.google.android.gms.internal.ads.zzglz
    public final void b(HashMap hashMap) {
        long j;
        long j2;
        d();
        synchronized (this) {
            try {
                if (this.g) {
                    j = this.e - this.d;
                } else {
                    j = -1;
                }
            } finally {
            }
        }
        hashMap.put("vs", Long.valueOf(j));
        synchronized (this) {
            j2 = this.f;
            this.f = -1L;
        }
        hashMap.put("vf", Long.valueOf(j2));
    }

    @Override // com.google.android.gms.internal.ads.zzglz
    public final void c(HashMap hashMap, Context context, View view) {
        d();
    }

    public final void d() {
        synchronized (this) {
            try {
                if (this.g) {
                    this.e = System.currentTimeMillis();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final /* synthetic */ void e() {
        zzgmw zzgmwVar = new zzgmw(this);
        try {
            Object systemService = this.f8143a.getSystemService("appops");
            if (systemService != null) {
                ((AppOpsManager) systemService).startWatchingActive(this.f8144c, this.b, zzgmwVar);
                return;
            }
            throw null;
        } catch (Throwable unused) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgcb
    public final ListenableFuture zza() {
        if (Build.VERSION.SDK_INT < 30) {
            return zzgyq.f;
        }
        zzgzl zzgzlVar = new zzgzl(Executors.callable(new Runnable() { // from class: com.google.android.gms.internal.ads.zzgmx
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzgmy.this.e();
            }
        }, null));
        this.b.execute(zzgzlVar);
        return zzgzlVar;
    }
}
