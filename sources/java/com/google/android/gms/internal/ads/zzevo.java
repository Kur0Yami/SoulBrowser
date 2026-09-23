package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class zzevo implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzesu f6993a;
    public final zzijp b;

    public zzevo(zzesu zzesuVar, zzijf zzijfVar) {
        this.f6993a = zzesuVar;
        this.b = zzijfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzeyj(this.f6993a.zzb(), ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Md)).intValue(), (ScheduledExecutorService) this.b.zzb());
    }
}
