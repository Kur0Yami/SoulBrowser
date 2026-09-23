package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class zzewd implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijp f7013a;
    public final zzijp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijp f7014c;

    public zzewd(zzijf zzijfVar, zzijf zzijfVar2, zzijf zzijfVar3) {
        this.f7013a = zzijfVar;
        this.b = zzijfVar2;
        this.f7014c = zzijfVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        zzgyw zzgywVar = zzcdo.f5068a;
        zzijo.a(zzgywVar);
        zzexq zzexqVar = new zzexq(zzgywVar);
        zzeul zzeulVar = (zzeul) this.f7013a.zzb();
        List list = (List) this.b.zzb();
        ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) this.f7014c.zzb();
        if (list.contains("24")) {
            return new zzeyj(zzeulVar, ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Ad)).intValue(), scheduledExecutorService);
        }
        return new zzeyj(zzexqVar, ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Ad)).intValue(), scheduledExecutorService);
    }
}
