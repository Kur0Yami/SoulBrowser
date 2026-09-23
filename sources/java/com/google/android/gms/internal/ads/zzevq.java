package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class zzevq implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijp f6995a;
    public final zzijp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijp f6996c;
    public final zzijp d;

    public zzevq(zzetg zzetgVar, zzijf zzijfVar, zzijf zzijfVar2, zzijf zzijfVar3) {
        this.f6995a = zzetgVar;
        this.b = zzijfVar;
        this.f6996c = zzijfVar2;
        this.d = zzijfVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzete zzb = ((zzetg) this.f6995a).zzb();
        zzeul zzeulVar = (zzeul) this.b.zzb();
        List list = (List) this.f6996c.zzb();
        ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) this.d.zzb();
        if (list.contains("10")) {
            return new zzeyj(zzeulVar, ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.yd)).intValue(), scheduledExecutorService);
        }
        return new zzeyj(zzb, ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.yd)).intValue(), scheduledExecutorService);
    }
}
