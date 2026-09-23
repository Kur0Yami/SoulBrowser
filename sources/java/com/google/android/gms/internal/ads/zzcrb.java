package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class zzcrb implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijp f5393a;
    public final zzijp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijf f5394c;
    public final zzijf d;
    public final zzijp e;
    public final zzijp f;

    public zzcrb(zzclp zzclpVar, zzclj zzcljVar, zzijf zzijfVar, zzijf zzijfVar2, zzijf zzijfVar3, zzijf zzijfVar4) {
        this.f5393a = zzclpVar;
        this.b = zzcljVar;
        this.f5394c = zzijfVar;
        this.d = zzijfVar2;
        this.e = zzijfVar3;
        this.f = zzijfVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        Context a2 = ((zzclp) this.f5393a).a();
        com.google.android.gms.ads.internal.util.zzj zzb = ((zzclj) this.b).zzb();
        zzejc zzejcVar = (zzejc) this.f5394c.zzb();
        zzduf zzdufVar = (zzduf) this.d.zzb();
        zzgyw zzgywVar = zzcdo.f5068a;
        zzijo.a(zzgywVar);
        return new zzcra(a2, zzb, zzejcVar, zzdufVar, zzgywVar, (zzgyw) this.e.zzb(), (ScheduledExecutorService) this.f.zzb());
    }
}
