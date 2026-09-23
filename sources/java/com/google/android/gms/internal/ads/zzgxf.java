package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzgxg;
import com.google.common.util.concurrent.ListenableFuture;
import j$.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public abstract class zzgxf<V> extends zzgxg<V> {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class zza {

        /* renamed from: c, reason: collision with root package name */
        public static final zza f8283c;
        public static final zza d;

        /* renamed from: a, reason: collision with root package name */
        public final boolean f8284a;
        public final Throwable b;

        static {
            if (zzgxg.j) {
                d = null;
                f8283c = null;
            } else {
                d = new zza(null, false);
                f8283c = new zza(null, true);
            }
        }

        public zza(Throwable th, boolean z) {
            this.f8284a = z;
            this.b = th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class zzb<V> implements Runnable {

        /* renamed from: c, reason: collision with root package name */
        public final zzgxf f8285c;
        public final ListenableFuture f;

        public zzb(zzgxf zzgxfVar, ListenableFuture listenableFuture) {
            this.f8285c = zzgxfVar;
            this.f = listenableFuture;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (this.f8285c.f8289c == this) {
                ListenableFuture listenableFuture = this.f;
                if (zzgxg.k.g(this.f8285c, this, zzgxf.g(listenableFuture))) {
                    zzgxf.o(this.f8285c, false);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class zzc {
        public static final zzc b = new zzc(new Throwable("Failure occurred while trying to finish a future."));

        /* renamed from: a, reason: collision with root package name */
        public final Throwable f8286a;

        /* renamed from: com.google.android.gms.internal.ads.zzgxf$zzc$1, reason: invalid class name */
        /* loaded from: classes.dex */
        public class AnonymousClass1 extends Throwable {
            @Override // java.lang.Throwable
            public final Throwable fillInStackTrace() {
                return this;
            }
        }

        public zzc(Throwable th) {
            th.getClass();
            this.f8286a = th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class zzd {
        public static final zzd d = new zzd();

        /* renamed from: a, reason: collision with root package name */
        public final Runnable f8287a;
        public final Executor b;

        /* renamed from: c, reason: collision with root package name */
        public zzd f8288c;

        public zzd() {
            this.f8287a = null;
            this.b = null;
        }

        public zzd(Runnable runnable, Executor executor) {
            this.f8287a = runnable;
            this.b = executor;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface zze<V> extends ListenableFuture<V> {
    }

    /* loaded from: classes.dex */
    abstract class zzf<V> extends zzgxf<V> implements zze<V> {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Object g(ListenableFuture listenableFuture) {
        Object obj;
        Throwable a2;
        if (listenableFuture instanceof zze) {
            Object obj2 = ((zzgxf) listenableFuture).f8289c;
            if (obj2 instanceof zza) {
                zza zzaVar = (zza) obj2;
                if (zzaVar.f8284a) {
                    Throwable th = zzaVar.b;
                    obj2 = th != null ? new zza(th, false) : zza.d;
                }
            }
            Objects.requireNonNull(obj2);
            return obj2;
        }
        if ((listenableFuture instanceof zzgzo) && (a2 = ((zzgzo) listenableFuture).a()) != null) {
            return new zzc(a2);
        }
        boolean isCancelled = listenableFuture.isCancelled();
        boolean z = true;
        if ((!zzgxg.j) & isCancelled) {
            zza zzaVar2 = zza.d;
            Objects.requireNonNull(zzaVar2);
            return zzaVar2;
        }
        boolean z2 = false;
        while (true) {
            try {
                try {
                    try {
                        obj = listenableFuture.get();
                        break;
                    } catch (Error e) {
                        e = e;
                        return new zzc(e);
                    }
                } catch (InterruptedException unused) {
                    z2 = z;
                } catch (Throwable th2) {
                    if (z2) {
                        Thread.currentThread().interrupt();
                    }
                    throw th2;
                }
            } catch (Error | Exception e2) {
                e = e2;
                return new zzc(e);
            } catch (CancellationException e3) {
                if (!isCancelled) {
                    return new zzc(new IllegalArgumentException("get() threw CancellationException, despite reporting isCancelled() == false: ".concat(String.valueOf(listenableFuture)), e3));
                }
                return new zza(e3, false);
            } catch (ExecutionException e4) {
                if (isCancelled) {
                    return new zza(new IllegalArgumentException("get() did not throw CancellationException, despite reporting isCancelled() == true: ".concat(String.valueOf(listenableFuture)), e4), false);
                }
                return new zzc(e4.getCause());
            }
        }
        if (z2) {
            Thread.currentThread().interrupt();
        }
        if (isCancelled) {
            String valueOf = String.valueOf(listenableFuture);
            StringBuilder sb = new StringBuilder(valueOf.length() + 84);
            sb.append("get() did not throw CancellationException, despite reporting isCancelled() == true: ");
            sb.append(valueOf);
            return new zza(new IllegalArgumentException(sb.toString()), false);
        }
        if (obj == null) {
            return zzgxg.h;
        }
        return obj;
    }

    public static Object h(Object obj) {
        if (!(obj instanceof zza)) {
            if (!(obj instanceof zzc)) {
                if (obj == zzgxg.h) {
                    return null;
                }
                return obj;
            }
            throw new ExecutionException(((zzc) obj).f8286a);
        }
        Throwable th = ((zza) obj).b;
        CancellationException cancellationException = new CancellationException("Task was cancelled.");
        cancellationException.initCause(th);
        throw cancellationException;
    }

    public static boolean i(Object obj) {
        return !(obj instanceof zzb);
    }

    public static void o(zzgxf zzgxfVar, boolean z) {
        zzd zzdVar = null;
        while (true) {
            for (zzgxg.zze e = zzgxg.k.e(zzgxfVar); e != null; e = e.b) {
                Thread thread = e.f8295a;
                if (thread != null) {
                    e.f8295a = null;
                    LockSupport.unpark(thread);
                }
            }
            if (z) {
                zzgxfVar.j();
            }
            zzgxfVar.e();
            zzd zzdVar2 = zzdVar;
            zzd f = zzgxg.k.f(zzgxfVar);
            zzd zzdVar3 = zzdVar2;
            while (f != null) {
                zzd zzdVar4 = f.f8288c;
                f.f8288c = zzdVar3;
                zzdVar3 = f;
                f = zzdVar4;
            }
            while (zzdVar3 != null) {
                Runnable runnable = zzdVar3.f8287a;
                zzdVar = zzdVar3.f8288c;
                Objects.requireNonNull(runnable);
                if (runnable instanceof zzb) {
                    zzb zzbVar = (zzb) runnable;
                    zzgxfVar = zzbVar.f8285c;
                    if (zzgxfVar.f8289c == zzbVar) {
                        if (zzgxg.k.g(zzgxfVar, zzbVar, g(zzbVar.f))) {
                            break;
                        }
                    } else {
                        continue;
                    }
                } else {
                    Executor executor = zzdVar3.b;
                    Objects.requireNonNull(executor);
                    q(runnable, executor);
                }
                zzdVar3 = zzdVar;
            }
            return;
            z = false;
        }
    }

    public static void q(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (Exception e) {
            Logger a2 = zzgxg.i.a();
            Level level = Level.SEVERE;
            String valueOf = String.valueOf(runnable);
            String valueOf2 = String.valueOf(executor);
            a2.logp(level, "com.google.common.util.concurrent.AbstractFuture", "executeListener", android.support.v4.media.a.r(new StringBuilder(valueOf.length() + 57 + valueOf2.length()), "RuntimeException while executing runnable ", valueOf, " with executor ", valueOf2), (Throwable) e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgzo
    public final Throwable a() {
        if (this instanceof zze) {
            Object obj = this.f8289c;
            if (obj instanceof zzc) {
                return ((zzc) obj).f8286a;
            }
            return null;
        }
        return null;
    }

    public boolean c(Object obj) {
        if (obj == null) {
            obj = zzgxg.h;
        }
        if (!zzgxg.k.g(this, null, obj)) {
            return false;
        }
        o(this, false);
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x0057, code lost:
    
        return true;
     */
    @Override // java.util.concurrent.Future
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean cancel(boolean r8) {
        /*
            r7 = this;
            java.lang.Object r0 = r7.f8289c
            boolean r1 = r0 instanceof com.google.android.gms.internal.ads.zzgxf.zzb
            r2 = 0
            r3 = 1
            if (r0 != 0) goto La
            r4 = r3
            goto Lb
        La:
            r4 = r2
        Lb:
            r1 = r1 | r4
            if (r1 == 0) goto L61
            boolean r1 = com.google.android.gms.internal.ads.zzgxg.j
            if (r1 == 0) goto L1f
            com.google.android.gms.internal.ads.zzgxf$zza r1 = new com.google.android.gms.internal.ads.zzgxf$zza
            java.util.concurrent.CancellationException r4 = new java.util.concurrent.CancellationException
            java.lang.String r5 = "Future.cancel() was called."
            r4.<init>(r5)
            r1.<init>(r4, r8)
            goto L29
        L1f:
            if (r8 == 0) goto L24
            com.google.android.gms.internal.ads.zzgxf$zza r1 = com.google.android.gms.internal.ads.zzgxf.zza.f8283c
            goto L26
        L24:
            com.google.android.gms.internal.ads.zzgxf$zza r1 = com.google.android.gms.internal.ads.zzgxf.zza.d
        L26:
            j$.util.Objects.requireNonNull(r1)
        L29:
            r4 = r7
            r5 = r2
        L2b:
            com.google.android.gms.internal.ads.zzgxg$zza r6 = com.google.android.gms.internal.ads.zzgxg.k
            boolean r6 = r6.g(r4, r0, r1)
            if (r6 == 0) goto L58
            o(r4, r8)
            boolean r4 = r0 instanceof com.google.android.gms.internal.ads.zzgxf.zzb
            if (r4 == 0) goto L57
            com.google.android.gms.internal.ads.zzgxf$zzb r0 = (com.google.android.gms.internal.ads.zzgxf.zzb) r0
            com.google.common.util.concurrent.ListenableFuture r0 = r0.f
            boolean r4 = r0 instanceof com.google.android.gms.internal.ads.zzgxf.zze
            if (r4 == 0) goto L54
            r4 = r0
            com.google.android.gms.internal.ads.zzgxf r4 = (com.google.android.gms.internal.ads.zzgxf) r4
            java.lang.Object r0 = r4.f8289c
            if (r0 != 0) goto L4b
            r5 = r3
            goto L4c
        L4b:
            r5 = r2
        L4c:
            boolean r6 = r0 instanceof com.google.android.gms.internal.ads.zzgxf.zzb
            r5 = r5 | r6
            if (r5 == 0) goto L53
            r5 = r3
            goto L2b
        L53:
            return r3
        L54:
            r0.cancel(r8)
        L57:
            return r3
        L58:
            java.lang.Object r0 = r4.f8289c
            boolean r6 = i(r0)
            if (r6 == 0) goto L2b
            return r5
        L61:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgxf.cancel(boolean):boolean");
    }

    public boolean d(Throwable th) {
        th.getClass();
        if (!zzgxg.k.g(this, null, new zzc(th))) {
            return false;
        }
        o(this, false);
        return true;
    }

    public void e() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public String f() {
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
    public Object get() {
        Object obj;
        zzgxg.zze zzeVar = zzgxg.zze.f8294c;
        if (!Thread.interrupted()) {
            Object obj2 = this.f8289c;
            if ((obj2 != null) & i(obj2)) {
                return h(obj2);
            }
            zzgxg.zze zzeVar2 = this.g;
            if (zzeVar2 != zzeVar) {
                zzgxg.zze zzeVar3 = new zzgxg.zze();
                do {
                    zzgxg.zza zzaVar = zzgxg.k;
                    zzaVar.b(zzeVar3, zzeVar2);
                    if (zzaVar.c(this, zzeVar2, zzeVar3)) {
                        do {
                            LockSupport.park(this);
                            if (!Thread.interrupted()) {
                                obj = this.f8289c;
                            } else {
                                b(zzeVar3);
                                throw new InterruptedException();
                            }
                        } while (!((obj != null) & i(obj)));
                        return h(obj);
                    }
                    zzeVar2 = this.g;
                } while (zzeVar2 != zzeVar);
            }
            Object obj3 = this.f8289c;
            Objects.requireNonNull(obj3);
            return h(obj3);
        }
        throw new InterruptedException();
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.f8289c instanceof zza;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        Object obj = this.f8289c;
        return (obj != null) & i(obj);
    }

    public void j() {
    }

    @Override // com.google.common.util.concurrent.ListenableFuture
    public void k(Runnable runnable, Executor executor) {
        zzd zzdVar;
        zzd zzdVar2 = zzd.d;
        zzgqa.h(runnable, "Runnable was null.");
        zzgqa.h(executor, "Executor was null.");
        if (!isDone() && (zzdVar = this.f) != zzdVar2) {
            zzd zzdVar3 = new zzd(runnable, executor);
            do {
                zzdVar3.f8288c = zzdVar;
                if (!zzgxg.k.d(this, zzdVar, zzdVar3)) {
                    zzdVar = this.f;
                } else {
                    return;
                }
            } while (zzdVar != zzdVar2);
        }
        q(runnable, executor);
    }

    public final boolean l() {
        Object obj = this.f8289c;
        if ((obj instanceof zza) && ((zza) obj).f8284a) {
            return true;
        }
        return false;
    }

    public final void m(ListenableFuture listenableFuture) {
        zzc zzcVar;
        listenableFuture.getClass();
        Object obj = this.f8289c;
        if (obj == null) {
            if (listenableFuture.isDone()) {
                if (zzgxg.k.g(this, null, g(listenableFuture))) {
                    o(this, false);
                    return;
                }
                return;
            }
            zzb zzbVar = new zzb(this, listenableFuture);
            if (zzgxg.k.g(this, null, zzbVar)) {
                try {
                    listenableFuture.k(zzbVar, zzgyb.f8301c);
                    return;
                } catch (Throwable th) {
                    try {
                        zzcVar = new zzc(th);
                    } catch (Error | Exception unused) {
                        zzcVar = zzc.b;
                    }
                    zzgxg.k.g(this, zzbVar, zzcVar);
                    return;
                }
            }
            obj = this.f8289c;
        }
        if (obj instanceof zza) {
            listenableFuture.cancel(((zza) obj).f8284a);
        }
    }

    public final void n(Future future) {
        boolean z;
        if (future != null) {
            z = true;
        } else {
            z = false;
        }
        if (z & isCancelled()) {
            future.cancel(l());
        }
    }

    public final void p(StringBuilder sb) {
        V v;
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
            } catch (ExecutionException e) {
                sb.append("FAILURE, cause=[");
                sb.append(e.getCause());
                sb.append("]");
                return;
            } catch (Exception e2) {
                sb.append("UNKNOWN, cause=[");
                sb.append(e2.getClass());
                sb.append(" thrown from get()]");
                return;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        sb.append("SUCCESS, result=[");
        if (v == null) {
            sb.append("null");
        } else if (v == this) {
            sb.append("this future");
        } else {
            sb.append(v.getClass().getName());
            sb.append("@");
            sb.append(Integer.toHexString(System.identityHashCode(v)));
        }
        sb.append("]");
    }

    public String toString() {
        String concat;
        StringBuilder sb = new StringBuilder();
        if (getClass().getName().startsWith("com.google.common.util.concurrent.")) {
            sb.append(getClass().getSimpleName());
        } else {
            sb.append(getClass().getName());
        }
        sb.append('@');
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("[status=");
        if (isCancelled()) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            p(sb);
        } else {
            int length = sb.length();
            sb.append("PENDING");
            Object obj = this.f8289c;
            if (obj instanceof zzb) {
                sb.append(", setFuture=[");
                ListenableFuture listenableFuture = ((zzb) obj).f;
                try {
                    if (listenableFuture == this) {
                        sb.append("this future");
                    } else {
                        sb.append(listenableFuture);
                    }
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
                    concat = f();
                    if (zzgpz.a(concat)) {
                        concat = null;
                    }
                } catch (Throwable th2) {
                    if ((th2 instanceof Error) && !(th2 instanceof StackOverflowError)) {
                        throw th2;
                    }
                    concat = "Exception thrown from implementation: ".concat(String.valueOf(th2.getClass()));
                }
                if (concat != null) {
                    android.support.v4.media.a.y(sb, ", info=[", concat, "]");
                }
            }
            if (isDone()) {
                sb.delete(length, sb.length());
                p(sb);
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
    public java.lang.Object get(long r21, java.util.concurrent.TimeUnit r23) {
        /*
            Method dump skipped, instructions count: 460
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgxf.get(long, java.util.concurrent.TimeUnit):java.lang.Object");
    }
}
