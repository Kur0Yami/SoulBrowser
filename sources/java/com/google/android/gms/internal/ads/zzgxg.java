package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.internal.ads.zzgxf;
import com.google.common.util.concurrent.ListenableFuture;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class zzgxg<V> extends zzgzo implements ListenableFuture<V> {
    public static final Object h = new Object();
    public static final zzgyu i = new zzgyu(zzgxf.class);
    public static final boolean j;
    public static final zza k;

    /* renamed from: c, reason: collision with root package name */
    public volatile Object f8289c;
    public volatile zzgxf.zzd f;
    public volatile zze g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public abstract class zza {
        public abstract void a(zze zzeVar, Thread thread);

        public abstract void b(zze zzeVar, zze zzeVar2);

        public abstract boolean c(zzgxg zzgxgVar, zze zzeVar, zze zzeVar2);

        public abstract boolean d(zzgxf zzgxfVar, zzgxf.zzd zzdVar, zzgxf.zzd zzdVar2);

        public abstract zze e(zzgxf zzgxfVar);

        public abstract zzgxf.zzd f(zzgxf zzgxfVar);

        public abstract boolean g(zzgxg zzgxgVar, Object obj, Object obj2);
    }

    /* loaded from: classes.dex */
    final class zzb extends zza {

        /* renamed from: a, reason: collision with root package name */
        public static final AtomicReferenceFieldUpdater f8290a = AtomicReferenceFieldUpdater.newUpdater(zze.class, Thread.class, "a");
        public static final AtomicReferenceFieldUpdater b = AtomicReferenceFieldUpdater.newUpdater(zze.class, zze.class, "b");

        /* renamed from: c, reason: collision with root package name */
        public static final AtomicReferenceFieldUpdater f8291c = AtomicReferenceFieldUpdater.newUpdater(zzgxg.class, zze.class, "g");
        public static final AtomicReferenceFieldUpdater d = AtomicReferenceFieldUpdater.newUpdater(zzgxg.class, zzgxf.zzd.class, "f");
        public static final AtomicReferenceFieldUpdater e = AtomicReferenceFieldUpdater.newUpdater(zzgxg.class, Object.class, "c");

        @Override // com.google.android.gms.internal.ads.zzgxg.zza
        public final void a(zze zzeVar, Thread thread) {
            f8290a.lazySet(zzeVar, thread);
        }

        @Override // com.google.android.gms.internal.ads.zzgxg.zza
        public final void b(zze zzeVar, zze zzeVar2) {
            b.lazySet(zzeVar, zzeVar2);
        }

        @Override // com.google.android.gms.internal.ads.zzgxg.zza
        public final boolean c(zzgxg zzgxgVar, zze zzeVar, zze zzeVar2) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
            do {
                atomicReferenceFieldUpdater = f8291c;
                if (atomicReferenceFieldUpdater.compareAndSet(zzgxgVar, zzeVar, zzeVar2)) {
                    return true;
                }
            } while (atomicReferenceFieldUpdater.get(zzgxgVar) == zzeVar);
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzgxg.zza
        public final boolean d(zzgxf zzgxfVar, zzgxf.zzd zzdVar, zzgxf.zzd zzdVar2) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
            do {
                atomicReferenceFieldUpdater = d;
                if (atomicReferenceFieldUpdater.compareAndSet(zzgxfVar, zzdVar, zzdVar2)) {
                    return true;
                }
            } while (atomicReferenceFieldUpdater.get(zzgxfVar) == zzdVar);
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzgxg.zza
        public final zze e(zzgxf zzgxfVar) {
            return (zze) f8291c.getAndSet(zzgxfVar, zze.f8294c);
        }

        @Override // com.google.android.gms.internal.ads.zzgxg.zza
        public final zzgxf.zzd f(zzgxf zzgxfVar) {
            return (zzgxf.zzd) d.getAndSet(zzgxfVar, zzgxf.zzd.d);
        }

        @Override // com.google.android.gms.internal.ads.zzgxg.zza
        public final boolean g(zzgxg zzgxgVar, Object obj, Object obj2) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
            do {
                atomicReferenceFieldUpdater = e;
                if (atomicReferenceFieldUpdater.compareAndSet(zzgxgVar, obj, obj2)) {
                    return true;
                }
            } while (atomicReferenceFieldUpdater.get(zzgxgVar) == obj);
            return false;
        }
    }

    /* loaded from: classes.dex */
    final class zzc extends zza {
        @Override // com.google.android.gms.internal.ads.zzgxg.zza
        public final void a(zze zzeVar, Thread thread) {
            zzeVar.f8295a = thread;
        }

        @Override // com.google.android.gms.internal.ads.zzgxg.zza
        public final void b(zze zzeVar, zze zzeVar2) {
            zzeVar.b = zzeVar2;
        }

        @Override // com.google.android.gms.internal.ads.zzgxg.zza
        public final boolean c(zzgxg zzgxgVar, zze zzeVar, zze zzeVar2) {
            synchronized (zzgxgVar) {
                try {
                    if (zzgxgVar.g == zzeVar) {
                        zzgxgVar.g = zzeVar2;
                        return true;
                    }
                    return false;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // com.google.android.gms.internal.ads.zzgxg.zza
        public final boolean d(zzgxf zzgxfVar, zzgxf.zzd zzdVar, zzgxf.zzd zzdVar2) {
            synchronized (zzgxfVar) {
                try {
                    if (zzgxfVar.f == zzdVar) {
                        zzgxfVar.f = zzdVar2;
                        return true;
                    }
                    return false;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // com.google.android.gms.internal.ads.zzgxg.zza
        public final zze e(zzgxf zzgxfVar) {
            zze zzeVar;
            zze zzeVar2 = zze.f8294c;
            synchronized (zzgxfVar) {
                try {
                    zzeVar = zzgxfVar.g;
                    if (zzeVar != zzeVar2) {
                        zzgxfVar.g = zzeVar2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return zzeVar;
        }

        @Override // com.google.android.gms.internal.ads.zzgxg.zza
        public final zzgxf.zzd f(zzgxf zzgxfVar) {
            zzgxf.zzd zzdVar;
            zzgxf.zzd zzdVar2 = zzgxf.zzd.d;
            synchronized (zzgxfVar) {
                try {
                    zzdVar = zzgxfVar.f;
                    if (zzdVar != zzdVar2) {
                        zzgxfVar.f = zzdVar2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return zzdVar;
        }

        @Override // com.google.android.gms.internal.ads.zzgxg.zza
        public final boolean g(zzgxg zzgxgVar, Object obj, Object obj2) {
            synchronized (zzgxgVar) {
                try {
                    if (zzgxgVar.f8289c == obj) {
                        zzgxgVar.f8289c = obj2;
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
        public static final Unsafe f8292a;
        public static final long b;

        /* renamed from: c, reason: collision with root package name */
        public static final long f8293c;
        public static final long d;
        public static final long e;
        public static final long f;

        static {
            Unsafe unsafe;
            try {
                try {
                    unsafe = Unsafe.getUnsafe();
                } catch (SecurityException unused) {
                    unsafe = (Unsafe) AccessController.doPrivileged(zzgxh.f8296a);
                }
                try {
                    f8293c = unsafe.objectFieldOffset(zzgxg.class.getDeclaredField("g"));
                    b = unsafe.objectFieldOffset(zzgxg.class.getDeclaredField("f"));
                    d = unsafe.objectFieldOffset(zzgxg.class.getDeclaredField("c"));
                    e = unsafe.objectFieldOffset(zze.class.getDeclaredField("a"));
                    f = unsafe.objectFieldOffset(zze.class.getDeclaredField("b"));
                    f8292a = unsafe;
                } catch (NoSuchFieldException e2) {
                    throw new RuntimeException(e2);
                }
            } catch (PrivilegedActionException e3) {
                throw new RuntimeException("Could not initialize intrinsics", e3.getCause());
            }
        }

        @Override // com.google.android.gms.internal.ads.zzgxg.zza
        public final void a(zze zzeVar, Thread thread) {
            f8292a.putObject(zzeVar, e, thread);
        }

        @Override // com.google.android.gms.internal.ads.zzgxg.zza
        public final void b(zze zzeVar, zze zzeVar2) {
            f8292a.putObject(zzeVar, f, zzeVar2);
        }

        @Override // com.google.android.gms.internal.ads.zzgxg.zza
        public final boolean c(zzgxg zzgxgVar, zze zzeVar, zze zzeVar2) {
            return c.a(f8292a, zzgxgVar, f8293c, zzeVar, zzeVar2);
        }

        @Override // com.google.android.gms.internal.ads.zzgxg.zza
        public final boolean d(zzgxf zzgxfVar, zzgxf.zzd zzdVar, zzgxf.zzd zzdVar2) {
            return b.a(f8292a, zzgxfVar, b, zzdVar, zzdVar2);
        }

        @Override // com.google.android.gms.internal.ads.zzgxg.zza
        public final zze e(zzgxf zzgxfVar) {
            zze zzeVar;
            zze zzeVar2 = zze.f8294c;
            do {
                zzeVar = zzgxfVar.g;
                if (zzeVar2 == zzeVar) {
                    break;
                }
            } while (!c(zzgxfVar, zzeVar, zzeVar2));
            return zzeVar;
        }

        @Override // com.google.android.gms.internal.ads.zzgxg.zza
        public final zzgxf.zzd f(zzgxf zzgxfVar) {
            zzgxf.zzd zzdVar;
            zzgxf.zzd zzdVar2 = zzgxf.zzd.d;
            do {
                zzdVar = zzgxfVar.f;
                if (zzdVar2 == zzdVar) {
                    break;
                }
            } while (!d(zzgxfVar, zzdVar, zzdVar2));
            return zzdVar;
        }

        @Override // com.google.android.gms.internal.ads.zzgxg.zza
        public final boolean g(zzgxg zzgxgVar, Object obj, Object obj2) {
            return c.a(f8292a, zzgxgVar, d, obj, obj2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class zze {

        /* renamed from: c, reason: collision with root package name */
        public static final zze f8294c = new Object();

        /* renamed from: a, reason: collision with root package name */
        public volatile Thread f8295a;
        public volatile zze b;

        public zze() {
            zzgxg.k.a(this, Thread.currentThread());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [com.google.android.gms.internal.ads.zzgxg$zza] */
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
            zzgyu zzgyuVar = i;
            Logger a2 = zzgyuVar.a();
            Level level = Level.SEVERE;
            a2.logp(level, "com.google.common.util.concurrent.AbstractFutureState", "<clinit>", "UnsafeAtomicHelper is broken!", th2);
            zzgyuVar.a().logp(level, "com.google.common.util.concurrent.AbstractFutureState", "<clinit>", "AtomicReferenceFieldUpdaterAtomicHelper is broken!", th);
        }
    }

    public final void b(zze zzeVar) {
        zzeVar.f8295a = null;
        while (true) {
            zze zzeVar2 = this.g;
            if (zzeVar2 != zze.f8294c) {
                zze zzeVar3 = null;
                while (zzeVar2 != null) {
                    zze zzeVar4 = zzeVar2.b;
                    if (zzeVar2.f8295a != null) {
                        zzeVar3 = zzeVar2;
                    } else if (zzeVar3 != null) {
                        zzeVar3.b = zzeVar4;
                        if (zzeVar3.f8295a == null) {
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
