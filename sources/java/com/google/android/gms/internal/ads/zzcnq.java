package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes.dex */
final class zzcnq implements zzffy {

    /* renamed from: a, reason: collision with root package name */
    public final zzijf f5317a;

    public zzcnq(zzcmv zzcmvVar, Context context, String str, com.google.android.gms.ads.internal.client.zzr zzrVar) {
        zzijh a2 = zzijh.a(context);
        zzijh a3 = zzijh.a(zzrVar);
        zzijh a4 = zzijh.a(str);
        zzijf zzijfVar = zzcmvVar.l;
        zzijf a5 = zzijf.a(new zzeqq(zzijfVar));
        zzijf a6 = zzijf.a(new zzfgw(zzcmvVar.J0));
        this.f5317a = zzijf.a(new zzeqy(a2, a3, a4, zzijf.a(new zzffw(zzcmvVar.d, a5, a6, a2, zzcmvVar.F)), a5, a6, zzcmvVar.j, zzcmvVar.G, zzijfVar));
    }

    @Override // com.google.android.gms.internal.ads.zzffy
    public final zzeqx zza() {
        return (zzeqx) this.f5317a.zzb();
    }
}
