package com.google.android.gms.internal.auth;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.security.AccessController;
import java.security.PrivilegedExceptionAction;
import kotlin.KotlinVersion;
import sun.misc.Unsafe;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzhj {

    /* renamed from: a, reason: collision with root package name */
    public static final Unsafe f9570a;
    public static final Class b;

    /* renamed from: c, reason: collision with root package name */
    public static final zzhi f9571c;
    public static final boolean d;
    public static final boolean e;
    public static final boolean f;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0149  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x015b  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x008c  */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r16v3 */
    static {
        /*
            Method dump skipped, instructions count: 352
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.auth.zzhj.<clinit>():void");
    }

    public static int a(long j, Object obj) {
        return f9571c.f9569a.getInt(obj, j);
    }

    public static long b(long j, Object obj) {
        return f9571c.f9569a.getLong(obj, j);
    }

    public static Object c(Class cls) {
        try {
            return f9570a.allocateInstance(cls);
        } catch (InstantiationException e2) {
            throw new IllegalStateException(e2);
        }
    }

    public static Object d(long j, Object obj) {
        return f9571c.f9569a.getObject(obj, j);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, java.security.PrivilegedExceptionAction] */
    public static Unsafe e() {
        try {
            return (Unsafe) AccessController.doPrivileged((PrivilegedExceptionAction) new Object());
        } catch (Throwable unused) {
            return null;
        }
    }

    public static /* synthetic */ void f(Object obj, long j, boolean z) {
        zzhi zzhiVar = f9571c;
        long j2 = (-4) & j;
        int i = zzhiVar.f9569a.getInt(obj, j2);
        int i2 = ((~((int) j)) & 3) << 3;
        zzhiVar.f9569a.putInt(obj, j2, ((z ? 1 : 0) << i2) | ((~(KotlinVersion.MAX_COMPONENT_VALUE << i2)) & i));
    }

    public static /* synthetic */ void g(Object obj, long j, boolean z) {
        zzhi zzhiVar = f9571c;
        long j2 = (-4) & j;
        int i = (((int) j) & 3) << 3;
        zzhiVar.f9569a.putInt(obj, j2, ((z ? 1 : 0) << i) | ((~(KotlinVersion.MAX_COMPONENT_VALUE << i)) & zzhiVar.f9569a.getInt(obj, j2)));
    }

    public static void h(int i, long j, Object obj) {
        f9571c.f9569a.putInt(obj, j, i);
    }

    public static void i(Object obj, long j, long j2) {
        f9571c.f9569a.putLong(obj, j, j2);
    }

    public static void j(long j, Object obj, Object obj2) {
        f9571c.f9569a.putObject(obj, j, obj2);
    }

    public static /* bridge */ /* synthetic */ boolean k(long j, Object obj) {
        if (((byte) ((f9571c.f9569a.getInt(obj, (-4) & j) >>> ((int) (((~j) & 3) << 3))) & KotlinVersion.MAX_COMPONENT_VALUE)) != 0) {
            return true;
        }
        return false;
    }

    public static /* bridge */ /* synthetic */ boolean l(long j, Object obj) {
        if (((byte) ((f9571c.f9569a.getInt(obj, (-4) & j) >>> ((int) ((j & 3) << 3))) & KotlinVersion.MAX_COMPONENT_VALUE)) != 0) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean m(Class cls) {
        int i = zzds.f9529a;
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

    public static void n(Class cls) {
        if (e) {
            f9571c.f9569a.arrayBaseOffset(cls);
        }
    }

    public static void o(Class cls) {
        if (e) {
            f9571c.f9569a.arrayIndexScale(cls);
        }
    }

    public static Field p() {
        Field field;
        Field field2;
        int i = zzds.f9529a;
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
}
