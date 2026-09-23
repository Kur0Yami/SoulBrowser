package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class zzevw implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzeut f7004a;
    public final zzijp b;

    public zzevw(zzeut zzeutVar, zzijf zzijfVar) {
        this.f7004a = zzeutVar;
        this.b = zzijfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzeyj(this.f7004a.zzb(), ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Nd)).intValue(), (ScheduledExecutorService) this.b.zzb());
    }
}
