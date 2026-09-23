package com.google.android.gms.internal.ads;

import android.net.TrafficStats;
import android.os.Process;
import android.os.SystemClock;
import android.util.Log;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;

/* loaded from: classes.dex */
public final class zzare extends Thread {

    /* renamed from: c, reason: collision with root package name */
    public final BlockingQueue f4363c;
    public final zzard f;
    public final zzaqu g;
    public volatile boolean h = false;
    public final zzarb i;

    public zzare(PriorityBlockingQueue priorityBlockingQueue, zzarz zzarzVar, zzasg zzasgVar, zzarb zzarbVar) {
        this.f4363c = priorityBlockingQueue;
        this.f = zzarzVar;
        this.g = zzasgVar;
        this.i = zzarbVar;
    }

    /* JADX WARN: Type inference failed for: r5v2, types: [com.google.android.gms.internal.ads.zzart, java.lang.Exception] */
    public final void a() {
        zzarb zzarbVar = this.i;
        zzark zzarkVar = (zzark) this.f4363c.take();
        SystemClock.elapsedRealtime();
        zzarkVar.b();
        try {
            try {
                try {
                    zzarkVar.zzc("network-queue-take");
                    zzarkVar.zzl();
                    TrafficStats.setThreadStatsTag(zzarkVar.zzb());
                    zzarg zza = this.f.zza(zzarkVar);
                    zzarkVar.zzc("network-http-complete");
                    if (zza.e && zzarkVar.zzq()) {
                        zzarkVar.a("not-modified");
                        zzarkVar.g();
                    } else {
                        zzarq c2 = zzarkVar.c(zza);
                        zzarkVar.zzc("network-parse-complete");
                        zzaqt zzaqtVar = c2.b;
                        if (zzaqtVar != null) {
                            this.g.j(zzarkVar.zzi(), zzaqtVar);
                            zzarkVar.zzc("network-cache-written");
                        }
                        zzarkVar.zzp();
                        zzarbVar.a(zzarkVar, c2, null);
                        zzarkVar.f(c2);
                    }
                } catch (Exception e) {
                    Log.e("Volley", zzarw.d("Unhandled exception %s", e.toString()), e);
                    ?? exc = new Exception(e);
                    SystemClock.elapsedRealtime();
                    zzarbVar.getClass();
                    zzarkVar.zzc("post-error");
                    ((zzaqz) zzarbVar.f4361a).f4358c.post(new zzara(zzarkVar, new zzarq(exc), null));
                    zzarkVar.g();
                }
            } catch (zzart e2) {
                SystemClock.elapsedRealtime();
                zzarbVar.getClass();
                zzarkVar.zzc("post-error");
                ((zzaqz) zzarbVar.f4361a).f4358c.post(new zzara(zzarkVar, new zzarq(e2), null));
                zzarkVar.g();
            }
            zzarkVar.b();
        } catch (Throwable th) {
            zzarkVar.b();
            throw th;
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(10);
        while (true) {
            try {
                a();
            } catch (InterruptedException unused) {
                if (this.h) {
                    Thread.currentThread().interrupt();
                    return;
                }
                zzarw.c("Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }
}
