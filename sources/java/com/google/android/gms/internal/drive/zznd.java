package com.google.android.gms.internal.drive;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.security.AccessController;
import java.security.PrivilegedExceptionAction;
import java.util.logging.Logger;
import kotlin.KotlinVersion;
import sun.misc.Unsafe;

/* loaded from: classes.dex */
final class zznd {

    /* renamed from: a, reason: collision with root package name */
    public static final Logger f10259a = Logger.getLogger(zznd.class.getName());
    public static final Unsafe b;

    /* renamed from: c, reason: collision with root package name */
    public static final Class f10260c;
    public static final zzd d;
    public static final boolean e;
    public static final boolean f;
    public static final long g;
    public static final boolean h;

    /* loaded from: classes.dex */
    public static final class zza extends zzd {
        @Override // com.google.android.gms.internal.drive.zznd.zzd
        public final void b(Object obj, long j, double d) {
            d(obj, j, Double.doubleToLongBits(d));
        }

        @Override // com.google.android.gms.internal.drive.zznd.zzd
        public final void c(Object obj, long j, float f) {
            a(Float.floatToIntBits(f), j, obj);
        }

        @Override // com.google.android.gms.internal.drive.zznd.zzd
        public final void e(Object obj, long j, boolean z) {
            if (zznd.h) {
                zznd.d(obj, j, z ? (byte) 1 : (byte) 0);
            } else {
                zznd.f(obj, j, z ? (byte) 1 : (byte) 0);
            }
        }

        @Override // com.google.android.gms.internal.drive.zznd.zzd
        public final void f(Object obj, long j, byte b) {
            if (zznd.h) {
                zznd.d(obj, j, b);
            } else {
                zznd.f(obj, j, b);
            }
        }

        @Override // com.google.android.gms.internal.drive.zznd.zzd
        public final boolean i(long j, Object obj) {
            if (zznd.h) {
                if (zznd.n(j, obj) == 0) {
                    return false;
                }
                return true;
            }
            if (zznd.o(j, obj) == 0) {
                return false;
            }
            return true;
        }

        @Override // com.google.android.gms.internal.drive.zznd.zzd
        public final float j(long j, Object obj) {
            return Float.intBitsToFloat(g(j, obj));
        }

        @Override // com.google.android.gms.internal.drive.zznd.zzd
        public final double k(long j, Object obj) {
            return Double.longBitsToDouble(h(j, obj));
        }

        @Override // com.google.android.gms.internal.drive.zznd.zzd
        public final byte l(long j, Object obj) {
            if (zznd.h) {
                return zznd.n(j, obj);
            }
            return zznd.o(j, obj);
        }
    }

    /* loaded from: classes.dex */
    public static final class zzb extends zzd {
        @Override // com.google.android.gms.internal.drive.zznd.zzd
        public final void b(Object obj, long j, double d) {
            d(obj, j, Double.doubleToLongBits(d));
        }

        @Override // com.google.android.gms.internal.drive.zznd.zzd
        public final void c(Object obj, long j, float f) {
            a(Float.floatToIntBits(f), j, obj);
        }

        @Override // com.google.android.gms.internal.drive.zznd.zzd
        public final void e(Object obj, long j, boolean z) {
            if (zznd.h) {
                zznd.d(obj, j, z ? (byte) 1 : (byte) 0);
            } else {
                zznd.f(obj, j, z ? (byte) 1 : (byte) 0);
            }
        }

        @Override // com.google.android.gms.internal.drive.zznd.zzd
        public final void f(Object obj, long j, byte b) {
            if (zznd.h) {
                zznd.d(obj, j, b);
            } else {
                zznd.f(obj, j, b);
            }
        }

        @Override // com.google.android.gms.internal.drive.zznd.zzd
        public final boolean i(long j, Object obj) {
            if (zznd.h) {
                if (zznd.n(j, obj) == 0) {
                    return false;
                }
                return true;
            }
            if (zznd.o(j, obj) == 0) {
                return false;
            }
            return true;
        }

        @Override // com.google.android.gms.internal.drive.zznd.zzd
        public final float j(long j, Object obj) {
            return Float.intBitsToFloat(g(j, obj));
        }

        @Override // com.google.android.gms.internal.drive.zznd.zzd
        public final double k(long j, Object obj) {
            return Double.longBitsToDouble(h(j, obj));
        }

        @Override // com.google.android.gms.internal.drive.zznd.zzd
        public final byte l(long j, Object obj) {
            if (zznd.h) {
                return zznd.n(j, obj);
            }
            return zznd.o(j, obj);
        }
    }

    /* loaded from: classes.dex */
    public static final class zzc extends zzd {
        @Override // com.google.android.gms.internal.drive.zznd.zzd
        public final void b(Object obj, long j, double d) {
            this.f10261a.putDouble(obj, j, d);
        }

        @Override // com.google.android.gms.internal.drive.zznd.zzd
        public final void c(Object obj, long j, float f) {
            this.f10261a.putFloat(obj, j, f);
        }

        @Override // com.google.android.gms.internal.drive.zznd.zzd
        public final void e(Object obj, long j, boolean z) {
            this.f10261a.putBoolean(obj, j, z);
        }

        @Override // com.google.android.gms.internal.drive.zznd.zzd
        public final void f(Object obj, long j, byte b) {
            this.f10261a.putByte(obj, j, b);
        }

        @Override // com.google.android.gms.internal.drive.zznd.zzd
        public final boolean i(long j, Object obj) {
            return this.f10261a.getBoolean(obj, j);
        }

        @Override // com.google.android.gms.internal.drive.zznd.zzd
        public final float j(long j, Object obj) {
            return this.f10261a.getFloat(obj, j);
        }

        @Override // com.google.android.gms.internal.drive.zznd.zzd
        public final double k(long j, Object obj) {
            return this.f10261a.getDouble(obj, j);
        }

        @Override // com.google.android.gms.internal.drive.zznd.zzd
        public final byte l(long j, Object obj) {
            return this.f10261a.getByte(obj, j);
        }
    }

    /* loaded from: classes.dex */
    public static abstract class zzd {

        /* renamed from: a, reason: collision with root package name */
        public final Unsafe f10261a;

        public zzd(Unsafe unsafe) {
            this.f10261a = unsafe;
        }

        public final void a(int i, long j, Object obj) {
            this.f10261a.putInt(obj, j, i);
        }

        public abstract void b(Object obj, long j, double d);

        public abstract void c(Object obj, long j, float f);

        public final void d(Object obj, long j, long j2) {
            this.f10261a.putLong(obj, j, j2);
        }

        public abstract void e(Object obj, long j, boolean z);

        public abstract void f(Object obj, long j, byte b);

        public final int g(long j, Object obj) {
            return this.f10261a.getInt(obj, j);
        }

        public final long h(long j, Object obj) {
            return this.f10261a.getLong(obj, j);
        }

        public abstract boolean i(long j, Object obj);

        public abstract float j(long j, Object obj);

        public abstract double k(long j, Object obj);

        public abstract byte l(long j, Object obj);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0286  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0298  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0133 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    static {
        /*
            Method dump skipped, instructions count: 669
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.drive.zznd.<clinit>():void");
    }

    public static byte a(byte[] bArr, long j) {
        return d.l(g + j, bArr);
    }

    public static void b(int i, long j, Object obj) {
        d.a(i, j, obj);
    }

    public static void c(long j, Object obj, Object obj2) {
        d.f10261a.putObject(obj, j, obj2);
    }

    public static void d(Object obj, long j, byte b2) {
        long j2 = (-4) & j;
        int g2 = d.g(j2, obj);
        int i = ((~((int) j)) & 3) << 3;
        b(((255 & b2) << i) | (g2 & (~(KotlinVersion.MAX_COMPONENT_VALUE << i))), j2, obj);
    }

    public static void e(byte[] bArr, long j, byte b2) {
        d.f(bArr, g + j, b2);
    }

    public static void f(Object obj, long j, byte b2) {
        long j2 = (-4) & j;
        int i = (((int) j) & 3) << 3;
        b(((255 & b2) << i) | (d.g(j2, obj) & (~(KotlinVersion.MAX_COMPONENT_VALUE << i))), j2, obj);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, java.security.PrivilegedExceptionAction] */
    public static Unsafe g() {
        try {
            return (Unsafe) AccessController.doPrivileged((PrivilegedExceptionAction) new Object());
        } catch (Throwable unused) {
            return null;
        }
    }

    public static Field h() {
        Field field;
        Field field2;
        if (zzix.a()) {
            try {
                field2 = Buffer.class.getDeclaredField("effectiveDirectAddress");
            } catch (Throwable unused) {
                field2 = null;
            }
            if (field2 != null) {
                return field2;
            }
        }
        try {
            field = Buffer.class.getDeclaredField("address");
        } catch (Throwable unused2) {
            field = null;
        }
        if (field == null || field.getType() != Long.TYPE) {
            return null;
        }
        return field;
    }

    public static Object i(Class cls) {
        try {
            return b.allocateInstance(cls);
        } catch (InstantiationException e2) {
            throw new IllegalStateException(e2);
        }
    }

    public static int j(Class cls) {
        if (f) {
            return d.f10261a.arrayBaseOffset(cls);
        }
        return -1;
    }

    public static void k(Class cls) {
        if (f) {
            d.f10261a.arrayIndexScale(cls);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean l(Class cls) {
        if (!zzix.a()) {
            return false;
        }
        try {
            Class cls2 = f10260c;
            Class cls3 = Boolean.TYPE;
            cls2.getMethod("peekLong", cls, cls3);
            cls2.getMethod("pokeLong", cls, Long.TYPE, cls3);
            Class cls4 = Integer.TYPE;
            cls2.getMethod("pokeInt", cls, cls4, cls3);
            cls2.getMethod("peekInt", cls, cls3);
            cls2.getMethod("pokeByte", cls, Byte.TYPE);
            cls2.getMethod("peekByte", cls);
            cls2.getMethod("pokeByteArray", cls, byte[].class, cls4, cls4);
            cls2.getMethod("peekByteArray", cls, byte[].class, cls4, cls4);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static Object m(long j, Object obj) {
        return d.f10261a.getObject(obj, j);
    }

    public static byte n(long j, Object obj) {
        return (byte) (d.g((-4) & j, obj) >>> ((int) (((~j) & 3) << 3)));
    }

    public static byte o(long j, Object obj) {
        return (byte) (d.g((-4) & j, obj) >>> ((int) ((j & 3) << 3)));
    }
}
