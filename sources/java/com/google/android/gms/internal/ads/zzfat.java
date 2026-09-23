package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class zzfat implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijp f7171a;
    public final zzijp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijp f7172c;
    public final zzejf d;
    public final zzdab e;
    public final zzijp f;

    public zzfat(zzijp zzijpVar, zzijp zzijpVar2, zzijp zzijpVar3, zzejf zzejfVar, zzdab zzdabVar, zzijp zzijpVar4) {
        this.f7171a = zzijpVar;
        this.b = zzijpVar2;
        this.f7172c = zzijpVar3;
        this.d = zzejfVar;
        this.e = zzdabVar;
        this.f = zzijpVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        com.google.android.gms.ads.internal.util.zzj zzb = ((zzclj) this.f7171a).zzb();
        Context a2 = ((zzclp) this.b).a();
        zzgyw zzgywVar = zzcdo.f5068a;
        zzijo.a(zzgywVar);
        return new zzfar(zzb, a2, zzgywVar, (ScheduledExecutorService) this.f7172c.zzb(), new zzeje(((zzclp) this.d.f6557a).a()), this.e.a(), ((zzcmg) this.f).a());
    }
}
