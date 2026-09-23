package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class zzewn implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijp f7026a;
    public final zzijp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijp f7027c;
    public final zzijp d;

    public zzewn(zzfan zzfanVar, zzijf zzijfVar, zzijf zzijfVar2, zzijf zzijfVar3) {
        this.f7026a = zzfanVar;
        this.b = zzijfVar;
        this.f7027c = zzijfVar2;
        this.d = zzijfVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzfam zzb = ((zzfan) this.f7026a).zzb();
        zzeul zzeulVar = (zzeul) this.b.zzb();
        List list = (List) this.f7027c.zzb();
        ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) this.d.zzb();
        if (list.contains("39")) {
            return new zzeyj(zzeulVar, ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.sd)).intValue(), scheduledExecutorService);
        }
        return new zzeyj(zzb, ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.sd)).intValue(), scheduledExecutorService);
    }
}
