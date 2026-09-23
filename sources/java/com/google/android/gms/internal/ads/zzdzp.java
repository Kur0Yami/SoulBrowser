package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.common.util.concurrent.ListenableFuture;
import j$.util.concurrent.ConcurrentHashMap;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class zzdzp {
    public final Context f;
    public final WeakReference g;
    public final zzduu h;
    public final Executor i;
    public final Executor j;
    public final ScheduledExecutorService k;
    public final zzdxp l;
    public final VersionInfoParcel m;
    public final zzdhq o;
    public final zzfnr p;

    /* renamed from: a, reason: collision with root package name */
    public boolean f6285a = false;
    public boolean b = false;

    /* renamed from: c, reason: collision with root package name */
    public boolean f6286c = false;
    public final zzcdt e = new zzcdt();
    public final ConcurrentHashMap n = new ConcurrentHashMap();
    public boolean q = true;
    public final long d = com.google.android.gms.ads.internal.zzt.zzk().elapsedRealtime();

    public zzdzp(Executor executor, Context context, WeakReference weakReference, Executor executor2, zzduu zzduuVar, ScheduledExecutorService scheduledExecutorService, zzdxp zzdxpVar, VersionInfoParcel versionInfoParcel, zzdhq zzdhqVar, zzfnr zzfnrVar) {
        this.h = zzduuVar;
        this.f = context;
        this.g = weakReference;
        this.i = executor2;
        this.k = scheduledExecutorService;
        this.j = executor;
        this.l = zzdxpVar;
        this.m = versionInfoParcel;
        this.o = zzdhqVar;
        this.p = zzfnrVar;
        d("com.google.android.gms.ads.MobileAds", 0, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, false);
    }

    public final void a() {
        if (!((Boolean) zzbiq.f4724a.c()).booleanValue()) {
            if (this.m.clientJarVersion >= ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.r2)).intValue() && this.q) {
                if (!this.f6285a) {
                    synchronized (this) {
                        try {
                            if (this.f6285a) {
                                return;
                            }
                            this.l.d();
                            this.o.zze();
                            zzcdt zzcdtVar = this.e;
                            Runnable runnable = new Runnable() { // from class: com.google.android.gms.internal.ads.zzdzh
                                @Override // java.lang.Runnable
                                public final void run() {
                                    zzdzp zzdzpVar = zzdzp.this;
                                    zzdxp zzdxpVar = zzdzpVar.l;
                                    synchronized (zzdxpVar) {
                                        try {
                                            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.D2)).booleanValue() && !zzdxpVar.d) {
                                                HashMap e = zzdxpVar.e();
                                                e.put("action", "init_finished");
                                                ArrayList arrayList = zzdxpVar.b;
                                                arrayList.add(e);
                                                int size = arrayList.size();
                                                int i = 0;
                                                while (i < size) {
                                                    Object obj = arrayList.get(i);
                                                    i++;
                                                    zzdxpVar.f.a((Map) obj, false);
                                                }
                                                zzdxpVar.d = true;
                                            }
                                        } finally {
                                        }
                                    }
                                    zzdzpVar.o.zzf();
                                    zzdzpVar.b = true;
                                }
                            };
                            Executor executor = this.i;
                            zzcdtVar.f5072c.k(runnable, executor);
                            this.f6285a = true;
                            ListenableFuture c2 = c();
                            this.k.schedule(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdzj
                                @Override // java.lang.Runnable
                                public final /* synthetic */ void run() {
                                    zzdzp zzdzpVar = zzdzp.this;
                                    synchronized (zzdzpVar) {
                                        try {
                                            if (zzdzpVar.f6286c) {
                                                return;
                                            }
                                            zzdzpVar.d("com.google.android.gms.ads.MobileAds", (int) (com.google.android.gms.ads.internal.zzt.zzk().elapsedRealtime() - zzdzpVar.d), "Timeout.", false);
                                            zzdzpVar.l.c("com.google.android.gms.ads.MobileAds", "timeout");
                                            zzdzpVar.o.b("com.google.android.gms.ads.MobileAds", "timeout");
                                            zzdzpVar.e.b(new Exception());
                                        } catch (Throwable th) {
                                            throw th;
                                        }
                                    }
                                }
                            }, ((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.t2)).longValue(), TimeUnit.SECONDS);
                            c2.k(new zzgyk(c2, new zzdzf(this)), executor);
                            return;
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
                return;
            }
        }
        if (!this.f6285a) {
            d("com.google.android.gms.ads.MobileAds", 0, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, true);
            this.e.a(Boolean.FALSE);
            this.f6285a = true;
            this.b = true;
        }
    }

    public final ArrayList b() {
        ArrayList arrayList = new ArrayList();
        ConcurrentHashMap concurrentHashMap = this.n;
        for (String str : concurrentHashMap.keySet()) {
            zzbpm zzbpmVar = (zzbpm) concurrentHashMap.get(str);
            arrayList.add(new zzbpm(str, zzbpmVar.g, zzbpmVar.h, zzbpmVar.f));
        }
        return arrayList;
    }

    public final synchronized ListenableFuture c() {
        String str = com.google.android.gms.ads.internal.zzt.zzh().i().zzi().e;
        if (!TextUtils.isEmpty(str)) {
            return zzgym.a(str);
        }
        final zzcdt zzcdtVar = new zzcdt();
        com.google.android.gms.ads.internal.zzt.zzh().i().zzk(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdzi
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                final zzcdt zzcdtVar2 = zzcdtVar;
                zzdzp.this.i.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdzn
                    @Override // java.lang.Runnable
                    public final void run() {
                        String str2 = com.google.android.gms.ads.internal.zzt.zzh().i().zzi().e;
                        boolean isEmpty = TextUtils.isEmpty(str2);
                        zzcdt zzcdtVar3 = zzcdt.this;
                        if (!isEmpty) {
                            zzcdtVar3.a(str2);
                        } else {
                            zzcdtVar3.b(new Exception());
                        }
                    }
                });
            }
        });
        return zzcdtVar;
    }

    public final void d(String str, int i, String str2, boolean z) {
        this.n.put(str, new zzbpm(str, i, str2, z));
    }
}
