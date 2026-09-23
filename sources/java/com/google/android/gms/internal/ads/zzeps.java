package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes.dex */
public final class zzeps extends com.google.android.gms.ads.internal.client.zzbp {

    /* renamed from: c, reason: collision with root package name */
    public final zzera f6798c;

    public zzeps(Context context, zzclg zzclgVar, zzfij zzfijVar, zzdnw zzdnwVar, com.google.android.gms.ads.internal.client.zzbk zzbkVar) {
        zzerc zzercVar = new zzerc(zzdnwVar, zzclgVar.d());
        zzercVar.b.f6823c.set(zzbkVar);
        this.f6798c = new zzera(new zzerm(zzclgVar, context, zzercVar, zzfijVar), zzfijVar.f7389c);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbq
    public final void zze(com.google.android.gms.ads.internal.client.zzm zzmVar) {
        this.f6798c.b(zzmVar, 1);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbq
    public final synchronized String zzf() {
        return this.f6798c.c();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbq
    public final synchronized boolean zzg() {
        return this.f6798c.a();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbq
    public final synchronized String zzh() {
        return this.f6798c.d();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbq
    public final synchronized void zzi(com.google.android.gms.ads.internal.client.zzm zzmVar, int i) {
        this.f6798c.b(zzmVar, i);
    }
}
