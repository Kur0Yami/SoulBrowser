package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class zzcle implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijf f5239a;
    public final zzijf b;

    public zzcle(zzijf zzijfVar, zzijf zzijfVar2) {
        this.f5239a = zzijfVar;
        this.b = zzijfVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzcld((ScheduledExecutorService) this.b.zzb());
    }
}
