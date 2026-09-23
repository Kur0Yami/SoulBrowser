package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.internal.ClientApi;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.PriorityQueue;
import java.util.Queue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public abstract class zzfqy {

    /* renamed from: a, reason: collision with root package name */
    public final ClientApi f7581a;
    public final Context b;

    /* renamed from: c, reason: collision with root package name */
    public final int f7582c;
    public final zzfjg d;
    public com.google.android.gms.ads.internal.client.zzft e;
    public final zzfpp f;
    public final AtomicBoolean g;
    public final com.google.android.gms.ads.internal.client.zzce h;
    public final com.google.android.gms.ads.internal.client.zzch i;
    public final Queue j;
    public final zzfpy k;
    public final String l;
    public final AtomicBoolean m;
    public final ScheduledExecutorService n;
    public final zzfly o;
    public final AtomicBoolean p;
    public final AtomicBoolean q;
    public zzfqd r;
    public final Clock s;
    public final zzfqk t;

    public zzfqy(ClientApi clientApi, Context context, int i, zzfjg zzfjgVar, com.google.android.gms.ads.internal.client.zzft zzftVar, com.google.android.gms.ads.internal.client.zzce zzceVar, ScheduledExecutorService scheduledExecutorService, zzfly zzflyVar, zzfpy zzfpyVar, Clock clock) {
        this("none", clientApi, context, i, zzfjgVar, zzftVar, scheduledExecutorService, zzflyVar, zzfpyVar, clock, null);
        this.h = zzceVar;
    }

    public final void a(com.google.android.gms.ads.internal.client.zze zzeVar) {
        synchronized (this) {
            try {
                if (this.p.get()) {
                    com.google.android.gms.ads.internal.util.zzs.zza.post(new zzfqr(this, zzeVar));
                }
                this.m.set(false);
                int i = zzeVar.zza;
                if (i != 1 && i != 8 && i != 10 && i != 11) {
                    c(true);
                    return;
                }
                com.google.android.gms.ads.internal.client.zzft zzftVar = this.e;
                int i2 = zzftVar.zzb;
                String str = zzftVar.zza;
                StringBuilder sb = new StringBuilder(String.valueOf(i2).length() + 26 + String.valueOf(str).length() + 61);
                sb.append("Preloading ");
                sb.append(i2);
                sb.append(", for adUnitId:");
                sb.append(str);
                sb.append(", Ad load failed. Stop preloading due to non-retriable error:");
                String sb2 = sb.toString();
                int i3 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzh(sb2);
                this.g.set(false);
                zzfpp zzfppVar = this.f;
                if (zzfppVar != null) {
                    zzfppVar.a(this);
                }
                zzfqj zzfqjVar = new zzfqj(this.e.zza, p());
                zzfqjVar.f7565c = this.l;
                this.r.e(this.s.currentTimeMillis(), new zzfqk(zzfqjVar), zzeVar, this.e.zzd, q(), f());
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final synchronized void b(Object obj) {
        double d;
        int i;
        try {
            com.google.android.gms.ads.internal.client.zzea h = h(obj);
            if (!(h instanceof zzdad)) {
                d = 0.0d;
            } else {
                d = ((zzdad) h).n;
            }
            double d2 = d;
            com.google.android.gms.ads.internal.client.zzea h2 = h(obj);
            if (h2 instanceof zzdad) {
                i = ((zzdad) h2).o;
            } else {
                i = 2;
            }
            int i2 = i;
            Clock clock = this.s;
            zzfqm zzfqmVar = new zzfqm(obj, clock, d2, i2);
            this.j.add(zzfqmVar);
            com.google.android.gms.ads.internal.client.zzea h3 = h(obj);
            long currentTimeMillis = clock.currentTimeMillis();
            if (this.p.get()) {
                com.google.android.gms.ads.internal.util.zzs.zza.post(new zzfqp(this, h3));
            }
            ScheduledExecutorService scheduledExecutorService = this.n;
            scheduledExecutorService.execute(new zzfqq(this, currentTimeMillis, h3));
            if (this.f != null) {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.E)).booleanValue()) {
                    zzfly zzflyVar = this.o;
                    Runnable runnable = new Runnable() { // from class: com.google.android.gms.internal.ads.zzfqw
                        @Override // java.lang.Runnable
                        public final /* synthetic */ void run() {
                            zzfqy.this.d();
                        }
                    };
                    long a2 = zzfqmVar.a();
                    TimeUnit timeUnit = TimeUnit.MILLISECONDS;
                    zzflyVar.a(runnable, a2);
                    return;
                }
                scheduledExecutorService.schedule(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfqv
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        zzfqy.this.d();
                    }
                }, zzfqmVar.a(), TimeUnit.MILLISECONDS);
                return;
            }
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.E)).booleanValue()) {
                zzfly zzflyVar2 = this.o;
                zzfqo zzfqoVar = new zzfqo(this);
                long a3 = zzfqmVar.a();
                TimeUnit timeUnit2 = TimeUnit.MILLISECONDS;
                zzflyVar2.a(zzfqoVar, a3);
                return;
            }
            scheduledExecutorService.schedule(new zzfqo(this), zzfqmVar.a(), TimeUnit.MILLISECONDS);
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void c(boolean z) {
        try {
            zzfpp zzfppVar = this.f;
            if (zzfppVar != null) {
                if (z) {
                    this.k.c();
                }
                zzfppVar.a(this);
            } else {
                zzfpy zzfpyVar = this.k;
                if (!zzfpyVar.d()) {
                    if (z) {
                        zzfpyVar.c();
                    }
                    this.n.schedule(new zzfqo(this), zzfpyVar.b(), TimeUnit.MILLISECONDS);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void d() {
        boolean z;
        Iterator it = this.j.iterator();
        while (it.hasNext()) {
            zzfqm zzfqmVar = (zzfqm) it.next();
            if (zzfqmVar.f7569c.currentTimeMillis() >= zzfqmVar.b + zzfqmVar.d) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                it.remove();
                zzfpp zzfppVar = this.f;
                if (zzfppVar != null) {
                    zzfppVar.a(this);
                }
            }
        }
    }

    public final synchronized void e() {
        try {
            if (this.q.get() && this.j.isEmpty()) {
                this.q.set(false);
                if (this.p.get()) {
                    com.google.android.gms.ads.internal.util.zzs.zza.post(new zzfqs(this));
                }
                this.n.execute(new zzfqt(this));
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final String f() {
        return true != "none".equals(this.l) ? "2" : "1";
    }

    public abstract ListenableFuture g(Context context);

    public abstract com.google.android.gms.ads.internal.client.zzea h(Object obj);

    public final synchronized void i() {
        this.n.submit(new zzfqo(this));
    }

    public final synchronized void j() {
        if (!this.m.get() && this.g.get() && this.j.size() < this.e.zzd) {
            this.m.set(true);
            this.n.submit(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfqx
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    zzfqy.this.v();
                }
            });
        }
    }

    public final synchronized boolean k() {
        try {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.K)).booleanValue()) {
                this.k.a();
            }
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.D)).booleanValue() && this.f == null) {
                u();
            } else {
                d();
            }
        } catch (Throwable th) {
            throw th;
        }
        if (!this.j.isEmpty()) {
            return true;
        }
        return false;
    }

    public final synchronized Object l() {
        String str;
        try {
            boolean z = true;
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.N)).booleanValue()) {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.L)).booleanValue()) {
                    if (this.j.size() == 1) {
                        this.k.a();
                    }
                } else {
                    this.k.a();
                }
            }
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.M)).booleanValue()) {
                d();
            }
            Queue queue = this.j;
            zzfqm zzfqmVar = (zzfqm) queue.poll();
            AtomicBoolean atomicBoolean = this.q;
            if (zzfqmVar == null) {
                z = false;
            }
            atomicBoolean.set(z);
            if (zzfqmVar != null) {
                if (!queue.isEmpty()) {
                    zzfqm zzfqmVar2 = (zzfqm) queue.peek();
                    AdFormat adFormat = AdFormat.getAdFormat(this.e.zzb);
                    com.google.android.gms.ads.internal.client.zzea h = h(zzfqmVar.f7568a);
                    if (!(h instanceof zzdad)) {
                        str = null;
                    } else {
                        str = ((zzdad) h).h;
                    }
                    if (zzfqmVar2 != null && adFormat != null && str != null && zzfqmVar2.b < zzfqmVar.b) {
                        this.r.g("poll_ad", "psvroc_ts", this.s.currentTimeMillis(), this.e.zzd, q(), str, this.t, f());
                    }
                }
            } else {
                zzfqmVar = null;
            }
            zzfpp zzfppVar = this.f;
            if (zzfppVar != null) {
                zzfppVar.b(this);
            } else {
                zzbgb zzbgbVar = zzbgk.P;
                if (((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgbVar)).longValue() > 0) {
                    this.n.schedule(new zzfqo(this), ((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgbVar)).longValue(), TimeUnit.MILLISECONDS);
                } else {
                    u();
                }
            }
            if (zzfqmVar == null) {
                return null;
            }
            return zzfqmVar.f7568a;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void m() {
        this.g.set(true);
        this.p.set(true);
        if (this.f == null) {
            this.n.submit(new zzfqo(this));
        }
    }

    public final synchronized String n() {
        String str;
        com.google.android.gms.ads.internal.client.zzea h;
        Object t = t();
        str = null;
        if (t == null) {
            h = null;
        } else {
            h = h(t);
        }
        if (h instanceof zzdad) {
            str = ((zzdad) h).h;
        }
        return str;
    }

    public final synchronized void o(int i) {
        boolean z;
        if (i >= 5) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkArgument(z);
        this.k.e(i);
    }

    public final AdFormat p() {
        return AdFormat.getAdFormat(this.e.zzb);
    }

    public final synchronized int q() {
        return this.j.size();
    }

    public final boolean r() {
        if (this.g.get() && !this.m.get() && q() < this.e.zzd) {
            zzfpy zzfpyVar = this.k;
            if (zzfpyVar.f.currentTimeMillis() >= zzfpyVar.e) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final synchronized void s() {
        this.j.clear();
    }

    public final synchronized Object t() {
        zzfqm zzfqmVar = (zzfqm) this.j.peek();
        if (zzfqmVar == null) {
            return null;
        }
        return zzfqmVar.f7568a;
    }

    public final synchronized void u() {
        d();
        e();
        if (!this.m.get() && this.g.get() && this.j.size() < this.e.zzd) {
            this.m.set(true);
            v();
        }
    }

    public final synchronized void v() {
        ListenableFuture g;
        try {
            Activity d = com.google.android.gms.ads.internal.zzt.zzg().d();
            if (d == null) {
                String valueOf = String.valueOf(this.e.zza);
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzi("Empty activity context at preloading: ".concat(valueOf));
                g = g(this.b);
            } else {
                g = g(d);
            }
            zzfqn zzfqnVar = new zzfqn(this);
            ScheduledExecutorService scheduledExecutorService = this.n;
            ((zzgxf) g).k(new zzgyk(g, zzfqnVar), scheduledExecutorService);
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void w(int i) {
        boolean z;
        int i2;
        zzfpp zzfppVar;
        if (i > 0) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkArgument(z);
        AdFormat adFormat = AdFormat.getAdFormat(this.e.zzb);
        int i3 = this.e.zzd;
        int size = this.j.size();
        synchronized (this) {
            try {
                com.google.android.gms.ads.internal.client.zzft zzftVar = this.e;
                String str = zzftVar.zza;
                int i4 = zzftVar.zzb;
                com.google.android.gms.ads.internal.client.zzm zzmVar = zzftVar.zzc;
                if (i > 0) {
                    i2 = i;
                } else {
                    i2 = zzftVar.zzd;
                }
                this.e = new com.google.android.gms.ads.internal.client.zzft(str, i4, zzmVar, i2);
                Queue queue = this.j;
                if (queue.size() > i) {
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.x)).booleanValue()) {
                        ArrayList arrayList = new ArrayList();
                        for (int i5 = 0; i5 < i; i5++) {
                            zzfqm zzfqmVar = (zzfqm) queue.poll();
                            if (zzfqmVar != null) {
                                arrayList.add(zzfqmVar);
                            }
                        }
                        queue.clear();
                        queue.addAll(arrayList);
                        if (size > arrayList.size() && (zzfppVar = this.f) != null) {
                            int size2 = size - arrayList.size();
                            if (arrayList.isEmpty()) {
                                size2--;
                            }
                            zzfppVar.c(this, size2);
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        zzfqd zzfqdVar = this.r;
        if (zzfqdVar != null && adFormat != null) {
            long currentTimeMillis = this.s.currentTimeMillis();
            zzfqk zzfqkVar = new zzfqk(new zzfqj(this.e.zza, adFormat));
            zzdxd a2 = zzfqdVar.f7556a.a();
            a2.b("action", "cache_resize");
            a2.b("cs_ts", Long.toString(currentTimeMillis));
            a2.b("orig_ma", Integer.toString(i3));
            a2.b("max_ads", Integer.toString(i));
            a2.b("ad_format", zzfqkVar.a());
            a2.b("ad_unit_id", zzfqkVar.f7566a);
            a2.b("pid", zzfqkVar.f7567c);
            a2.b("pv", "1");
            a2.c();
        }
    }

    public final void x(com.google.android.gms.ads.internal.client.zzm zzmVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.C)).booleanValue()) {
            Bundle bundle = zzmVar.zzB;
            bundle.putInt("plcs", q());
            bundle.putInt("plbs", this.e.zzd);
            bundle.putString("plid", this.l);
        }
    }

    public zzfqy(String str, ClientApi clientApi, Context context, int i, zzfjg zzfjgVar, com.google.android.gms.ads.internal.client.zzft zzftVar, com.google.android.gms.ads.internal.client.zzch zzchVar, ScheduledExecutorService scheduledExecutorService, zzfly zzflyVar, zzfpy zzfpyVar, Clock clock, zzfpp zzfppVar) {
        this(str, clientApi, context, i, zzfjgVar, zzftVar, scheduledExecutorService, zzflyVar, zzfpyVar, clock, zzfppVar);
        this.i = zzchVar;
    }

    public zzfqy(String str, ClientApi clientApi, Context context, int i, zzfjg zzfjgVar, com.google.android.gms.ads.internal.client.zzft zzftVar, ScheduledExecutorService scheduledExecutorService, zzfly zzflyVar, zzfpy zzfpyVar, Clock clock, zzfpp zzfppVar) {
        Queue priorityQueue;
        this.l = str;
        this.f7581a = clientApi;
        this.b = context;
        this.f7582c = i;
        this.d = zzfjgVar;
        this.e = zzftVar;
        int max = Math.max(1, zzftVar.zzd);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.V)).booleanValue()) {
            priorityQueue = new zzfrb();
        } else {
            priorityQueue = new PriorityQueue(max, zzfqu.f7577c);
        }
        this.j = priorityQueue;
        this.g = new AtomicBoolean(true);
        this.m = new AtomicBoolean(false);
        this.n = scheduledExecutorService;
        this.o = zzflyVar;
        this.k = zzfpyVar;
        this.p = new AtomicBoolean(true);
        this.q = new AtomicBoolean(false);
        this.s = clock;
        zzfqj zzfqjVar = new zzfqj(zzftVar.zza, AdFormat.getAdFormat(this.e.zzb));
        zzfqjVar.f7565c = str;
        this.t = new zzfqk(zzfqjVar);
        this.f = zzfppVar;
    }
}
