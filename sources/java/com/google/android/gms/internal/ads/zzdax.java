package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class zzdax extends zzdgi implements zzdao {
    public final ScheduledExecutorService f;
    public ScheduledFuture g;
    public boolean h;

    public zzdax(zzdat zzdatVar, Set set, Executor executor, ScheduledExecutorService scheduledExecutorService) {
        super(set);
        this.h = false;
        this.f = scheduledExecutorService;
        m0(zzdatVar, executor);
    }

    @Override // com.google.android.gms.internal.ads.zzdao
    public final void o(final zzdlg zzdlgVar) {
        if (this.h) {
            return;
        }
        ScheduledFuture scheduledFuture = this.g;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
        }
        s0(new zzdgh() { // from class: com.google.android.gms.internal.ads.zzdau
            @Override // com.google.android.gms.internal.ads.zzdgh
            public final /* synthetic */ void zza(Object obj) {
                ((zzdao) obj).o(zzdlg.this);
            }
        });
    }

    public final void t0() {
        this.g = this.f.schedule(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdav
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r1v2, types: [com.google.android.gms.internal.ads.zzdlg, java.lang.Exception] */
            @Override // java.lang.Runnable
            public final void run() {
                zzdax zzdaxVar = zzdax.this;
                synchronized (zzdaxVar) {
                    int i = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzf("Timeout waiting for show call succeed to be called.");
                    zzdaxVar.o(new Exception("Timeout for show call succeed."));
                    zzdaxVar.h = true;
                }
            }
        }, ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.bc)).intValue(), TimeUnit.MILLISECONDS);
    }

    @Override // com.google.android.gms.internal.ads.zzdao
    public final void zzc(final com.google.android.gms.ads.internal.client.zze zzeVar) {
        s0(new zzdgh() { // from class: com.google.android.gms.internal.ads.zzdaw
            @Override // com.google.android.gms.internal.ads.zzdgh
            public final /* synthetic */ void zza(Object obj) {
                ((zzdao) obj).zzc(com.google.android.gms.ads.internal.client.zze.this);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdao
    public final void zze() {
        s0(zzdap.f5658a);
    }
}
