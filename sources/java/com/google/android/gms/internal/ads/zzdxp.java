package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class zzdxp {
    public final String e;
    public final zzdxj f;
    public final ArrayList b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public boolean f6242c = false;
    public boolean d = false;

    /* renamed from: a, reason: collision with root package name */
    public final com.google.android.gms.ads.internal.util.zzj f6241a = com.google.android.gms.ads.internal.zzt.zzh().i();

    public zzdxp(String str, zzdxj zzdxjVar) {
        this.e = str;
        this.f = zzdxjVar;
    }

    public final synchronized void a(String str) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.D2)).booleanValue()) {
            return;
        }
        HashMap e = e();
        e.put("action", "adapter_init_started");
        e.put("ancn", str);
        this.b.add(e);
    }

    public final synchronized void b(String str) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.D2)).booleanValue()) {
            return;
        }
        HashMap e = e();
        e.put("action", "adapter_init_finished");
        e.put("ancn", str);
        this.b.add(e);
    }

    public final synchronized void c(String str, String str2) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.D2)).booleanValue()) {
            return;
        }
        HashMap e = e();
        e.put("action", "adapter_init_finished");
        e.put("ancn", str);
        e.put("rqe", str2);
        this.b.add(e);
    }

    public final synchronized void d() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.D2)).booleanValue() && !this.f6242c) {
            HashMap e = e();
            e.put("action", "init_started");
            this.b.add(e);
            this.f6242c = true;
        }
    }

    public final HashMap e() {
        String str;
        zzdxj zzdxjVar = this.f;
        zzdxjVar.getClass();
        HashMap hashMap = new HashMap(zzdxjVar.f6237a);
        hashMap.put("tms", Long.toString(com.google.android.gms.ads.internal.zzt.zzk().elapsedRealtime(), 10));
        if (this.f6241a.zzx()) {
            str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        } else {
            str = this.e;
        }
        hashMap.put("tid", str);
        return hashMap;
    }
}
