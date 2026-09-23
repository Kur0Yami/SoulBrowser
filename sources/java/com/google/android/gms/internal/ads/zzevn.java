package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class zzevn implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzesk f6992a;
    public final zzijp b;

    public zzevn(zzesk zzeskVar, zzijf zzijfVar) {
        this.f6992a = zzeskVar;
        this.b = zzijfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzeyj(this.f6992a.zzb(), ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Kd)).intValue(), (ScheduledExecutorService) this.b.zzb());
    }
}
