package j$.sun.misc;

import j$.util.concurrent.l;
import j$.util.concurrent.q;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import sun.misc.Unsafe;

/* loaded from: classes2.dex */
public final class a {
    public static final a b;

    /* renamed from: a, reason: collision with root package name */
    public final Unsafe f21130a;

    static {
        Field g = g();
        g.setAccessible(true);
        try {
            b = new a((Unsafe) g.get(null));
        } catch (IllegalAccessException e) {
            throw new AssertionError("Couldn't get the Unsafe", e);
        }
    }

    public a(Unsafe unsafe) {
        this.f21130a = unsafe;
    }

    public static Field g() {
        try {
            return Unsafe.class.getDeclaredField("theUnsafe");
        } catch (NoSuchFieldException e) {
            for (Field field : Unsafe.class.getDeclaredFields()) {
                if (Modifier.isStatic(field.getModifiers()) && Unsafe.class.isAssignableFrom(field.getType())) {
                    return field;
                }
            }
            throw new AssertionError("Couldn't find the Unsafe", e);
        }
    }

    public final int e(q qVar, long j) {
        while (true) {
            int intVolatile = this.f21130a.getIntVolatile(qVar, j);
            q qVar2 = qVar;
            long j2 = j;
            if (this.f21130a.compareAndSwapInt(qVar2, j2, intVolatile, intVolatile - 4)) {
                return intVolatile;
            }
            qVar = qVar2;
            j = j2;
        }
    }

    public final long i(Field field) {
        return this.f21130a.objectFieldOffset(field);
    }

    public final long h(Class cls, String str) {
        try {
            return i(cls.getDeclaredField(str));
        } catch (NoSuchFieldException e) {
            throw new AssertionError("Cannot find field:", e);
        }
    }

    public final int a(Class cls) {
        return this.f21130a.arrayBaseOffset(cls);
    }

    public final int b(Class cls) {
        return this.f21130a.arrayIndexScale(cls);
    }

    public final Object f(Object obj, long j) {
        return this.f21130a.getObjectVolatile(obj, j);
    }

    public final void j(Object obj, long j, l lVar) {
        this.f21130a.putObjectVolatile(obj, j, lVar);
    }

    public final boolean c(Object obj, long j, int i, int i2) {
        return this.f21130a.compareAndSwapInt(obj, j, i, i2);
    }

    public final boolean d(Object obj, long j, long j2, long j3) {
        return this.f21130a.compareAndSwapLong(obj, j, j2, j3);
    }
}
