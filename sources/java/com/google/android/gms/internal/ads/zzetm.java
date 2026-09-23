package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class zzetm implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijp f6920a;
    public final zzijp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijp f6921c;

    public zzetm(zzijp zzijpVar, zzijp zzijpVar2, zzijp zzijpVar3) {
        this.f6920a = zzijpVar;
        this.b = zzijpVar2;
        this.f6921c = zzijpVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        Context a2 = ((zzclp) this.f6920a).a();
        zzcda zzcdaVar = (zzcda) this.b.zzb();
        ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) this.f6921c.zzb();
        zzgyw zzgywVar = zzcdo.f5068a;
        zzijo.a(zzgywVar);
        return new zzetk(a2, zzcdaVar, scheduledExecutorService, zzgywVar);
    }
}
