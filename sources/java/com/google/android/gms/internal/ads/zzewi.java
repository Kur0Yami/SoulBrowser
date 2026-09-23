package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class zzewi implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzeyt f7020a;
    public final zzijp b;

    public zzewi(zzeyt zzeytVar, zzijf zzijfVar) {
        this.f7020a = zzeytVar;
        this.b = zzijfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzeyj(this.f7020a.zzb(), ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.xd)).intValue(), (ScheduledExecutorService) this.b.zzb());
    }
}
