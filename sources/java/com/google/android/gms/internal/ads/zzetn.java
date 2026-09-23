package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import com.google.common.util.concurrent.ListenableFuture;
import j$.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public final class zzetn implements zzezx {

    /* renamed from: a, reason: collision with root package name */
    public final Context f6922a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final String f6923c;
    public final long d;
    public final zzcxa e;
    public final zzfjs f;
    public final zzfik g;
    public final com.google.android.gms.ads.internal.util.zzj h = com.google.android.gms.ads.internal.zzt.zzh().i();
    public final zzdwy i;
    public final zzcxo j;

    public zzetn(Context context, String str, String str2, zzcxa zzcxaVar, zzfjs zzfjsVar, zzfik zzfikVar, zzdwy zzdwyVar, zzcxo zzcxoVar, long j) {
        this.f6922a = context;
        this.b = str;
        this.f6923c = str2;
        this.e = zzcxaVar;
        this.f = zzfjsVar;
        this.g = zzfikVar;
        this.i = zzdwyVar;
        this.j = zzcxoVar;
        this.d = j;
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final ListenableFuture zza() {
        String str;
        Bundle bundle = new Bundle();
        zzdwy zzdwyVar = this.i;
        ConcurrentHashMap concurrentHashMap = zzdwyVar.f6219a;
        String str2 = this.b;
        concurrentHashMap.put("seq_num", str2);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.I2)).booleanValue()) {
            zzdwyVar.b("tsacc", String.valueOf(com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis() - this.d));
            com.google.android.gms.ads.internal.zzt.zzc();
            if (true != com.google.android.gms.ads.internal.util.zzs.zzL(this.f6922a)) {
                str = "1";
            } else {
                str = "0";
            }
            zzdwyVar.b("foreground", str);
        }
        zzcxa zzcxaVar = this.e;
        zzfik zzfikVar = this.g;
        com.google.android.gms.ads.internal.client.zzm zzmVar = zzfikVar.d;
        zzccu zzccuVar = zzcxaVar.f;
        synchronized (zzccuVar.d) {
            long elapsedRealtime = zzccuVar.f5043a.elapsedRealtime();
            zzccuVar.j = elapsedRealtime;
            zzccuVar.b.e(zzmVar, elapsedRealtime);
        }
        bundle.putAll(this.f.b());
        return zzgym.a(new zzeto(this.f6922a, bundle, str2, this.f6923c, this.h, zzfikVar.g, this.j));
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final int zzb() {
        return 12;
    }
}
