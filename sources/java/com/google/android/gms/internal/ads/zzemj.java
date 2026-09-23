package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.view.ViewGroup;

/* loaded from: classes.dex */
public final class zzemj extends zzemg {

    /* renamed from: a, reason: collision with root package name */
    public final zzclg f6678a;
    public final zzczs b;

    /* renamed from: c, reason: collision with root package name */
    public final zzeow f6679c;
    public final zzdgk d;
    public final zzdlq e;
    public final zzddl f;
    public final ViewGroup g;
    public final zzdfq h;
    public final zzemr i;
    public final zzejl j;

    public zzemj(zzclg zzclgVar, zzczs zzczsVar, zzeow zzeowVar, zzdgk zzdgkVar, zzdlq zzdlqVar, zzddl zzddlVar, ViewGroup viewGroup, zzdfq zzdfqVar, zzemr zzemrVar, zzejl zzejlVar) {
        this.f6678a = zzclgVar;
        this.b = zzczsVar;
        this.f6679c = zzeowVar;
        this.d = zzdgkVar;
        this.e = zzdlqVar;
        this.f = zzddlVar;
        this.g = viewGroup;
        this.h = zzdfqVar;
        this.i = zzemrVar;
        this.j = zzejlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzemg
    public final zzfmb c(zzfik zzfikVar, Bundle bundle, zzfhr zzfhrVar, zzfic zzficVar) {
        zzczs zzczsVar = this.b;
        zzczsVar.b = zzfikVar;
        zzczsVar.f5635c = bundle;
        zzczsVar.e = new zzczl(zzficVar, zzfhrVar, this.i);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.t4)).booleanValue()) {
            zzczsVar.f = this.j;
        }
        zzcug k = this.f6678a.k();
        ((zzcnc) k).e = new zzczt(zzczsVar);
        zzcnc zzcncVar = (zzcnc) k;
        zzcncVar.d = this.d;
        zzcncVar.f = this.f6679c;
        zzcncVar.j = this.e;
        zzcncVar.g = new zzcvc(this.f, this.h);
        zzcncVar.i = new zzcsz(this.g);
        zzcwo b = zzcncVar.zzh().b();
        return b.c(b.b());
    }
}
