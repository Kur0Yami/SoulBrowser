package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class zzewb implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijp f7010a;
    public final zzijp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijp f7011c;
    public final zzijp d;

    public zzewb(zzexk zzexkVar, zzijf zzijfVar, zzijf zzijfVar2, zzijf zzijfVar3) {
        this.f7010a = zzexkVar;
        this.b = zzijfVar;
        this.f7011c = zzijfVar2;
        this.d = zzijfVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzexi zzb = ((zzexk) this.f7010a).zzb();
        zzeul zzeulVar = (zzeul) this.b.zzb();
        List list = (List) this.f7011c.zzb();
        ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) this.d.zzb();
        if (list.contains("60")) {
            return new zzeyj(zzeulVar, ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.ie)).intValue(), scheduledExecutorService);
        }
        return new zzeyj(zzb, ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.ie)).intValue(), scheduledExecutorService);
    }
}
