package com.google.common.hash;

import com.google.common.annotations.VisibleForTesting;
import j$.util.Objects;
import java.lang.reflect.Field;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import sun.misc.Unsafe;

/* loaded from: classes3.dex */
final class LittleEndianByteArray {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static abstract class JavaLittleEndianBytes implements LittleEndianBytes {

        /* renamed from: c, reason: collision with root package name */
        public static final AnonymousClass1 f12455c;
        public static final /* synthetic */ JavaLittleEndianBytes[] f;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [com.google.common.hash.LittleEndianByteArray$JavaLittleEndianBytes$1] */
        static {
            ?? r0 = new JavaLittleEndianBytes() { // from class: com.google.common.hash.LittleEndianByteArray.JavaLittleEndianBytes.1
            };
            f12455c = r0;
            f = new JavaLittleEndianBytes[]{r0};
        }

        public static JavaLittleEndianBytes valueOf(String str) {
            return (JavaLittleEndianBytes) Enum.valueOf(JavaLittleEndianBytes.class, str);
        }

        public static JavaLittleEndianBytes[] values() {
            return (JavaLittleEndianBytes[]) f.clone();
        }
    }

    /* loaded from: classes3.dex */
    public interface LittleEndianBytes {
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @VisibleForTesting
    /* loaded from: classes3.dex */
    public static abstract class UnsafeByteArray implements LittleEndianBytes {

        /* renamed from: c, reason: collision with root package name */
        public static final AnonymousClass1 f12456c;
        public static final AnonymousClass2 f;
        public static final /* synthetic */ UnsafeByteArray[] g;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [com.google.common.hash.LittleEndianByteArray$UnsafeByteArray$1] */
        /* JADX WARN: Type inference failed for: r1v0, types: [com.google.common.hash.LittleEndianByteArray$UnsafeByteArray$2] */
        static {
            ?? r0 = new UnsafeByteArray() { // from class: com.google.common.hash.LittleEndianByteArray.UnsafeByteArray.1
            };
            f12456c = r0;
            ?? r1 = new UnsafeByteArray() { // from class: com.google.common.hash.LittleEndianByteArray.UnsafeByteArray.2
            };
            f = r1;
            g = new UnsafeByteArray[]{r0, r1};
            Unsafe a2 = a();
            a2.arrayBaseOffset(byte[].class);
            if (a2.arrayIndexScale(byte[].class) == 1) {
            } else {
                throw new AssertionError();
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

        public static /* synthetic */ Unsafe b() {
            for (Field field : Unsafe.class.getDeclaredFields()) {
                field.setAccessible(true);
                Object obj = field.get(null);
                if (Unsafe.class.isInstance(obj)) {
                    return (Unsafe) Unsafe.class.cast(obj);
                }
            }
            throw new NoSuchFieldError("the Unsafe");
        }

        public static UnsafeByteArray valueOf(String str) {
            return (UnsafeByteArray) Enum.valueOf(UnsafeByteArray.class, str);
        }

        public static UnsafeByteArray[] values() {
            return (UnsafeByteArray[]) g.clone();
        }
    }

    static {
        try {
            if (Objects.equals(System.getProperty("os.arch"), "amd64")) {
                if (ByteOrder.nativeOrder().equals(ByteOrder.LITTLE_ENDIAN)) {
                    UnsafeByteArray.AnonymousClass1 anonymousClass1 = UnsafeByteArray.f12456c;
                } else {
                    UnsafeByteArray.AnonymousClass2 anonymousClass2 = UnsafeByteArray.f;
                }
            }
        } catch (Throwable unused) {
        }
    }
}
