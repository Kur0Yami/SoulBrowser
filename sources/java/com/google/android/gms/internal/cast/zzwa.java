package com.google.android.gms.internal.cast;

import com.google.android.gms.internal.cast.zzwb;
import com.google.common.util.concurrent.ListenableFuture;
import j$.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public abstract class zzwa<V> extends zzwb<V> {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class zza {

        /* renamed from: c, reason: collision with root package name */
        public static final zza f9846c;
        public static final zza d;

        /* renamed from: a, reason: collision with root package name */
        public final boolean f9847a;
        public final Throwable b;

        static {
            if (zzwb.j) {
                d = null;
                f9846c = null;
            } else {
                d = new zza(null, false);
                f9846c = new zza(null, true);
            }
        }

        public zza(Throwable th, boolean z) {
            this.f9847a = z;
            this.b = th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class zzb<V> implements Runnable {
        @Override // java.lang.Runnable
        public final void run() {
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class zzc {

        /* renamed from: a, reason: collision with root package name */
        public final Throwable f9848a;

        /* renamed from: com.google.android.gms.internal.cast.zzwa$zzc$1, reason: invalid class name */
        /* loaded from: classes.dex */
        public class AnonymousClass1 extends Throwable {
            @Override // java.lang.Throwable
            public final Throwable fillInStackTrace() {
                return this;
            }
        }

        static {
            new zzc(new Throwable("Failure occurred while trying to finish a future."));
        }

        public zzc(Throwable th) {
            th.getClass();
            this.f9848a = th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class zzd {
        public static final zzd d = new zzd();

        /* renamed from: a, reason: collision with root package name */
        public final Runnable f9849a;
        public final Executor b;

        /* renamed from: c, reason: collision with root package name */
        public zzd f9850c;

        public zzd() {
            this.f9849a = null;
            this.b = null;
        }

        public zzd(Runnable runnable, Executor executor) {
            this.f9849a = runnable;
            this.b = executor;
        }
    }

    /* loaded from: classes.dex */
    interface zze<V> extends ListenableFuture<V> {
    }

    /* loaded from: classes.dex */
    abstract class zzf<V> extends zzwa<V> implements zze<V> {
    }

    public static Object b(Object obj) {
        if (!(obj instanceof zza)) {
            if (!(obj instanceof zzc)) {
                if (obj == zzwb.h) {
                    return null;
                }
                return obj;
            }
            throw new ExecutionException(((zzc) obj).f9848a);
        }
        Throwable th = ((zza) obj).b;
        CancellationException cancellationException = new CancellationException("Task was cancelled.");
        cancellationException.initCause(th);
        throw cancellationException;
    }

    public static boolean c(Object obj) {
        return !(obj instanceof zzb);
    }

    public static Object f(zzwa zzwaVar) {
        V v;
        boolean z = false;
        while (true) {
            try {
                v = zzwaVar.get();
                break;
            } catch (InterruptedException unused) {
                z = true;
            } catch (Throwable th) {
                if (z) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        return v;
    }

    public static void g(zzwa zzwaVar) {
        zzwaVar.getClass();
        for (zzwb.zze e = zzwb.k.e(zzwaVar); e != null; e = e.b) {
            Thread thread = e.f9857a;
            if (thread != null) {
                e.f9857a = null;
                LockSupport.unpark(thread);
            }
        }
        zzwaVar.d();
        zzd f = zzwb.k.f(zzwaVar);
        zzd zzdVar = null;
        while (f != null) {
            zzd zzdVar2 = f.f9850c;
            f.f9850c = zzdVar;
            zzdVar = f;
            f = zzdVar2;
        }
        while (zzdVar != null) {
            Runnable runnable = zzdVar.f9849a;
            zzd zzdVar3 = zzdVar.f9850c;
            Objects.requireNonNull(runnable);
            if (!(runnable instanceof zzb)) {
                Executor executor = zzdVar.b;
                Objects.requireNonNull(executor);
                i(runnable, executor);
                zzdVar = zzdVar3;
            } else {
                throw null;
            }
        }
    }

    public static void i(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (Exception e) {
            Logger a2 = zzwb.i.a();
            Level level = Level.SEVERE;
            String valueOf = String.valueOf(runnable);
            String valueOf2 = String.valueOf(executor);
            a2.logp(level, "com.google.common.util.concurrent.AbstractFuture", "executeListener", android.support.v4.media.a.r(new StringBuilder(valueOf.length() + 57 + valueOf2.length()), "RuntimeException while executing runnable ", valueOf, " with executor ", valueOf2), (Throwable) e);
        }
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        boolean z2;
        zza zzaVar;
        zza zzaVar2;
        Object obj = this.f9851c;
        boolean z3 = obj instanceof zzb;
        if (obj == null) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z3 | z2) {
            if (zzwb.j) {
                zzaVar2 = new zza(new CancellationException("Future.cancel() was called."), z);
            } else {
                if (z) {
                    zzaVar = zza.f9846c;
                } else {
                    zzaVar = zza.d;
                }
                zzaVar2 = zzaVar;
                Objects.requireNonNull(zzaVar2);
            }
            while (!zzwb.k.g(this, obj, zzaVar2)) {
                obj = this.f9851c;
                if (c(obj)) {
                }
            }
            g(this);
            if (!(obj instanceof zzb)) {
                return true;
            }
            throw null;
        }
        return false;
    }

    public void d() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public String e() {
        if (this instanceof ScheduledFuture) {
            long delay = ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS);
            StringBuilder sb = new StringBuilder(String.valueOf(delay).length() + 21);
            sb.append("remaining delay=[");
            sb.append(delay);
            sb.append(" ms]");
            return sb.toString();
        }
        return null;
    }

    @Override // java.util.concurrent.Future
    public final Object get() {
        Object obj;
        zzwb.zze zzeVar = zzwb.zze.f9856c;
        if (!Thread.interrupted()) {
            Object obj2 = this.f9851c;
            if ((obj2 != null) & c(obj2)) {
                return b(obj2);
            }
            zzwb.zze zzeVar2 = this.g;
            if (zzeVar2 != zzeVar) {
                zzwb.zze zzeVar3 = new zzwb.zze();
                do {
                    zzwb.zza zzaVar = zzwb.k;
                    zzaVar.b(zzeVar3, zzeVar2);
                    if (zzaVar.c(this, zzeVar2, zzeVar3)) {
                        do {
                            LockSupport.park(this);
                            if (!Thread.interrupted()) {
                                obj = this.f9851c;
                            } else {
                                a(zzeVar3);
                                throw new InterruptedException();
                            }
                        } while (!((obj != null) & c(obj)));
                        return b(obj);
                    }
                    zzeVar2 = this.g;
                } while (zzeVar2 != zzeVar);
            }
            Object obj3 = this.f9851c;
            Objects.requireNonNull(obj3);
            return b(obj3);
        }
        throw new InterruptedException();
    }

    public final void h(StringBuilder sb) {
        try {
            Object f = f(this);
            sb.append("SUCCESS, result=[");
            if (f == null) {
                sb.append("null");
            } else if (f == this) {
                sb.append("this future");
            } else {
                sb.append(f.getClass().getName());
                sb.append("@");
                sb.append(Integer.toHexString(System.identityHashCode(f)));
            }
            sb.append("]");
        } catch (CancellationException unused) {
            sb.append("CANCELLED");
        } catch (ExecutionException e) {
            sb.append("FAILURE, cause=[");
            sb.append(e.getCause());
            sb.append("]");
        } catch (Exception e2) {
            sb.append("UNKNOWN, cause=[");
            sb.append(e2.getClass());
            sb.append(" thrown from get()]");
        }
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f9851c instanceof zza;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        Object obj = this.f9851c;
        return (obj != null) & c(obj);
    }

    @Override // com.google.common.util.concurrent.ListenableFuture
    public final void k(Runnable runnable, Executor executor) {
        zzd zzdVar;
        zzd zzdVar2 = zzd.d;
        zzhd.a(runnable, "Runnable was null.");
        zzhd.a(executor, "Executor was null.");
        if (!isDone() && (zzdVar = this.f) != zzdVar2) {
            zzd zzdVar3 = new zzd(runnable, executor);
            do {
                zzdVar3.f9850c = zzdVar;
                if (!zzwb.k.d(this, zzdVar, zzdVar3)) {
                    zzdVar = this.f;
                } else {
                    return;
                }
            } while (zzdVar != zzdVar2);
        }
        i(runnable, executor);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        if (getClass().getName().startsWith("com.google.common.util.concurrent.")) {
            sb.append(getClass().getSimpleName());
        } else {
            sb.append(getClass().getName());
        }
        sb.append('@');
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("[status=");
        if (this.f9851c instanceof zza) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            h(sb);
        } else {
            int length = sb.length();
            sb.append("PENDING");
            String str = null;
            if (this.f9851c instanceof zzb) {
                sb.append(", setFuture=[");
                try {
                    sb.append((Object) null);
                } catch (Throwable th) {
                    if ((th instanceof Error) && !(th instanceof StackOverflowError)) {
                        throw th;
                    }
                    sb.append("Exception thrown from implementation: ");
                    sb.append(th.getClass());
                }
                sb.append("]");
            } else {
                try {
                    String e = e();
                    if (e != null) {
                        if (!e.isEmpty()) {
                            str = e;
                        }
                    }
                } catch (Throwable th2) {
                    if ((th2 instanceof Error) && !(th2 instanceof StackOverflowError)) {
                        throw th2;
                    }
                    str = "Exception thrown from implementation: ".concat(String.valueOf(th2.getClass()));
                }
                if (str != null) {
                    android.support.v4.media.a.y(sb, ", info=[", str, "]");
                }
            }
            if (isDone()) {
                sb.delete(length, sb.length());
                h(sb);
            }
        }
        sb.append("]");
        return sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00d3  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x00c6 -> B:34:0x0083). Please report as a decompilation issue!!! */
    @Override // java.util.concurrent.Future
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object get(long r21, java.util.concurrent.TimeUnit r23) {
        /*
            Method dump skipped, instructions count: 460
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.cast.zzwa.get(long, java.util.concurrent.TimeUnit):java.lang.Object");
    }
}
