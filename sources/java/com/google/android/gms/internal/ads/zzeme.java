package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* loaded from: classes.dex */
public final class zzeme extends zzemg {

    /* renamed from: a, reason: collision with root package name */
    public final zzclg f6670a;
    public final zzdlq b;

    /* renamed from: c, reason: collision with root package name */
    public final zzczs f6671c;
    public final zzdgk d;
    public final zzemr e;
    public final zzejl f;

    public zzeme(zzclg zzclgVar, zzdlq zzdlqVar, zzczs zzczsVar, zzdgk zzdgkVar, zzemr zzemrVar, zzejl zzejlVar) {
        this.f6670a = zzclgVar;
        this.b = zzdlqVar;
        this.f6671c = zzczsVar;
        this.d = zzdgkVar;
        this.e = zzemrVar;
        this.f = zzejlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzemg
    public final zzfmb c(zzfik zzfikVar, Bundle bundle, zzfhr zzfhrVar, zzfic zzficVar) {
        zzczs zzczsVar = this.f6671c;
        zzczsVar.b = zzfikVar;
        zzczsVar.f5635c = bundle;
        zzczsVar.e = new zzczl(zzficVar, zzfhrVar, this.e);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.t4)).booleanValue()) {
            zzczsVar.f = this.f;
        }
        zzdlu q = this.f6670a.q();
        ((zzcms) q).e = new zzczt(zzczsVar);
        zzcms zzcmsVar = (zzcms) q;
        zzcmsVar.d = this.d;
        zzcmsVar.f = this.b;
        zzcmsVar.g = new zzcsz(null);
        zzcwo a2 = zzcmsVar.zzh().a();
        return a2.c(a2.b());
    }
}
