package com.google.android.gms.internal.ads;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Locale;

/* loaded from: classes.dex */
public final class zzdwy {

    /* renamed from: a, reason: collision with root package name */
    public final ConcurrentHashMap f6219a;
    public final zzcdf b;

    /* renamed from: c, reason: collision with root package name */
    public final zzfik f6220c;
    public final zzayq d;
    public final Bundle e;

    public zzdwy(Context context, zzdxj zzdxjVar, zzcdf zzcdfVar, zzfik zzfikVar, String str, String str2, zzayq zzayqVar) {
        ActivityManager.MemoryInfo zze;
        String str3;
        com.google.android.gms.ads.internal.client.zzm zzmVar = zzfikVar.d;
        this.e = new Bundle();
        zzdxjVar.getClass();
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap(zzdxjVar.f6237a);
        this.f6219a = concurrentHashMap;
        this.b = zzcdfVar;
        this.f6220c = zzfikVar;
        this.d = zzayqVar;
        concurrentHashMap.put("ad_format", str2.toUpperCase(Locale.ROOT));
        c();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.I2)).booleanValue()) {
            Runtime runtime = Runtime.getRuntime();
            b("rt_f", String.valueOf(runtime.freeMemory()));
            b("rt_m", String.valueOf(runtime.maxMemory()));
            b("rt_t", String.valueOf(runtime.totalMemory()));
            b("wv_c", String.valueOf(com.google.android.gms.ads.internal.zzt.zzh().k.get()));
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Q2)).booleanValue() && (zze = com.google.android.gms.ads.internal.util.client.zzf.zze(context)) != null) {
                b("mem_avl", String.valueOf(zze.availMem));
                b("mem_tt", String.valueOf(zze.totalMem));
                if (true != zze.lowMemory) {
                    str3 = "0";
                } else {
                    str3 = "1";
                }
                b("low_m", str3);
            }
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.S2)).booleanValue()) {
            b("ad_unit_id", zzfikVar.g);
        }
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.M7)).booleanValue()) {
            return;
        }
        int zzg = com.google.android.gms.ads.nonagon.signalgeneration.zzaa.zzg(zzfikVar) - 1;
        if (zzg != 0) {
            if (zzg != 1) {
                if (zzg != 2) {
                    if (zzg != 3) {
                        concurrentHashMap.put("se", "r_both");
                    } else {
                        concurrentHashMap.put("se", "r_adstring");
                    }
                } else {
                    concurrentHashMap.put("se", "r_adinfo");
                }
            } else {
                concurrentHashMap.put("request_id", str);
                concurrentHashMap.put("se", "query_g");
            }
            concurrentHashMap.put("scar", "true");
            b("ragent", zzmVar.zzp);
            b("rtype", com.google.android.gms.ads.nonagon.signalgeneration.zzaa.zzb(com.google.android.gms.ads.nonagon.signalgeneration.zzaa.zzc(zzmVar)));
            return;
        }
        concurrentHashMap.put("request_id", str);
        concurrentHashMap.put("scar", "false");
    }

    public final void a(Bundle bundle) {
        if (bundle != null) {
            if (bundle.containsKey("cnt")) {
                b("network_coarse", Integer.toString(bundle.getInt("cnt")));
            }
            if (bundle.containsKey("gnt")) {
                b("network_fine", Integer.toString(bundle.getInt("gnt")));
            }
        }
    }

    public final void b(String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            this.f6219a.put(str, str2);
        }
    }

    public final void c() {
        int zzg;
        String str;
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Sa)).booleanValue()) {
            return;
        }
        zzayl zzaylVar = this.d.b;
        boolean z = zzaylVar instanceof com.google.android.gms.ads.internal.zzk;
        ConcurrentHashMap concurrentHashMap = this.f6219a;
        if (z) {
            concurrentHashMap.put("asv", ((com.google.android.gms.ads.internal.zzk) zzaylVar).zzc());
            return;
        }
        if (zzaylVar instanceof zzclf) {
            zzgct zzgctVar = (zzgct) ((zzclf) zzaylVar).f.f7764a.b.f.get();
            if (zzgctVar == null) {
                zzg = 1;
            } else {
                zzg = zzgctVar.zzg();
            }
            int i = zzg - 1;
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        str = "uns";
                    } else {
                        str = "3.0";
                    }
                } else {
                    str = "2.0";
                }
            } else {
                str = "1.0";
            }
            concurrentHashMap.put("asv", str);
            return;
        }
        concurrentHashMap.put("asv", "NA");
    }
}
