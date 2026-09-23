package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class zzfly implements zzbde {

    /* renamed from: c, reason: collision with root package name */
    public final ScheduledExecutorService f7467c;
    public final Executor f;
    public final HashMap g = new HashMap();
    public boolean h = false;

    public zzfly(ScheduledExecutorService scheduledExecutorService, Executor executor) {
        this.f7467c = scheduledExecutorService;
        this.f = executor;
    }

    public final synchronized void a(Runnable runnable, long j) {
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        synchronized (this) {
            try {
                if (!this.h) {
                    com.google.android.gms.ads.internal.zzt.zzg().b(this);
                    this.h = true;
                }
                final zzflx zzflxVar = new zzflx(this, runnable, com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis() + timeUnit.toMillis(j));
                ScheduledFuture<?> schedule = this.f7467c.schedule(new Runnable() { // from class: com.google.android.gms.internal.ads.zzflv
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        zzflx zzflxVar2;
                        zzflx zzflxVar3 = zzflx.this;
                        zzfly zzflyVar = zzflxVar3.d;
                        synchronized (zzflyVar) {
                            try {
                                ScheduledFuture scheduledFuture = zzflxVar3.f7466c;
                                if (scheduledFuture != null) {
                                    zzflxVar2 = (zzflx) zzflyVar.g.remove(scheduledFuture);
                                } else {
                                    zzflxVar2 = null;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        if (zzflxVar2 != null) {
                            zzfly zzflyVar2 = zzflxVar3.d;
                            zzflyVar2.f.execute(zzflxVar3.f7465a);
                        }
                    }
                }, j, timeUnit);
                zzflxVar.f7466c = schedule;
                this.g.put(schedule, zzflxVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbde
    public final void zza(boolean z) {
        if (z) {
            this.f.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzflw
                @Override // java.lang.Runnable
                public final void run() {
                    zzfly zzflyVar = zzfly.this;
                    synchronized (zzflyVar) {
                        HashMap hashMap = zzflyVar.g;
                        ArrayList arrayList = new ArrayList(hashMap.keySet());
                        int size = arrayList.size();
                        for (int i = 0; i < size; i++) {
                            ScheduledFuture scheduledFuture = (ScheduledFuture) arrayList.get(i);
                            zzflx zzflxVar = (zzflx) hashMap.get(scheduledFuture);
                            if (zzflxVar != null && scheduledFuture != null && !scheduledFuture.isDone()) {
                                scheduledFuture.cancel(false);
                                hashMap.remove(scheduledFuture);
                                long currentTimeMillis = zzflxVar.b - com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis();
                                Runnable runnable = zzflxVar.f7465a;
                                long max = Math.max(0L, currentTimeMillis);
                                TimeUnit timeUnit = TimeUnit.MILLISECONDS;
                                zzflyVar.a(runnable, max);
                            }
                        }
                    }
                }
            });
        }
    }
}
