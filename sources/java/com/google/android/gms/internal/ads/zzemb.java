package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class zzemb {

    /* renamed from: a, reason: collision with root package name */
    public final Executor f6664a;
    public final ScheduledExecutorService b;

    /* renamed from: c, reason: collision with root package name */
    public final zzcvn f6665c;
    public final zzemr d;
    public final zzfpe e;
    public final zzgzf f = new Object();
    public final AtomicBoolean g = new AtomicBoolean();
    public zzemc h;
    public zzfic i;

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.ads.zzgzf, java.lang.Object] */
    public zzemb(Executor executor, ScheduledExecutorService scheduledExecutorService, zzcvn zzcvnVar, zzemr zzemrVar, zzfpe zzfpeVar) {
        this.f6664a = executor;
        this.b = scheduledExecutorService;
        this.f6665c = zzcvnVar;
        this.d = zzemrVar;
        this.e = zzfpeVar;
    }

    public final synchronized zzgzf a(zzfic zzficVar) {
        try {
            if (!this.g.getAndSet(true)) {
                List list = zzficVar.b.f7381a;
                if (list.isEmpty()) {
                    this.f.d(new zzebr(3, zzemy.a(zzficVar)));
                } else {
                    this.i = zzficVar;
                    zzemr zzemrVar = this.d;
                    this.h = new zzemc(zzficVar, zzemrVar, this.f);
                    zzemrVar.b(list);
                    zzfhr a2 = this.h.a();
                    while (a2 != null) {
                        b(a2);
                        a2 = this.h.a();
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f;
    }

    public final void b(zzfhr zzfhrVar) {
        ListenableFuture b;
        synchronized (this) {
            Iterator it = zzfhrVar.f7367a.iterator();
            while (true) {
                if (it.hasNext()) {
                    zzejg a2 = this.f6665c.a(zzfhrVar.b, (String) it.next());
                    if (a2 != null && a2.b(this.i, zzfhrVar)) {
                        b = zzgym.g(a2.a(this.i, zzfhrVar), zzfhrVar.R, TimeUnit.MILLISECONDS, this.b);
                        break;
                    }
                } else {
                    b = zzgym.b(new zzebr(3));
                    break;
                }
            }
        }
        this.d.d(this.i, zzfhrVar, b, this.e);
        b.k(new zzgyk(b, new zzema(this, zzfhrVar)), this.f6664a);
    }
}
