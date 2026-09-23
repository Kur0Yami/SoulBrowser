package com.google.android.gms.internal.ads;

import android.os.Process;
import com.google.api.client.http.HttpStatusCodes;
import java.util.Map;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;

/* loaded from: classes.dex */
public final class zzaqw extends Thread {
    public static final boolean k = zzarw.f4376a;

    /* renamed from: c, reason: collision with root package name */
    public final BlockingQueue f4356c;
    public final BlockingQueue f;
    public final zzaqu g;
    public volatile boolean h = false;
    public final zzarx i;
    public final zzarb j;

    public zzaqw(PriorityBlockingQueue priorityBlockingQueue, PriorityBlockingQueue priorityBlockingQueue2, zzasg zzasgVar, zzarb zzarbVar) {
        this.f4356c = priorityBlockingQueue;
        this.f = priorityBlockingQueue2;
        this.g = zzasgVar;
        this.j = zzarbVar;
        this.i = new zzarx(this, priorityBlockingQueue2, zzarbVar);
    }

    public final void a() {
        boolean z;
        zzark zzarkVar = (zzark) this.f4356c.take();
        zzarkVar.zzc("cache-queue-take");
        zzarkVar.b();
        try {
            zzarkVar.zzl();
            zzaqu zzaquVar = this.g;
            zzaqt zza = zzaquVar.zza(zzarkVar.zzi());
            BlockingQueue blockingQueue = this.f;
            zzarx zzarxVar = this.i;
            if (zza == null) {
                zzarkVar.zzc("cache-miss");
                if (!zzarxVar.c(zzarkVar)) {
                    blockingQueue.put(zzarkVar);
                }
            } else {
                long currentTimeMillis = System.currentTimeMillis();
                boolean z2 = false;
                if (zza.e < currentTimeMillis) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    zzarkVar.zzc("cache-hit-expired");
                    zzarkVar.zzj(zza);
                    if (!zzarxVar.c(zzarkVar)) {
                        blockingQueue.put(zzarkVar);
                    }
                } else {
                    zzarkVar.zzc("cache-hit");
                    byte[] bArr = zza.f4353a;
                    Map map = zza.g;
                    zzarq c2 = zzarkVar.c(new zzarg(HttpStatusCodes.STATUS_CODE_OK, bArr, map, zzarg.a(map), false));
                    zzarkVar.zzc("cache-hit-parsed");
                    if (c2.f4371c == null) {
                        z2 = true;
                    }
                    if (!z2) {
                        zzarkVar.zzc("cache-parsing-failed");
                        zzaquVar.i(zzarkVar.zzi());
                        zzarkVar.zzj(null);
                        if (!zzarxVar.c(zzarkVar)) {
                            blockingQueue.put(zzarkVar);
                        }
                    } else {
                        long j = zza.f;
                        zzarb zzarbVar = this.j;
                        if (j < currentTimeMillis) {
                            zzarkVar.zzc("cache-hit-refresh-needed");
                            zzarkVar.zzj(zza);
                            c2.d = true;
                            if (!zzarxVar.c(zzarkVar)) {
                                zzarbVar.a(zzarkVar, c2, new zzaqv(this, zzarkVar));
                            } else {
                                zzarbVar.a(zzarkVar, c2, null);
                            }
                        } else {
                            zzarbVar.a(zzarkVar, c2, null);
                        }
                    }
                }
            }
            zzarkVar.b();
        } catch (Throwable th) {
            zzarkVar.b();
            throw th;
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        if (k) {
            zzarw.a("start new dispatcher", new Object[0]);
        }
        Process.setThreadPriority(10);
        this.g.zzc();
        while (true) {
            try {
                a();
            } catch (InterruptedException unused) {
                if (this.h) {
                    Thread.currentThread().interrupt();
                    return;
                }
                zzarw.c("Ignoring spurious interrupt of CacheDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }
}
