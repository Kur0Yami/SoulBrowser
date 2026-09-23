package com.google.android.gms.internal.play_billing;

import android.support.v4.media.a;
import com.google.android.gms.internal.play_billing.zzcn;
import j$.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;

/* loaded from: classes3.dex */
public abstract class zzcm<V> extends zzcn<V> {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public final class zza {

        /* renamed from: c, reason: collision with root package name */
        public static final zza f11464c;
        public static final zza d;

        /* renamed from: a, reason: collision with root package name */
        public final boolean f11465a;
        public final Throwable b;

        static {
            if (zzcn.j) {
                d = null;
                f11464c = null;
            } else {
                d = new zza(null, false);
                f11464c = new zza(null, true);
            }
        }

        public zza(Throwable th, boolean z) {
            this.f11465a = z;
            this.b = th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public final class zzb<V> implements Runnable {

        /* renamed from: c, reason: collision with root package name */
        public final zzcm f11466c;
        public final zzdc f;

        public zzb(zzcm zzcmVar, zzdc zzdcVar) {
            this.f11466c = zzcmVar;
            this.f = zzdcVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (this.f11466c.f11470c == this) {
                zzdc zzdcVar = this.f;
                if (zzcn.k.f(this.f11466c, this, zzcm.g(zzdcVar))) {
                    zzcm.i(this.f11466c);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public final class zzc {
        public static final zzc b = new zzc(new Throwable("Failure occurred while trying to finish a future."));

        /* renamed from: a, reason: collision with root package name */
        public final Throwable f11467a;

        /* renamed from: com.google.android.gms.internal.play_billing.zzcm$zzc$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        public class AnonymousClass1 extends Throwable {
            @Override // java.lang.Throwable
            public final Throwable fillInStackTrace() {
                return this;
            }
        }

        public zzc(Throwable th) {
            th.getClass();
            this.f11467a = th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public final class zzd {
        public static final zzd d = new zzd();

        /* renamed from: a, reason: collision with root package name */
        public final Runnable f11468a;
        public final Executor b;

        /* renamed from: c, reason: collision with root package name */
        public zzd f11469c;

        public zzd() {
            this.f11468a = null;
            this.b = null;
        }

        public zzd(Runnable runnable, Executor executor) {
            this.f11468a = runnable;
            this.b = executor;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public interface zze<V> extends zzdc<V> {
    }

    public static Object c(Object obj) {
        if (!(obj instanceof zza)) {
            if (!(obj instanceof zzc)) {
                if (obj == zzcn.h) {
                    return null;
                }
                return obj;
            }
            throw new ExecutionException(((zzc) obj).f11467a);
        }
        Throwable th = ((zza) obj).b;
        CancellationException cancellationException = new CancellationException("Task was cancelled.");
        cancellationException.initCause(th);
        throw cancellationException;
    }

    public static boolean f(Object obj) {
        return !(obj instanceof zzb);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Object g(zzdc zzdcVar) {
        Object obj;
        Throwable a2;
        if (zzdcVar instanceof zze) {
            Object obj2 = ((zzcm) zzdcVar).f11470c;
            if (obj2 instanceof zza) {
                zza zzaVar = (zza) obj2;
                if (zzaVar.f11465a) {
                    Throwable th = zzaVar.b;
                    obj2 = th != null ? new zza(th, false) : zza.d;
                }
            }
            Objects.requireNonNull(obj2);
            return obj2;
        }
        if ((zzdcVar instanceof zzdi) && (a2 = ((zzdi) zzdcVar).a()) != null) {
            return new zzc(a2);
        }
        boolean isCancelled = zzdcVar.isCancelled();
        boolean z = true;
        if ((!zzcn.j) & isCancelled) {
            zza zzaVar2 = zza.d;
            Objects.requireNonNull(zzaVar2);
            return zzaVar2;
        }
        boolean z2 = false;
        while (true) {
            try {
                try {
                    try {
                        obj = zzdcVar.get();
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
                    return new zzc(new IllegalArgumentException("get() threw CancellationException, despite reporting isCancelled() == false: ".concat(String.valueOf(zzdcVar)), e3));
                }
                return new zza(e3, false);
            } catch (ExecutionException e4) {
                if (isCancelled) {
                    return new zza(new IllegalArgumentException("get() did not throw CancellationException, despite reporting isCancelled() == true: ".concat(String.valueOf(zzdcVar)), e4), false);
                }
                return new zzc(e4.getCause());
            }
        }
        if (z2) {
            Thread.currentThread().interrupt();
        }
        if (isCancelled) {
            return new zza(new IllegalArgumentException("get() did not throw CancellationException, despite reporting isCancelled() == true: ".concat(String.valueOf(zzdcVar))), false);
        }
        if (obj == null) {
            return zzcn.h;
        }
        return obj;
    }

    public static void i(zzcm zzcmVar) {
        zzd zzdVar;
        zzd zzdVar2 = null;
        while (true) {
            zzcmVar.getClass();
            for (zzcn.zze b = zzcn.k.b(zzcmVar); b != null; b = b.b) {
                Thread thread = b.f11476a;
                if (thread != null) {
                    b.f11476a = null;
                    LockSupport.unpark(thread);
                }
            }
            zzcmVar.e();
            zzd zzdVar3 = zzdVar2;
            zzd a2 = zzcn.k.a(zzcmVar);
            zzd zzdVar4 = zzdVar3;
            while (a2 != null) {
                zzd zzdVar5 = a2.f11469c;
                a2.f11469c = zzdVar4;
                zzdVar4 = a2;
                a2 = zzdVar5;
            }
            while (zzdVar4 != null) {
                Runnable runnable = zzdVar4.f11468a;
                zzdVar = zzdVar4.f11469c;
                Objects.requireNonNull(runnable);
                if (runnable instanceof zzb) {
                    zzb zzbVar = (zzb) runnable;
                    zzcmVar = zzbVar.f11466c;
                    if (zzcmVar.f11470c == zzbVar) {
                        if (zzcn.k.f(zzcmVar, zzbVar, g(zzbVar.f))) {
                            break;
                        }
                    } else {
                        continue;
                    }
                } else {
                    Executor executor = zzdVar4.b;
                    Objects.requireNonNull(executor);
                    j(runnable, executor);
                }
                zzdVar4 = zzdVar;
            }
            return;
            zzdVar2 = zzdVar;
        }
    }

    public static void j(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (Exception e) {
            zzcn.i.a().logp(Level.SEVERE, "com.google.common.util.concurrent.AbstractFuture", "executeListener", a.m("RuntimeException while executing runnable ", String.valueOf(runnable), " with executor ", String.valueOf(executor)), (Throwable) e);
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzdi
    public final Throwable a() {
        if (this instanceof zze) {
            Object obj = this.f11470c;
            if (obj instanceof zzc) {
                return ((zzc) obj).f11467a;
            }
            return null;
        }
        return null;
    }

    @Override // com.google.android.gms.internal.play_billing.zzdc
    public final void b0(Runnable runnable, Executor executor) {
        zzd zzdVar;
        zzd zzdVar2 = zzd.d;
        if (executor != null) {
            if (!isDone() && (zzdVar = this.f) != zzdVar2) {
                zzd zzdVar3 = new zzd(runnable, executor);
                do {
                    zzdVar3.f11469c = zzdVar;
                    if (!zzcn.k.e(this, zzdVar, zzdVar3)) {
                        zzdVar = this.f;
                    } else {
                        return;
                    }
                } while (zzdVar != zzdVar2);
            }
            j(runnable, executor);
            return;
        }
        throw new NullPointerException("Executor was null.");
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0056, code lost:
    
        return true;
     */
    @Override // java.util.concurrent.Future
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean cancel(boolean r8) {
        /*
            r7 = this;
            java.lang.Object r0 = r7.f11470c
            boolean r1 = r0 instanceof com.google.android.gms.internal.play_billing.zzcm.zzb
            r2 = 0
            r3 = 1
            if (r0 != 0) goto La
            r4 = r3
            goto Lb
        La:
            r4 = r2
        Lb:
            r1 = r1 | r4
            if (r1 == 0) goto L60
            boolean r1 = com.google.android.gms.internal.play_billing.zzcn.j
            if (r1 == 0) goto L1f
            com.google.android.gms.internal.play_billing.zzcm$zza r1 = new com.google.android.gms.internal.play_billing.zzcm$zza
            java.util.concurrent.CancellationException r4 = new java.util.concurrent.CancellationException
            java.lang.String r5 = "Future.cancel() was called."
            r4.<init>(r5)
            r1.<init>(r4, r8)
            goto L29
        L1f:
            if (r8 == 0) goto L24
            com.google.android.gms.internal.play_billing.zzcm$zza r1 = com.google.android.gms.internal.play_billing.zzcm.zza.f11464c
            goto L26
        L24:
            com.google.android.gms.internal.play_billing.zzcm$zza r1 = com.google.android.gms.internal.play_billing.zzcm.zza.d
        L26:
            j$.util.Objects.requireNonNull(r1)
        L29:
            r4 = r7
            r5 = r2
        L2b:
            com.google.android.gms.internal.play_billing.zzcn$zza r6 = com.google.android.gms.internal.play_billing.zzcn.k
            boolean r6 = r6.f(r4, r0, r1)
            if (r6 == 0) goto L57
            i(r4)
            boolean r4 = r0 instanceof com.google.android.gms.internal.play_billing.zzcm.zzb
            if (r4 == 0) goto L56
            com.google.android.gms.internal.play_billing.zzcm$zzb r0 = (com.google.android.gms.internal.play_billing.zzcm.zzb) r0
            com.google.android.gms.internal.play_billing.zzdc r0 = r0.f
            boolean r4 = r0 instanceof com.google.android.gms.internal.play_billing.zzcm.zze
            if (r4 == 0) goto L53
            r4 = r0
            com.google.android.gms.internal.play_billing.zzcm r4 = (com.google.android.gms.internal.play_billing.zzcm) r4
            java.lang.Object r0 = r4.f11470c
            if (r0 != 0) goto L4b
            r5 = r3
            goto L4c
        L4b:
            r5 = r2
        L4c:
            boolean r6 = r0 instanceof com.google.android.gms.internal.play_billing.zzcm.zzb
            r5 = r5 | r6
            if (r5 == 0) goto L56
            r5 = r3
            goto L2b
        L53:
            r0.cancel(r8)
        L56:
            return r3
        L57:
            java.lang.Object r0 = r4.f11470c
            boolean r6 = f(r0)
            if (r6 == 0) goto L2b
            return r5
        L60:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.play_billing.zzcm.cancel(boolean):boolean");
    }

    public String d() {
        throw null;
    }

    public void e() {
    }

    @Override // java.util.concurrent.Future
    public final Object get() {
        Object obj;
        zzcn.zze zzeVar = zzcn.zze.f11475c;
        if (!Thread.interrupted()) {
            Object obj2 = this.f11470c;
            if ((obj2 != null) & f(obj2)) {
                return c(obj2);
            }
            zzcn.zze zzeVar2 = this.g;
            if (zzeVar2 != zzeVar) {
                zzcn.zze zzeVar3 = new zzcn.zze();
                do {
                    zzcn.zza zzaVar = zzcn.k;
                    zzaVar.c(zzeVar3, zzeVar2);
                    if (zzaVar.g(this, zzeVar2, zzeVar3)) {
                        do {
                            LockSupport.park(this);
                            if (!Thread.interrupted()) {
                                obj = this.f11470c;
                            } else {
                                b(zzeVar3);
                                throw new InterruptedException();
                            }
                        } while (!((obj != null) & f(obj)));
                        return c(obj);
                    }
                    zzeVar2 = this.g;
                } while (zzeVar2 != zzeVar);
            }
            Object obj3 = this.f11470c;
            Objects.requireNonNull(obj3);
            return c(obj3);
        }
        throw new InterruptedException();
    }

    public final void h(StringBuilder sb) {
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

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f11470c instanceof zza;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        Object obj = this.f11470c;
        return (obj != null) & f(obj);
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00cd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String toString() {
        /*
            r6 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.Class r1 = r6.getClass()
            java.lang.String r1 = r1.getName()
            java.lang.String r2 = "com.google.common.util.concurrent."
            boolean r1 = r1.startsWith(r2)
            if (r1 == 0) goto L21
            java.lang.Class r1 = r6.getClass()
            java.lang.String r1 = r1.getSimpleName()
            r0.append(r1)
            goto L2c
        L21:
            java.lang.Class r1 = r6.getClass()
            java.lang.String r1 = r1.getName()
            r0.append(r1)
        L2c:
            r1 = 64
            r0.append(r1)
            int r1 = java.lang.System.identityHashCode(r6)
            java.lang.String r1 = java.lang.Integer.toHexString(r1)
            r0.append(r1)
            java.lang.String r1 = "[status="
            r0.append(r1)
            java.lang.Object r1 = r6.f11470c
            boolean r1 = r1 instanceof com.google.android.gms.internal.play_billing.zzcm.zza
            java.lang.String r2 = "]"
            if (r1 == 0) goto L50
            java.lang.String r1 = "CANCELLED"
            r0.append(r1)
            goto Le2
        L50:
            boolean r1 = r6.isDone()
            if (r1 == 0) goto L5b
            r6.h(r0)
            goto Le2
        L5b:
            int r1 = r0.length()
            java.lang.String r3 = "PENDING"
            r0.append(r3)
            java.lang.Object r3 = r6.f11470c
            boolean r4 = r3 instanceof com.google.android.gms.internal.play_billing.zzcm.zzb
            java.lang.String r5 = "Exception thrown from implementation: "
            if (r4 == 0) goto L9d
            java.lang.String r4 = ", setFuture=["
            r0.append(r4)
            com.google.android.gms.internal.play_billing.zzcm$zzb r3 = (com.google.android.gms.internal.play_billing.zzcm.zzb) r3
            com.google.android.gms.internal.play_billing.zzdc r3 = r3.f
            if (r3 != r6) goto L7f
            java.lang.String r3 = "this future"
            r0.append(r3)     // Catch: java.lang.Throwable -> L7d
            goto L99
        L7d:
            r3 = move-exception
            goto L83
        L7f:
            r0.append(r3)     // Catch: java.lang.Throwable -> L7d
            goto L99
        L83:
            boolean r4 = r3 instanceof java.lang.Error
            if (r4 == 0) goto L8f
            boolean r4 = r3 instanceof java.lang.StackOverflowError
            if (r4 == 0) goto L8c
            goto L8f
        L8c:
            java.lang.Error r3 = (java.lang.Error) r3
            throw r3
        L8f:
            r0.append(r5)
            java.lang.Class r3 = r3.getClass()
            r0.append(r3)
        L99:
            r0.append(r2)
            goto Ld2
        L9d:
            java.lang.String r3 = r6.d()     // Catch: java.lang.Throwable -> Lac
            if (r3 == 0) goto Lae
            boolean r4 = r3.isEmpty()     // Catch: java.lang.Throwable -> Lac
            if (r4 == 0) goto Laa
            goto Lae
        Laa:
            r4 = 0
            goto Laf
        Lac:
            r3 = move-exception
            goto Lb3
        Lae:
            r4 = 1
        Laf:
            if (r4 == 0) goto Lcb
            r3 = 0
            goto Lcb
        Lb3:
            boolean r4 = r3 instanceof java.lang.Error
            if (r4 == 0) goto Lbf
            boolean r4 = r3 instanceof java.lang.StackOverflowError
            if (r4 == 0) goto Lbc
            goto Lbf
        Lbc:
            java.lang.Error r3 = (java.lang.Error) r3
            throw r3
        Lbf:
            java.lang.Class r3 = r3.getClass()
            java.lang.String r3 = java.lang.String.valueOf(r3)
            java.lang.String r3 = r5.concat(r3)
        Lcb:
            if (r3 == 0) goto Ld2
            java.lang.String r4 = ", info=["
            android.support.v4.media.a.y(r0, r4, r3, r2)
        Ld2:
            boolean r3 = r6.isDone()
            if (r3 == 0) goto Le2
            int r3 = r0.length()
            r0.delete(r1, r3)
            r6.h(r0)
        Le2:
            r0.append(r2)
            java.lang.String r0 = r0.toString()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.play_billing.zzcm.toString():java.lang.String");
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00cd  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x00c0 -> B:34:0x0080). Please report as a decompilation issue!!! */
    @Override // java.util.concurrent.Future
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object get(long r20, java.util.concurrent.TimeUnit r22) {
        /*
            Method dump skipped, instructions count: 385
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.play_billing.zzcm.get(long, java.util.concurrent.TimeUnit):java.lang.Object");
    }
}
