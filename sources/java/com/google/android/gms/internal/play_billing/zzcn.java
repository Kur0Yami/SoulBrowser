package com.google.android.gms.internal.play_billing;

import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.internal.play_billing.zzcm;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public abstract class zzcn<V> extends zzdi implements zzdc<V> {
    public static final Object h = new Object();
    public static final zzdb i = new zzdb(zzcm.class);
    public static final boolean j;
    public static final zza k;

    /* renamed from: c, reason: collision with root package name */
    public volatile Object f11470c;
    public volatile zzcm.zzd f;
    public volatile zze g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public abstract class zza {
        public abstract zzcm.zzd a(zzcm zzcmVar);

        public abstract zze b(zzcm zzcmVar);

        public abstract void c(zze zzeVar, zze zzeVar2);

        public abstract void d(zze zzeVar, Thread thread);

        public abstract boolean e(zzcm zzcmVar, zzcm.zzd zzdVar, zzcm.zzd zzdVar2);

        public abstract boolean f(zzcn zzcnVar, Object obj, Object obj2);

        public abstract boolean g(zzcn zzcnVar, zze zzeVar, zze zzeVar2);
    }

    /* loaded from: classes3.dex */
    final class zzb extends zza {

        /* renamed from: a, reason: collision with root package name */
        public static final AtomicReferenceFieldUpdater f11471a = AtomicReferenceFieldUpdater.newUpdater(zze.class, Thread.class, "a");
        public static final AtomicReferenceFieldUpdater b = AtomicReferenceFieldUpdater.newUpdater(zze.class, zze.class, "b");

        /* renamed from: c, reason: collision with root package name */
        public static final AtomicReferenceFieldUpdater f11472c = AtomicReferenceFieldUpdater.newUpdater(zzcn.class, zze.class, "g");
        public static final AtomicReferenceFieldUpdater d = AtomicReferenceFieldUpdater.newUpdater(zzcn.class, zzcm.zzd.class, "f");
        public static final AtomicReferenceFieldUpdater e = AtomicReferenceFieldUpdater.newUpdater(zzcn.class, Object.class, "c");

        @Override // com.google.android.gms.internal.play_billing.zzcn.zza
        public final zzcm.zzd a(zzcm zzcmVar) {
            return (zzcm.zzd) d.getAndSet(zzcmVar, zzcm.zzd.d);
        }

        @Override // com.google.android.gms.internal.play_billing.zzcn.zza
        public final zze b(zzcm zzcmVar) {
            return (zze) f11472c.getAndSet(zzcmVar, zze.f11475c);
        }

        @Override // com.google.android.gms.internal.play_billing.zzcn.zza
        public final void c(zze zzeVar, zze zzeVar2) {
            b.lazySet(zzeVar, zzeVar2);
        }

        @Override // com.google.android.gms.internal.play_billing.zzcn.zza
        public final void d(zze zzeVar, Thread thread) {
            f11471a.lazySet(zzeVar, thread);
        }

        @Override // com.google.android.gms.internal.play_billing.zzcn.zza
        public final boolean e(zzcm zzcmVar, zzcm.zzd zzdVar, zzcm.zzd zzdVar2) {
            return zzco.a(d, zzcmVar, zzdVar, zzdVar2);
        }

        @Override // com.google.android.gms.internal.play_billing.zzcn.zza
        public final boolean f(zzcn zzcnVar, Object obj, Object obj2) {
            return zzco.a(e, zzcnVar, obj, obj2);
        }

        @Override // com.google.android.gms.internal.play_billing.zzcn.zza
        public final boolean g(zzcn zzcnVar, zze zzeVar, zze zzeVar2) {
            return zzco.a(f11472c, zzcnVar, zzeVar, zzeVar2);
        }
    }

    /* loaded from: classes3.dex */
    final class zzc extends zza {
        @Override // com.google.android.gms.internal.play_billing.zzcn.zza
        public final zzcm.zzd a(zzcm zzcmVar) {
            zzcm.zzd zzdVar;
            zzcm.zzd zzdVar2 = zzcm.zzd.d;
            synchronized (zzcmVar) {
                try {
                    zzdVar = zzcmVar.f;
                    if (zzdVar != zzdVar2) {
                        zzcmVar.f = zzdVar2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return zzdVar;
        }

        @Override // com.google.android.gms.internal.play_billing.zzcn.zza
        public final zze b(zzcm zzcmVar) {
            zze zzeVar;
            zze zzeVar2 = zze.f11475c;
            synchronized (zzcmVar) {
                try {
                    zzeVar = zzcmVar.g;
                    if (zzeVar != zzeVar2) {
                        zzcmVar.g = zzeVar2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return zzeVar;
        }

        @Override // com.google.android.gms.internal.play_billing.zzcn.zza
        public final void c(zze zzeVar, zze zzeVar2) {
            zzeVar.b = zzeVar2;
        }

        @Override // com.google.android.gms.internal.play_billing.zzcn.zza
        public final void d(zze zzeVar, Thread thread) {
            zzeVar.f11476a = thread;
        }

        @Override // com.google.android.gms.internal.play_billing.zzcn.zza
        public final boolean e(zzcm zzcmVar, zzcm.zzd zzdVar, zzcm.zzd zzdVar2) {
            synchronized (zzcmVar) {
                try {
                    if (zzcmVar.f == zzdVar) {
                        zzcmVar.f = zzdVar2;
                        return true;
                    }
                    return false;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // com.google.android.gms.internal.play_billing.zzcn.zza
        public final boolean f(zzcn zzcnVar, Object obj, Object obj2) {
            synchronized (zzcnVar) {
                try {
                    if (zzcnVar.f11470c == obj) {
                        zzcnVar.f11470c = obj2;
                        return true;
                    }
                    return false;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // com.google.android.gms.internal.play_billing.zzcn.zza
        public final boolean g(zzcn zzcnVar, zze zzeVar, zze zzeVar2) {
            synchronized (zzcnVar) {
                try {
                    if (zzcnVar.g == zzeVar) {
                        zzcnVar.g = zzeVar2;
                        return true;
                    }
                    return false;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    final class zzd extends zza {

        /* renamed from: a, reason: collision with root package name */
        public static final Unsafe f11473a;
        public static final long b;

        /* renamed from: c, reason: collision with root package name */
        public static final long f11474c;
        public static final long d;
        public static final long e;
        public static final long f;

        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, java.security.PrivilegedExceptionAction] */
        static {
            Unsafe unsafe;
            try {
                try {
                    unsafe = Unsafe.getUnsafe();
                } catch (PrivilegedActionException e2) {
                    throw new RuntimeException("Could not initialize intrinsics", e2.getCause());
                }
            } catch (SecurityException unused) {
                unsafe = (Unsafe) AccessController.doPrivileged((PrivilegedExceptionAction) new Object());
            }
            try {
                f11474c = unsafe.objectFieldOffset(zzcn.class.getDeclaredField("g"));
                b = unsafe.objectFieldOffset(zzcn.class.getDeclaredField("f"));
                d = unsafe.objectFieldOffset(zzcn.class.getDeclaredField("c"));
                e = unsafe.objectFieldOffset(zze.class.getDeclaredField("a"));
                f = unsafe.objectFieldOffset(zze.class.getDeclaredField("b"));
                f11473a = unsafe;
            } catch (NoSuchFieldException e3) {
                throw new RuntimeException(e3);
            }
        }

        @Override // com.google.android.gms.internal.play_billing.zzcn.zza
        public final zzcm.zzd a(zzcm zzcmVar) {
            zzcm.zzd zzdVar;
            zzcm.zzd zzdVar2 = zzcm.zzd.d;
            do {
                zzdVar = zzcmVar.f;
                if (zzdVar2 == zzdVar) {
                    break;
                }
            } while (!e(zzcmVar, zzdVar, zzdVar2));
            return zzdVar;
        }

        @Override // com.google.android.gms.internal.play_billing.zzcn.zza
        public final zze b(zzcm zzcmVar) {
            zze zzeVar;
            zze zzeVar2 = zze.f11475c;
            do {
                zzeVar = zzcmVar.g;
                if (zzeVar2 == zzeVar) {
                    break;
                }
            } while (!g(zzcmVar, zzeVar, zzeVar2));
            return zzeVar;
        }

        @Override // com.google.android.gms.internal.play_billing.zzcn.zza
        public final void c(zze zzeVar, zze zzeVar2) {
            f11473a.putObject(zzeVar, f, zzeVar2);
        }

        @Override // com.google.android.gms.internal.play_billing.zzcn.zza
        public final void d(zze zzeVar, Thread thread) {
            f11473a.putObject(zzeVar, e, thread);
        }

        @Override // com.google.android.gms.internal.play_billing.zzcn.zza
        public final boolean e(zzcm zzcmVar, zzcm.zzd zzdVar, zzcm.zzd zzdVar2) {
            return zzcp.a(f11473a, zzcmVar, b, zzdVar, zzdVar2);
        }

        @Override // com.google.android.gms.internal.play_billing.zzcn.zza
        public final boolean f(zzcn zzcnVar, Object obj, Object obj2) {
            return zzcp.a(f11473a, zzcnVar, d, obj, obj2);
        }

        @Override // com.google.android.gms.internal.play_billing.zzcn.zza
        public final boolean g(zzcn zzcnVar, zze zzeVar, zze zzeVar2) {
            return zzcp.a(f11473a, zzcnVar, f11474c, zzeVar, zzeVar2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public final class zze {

        /* renamed from: c, reason: collision with root package name */
        public static final zze f11475c = new Object();

        /* renamed from: a, reason: collision with root package name */
        public volatile Thread f11476a;
        public volatile zze b;

        public zze() {
            zzcn.k.d(this, Thread.currentThread());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [com.google.android.gms.internal.play_billing.zzcn$zza] */
    /* JADX WARN: Type inference failed for: r0v24 */
    /* JADX WARN: Type inference failed for: r0v25 */
    static {
        boolean z;
        Object obj;
        Throwable th;
        Throwable th2;
        ?? r0;
        Object obj2;
        try {
            z = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));
        } catch (SecurityException unused) {
            z = false;
        }
        j = z;
        String property = System.getProperty("java.runtime.name", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        Throwable th3 = null;
        if (property != null && !property.contains("Android")) {
            try {
                obj2 = new Object();
            } catch (NoClassDefFoundError unused2) {
                obj2 = new Object();
            }
        } else {
            try {
                obj2 = new Object();
            } catch (Error | Exception e) {
                try {
                    obj = new Object();
                } catch (Error | Exception e2) {
                    th3 = e2;
                    obj = new Object();
                }
                th = th3;
                th2 = e;
                r0 = obj;
            }
        }
        th = null;
        th2 = null;
        r0 = obj2;
        k = r0;
        if (th != null) {
            zzdb zzdbVar = i;
            Logger a2 = zzdbVar.a();
            Level level = Level.SEVERE;
            a2.logp(level, "com.google.common.util.concurrent.AbstractFutureState", "<clinit>", "UnsafeAtomicHelper is broken!", th2);
            zzdbVar.a().logp(level, "com.google.common.util.concurrent.AbstractFutureState", "<clinit>", "AtomicReferenceFieldUpdaterAtomicHelper is broken!", th);
        }
    }

    public final void b(zze zzeVar) {
        zzeVar.f11476a = null;
        while (true) {
            zze zzeVar2 = this.g;
            if (zzeVar2 != zze.f11475c) {
                zze zzeVar3 = null;
                while (zzeVar2 != null) {
                    zze zzeVar4 = zzeVar2.b;
                    if (zzeVar2.f11476a != null) {
                        zzeVar3 = zzeVar2;
                    } else if (zzeVar3 != null) {
                        zzeVar3.b = zzeVar4;
                        if (zzeVar3.f11476a == null) {
                            break;
                        }
                    } else if (!k.g(this, zzeVar2, zzeVar4)) {
                        break;
                    }
                    zzeVar2 = zzeVar4;
                }
                return;
            }
            return;
        }
    }
}
