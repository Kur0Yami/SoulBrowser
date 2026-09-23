package com.google.android.gms.internal.cast;

import com.google.android.gms.internal.cast.zzwa;
import java.util.concurrent.Callable;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.locks.LockSupport;

/* loaded from: classes.dex */
final class zzww extends zzwe implements RunnableFuture {
    public volatile zzwv l;

    public zzww(Callable callable) {
        this.l = new zzwv(this, callable);
    }

    @Override // com.google.android.gms.internal.cast.zzwa
    public final void d() {
        zzwv zzwvVar;
        Object obj = this.f9851c;
        if ((obj instanceof zzwa.zza) && ((zzwa.zza) obj).f9847a && (zzwvVar = this.l) != null) {
            Runnable runnable = zzwm.f;
            Runnable runnable2 = zzwm.f9861c;
            Runnable runnable3 = (Runnable) zzwvVar.get();
            if (runnable3 instanceof Thread) {
                zzwk zzwkVar = new zzwk(zzwvVar);
                zzwkVar.a(Thread.currentThread());
                if (zzwvVar.compareAndSet(runnable3, zzwkVar)) {
                    try {
                        Thread thread = (Thread) runnable3;
                        thread.interrupt();
                        if (((Runnable) zzwvVar.getAndSet(runnable2)) == runnable) {
                            LockSupport.unpark(thread);
                        }
                    } catch (Throwable th) {
                        if (((Runnable) zzwvVar.getAndSet(runnable2)) == runnable) {
                            LockSupport.unpark((Thread) runnable3);
                        }
                        throw th;
                    }
                }
            }
        }
        this.l = null;
    }

    @Override // com.google.android.gms.internal.cast.zzwa
    public final String e() {
        zzwv zzwvVar = this.l;
        if (zzwvVar != null) {
            String zzwmVar = zzwvVar.toString();
            return android.support.v4.media.a.q(new StringBuilder(zzwmVar.length() + 7), "task=[", zzwmVar, "]");
        }
        return super.e();
    }

    @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
    public final void run() {
        zzwv zzwvVar = this.l;
        if (zzwvVar != null) {
            zzwvVar.run();
        }
        this.l = null;
    }
}
