package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzctr implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzcuv f5463a;

    public zzctr(zzcuv zzcuvVar) {
        this.f5463a = zzcuvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        Object obj;
        zzcuv zzcuvVar = this.f5463a;
        zzcuu zzcuuVar = new zzcuu(zzcuvVar.f5490a.f5474a.d, (Executor) zzcuvVar.b.zzb());
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Wd)).booleanValue()) {
            zzdij zzdijVar = new zzdij(zzcuuVar, zzcdo.f5068a);
            int i = zzgtn.g;
            obj = new zzgvo(zzdijVar);
        } else {
            int i2 = zzgtn.g;
            obj = zzgve.n;
        }
        zzijo.a(obj);
        return obj;
    }
}
