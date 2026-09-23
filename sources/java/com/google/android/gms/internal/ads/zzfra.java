package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class zzfra implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzclp f7586a;
    public final zzcmg b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijf f7587c;
    public final zzijf d;
    public final zzcoz e;
    public final zzijf f;
    public final zzijf g;

    public zzfra(zzclp zzclpVar, zzcmg zzcmgVar, zzijf zzijfVar, zzijf zzijfVar2, zzcoz zzcozVar, zzijf zzijfVar3, zzijf zzijfVar4) {
        this.f7586a = zzclpVar;
        this.b = zzcmgVar;
        this.f7587c = zzijfVar;
        this.d = zzijfVar2;
        this.e = zzcozVar;
        this.f = zzijfVar3;
        this.g = zzijfVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        return new zzfqz(this.f7586a.a(), this.b.a(), (ScheduledExecutorService) this.f7587c.zzb(), (zzfly) this.d.zzb(), zzfjg.a(this.e.f5351a.a()), (Clock) this.f.zzb(), (zzfpp) this.g.zzb());
    }
}
