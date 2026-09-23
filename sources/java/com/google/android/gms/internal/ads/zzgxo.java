package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import j$.util.Objects;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.logging.Level;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class zzgxo extends zzgxs {
    public static final zzgyu s = new zzgyu(zzgxo.class);
    public zzgsz p;
    public final boolean q;
    public final boolean r;

    public zzgxo(zzgsz zzgszVar, boolean z, boolean z2) {
        int size = zzgszVar.size();
        this.l = null;
        this.m = size;
        this.p = zzgszVar;
        this.q = z;
        this.r = z2;
    }

    @Override // com.google.android.gms.internal.ads.zzgxf
    public final void e() {
        zzgsz zzgszVar = this.p;
        boolean z = true;
        r(1);
        boolean isCancelled = isCancelled();
        if (zzgszVar == null) {
            z = false;
        }
        if (z & isCancelled) {
            boolean l = l();
            zzgvr it = zzgszVar.iterator();
            while (it.hasNext()) {
                ((Future) it.next()).cancel(l);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgxf
    public final String f() {
        zzgsz zzgszVar = this.p;
        if (zzgszVar != null) {
            return "futures=".concat(zzgszVar.toString());
        }
        return super.f();
    }

    public void r(int i) {
        this.p = null;
    }

    public final void s(int i, ListenableFuture listenableFuture) {
        try {
            if (listenableFuture.isCancelled()) {
                this.p = null;
                cancel(false);
            } else {
                try {
                    w(i, zzgzn.a(listenableFuture));
                } catch (ExecutionException e) {
                    t(e.getCause());
                } catch (Throwable th) {
                    t(th);
                }
            }
        } finally {
            u(null);
        }
    }

    public final void t(Throwable th) {
        String str;
        String str2;
        th.getClass();
        if (this.q && !d(th)) {
            Set set = this.l;
            if (set == null) {
                Set newSetFromMap = Collections.newSetFromMap(new ConcurrentHashMap());
                newSetFromMap.getClass();
                if (!isCancelled()) {
                    Throwable a2 = a();
                    Objects.requireNonNull(a2);
                    while (a2 != null && newSetFromMap.add(a2)) {
                        a2 = a2.getCause();
                    }
                }
                zzgxs.n.a(this, newSetFromMap);
                set = this.l;
                Objects.requireNonNull(set);
            }
            for (Throwable th2 = th; th2 != null; th2 = th2.getCause()) {
                if (set.add(th2)) {
                }
            }
            if (true == (th instanceof Error)) {
                str2 = "Input Future failed with Error";
            } else {
                str2 = "Got more than one input Future failure. Logging failures after the first";
            }
            s.a().logp(Level.SEVERE, "com.google.common.util.concurrent.AggregateFuture", "log", str2, th);
            return;
        }
        boolean z = th instanceof Error;
        if (z) {
            if (true == z) {
                str = "Input Future failed with Error";
            } else {
                str = "Got more than one input Future failure. Logging failures after the first";
            }
            s.a().logp(Level.SEVERE, "com.google.common.util.concurrent.AggregateFuture", "log", str, th);
        }
    }

    public final void u(zzgsz zzgszVar) {
        boolean z;
        int b = zzgxs.n.b(this);
        int i = 0;
        if (b >= 0) {
            z = true;
        } else {
            z = false;
        }
        zzgqa.g("Less than 0 remaining futures", z);
        if (b == 0) {
            if (zzgszVar != null) {
                zzgvr it = zzgszVar.iterator();
                while (it.hasNext()) {
                    Future future = (Future) it.next();
                    if (!future.isCancelled()) {
                        try {
                            w(i, zzgzn.a(future));
                        } catch (ExecutionException e) {
                            t(e.getCause());
                        } catch (Throwable th) {
                            t(th);
                        }
                    }
                    i++;
                }
            }
            this.l = null;
            x();
            r(2);
        }
    }

    public final void v() {
        final zzgsz zzgszVar;
        Objects.requireNonNull(this.p);
        if (this.p.isEmpty()) {
            x();
            return;
        }
        boolean z = this.q;
        zzgyb zzgybVar = zzgyb.f8301c;
        if (z) {
            zzgvr it = this.p.iterator();
            final int i = 0;
            while (it.hasNext()) {
                final ListenableFuture listenableFuture = (ListenableFuture) it.next();
                int i2 = i + 1;
                if (listenableFuture.isDone()) {
                    s(i, listenableFuture);
                } else {
                    listenableFuture.k(new Runnable() { // from class: com.google.android.gms.internal.ads.zzgxn
                        @Override // java.lang.Runnable
                        public final /* synthetic */ void run() {
                            zzgxo.this.s(i, listenableFuture);
                        }
                    }, zzgybVar);
                }
                i = i2;
            }
            return;
        }
        zzgsz zzgszVar2 = this.p;
        if (true != this.r) {
            zzgszVar = null;
        } else {
            zzgszVar = zzgszVar2;
        }
        Runnable runnable = new Runnable() { // from class: com.google.android.gms.internal.ads.zzgxm
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzgxo.this.u(zzgszVar);
            }
        };
        zzgvr it2 = zzgszVar2.iterator();
        while (it2.hasNext()) {
            ListenableFuture listenableFuture2 = (ListenableFuture) it2.next();
            if (listenableFuture2.isDone()) {
                u(zzgszVar);
            } else {
                listenableFuture2.k(runnable, zzgybVar);
            }
        }
    }

    public abstract void w(int i, Object obj);

    public abstract void x();
}
