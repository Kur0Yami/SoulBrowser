package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class zzevt implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijp f7001a;
    public final zzijp b;

    public zzevt(zzijf zzijfVar, zzijf zzijfVar2) {
        this.f7001a = zzijfVar;
        this.b = zzijfVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzeyj((zzeul) this.f7001a.zzb(), ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Gd)).intValue(), (ScheduledExecutorService) this.b.zzb());
    }
}
