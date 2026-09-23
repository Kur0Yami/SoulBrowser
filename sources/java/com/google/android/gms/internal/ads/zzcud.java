package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class zzcud implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzexh f5477a;
    public final zzijp b;

    public zzcud(zzexh zzexhVar, zzijf zzijfVar) {
        this.f5477a = zzexhVar;
        this.b = zzijfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzeyj(this.f5477a.zzb(), ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Pd)).intValue(), (ScheduledExecutorService) this.b.zzb());
    }
}
