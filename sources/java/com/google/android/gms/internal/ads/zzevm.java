package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class zzevm implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzesa f6991a;
    public final zzijp b;

    public zzevm(zzesa zzesaVar, zzijf zzijfVar) {
        this.f6991a = zzesaVar;
        this.b = zzijfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzeyj(this.f6991a.zzb(), ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Ld)).intValue(), (ScheduledExecutorService) this.b.zzb());
    }
}
