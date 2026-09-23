package com.google.android.gms.ads.nonagon.signalgeneration;

import android.content.Context;
import android.os.Bundle;
import android.util.Pair;
import android.webkit.CookieManager;
import android.webkit.WebView;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.query.QueryInfo;
import com.google.android.gms.ads.query.QueryInfoGenerationCallback;
import com.google.android.gms.internal.ads.zzbgk;
import com.google.android.gms.internal.ads.zzcdo;
import com.google.android.gms.internal.ads.zzdxj;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;

/* loaded from: classes.dex */
public final class zzo {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f3288a = new HashMap();
    public final HashMap b = new HashMap();

    /* renamed from: c, reason: collision with root package name */
    public final Context f3289c;
    public final zzdxj d;
    public final ExecutorService e;

    public zzo(Context context, zzdxj zzdxjVar, ExecutorService executorService) {
        this.f3289c = context;
        this.d = zzdxjVar;
        this.e = executorService;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x002d A[Catch: all -> 0x0022, TryCatch #0 {all -> 0x0022, blocks: (B:3:0x0001, B:5:0x000f, B:7:0x0015, B:9:0x001b, B:12:0x0027, B:14:0x002d, B:15:0x003e, B:18:0x004c, B:24:0x006d, B:25:0x0071, B:27:0x0077, B:31:0x0036, B:32:0x0024), top: B:2:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x006c A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x006d A[Catch: all -> 0x0022, TryCatch #0 {all -> 0x0022, blocks: (B:3:0x0001, B:5:0x000f, B:7:0x0015, B:9:0x001b, B:12:0x0027, B:14:0x002d, B:15:0x003e, B:18:0x004c, B:24:0x006d, B:25:0x0071, B:27:0x0077, B:31:0x0036, B:32:0x0024), top: B:2:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0036 A[Catch: all -> 0x0022, TryCatch #0 {all -> 0x0022, blocks: (B:3:0x0001, B:5:0x000f, B:7:0x0015, B:9:0x001b, B:12:0x0027, B:14:0x002d, B:15:0x003e, B:18:0x004c, B:24:0x006d, B:25:0x0071, B:27:0x0077, B:31:0x0036, B:32:0x0024), top: B:2:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void a(final boolean r8, com.google.android.gms.ads.nonagon.signalgeneration.zzq r9) {
        /*
            r7 = this;
            monitor-enter(r7)
            java.util.HashMap r0 = r7.f3288a     // Catch: java.lang.Throwable -> L22
            java.lang.Boolean r1 = java.lang.Boolean.valueOf(r8)     // Catch: java.lang.Throwable -> L22
            java.lang.Object r2 = r0.get(r1)     // Catch: java.lang.Throwable -> L22
            com.google.android.gms.ads.nonagon.signalgeneration.zzq r2 = (com.google.android.gms.ads.nonagon.signalgeneration.zzq) r2     // Catch: java.lang.Throwable -> L22
            if (r2 == 0) goto L24
            boolean r3 = r2.zzc()     // Catch: java.lang.Throwable -> L22
            if (r3 != 0) goto L24
            com.google.android.gms.ads.query.QueryInfo r2 = r2.zza()     // Catch: java.lang.Throwable -> L22
            if (r2 == 0) goto L24
            com.google.android.gms.ads.query.QueryInfo r2 = r9.zza()     // Catch: java.lang.Throwable -> L22
            if (r2 == 0) goto L27
            goto L24
        L22:
            r8 = move-exception
            goto L83
        L24:
            r0.put(r1, r9)     // Catch: java.lang.Throwable -> L22
        L27:
            com.google.android.gms.ads.query.QueryInfo r0 = r9.zza()     // Catch: java.lang.Throwable -> L22
            if (r0 == 0) goto L36
            com.google.android.gms.internal.ads.zzbhu r0 = com.google.android.gms.internal.ads.zzbip.f     // Catch: java.lang.Throwable -> L22
            java.lang.Object r0 = r0.c()     // Catch: java.lang.Throwable -> L22
            java.lang.Long r0 = (java.lang.Long) r0     // Catch: java.lang.Throwable -> L22
            goto L3e
        L36:
            com.google.android.gms.internal.ads.zzbhu r0 = com.google.android.gms.internal.ads.zzbip.g     // Catch: java.lang.Throwable -> L22
            java.lang.Object r0 = r0.c()     // Catch: java.lang.Throwable -> L22
            java.lang.Long r0 = (java.lang.Long) r0     // Catch: java.lang.Throwable -> L22
        L3e:
            long r2 = r0.longValue()     // Catch: java.lang.Throwable -> L22
            com.google.android.gms.ads.query.QueryInfo r0 = r9.zza()     // Catch: java.lang.Throwable -> L22
            r4 = 0
            if (r0 != 0) goto L4b
            r0 = 1
            goto L4c
        L4b:
            r0 = r4
        L4c:
            java.util.concurrent.ScheduledExecutorService r5 = com.google.android.gms.internal.ads.zzcdo.d     // Catch: java.lang.Throwable -> L22
            com.google.android.gms.ads.nonagon.signalgeneration.zzk r6 = new com.google.android.gms.ads.nonagon.signalgeneration.zzk     // Catch: java.lang.Throwable -> L22
            r6.<init>()     // Catch: java.lang.Throwable -> L22
            java.util.concurrent.TimeUnit r8 = java.util.concurrent.TimeUnit.SECONDS     // Catch: java.lang.Throwable -> L22
            java.util.concurrent.ScheduledThreadPoolExecutor r5 = (java.util.concurrent.ScheduledThreadPoolExecutor) r5     // Catch: java.lang.Throwable -> L22
            r5.schedule(r6, r2, r8)     // Catch: java.lang.Throwable -> L22
            java.util.HashMap r8 = r7.b     // Catch: java.lang.Throwable -> L22
            java.lang.Object r0 = r8.get(r1)     // Catch: java.lang.Throwable -> L22
            java.util.List r0 = (java.util.List) r0     // Catch: java.lang.Throwable -> L22
            java.util.ArrayList r2 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L22
            r2.<init>()     // Catch: java.lang.Throwable -> L22
            r8.put(r1, r2)     // Catch: java.lang.Throwable -> L22
            if (r0 != 0) goto L6d
            goto L81
        L6d:
            java.util.Iterator r8 = r0.iterator()     // Catch: java.lang.Throwable -> L22
        L71:
            boolean r0 = r8.hasNext()     // Catch: java.lang.Throwable -> L22
            if (r0 == 0) goto L81
            java.lang.Object r0 = r8.next()     // Catch: java.lang.Throwable -> L22
            android.util.Pair r0 = (android.util.Pair) r0     // Catch: java.lang.Throwable -> L22
            r7.d(r9, r0, r4)     // Catch: java.lang.Throwable -> L22
            goto L71
        L81:
            monitor-exit(r7)
            return
        L83:
            monitor-exit(r7)     // Catch: java.lang.Throwable -> L22
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.nonagon.signalgeneration.zzo.a(boolean, com.google.android.gms.ads.nonagon.signalgeneration.zzq):void");
    }

    public final void b(final boolean z) {
        Boolean valueOf = Boolean.valueOf(z);
        HashMap hashMap = this.b;
        if (!hashMap.containsKey(valueOf)) {
            hashMap.put(valueOf, new ArrayList());
            this.e.submit(new Runnable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzl
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    zzo.this.c(z, false);
                }
            });
        }
    }

    public final synchronized void c(boolean z, boolean z2) {
        Throwable th;
        Boolean valueOf;
        try {
            try {
                Bundle bundle = new Bundle();
                bundle.putString("query_info_type", "requester_type_6");
                bundle.putBoolean("accept_3p_cookie", z);
                HashMap hashMap = this.f3288a;
                Boolean valueOf2 = Boolean.valueOf(z);
                zzq zzqVar = (zzq) hashMap.get(valueOf2);
                int i = 0;
                if (z2 && zzqVar != null) {
                    try {
                        i = zzqVar.zzd() + 1;
                    } catch (Throwable th2) {
                        th = th2;
                        throw th;
                    }
                }
                zzq zzqVar2 = (zzq) hashMap.get(valueOf2);
                if (zzqVar2 == null) {
                    valueOf = null;
                } else {
                    valueOf = Boolean.valueOf(zzqVar2.zze());
                }
                final zzp zzpVar = new zzp(this, z, i, valueOf, this.d);
                final AdRequest build = new AdRequest.Builder().addNetworkExtrasBundle(AdMobAdapter.class, bundle).build();
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.vc)).booleanValue()) {
                    this.e.submit(new Callable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzm
                        @Override // java.util.concurrent.Callable
                        public final /* synthetic */ Object call() {
                            QueryInfo.generate(zzo.this.f3289c, AdFormat.BANNER, build, zzpVar);
                            return Boolean.TRUE;
                        }
                    });
                } else {
                    QueryInfo.generate(this.f3289c, AdFormat.BANNER, build, zzpVar);
                }
            } catch (Throwable th3) {
                th = th3;
                th = th;
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    public final void d(zzq zzqVar, Pair pair, boolean z) {
        boolean z2;
        zzqVar.zzf();
        QueryInfo zza = zzqVar.zza();
        if (zza != null) {
            ((QueryInfoGenerationCallback) pair.first).onSuccess(zza);
        } else {
            ((QueryInfoGenerationCallback) pair.first).onFailure(zzqVar.zzb());
        }
        Pair pair2 = new Pair("se", "query_g");
        Pair pair3 = new Pair("ad_format", AdFormat.BANNER.name());
        Pair pair4 = new Pair("rtype", Integer.toString(6));
        Pair pair5 = new Pair("scar", "true");
        Pair pair6 = new Pair("lat_ms", Long.toString(com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis() - ((Long) pair.second).longValue()));
        Pair pair7 = new Pair("sgpc_h", Boolean.toString(z));
        if (zzqVar.zza() != null) {
            z2 = true;
        } else {
            z2 = false;
        }
        zzaa.zze(this.d, null, "sgpcr", pair2, pair3, pair4, pair5, pair6, pair7, new Pair("sgpc_rs", Boolean.toString(z2)));
    }

    public final synchronized void zza() {
        b(true);
        b(false);
    }

    public final synchronized void zzb(final Object obj, QueryInfoGenerationCallback queryInfoGenerationCallback) {
        final Pair pair = new Pair(queryInfoGenerationCallback, Long.valueOf(com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis()));
        zzcdo.f.execute(new Runnable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzn
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                Object obj2 = obj;
                boolean z = obj2 instanceof WebView;
                zzo zzoVar = zzo.this;
                boolean z2 = false;
                if (z) {
                    CookieManager zza = com.google.android.gms.ads.internal.zzt.zzf().zza(zzoVar.f3289c);
                    if (zza != null) {
                        z2 = zza.acceptThirdPartyCookies((WebView) obj2);
                    }
                }
                HashMap hashMap = zzoVar.f3288a;
                Boolean valueOf = Boolean.valueOf(z2);
                zzq zzqVar = (zzq) hashMap.get(valueOf);
                Pair pair2 = pair;
                if (zzqVar != null && !zzqVar.zzc()) {
                    zzoVar.d(zzqVar, pair2, true);
                    return;
                }
                HashMap hashMap2 = zzoVar.b;
                List list = (List) hashMap2.get(valueOf);
                if (list == null) {
                    list = new ArrayList();
                    hashMap2.put(valueOf, list);
                }
                list.add(pair2);
            }
        });
    }
}
