package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* loaded from: classes.dex */
public final class zzemh extends zzemg {

    /* renamed from: a, reason: collision with root package name */
    public final zzclg f6674a;
    public final zzczs b;

    /* renamed from: c, reason: collision with root package name */
    public final zzdgk f6675c;
    public final zzemr d;
    public final zzejl e;

    public zzemh(zzclg zzclgVar, zzczs zzczsVar, zzdgk zzdgkVar, zzemr zzemrVar, zzejl zzejlVar) {
        this.f6674a = zzclgVar;
        this.b = zzczsVar;
        this.f6675c = zzdgkVar;
        this.d = zzemrVar;
        this.e = zzejlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzemg
    public final zzfmb c(zzfik zzfikVar, Bundle bundle, zzfhr zzfhrVar, zzfic zzficVar) {
        zzczs zzczsVar = this.b;
        zzczsVar.b = zzfikVar;
        zzczsVar.f5635c = bundle;
        zzczsVar.e = new zzczl(zzficVar, zzfhrVar, this.d);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.t4)).booleanValue()) {
            zzczsVar.f = this.e;
        }
        zzcsp m = this.f6674a.m();
        ((zzcmx) m).e = new zzczt(zzczsVar);
        zzcmx zzcmxVar = (zzcmx) m;
        zzcmxVar.d = this.f6675c;
        zzcwo zza = ((zzcmy) zzcmxVar.zzh()).zza();
        return zza.c(zza.b());
    }
}
