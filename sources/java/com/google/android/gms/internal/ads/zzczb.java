package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class zzczb implements zzdak, zzdhw, zzdfm, zzdba, zzbck {

    /* renamed from: c, reason: collision with root package name */
    public final zzdbc f5613c;
    public final zzddd f;
    public final zzfhr g;
    public final ScheduledExecutorService h;
    public final Executor i;
    public ScheduledFuture k;
    public final String m;
    public final zzgzf j = new Object();
    public final AtomicBoolean l = new AtomicBoolean();

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.ads.zzgzf, java.lang.Object] */
    public zzczb(zzdbc zzdbcVar, zzfhr zzfhrVar, ScheduledExecutorService scheduledExecutorService, Executor executor, String str, zzddd zzdddVar) {
        this.f5613c = zzdbcVar;
        this.g = zzfhrVar;
        this.h = scheduledExecutorService;
        this.i = executor;
        this.m = str;
        this.f = zzdddVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdak
    public final void J() {
    }

    @Override // com.google.android.gms.internal.ads.zzbck
    public final void Q(zzbcj zzbcjVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Pc)).booleanValue() && this.m.equals("com.google.ads.mediation.admob.AdMobAdapter") && zzbcjVar.j && this.l.compareAndSet(false, true) && this.g.e != 3) {
            com.google.android.gms.ads.internal.util.zze.zza("Full screen 1px impression occurred");
            this.f5613c.zza();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdfm
    public final synchronized void f() {
        if (this.g.e == 4) {
            this.f5613c.zza();
            return;
        }
        zzgzf zzgzfVar = this.j;
        if (zzgzfVar.isDone()) {
            return;
        }
        ScheduledFuture scheduledFuture = this.k;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
        }
        zzgzfVar.c(Boolean.TRUE);
    }

    @Override // com.google.android.gms.internal.ads.zzdba
    public final synchronized void g(com.google.android.gms.ads.internal.client.zze zzeVar) {
        try {
            zzgzf zzgzfVar = this.j;
            if (zzgzfVar.isDone()) {
                return;
            }
            ScheduledFuture scheduledFuture = this.k;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(true);
            }
            zzgzfVar.d(new Exception());
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdak
    public final void i0() {
        zzfhr zzfhrVar = this.g;
        if (zzfhrVar.e != 3) {
            int i = zzfhrVar.Y;
            if (i == 0 || i == 1) {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Pc)).booleanValue() && this.m.equals("com.google.ads.mediation.admob.AdMobAdapter")) {
                    return;
                }
                this.f5613c.zza();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdak
    public final void o() {
    }

    @Override // com.google.android.gms.internal.ads.zzdfm
    public final void q() {
    }

    @Override // com.google.android.gms.internal.ads.zzdak
    public final void zze() {
    }

    @Override // com.google.android.gms.internal.ads.zzdak
    public final void zzf() {
    }

    @Override // com.google.android.gms.internal.ads.zzdhw
    public final void zzg() {
        zzfhr zzfhrVar = this.g;
        int i = zzfhrVar.e;
        if (i != 3) {
            if (i == 4) {
                this.f.zza();
                return;
            }
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.a2)).booleanValue() && zzfhrVar.Y == 2) {
                int i2 = zzfhrVar.q;
                if (i2 == 0) {
                    this.f5613c.zza();
                    return;
                }
                zzcyz zzcyzVar = new zzcyz(this);
                zzgzf zzgzfVar = this.j;
                zzgzfVar.k(new zzgyk(zzgzfVar, zzcyzVar), this.i);
                this.k = this.h.schedule(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcza
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        zzczb zzczbVar = zzczb.this;
                        synchronized (zzczbVar) {
                            try {
                                zzgzf zzgzfVar2 = zzczbVar.j;
                                if (zzgzfVar2.isDone()) {
                                    return;
                                }
                                zzgzfVar2.c(Boolean.TRUE);
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                }, i2, TimeUnit.MILLISECONDS);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdhw
    public final void zzh() {
    }

    @Override // com.google.android.gms.internal.ads.zzdak
    public final void U(zzbzj zzbzjVar, String str, String str2) {
    }
}
