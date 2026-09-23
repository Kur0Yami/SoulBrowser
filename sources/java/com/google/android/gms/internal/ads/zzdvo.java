package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;

/* loaded from: classes.dex */
public final class zzdvo implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzdwh f6185a;

    public zzdvo(zzdwh zzdwhVar) {
        this.f6185a = zzdwhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        Set set;
        zzgyw zzgywVar = zzcdo.f5068a;
        zzijo.a(zzgywVar);
        zzdwh zzdwhVar = this.f6185a;
        zzdwg zzdwgVar = new zzdwg((zzbfj) zzdwhVar.f6202a.zzb(), zzdwhVar.b.zzb());
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Y5)).booleanValue()) {
            set = Collections.singleton(new zzdij(zzdwgVar, zzgywVar));
        } else {
            set = Collections.EMPTY_SET;
        }
        zzijo.a(set);
        return set;
    }
}
