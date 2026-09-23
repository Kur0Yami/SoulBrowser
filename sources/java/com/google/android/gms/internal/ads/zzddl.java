package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import java.util.Collections;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class zzddl extends zzdgi {
    public final ScheduledExecutorService f;
    public final Clock g;
    public final zzdxe h;
    public long i;
    public long j;
    public long k;
    public long l;
    public boolean m;
    public ScheduledFuture n;
    public ScheduledFuture o;

    public zzddl(ScheduledExecutorService scheduledExecutorService, Clock clock, zzdxe zzdxeVar) {
        super(Collections.EMPTY_SET);
        this.i = -1L;
        this.j = -1L;
        this.k = -1L;
        this.l = -1L;
        this.m = false;
        this.f = scheduledExecutorService;
        this.g = clock;
        this.h = zzdxeVar;
    }

    public final synchronized void t0(int i) {
        StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 20);
        sb.append("In scheduleRefresh: ");
        sb.append(i);
        com.google.android.gms.ads.internal.util.zze.zza(sb.toString());
        if (i > 0) {
            long millis = TimeUnit.SECONDS.toMillis(i);
            if (this.m) {
                long j = this.k;
                if (j <= 0 || millis >= j) {
                    millis = j;
                }
                this.k = millis;
                return;
            }
            long elapsedRealtime = this.g.elapsedRealtime();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Ee)).booleanValue()) {
                long j2 = this.i;
                if (elapsedRealtime >= j2 || j2 - elapsedRealtime > millis) {
                    v0(millis);
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.bf)).booleanValue()) {
                        zzdxd a2 = this.h.a();
                        a2.b("action", "rtnc");
                        a2.e();
                    }
                }
            } else {
                long j3 = this.i;
                if (elapsedRealtime > j3 || j3 - elapsedRealtime > millis) {
                    v0(millis);
                }
            }
        }
    }

    public final synchronized void u0(int i) {
        StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 28);
        sb.append("In scheduleShowRefreshedAd: ");
        sb.append(i);
        com.google.android.gms.ads.internal.util.zze.zza(sb.toString());
        if (i > 0) {
            long millis = TimeUnit.SECONDS.toMillis(i);
            if (this.m) {
                long j = this.l;
                if (j <= 0 || millis >= j) {
                    millis = j;
                }
                this.l = millis;
                return;
            }
            long elapsedRealtime = this.g.elapsedRealtime();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Ee)).booleanValue()) {
                if (elapsedRealtime == this.j) {
                    com.google.android.gms.ads.internal.util.zze.zza("In scheduleShowRefreshedAd: currentTimeMs = scheduledShowTimeMs");
                }
                long j2 = this.j;
                if (elapsedRealtime >= j2 || j2 - elapsedRealtime > millis) {
                    w0(millis);
                }
            } else {
                long j3 = this.j;
                if (elapsedRealtime > j3 || j3 - elapsedRealtime > millis) {
                    w0(millis);
                }
            }
        }
    }

    public final synchronized void v0(long j) {
        try {
            ScheduledFuture scheduledFuture = this.n;
            if (scheduledFuture != null && !scheduledFuture.isDone()) {
                this.n.cancel(false);
            }
            this.i = this.g.elapsedRealtime() + j;
            this.n = this.f.schedule(new zzddj(this), j, TimeUnit.MILLISECONDS);
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void w0(long j) {
        try {
            ScheduledFuture scheduledFuture = this.o;
            if (scheduledFuture != null && !scheduledFuture.isDone()) {
                this.o.cancel(false);
            }
            this.j = this.g.elapsedRealtime() + j;
            this.o = this.f.schedule(new zzddk(this), j, TimeUnit.MILLISECONDS);
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void zzc() {
        this.m = false;
        v0(0L);
    }
}
