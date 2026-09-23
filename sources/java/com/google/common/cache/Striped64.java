package com.google.common.cache;

import com.google.common.annotations.GwtIncompatible;
import java.lang.reflect.Field;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import java.util.Random;
import sun.misc.Unsafe;

@GwtIncompatible
/* loaded from: classes3.dex */
abstract class Striped64 extends Number {
    public static final ThreadLocal h = new ThreadLocal();
    public static final Random i = new Random();
    public static final int j = Runtime.getRuntime().availableProcessors();
    public static final Unsafe k;
    public static final long l;
    public static final long m;

    /* renamed from: c, reason: collision with root package name */
    public volatile transient Cell[] f12226c;
    public volatile transient long f;
    public volatile transient int g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.common.cache.Striped64$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 implements PrivilegedExceptionAction<Unsafe> {
        public static Unsafe a() {
            for (Field field : Unsafe.class.getDeclaredFields()) {
                field.setAccessible(true);
                Object obj = field.get(null);
                if (Unsafe.class.isInstance(obj)) {
                    return (Unsafe) Unsafe.class.cast(obj);
                }
            }
            throw new NoSuchFieldError("the Unsafe");
        }

        @Override // java.security.PrivilegedExceptionAction
        public final /* bridge */ /* synthetic */ Unsafe run() {
            return a();
        }
    }

    /* loaded from: classes3.dex */
    public static final class Cell {
        public static final Unsafe b;

        /* renamed from: c, reason: collision with root package name */
        public static final long f12227c;

        /* renamed from: a, reason: collision with root package name */
        public volatile long f12228a;

        static {
            try {
                Unsafe d = Striped64.d();
                b = d;
                f12227c = d.objectFieldOffset(Cell.class.getDeclaredField("a"));
            } catch (Exception e) {
                throw new Error(e);
            }
        }

        public Cell(long j) {
            this.f12228a = j;
        }

        public final boolean a(long j, long j2) {
            return b.compareAndSwapLong(this, f12227c, j, j2);
        }
    }

    static {
        try {
            Unsafe d = d();
            k = d;
            l = d.objectFieldOffset(Striped64.class.getDeclaredField("f"));
            m = d.objectFieldOffset(Striped64.class.getDeclaredField("g"));
        } catch (Exception e) {
            throw new Error(e);
        }
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, java.security.PrivilegedExceptionAction] */
    public static Unsafe d() {
        try {
            try {
                return Unsafe.getUnsafe();
            } catch (PrivilegedActionException e) {
                throw new RuntimeException("Could not initialize intrinsics", e.getCause());
            }
        } catch (SecurityException unused) {
            return (Unsafe) AccessController.doPrivileged((PrivilegedExceptionAction) new Object());
        }
    }

    public final boolean b(long j2, long j3) {
        return k.compareAndSwapLong(this, l, j2, j3);
    }

    public final boolean c() {
        return k.compareAndSwapInt(this, m, 0, 1);
    }
}
