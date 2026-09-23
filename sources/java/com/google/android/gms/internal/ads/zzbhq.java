package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class zzbhq implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijf f4685a;
    public final zzijf b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijf f4686c;
    public final zzijf d;

    public zzbhq(zzijf zzijfVar, zzijf zzijfVar2, zzijf zzijfVar3, zzijf zzijfVar4) {
        this.f4685a = zzijfVar;
        this.b = zzijfVar2;
        this.f4686c = zzijfVar3;
        this.d = zzijfVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final zzbhp zzb() {
        return new zzbhp((ScheduledExecutorService) this.f4685a.zzb(), (com.google.android.gms.ads.nonagon.signalgeneration.zzo) this.b.zzb(), (com.google.android.gms.ads.nonagon.signalgeneration.zzf) this.f4686c.zzb(), (zzdxj) this.d.zzb());
    }
}
