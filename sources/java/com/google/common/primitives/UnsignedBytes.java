package com.google.common.primitives;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import com.google.common.annotations.VisibleForTesting;
import j$.util.Objects;
import java.lang.reflect.Field;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import java.util.Comparator;
import kotlin.UByte;
import sun.misc.Unsafe;

@J2ktIncompatible
@GwtIncompatible
/* loaded from: classes3.dex */
public final class UnsignedBytes {

    @VisibleForTesting
    /* loaded from: classes3.dex */
    public static final class LexicographicalComparatorHolder {

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        /* loaded from: classes3.dex */
        public static final class PureJavaComparator implements Comparator<byte[]> {

            /* renamed from: c, reason: collision with root package name */
            public static final /* synthetic */ PureJavaComparator[] f12523c = {new Enum("INSTANCE", 0)};

            /* JADX INFO: Fake field, exist only in values array */
            PureJavaComparator EF5;

            public static PureJavaComparator valueOf(String str) {
                return (PureJavaComparator) Enum.valueOf(PureJavaComparator.class, str);
            }

            public static PureJavaComparator[] values() {
                return (PureJavaComparator[]) f12523c.clone();
            }

            @Override // java.util.Comparator
            public final int compare(byte[] bArr, byte[] bArr2) {
                byte[] bArr3 = bArr;
                byte[] bArr4 = bArr2;
                int min = Math.min(bArr3.length, bArr4.length);
                for (int i = 0; i < min; i++) {
                    int i2 = (bArr3[i] & UByte.MAX_VALUE) - (bArr4[i] & UByte.MAX_VALUE);
                    if (i2 != 0) {
                        return i2;
                    }
                }
                return bArr3.length - bArr4.length;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "UnsignedBytes.lexicographicalComparator() (pure Java version)";
            }
        }

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        @VisibleForTesting
        /* loaded from: classes3.dex */
        public static final class UnsafeComparator implements Comparator<byte[]> {
            public static final Unsafe f;
            public static final int g;

            /* JADX INFO: Fake field, exist only in values array */
            UnsafeComparator EF5;
            public static final /* synthetic */ UnsafeComparator[] h = {new Enum("INSTANCE", 0)};

            /* renamed from: c, reason: collision with root package name */
            public static final boolean f12524c = ByteOrder.nativeOrder().equals(ByteOrder.BIG_ENDIAN);

            /* JADX WARN: Multi-variable type inference failed */
            static {
                Unsafe b = b();
                f = b;
                int arrayBaseOffset = b.arrayBaseOffset(byte[].class);
                g = arrayBaseOffset;
                if (Objects.equals(System.getProperty("sun.arch.data.model"), "64") && arrayBaseOffset % 8 == 0 && b.arrayIndexScale(byte[].class) == 1) {
                } else {
                    throw new Error();
                }
            }

            public static int a(byte[] bArr, byte[] bArr2) {
                int min = Math.min(bArr.length, bArr2.length);
                int i = min & (-8);
                int i2 = 0;
                while (i2 < i) {
                    Unsafe unsafe = f;
                    long j = g + i2;
                    long j2 = unsafe.getLong(bArr, j);
                    long j3 = unsafe.getLong(bArr2, j);
                    if (j2 != j3) {
                        if (f12524c) {
                            return Long.compare(j2 ^ Long.MIN_VALUE, Long.MIN_VALUE ^ j3);
                        }
                        int numberOfTrailingZeros = Long.numberOfTrailingZeros(j2 ^ j3) & (-8);
                        return ((int) ((j2 >>> numberOfTrailingZeros) & 255)) - ((int) ((j3 >>> numberOfTrailingZeros) & 255));
                    }
                    i2 += 8;
                }
                while (i2 < min) {
                    int i3 = (bArr[i2] & UByte.MAX_VALUE) - (bArr2[i2] & UByte.MAX_VALUE);
                    if (i3 != 0) {
                        return i3;
                    }
                    i2++;
                }
                return bArr.length - bArr2.length;
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, java.security.PrivilegedExceptionAction] */
            public static Unsafe b() {
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

            public static /* synthetic */ Unsafe c() {
                for (Field field : Unsafe.class.getDeclaredFields()) {
                    field.setAccessible(true);
                    Object obj = field.get(null);
                    if (Unsafe.class.isInstance(obj)) {
                        return (Unsafe) Unsafe.class.cast(obj);
                    }
                }
                throw new NoSuchFieldError("the Unsafe");
            }

            public static UnsafeComparator valueOf(String str) {
                return (UnsafeComparator) Enum.valueOf(UnsafeComparator.class, str);
            }

            public static UnsafeComparator[] values() {
                return (UnsafeComparator[]) h.clone();
            }

            @Override // java.util.Comparator
            public final /* bridge */ /* synthetic */ int compare(byte[] bArr, byte[] bArr2) {
                return a(bArr, bArr2);
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "UnsignedBytes.lexicographicalComparator() (sun.misc.Unsafe version)";
            }
        }

        static {
            try {
                Object[] enumConstants = Class.forName(LexicographicalComparatorHolder.class.getName().concat("$UnsafeComparator")).getEnumConstants();
                Objects.requireNonNull(enumConstants);
            } catch (Throwable unused) {
            }
        }
    }
}
