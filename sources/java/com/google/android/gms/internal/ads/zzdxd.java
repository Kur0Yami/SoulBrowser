package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import j$.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public final class zzdxd {

    /* renamed from: a, reason: collision with root package name */
    public final ConcurrentHashMap f6226a = new ConcurrentHashMap();
    public final /* synthetic */ zzdxe b;

    public zzdxd(zzdxe zzdxeVar) {
        this.b = zzdxeVar;
    }

    public final void a(zzfhr zzfhrVar) {
        b("aai", zzfhrVar.w);
        b("request_id", zzfhrVar.n0);
        b("ad_format", zzfhr.a(zzfhrVar.b));
    }

    public final void b(String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            this.f6226a.put(str, str2);
        }
    }

    public final void c() {
        this.b.b.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdxc
            @Override // java.lang.Runnable
            public final void run() {
                zzdxd zzdxdVar = zzdxd.this;
                zzdxdVar.b.f6227a.a(zzdxdVar.f6226a, false);
            }
        });
    }

    public final com.google.android.gms.ads.internal.util.client.zzt d() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Ef)).booleanValue()) {
            zzdxj zzdxjVar = this.b.f6227a;
            zzdxjVar.getClass();
            ConcurrentHashMap concurrentHashMap = this.f6226a;
            if (concurrentHashMap.isEmpty()) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzd("Empty paramMap.");
                return com.google.android.gms.ads.internal.util.client.zzt.zza;
            }
            String generateUrl = zzdxjVar.f.generateUrl(concurrentHashMap);
            com.google.android.gms.ads.internal.util.zze.zza(generateUrl);
            return zzdxjVar.d.zzc(generateUrl, null);
        }
        c();
        return com.google.android.gms.ads.internal.util.client.zzt.zza;
    }

    public final void e() {
        this.b.b.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdxa
            @Override // java.lang.Runnable
            public final void run() {
                zzdxd zzdxdVar = zzdxd.this;
                final zzdxj zzdxjVar = zzdxdVar.b.f6227a;
                ConcurrentHashMap concurrentHashMap = zzdxdVar.f6226a;
                zzdxjVar.getClass();
                if (concurrentHashMap.isEmpty()) {
                    int i = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzd("Empty paramMap.");
                    return;
                }
                zzdxjVar.b(concurrentHashMap);
                final String generateUrl = zzdxjVar.f.generateUrl(concurrentHashMap);
                com.google.android.gms.ads.internal.util.zze.zza(generateUrl);
                if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Ae)).booleanValue() && !zzdxjVar.e) {
                    return;
                }
                zzdxjVar.f6238c.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdxm
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        zzdxn.this.d.zzc(generateUrl, null);
                    }
                });
            }
        });
    }
}
