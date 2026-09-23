package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;

/* loaded from: classes.dex */
public final class zzclx implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijf f5258a;

    public zzclx(zzijf zzijfVar) {
        this.f5258a = zzijfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        Set set;
        zzdzr zzdzrVar = (zzdzr) this.f5258a.zzb();
        zzgyw zzgywVar = zzcdo.f5068a;
        zzijo.a(zzgywVar);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.h2)).booleanValue()) {
            set = Collections.singleton(new zzdij(zzdzrVar, zzgywVar));
        } else {
            set = Collections.EMPTY_SET;
        }
        zzijo.a(set);
        return set;
    }
}
