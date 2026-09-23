package com.google.android.gms.internal.ads;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.security.AccessController;
import java.security.PrivilegedExceptionAction;
import kotlin.KotlinVersion;
import sun.misc.Unsafe;

/* loaded from: classes.dex */
final class zzidm {

    /* renamed from: a, reason: collision with root package name */
    public static final Unsafe f8953a;
    public static final Class b;

    /* renamed from: c, reason: collision with root package name */
    public static final zzidl f8954c;
    public static final boolean d;
    public static final boolean e;
    public static final long f;
    public static final long g;
    public static final boolean h;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:15:0x014f  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x008c  */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r16v3 */
    static {
        /*
            Method dump skipped, instructions count: 362
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzidm.<clinit>():void");
    }

    public static int a(Class cls) {
        if (e) {
            return f8954c.f8952a.arrayBaseOffset(cls);
        }
        return -1;
    }

    public static void b(Class cls) {
        if (e) {
            f8954c.f8952a.arrayIndexScale(cls);
        }
    }

    public static Field c() {
        Field field;
        Field field2;
        int i = zzhyy.f8889a;
        try {
            field = Buffer.class.getDeclaredField("effectiveDirectAddress");
        } catch (Throwable unused) {
            field = null;
        }
        if (field == null) {
            try {
                field2 = Buffer.class.getDeclaredField("address");
            } catch (Throwable unused2) {
                field2 = null;
            }
            if (field2 == null || field2.getType() != Long.TYPE) {
                return null;
            }
            return field2;
        }
        return field;
    }

    public static void d(Object obj, long j, byte b2) {
        Unsafe unsafe = f8954c.f8952a;
        long j2 = (-4) & j;
        int i = unsafe.getInt(obj, j2);
        int i2 = ((~((int) j)) & 3) << 3;
        unsafe.putInt(obj, j2, ((255 & b2) << i2) | (i & (~(KotlinVersion.MAX_COMPONENT_VALUE << i2))));
    }

    public static void e(Object obj, long j, byte b2) {
        Unsafe unsafe = f8954c.f8952a;
        long j2 = (-4) & j;
        int i = (((int) j) & 3) << 3;
        unsafe.putInt(obj, j2, ((255 & b2) << i) | (unsafe.getInt(obj, j2) & (~(KotlinVersion.MAX_COMPONENT_VALUE << i))));
    }

    public static Object f(Class cls) {
        try {
            return f8953a.allocateInstance(cls);
        } catch (InstantiationException e2) {
            throw new IllegalStateException(e2);
        }
    }

    public static int g(long j, Object obj) {
        return f8954c.f8952a.getInt(obj, j);
    }

    public static void h(int i, long j, Object obj) {
        f8954c.f8952a.putInt(obj, j, i);
    }

    public static long i(long j, Object obj) {
        return f8954c.f8952a.getLong(obj, j);
    }

    public static void j(Object obj, long j, long j2) {
        f8954c.f8952a.putLong(obj, j, j2);
    }

    public static Object k(long j, Object obj) {
        return f8954c.f8952a.getObject(obj, j);
    }

    public static void l(long j, Object obj, Object obj2) {
        f8954c.f8952a.putObject(obj, j, obj2);
    }

    public static void m(byte[] bArr, long j, byte b2) {
        f8954c.a(bArr, f + j, b2);
    }

    public static long n(ByteBuffer byteBuffer) {
        return f8954c.f8952a.getLong(byteBuffer, g);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, java.security.PrivilegedExceptionAction] */
    public static Unsafe o() {
        try {
            return (Unsafe) AccessController.doPrivileged((PrivilegedExceptionAction) new Object());
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean p(Class cls) {
        int i = zzhyy.f8889a;
        try {
            Class cls2 = b;
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

    public static /* synthetic */ boolean q(long j, Object obj) {
        if (((byte) ((f8954c.f8952a.getInt(obj, (-4) & j) >>> ((int) (((~j) & 3) << 3))) & KotlinVersion.MAX_COMPONENT_VALUE)) != 0) {
            return true;
        }
        return false;
    }

    public static /* synthetic */ boolean r(long j, Object obj) {
        if (((byte) ((f8954c.f8952a.getInt(obj, (-4) & j) >>> ((int) ((j & 3) << 3))) & KotlinVersion.MAX_COMPONENT_VALUE)) != 0) {
            return true;
        }
        return false;
    }
}
