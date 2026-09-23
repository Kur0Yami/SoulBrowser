package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class zzevr implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijp f6997a;
    public final zzijp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijp f6998c;
    public final zzijp d;

    public zzevr(zzett zzettVar, zzijf zzijfVar, zzijf zzijfVar2, zzijf zzijfVar3) {
        this.f6997a = zzettVar;
        this.b = zzijfVar;
        this.f6998c = zzijfVar2;
        this.d = zzijfVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzetr zzb = ((zzett) this.f6997a).zzb();
        zzeul zzeulVar = (zzeul) this.b.zzb();
        List list = (List) this.f6998c.zzb();
        ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) this.d.zzb();
        if (list.contains("54")) {
            return new zzeyj(zzeulVar, ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Id)).intValue(), scheduledExecutorService);
        }
        return new zzeyj(zzb, ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Id)).intValue(), scheduledExecutorService);
    }
}
