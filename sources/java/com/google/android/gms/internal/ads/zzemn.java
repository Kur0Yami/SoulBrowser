package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* loaded from: classes.dex */
public final class zzemn extends zzemg {

    /* renamed from: a, reason: collision with root package name */
    public final zzclg f6686a;
    public final zzczs b;

    /* renamed from: c, reason: collision with root package name */
    public final zzdgk f6687c;
    public final zzemr d;
    public final zzfid e;
    public final zzejl f;

    public zzemn(zzclg zzclgVar, zzczs zzczsVar, zzdgk zzdgkVar, zzfid zzfidVar, zzemr zzemrVar, zzejl zzejlVar) {
        this.f6686a = zzclgVar;
        this.b = zzczsVar;
        this.f6687c = zzdgkVar;
        this.e = zzfidVar;
        this.d = zzemrVar;
        this.f = zzejlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzemg
    public final zzfmb c(zzfik zzfikVar, Bundle bundle, zzfhr zzfhrVar, zzfic zzficVar) {
        zzfid zzfidVar;
        zzczs zzczsVar = this.b;
        zzczsVar.b = zzfikVar;
        zzczsVar.f5635c = bundle;
        zzczsVar.e = new zzczl(zzficVar, zzfhrVar, this.d);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.s4)).booleanValue() && (zzfidVar = this.e) != null) {
            zzczsVar.d = zzfidVar;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.t4)).booleanValue()) {
            zzczsVar.f = this.f;
        }
        zzdti r = this.f6686a.r();
        ((zzcny) r).e = new zzczt(zzczsVar);
        zzcny zzcnyVar = (zzcny) r;
        zzcnyVar.d = this.f6687c;
        zzcwo zza = ((zzcnz) zzcnyVar.zzh()).zza();
        return zza.c(zza.b());
    }
}
