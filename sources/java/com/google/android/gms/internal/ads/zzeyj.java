package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class zzeyj implements zzezx {

    /* renamed from: a, reason: collision with root package name */
    public final zzezx f7083a;
    public final long b;

    /* renamed from: c, reason: collision with root package name */
    public final ScheduledExecutorService f7084c;

    public zzeyj(zzezx zzezxVar, long j, ScheduledExecutorService scheduledExecutorService) {
        this.f7083a = zzezxVar;
        this.b = j;
        this.f7084c = scheduledExecutorService;
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final ListenableFuture zza() {
        ListenableFuture zza = this.f7083a.zza();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.T2)).booleanValue()) {
            timeUnit = TimeUnit.MICROSECONDS;
        }
        long j = this.b;
        if (j > 0) {
            zza = zzgym.g(zza, j, timeUnit, this.f7084c);
        }
        return zzgym.f(zza, Throwable.class, new zzgxu() { // from class: com.google.android.gms.internal.ads.zzeyi
            @Override // com.google.android.gms.internal.ads.zzgxu
            public final ListenableFuture zza(Object obj) {
                Throwable th = (Throwable) obj;
                zzeyj zzeyjVar = zzeyj.this;
                zzeyjVar.getClass();
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.R2)).booleanValue()) {
                    zzezx zzezxVar = zzeyjVar.f7083a;
                    zzcda zzh = com.google.android.gms.ads.internal.zzt.zzh();
                    int zzb = zzezxVar.zzb();
                    StringBuilder sb = new StringBuilder(String.valueOf(zzb).length() + 22);
                    sb.append("OptionalSignalTimeout:");
                    sb.append(zzb);
                    zzh.f(sb.toString(), th);
                }
                return zzgyq.f;
            }
        }, zzcdo.g);
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final int zzb() {
        return this.f7083a.zzb();
    }
}
