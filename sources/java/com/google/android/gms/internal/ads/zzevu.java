package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class zzevu implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzeuh f7002a;
    public final zzijp b;

    public zzevu(zzeuh zzeuhVar, zzijf zzijfVar) {
        this.f7002a = zzeuhVar;
        this.b = zzijfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        return new zzeyj(new zzeug((zzfer) this.f7002a.f6946a.f9006a), ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Fd)).intValue(), (ScheduledExecutorService) this.b.zzb());
    }
}
