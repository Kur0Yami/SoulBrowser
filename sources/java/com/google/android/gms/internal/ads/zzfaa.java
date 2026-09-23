package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzfaa {

    /* renamed from: a, reason: collision with root package name */
    public final Context f7146a;
    public final Set b;

    /* renamed from: c, reason: collision with root package name */
    public final Executor f7147c;
    public final zzfno d;
    public final zzdxe e;
    public long f = 0;
    public int g = 0;

    public zzfaa(Context context, Executor executor, Set set, zzfno zzfnoVar, zzdxe zzdxeVar) {
        this.f7146a = context;
        this.f7147c = executor;
        this.b = set;
        this.d = zzfnoVar;
        this.e = zzdxeVar;
    }

    public final ListenableFuture a(final Object obj, final Bundle bundle, final boolean z) {
        zzfne o = a.o(this.f7146a, 8);
        o.zza();
        Set<zzezx> set = this.b;
        final ArrayList arrayList = new ArrayList(set.size());
        List arrayList2 = new ArrayList();
        zzbgb zzbgbVar = zzbgk.cd;
        if (!((String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgbVar)).isEmpty()) {
            arrayList2 = Arrays.asList(((String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgbVar)).split(","));
        }
        this.f = com.google.android.gms.ads.internal.zzt.zzk().elapsedRealtime();
        final Bundle bundle2 = new Bundle();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.I2)).booleanValue() && bundle != null) {
            long currentTimeMillis = com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis();
            if (obj instanceof zzczm) {
                bundle.putLong("client-signals-start", currentTimeMillis);
            } else {
                bundle.putLong("gms-signals-start", currentTimeMillis);
            }
        }
        for (final zzezx zzezxVar : set) {
            if (!arrayList2.contains(String.valueOf(zzezxVar.zzb()))) {
                final long elapsedRealtime = com.google.android.gms.ads.internal.zzt.zzk().elapsedRealtime();
                ListenableFuture zza = zzezxVar.zza();
                final Bundle bundle3 = bundle2;
                zza.k(new Runnable() { // from class: com.google.android.gms.internal.ads.zzezy
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzfaa zzfaaVar = zzfaa.this;
                        long j = elapsedRealtime;
                        zzezx zzezxVar2 = zzezxVar;
                        Bundle bundle4 = bundle3;
                        long elapsedRealtime2 = com.google.android.gms.ads.internal.zzt.zzk().elapsedRealtime() - j;
                        if (((Boolean) zzbim.f4719a.c()).booleanValue()) {
                            String canonicalName = zzezxVar2.getClass().getCanonicalName();
                            if (canonicalName == null) {
                                canonicalName = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                            }
                            StringBuilder sb = new StringBuilder(canonicalName.length() + 25 + String.valueOf(elapsedRealtime2).length());
                            android.support.v4.media.a.y(sb, "Signal runtime (ms) : ", canonicalName, " = ");
                            sb.append(elapsedRealtime2);
                            com.google.android.gms.ads.internal.util.zze.zza(sb.toString());
                        }
                        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.I2)).booleanValue()) {
                            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.O2)).booleanValue()) {
                                synchronized (zzfaaVar) {
                                    int zzb = zzezxVar2.zzb();
                                    StringBuilder sb2 = new StringBuilder(String.valueOf(zzb).length() + 3);
                                    sb2.append("sig");
                                    sb2.append(zzb);
                                    bundle4.putLong(sb2.toString(), elapsedRealtime2);
                                }
                            }
                        }
                        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.G2)).booleanValue()) {
                            return;
                        }
                        final zzdxd a2 = zzfaaVar.e.a();
                        a2.b("action", "lat_ms");
                        a2.b("lat_grp", "sig_lat_grp");
                        a2.b("lat_id", String.valueOf(zzezxVar2.zzb()));
                        a2.b("clat_ms", String.valueOf(elapsedRealtime2));
                        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.H2)).booleanValue()) {
                            synchronized (zzfaaVar) {
                                zzfaaVar.g++;
                            }
                            a2.b("seq_num", com.google.android.gms.ads.internal.zzt.zzh().f5054c.g.a());
                            synchronized (zzfaaVar) {
                                try {
                                    if (zzfaaVar.g == zzfaaVar.b.size() && zzfaaVar.f != 0) {
                                        zzfaaVar.g = 0;
                                        String valueOf = String.valueOf(com.google.android.gms.ads.internal.zzt.zzk().elapsedRealtime() - zzfaaVar.f);
                                        if (zzezxVar2.zzb() > 39 && zzezxVar2.zzb() < 52) {
                                            a2.b("lat_gmssg", valueOf);
                                        } else {
                                            a2.b("lat_clsg", valueOf);
                                        }
                                    }
                                } finally {
                                }
                            }
                        }
                        a2.b.b.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdxb
                            @Override // java.lang.Runnable
                            public final void run() {
                                zzdxd zzdxdVar = zzdxd.this;
                                zzdxdVar.b.f6227a.a(zzdxdVar.f6226a, true);
                            }
                        });
                    }
                }, zzcdo.g);
                arrayList.add(zza);
                bundle2 = bundle3;
            }
        }
        ListenableFuture a2 = new zzgyl(zzgtd.v(arrayList), true).a(new Callable() { // from class: com.google.android.gms.internal.ads.zzezz
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Object obj2;
                Bundle bundle4;
                Iterator it = arrayList.iterator();
                while (true) {
                    boolean hasNext = it.hasNext();
                    obj2 = obj;
                    if (!hasNext) {
                        break;
                    }
                    zzezv zzezvVar = (zzezv) ((ListenableFuture) it.next()).get();
                    if (zzezvVar != null) {
                        zzezvVar.zza(obj2);
                        if (z) {
                            zzezvVar.a(obj2);
                        }
                    }
                }
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.I2)).booleanValue() && (bundle4 = bundle) != null) {
                    long currentTimeMillis2 = com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis();
                    boolean z2 = obj2 instanceof zzczm;
                    Bundle bundle5 = bundle2;
                    if (z2) {
                        bundle4.putLong("client-signals-end", currentTimeMillis2);
                        bundle4.putBundle("client_sig_latency_key", bundle5);
                        return obj2;
                    }
                    bundle4.putLong("gms-signals-end", currentTimeMillis2);
                    bundle4.putBundle("gms_sig_latency_key", bundle5);
                }
                return obj2;
            }
        }, this.f7147c);
        if (zzfnr.a()) {
            zzfnn.c(a2, this.d, o, false);
        }
        return a2;
    }
}
