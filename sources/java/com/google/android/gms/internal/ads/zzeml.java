package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* loaded from: classes.dex */
public final class zzeml extends zzemg {

    /* renamed from: a, reason: collision with root package name */
    public final zzclg f6682a;
    public final zzczs b;

    /* renamed from: c, reason: collision with root package name */
    public final zzeow f6683c;
    public final zzdgk d;
    public final zzemr e;
    public final zzejl f;

    public zzeml(zzclg zzclgVar, zzczs zzczsVar, zzeow zzeowVar, zzdgk zzdgkVar, zzemr zzemrVar, zzejl zzejlVar) {
        this.f6682a = zzclgVar;
        this.b = zzczsVar;
        this.f6683c = zzeowVar;
        this.d = zzdgkVar;
        this.e = zzemrVar;
        this.f = zzejlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzemg
    public final zzfmb c(zzfik zzfikVar, Bundle bundle, zzfhr zzfhrVar, zzfic zzficVar) {
        zzczs zzczsVar = this.b;
        zzczsVar.b = zzfikVar;
        zzczsVar.f5635c = bundle;
        zzczsVar.e = new zzczl(zzficVar, zzfhrVar, this.e);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.t4)).booleanValue()) {
            zzczsVar.f = this.f;
        }
        zzdky o = this.f6682a.o();
        ((zzcnn) o).e = new zzczt(zzczsVar);
        zzcnn zzcnnVar = (zzcnn) o;
        zzcnnVar.d = this.d;
        zzcnnVar.f = this.f6683c;
        zzcwo b = zzcnnVar.zzh().b();
        return b.c(b.b());
    }
}
