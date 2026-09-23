package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.common.util.Clock;
import java.util.LinkedHashMap;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class zzfpp {

    /* renamed from: a, reason: collision with root package name */
    public final int f7541a;

    /* renamed from: c, reason: collision with root package name */
    public ScheduledFuture f7542c;
    public final ScheduledExecutorService f;
    public final zzfqd g;
    public final Clock h;
    public final AtomicBoolean b = new AtomicBoolean(false);
    public final LinkedHashMap d = new LinkedHashMap();
    public final AtomicBoolean e = new AtomicBoolean(false);

    public zzfpp(int i, ScheduledExecutorService scheduledExecutorService, zzfqd zzfqdVar, Clock clock) {
        this.f7541a = i;
        this.f = scheduledExecutorService;
        this.g = zzfqdVar;
        this.h = clock;
    }

    public static String g(String str, AdFormat adFormat) {
        return str + ":" + adFormat;
    }

    public final void a(zzfqy zzfqyVar) {
        int i = 1;
        if (zzfqyVar.q() <= 0 && !zzfqyVar.m.get()) {
            i = 0;
        }
        c(zzfqyVar, i);
    }

    public final synchronized void b(zzfqy zzfqyVar) {
        try {
            if (h(zzfqyVar)) {
                return;
            }
            long longValue = ((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.T)).longValue();
            if (longValue > 0) {
                if (zzfqyVar.q() > 0 || zzfqyVar.m.get()) {
                    m(zzfqyVar, 1);
                }
                this.b.set(true);
                ScheduledFuture scheduledFuture = this.f7542c;
                if (scheduledFuture != null) {
                    scheduledFuture.cancel(false);
                }
                this.f7542c = null;
                this.e.set(true);
                this.f7542c = this.f.schedule(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfpo
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzfpp zzfppVar = zzfpp.this;
                        synchronized (zzfppVar) {
                            zzfppVar.b.set(false);
                            zzfppVar.k();
                        }
                    }
                }, longValue, TimeUnit.MILLISECONDS);
                return;
            }
            a(zzfqyVar);
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void c(zzfqy zzfqyVar, int i) {
        if (h(zzfqyVar)) {
            return;
        }
        if (i > 0) {
            m(zzfqyVar, i);
        }
        if (n(zzfqyVar)) {
            j(((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.R)).longValue());
        } else {
            j(0L);
        }
    }

    public final void d(String str, AdFormat adFormat, zzfqy zzfqyVar) {
        LinkedHashMap linkedHashMap = this.d;
        String g = g(str, adFormat);
        synchronized (linkedHashMap) {
            try {
                if (!linkedHashMap.containsKey(g)) {
                    linkedHashMap.put(g, zzfqyVar);
                    n(zzfqyVar);
                    j(((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.R)).longValue());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void e(String str, AdFormat adFormat) {
        zzfqy zzfqyVar;
        LinkedHashMap linkedHashMap = this.d;
        String g = g(str, adFormat);
        synchronized (linkedHashMap) {
            zzfqyVar = (zzfqy) linkedHashMap.remove(g);
        }
        if (zzfqyVar != null) {
            int q = zzfqyVar.q();
            int i = q - 1;
            if (!zzfqyVar.m.get()) {
                q = i;
            }
            int max = Math.max(q, 0);
            if (max > 0) {
                m(zzfqyVar, max);
            }
            if (zzfqyVar.q() <= 0 && !zzfqyVar.m.get()) {
                return;
            }
            j(0L);
        }
    }

    public final int f() {
        int i;
        LinkedHashMap linkedHashMap = this.d;
        synchronized (linkedHashMap) {
            try {
                i = 0;
                for (zzfqy zzfqyVar : linkedHashMap.values()) {
                    int q = zzfqyVar.q();
                    int i2 = q - 1;
                    if (!zzfqyVar.m.get()) {
                        q = i2;
                    }
                    i += Math.max(q, 0);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return i;
    }

    public final boolean h(zzfqy zzfqyVar) {
        AdFormat p = zzfqyVar.p();
        if (p == null) {
            return true;
        }
        LinkedHashMap linkedHashMap = this.d;
        synchronized (linkedHashMap) {
            try {
                if (!linkedHashMap.containsKey(g(zzfqyVar.l, p))) {
                    return true;
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean i() {
        LinkedHashMap linkedHashMap = this.d;
        synchronized (linkedHashMap) {
            try {
                for (zzfqy zzfqyVar : linkedHashMap.values()) {
                    if (zzfqyVar.q() == 0 && zzfqyVar.r()) {
                        return true;
                    }
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final synchronized void j(long j) {
        if (this.e.compareAndSet(false, true)) {
            if (j > 0) {
                this.f7542c = this.f.schedule(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfpl
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        zzfpp.this.k();
                    }
                }, j, TimeUnit.MILLISECONDS);
            } else {
                this.f.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfpk
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        zzfpp.this.k();
                    }
                });
            }
        }
    }

    public final synchronized void k() {
        zzgtd v;
        try {
            if (this.b.get()) {
                return;
            }
            zzfqy zzfqyVar = null;
            this.f7542c = null;
            if (f() >= this.f7541a && !i()) {
                l();
            } else {
                LinkedHashMap linkedHashMap = this.d;
                synchronized (linkedHashMap) {
                    v = zzgtd.v(linkedHashMap.values());
                }
                int size = v.size();
                double d = Double.MAX_VALUE;
                for (int i = 0; i < size; i++) {
                    zzfqy zzfqyVar2 = (zzfqy) v.get(i);
                    if (zzfqyVar2.r()) {
                        double q = zzfqyVar2.q() / zzfqyVar2.e.zzd;
                        if (q < d) {
                            d = q;
                        }
                        if (q < d) {
                            zzfqyVar = zzfqyVar2;
                        }
                    }
                }
                if (zzfqyVar != null) {
                    zzfqyVar.j();
                    if (zzfqyVar.q() > 0) {
                        this.g.h("acmpa", this.h.currentTimeMillis(), zzfqyVar.l, zzfqyVar.e.zza, zzfqyVar.p(), zzfqyVar.e.zzd, zzfqyVar.q(), 0, f(), this.f7541a);
                    }
                }
                int f = f();
                int i2 = this.f7541a;
                if (f >= i2) {
                    l();
                }
                if (f() >= i2) {
                    if (i()) {
                    }
                }
                if (i()) {
                    this.f.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfpn
                        @Override // java.lang.Runnable
                        public final /* synthetic */ void run() {
                            zzfpp.this.k();
                        }
                    });
                    return;
                }
                this.f7542c = this.f.schedule(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfpm
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        zzfpp.this.k();
                    }
                }, ((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.S)).longValue(), TimeUnit.MILLISECONDS);
                return;
            }
            this.e.set(false);
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void l() {
        int size;
        LinkedHashMap linkedHashMap = this.d;
        synchronized (linkedHashMap) {
            size = linkedHashMap.size();
        }
        zzfqd zzfqdVar = this.g;
        Clock clock = this.h;
        int i = this.f7541a;
        long currentTimeMillis = clock.currentTimeMillis();
        zzdxd a2 = zzfqdVar.f7556a.a();
        a2.b("action", "acmlr");
        a2.b("pat", Long.toString(currentTimeMillis));
        a2.b("mpl", Integer.toString(i));
        a2.b("pas", Integer.toString(size));
        a2.c();
    }

    public final void m(zzfqy zzfqyVar, int i) {
        this.g.h("acmpr", this.h.currentTimeMillis(), zzfqyVar.l, zzfqyVar.e.zza, zzfqyVar.p(), zzfqyVar.e.zzd, zzfqyVar.q(), i, f(), this.f7541a);
    }

    public final synchronized boolean n(zzfqy zzfqyVar) {
        if (!this.b.get() && zzfqyVar.q() == 0 && zzfqyVar.r()) {
            zzfqyVar.j();
            return true;
        }
        return false;
    }
}
