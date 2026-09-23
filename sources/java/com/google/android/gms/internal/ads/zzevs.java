package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class zzevs implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijp f6999a;
    public final zzijp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijp f7000c;
    public final zzijp d;

    public zzevs(zzetx zzetxVar, zzijf zzijfVar, zzijf zzijfVar2, zzijf zzijfVar3) {
        this.f6999a = zzetxVar;
        this.b = zzijfVar;
        this.f7000c = zzijfVar2;
        this.d = zzijfVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzetv zzb = ((zzetx) this.f6999a).zzb();
        zzeul zzeulVar = (zzeul) this.b.zzb();
        List list = (List) this.f7000c.zzb();
        ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) this.d.zzb();
        if (list.contains("13")) {
            return new zzeyj(zzeulVar, ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Hd)).intValue(), scheduledExecutorService);
        }
        return new zzeyj(zzb, ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Hd)).intValue(), scheduledExecutorService);
    }
}
