package com.google.android.gms.internal.ads;

import android.content.Context;
import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class zzdzq implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijf f6287a;
    public final zzclp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzclq f6288c;
    public final zzijf d;
    public final zzijf e;
    public final zzijf f;
    public final zzcmg g;
    public final zzdhr h;
    public final zzijf i;

    public zzdzq(zzijf zzijfVar, zzclp zzclpVar, zzclq zzclqVar, zzijf zzijfVar2, zzijf zzijfVar3, zzijf zzijfVar4, zzcmg zzcmgVar, zzdhr zzdhrVar, zzijf zzijfVar5) {
        this.f6287a = zzijfVar;
        this.b = zzclpVar;
        this.f6288c = zzclqVar;
        this.d = zzijfVar2;
        this.e = zzijfVar3;
        this.f = zzijfVar4;
        this.g = zzcmgVar;
        this.h = zzdhrVar;
        this.i = zzijfVar5;
    }

    /* JADX WARN: Type inference failed for: r10v0, types: [com.google.android.gms.internal.ads.zzdgi, com.google.android.gms.internal.ads.zzdhq] */
    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        Executor executor = (Executor) this.f6287a.zzb();
        Context a2 = this.b.a();
        WeakReference weakReference = this.f6288c.f5253a.d;
        zzijo.a(weakReference);
        zzgyw zzgywVar = zzcdo.f5068a;
        zzijo.a(zzgywVar);
        return new zzdzp(executor, a2, weakReference, zzgywVar, (zzduu) this.d.zzb(), (ScheduledExecutorService) this.e.zzb(), (zzdxp) this.f.zzb(), this.g.a(), new zzdgi(this.h.f5804a.zzb()), (zzfnr) this.i.zzb());
    }
}
