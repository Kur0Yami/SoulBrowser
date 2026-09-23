package com.google.android.gms.internal.ads;

import com.google.android.gms.tasks.Tasks;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class zzfbg implements zzezx {

    /* renamed from: a, reason: collision with root package name */
    public final zzcda f7188a;
    public final ScheduledExecutorService b;

    /* renamed from: c, reason: collision with root package name */
    public final zzgyw f7189c;

    public zzfbg(zzcda zzcdaVar, ScheduledExecutorService scheduledExecutorService, zzgyw zzgywVar) {
        this.f7188a = zzcdaVar;
        this.b = scheduledExecutorService;
        this.f7189c = zzgywVar;
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final ListenableFuture zza() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.I3)).booleanValue()) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.N3)).booleanValue()) {
                ListenableFuture a2 = zzfzr.a(Tasks.e(null));
                zzfbf zzfbfVar = zzfbf.f7187a;
                zzgyw zzgywVar = this.f7189c;
                ListenableFuture h = zzgym.h(a2, zzfbfVar, zzgywVar);
                if (((Boolean) zzbhx.f4695a.c()).booleanValue()) {
                    h = zzgym.g(h, ((Long) zzbhx.b.c()).longValue(), TimeUnit.MILLISECONDS, this.b);
                }
                return zzgym.e(h, Exception.class, new zzgpr() { // from class: com.google.android.gms.internal.ads.zzfbe
                    @Override // com.google.android.gms.internal.ads.zzgpr
                    public final /* synthetic */ Object apply(Object obj) {
                        zzfbg.this.f7188a.f("AppSetIdInfoGmscoreSignal", (Exception) obj);
                        return new zzfbh(null, -1);
                    }
                }, zzgywVar);
            }
        }
        return zzgym.a(new zzfbh(null, -1));
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final int zzb() {
        return 43;
    }
}
