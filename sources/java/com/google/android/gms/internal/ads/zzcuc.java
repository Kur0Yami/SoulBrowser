package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class zzcuc implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzeua f5476a;
    public final zzijp b;

    public zzcuc(zzeua zzeuaVar, zzijf zzijfVar) {
        this.f5476a = zzeuaVar;
        this.b = zzijfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        return new zzeyj(new zzety(this.f5476a.f6939a.a()), ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Td)).intValue(), (ScheduledExecutorService) this.b.zzb());
    }
}
