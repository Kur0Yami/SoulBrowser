package com.google.android.gms.internal.play_billing;

import android.support.v4.media.a;
import java.util.Locale;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes3.dex */
public class zzo implements zzdc {
    public static final boolean h = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));
    public static final Logger i = Logger.getLogger(zzo.class.getName());
    public static final zzd j;
    public static final Object k;

    /* renamed from: c, reason: collision with root package name */
    public volatile Object f11558c;
    public volatile zzh f;
    public volatile zzm g;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v1, types: [com.google.android.gms.internal.play_billing.zzd] */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v4 */
    static {
        ?? r3;
        try {
            th = null;
            r3 = new zzj(AtomicReferenceFieldUpdater.newUpdater(zzm.class, Thread.class, "a"), AtomicReferenceFieldUpdater.newUpdater(zzm.class, zzm.class, "b"), AtomicReferenceFieldUpdater.newUpdater(zzo.class, zzm.class, "g"), AtomicReferenceFieldUpdater.newUpdater(zzo.class, zzh.class, "f"), AtomicReferenceFieldUpdater.newUpdater(zzo.class, Object.class, "c"));
        } catch (Throwable th) {
            th = th;
            r3 = new Object();
        }
        Throwable th2 = th;
        j = r3;
        if (th2 != null) {
            i.logp(Level.SEVERE, "com.android.billingclient.util.concurrent.AbstractResolvableFuture", "<clinit>", "SafeAtomicHelper is broken!", th2);
        }
        k = new Object();
    }

    public static void b(zzo zzoVar) {
        zzm zzmVar;
        zzd zzdVar;
        zzh zzhVar;
        do {
            zzmVar = zzoVar.g;
            zzdVar = j;
        } while (!zzdVar.e(zzoVar, zzmVar, zzm.f11556c));
        while (zzmVar != null) {
            Thread thread = zzmVar.f11557a;
            if (thread != null) {
                zzmVar.f11557a = null;
                LockSupport.unpark(thread);
            }
            zzmVar = zzmVar.b;
        }
        do {
            zzhVar = zzoVar.f;
        } while (!zzdVar.c(zzoVar, zzhVar, zzh.d));
        zzh zzhVar2 = null;
        while (zzhVar != null) {
            zzh zzhVar3 = zzhVar.f11520c;
            zzhVar.f11520c = zzhVar2;
            zzhVar2 = zzhVar;
            zzhVar = zzhVar3;
        }
        while (zzhVar2 != null) {
            Runnable runnable = zzhVar2.f11519a;
            zzh zzhVar4 = zzhVar2.f11520c;
            if (!(runnable instanceof zzk)) {
                d(runnable, zzhVar2.b);
                zzhVar2 = zzhVar4;
            } else {
                throw null;
            }
        }
    }

    public static void d(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e) {
            i.logp(Level.SEVERE, "com.android.billingclient.util.concurrent.AbstractResolvableFuture", "executeListener", a.m("RuntimeException while executing runnable ", String.valueOf(runnable), " with executor ", String.valueOf(executor)), (Throwable) e);
        }
    }

    public static final Object f(Object obj) {
        if (!(obj instanceof zze)) {
            if (!(obj instanceof zzg)) {
                if (obj == k) {
                    return null;
                }
                return obj;
            }
            throw new ExecutionException(((zzg) obj).f11505a);
        }
        Throwable th = ((zze) obj).f11484a;
        CancellationException cancellationException = new CancellationException("Task was cancelled.");
        cancellationException.initCause(th);
        throw cancellationException;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public String a() {
        if (this.f11558c instanceof zzk) {
            return "setFuture=[null]";
        }
        if (this instanceof ScheduledFuture) {
            return "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
        }
        return null;
    }

    @Override // com.google.android.gms.internal.play_billing.zzdc
    public final void b0(Runnable runnable, Executor executor) {
        executor.getClass();
        zzh zzhVar = this.f;
        zzh zzhVar2 = zzh.d;
        if (zzhVar != zzhVar2) {
            zzh zzhVar3 = new zzh(runnable, executor);
            do {
                zzhVar3.f11520c = zzhVar;
                if (j.c(this, zzhVar, zzhVar3)) {
                    return;
                } else {
                    zzhVar = this.f;
                }
            } while (zzhVar != zzhVar2);
        }
        d(runnable, executor);
    }

    public final void c(StringBuilder sb) {
        V v;
        String valueOf;
        boolean z = false;
        while (true) {
            try {
                try {
                    v = get();
                    break;
                } catch (InterruptedException unused) {
                    z = true;
                } catch (Throwable th) {
                    if (z) {
                        Thread.currentThread().interrupt();
                    }
                    throw th;
                }
            } catch (CancellationException unused2) {
                sb.append("CANCELLED");
                return;
            } catch (RuntimeException e) {
                sb.append("UNKNOWN, cause=[");
                sb.append(e.getClass());
                sb.append(" thrown from get()]");
                return;
            } catch (ExecutionException e2) {
                sb.append("FAILURE, cause=[");
                sb.append(e2.getCause());
                sb.append("]");
                return;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        sb.append("SUCCESS, result=[");
        if (v == this) {
            valueOf = "this future";
        } else {
            valueOf = String.valueOf(v);
        }
        sb.append(valueOf);
        sb.append("]");
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        boolean z2;
        zze zzeVar;
        Object obj = this.f11558c;
        boolean z3 = obj instanceof zzk;
        if (obj == null) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z3 | z2) {
            if (h) {
                zzeVar = new zze(new CancellationException("Future.cancel() was called."));
            } else if (z) {
                zzeVar = zze.b;
            } else {
                zzeVar = zze.f11483c;
            }
            while (!j.d(this, obj, zzeVar)) {
                obj = this.f11558c;
                if (!(obj instanceof zzk)) {
                }
            }
            b(this);
            if (!(obj instanceof zzk)) {
                return true;
            }
            throw null;
        }
        return false;
    }

    public final void e(zzm zzmVar) {
        zzmVar.f11557a = null;
        while (true) {
            zzm zzmVar2 = this.g;
            if (zzmVar2 != zzm.f11556c) {
                zzm zzmVar3 = null;
                while (zzmVar2 != null) {
                    zzm zzmVar4 = zzmVar2.b;
                    if (zzmVar2.f11557a != null) {
                        zzmVar3 = zzmVar2;
                    } else if (zzmVar3 != null) {
                        zzmVar3.b = zzmVar4;
                        if (zzmVar3.f11557a == null) {
                            break;
                        }
                    } else if (!j.e(this, zzmVar2, zzmVar4)) {
                        break;
                    }
                    zzmVar2 = zzmVar4;
                }
                return;
            }
            return;
        }
    }

    @Override // java.util.concurrent.Future
    public final Object get() {
        Object obj;
        if (!Thread.interrupted()) {
            Object obj2 = this.f11558c;
            if ((obj2 != null) & (!(obj2 instanceof zzk))) {
                return f(obj2);
            }
            zzm zzmVar = this.g;
            zzm zzmVar2 = zzm.f11556c;
            if (zzmVar != zzmVar2) {
                zzm zzmVar3 = new zzm();
                do {
                    zzd zzdVar = j;
                    zzdVar.a(zzmVar3, zzmVar);
                    if (zzdVar.e(this, zzmVar, zzmVar3)) {
                        do {
                            LockSupport.park(this);
                            if (!Thread.interrupted()) {
                                obj = this.f11558c;
                            } else {
                                e(zzmVar3);
                                throw new InterruptedException();
                            }
                        } while (!((obj != null) & (!(obj instanceof zzk))));
                        return f(obj);
                    }
                    zzmVar = this.g;
                } while (zzmVar != zzmVar2);
            }
            return f(this.f11558c);
        }
        throw new InterruptedException();
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f11558c instanceof zze;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return (this.f11558c != null) & (!(r0 instanceof zzk));
    }

    public final String toString() {
        String concat;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("[status=");
        if (this.f11558c instanceof zze) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            c(sb);
        } else {
            try {
                concat = a();
            } catch (RuntimeException e) {
                concat = "Exception thrown from implementation: ".concat(String.valueOf(e.getClass()));
            }
            if (concat != null && !concat.isEmpty()) {
                a.y(sb, "PENDING, info=[", concat, "]");
            } else if (isDone()) {
                c(sb);
            } else {
                sb.append("PENDING");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j2, TimeUnit timeUnit) {
        boolean z;
        long nanos = timeUnit.toNanos(j2);
        if (!Thread.interrupted()) {
            Object obj = this.f11558c;
            if ((obj != null) & (!(obj instanceof zzk))) {
                return f(obj);
            }
            long nanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
            if (nanos >= 1000) {
                zzm zzmVar = this.g;
                zzm zzmVar2 = zzm.f11556c;
                if (zzmVar != zzmVar2) {
                    zzm zzmVar3 = new zzm();
                    z = true;
                    do {
                        zzd zzdVar = j;
                        zzdVar.a(zzmVar3, zzmVar);
                        if (zzdVar.e(this, zzmVar, zzmVar3)) {
                            do {
                                LockSupport.parkNanos(this, nanos);
                                if (!Thread.interrupted()) {
                                    Object obj2 = this.f11558c;
                                    if ((obj2 != null) & (!(obj2 instanceof zzk))) {
                                        return f(obj2);
                                    }
                                    nanos = nanoTime - System.nanoTime();
                                } else {
                                    e(zzmVar3);
                                    throw new InterruptedException();
                                }
                            } while (nanos >= 1000);
                            e(zzmVar3);
                        } else {
                            zzmVar = this.g;
                        }
                    } while (zzmVar != zzmVar2);
                }
                return f(this.f11558c);
            }
            z = true;
            while (nanos > 0) {
                Object obj3 = this.f11558c;
                if ((obj3 != null ? z : false) & (!(obj3 instanceof zzk))) {
                    return f(obj3);
                }
                if (!Thread.interrupted()) {
                    nanos = nanoTime - System.nanoTime();
                } else {
                    throw new InterruptedException();
                }
            }
            String zzoVar = toString();
            String obj4 = timeUnit.toString();
            Locale locale = Locale.ROOT;
            String lowerCase = obj4.toLowerCase(locale);
            String str = "Waited " + j2 + " " + timeUnit.toString().toLowerCase(locale);
            if (nanos + 1000 < 0) {
                String concat = str.concat(" (plus ");
                long j3 = -nanos;
                long convert = timeUnit.convert(j3, TimeUnit.NANOSECONDS);
                long nanos2 = j3 - timeUnit.toNanos(convert);
                if (convert != 0 && nanos2 <= 1000) {
                    z = false;
                }
                if (convert > 0) {
                    String str2 = concat + convert + " " + lowerCase;
                    if (z) {
                        str2 = str2.concat(",");
                    }
                    concat = str2.concat(" ");
                }
                if (z) {
                    concat = concat + nanos2 + " nanoseconds ";
                }
                str = concat.concat("delay)");
            }
            if (isDone()) {
                throw new TimeoutException(str.concat(" but future completed as timeout expired"));
            }
            throw new TimeoutException(a.D(str, " for ", zzoVar));
        }
        throw new InterruptedException();
    }
}
