package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class zzemd implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijp f6668a;
    public final zzijf b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijf f6669c;
    public final zzijf d;

    public zzemd(zzijp zzijpVar, zzijf zzijfVar, zzijf zzijfVar2, zzijf zzijfVar3) {
        this.f6668a = zzijpVar;
        this.b = zzijfVar;
        this.f6669c = zzijfVar2;
        this.d = zzijfVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final zzemb zzb() {
        zzgyw zzgywVar = zzcdo.f5068a;
        zzijo.a(zzgywVar);
        return new zzemb(zzgywVar, (ScheduledExecutorService) this.f6668a.zzb(), (zzcvn) this.b.zzb(), (zzemr) this.f6669c.zzb(), (zzfpe) this.d.zzb());
    }
}
