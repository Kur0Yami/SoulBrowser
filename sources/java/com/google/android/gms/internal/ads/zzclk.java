package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class zzclk implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijf f5247a;
    public final zzfqe b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijf f5248c;

    public zzclk(zzijf zzijfVar, zzfqe zzfqeVar, zzijf zzijfVar2) {
        this.f5247a = zzijfVar;
        this.b = zzfqeVar;
        this.f5248c = zzijfVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        Integer num = (Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Q);
        num.getClass();
        int intValue = num.intValue();
        ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) this.f5247a.zzb();
        zzfqd zzb = this.b.zzb();
        Clock clock = (Clock) this.f5248c.zzb();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.O)).booleanValue()) {
            return new zzfpp(intValue, scheduledExecutorService, zzb, clock);
        }
        return null;
    }
}
