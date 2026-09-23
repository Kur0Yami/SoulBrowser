package com.google.common.hash;

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

    /* renamed from: c, reason: collision with root package name */
    public volatile transient long f12460c;
    public volatile transient int f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.common.hash.Striped64$1, reason: invalid class name */
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

        /* renamed from: a, reason: collision with root package name */
        public volatile long f12461a;

        static {
            try {
                Striped64.a().objectFieldOffset(Cell.class.getDeclaredField("a"));
            } catch (Exception e) {
                throw new Error(e);
            }
        }
    }

    static {
        new ThreadLocal();
        new Random();
        Runtime.getRuntime().availableProcessors();
        try {
            Unsafe a2 = a();
            a2.objectFieldOffset(Striped64.class.getDeclaredField("c"));
            a2.objectFieldOffset(Striped64.class.getDeclaredField("f"));
        } catch (Exception e) {
            throw new Error(e);
        }
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, java.security.PrivilegedExceptionAction] */
    public static Unsafe a() {
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
}
