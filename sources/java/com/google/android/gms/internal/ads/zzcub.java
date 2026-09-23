package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class zzcub implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzert f5475a;
    public final zzijp b;

    public zzcub(zzert zzertVar, zzijf zzijfVar) {
        this.f5475a = zzertVar;
        this.b = zzijfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzeyj(this.f5475a.zzb(), ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Od)).intValue(), (ScheduledExecutorService) this.b.zzb());
    }
}
