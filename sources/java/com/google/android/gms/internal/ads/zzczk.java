package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class zzczk implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzcwe f5623a;
    public final zzcwb b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijp f5624c;
    public final zzijp d;
    public final zzijp e;

    public zzczk(zzcwe zzcweVar, zzcwb zzcwbVar, zzijf zzijfVar, zzijf zzijfVar2, zzijf zzijfVar3) {
        this.f5623a = zzcweVar;
        this.b = zzcwbVar;
        this.f5624c = zzijfVar;
        this.d = zzijfVar2;
        this.e = zzijfVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzczj(this.f5623a.a(), this.b.a(), (Clock) this.f5624c.zzb(), (zzdxe) this.d.zzb(), (ScheduledExecutorService) this.e.zzb());
    }
}
