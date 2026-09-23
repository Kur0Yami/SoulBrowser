package com.google.android.gms.internal.cast;

import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.internal.ads.c;
import com.google.android.gms.internal.cast.zzwa;
import com.google.common.util.concurrent.ListenableFuture;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class zzwb<V> extends zzwx implements ListenableFuture<V> {
    public static final Object h = new Object();
    public static final zzwn i = new zzwn();
    public static final boolean j;
    public static final zza k;

    /* renamed from: c, reason: collision with root package name */
    public volatile Object f9851c;
    public volatile zzwa.zzd f;
    public volatile zze g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public abstract class zza {
        public abstract void a(zze zzeVar, Thread thread);

        public abstract void b(zze zzeVar, zze zzeVar2);

        public abstract boolean c(zzwb zzwbVar, zze zzeVar, zze zzeVar2);

        public abstract boolean d(zzwb zzwbVar, zzwa.zzd zzdVar, zzwa.zzd zzdVar2);

        public abstract zze e(zzwa zzwaVar);

        public abstract zzwa.zzd f(zzwa zzwaVar);

        public abstract boolean g(zzwb zzwbVar, Object obj, Object obj2);
    }

    /* loaded from: classes.dex */
    final class zzb extends zza {

        /* renamed from: a, reason: collision with root package name */
        public static final AtomicReferenceFieldUpdater f9852a = AtomicReferenceFieldUpdater.newUpdater(zze.class, Thread.class, "a");
        public static final AtomicReferenceFieldUpdater b = AtomicReferenceFieldUpdater.newUpdater(zze.class, zze.class, "b");

        /* renamed from: c, reason: collision with root package name */
        public static final AtomicReferenceFieldUpdater f9853c = AtomicReferenceFieldUpdater.newUpdater(zzwb.class, zze.class, "g");
        public static final AtomicReferenceFieldUpdater d = AtomicReferenceFieldUpdater.newUpdater(zzwb.class, zzwa.zzd.class, "f");
        public static final AtomicReferenceFieldUpdater e = AtomicReferenceFieldUpdater.newUpdater(zzwb.class, Object.class, "c");

        @Override // com.google.android.gms.internal.cast.zzwb.zza
        public final void a(zze zzeVar, Thread thread) {
            f9852a.lazySet(zzeVar, thread);
        }

        @Override // com.google.android.gms.internal.cast.zzwb.zza
        public final void b(zze zzeVar, zze zzeVar2) {
            b.lazySet(zzeVar, zzeVar2);
        }

        @Override // com.google.android.gms.internal.cast.zzwb.zza
        public final boolean c(zzwb zzwbVar, zze zzeVar, zze zzeVar2) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
            do {
                atomicReferenceFieldUpdater = f9853c;
                if (atomicReferenceFieldUpdater.compareAndSet(zzwbVar, zzeVar, zzeVar2)) {
                    return true;
                }
            } while (atomicReferenceFieldUpdater.get(zzwbVar) == zzeVar);
            return false;
        }

        @Override // com.google.android.gms.internal.cast.zzwb.zza
        public final boolean d(zzwb zzwbVar, zzwa.zzd zzdVar, zzwa.zzd zzdVar2) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
            do {
                atomicReferenceFieldUpdater = d;
                if (atomicReferenceFieldUpdater.compareAndSet(zzwbVar, zzdVar, zzdVar2)) {
                    return true;
                }
            } while (atomicReferenceFieldUpdater.get(zzwbVar) == zzdVar);
            return false;
        }

        @Override // com.google.android.gms.internal.cast.zzwb.zza
        public final zze e(zzwa zzwaVar) {
            return (zze) f9853c.getAndSet(zzwaVar, zze.f9856c);
        }

        @Override // com.google.android.gms.internal.cast.zzwb.zza
        public final zzwa.zzd f(zzwa zzwaVar) {
            return (zzwa.zzd) d.getAndSet(zzwaVar, zzwa.zzd.d);
        }

        @Override // com.google.android.gms.internal.cast.zzwb.zza
        public final boolean g(zzwb zzwbVar, Object obj, Object obj2) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
            do {
                atomicReferenceFieldUpdater = e;
                if (atomicReferenceFieldUpdater.compareAndSet(zzwbVar, obj, obj2)) {
                    return true;
                }
            } while (atomicReferenceFieldUpdater.get(zzwbVar) == obj);
            return false;
        }
    }

    /* loaded from: classes.dex */
    final class zzc extends zza {
        @Override // com.google.android.gms.internal.cast.zzwb.zza
        public final void a(zze zzeVar, Thread thread) {
            zzeVar.f9857a = thread;
        }

        @Override // com.google.android.gms.internal.cast.zzwb.zza
        public final void b(zze zzeVar, zze zzeVar2) {
            zzeVar.b = zzeVar2;
        }

        @Override // com.google.android.gms.internal.cast.zzwb.zza
        public final boolean c(zzwb zzwbVar, zze zzeVar, zze zzeVar2) {
            synchronized (zzwbVar) {
                try {
                    if (zzwbVar.g == zzeVar) {
                        zzwbVar.g = zzeVar2;
                        return true;
                    }
                    return false;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // com.google.android.gms.internal.cast.zzwb.zza
        public final boolean d(zzwb zzwbVar, zzwa.zzd zzdVar, zzwa.zzd zzdVar2) {
            synchronized (zzwbVar) {
                try {
                    if (zzwbVar.f == zzdVar) {
                        zzwbVar.f = zzdVar2;
                        return true;
                    }
                    return false;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // com.google.android.gms.internal.cast.zzwb.zza
        public final zze e(zzwa zzwaVar) {
            zze zzeVar;
            zze zzeVar2 = zze.f9856c;
            synchronized (zzwaVar) {
                try {
                    zzeVar = zzwaVar.g;
                    if (zzeVar != zzeVar2) {
                        zzwaVar.g = zzeVar2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return zzeVar;
        }

        @Override // com.google.android.gms.internal.cast.zzwb.zza
        public final zzwa.zzd f(zzwa zzwaVar) {
            zzwa.zzd zzdVar;
            zzwa.zzd zzdVar2 = zzwa.zzd.d;
            synchronized (zzwaVar) {
                try {
                    zzdVar = zzwaVar.f;
                    if (zzdVar != zzdVar2) {
                        zzwaVar.f = zzdVar2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return zzdVar;
        }

        @Override // com.google.android.gms.internal.cast.zzwb.zza
        public final boolean g(zzwb zzwbVar, Object obj, Object obj2) {
            synchronized (zzwbVar) {
                try {
                    if (zzwbVar.f9851c == obj) {
                        zzwbVar.f9851c = obj2;
                        return true;
                    }
                    return false;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    /* loaded from: classes.dex */
    final class zzd extends zza {

        /* renamed from: a, reason: collision with root package name */
        public static final Unsafe f9854a;
        public static final long b;

        /* renamed from: c, reason: collision with root package name */
        public static final long f9855c;
        public static final long d;
        public static final long e;
        public static final long f;

        static {
            Unsafe unsafe;
            try {
                try {
                    unsafe = Unsafe.getUnsafe();
                } catch (SecurityException unused) {
                    unsafe = (Unsafe) AccessController.doPrivileged(zzwc.f9858a);
                }
                try {
                    f9855c = unsafe.objectFieldOffset(zzwb.class.getDeclaredField("g"));
                    b = unsafe.objectFieldOffset(zzwb.class.getDeclaredField("f"));
                    d = unsafe.objectFieldOffset(zzwb.class.getDeclaredField("c"));
                    e = unsafe.objectFieldOffset(zze.class.getDeclaredField("a"));
                    f = unsafe.objectFieldOffset(zze.class.getDeclaredField("b"));
                    f9854a = unsafe;
                } catch (NoSuchFieldException e2) {
                    throw new RuntimeException(e2);
                }
            } catch (PrivilegedActionException e3) {
                throw new RuntimeException("Could not initialize intrinsics", e3.getCause());
            }
        }

        @Override // com.google.android.gms.internal.cast.zzwb.zza
        public final void a(zze zzeVar, Thread thread) {
            f9854a.putObject(zzeVar, e, thread);
        }

        @Override // com.google.android.gms.internal.cast.zzwb.zza
        public final void b(zze zzeVar, zze zzeVar2) {
            f9854a.putObject(zzeVar, f, zzeVar2);
        }

        @Override // com.google.android.gms.internal.cast.zzwb.zza
        public final boolean c(zzwb zzwbVar, zze zzeVar, zze zzeVar2) {
            return c.a(f9854a, zzwbVar, f9855c, zzeVar, zzeVar2);
        }

        @Override // com.google.android.gms.internal.cast.zzwb.zza
        public final boolean d(zzwb zzwbVar, zzwa.zzd zzdVar, zzwa.zzd zzdVar2) {
            return c.a(f9854a, zzwbVar, b, zzdVar, zzdVar2);
        }

        @Override // com.google.android.gms.internal.cast.zzwb.zza
        public final zze e(zzwa zzwaVar) {
            zze zzeVar;
            zze zzeVar2 = zze.f9856c;
            do {
                zzeVar = zzwaVar.g;
                if (zzeVar2 == zzeVar) {
                    break;
                }
            } while (!c(zzwaVar, zzeVar, zzeVar2));
            return zzeVar;
        }

        @Override // com.google.android.gms.internal.cast.zzwb.zza
        public final zzwa.zzd f(zzwa zzwaVar) {
            zzwa.zzd zzdVar;
            zzwa.zzd zzdVar2 = zzwa.zzd.d;
            do {
                zzdVar = zzwaVar.f;
                if (zzdVar2 == zzdVar) {
                    break;
                }
            } while (!d(zzwaVar, zzdVar, zzdVar2));
            return zzdVar;
        }

        @Override // com.google.android.gms.internal.cast.zzwb.zza
        public final boolean g(zzwb zzwbVar, Object obj, Object obj2) {
            return c.a(f9854a, zzwbVar, d, obj, obj2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class zze {

        /* renamed from: c, reason: collision with root package name */
        public static final zze f9856c = new Object();

        /* renamed from: a, reason: collision with root package name */
        public volatile Thread f9857a;
        public volatile zze b;

        public zze() {
            zzwb.k.a(this, Thread.currentThread());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [com.google.android.gms.internal.cast.zzwb$zza] */
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
            zzwn zzwnVar = i;
            Logger a2 = zzwnVar.a();
            Level level = Level.SEVERE;
            a2.logp(level, "com.google.common.util.concurrent.AbstractFutureState", "<clinit>", "UnsafeAtomicHelper is broken!", th2);
            zzwnVar.a().logp(level, "com.google.common.util.concurrent.AbstractFutureState", "<clinit>", "AtomicReferenceFieldUpdaterAtomicHelper is broken!", th);
        }
    }

    public final void a(zze zzeVar) {
        zzeVar.f9857a = null;
        while (true) {
            zze zzeVar2 = this.g;
            if (zzeVar2 != zze.f9856c) {
                zze zzeVar3 = null;
                while (zzeVar2 != null) {
                    zze zzeVar4 = zzeVar2.b;
                    if (zzeVar2.f9857a != null) {
                        zzeVar3 = zzeVar2;
                    } else if (zzeVar3 != null) {
                        zzeVar3.b = zzeVar4;
                        if (zzeVar3.f9857a == null) {
                            break;
                        }
                    } else if (!k.c(this, zzeVar2, zzeVar4)) {
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
