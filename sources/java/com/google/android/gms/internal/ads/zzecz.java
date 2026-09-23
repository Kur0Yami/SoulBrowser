package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class zzecz implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijp f6385a;
    public final zzdab b;

    /* renamed from: c, reason: collision with root package name */
    public final zzeca f6386c;
    public final zzijp d;
    public final zzijf e;
    public final zzijf f;

    public zzecz(zzijp zzijpVar, zzdab zzdabVar, zzeca zzecaVar, zzijp zzijpVar2, zzijf zzijfVar, zzijf zzijfVar2) {
        this.f6385a = zzijpVar;
        this.b = zzdabVar;
        this.f6386c = zzecaVar;
        this.d = zzijpVar2;
        this.e = zzijfVar;
        this.f = zzijfVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        Context a2 = ((zzclp) this.f6385a).a();
        zzfik a3 = this.b.a();
        zzgyw zzgywVar = zzcdo.b;
        zzijo.a(zzgywVar);
        zzgyw zzgywVar2 = zzcdo.f5068a;
        zzijo.a(zzgywVar2);
        zzeca zzecaVar = this.f6386c;
        zzebz zzebzVar = new zzebz(zzgywVar, zzgywVar2, new zzedj((Context) zzecaVar.f6357a.f6370a.zzb(), zzgywVar2), zzijf.b(zzecaVar.b));
        zzijo.a(zzgywVar2);
        return new zzecy(a2, a3, zzebzVar, zzgywVar2, (ScheduledExecutorService) this.d.zzb(), (zzegr) this.e.zzb(), (zzfno) this.f.zzb());
    }
}
